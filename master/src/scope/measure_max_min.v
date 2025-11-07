`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/15 02:24:33
// Design Name: 
// Module Name: measure_max_min
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


module measure_max_min(
    input                   i_clk           ,
    input                   i_rst           ,
    input                   i_trigger       ,
    input   signed  [11:0]  i_measure_data  ,
    output  signed  [11:0]  o_measure_max   ,
    output  signed  [11:0]  o_measure_min   ,
    output                  o_measure_vld
);

/***************function**************/

/***************parameter*************/

/***************port******************/             

/***************mechine***************/

/***************reg*******************/
reg signed  [11:0]  r_measure_max;
reg signed  [11:0]  r_measure_min;

reg signed  [11:0]  ro_user_measure_max;
reg signed  [11:0]  ro_user_measure_min;
reg                 ri_trigger;
/***************wire******************/

/***************assign****************/
assign o_measure_max =  ro_user_measure_max;
assign o_measure_min =  ro_user_measure_min;
assign o_measure_vld =  ri_trigger         ;
/***************component*************/

/***************always****************/
always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        r_measure_max <= 12'b1000_0000_0000;
    else if(i_trigger)
        r_measure_max <= 12'b1000_0000_0000;
    else if(i_measure_data>r_measure_max)
        r_measure_max <= i_measure_data;
    else 
        r_measure_max <= r_measure_max;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        r_measure_min <= 12'b0111_1111_1111;
    else if(i_trigger)
        r_measure_min <= 12'b0111_1111_1111;
    else if(i_measure_data<r_measure_min)
        r_measure_min <= i_measure_data;
    else 
        r_measure_min <= r_measure_min;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_user_measure_max <= 12'b1000_0000_0000;
    else if(i_trigger)
        ro_user_measure_max <= r_measure_max     ;
    else 
        ro_user_measure_max <= ro_user_measure_max;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_user_measure_min <= 12'b1000_0000_0000;
    else if(i_trigger)
        ro_user_measure_min <= r_measure_min     ;
    else 
        ro_user_measure_min <= ro_user_measure_min;
end


always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ri_trigger <= 'd0; 
    else 
        ri_trigger <= i_trigger;
end


endmodule
