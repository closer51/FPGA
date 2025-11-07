module reverb_module_1
#(
    parameter DATA_WIDTH = 32
)
(
    input  sys_clk,
    input  sys_rst,
    input  data_valid,
    input  [DATA_WIDTH-1:0] data_in,
    output [DATA_WIDTH-1:0] data_out_1
);

localparam out_data_offset = 0;
wire [DATA_WIDTH/2-1:0] reverb_1_comb_out_data_left_1;
wire [DATA_WIDTH/2-1:0] reverb_1_comb_out_data_right_1;
wire [DATA_WIDTH/2-1:0] reverb_1_comb_out_data_left_2;
wire [DATA_WIDTH/2-1:0] reverb_1_comb_out_data_right_2;
wire [DATA_WIDTH/2-1:0] reverb_1_comb_out_data_left_3;
wire [DATA_WIDTH/2-1:0] reverb_1_comb_out_data_right_3;
wire [DATA_WIDTH/2-1:0] reverb_1_comb_out_data_left_4;
wire [DATA_WIDTH/2-1:0] reverb_1_comb_out_data_right_4;         //4个梳状滤波器并联wire


wire [DATA_WIDTH/2:0] reverb_1_comb_out_data_add_left_1;
wire [DATA_WIDTH/2:0] reverb_1_comb_out_data_add_right_1;
wire [DATA_WIDTH/2:0] reverb_1_comb_out_data_add_left_2;
wire [DATA_WIDTH/2:0] reverb_1_comb_out_data_add_right_2;
wire [DATA_WIDTH/2+1:0] reverb_1_comb_out_data_add_left;
wire [DATA_WIDTH/2+1:0] reverb_1_comb_out_data_add_right;
wire [DATA_WIDTH-1:0] reverb_1_comb_out_data_add;

assign reverb_1_comb_out_data_add_left_1 = reverb_1_comb_out_data_left_1 + reverb_1_comb_out_data_left_2;
assign reverb_1_comb_out_data_add_right_1 = reverb_1_comb_out_data_right_1 + reverb_1_comb_out_data_right_2;
assign reverb_1_comb_out_data_add_left_2 = reverb_1_comb_out_data_left_3 + reverb_1_comb_out_data_left_4;
assign reverb_1_comb_out_data_add_right_2 = reverb_1_comb_out_data_right_3 + reverb_1_comb_out_data_right_4;  //半加

assign reverb_1_comb_out_data_add_left = reverb_1_comb_out_data_add_left_1 + reverb_1_comb_out_data_add_left_2;
assign reverb_1_comb_out_data_add_right = reverb_1_comb_out_data_add_right_1 + reverb_1_comb_out_data_add_right_2;

assign reverb_1_comb_out_data_add[DATA_WIDTH/2-1:0] = reverb_1_comb_out_data_add_left[DATA_WIDTH/2+1:2];
assign reverb_1_comb_out_data_add[DATA_WIDTH-1:DATA_WIDTH/2] = reverb_1_comb_out_data_add_right[DATA_WIDTH/2+1:2];

//assign data_out_1 = reverb_1_comb_out_data_add;
//例化4个梳状滤波器
comb_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .back_gain(9),
    .DELAY(13)
) comb_module_1
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(data_valid),
    .data_in(data_in),
    .data_out_left(reverb_1_comb_out_data_left_1),
    .data_out_right(reverb_1_comb_out_data_right_1)
);

comb_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .back_gain(9),
    .DELAY(21)                     //1884
) comb_module_2
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(data_valid),
    .data_in(data_in),
    .data_out_left(reverb_1_comb_out_data_left_2),
    .data_out_right(reverb_1_comb_out_data_right_2)
);

comb_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .back_gain(9),
    .DELAY(27)
) comb_module_3
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(data_valid),
    .data_in(data_in),
    .data_out_left(reverb_1_comb_out_data_left_3),
    .data_out_right(reverb_1_comb_out_data_right_3)
);

comb_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .back_gain(9),
    .DELAY(34)
) comb_module_4
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(data_valid),
    .data_in(data_in),
    .data_out_left(reverb_1_comb_out_data_left_4),
    .data_out_right(reverb_1_comb_out_data_right_4)
);


 wire [DATA_WIDTH-1:0] reverb_1_allcross_iir_module_outdata;
 reg reverb_1_data_out_valid_comb;
 reg reverb_1_data_out_valid_iir_1;

