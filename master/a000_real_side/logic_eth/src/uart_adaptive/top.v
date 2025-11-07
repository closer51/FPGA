`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/23 01:42:04
// Design Name: 
// Module Name: top
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


module top_uart( 
    input               i_clk               ,
    input               i_rst_n               ,
    input               i_uart_rx           ,
    output              o_uart_tx            
);




uart_adaptive_top uart_adaptive_top_u0(
    . i_clk                      (i_clk    ) ,
    . i_rst_n                    (i_rst_n  ) ,
    . i_uart_rx                  (i_uart_rx) ,
    . o_uart_tx                  (o_uart_tx) ,
    . i_updata_min_b_vld         (0) ,
    . i_updata_min_b_data        (0) ,
    . i_updata_max_b_vld         (0) ,
    . i_updata_max_b_data        (0) ,
    . i_updata_8b10_or_nor_vld   (0) ,
    . i_updata_8b10_or_nor_data  (0) //0 正常模式    1 8b10b编码模式 

);





endmodule
