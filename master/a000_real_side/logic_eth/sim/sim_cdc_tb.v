`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/18 02:31:53
// Design Name: 
// Module Name: sim_cdc_tb
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


module sim_cdc_tb();

reg clk_50M,rst;

reg clk_100M;

initial begin
    rst = 1;
    #100;
    @(posedge clk_50M)rst = 0;
end

always begin
    clk_50M = 0;
    #10;
    clk_50M = 1;
    #10;
end

always begin
    clk_100M = 0;
    #5;
    clk_100M = 1;
    #5;
end

reg [7 :0]       r_per_axis_data;

reg  r_per_axis_valid;
reg  r_per_axis_last ;
AXIS_BUF_2CLK AXIS_BUF_2CLK(
    .  i_per_clk           (clk_100M),
    .  i_per_rst           (rst),
    .  i_per_axis_data     (r_per_axis_data),
    .  i_per_axis_user     (16'd200),
    .  i_per_axis_valid    (r_per_axis_valid),
    .  i_per_axis_last     (r_per_axis_last ),
    .  o_per_axis_ready    (),

    .   i_post_clk          (clk_50M),
    .   i_post_rst          (rst),
    .   o_post_axis_data    (),
    .   o_post_axis_user    (),
    .   o_post_axis_valid   (),
    .   o_post_axis_last    (),
    .   i_post_axis_ready   (1)           
);

initial begin 
r_per_axis_data  = 0;   
r_per_axis_valid = 0;   
r_per_axis_last  = 0;   
wait(!rst);
#200;
cdc(200);

end 

task cdc(input  [8:0] i_send_len);
begin:hehe
    integer i;
    r_per_axis_data  <= 'd0;
    r_per_axis_valid <= 'd0;
    r_per_axis_last  <= 'd0;
    @(posedge clk_100M);
    for(i = 0;i < i_send_len;i=i+1)
    begin 
        r_per_axis_data  <= r_per_axis_data + 1;
        if(i==i_send_len-1)r_per_axis_last  <= 'd1;
        else r_per_axis_last  <= 'd0;
        r_per_axis_valid <= 'd1;
        @(posedge clk_100M);
    end
    r_per_axis_data  <= 'd0;
    r_per_axis_valid <= 'd0;
    r_per_axis_last  <= 'd0;
    @(posedge clk_100M);
end
endtask

endmodule
