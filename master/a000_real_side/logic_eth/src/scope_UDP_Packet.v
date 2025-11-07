`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/01 16:50:03
// Design Name: 
// Module Name: scope_UDP_Packet
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


module scope_UDP_Packet(
    input               i_clk           ,
    input               i_rst           ,

    input  [7 :0]       i_user_data     ,
    input               i_user_valid    ,
    output              o_uaer_ready    ,

    output [7 :0]       o_axis_data     ,
    output [15:0]       o_axis_user     ,
    output              o_axis_valid    ,
    output              o_axis_last     ,
    input               i_axis_ready    
);

localparam  LP_HEAD = 16'd7;
localparam  LP_DATA = 16'd1008;
localparam  LP_LEN = LP_HEAD + LP_DATA;

reg  [7 :0]             ro_axis_data        ;
reg                     ro_axis_valid       ;
reg                     ro_axis_last        ;

reg  [15:0]             r_cnt               ;
reg  [7 :0]             ri_user_data        ;
reg                     ri_user_valid       ;
reg                     r_fifo_rden         ;
reg                     r_fifo_rden_1d      ;   
wire   [7 :0]           w_fifo_dout         ;
wire                    w_fifo_full         ;
wire                    w_fifo_empty        ;

reg     [15:0]      r_test_cnt;
always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)begin  
        r_test_cnt <= 'd0; 
    end else if(  o_axis_valid)begin 
        r_test_cnt <= r_test_cnt + 1;
    end else begin 
        r_test_cnt <= 'd0;
    end
end

assign o_axis_data      = ro_axis_data      ;
assign o_axis_valid     = ro_axis_valid     ;
assign o_axis_last      = ro_axis_last      ;
assign o_axis_user      = LP_LEN            ;
assign o_uaer_ready     = !r_cnt            ;//草率但是还行

FIFO_8X1024 FIFO_8X1024_u0 (
  .clk              (i_clk              ),
  .din              (ri_user_data       ),
  .wr_en            (ri_user_valid      ),
  .rd_en            (r_fifo_rden        ),
  .dout             (w_fifo_dout        ),
  .full             (w_fifo_full        ),
  .empty            (w_fifo_empty       ) 
);
 
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        ri_user_data    <= 'd0;
        ri_user_valid   <= 'd0; 
        r_fifo_rden_1d  <= 'd0;
    end else begin
        ri_user_data    <= i_user_data   ;
        ri_user_valid   <= i_user_valid  ; 
        r_fifo_rden_1d  <= r_fifo_rden   ;
    end
end



always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_cnt <= 'd0;
    else if(r_cnt ==  LP_LEN)
        r_cnt <= 'd0; 
    else if(!w_fifo_empty || r_cnt)//从1开始有效
        r_cnt <= r_cnt + 1;
    else 
        r_cnt <= r_cnt;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_fifo_rden <= 'd0;
    else if(r_cnt == 6+LP_DATA)
        r_fifo_rden <= 'd0;
    else if(r_cnt == 6 )
        r_fifo_rden <= 'd1;
    else 
        r_fifo_rden <= r_fifo_rden;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_axis_data <= 'd0;
    else case(r_cnt)
        1          :ro_axis_data <= 'd123;//报文id
        2          :ro_axis_data <= 'd0;//目的id
        3          :ro_axis_data <= 'd1;//生命周期
        4          :ro_axis_data <= 'd0;//报文类型   scope
        5          :ro_axis_data <= 'd0;//通道
        6          :ro_axis_data <= LP_DATA[15:8];
        7          :ro_axis_data <= LP_DATA[7 :0];
        default    :ro_axis_data <= w_fifo_dout ;
    endcase
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_axis_valid <= 'd0;
    else if(ro_axis_last)
        ro_axis_valid <= 'd0;
    else if(r_cnt==1)
        ro_axis_valid <= 'd1;
    else 
        ro_axis_valid <= ro_axis_valid;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_axis_last <= 'd0;
    else if(r_cnt == LP_LEN )
        ro_axis_last <= 'd1;
    else 
        ro_axis_last <= 'd0;
end

endmodule
