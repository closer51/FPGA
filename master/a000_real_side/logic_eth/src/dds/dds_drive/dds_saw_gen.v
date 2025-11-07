`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/14 12:03:42
// Design Name: 
// Module Name: dds_saw_gen
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


module dds_saw_gen(
    input           i_clk       ,
    input           i_rst       ,
    input   [7:0]   i_addr      ,
    output  [13:0]  o_saw_data       
    );
/***************function**************/

/***************parameter*************/

/***************port******************/             

/***************mechine***************/

/***************reg*******************/
reg  [13:0]  ro_saw_data       ;
/***************wire******************/

/***************assign****************/
assign o_saw_data = ro_saw_data;
/***************component*************/

/***************always****************/

 always@(posedge i_clk, posedge i_rst)
 begin
     if(i_rst)
        ro_saw_data <= 'd0;
     else 
        ro_saw_data <= i_addr<<6;
 end
 
endmodule
