`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/17 21:51:55
// Design Name: 
// Module Name: LFSR_Gen
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: x15+x14+x13+x+1
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LFSR_Gen_8dout#(
    parameter           P_LFSR_INIT = 16'hA076  
)(
    input               i_clk                   ,
    input               i_rst                   ,
    output [7:0]       o_lfsr_value            
);

reg  [15:0]             r_lfsr                  ;
reg  [31:0]             ro_lfsr_value           ;

wire [47:0]             w_xor_run               ;              

assign w_xor_run[47:32] =  r_lfsr               ;
assign o_lfsr_value     = ro_lfsr_value>>24         ;

genvar i;

generate
    for(i = 0 ;i < 32 ;i = i + 1)
    begin
        assign w_xor_run[31 - i] = w_xor_run[47 - i] ^ w_xor_run[46 - i] ^ w_xor_run[45 - i] ^ w_xor_run[32 - i];
    end
endgenerate

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_lfsr <= P_LFSR_INIT;
    else 
        r_lfsr <= w_xor_run[15:0];
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_lfsr_value <= 'd0;
    else
        ro_lfsr_value <= w_xor_run[31:0];
end

endmodule