//打一拍梳状滤波器，打两拍全通滤波器
always @(posedge sys_clk or negedge sys_rst)begin
    if(!sys_rst) begin
        reverb_1_data_out_valid_comb <= 1'd0;
        reverb_1_data_out_valid_iir_1 <= 1'd0;
    end
    else begin
        reverb_1_data_out_valid_comb <= data_valid;
        reverb_1_data_out_valid_iir_1 <= reverb_1_data_out_valid_comb;
    end
end
//assign data_out = reverb_1_comb_out_data_add;
//两个全通滤波器级联
allcross_iir_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .DELAY(23)
) allcross_iir_module_1
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(reverb_1_data_out_valid_comb),
    .data_in(reverb_1_comb_out_data_add),
    .data_out(reverb_1_allcross_iir_module_outdata)
);

wire [31:0] data_out_temp;
allcross_iir_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .DELAY(11)
) allcross_iir_module_2
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(reverb_1_data_out_valid_iir_1),
    .data_in(reverb_1_allcross_iir_module_outdata),
    .data_out(data_out_1)
);


endmodule



module reverb_module_2
#(
    parameter DATA_WIDTH = 32
)
(
    input  sys_clk,
    input  sys_rst,
    input  data_valid,
    input  [DATA_WIDTH-1:0] data_in,
    output [DATA_WIDTH-1:0] data_out_2
);

localparam out_data_offset = 2;
wire [DATA_WIDTH/2-1:0] reverb_2_comb_out_data_left_1;
wire [DATA_WIDTH/2-1:0] reverb_2_comb_out_data_right_1;
wire [DATA_WIDTH/2-1:0] reverb_2_comb_out_data_left_2;
wire [DATA_WIDTH/2-1:0] reverb_2_comb_out_data_right_2;
wire [DATA_WIDTH/2-1:0] reverb_2_comb_out_data_left_3;
wire [DATA_WIDTH/2-1:0] reverb_2_comb_out_data_right_3;
wire [DATA_WIDTH/2-1:0] reverb_2_comb_out_data_left_4;
wire [DATA_WIDTH/2-1:0] reverb_2_comb_out_data_right_4;         //4个梳状滤波器并联wire


wire [DATA_WIDTH/2:0] reverb_2_comb_out_data_add_left_1;
wire [DATA_WIDTH/2:0] reverb_2_comb_out_data_add_right_1;
wire [DATA_WIDTH/2:0] reverb_2_comb_out_data_add_left_2;
wire [DATA_WIDTH/2:0] reverb_2_comb_out_data_add_right_2;
wire [DATA_WIDTH/2+1:0] reverb_2_comb_out_data_add_left;
wire [DATA_WIDTH/2+1:0] reverb_2_comb_out_data_add_right;
wire [DATA_WIDTH-1:0] reverb_2_comb_out_data_add;

assign reverb_2_comb_out_data_add_left_1 = reverb_2_comb_out_data_left_1 + reverb_2_comb_out_data_left_2;
assign reverb_2_comb_out_data_add_right_1 = reverb_2_comb_out_data_right_1 + reverb_2_comb_out_data_right_2;
assign reverb_2_comb_out_data_add_left_2 = reverb_2_comb_out_data_left_3 + reverb_2_comb_out_data_left_4;
assign reverb_2_comb_out_data_add_right_2 = reverb_2_comb_out_data_right_3 + reverb_2_comb_out_data_right_4;  //半加

assign reverb_2_comb_out_data_add_left = reverb_2_comb_out_data_add_left_1 + reverb_2_comb_out_data_add_left_2;
assign reverb_2_comb_out_data_add_right = reverb_2_comb_out_data_add_right_1 + reverb_2_comb_out_data_add_right_2;

assign reverb_2_comb_out_data_add[DATA_WIDTH/2-1:0] = reverb_2_comb_out_data_add_left[DATA_WIDTH/2-1:0];
assign reverb_2_comb_out_data_add[DATA_WIDTH-1:DATA_WIDTH/2] = reverb_2_comb_out_data_add_right[DATA_WIDTH/2-1:0];               //调节音量

//例化4个梳状滤波器
comb_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .back_gain(7),
    .DELAY(2)
) comb_module_5
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(data_valid),
    .data_in(data_in),
    .data_out_left(reverb_2_comb_out_data_left_1),
    .data_out_right(reverb_2_comb_out_data_right_1)
);

comb_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .back_gain(8),
    .DELAY(3)                     //1884
) comb_module_6
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(data_valid),
    .data_in(data_in),
    .data_out_left(reverb_2_comb_out_data_left_2),
    .data_out_right(reverb_2_comb_out_data_right_2)
);

