`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/14 12:03:42
// Design Name: 
// Module Name: dds_tri_gen
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


module dds_tri_gen(
    input           i_clk       ,
    input           i_rst       ,
    input   [7:0]   i_addr      ,
    output  [13:0]  o_tri_data       
    );
/***************function**************/

/***************parameter*************/

/***************port******************/             

/***************mechine***************/

/***************reg*******************/
reg  [13:0]  ro_tri_data       ;
/***************wire******************/

/***************assign****************/
assign o_tri_data = ro_tri_data;
/***************component*************/

/***************always****************/

// 三角波生成逻辑
always@(posedge i_clk, posedge i_rst) begin
    if(i_rst) 
        ro_tri_data <= 14'd0;  // 复位时输出0
    else if(i_addr < 8'd128)
        ro_tri_data <= i_addr<<7;
    else if(i_addr==8'd128)
        ro_tri_data <= 14'b11_1111_1111_1111;
    else  
        ro_tri_data <= 14'b11_1111_1000_0000 - i_addr[6:0]<<7;
    
end

 
endmodule
