`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/25 23:27:00
// Design Name: 
// Module Name: adc_drive
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


module adc_drive(
    input           i_clk               ,
    input           i_rst               ,
    input           i_clk_180p          ,

    output  [11:0]  o_user_adc_data     ,
    input   [11:0]  i_adc_digit         ,
    output          o_adc_clk           
);
(*mark_debug = "true"*)reg     [11:0]  ro_user_adc_data;


assign  o_adc_clk = i_clk_180p;
assign  o_user_adc_data = ro_user_adc_data;



always @(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_user_adc_data <= 'd0;
    else
        ro_user_adc_data <= (i_adc_digit^12'hFFF)-12'd2048;
end


endmodule
