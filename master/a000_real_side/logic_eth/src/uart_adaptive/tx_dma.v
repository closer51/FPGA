`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/08 14:35:29
// Design Name: 
// Module Name: tx_dma
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


module tx_dma(
    input                i_clk              ,
    input                i_rst              ,
    /*用户接口*/
    input                i_user_tx_valid    ,
    input   [7:0]        i_user_data        ,
    /*驱动接口*/
    output               o_tx_valid         ,
    output   [7:0]       o_tx_data          ,
    input                i_tx_ready         
);


reg             r_rd_en  ;
reg             r_rd_en_1d  ;
reg     [3:0]   r_gap_cnt;

reg             ro_tx_valid ;
reg    [7:0]    ro_tx_data  ;


wire     [7:0]   w_rd_data;
wire             full  ;
wire             empty ;

 assign  o_tx_valid  =  ro_tx_valid    ;
 assign  o_tx_data   =  ro_tx_data      ;


sync_fifo #(
    .  P_WIDTH  (8) ,
    .  P_DEPTH  (8)  
)sync_fifo_u0
(
    .    i_clk    (i_clk)   ,
    .    i_rst    (i_rst)   ,
    .    wr_en    (i_user_tx_valid)   ,
    .    wr_data  (i_user_data)   ,
    .    rd_en    (r_rd_en)   ,
    .    rd_data  (w_rd_data)   ,
    .    full     (full )   ,
    .    empty    (empty)   
);

always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        r_rd_en_1d <= 'd0;
    end else begin
        r_rd_en_1d <= r_rd_en;
    end
end

always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        r_rd_en <= 'd0;
    end else if(r_rd_en==0 && r_gap_cnt==0&&i_tx_ready&&!empty)begin
        r_rd_en <= 'd1;
    end else begin
        r_rd_en <= 'd0;
    end
end

always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        r_gap_cnt <= 'd0;
    end else if(r_gap_cnt == 10)begin
        r_gap_cnt <= 'd0;
    end else if(r_rd_en || r_gap_cnt)begin
        r_gap_cnt <= r_gap_cnt + 1;
    end else begin
        r_gap_cnt <= r_gap_cnt;
    end
end

always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        ro_tx_data <= 'd0;
    end else if(r_rd_en_1d)begin
        ro_tx_data <= w_rd_data;
    end else begin
        ro_tx_data <= ro_tx_data;
    end
end
always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        ro_tx_valid <= 'd0;
    end else if(r_rd_en_1d)begin
        ro_tx_valid <= 'd1;
    end else begin
        ro_tx_valid <= 'd0;
    end
end

//always@(posedge i_clk, posedge i_rst)begin
//    if(i_rst)begin
//    end else if()begin
//    end else if()begin
//    end else begin
//    end
//end
endmodule
