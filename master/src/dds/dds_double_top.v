`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/14 17:13:24
// Design Name: 
// Module Name: dds_double_top
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


module dds_double_top(
    input               i_clk              ,
    input               i_rst              ,

    input               i_dds1_run          ,//开关
    input               i_dds1_run_vld      ,
    input    [2:0]      i_dds1_type         ,//类型   //8种
    input               i_dds1_type_vld     , 
    input    [15:0]     i_dds1_frq          ,//频率   120/30=4M  //算5m  23bit -> 又因为只精确到100hz，所以5M对应50000-》16bit，
    input               i_dds1_frq_vld      ,
    input    [11:0]     i_dds1_amp          ,//幅值      //3000->12bit
    input               i_dds1_amp_vld      ,
    input    [12:0]     i_dds1_p2p          ,//峰峰值        //6000->13bit
    input               i_dds1_p2p_vld      ,    
    input    [12:0]     i_dds1_offset       ,//直流偏移  //6000->13bit
    input               i_dds1_offset_vld   ,
    input    [11:0]     i_dds1_phase        ,//相位   3600->12bit
    input               i_dds1_phase_vld    ,  
    input    [9:0]      i_dds1_duty         ,//占空比  //1000-》10bit
    input               i_dds1_duty_vld     ,
    output [13:0]       o_dds1_data         ,

    input               i_dds2_run          ,
    input               i_dds2_run_vld      ,
    input    [2:0]      i_dds2_type         ,
    input               i_dds2_type_vld     ,
    input    [15:0]     i_dds2_frq          ,
    input               i_dds2_frq_vld      ,
    input    [11:0]     i_dds2_amp          ,
    input               i_dds2_amp_vld      ,
    input    [12:0]     i_dds2_p2p          ,
    input               i_dds2_p2p_vld      ,
    input    [12:0]     i_dds2_offset       ,
    input               i_dds2_offset_vld   ,
    input    [11:0]     i_dds2_phase        ,
    input               i_dds2_phase_vld    ,
    input    [9:0]      i_dds2_duty         ,
    input               i_dds2_duty_vld     ,
    output [13:0]       o_dds2_data         
);

   
/***************function**************/

/***************parameter*************/

/***************port******************/             

/***************mechine***************/

/***************reg*******************/

/***************wire******************/

/***************assign****************/

/***************component*************/
dds_single_channel_top  dds_single_channel_top_u0
(     
    .   i_clk             (i_clk             ) ,
    .   i_rst             (i_rst             ) ,
    .   i_dds_run         (i_dds1_run        ) ,//开关
    .   i_dds_run_vld     (i_dds1_run_vld    ) ,
    .   i_dds_type        (i_dds1_type       ) ,//类型   //8种
    .   i_dds_type_vld    (i_dds1_type_vld   ) , 
    .   i_dds_frq         (i_dds1_frq        ) ,//频率   120/30=4M  //算5m  23bit -> 又因为只精确到100hz，所以5M对应50000-》16bit，
    .   i_dds_frq_vld     (i_dds1_frq_vld    ) ,
    .   i_dds_amp         (i_dds1_amp        ) ,//幅值      //3000->12bit
    .   i_dds_amp_vld     (i_dds1_amp_vld    ) ,
    .   i_dds_p2p         (i_dds1_p2p        ) ,//峰峰值        //6000->13bit
    .   i_dds_p2p_vld     (i_dds1_p2p_vld    ) ,    
    .   i_dds_offset      (i_dds1_offset     ) ,//直流偏移  //6000->13bit
    .   i_dds_offset_vld  (i_dds1_offset_vld ) ,
    .   i_dds_phase       (i_dds1_phase      ) ,//相位   3600->12bit
    .   i_dds_phase_vld   (i_dds1_phase_vld  ) ,  
    .   i_dds_duty        (i_dds1_duty       ) ,//占空比  //1000-》10bit
    .   i_dds_duty_vld    (i_dds1_duty_vld   ) ,
    .   o_dds_data        (o_dds1_data       )  
);

dds_single_channel_top  dds_single_channel_top_u1
(     
    .   i_clk             (i_clk             ) ,
    .   i_rst             (i_rst             ) ,
    .   i_dds_run         (i_dds2_run        ) ,//开关
    .   i_dds_run_vld     (i_dds2_run_vld    ) ,
    .   i_dds_type        (i_dds2_type       ) ,//类型   //8种
    .   i_dds_type_vld    (i_dds2_type_vld   ) , 
    .   i_dds_frq         (i_dds2_frq        ) ,//频率   120/30=4M  //算5m  23bit -> 又因为只精确到100hz，所以5M对应50000-》16bit，
    .   i_dds_frq_vld     (i_dds2_frq_vld    ) ,
    .   i_dds_amp         (i_dds2_amp        ) ,//幅值      //3000->12bit
    .   i_dds_amp_vld     (i_dds2_amp_vld    ) ,
    .   i_dds_p2p         (i_dds2_p2p        ) ,//峰峰值        //6000->13bit
    .   i_dds_p2p_vld     (i_dds2_p2p_vld    ) ,    
    .   i_dds_offset      (i_dds2_offset     ) ,//直流偏移  //6000->13bit
    .   i_dds_offset_vld  (i_dds2_offset_vld ) ,
    .   i_dds_phase       (i_dds2_phase      ) ,//相位   3600->12bit
    .   i_dds_phase_vld   (i_dds2_phase_vld  ) ,  
    .   i_dds_duty        (i_dds2_duty       ) ,//占空比  //1000-》10bit
    .   i_dds_duty_vld    (i_dds2_duty_vld   ) ,
    .   o_dds_data        (o_dds2_data       )  
);
/***************always****************/




// always@(posedge i_clk, posedge i_rst)
// begin
//     if(i_rst)
//     else if()
//     else 
// end
endmodule
