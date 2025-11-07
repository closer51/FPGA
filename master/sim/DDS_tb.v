`timescale 1ns / 1ps
 
module DDS_tb;
 
reg                         clk;
reg                         rst; 

initial clk = 1;
always #10 clk = ~clk;

dds  dds(
    .   i_clk         (clk)      ,
    .   i_rst         (rst)      ,
    .   i_fword       (0)      ,
    .   i_fword_vld   (0)      ,
    .   i_pword       (0)      ,
    .   i_pword_vld   (0)      ,
    .   i_mode        (0)      ,
    .   i_mode_vld    (0)      ,
    .   o_data_out    ()
);
 
        
     initial begin
        rst = 1;
        #100;
        rst = 0;

    end
 
endmodule