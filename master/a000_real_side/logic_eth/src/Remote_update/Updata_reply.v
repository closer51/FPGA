`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/25 13:57:56
// Design Name: 
// Module Name: Updata_reply
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:  ID(1) + cmd(1) + addr4(1) + addr3(1) + addr2(1) + addr1(1) + plyload(1024);
// cmd:
// H4bit : 0-更新完成；1-开始更新
// L4bit : 0-普通写 ；1-先擦除一个4KB，再写
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Updata_reply(
    input           i_clk                   ,
    input           i_rst                   ,

    input  [1 :0]   i_reply_info            ,
    input           i_reply_valid           ,

    output [7 :0]   o_etx_axis_data         ,
    output [15:0]   o_etx_axis_user         ,
    output          o_etx_axis_last         ,
    output          o_etx_axis_valid        ,
    input           i_etx_axis_ready        
);

localparam          P_BYTES  = 100          ;

reg  [1 :0]         ri_reply_info           ;
reg                 ri_reply_valid          ;
reg  [7 :0]         ro_etx_axis_data        ;
reg  [15:0]         ro_etx_axis_user        ;
reg                 ro_etx_axis_last        ;
reg                 ro_etx_axis_valid       ;
reg  [15:0]         r_cnt                   ;    

assign o_etx_axis_data  = ro_etx_axis_data  ;
assign o_etx_axis_user  = ro_etx_axis_user  ;
assign o_etx_axis_last  = ro_etx_axis_last  ;
assign o_etx_axis_valid = ro_etx_axis_valid ;

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        ri_reply_info  <= 'd0;
        ri_reply_valid <= 'd0;
    end else if(i_reply_valid) begin
        ri_reply_info  <= i_reply_info;
        ri_reply_valid <= 'd1;
    end else begin
        ri_reply_info  <= ri_reply_info;
        ri_reply_valid <= 'd0;
    end
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_cnt <= 'd0;
    else if(r_cnt == P_BYTES - 1)
        r_cnt <= 'd0;
    else if(i_reply_valid | r_cnt)
        r_cnt <= r_cnt + 1;
    else 
        r_cnt <= r_cnt;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_etx_axis_data <= 'd0;
    else case(r_cnt) 
        0       :ro_etx_axis_data <= 'd0;//ID = 0
        1       :ro_etx_axis_data <= 'd2;//CMD =2
        2       :ro_etx_axis_data <= 'd0;//addr3 = 0;
        3       :ro_etx_axis_data <= 'd0;//addr2 = 0;
        4       :ro_etx_axis_data <= 'd0;//addr1 = 0;
        5       :ro_etx_axis_data <= 'd0;//addr0 = 0;
        default :ro_etx_axis_data <= r_cnt - 5;//数据是从1开始的递增数据
    endcase
end
 
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_etx_axis_user <= 'd0 ;
    else
        ro_etx_axis_user <= 'd100;//长度100字节
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)       
        ro_etx_axis_last <= 'd0;
    else if(r_cnt == P_BYTES - 1)
        ro_etx_axis_last <= 'd1;
    else 
        ro_etx_axis_last <= 'd0;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)  
        ro_etx_axis_valid <= 'd0;
    else if(ro_etx_axis_valid & ro_etx_axis_last)
        ro_etx_axis_valid <= 'd0;
    else if(i_reply_valid)
        ro_etx_axis_valid <= 'd1;
    else 
        ro_etx_axis_valid <= ro_etx_axis_valid;
end

endmodule
