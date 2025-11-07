module effects_select(
    input sys_clk,
    input fifo_clk,
    input sys_rst,
    input data_valid,
    input [31:0] data_in,
    input [7:0]  select,
    input [15:0]  delay_num,
    input [7:0] equalier_select,
    input [7:0] equalier_gain,
    output  out_ready,
    output [31:0] data_out
);

wire outdata_ready;
reg out_ready_temp;
assign out_ready = out_ready_temp;

always@(posedge sys_clk or negedge sys_rst)begin
    if(!sys_rst)
        out_ready_temp <= 1'd0;
    else
        out_ready_temp <= data_valid;

end

reg  [31:0] data_out_temp;
assign data_out[15:0] = data_out_temp[15:0]<<1;
assign data_out[31:16] = data_out_temp[31:16]<<1;
always @(posedge sys_clk or negedge sys_rst) begin
    if(!sys_rst) begin
        data_out_temp <= 32'd0;
        end
    else begin
        case(select)
            8'd0:begin
                data_out_temp[15:0] <= adcfifo_readdata_fifo_pip_1[15:0] + adcfifo_readdata_delay[15:1];
                data_out_temp[31:16] <= adcfifo_readdata_fifo_pip_1[31:16] + adcfifo_readdata_delay[31:17];
            end
            8'd1:begin
                data_out_temp[15:0] <= comb_out_data_1[15:0]<<3;
                data_out_temp[31:16] <= comb_out_data_1[31:16]<<3;
            end
            8'd2:begin
                data_out_temp[15:0] <= comb_out_data_2[15:0]<<2;
                data_out_temp[31:16] <= comb_out_data_2[31:16]<<2;
            end
            8'd3:begin
                data_out_temp[15:0] <= comb_out_data_3[15:0];
                data_out_temp[31:16] <= comb_out_data_3[31:16];
            end
            8'd4:begin
                data_out_temp[15:0] <= comb_out_data_4[15:0]<<2;
                data_out_temp[31:16] <= comb_out_data_4[31:16]<<2;
            end
            8'd7:begin
                data_out_temp <= data_in;
            end
        endcase
        end
end

//回声，输出延时48k+1bclk
wire [31:0] adcfifo_readdata_delay;

parameter delay_per = 3'd3;//延时周期数

reg [31:0] adcfifo_readdata_fifo_pip_1;
reg [2:0] adc_out_cnt;
reg flag;
always @(posedge sys_clk or negedge sys_rst) begin
    if(!sys_rst) begin
        flag <= 1'd0;
        end
    else if(data_valid)begin
        flag <= 1'd1;
        end
    else if(adc_out_cnt == delay_per)begin
        flag <= 1'd0;
        end
end
always @(posedge sys_clk or negedge sys_rst) begin
    if(!sys_rst)begin
        adc_out_cnt <= 3'd0;
        adcfifo_readdata_fifo_pip_1 <= 32'd0;
        end
    else if(adc_out_cnt == delay_per && flag == 1'b1)begin
        adc_out_cnt <= 3'd0;
        adcfifo_readdata_fifo_pip_1 <= data_in;
        end
    else if(flag == 1'b1)begin
        adc_out_cnt <= adc_out_cnt + 3'b1;
        end
    else begin
        adc_out_cnt <= 3'd0;
    end
end


delay_module delay_module
(
    .wrclk(sys_clk),
    .rdclk(sys_clk),
    .sys_rst(sys_rst),
    .adcfifo_write(data_valid),
    .delay_times(delay_num),
    .data_in(data_in),
    .data_out(adcfifo_readdata_delay)
);


//混响

wire [31:0] comb_out_data_1;
wire [31:0] comb_out_data_2;
wire [31:0] comb_out_data_3;
reverb_module_1
#(
    .DATA_WIDTH(32)
) reverb_module_1
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(data_valid),
    .data_in(data_in),
    .data_out_1(comb_out_data_1)
);


reverb_module_2
#(
    .DATA_WIDTH(32)
) reverb_module_2
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(data_valid),
    .data_in(data_in),
    .data_out_2(comb_out_data_2)
);

reverb_module_3
#(
    .DATA_WIDTH(32)
) reverb_module_3
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(data_valid),
    .data_in(data_in),
    .data_out_3(comb_out_data_3)
);

wire [31:0] comb_out_data_4;
//均衡器
equalier_control equalier_control_test(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(data_valid),
    .data_in(data_in),
    .equalier_select(equalier_select),
    .equalier_gain(equalier_gain),
    .data_out(comb_out_data_4)
);



endmodule