`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/15 02:35:21
// Design Name: 
// Module Name: measure_top
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


module measure_top(
    input                   i_clk           ,
    input                   i_clk_100MHz    ,
    input                   i_rst           ,
    input signed [11:0]     i_user_adc_data ,
    output [31:0]           o_user_freq            ,
    output                  o_user_freq_vld     ,
    output signed [11:0]    o_user_max_val         ,
    output signed [11:0]    o_user_min_val         ,
    output                  o_measure_vld
);

/***************function**************/

/***************parameter*************/

/***************port******************/             

/***************mechine***************/

/***************reg*******************/

/***************wire******************/

/***************assign****************/

/***************component*************/
wire    w_pwm_data;
wire    w_tri       ;
comparer comparer(
   .  i_clk       (i_clk_100MHz   ),
   .  i_rst       (i_rst          ),
   .  i_ad_data   (i_user_adc_data),
   .  o_pwm_data  (w_pwm_data     )
);

freq_measure u_freq_measure(
    .sys_clk    (i_clk          ),
    .clk_stand  (i_clk_100MHz   ),
    .sys_rst_n  (~i_rst         ),
    .clk_test   (w_pwm_data     ),
    .freq       (o_user_freq    ),
    .freq_vld   (o_user_freq_vld)
);

timer_trigger_seek_peak timer_trigger_seek_peak_u0(
   .  i_clk   (i_clk_100MHz     )    ,
   .  i_rst   (i_rst            )    ,
   .  o_tri   (w_tri            )    
);

measure_max_min measure_max_min_u0(
    .  i_clk          (i_clk_100MHz    ),
    .  i_rst          (i_rst           ),
    .  i_trigger      (w_tri           ),
    .  i_measure_data (i_user_adc_data ),
    .  o_measure_max  (o_user_max_val  ),
    .  o_measure_min  (o_user_min_val  ),
    .  o_measure_vld  (o_measure_vld   )
);



/***************always****************/




// always@(posedge i_clk, posedge i_rst)
// begin
//     if(i_rst)
//     else if()
//     else 
// end
endmodule
