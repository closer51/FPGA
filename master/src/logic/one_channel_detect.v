`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/17 02:00:28
// Design Name: 
// Module Name: one_channel_detect
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


module one_channel_truth_table_detect(
    input           i_clk               ,
    input           i_rst               ,

    input           i_truth_table_data  ,//被测信号输入
    input           i_channel_vld       ,
    output          o_detect_vld
);

/***************function**************/

/***************parameter*************/

/***************port******************/             

/***************mechine***************/

/***************reg*******************/
reg     ro_detect_vld=0;
/***************wire******************/

/***************assign****************/
assign o_detect_vld = ro_detect_vld;
/***************component*************/

/***************always****************/

always@(*)
begin
    if(i_channel_vld && !i_truth_table_data)
        ro_detect_vld <= 'd0;
    else  
        ro_detect_vld <= 'd1;
end

endmodule
