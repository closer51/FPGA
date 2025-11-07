`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/08 14:35:29
// Design Name: 
// Module Name: rx_dma
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


module uart_rx_dma(
    input           i_clk               ,
    input           i_rst               ,
    /* 用户接口*/
    output   [7:0]  o_user_rx_data      ,
    output          o_user_rx_valid     ,
    /* 驱动*/
    input  [7:0]   i_rx_data            ,
    input          i_rx_valid  
);
localparam LP_CNT = 50_000_000/9600 + 50;

reg         rd_en;
reg         rd_en_1d;
reg         r_rx_valid;
reg [7:0]   ro_user_rx_data ;
reg         ro_user_rx_valid;
 
reg [15:0]   r_gap_cnt;




wire    [9:0]   rd_data;
wire    full;
wire    empty; 

assign  o_user_rx_data  = ro_user_rx_data ;
assign  o_user_rx_valid = ro_user_rx_valid;


FIFO_10X128 FIFO_10X128_u0 (
  .clk(i_clk),      // input wire clk
  .din({2'b0,i_rx_data}),      // input wire [9 : 0] din
  .wr_en(i_rx_valid&&!full),  // input wire wr_en
  .rd_en(rd_en),  // input wire rd_en
  .dout(rd_data),    // output wire [9 : 0] dout
  .full(full),    // output wire full
  .empty(empty)  // output wire empty
);
 


always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)begin
        rd_en_1d <= 'd0;
    end else begin
        rd_en_1d <= rd_en;
    end
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)begin
        rd_en <= 'd0;
    end else if(empty)begin
        rd_en <= 'd0;
    end else if(r_gap_cnt == LP_CNT-1)begin
        rd_en <= 'd1;
    end else begin
        rd_en <= rd_en;
    end
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)begin
        r_gap_cnt <= 'd0;
    end else if(i_rx_valid || r_gap_cnt == LP_CNT-1)begin
        r_gap_cnt <= 'd0;
    end else if(r_rx_valid || r_gap_cnt)begin
        r_gap_cnt <= r_gap_cnt + 1;
    end else begin
        r_gap_cnt <= r_gap_cnt; 
    end
end


always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)begin
        r_rx_valid <= 'd0;
    end else begin
        r_rx_valid <= i_rx_valid;
    end
end
 
always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)begin
        ro_user_rx_valid <= 'd0;
        ro_user_rx_data <= 'd0;
    end else if(!rd_en)begin
        ro_user_rx_valid <= 'd0;
        ro_user_rx_data  <= 'd0;
    end else if(rd_en_1d)begin
        ro_user_rx_valid <= 'd1;
        ro_user_rx_data  <= rd_data[7:0];
    end else begin
        ro_user_rx_valid <= ro_user_rx_valid;
        ro_user_rx_data  <= ro_user_rx_data;
    end
end
//always@(posedge i_clk,posedge i_rst)begin
//    if(i_rst)begin
        
//    end else if()begin
//    end else if()begin
//    end else begin
//    end
//end
//always@(posedge i_clk,posedge i_rst)begin
//    if(i_rst)begin
//    end else if()begin
//    end else if()begin
//    end else begin
//    end
//end


endmodule
