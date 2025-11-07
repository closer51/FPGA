`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/15 02:01:35
// Design Name: 
// Module Name: ad9226_drive
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


module ad9226_drive(
    input                       i_clk       ,
    input                       i_rst       ,
    input  signed [11:0]        i_ad9226_din,
    output                      o_ad9226_clk,

    output signed [11:0]        o_user_data 
);

/***************function**************/

/***************parameter*************/

/***************port******************/             

/***************mechine***************/

/***************reg*******************/
reg signed  [11:0]  ro_user_data;
/***************wire******************/

/***************assign****************/
assign o_ad9226_clk = ~i_clk;
assign o_user_data = ro_user_data;
/***************component*************/

/***************always****************/

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_user_data <= 'd0; 
    else 
        ro_user_data <= i_ad9226_din^12'hFFF; /* 输入到AD9226的信号是反相的所以需要取反一下 */
end


// always@(posedge i_clk, posedge i_rst)
// begin
//     if(i_rst)
//     else if()
//     else 
// end

endmodule
