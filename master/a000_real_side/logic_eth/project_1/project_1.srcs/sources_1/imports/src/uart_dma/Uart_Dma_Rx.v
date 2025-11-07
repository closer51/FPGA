`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/27 22:59:53
// Design Name: 
// Module Name: Uart_Dma_Rx
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


module Uart_Dma_Rx(
    input               i_clk               ,
    input               i_rst               ,
    input  [7 :0]       i_uart_rx_data      ,
    input               i_uart_rx_valid     ,
    output [7 :0]       o_user_rx_data      ,
    output              o_user_rx_valid      
);

localparam              P_GAP_CNT = 100     ;

reg  [7 :0]             ro_user_rx_data     ;
reg                     ro_user_rx_valid    ;
reg  [15:0]             r_byte_timer        ;
reg                     r_fifo_rden         ;
reg                     r_fifo_rden_1d      ;
reg                     ri_uart_rx_valid    ;

wire [7 :0]             w_fifo_dout         ;
wire                    w_fifo_full         ;
wire                    w_fifo_empty        ;
wire                    w_frame_end         ;

assign o_user_rx_data  = ro_user_rx_data    ;
assign o_user_rx_valid = ro_user_rx_valid   ;
assign w_frame_end     = r_byte_timer == P_GAP_CNT - 1 ;

FIFO_8X512 FIFO_8X512_U0 (
    .clk                  (i_clk                ),     
    .din                  (i_uart_rx_data       ),      
    .wr_en                (i_uart_rx_valid      ),  
    .rd_en                (r_fifo_rden          ),
    .dout                 (w_fifo_dout          ),
    .full                 (w_fifo_full          ),
    .empty                (w_fifo_empty         ) 
);

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_byte_timer <= 'd0;
    else if(r_byte_timer == P_GAP_CNT - 1 || i_uart_rx_valid)
        r_byte_timer <= 'd0;
    else if(r_byte_timer || ri_uart_rx_valid)
        r_byte_timer <= r_byte_timer + 1;
    else 
        r_byte_timer <= r_byte_timer;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ri_uart_rx_valid <= 'd0;
    else
        ri_uart_rx_valid <= i_uart_rx_valid;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_fifo_rden_1d <= 'd0;
    else
        r_fifo_rden_1d <= r_fifo_rden;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_fifo_rden <= 'd0;
    else if(w_fifo_empty)
        r_fifo_rden <= 'd0;
    else if(w_frame_end)
        r_fifo_rden <= 'd1;
    else 
        r_fifo_rden <= r_fifo_rden;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        ro_user_rx_data  <= 'd0;
        ro_user_rx_valid <= 'd0;
    end else if(r_fifo_rden == 0) begin
        ro_user_rx_data  <= 'd0;
        ro_user_rx_valid <= 'd0;
    end else if(r_fifo_rden_1d) begin
        ro_user_rx_data  <= w_fifo_dout;
        ro_user_rx_valid <= 'd1;
    end else begin
        ro_user_rx_data  <= 'd0;
        ro_user_rx_valid <= 'd0;
    end
end

endmodule
