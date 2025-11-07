`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/27 22:59:53
// Design Name: 
// Module Name: Uart_Dma_Tx
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


module Uart_Dma_Tx(
    input           i_clk           ,
    input           i_rst           ,
    
    output [7 :0]   o_uart_tx_data  ,
    output          o_uart_tx_valid ,
    input           i_uart_ready    ,

    input  [7 :0]   i_user_tx_data  ,
    input           i_user_tx_valid ,
    input           i_logic_send_model//0 是透写  1是缓冲
);

reg  [7 :0]         ro_uart_tx_data     ;
reg                 ro_uart_tx_valid    ;
reg  [1 :0]         r_rden_cnt          ;
reg                 r_fifo_rden         ;
reg                 r_fifo_rden_1d      ;

reg                 r_cache_run         ;
wire [7 :0]         w_fifo_dout         ;
wire                w_fifo_full         ;
wire                w_fifo_empty        ;

assign o_uart_tx_data  = ro_uart_tx_data    ;
assign o_uart_tx_valid = ro_uart_tx_valid   ;

FIFO_8X8192 FIFO_8X8192_U0 (
  .clk      (i_clk          ),      // input wire clk
  .din      (i_user_tx_data ),      // input wire [7 : 0] din
  .wr_en    (i_user_tx_valid),  // input wire wr_en
  .rd_en    (r_fifo_rden    ),  // input wire rd_en
  .dout     (w_fifo_dout    ),    // output wire [7 : 0] dout
  .full     (w_fifo_full    ),    // output wire full
  .empty    (w_fifo_empty   )  // output wire empty
);

 

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_rden_cnt <= 'd0;
    else if(r_fifo_rden || r_rden_cnt)
        r_rden_cnt <= r_rden_cnt + 1;
    else 
        r_rden_cnt <= r_rden_cnt;
end


always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_cache_run <= 'd0;
    else if(w_fifo_empty)
        r_cache_run <= 'd0;
    else if(w_fifo_full)
        r_cache_run <= 'd1;
    else 
        r_cache_run <= r_cache_run;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)begin
        r_fifo_rden <= 'd0;
    end else if(!i_logic_send_model)begin   //透传
        if(r_fifo_rden)
            r_fifo_rden <= 'd0;
        else if(i_uart_ready && !w_fifo_empty && r_rden_cnt == 0)
            r_fifo_rden <= 'd1;
        else 
            r_fifo_rden <= 'd0;
    end else if(i_logic_send_model&&r_cache_run)begin//缓冲
        if(r_fifo_rden)
            r_fifo_rden <= 'd0;
        else if(i_uart_ready && !w_fifo_empty && r_rden_cnt == 0)
            r_fifo_rden <= 'd1;
        else 
            r_fifo_rden <= 'd0;
    end
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
    if(i_rst) begin
        ro_uart_tx_data  <= 'd0;
        ro_uart_tx_valid <= 'd0;
    end else if(r_fifo_rden_1d) begin
        ro_uart_tx_data  <= w_fifo_dout;
        ro_uart_tx_valid <= 'd1;
    end else begin
        ro_uart_tx_data  <= 'd0;
        ro_uart_tx_valid <= 'd0;
    end
end
endmodule
