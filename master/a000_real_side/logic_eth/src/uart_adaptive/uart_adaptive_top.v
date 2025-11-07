`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/21 19:22:29
// Design Name: 
// Module Name: uart_adaptive_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module uart_adaptive_top(
    input               i_clk               ,
    input               i_rst_n               ,
    input               i_uart_rx           ,
    output              o_uart_tx            ,
    input               i_updata_min_b_vld         ,
    input   [15:0]      i_updata_min_b_data        ,
    input               i_updata_max_b_vld         ,
    input   [15:0]      i_updata_max_b_data        ,
    input               i_updata_8b10_or_nor_vld    ,
    input               i_updata_8b10_or_nor_data   //0 正常模式    1 8b10b编码模式 

);
reg         ri_updata_8b10_or_nor_data;
wire [7:0]      w_8b10b_dout       ;
wire            w_8b10b_dout_valid ;

wire        [7:0]   w_real_rx_data;
wire        [7:0]   w_real_rx_vld ;

wire        [9:0]       w_uart_data     ;
wire                    w_uart_data_vld ;
wire        [31:0]      w_baud_cnt_num;

wire   [7:0]      w_user_rx_data      ;
wire              w_user_rx_valid     ;

wire    i_rst = ~i_rst_n;

assign  w_real_rx_data = ri_updata_8b10_or_nor_data ? w_8b10b_dout       :w_uart_data[7:0];
assign  w_real_rx_vld  = ri_updata_8b10_or_nor_data ? w_8b10b_dout_valid :w_uart_data_vld ;


uart_adaptive_baud_rate uart_adaptive_baud_rate_u0(
    . i_clk           (i_clk              ),  // 系统时钟
    . i_rst           (i_rst              ),  // 异步复位（高有效）
    . i_uart_rx       (i_uart_rx          ),  // UART接收信号
    . o_uart_data     (w_uart_data        ),  // 输出接收数据
    . o_uart_data_vld (w_uart_data_vld    ),    // 输出数据有效标志
    . o_baud_cnt_num  (w_baud_cnt_num     ),
    . i_updata_min_b_vld (i_updata_min_b_vld  ),
    . i_updata_min_b_data(i_updata_min_b_data ),
    . i_updata_max_b_vld (i_updata_max_b_vld  ),
    . i_updata_max_b_data(i_updata_max_b_data ),
    . i_updata_8b10_or_nor_vld (i_updata_8b10_or_nor_vld )  ,
    . i_updata_8b10_or_nor_data(i_updata_8b10_or_nor_data)  //0 正常模式    1 8b10b编码模式  
);

 
decoder_8B10B decoder_8B10B_u0
(
  .reset         (i_rst) ,
  .clk           (i_clk) ,
  .din           (w_uart_data) ,
  .din_valid     (w_uart_data_vld) ,
  .dout          (w_8b10b_dout      ) ,
  .dout_valid    (w_8b10b_dout_valid)    
);
 


uart_rx_dma uart_rx_dma_u0(
    . i_clk               (i_clk              ),
    . i_rst               (i_rst              ), 
    . o_user_rx_data      (w_user_rx_data     ),
    . o_user_rx_valid     (w_user_rx_valid    ), 
    . i_rx_data           (w_real_rx_data     ),
    . i_rx_valid          (w_real_rx_vld      )
);
wire            w_tx_valid ;
wire    [7:0]   w_tx_data  ;
wire            w_tx_ready;
uart_tx_dma uart_tx_dma_u0(
    .   i_clk            (i_clk) ,
    .   i_rst            (i_rst) , 
    .   i_user_tx_valid  (w_user_rx_valid) ,
    .   i_user_data      (w_user_rx_data )  , 
    .   o_tx_valid       (w_tx_valid) ,
    .   o_tx_data        (w_tx_data) ,
    .   i_tx_ready       (w_tx_ready) 
);


 
uart_tx uart_tx(
    . i_clk          (i_clk),
    . i_rst          (i_rst),
    . i_tx_valid     (w_tx_valid),
    . i_tx_data      (w_tx_data),
    . o_tx_ready     (w_tx_ready),
    . i_baud_cnt_num (w_baud_cnt_num),
    . o_tx           (o_uart_tx)
);
 


always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ri_updata_8b10_or_nor_data <= 'd0; 
    else if(i_updata_8b10_or_nor_vld)
        ri_updata_8b10_or_nor_data <=  i_updata_8b10_or_nor_data;
    else 
        ri_updata_8b10_or_nor_data <= ri_updata_8b10_or_nor_data;
end


endmodule