comb_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .back_gain(9),
    .DELAY(5)
) comb_module_7
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(data_valid),
    .data_in(data_in),
    .data_out_left(reverb_2_comb_out_data_left_3),
    .data_out_right(reverb_2_comb_out_data_right_3)
);

comb_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .back_gain(7),
    .DELAY(7)
) comb_module_8
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(data_valid),
    .data_in(data_in),
    .data_out_left(reverb_2_comb_out_data_left_4),
    .data_out_right(reverb_2_comb_out_data_right_4)
);


 wire [DATA_WIDTH-1:0] reverb_2_allcross_iir_module_outdata;
 reg reverb_2_data_out_valid_comb;
 reg reverb_2_data_out_valid_iir_1;

//打一拍梳状滤波器，打两拍全通滤波器
always @(posedge sys_clk or negedge sys_rst)begin
    if(!sys_rst) begin
        reverb_2_data_out_valid_comb <= 1'd0;
        reverb_2_data_out_valid_iir_1 <= 1'd0;
    end
    else begin
        reverb_2_data_out_valid_comb <= data_valid;
        reverb_2_data_out_valid_iir_1 <= reverb_2_data_out_valid_comb;
    end
end
//assign data_out = reverb_2_comb_out_data_add;
//两个全通滤波器级联
allcross_iir_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .DELAY(54)
) allcross_iir_module_3
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(reverb_2_data_out_valid_comb),
    .data_in(reverb_2_comb_out_data_add),
    .data_out(reverb_2_allcross_iir_module_outdata)
);

wire [31:0] data_out_temp;
allcross_iir_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .DELAY(103)
) allcross_iir_module_4
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(reverb_2_data_out_valid_iir_1),
    .data_in(reverb_2_allcross_iir_module_outdata),
    .data_out(data_out_2)
);


endmodule




//第三个混响效果 采用moorer混响模型

module reverb_module_3
#(
    parameter DATA_WIDTH = 32
)
(
    input  sys_clk,
    input  sys_rst,
    input  data_valid,
    input  [DATA_WIDTH-1:0] data_in,
    output [DATA_WIDTH-1:0] data_out_3
);

wire [DATA_WIDTH/2-1:0] reverb_3_comb_out_data_left_1;
wire [DATA_WIDTH/2-1:0] reverb_3_comb_out_data_right_1;
wire [DATA_WIDTH/2-1:0] reverb_3_comb_out_data_left_2;
wire [DATA_WIDTH/2-1:0] reverb_3_comb_out_data_right_2;
wire [DATA_WIDTH/2-1:0] reverb_3_comb_out_data_left_3;
wire [DATA_WIDTH/2-1:0] reverb_3_comb_out_data_right_3;
wire [DATA_WIDTH/2-1:0] reverb_3_comb_out_data_left_4;
wire [DATA_WIDTH/2-1:0] reverb_3_comb_out_data_right_4;
wire [DATA_WIDTH/2-1:0] reverb_3_comb_out_data_left_5;
wire [DATA_WIDTH/2-1:0] reverb_3_comb_out_data_right_5;         
wire [DATA_WIDTH/2-1:0] reverb_3_comb_out_data_left_6;
wire [DATA_WIDTH/2-1:0] reverb_3_comb_out_data_right_6;         //6个梳状滤波器并联


wire [DATA_WIDTH/2:0] reverb_3_comb_out_data_add_left_1;
wire [DATA_WIDTH/2:0] reverb_3_comb_out_data_add_right_1;
wire [DATA_WIDTH/2:0] reverb_3_comb_out_data_add_left_2;
wire [DATA_WIDTH/2:0] reverb_3_comb_out_data_add_right_2;
wire [DATA_WIDTH/2:0] reverb_3_comb_out_data_add_left_3;
wire [DATA_WIDTH/2:0] reverb_3_comb_out_data_add_right_3;
wire [DATA_WIDTH/2+1:0] reverb_3_comb_out_data_add_left;
wire [DATA_WIDTH/2+1:0] reverb_3_comb_out_data_add_right;
wire [DATA_WIDTH-1:0] reverb_3_comb_out_data_add;
wire [31:0] data_out_fir;
wire [31:0] data_out_scher;

assign reverb_3_comb_out_data_add_left_1 = reverb_3_comb_out_data_left_1 + reverb_3_comb_out_data_left_2;
assign reverb_3_comb_out_data_add_right_1 = reverb_3_comb_out_data_right_1 + reverb_3_comb_out_data_right_2;
assign reverb_3_comb_out_data_add_left_2 = reverb_3_comb_out_data_left_3 + reverb_3_comb_out_data_left_4;
assign reverb_3_comb_out_data_add_right_2 = reverb_3_comb_out_data_right_3 + reverb_3_comb_out_data_right_4;  //半加
assign reverb_3_comb_out_data_add_left_3 = reverb_3_comb_out_data_left_5 + reverb_3_comb_out_data_left_6;
assign reverb_3_comb_out_data_add_right_3 = reverb_3_comb_out_data_right_5 + reverb_3_comb_out_data_right_6;

