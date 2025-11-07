`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/27 22:59:53
// Design Name: 
// Module Name: Uart_DMA
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


module Uart_DMA(
    input               i_clk               ,
    input               i_rst               ,

    input  [7 :0]       i_uart_rx_data      ,
    input               i_uart_rx_valid     ,
    output [7 :0]       o_uart_tx_data      ,
    output              o_uart_tx_valid     ,
    input               i_uart_tx_ready     ,

 output [7 :0]       o_user_rx_data      ,
   output              o_user_rx_valid     ,
    output              o_user_rx_last      ,
    output [15:0]       o_user_rx_len       ,  
    input  [7 :0]       i_user_tx_data      ,
    input               i_user_tx_valid     ,

    input               i_logic_send_model        
);

Uart_Dma_Tx Uart_Dma_Tx_u0(
    .i_clk              (i_clk              ),
    .i_rst              (i_rst              ),
    .o_uart_tx_data     (o_uart_tx_data     ),
    .o_uart_tx_valid    (o_uart_tx_valid    ),
    .i_uart_ready       (i_uart_tx_ready    ),
    .i_user_tx_data     (i_user_tx_data     ),
    .i_user_tx_valid    (i_user_tx_valid    ),
    .i_logic_send_model (i_logic_send_model )
);

Uart_Dma_Rx Uart_Dma_Rx_u0(
    .i_clk              (i_clk              ),
    .i_rst              (i_rst              ),
    .i_uart_rx_data     (i_uart_rx_data     ),
    .i_uart_rx_valid    (i_uart_rx_valid    ),
    .o_user_rx_data     (o_user_rx_data     ),
    .o_user_rx_valid    (o_user_rx_valid    ),
    .o_user_rx_last     (o_user_rx_last     ),
    .o_user_rx_len      (o_user_rx_len      )
);

endmodule
