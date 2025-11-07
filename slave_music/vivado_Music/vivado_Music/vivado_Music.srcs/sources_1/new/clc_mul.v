module clc_mul#(
    parameter STAGES = 4, // 滤波器阶数
    parameter DATA_WIDTH = 16, // 数据宽度
    parameter decimation = 2,    //二分频
    parameter INDATA_WIDTH = 22 // 中间数据宽度
)
(
    input sys_clk,                          //48k*32,PLL获得
    input bclk,                             //bclk
    input adcfifo_rdclk,
    input sys_rst,
    input [7:0]sample_devide,               //分频系数，便于分频
    input data_valid,                       //输入数据有效
    input [DATA_WIDTH-1:0] data_in,
    output data_ready,                      //数据准备输出
    output [DATA_WIDTH-1:0] data_out
);

reg[7:0] pre_sample_devide;

wire clk_rst;
assign clk_rst = sys_rst & (pre_sample_devide == sample_devide);

always @(posedge sys_clk or negedge sys_rst) begin
    if (!sys_rst) begin
        pre_sample_devide <= 8'd0;
    end 
    else begin
        pre_sample_devide <= sample_devide;
    end
end

wire clk_48k;
wire clk_multiple;
wire clc_sys_clk;
sys_divi sys_clk_divi              //分频分出48k时钟
(
    .sys_clk(sys_clk),
    .sys_rest(clk_rst),
    .clk_dividi(8'd8),            //32分频
    .clk_out(clc_sys_clk)
);
sys_divi sys_divi_48k              //分频分出48k时钟
(
    .sys_clk(clc_sys_clk),
    .sys_rest(clk_rst),
    .clk_dividi(8'd32),            //32分频
    .clk_out(clk_48k)
);
sys_divi sys_multiple_clk              //分频分出倍频后时钟
(
    .sys_clk(clc_sys_clk),
    .sys_rest(clk_rst),
    .clk_dividi(sample_devide),            //16分频为二倍频，64为24k,32为48k,16为96k,8为192k
    .clk_out(clk_multiple)
);

wire  [DATA_WIDTH-1:0] data_comb_in;

async_fifo #(
	.DATA_WIDTH(DATA_WIDTH),
	.ADDR_WIDTH(8),
	.FULL_AHEAD(1),
	.SHOWAHEAD_EN(0)
)clc_in_fifo
(
	.reset(~clk_rst),
	//fifo wr
	.wrclk(bclk),                         //48k
	.wren(data_valid),
	.wrdata(data_in),
	//fifo rd
	.rdclk(clk_48k),                        //倍频后时钟
	.rden(~adcfifo_empty),                  //非空就读取数据
	.rddata(data_comb_in),
	.empty(adcfifo_empty)
);                                       //clc滤波器前的fifo,跨时钟域处理数据

// 积分器的寄存器
reg  [INDATA_WIDTH-1:0] integrator [0:STAGES-1]; 
// 梳状器的寄存器
reg  [INDATA_WIDTH-1:0] comb [0:STAGES-1]; 
reg  [INDATA_WIDTH-1:0] combd [0:STAGES-1]; 
// 插值的寄存器
reg  [INDATA_WIDTH-1:0] interpolation = 0;
reg [7:0] cont;
// 输出缓冲
reg  [INDATA_WIDTH-1:0] output_buffer = 0;


reg [7:0] i;


// 梳状器（由输入时钟驱动）
always @(posedge clk_48k or negedge clk_rst) begin
    if (!clk_rst) begin
        for (i = 0; i < STAGES; i = i + 1) begin
            comb[i] <= 0;
            combd[i] <= 0;
        end
    end 
    else begin
        // 梳状器操作
            comb[0] <= {{(INDATA_WIDTH-DATA_WIDTH){data_comb_in[DATA_WIDTH-1]}}, data_comb_in};
            for (i = 1; i < STAGES; i = i + 1) begin
                combd[i-1] <= comb[i-1];
                comb[i] <= comb[i-1] - combd[i-1];
               end
    end
end

// 插值器(输出时钟驱动)
always @(posedge clk_multiple or negedge clk_rst) begin
    if (!clk_rst) begin
        interpolation <= 0;
        cont <= 0;
    end 
    else begin
            case(sample_devide)
            8'd32:begin
                    interpolation <= comb[STAGES-1];
                    cont <= 0;
            end
            8'd16:begin
                cont <= cont + 8'd1;
                if (cont == 8'd1) begin // 2倍插值，一个样本点之间插1个0。
                    interpolation <= comb[STAGES-1];
                    cont <= 0;
                end
                else
                    interpolation <= 0;
            end
            8'd8:begin
                cont <= cont + 8'd1;
                if (cont == 8'd3) begin // 4倍插值，一个样本点之间插3个0。
                    interpolation <= comb[STAGES-1];
                    cont <= 0;
                end
                else
                    interpolation <= 0;
            end
            8'd4:begin
                cont <= cont + 8'd1;
                if (cont == 8'd7) begin // 8倍插值，一个样本点之间插7个0。
                    interpolation <= comb[STAGES-1];
                    cont <= 0;
                end
                else
                    interpolation <= 0;
            end
            8'd2:begin
                cont <= cont + 8'd1;
                if (cont == 8'd15) begin // 16倍插值，一个样本点之间插15个0。
                    interpolation <= comb[STAGES-1];
                    cont <= 0;
                end
                else
                    interpolation <= 0;
            end
            8'd1:begin
                cont <= cont + 8'd1;
                if (cont == 8'd31) begin // 32倍插值，一个样本点之间插31个0。
                    interpolation <= comb[STAGES-1];
                    cont <= 0;
                end
                else
                    interpolation <= 0;
            end
            endcase
    end
end

//抽取器,实现采样率降频, 先进行抽取，在进行梳妆滤波
reg [DATA_WIDTH-1:0] data_in_temp[1:0];
reg [DATA_WIDTH+3:0] add_temp;
reg [3:0] decimation_cnt;

always @(posedge clk_48k or negedge clk_rst) begin
    if (!clk_rst) begin
            data_in_temp[0] <= 0;
            data_in_temp[1] <= 0;
        end
    else begin
        data_in_temp[0] <= comb[STAGES-1];
        data_in_temp[1] <= data_in_temp[0];
    end
end
always @(posedge clk_48k or negedge clk_rst) begin
    if (!clk_rst) begin
        add_temp <= 0;
    end
    else if(decimation_cnt == 4'd2) begin
        add_temp <= (data_in_temp[0] + data_in_temp[1])>>1;
    end
end
always @(posedge clk_48k or negedge clk_rst) begin
    if (!clk_rst) begin
        decimation_cnt <= 4'd0;
    end 
    else begin
        if (decimation_cnt < 4'd2) begin
            decimation_cnt <= decimation_cnt + 1;
        end
        else begin
            decimation_cnt <= 4'd0;
        end
    end
end


// 积分器逻辑（由输出时钟驱动）
always @(posedge clk_multiple or negedge clk_rst) begin
    if (!clk_rst) begin
        for (i = 0; i < STAGES; i = i + 1) begin
            integrator[i] <= 0;
        end
        output_buffer <= 0;
    end 
    else begin                //为1时倍频, 0时降频
            integrator[0] <= interpolation;       
            for (i = 1; i < STAGES; i = i + 1) begin // 积分器
                integrator[i] <= integrator[i] + integrator[i-1];
            end
            case(sample_devide)
            8'd64:output_buffer <= data_in<<3;
            8'd32:output_buffer <= integrator[STAGES-1]<<2;
            8'd16:output_buffer <= integrator[STAGES-1];
            8'd8:output_buffer <= integrator[STAGES-1]>>2;
            8'd4:output_buffer <= integrator[STAGES-1]>>4;
            8'd2:output_buffer <= integrator[STAGES-1]>>6;
            8'd1:output_buffer <= integrator[STAGES-1]>>8;
            endcase
    end
end

wire empty;
assign data_ready = ~empty;

async_fifo #(
	.DATA_WIDTH(DATA_WIDTH),
	.ADDR_WIDTH(8),
	.FULL_AHEAD(1),
	.SHOWAHEAD_EN(0)
)clc_out_fifo
(
	.reset(~clk_rst),
	//fifo wr
	.wrclk(clk_multiple),                         //48k
	.wren(1'd1),
	.wrdata(output_buffer),
	//fifo rd
	.rdclk(adcfifo_rdclk),                        //倍频后时钟
	.rden(1'd1),                  //非空就读取数据
	.rddata(data_out),
	.empty(empty)
);                                       //clc滤波器后的fifo,跨时钟域处理数据


endmodule


module async_fifo_ctrl #(
  parameter DATA_WIDTH = 16,
  parameter ADDR_WIDTH = 16,
  parameter FULL_AHEAD = 1
)
(
  input                       reset,
  //fifo wr
  input                       wrclk,
  input                       wren,
  input      [DATA_WIDTH-1:0] wrdata,
  output reg                  full,
  output reg                  almost_full,
  output     [ADDR_WIDTH:0]   wrusedw,
  //fifo rd
  input                       rdclk,
  input                       rden,
  output     [DATA_WIDTH-1:0] rddata,
  output                      empty,
  output     [ADDR_WIDTH:0]   rdusedw,
  //ram
  input      [DATA_WIDTH-1:0] ram_dout,
  output     [ADDR_WIDTH-1:0] ram_wraddr,
  output     [ADDR_WIDTH-1:0] ram_rdaddr,
  output     [DATA_WIDTH-1:0] ram_din,
  output                      ram_wren
);

reg  [ADDR_WIDTH:0] wr_pntr;
wire [ADDR_WIDTH:0] wr_pntr_next;
wire [ADDR_WIDTH:0] wr_pntr_gray;
reg  [ADDR_WIDTH:0] wr_pntr_gray_reg;
reg  [ADDR_WIDTH:0] rdside_wr_pntr_gray;
reg  [ADDR_WIDTH:0] rdside_wr_pntr_gray_dly1;
wire [ADDR_WIDTH:0] rdside_wr_pntr_bin;

reg  [ADDR_WIDTH:0] rd_pntr;
wire [ADDR_WIDTH:0] rd_pntr_next;
wire [ADDR_WIDTH:0] rd_pntr_gray;
reg  [ADDR_WIDTH:0] rd_pntr_gray_reg;
reg  [ADDR_WIDTH:0] wrside_rd_pntr_gray;
reg  [ADDR_WIDTH:0] wrside_rd_pntr_gray_dly1;
wire [ADDR_WIDTH:0] wrside_rd_pntr_bin;

wire [ADDR_WIDTH:0] almost_full_threshold;

reg                 empty_pre;
reg                 empty_pre_dly1;

assign  rddata     = ram_dout;
assign  ram_din    = wrdata;
assign  ram_wren   = wren && !full;
assign  ram_wraddr = wr_pntr[ADDR_WIDTH-1:0];
assign  ram_rdaddr = rd_pntr_next[ADDR_WIDTH-1:0];

assign  almost_full_threshold = {1'b1,{ADDR_WIDTH{1'b0}}} - FULL_AHEAD[ADDR_WIDTH:0];

assign wr_pntr_next = wr_pntr + (~full & wren);
assign rd_pntr_next = rd_pntr + (~empty & rden);

always@(posedge wrclk or posedge reset)
  if(reset)
    wr_pntr <= 'd0;
  else
    wr_pntr <= wr_pntr_next;

always@(posedge rdclk or posedge reset)
  if(reset)
    rd_pntr <= 'd0;
  else
    rd_pntr <= rd_pntr_next;

//bin2gary
assign wr_pntr_gray = wr_pntr[ADDR_WIDTH:0] ^ {1'b0,wr_pntr[ADDR_WIDTH:1]};
assign rd_pntr_gray = rd_pntr[ADDR_WIDTH:0] ^ {1'b0,rd_pntr[ADDR_WIDTH:1]};

always@(posedge wrclk or posedge reset)
  if(reset)
    wr_pntr_gray_reg <= 'd0;
  else
    wr_pntr_gray_reg <= wr_pntr_gray;

always@(posedge rdclk or posedge reset)
  if(reset)
    rd_pntr_gray_reg <= 'd0;
  else
    rd_pntr_gray_reg <= rd_pntr_gray;

//wrside  ---->  rdside
always@(posedge rdclk)
begin
  rdside_wr_pntr_gray <= wr_pntr_gray_reg;
  rdside_wr_pntr_gray_dly1 <= rdside_wr_pntr_gray;
end

//rdside  ---->  wrside
always@(posedge wrclk)
begin
  wrside_rd_pntr_gray <= rd_pntr_gray_reg;
  wrside_rd_pntr_gray_dly1 <= wrside_rd_pntr_gray;
end

//gary2bin,rdside
assign rdside_wr_pntr_bin[ADDR_WIDTH] = rdside_wr_pntr_gray_dly1[ADDR_WIDTH];

genvar i;
generate
  for(i = 0; i < ADDR_WIDTH; i = i + 1) begin : gray2bin_inst0
    assign rdside_wr_pntr_bin[i] = rdside_wr_pntr_bin[i+1] ^ rdside_wr_pntr_gray_dly1[i];
  end
endgenerate

//gary2bin,wrside
assign wrside_rd_pntr_bin[ADDR_WIDTH] = wrside_rd_pntr_gray_dly1[ADDR_WIDTH];

genvar j;
generate
  for(j = 0; j < ADDR_WIDTH; j = j + 1) begin : gray2bin_inst1
    assign wrside_rd_pntr_bin[j] = wrside_rd_pntr_bin[j+1] ^ wrside_rd_pntr_gray_dly1[j];
  end
endgenerate

assign rdusedw = rdside_wr_pntr_bin - rd_pntr;
assign wrusedw = wr_pntr - wrside_rd_pntr_bin;

always@(posedge rdclk or posedge reset)
begin
  if(reset)
    empty_pre <= 1'b1;
  else
    empty_pre <= (rdside_wr_pntr_bin[ADDR_WIDTH:0] == rd_pntr_next[ADDR_WIDTH:0]);
end

always@(posedge rdclk or posedge reset)
begin
  if(reset)
    empty_pre_dly1 <= 1'b1;
  else
    empty_pre_dly1 <= empty_pre;
end

assign empty = empty_pre | empty_pre_dly1 ;

always@(posedge wrclk or posedge reset)
begin
  if(reset)
    full <= 1'b0;
  else
    full <= ( wrside_rd_pntr_bin[ADDR_WIDTH] != wr_pntr_next[ADDR_WIDTH] ) &&
            ( wrside_rd_pntr_bin[ADDR_WIDTH-1:0] == wr_pntr_next[ADDR_WIDTH-1:0]);
end

//when almost_empty is not asserted, there are no less than FULL_AHEAD words can to be write into FIFO.
always@(posedge wrclk or posedge reset)
begin
  if(reset)
    almost_full <= 1'b0;
  else
    almost_full <= ((wr_pntr_next[ADDR_WIDTH:0] - wrside_rd_pntr_bin[ADDR_WIDTH:0] ) >= almost_full_threshold);
end


endmodule

module dpram #(
  parameter DATA_WIDTH = 16,
  parameter ADDR_WIDTH = 16
)
(
  input                    wrclock,
  input                    wren,
  input  [ADDR_WIDTH-1:0]  wraddress,
  input  [DATA_WIDTH-1:0]  data,
  input                    rdclock,
  input                    rden,
  input  [ADDR_WIDTH-1:0]  rdaddress,
  output [DATA_WIDTH-1:0]  q
);

reg [DATA_WIDTH-1:0] q_wire;

assign q = q_wire;

generate
  if(ADDR_WIDTH>5) begin : use_bram
  //
   (* ram_style = "block" *) reg [DATA_WIDTH-1:0] ram [2**ADDR_WIDTH-1:0];
  always@(posedge wrclock)
    if(wren)
      ram[wraddress] <= data;

  always@(posedge rdclock)
    if(rden)
      q_wire <= ram[rdaddress];
  //
  end
  else begin : use_dram
  //
  (* ram_style = "distributed" *) reg [DATA_WIDTH-1:0] ram [2**ADDR_WIDTH-1:0];
  always@(posedge wrclock)
    if(wren)
      ram[wraddress] <= data;

  always@(posedge rdclock)
    if(rden)
      q_wire <= ram[rdaddress];
  //
  end
endgenerate


endmodule