assign reverb_3_comb_out_data_add_left = reverb_3_comb_out_data_add_left_1 + reverb_3_comb_out_data_add_left_2 + reverb_3_comb_out_data_add_left_3;
assign reverb_3_comb_out_data_add_right = reverb_3_comb_out_data_add_right_1 + reverb_3_comb_out_data_add_right_2 + reverb_3_comb_out_data_add_left_3;

assign reverb_3_comb_out_data_add[DATA_WIDTH/2-1:0] = reverb_3_comb_out_data_add_left[DATA_WIDTH/2-1:0];
assign reverb_3_comb_out_data_add[DATA_WIDTH-1:DATA_WIDTH/2] = reverb_3_comb_out_data_add_right[DATA_WIDTH/2-1:0];               //调节音量

assign data_out_3[15:0] = (data_in[15:2] + data_out_fir[15:1] + data_out_scher[15:0])<<1;
assign data_out_3[31:16] = (data_in[31:18] + data_out_fir[31:17] + data_out_scher[31:16])<<1;


fir_module_reverb
#(
    .DATA_WIDTH(16)
)
fir_module_reverb_left
(
    .sys_fir_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_in(data_in[15:0]),
    .data_valid(data_valid),
    .data_out(data_out_fir[15:0])
);

fir_module_reverb
#(
    .DATA_WIDTH(16)
)
fir_module_reverb_right
(
    .sys_fir_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_in(data_in[31:16]),
    .data_valid(data_valid),
    .data_out(data_out_fir[31:16])
);

reg comb_valid;
always @(posedge sys_clk or negedge sys_rst)begin
    if(!sys_rst)
        comb_valid <= 1'b0;
    else
        comb_valid <= data_valid;
end

//例化6个梳状滤波器
comb_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .back_gain(5),
    .DELAY(13)
) comb_module_9
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(comb_valid),
    .data_in(data_out_fir),
    .data_out_left(reverb_3_comb_out_data_left_1),
    .data_out_right(reverb_3_comb_out_data_right_1)
);

comb_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .back_gain(7),
    .DELAY(17)                     //1884
) comb_module_10
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(comb_valid),
    .data_in(data_out_fir),
    .data_out_left(reverb_3_comb_out_data_left_2),
    .data_out_right(reverb_3_comb_out_data_right_2)
);

comb_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .back_gain(9),
    .DELAY(31)
) comb_module_11
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(comb_valid),
    .data_in(data_out_fir),
    .data_out_left(reverb_3_comb_out_data_left_3),
    .data_out_right(reverb_3_comb_out_data_right_3)
);

comb_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .back_gain(6),
    .DELAY(23)
) comb_module_12
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(comb_valid),
    .data_in(data_out_fir),
    .data_out_left(reverb_3_comb_out_data_left_4),
    .data_out_right(reverb_3_comb_out_data_right_4)
);

comb_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .back_gain(6),
    .DELAY(31)
) comb_module_13
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(comb_valid),
    .data_in(data_out_fir),
    .data_out_left(reverb_3_comb_out_data_left_5),
    .data_out_right(reverb_3_comb_out_data_right_5)
);

comb_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .back_gain(6),
    .DELAY(26)
) comb_module_14
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(comb_valid),
    .data_in(data_out_fir),
    .data_out_left(reverb_3_comb_out_data_left_6),
    .data_out_right(reverb_3_comb_out_data_right_6)
);

 reg reverb_3_data_out_valid_comb;

//打一拍梳状滤波器，打两拍全通滤波器
always @(posedge sys_clk or negedge sys_rst)begin
    if(!sys_rst) begin
        reverb_3_data_out_valid_comb <= 1'd0;
    end
    else begin
        reverb_3_data_out_valid_comb <= comb_valid;
    end
end
//assign data_out = reverb_3_comb_out_data_add;
//一个全通滤波器级联
allcross_iir_module
#(
    .DATA_WIDTH(DATA_WIDTH),
    .DELAY(23)
) allcross_iir_module_5
(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .data_valid(reverb_3_data_out_valid_comb),
    .data_in(reverb_3_comb_out_data_add),
    .data_out(data_out_scher)
);



endmodule


