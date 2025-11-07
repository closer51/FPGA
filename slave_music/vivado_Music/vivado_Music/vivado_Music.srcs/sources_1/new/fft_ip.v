module fft_ip
(
    input  wire          sys_clk,
    input  wire          sys_rst_n,

    input  wire [31:0]   fft_data_in,
    input  wire          fft_valid_in,

    output wire          m_axis_data_tready,
    output reg signed [64:0]  fft_abs
);

reg  [6:0]  cnt_in;
reg  [6:0]  cnt_out;

reg  s_axis_data_tvalid ;
wire s_axis_data_tready ;
reg  s_axis_data_tlast  ;

reg signed [63:0] s_axis_data_tdata;
wire signed [63:0] m_axis_data_tdata;

wire [31:0] fft_dataout_real;
wire [31:0] fft_dataout_imag;
assign fft_dataout_real = m_axis_data_tdata[63:32];//实部
assign fft_dataout_imag = m_axis_data_tdata[31:0];//实部

wire m_axis_data_tvalid ;
wire m_axis_data_tlast  ;

wire event_frame_started        ;
wire event_tlast_unexpected     ;
wire event_tlast_missing        ;
wire event_status_channel_halt  ;
wire event_data_in_channel_halt ;
wire event_data_out_channel_halt;

// ==================== 状态机控制 FFT 输入 ====================
localparam IDLE = 1'b0, SEND = 1'b1;
reg state;
reg fft_started;                     // 当前是否正在采集一帧

// 在 IDLE 状态下等待第一个 valid_in 上升沿开始采集
// 在 SEND 状态下向 FFT IP 连续推送 64 个缓存好的数据
always @(posedge sys_clk or negedge sys_rst_n) 
begin
    if (!sys_rst_n) 
    begin
        cnt_in <= 6'd0;
        fft_started <= 1'b0;
        state <= IDLE;
        s_axis_data_tvalid <= 1'b0;
        s_axis_data_tlast <= 1'b0;
        s_axis_data_tdata <= 64'd0;
    end 
    else 
    begin
        case (state)
            IDLE: 
            begin
                s_axis_data_tvalid <= 1'b0;
                s_axis_data_tlast <= 1'b0;

                // 检测 valid_in 上升沿作为新帧开始
                if (fft_valid_in && !fft_started) 
                begin
                    fft_started <= 1'b1;
                    cnt_in <= 6'd1;  // 第一个点已经到来
                    s_axis_data_tdata <= {32'b0, fft_data_in};
                    s_axis_data_tvalid <= 1'b1;
                    state <= SEND;
                end
            end

            SEND: 
            begin
                s_axis_data_tvalid <= 1'b0;  // 默认不发，除非有 ready 回应

                if (s_axis_data_tready) 
                begin  // 上一个数据被接受
                    if (cnt_in < 6'd64) 
                    begin
                        // 继续发送下一个点
                        if (fft_valid_in) 
                        begin
                            s_axis_data_tdata <= {32'b0, fft_data_in};
                            s_axis_data_tvalid <= 1'b1;
                            cnt_in <= cnt_in + 1'b1;

                            if (cnt_in == 7'd127) 
                            begin
                                s_axis_data_tlast <= 1'b1;  // 下一个是最后一个
                            end 
                            else 
                            begin
                                s_axis_data_tlast <= 1'b0;
                            end
                        end
                    end 
                    else 
                    begin
                        s_axis_data_tvalid <= 1'b0;
                        s_axis_data_tlast <= 1'b0;
                        fft_started <= 1'b0;
                        state <= IDLE;
                    end
                end
            end

            default:
                state <= IDLE;
        endcase
    end
end

always @(posedge sys_clk or negedge sys_rst_n) 
begin
    if (!sys_rst_n) 
    begin
        cnt_out <= 7'd0;
    end 
    else if (m_axis_data_tvalid) 
    begin
        if (cnt_out == 7'd127) 
        begin
            cnt_out <= 7'd0;
        end
        else
        begin
            cnt_out <= cnt_out + 1'b1;
        end
    end
    
end

// FFT幅度计算
reg [63:0] real_squared, imag_squared;
reg [64:0] fft_abs_next;
always @(posedge sys_clk or negedge sys_rst_n) 
begin
    if (!sys_rst_n)
    begin
        real_squared <= 64'd0;
        imag_squared <= 64'd0;
        fft_abs_next <= 65'd0;
        fft_abs <= 65'd0;
    end
    else
    begin
        real_squared <= $signed(fft_dataout_real) * $signed(fft_dataout_real);
        imag_squared <= $signed(fft_dataout_imag) * $signed(fft_dataout_imag);
        fft_abs_next <= $signed(real_squared) + $signed(imag_squared);
        fft_abs <= fft_abs_next;
    end
end

//128个点
fft fft_inst 
(
  .aclk                 (sys_clk),                            // input wire aclk
  .aresetn              (sys_rst_n),
  .s_axis_config_tdata  (15'b0   ),                            // input wire [15 : 0] s_axis_config_tdata
  .s_axis_config_tvalid (1'b0),                               // input wire s_axis_config_tvalid
  .s_axis_config_tready (   ),                                // output wire s_axis_config_tready

  .s_axis_data_tdata    (s_axis_data_tdata),                  // input wire [63 : 0] s_axis_data_tdata [31:0]实部，[63:32]虚部
  .s_axis_data_tvalid   (s_axis_data_tvalid),                 // input wire s_axis_data_tvalid
  .s_axis_data_tready   (s_axis_data_tready),                 // output wire s_axis_data_tready
  .s_axis_data_tlast    (s_axis_data_tlast),                  // input wire s_axis_data_tlast

  .m_axis_data_tdata    (m_axis_data_tdata),                  // output wire [63 : 0] m_axis_data_tdata [31:0]实部，[63:32]虚部
  .m_axis_data_tvalid   (m_axis_data_tvalid ),                // output wire m_axis_data_tvalid
  .m_axis_data_tready   (m_axis_data_tready),                               // input 下游模块准备好了吗
  .m_axis_data_tlast    (m_axis_data_tlast  ),                // output wire m_axis_data_tlast

  .event_frame_started          (event_frame_started        ),    // output wire event_frame_started
  .event_tlast_unexpected       (event_tlast_unexpected     ),    // output wire event_tlast_unexpected
  .event_tlast_missing          (event_tlast_missing        ),    // output wire event_tlast_missing
  .event_status_channel_halt    (event_status_channel_halt  ),    // output wire event_status_channel_halt
  .event_data_in_channel_halt   (event_data_in_channel_halt ),    // output wire event_data_in_channel_halt
  .event_data_out_channel_halt  (event_data_out_channel_halt)     // output wire event_data_out_channel_halt
);

endmodule

