module delay_module
#(
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 16
)
(
    input wrclk,
    input rdclk,
    input sys_rst,
    input adcfifo_write,
    input [15:0]delay_times,
    input [DATA_WIDTH-1:0] data_in,
    output wire [DATA_WIDTH-1:0] data_out
);

wire delay_read_en_left;
wire delay_read_en_right;

wire [15:0] rdusedw_left;
wire [15:0] rdusedw_right;

wire [15:0] delay_left_times = {delay_times[4:0],11'd0};
wire [15:0] delay_right_times = {delay_times[12:8],11'd0};

// assign delay_read_en_left = (((16'd30000 <= rdusedw_left))?1'd1:1'd0);
assign delay_read_en_left = (((16'd60000 <= rdusedw_left) && delay_left_times != 16'd0)?1'd1:1'd0);
assign delay_read_en_right = (((16'd60000 <= rdusedw_right) && delay_right_times != 16'd0)?1'd1:1'd0);


fifo_delay_left delay_fifo_left (
  .clk(wrclk),      // input wire clk
  .din(data_in[15:0]),      // input wire [15 : 0] din
  .wr_en(adcfifo_write),  // input wire wr_en
  .rd_en(delay_read_en_left),  // input wire rd_en
  .dout(data_out[15:0]),    // output wire [15 : 0] dout
  .full(fifo_left_full),    // output wire full
  .empty(fifo_left_empty),  // output wire empty
  .data_count(rdusedw_left)  // output wire [13 : 0] data_count
);
// fifo_delay_left delay_fifo_left(
// 		.Data(data_in[15:0]), 	//input [31:0] Data
// 		.WrClk(wrclk), 			//input WrClk
// 		.RdClk(rdclk), 			//input RdClk
// 		.WrEn(adcfifo_write), 	//input WrEn
// 		.RdEn(delay_read_en_left), //input RdEn
// 		.Rnum(rdusedw_left), 	//output [14:0] Rnum
// 		.Q(data_out[15:0]) 		//output [31:0] Q
// // 	);


fifo_delay_right delay_fifo_right (
  .clk(wrclk),      // input wire clk
  .din(data_in[31:16]),      // input wire [15 : 0] din
  .wr_en(adcfifo_write),  // input wire wr_en
  .rd_en(delay_read_en_right),  // input wire rd_en
  .dout(data_out[31:16]),    // output wire [15 : 0] dout
  .full(fifo_right_full),    // output wire full
  .empty(fifo_right_empty) , // output wire empty
  .data_count(rdusedw_right)  // output wire [14 : 0] data_count
);
// fifo_delay_right delay_fifo_right(
// 		.Data(data_in[31:16]), //input [31:0] Data
// 		.WrClk(wrclk), //input WrClk
// 		.RdClk(rdclk), //input RdClk
// 		.WrEn(adcfifo_write), //input WrEn
// 		.RdEn(delay_read_en_right), //input RdEn
// 		.Rnum(rdusedw_right), //output [14:0] Rnum
// 		.Q(data_out[31:16]) //output [31:0] Q
// 	);


endmodule