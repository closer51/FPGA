`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/15 02:19:41
// Design Name: 
// Module Name: timer_triger
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


module timer_trigger_seek_peak(
    input           i_clk       ,
    input           i_rst       ,
    output          o_tri
);

/***************function**************/

/***************parameter*************/

/***************port******************/             

/***************mechine***************/

/***************reg*******************/
reg         ro_tri ;
reg [31:0]  r_count;
/***************wire******************/

/***************assign****************/
assign o_tri = ro_tri;
/***************component*************/

/***************always****************/
always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_tri <= 'd0;
    else if(r_count == 32'd1500)
        ro_tri <= 'd1;
    else 
        ro_tri <= 'd0;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        r_count <= 'd0;
    else if(r_count == 32'd499999)
        r_count <= 'd0;
    else 
        r_count <= r_count + 1;
end
endmodule
