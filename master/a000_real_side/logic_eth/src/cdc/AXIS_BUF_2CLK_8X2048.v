`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/18 12:40:53
// Design Name: 
// Module Name: AXIS_BUF_2CLK
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


module AXIS_BUF_2CLK_8X2048(
    input               i_per_clk           ,
    input               i_per_rst           ,
    input  [7 :0]       i_per_axis_data     ,
    input  [15:0]       i_per_axis_user     ,
    input               i_per_axis_valid    ,
    input               i_per_axis_last     ,
    output              o_per_axis_ready    ,

    input               i_post_clk          ,
    input               i_post_rst          ,
    output [7 :0]       o_post_axis_data    ,
    output [15:0]       o_post_axis_user    ,
    output              o_post_axis_valid   ,
    output              o_post_axis_last    ,
    input               i_post_axis_ready              
);

reg  [7 :0]             ro_post_axis_data   ; 
reg  [15:0]             ro_post_axis_user   ; 
reg                     ro_post_axis_valid  ; 
reg                     ro_post_axis_last   ; 
// reg                     ri_post_axis_ready  ; 
reg                     r_fifo_data_rden    ;
reg                     r_fifo_len_rden     ;
reg                     r_fifo_data_rden_1d ;
reg                     r_fifo_len_rden_1d  ;
reg                     r_run               ;
reg  [15:0]             r_cnt               ;
reg  [15:0]             r_len               ;

wire [7 :0]             w_fifo_data_dout    ;
wire                    w_fifo_data_full    ;
wire                    w_fifo_data_empty   ;
wire [15 :0]            w_fifo_len_dout     ;
wire                    w_fifo_len_full     ;
wire                    w_fifo_len_empty    ;

assign o_post_axis_data  = ro_post_axis_data    ;
assign o_post_axis_user  = ro_post_axis_user    ;
assign o_post_axis_valid = ro_post_axis_valid   ;
assign o_post_axis_last  = ro_post_axis_last    ;
assign o_per_axis_ready = 1;
FIFO_8X2048_2CLK FIFO_8X8192_2CLK_DATA (
  .wr_clk               (i_per_clk          ),  // input wire wr_clk
  .rd_clk               (i_post_clk         ),  // input wire rd_clk
  .din                  (i_per_axis_data    ),        // input wire [7 : 0] din
  .wr_en                (i_per_axis_valid   ),    // input wire wr_en
  .rd_en                (r_fifo_data_rden   ),    // input wire rd_en
  .dout                 (w_fifo_data_dout   ),      // output wire [7 : 0] dout
  .full                 (w_fifo_data_full   ),      // output wire full
  .empty                (w_fifo_data_empty  )    // output wire empty
);

FIFO_16X16_2CLK FIFO_16X16_2CLK_LEN (
  .wr_clk               (i_per_clk          ),  
  .rd_clk               (i_post_clk         ),  
  .din                  (i_per_axis_user    ),  
  .wr_en                (i_per_axis_last    ),  
  .rd_en                (r_fifo_len_rden    ),  
  .dout                 (w_fifo_len_dout    ),  
  .full                 (w_fifo_len_full    ),  
  .empty                (w_fifo_len_empty   )   
);

always@(posedge i_post_clk,posedge i_post_rst)
begin
    if(i_post_rst)
        r_fifo_len_rden <= 'd0;
    else if(r_fifo_len_rden)
        r_fifo_len_rden <= 'd0;
    else if(!w_fifo_len_empty && !r_run && i_post_axis_ready)
        r_fifo_len_rden <= 'd1;
    else 
        r_fifo_len_rden <= 'd0;
end


always@(posedge i_post_clk,posedge i_post_rst)
begin
    if(i_post_rst) begin
        r_fifo_data_rden_1d <= 'd0;
        r_fifo_len_rden_1d  <= 'd0;
    end else begin
        r_fifo_data_rden_1d <= r_fifo_data_rden;
        r_fifo_len_rden_1d  <= r_fifo_len_rden;
    end
end
always@(posedge i_post_clk,posedge i_post_rst)
begin
    if(i_post_rst)
        r_run <= 'd0;
    else if(ro_post_axis_last)
        r_run <= 'd0;
    else if(!w_fifo_len_empty && r_run && i_post_axis_ready)
        r_run <= 'd1;
    else 
        r_run <= r_run;
end

always@(posedge i_post_clk,posedge i_post_rst)
begin
    if(i_post_rst)
        r_len <= 'd0;
    else if(r_fifo_len_rden_1d)
        r_len <= w_fifo_len_dout;
    else 
        r_len <= r_len;
end

always@(posedge i_post_clk,posedge i_post_rst)
begin
    if(i_post_rst)
        r_fifo_data_rden <= 'd0;
    else if(r_fifo_data_rden && r_cnt == r_len-1)
        r_fifo_data_rden <= 'd0;
    else if(r_fifo_len_rden_1d)
        r_fifo_data_rden <= 'd1;
    else 
        r_fifo_data_rden <= r_fifo_data_rden;
end

always@(posedge i_post_clk,posedge i_post_rst)
begin
    if(i_post_rst)
        r_cnt <= 'd0;
    else if(r_cnt == r_len-1)
        r_cnt <= 'd0;
    else if(r_fifo_data_rden)
        r_cnt <= r_cnt + 1;
    else 
        r_cnt <= r_cnt;
end

always@(posedge i_post_clk,posedge i_post_rst)
begin
    if(i_post_rst)
        ro_post_axis_data <= 'd0;
    else 
        ro_post_axis_data <= w_fifo_data_dout;
end
  
always@(posedge i_post_clk,posedge i_post_rst)
begin
    if(i_post_rst)
        ro_post_axis_valid <= 'd0;
    else if(ro_post_axis_last)
        ro_post_axis_valid <= 'd0;
    else 
        ro_post_axis_valid <= r_fifo_data_rden_1d;
    
end

always@(posedge i_post_clk,posedge i_post_rst)
begin
    if(i_post_rst)   
        ro_post_axis_user <= 'd0;
    else 
        ro_post_axis_user <= r_len;
end

always@(posedge i_post_clk,posedge i_post_rst)
begin
    if(i_post_rst)
        ro_post_axis_last <= 'd0;
    else if(!r_fifo_data_rden && r_fifo_data_rden_1d)
        ro_post_axis_last <= 'd1;
    else 
        ro_post_axis_last <= 'd0;
end
endmodule
