`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/15 00:35:27
// Design Name: 
// Module Name: comparer
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


module comparer(
   input                    i_clk       ,
   input                    i_rst       ,
   input  signed  [11:0]    i_ad_data   ,
   output                   o_pwm_data  
);

/***************function**************/

/***************parameter*************/

/***************port******************/             

/***************mechine***************/

/***************reg*******************/
reg     ro_pwm_data;
/***************wire******************/

/***************assign****************/
assign o_pwm_data = ro_pwm_data;
/***************component*************/

/***************always****************/

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_pwm_data <= 'd0;
    else if(i_ad_data[11] == 1'b0)
        ro_pwm_data <= 1'd1;
    else 
        ro_pwm_data <= 1'd0;
end





endmodule
