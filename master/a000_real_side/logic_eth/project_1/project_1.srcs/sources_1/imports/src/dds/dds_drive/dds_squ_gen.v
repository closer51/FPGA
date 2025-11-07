`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/14 12:36:43
// Design Name: 
// Module Name: dds_squ_gen
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


module dds_squ_gen(
    input           i_clk       ,
    input           i_rst       ,
    input   [7:0]   i_addr      ,
    input   [9:0]   i_duty      ,
    output  [13:0]  o_squ_data       
);
/***************function**************/

/***************parameter*************/

/***************port******************/             

/**********s*****mechine***************/

/***************reg*******************/
reg  [13:0]  ro_squ_data       ;
/***************wire******************/

/***************assign****************/
assign o_squ_data = ro_squ_data;
/***************component*************/

/***************always****************/

 always@(posedge i_clk, posedge i_rst)
 begin
     if(i_rst)
        ro_squ_data <= 'd0;
     else if(i_addr< 256*i_duty/1000)//默认32位宽
        ro_squ_data <= 14'b11_1111_1111_1111;
     else 
        ro_squ_data <= 14'd0;
 end

endmodule
