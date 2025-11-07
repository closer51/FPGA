`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/26 23:24:42
// Design Name: 
// Module Name: timer_1s
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


module timer_1s(
    input   i_clk,
    input   i_rst,
    output  o_1s_pulse
);

localparam LP_NUM = 5_000_000;

reg     ro_1s_pulse;
reg     [25:0]  r_cnt;

assign  o_1s_pulse = ro_1s_pulse;

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ro_1s_pulse <= 'd0;
    else if(r_cnt == 1)
        ro_1s_pulse <= 'd1;
    else 
        ro_1s_pulse <= 'd0;
end


always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_cnt <= 'd0; 
    else if(r_cnt >= LP_NUM)
        r_cnt <= 'd0;
    else 
        r_cnt <= r_cnt + 1;
end

endmodule
