//////////////////////////////////////////////////////////////////////////////////
// Company:         xxx
// Engineer:        Guibin
// 
// Create Date:     20xx/10/17
// Design Name:     xxx
// Module Name:     xxx
// Project Name:    xxx
// Target Devices:  xxx
// Tool Versions:   VIVADO2017.4
// Description:     xxx
// 
// Dependencies:    xxx
// 
// Revision:     v0.1
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module dds_single_channel_top#(
    parameter           P_CNT = 0          
)(     
    input               i_clk              ,
    input               i_rst              ,

      input               i_dds_run          ,//开关
      input               i_dds_run_vld      ,
      input    [2:0]      i_dds_type         ,//类型   //8种
      input               i_dds_type_vld     , 
      input    [23:0]     i_dds_frq          ,//频率   120/30=4M  //算5m  23bit -> 又因为只精确到100hz，所以5M对应50000-》16bit，
      input               i_dds_frq_vld      ,
      input    [11:0]     i_dds_amp          ,//幅值      //3000->12bit
      input               i_dds_amp_vld      ,
 
      input    [12:0]     i_dds_offset       ,//直流偏移  //6000->13bit
      input               i_dds_offset_vld   ,
      input    [11:0]     i_dds_phase        ,//相位   3600->12bit
      input               i_dds_phase_vld    ,  
      input    [9:0]      i_dds_duty         ,//占空比  //1000-》10bit
      input               i_dds_duty_vld     ,

    (* mark_debug = "true" *)  output [13:0]       o_dds_data
);

/***************function**************/

/***************parameter*************/

/***************port******************/             

/***************mechine***************/

/***************reg*******************/

/***************wire******************/
wire [13:0]     w_dds_data     ;
wire            w_run          ;
wire            w_run_vld      ;
wire [26:0]     w_fword        ;
wire            w_fword_vld    ;
wire [7 :0]     w_pword        ;
wire            w_pword_vld    ;
wire [2:0]      w_mode         ;
wire            w_mode_vld     ;
wire [9:0]      w_dds_duty     ;
wire            w_dds_duty_vld ;
// wire [13:0]     w_pay_dds_data ;
/***************assign****************/

/***************component*************/
dds_ctrl dds_ctrl_u0
(
    .   i_clk              (i_clk),
    .   i_rst              (i_rst),
    .   i_dds_run          (i_dds_run        ),//开关
    .   i_dds_run_vld      (i_dds_run_vld    ),
    .   i_dds_type         (i_dds_type       ),//类型   //8种
    .   i_dds_type_vld     (i_dds_type_vld   ), 
    .   i_dds_frq          (i_dds_frq        ),//频率   120/30=4M  //算5m  23bit -> 又因为只精确到100hz，所以5M对应50000-》16bit，
    .   i_dds_frq_vld      (i_dds_frq_vld    ),
    .   i_dds_amp          (i_dds_amp        ),//幅值      //3000->12bit
    .   i_dds_amp_vld      (i_dds_amp_vld    ),
    // .   i_dds_p2p          (i_dds_p2p        ),//峰峰值        //6000->13bit
    // .   i_dds_p2p_vld      (i_dds_p2p_vld    ),    
    .   i_dds_offset       (i_dds_offset     ),//直流偏移  //6000->13bit
    .   i_dds_offset_vld   (i_dds_offset_vld ),
    .   i_dds_phase        (i_dds_phase      ),//相位   3600->12bit
    .   i_dds_phase_vld    (i_dds_phase_vld  ),  
    .   i_dds_duty         (i_dds_duty       ),//占空比  //1000-》10bit
    .   i_dds_duty_vld     (i_dds_duty_vld   ),
    .   i_dds_data         (w_dds_data       ),
    .   o_run              (w_run            ),
    .   o_run_vld          (w_run_vld        ),
    .   o_fword            (w_fword          ),
    .   o_fword_vld        (w_fword_vld      ),
    .   o_pword            (w_pword          ),
    .   o_pword_vld        (w_pword_vld      ),
    .   o_mode             (w_mode           ),
    .   o_mode_vld         (w_mode_vld       ),
    .   o_dds_duty         (w_dds_duty       ),//占空比  //1000-》10bit
    .   o_dds_duty_vld     (w_dds_duty_vld   ),
    .   o_pay_dds_data     (o_dds_data       )
);

 dds_drive dds_drive_u0(
    .  i_clk               (i_clk          ),
    .  i_rst               (i_rst          ),
    .  i_run               (w_run          ),
    .  i_run_vld           (w_run_vld      ),
    .  i_fword             (w_fword        ),
    .  i_fword_vld         (w_fword_vld    ),
    .  i_pword             (w_pword        ),
    .  i_pword_vld         (w_pword_vld    ),
    .  i_mode              (w_mode         ),
    .  i_mode_vld          (w_mode_vld     ),
    .  i_dds_duty          (w_dds_duty     ),//占空比  //1000-》10bit
    .  i_dds_duty_vld      (w_dds_duty_vld ),  
    .  o_dds_data          (w_dds_data     )
);
/***************always****************/




// always@(posedge i_clk, posedge i_rst)
// begin
//     if(i_rst)begin
//     end else if()begin
//     end else if()begin
//     end else begin
//     end
// end

endmodule