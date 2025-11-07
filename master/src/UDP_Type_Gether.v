`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/30 23:57:34
// Design Name: 
// Module Name: UDP_Type_Gether
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


module UDP_Type_Gether(
    input               i_clk                   ,
    input               i_rst                   ,

    //125MB
    output [15:0]       o_send_len              ,
   (*mark_debug = "true"*) output [7 :0]       o_send_data             ,
    output              o_send_last             ,
   (*mark_debug = "true"*) output              o_send_valid            ,
    input               i_send_ready            ,

    input   [7:0]       i_adc_axis_data         ,
    input   [15:0]      i_adc_axis_user         ,
    input               i_adc_axis_valid        ,
    input               i_adc_axis_last         ,
    output              o_adc_axis_ready        ,

    input   [7:0]       i_picture_axis_data   ,
    input   [15:0]      i_picture_axis_user   ,
    input               i_picture_axis_valid  ,
    input               i_picture_axis_last   ,

    input   [7:0]       i_sm3_axis_data         ,
    input   [15:0]      i_sm3_axis_user         ,
    input               i_sm3_axis_valid        ,
    input               i_sm3_axis_last         
);      
reg                 ri_sm3_axis_valid;


reg  [15:0]             ro_send_len                 ;
reg  [7 :0]             ro_send_data                ;
reg                     ro_send_last                ;
reg                     ro_send_valid               ;

reg  [2 :0]             r_flag                      ;//0-ad  1-0  2-sm3  3-x
reg                     r_run                       ;
reg  [15:0]             r_fifo_rcnt                 ;


reg                     r_fifo_len_ad_rden          ;
reg                     r_fifo_data_ad_rden         ;
reg                     r_fifo_len_0_rden          ;
reg                     r_fifo_data_0_rden         ;
reg                     r_fifo_len_sm3_rden          ;
reg                     r_fifo_data_sm3_rden         ;


reg                     r_fifo_len_ad_rden_1d       ;
reg                     r_fifo_data_ad_rden_1d      ;
reg                     r_fifo_len_0_rden_1d      ;
reg                     r_fifo_data_0_rden_1d     ;
reg                     r_fifo_len_sm3_rden_1d      ;
reg                     r_fifo_data_sm3_rden_1d     ; 

wire                    w_sm3_axis_active_rise      ;

wire     [15:0]         w_fifo_len_ad_dout          ;
wire                    w_fifo_len_ad_full          ;
wire                    w_fifo_len_ad_empty         ;
wire     [15:0]         w_fifo_len_0_dout          ;
wire                    w_fifo_len_0_full          ;
wire                    w_fifo_len_0_empty         ;
wire     [15:0]         w_fifo_len_sm3_dout          ;
wire                    w_fifo_len_sm3_full          ;
wire                    w_fifo_len_sm3_empty         ;

wire     [7 :0]         w_fifo_data_ad_dout           ;
wire                    w_fifo_data_ad_full           ;
wire                    w_fifo_data_ad_empty          ;
wire     [7 :0]         w_fifo_data_0_dout           ;
wire                    w_fifo_data_0_full           ;
wire                    w_fifo_data_0_empty          ;
wire     [7 :0]         w_fifo_data_sm3_dout           ;
wire                    w_fifo_data_sm3_full           ;
wire                    w_fifo_data_sm3_empty          ;

assign w_sm3_axis_active_rise   = i_sm3_axis_valid && !ri_sm3_axis_valid;
assign o_adc_axis_ready     = 'd1                           ;
assign o_send_len           = ro_send_len                   ;
assign o_send_data          = ro_send_data                  ;
assign o_send_last          = ro_send_last                  ;
assign o_send_valid         = ro_send_valid                 ;
assign w_send_act           = ro_send_valid & i_send_ready  ;

FIFO_16X64 FIFO_16X64_LEN_u0 (
  .clk                  (i_clk                      ),
  .din                  (i_adc_axis_user            ),
  .wr_en                (i_adc_axis_last            ),
  .rd_en                (r_fifo_len_ad_rden         ),
  .dout                 (w_fifo_len_ad_dout         ),
  .full                 (w_fifo_len_ad_full     ),
  .empty                (w_fifo_len_ad_empty    ) 
);


FIFO_8X1024 FIFO_8X1024_AD_U0 (
  .clk                  (i_clk                      ),
  .din                  (i_adc_axis_data            ),
  .wr_en                (i_adc_axis_valid           ),
  .rd_en                (r_fifo_data_ad_rden        ),
  .dout                 (w_fifo_data_ad_dout        ),
  .full                 (w_fifo_data_ad_full        ),
  .empty                (w_fifo_data_ad_empty       ) 
);

FIFO_16X64 FIFO_16X64_LEN_0_u0 (
  .clk                  (i_clk                      ),
  .din                  (i_picture_axis_user            ),
  .wr_en                (i_picture_axis_last            ),
  .rd_en                (r_fifo_len_0_rden         ),
  .dout                 (w_fifo_len_0_dout         ),
  .full                 (w_fifo_len_0_full     ),
  .empty                (w_fifo_len_0_empty    ) 
);


FIFO_8X1024 FIFO_8X1024_0_U0 (
  .clk                  (i_clk                      ),
  .din                  (i_picture_axis_data            ),
  .wr_en                (i_picture_axis_valid           ),
  .rd_en                (r_fifo_data_0_rden        ),
  .dout                 (w_fifo_data_0_dout        ),
  .full                 (w_fifo_data_0_full        ),
  .empty                (w_fifo_data_0_empty       ) 
);
 

FIFO_16X64 FIFO_16X64_LEN_sm3_u0 (
  .clk                  (i_clk                      ),
  .din                  (i_sm3_axis_user            ),
  .wr_en                (w_sm3_axis_active_rise            ),
  .rd_en                (r_fifo_len_sm3_rden         ),
  .dout                 (w_fifo_len_sm3_dout         ),
  .full                 (w_fifo_len_sm3_full     ),
  .empty                (w_fifo_len_sm3_empty    ) 
);

 
FIFO_8X16 FIFO_8X16_sm3_U0 (
  .clk                  (i_clk                      ),
  .srst                 (0),
  .din                  (i_sm3_axis_data            ),
  .wr_en                (w_sm3_axis_active_rise      ),
  .rd_en                (r_fifo_data_sm3_rden        ),
  .dout                 (w_fifo_data_sm3_dout        ),
  .full                 (w_fifo_data_sm3_full        ),
  .empty                (w_fifo_data_sm3_empty       ) 
);

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        ri_sm3_axis_valid       <= 'd0 ;
        r_fifo_len_ad_rden_1d   <= 'd0 ;
        r_fifo_data_ad_rden_1d  <= 'd0 ; 
        r_fifo_len_0_rden_1d  <= 'd0 ;
        r_fifo_data_0_rden_1d <= 'd0 ;
        r_fifo_len_sm3_rden_1d  <= 'd0 ;
        r_fifo_data_sm3_rden_1d <= 'd0 ;
    end else begin
        ri_sm3_axis_valid       <= i_sm3_axis_valid     ;
        r_fifo_len_ad_rden_1d   <= r_fifo_len_ad_rden   ;
        r_fifo_data_ad_rden_1d  <= r_fifo_data_ad_rden  ; 
        r_fifo_len_0_rden_1d  <= r_fifo_len_0_rden  ;
        r_fifo_data_0_rden_1d <= r_fifo_data_0_rden ;
        r_fifo_len_sm3_rden_1d  <= r_fifo_len_sm3_rden  ;
        r_fifo_data_sm3_rden_1d <= r_fifo_data_sm3_rden ;
    end
end




always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_flag <= 'd0;
    else if(r_flag == 0 && w_fifo_len_ad_empty && r_run == 0)//adc
        r_flag <= 'd1;
    else if(r_flag == 1 &&w_fifo_len_0_empty&&r_run == 0)//0
        r_flag <= 'd2;
    else if(r_flag == 2 &&w_fifo_len_sm3_empty&& r_run == 0)
        r_flag <= 'd0;
    else 
        r_flag <= r_flag;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)       
        r_run <= 'd0;
    else if(w_send_act && ro_send_last)
        r_run <= 'd0;
    else if(r_fifo_len_ad_rden | r_fifo_len_0_rden | r_fifo_len_sm3_rden | 0)
        r_run <= 'd1;
    else 
        r_run <= r_run;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_fifo_rcnt <= 'd0;
    else if(r_fifo_data_ad_rden && r_flag == 0 && r_fifo_rcnt == w_fifo_len_ad_dout - 1)//按优先级书写
        r_fifo_rcnt <= 'd0;
    else if(r_fifo_data_0_rden && r_flag == 1 && r_fifo_rcnt == w_fifo_len_0_dout - 1) 
        r_fifo_rcnt <= 'd0;     
    else if(r_fifo_data_sm3_rden && r_flag == 2 && r_fifo_rcnt == w_fifo_len_sm3_dout - 1) 
        r_fifo_rcnt <= 'd0;         
    else if(r_fifo_data_ad_rden | r_fifo_data_0_rden | r_fifo_data_sm3_rden | 0)
        r_fifo_rcnt <= r_fifo_rcnt + 'd1;
    else 
        r_fifo_rcnt <= r_fifo_rcnt;
end  

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_fifo_len_ad_rden <= 'd0;
    else if(r_fifo_len_ad_rden)
        r_fifo_len_ad_rden <= 'd0;
    else if(r_flag == 0 && !w_fifo_len_ad_empty && !r_run && i_send_ready)
        r_fifo_len_ad_rden <= 'd1;
    else 
        r_fifo_len_ad_rden <= 'd0;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_fifo_data_ad_rden <= 'd0;
    else if(r_fifo_data_ad_rden && r_flag == 0 && r_fifo_rcnt == w_fifo_len_ad_dout - 1 )//可能bug？
        r_fifo_data_ad_rden <= 'd0;
    else if(r_fifo_len_ad_rden)
        r_fifo_data_ad_rden <= 'd1;
    else 
        r_fifo_data_ad_rden <= r_fifo_data_ad_rden;
end     


always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_fifo_len_0_rden <= 'd0;
    else if(r_fifo_len_0_rden)
        r_fifo_len_0_rden <= 'd0;
    else if(r_flag == 1 && !w_fifo_len_0_empty && !r_run && i_send_ready)
        r_fifo_len_0_rden <= 'd1;
    else 
        r_fifo_len_0_rden <= 'd0;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_fifo_data_0_rden <= 'd0;
    else if(r_fifo_data_0_rden && r_flag == 1 && r_fifo_rcnt == w_fifo_len_0_dout - 1 )//可能bug？
        r_fifo_data_0_rden <= 'd0;
    else if(r_fifo_len_0_rden)
        r_fifo_data_0_rden <= 'd1;
    else 
        r_fifo_data_0_rden <= r_fifo_data_0_rden;
end  


always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_fifo_len_sm3_rden <= 'd0;
    else if(r_fifo_len_sm3_rden)
        r_fifo_len_sm3_rden <= 'd0;
    else if(r_flag == 2 && !w_fifo_len_sm3_empty && !r_run && i_send_ready)
        r_fifo_len_sm3_rden <= 'd1;
    else 
        r_fifo_len_sm3_rden <= 'd0;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_fifo_data_sm3_rden <= 'd0;
    else if(r_fifo_data_sm3_rden && r_flag == 2 && r_fifo_rcnt == w_fifo_len_sm3_dout - 1 )//可能bug？
        r_fifo_data_sm3_rden <= 'd0;
    else if(r_fifo_len_sm3_rden)
        r_fifo_data_sm3_rden <= 'd1;
    else 
        r_fifo_data_sm3_rden <= r_fifo_data_sm3_rden;
end  


always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_send_len <= 'd0;
    else if(r_flag == 0)
        ro_send_len <= w_fifo_len_ad_dout;
    else if(r_flag == 1)   
        ro_send_len <= w_fifo_len_0_dout;
    else if(r_flag == 2)   
        ro_send_len <= w_fifo_len_sm3_dout;
    else 
        ro_send_len <= 'd0;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_send_data <= 'd0;
    else if(r_flag == 0)
        ro_send_data <= w_fifo_data_ad_dout;
    else if(r_flag == 1)   
        ro_send_data <= w_fifo_data_0_dout; 
    else if(r_flag == 2)   
        ro_send_data <= w_fifo_data_sm3_dout; 
    else 
        ro_send_data <= 0;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_send_valid <= 'd0;
    else if(ro_send_valid && ro_send_last)
        ro_send_valid <= 'd0;
    else if(r_fifo_data_ad_rden_1d | r_fifo_data_0_rden_1d | r_fifo_data_sm3_rden_1d | 0)
        ro_send_valid <= 'd1;
    else 
        ro_send_valid <= ro_send_valid;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_send_last <= 'd0;
    else if(ro_send_valid && ro_send_last)
        ro_send_last <= 'd0;
    else if(!r_fifo_data_ad_rden && r_fifo_data_ad_rden_1d)
        ro_send_last <= 'd1;
    else if(!r_fifo_data_0_rden && r_fifo_data_0_rden_1d)
        ro_send_last <= 'd1;   
    else if(!r_fifo_data_sm3_rden && r_fifo_data_sm3_rden_1d)
        ro_send_last <= 'd1;   
    else 
        ro_send_last <= ro_send_last;
end


  
endmodule
