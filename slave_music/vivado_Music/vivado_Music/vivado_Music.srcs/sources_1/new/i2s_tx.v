module i2s_tx
#(
    parameter DATA_WIDTH        = 32     //left+right = 16 +16 =32 
)
(
    input reset_n,
    input clk_48kmult256,
    input dacfifo_wrclk,    //DACFIFO的写时钟信号
    input dacfifo_wren,     //DACFIFO的写使能信号
    input [DATA_WIDTH - 1 : 0] dacfifo_wrdata,  //DACFIFO的写数据信号
    output dacfifo_full,    //DACFIFO满标志信号

    input  bclk,
    input  daclrc,     //音频的左右时钟
    output reg dacdat,

    input [7:0] divi_data,
    input [15:0] delay_num,         //音频参数
    input [7:0] equalier_select,
    input [7:0] equalier_gain,
    input [7:0]  reverb_mode
);

localparam state_idle = 2'd0;  //空闲状态
localparam state_tx_left_data = 2'd1;  //发送左通道数据信号
localparam state_tx_right_data = 2'd2; //发送右通道数据信号

reg[1:0] state; 
wire dacfifo_empty;
wire dacfifo_rden;
wire [DATA_WIDTH - 1 : 0] dacfifo_rddata;
reg [DATA_WIDTH - 1 : 0] dacfifo_rddata_r0;
reg daclrc_r0;
reg daclrc_nege;
reg daclrc_pose;
reg [7:0] bit_cnt;      //位计数
reg samples_24k_nege;                                 //24k采样率
wire real_nege;
assign real_nege = daclrc_nege;

assign dacfifo_rden = (~dacfifo_empty && daclrc_nege) ? 1'd1 : 1'd0;          //DACFIFO不为空便可以读取数据
always@(posedge bclk) begin
    daclrc_r0 <= daclrc;
end

always@(posedge daclrc_nege) begin
    samples_24k_nege <= ~samples_24k_nege;
end
always@(posedge bclk or negedge reset_n)
if(~reset_n) begin
	daclrc_pose <= 1'd0;
	daclrc_nege <= 1'd0;
end
else begin
	daclrc_pose <= daclrc & (!daclrc_r0);
	daclrc_nege <= (!daclrc) & daclrc_r0;
end

always@(negedge daclrc)
    dacfifo_rddata_r0 <= dacfifo_rddata;


always@(negedge bclk or negedge reset_n)
if(~reset_n)
begin
    state <= state_idle;
    bit_cnt <= 8'd0;
    dacdat <= 1'd0;
end
else
begin
    case(state)
        state_idle:
        begin
            bit_cnt <= DATA_WIDTH - 1'd1;
            dacdat <= 1'd0;
            if(daclrc_nege)        //开始发送左通道数据
            begin
                state <= state_tx_left_data;
                bit_cnt <= bit_cnt - 1'd1;
                dacdat <= dacfifo_rddata_r0[bit_cnt]; 
            end
        end

        state_tx_left_data:
        begin
            if(bit_cnt == DATA_WIDTH/2 - 1'd1)
            begin
                dacdat <= 1'd0;
                if(daclrc_pose) begin
                    state <= state_tx_right_data;
                    bit_cnt <= bit_cnt - 1'd1;
                    dacdat <= dacfifo_rddata_r0[bit_cnt];
                end
            end
            else
            begin
                bit_cnt <= bit_cnt - 1'd1;
                dacdat <= dacfifo_rddata_r0[bit_cnt];  
            end
        end

        state_tx_right_data:
        begin
            if(bit_cnt == 0)
            begin
                state <= state_idle;
                bit_cnt <= bit_cnt - 1'd1;
                dacdat <= dacfifo_rddata_r0[bit_cnt];
            end
            else
            begin
                bit_cnt <= bit_cnt - 1'd1;
                dacdat <= dacfifo_rddata_r0[bit_cnt];
            end
        end
    endcase
end

wire [DATA_WIDTH-1:0] adcfifo_readdata_fifo;
wire [DATA_WIDTH-1:0] adcfifo_readdata_effects;

effects_select effects_select_test(
    .sys_clk(bclk),
    .fifo_clk(bclk),
    .sys_rst(reset_n),
    .data_valid(dacfifo_rden),
    .data_in(adcfifo_readdata_fifo),
    .select(reverb_mode),   
    .delay_num(delay_num),
    .equalier_select(equalier_select),
    .equalier_gain(equalier_gain),
    .out_ready(out_ready),
    .data_out(adcfifo_readdata_effects)
);


fir_complex_200_high fir_complex_200_high_out(
    .sys_fir_clk              (bclk),
    .sys_rst              (reset_n),
    .data_in              (adcfifo_readdata_effects),
    .data_out             (dacfifo_rddata),
    .data_valid         (out_ready)
);

async_fifo #(
	.DATA_WIDTH(DATA_WIDTH),
	.ADDR_WIDTH(8),
	.FULL_AHEAD(1),
	.SHOWAHEAD_EN(0)
)dac_fifo
(
	.reset(~reset_n),
	//fifo wr
	.wrclk(dacfifo_wrclk),
	.wren(dacfifo_wren),
	.wrdata(dacfifo_wrdata),
	.full(dacfifo_full),
	.almost_full(),
	.wrusedw(),
	//fifo rd
	.rdclk(bclk),
	.rden(dacfifo_rden),
	.rddata(adcfifo_readdata_fifo),
	.empty(dacfifo_empty),
	.rdusedw()
);

endmodule