//////////////////////////////////////////////////////////////////////////////////
// Company:         xxx
// Engineer:        Guibin
// 
// Create Date:     20xx/05/20
// Design Name:     xxx
// Module Name:     xxx
// Project Name:    xxx
// Target Devices:  xxx
// Tool Versions:   VIVADO2019.1
// Description:     1.后面需要优化使用除法器解决/120_000_000
//                  2.输入的频率=实际频率/100
//                  3.收缩按照一半3v得到系数
// Dependencies:    xxx
// 
// Revision:     v0.1
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//27位宽到1hz
module dds_ctrl#(
    parameter       P_CNT = 0              
)(
    input               i_clk              ,
    input               i_rst              ,

    input               i_dds_run          ,//开关
    input               i_dds_run_vld      ,
    input    [2:0]      i_dds_type         ,//类型   //8种
    input               i_dds_type_vld     , 
    input    [15:0]     i_dds_frq          ,//频率   120/30=4M  //算5m  23bit -> 又因为只精确到100hz，所以5M对应50000-》16bit，
    input               i_dds_frq_vld      ,
    input    [11:0]     i_dds_amp          ,//幅值      //3000->12bit
    input               i_dds_amp_vld      ,
    input    [12:0]     i_dds_p2p          ,//峰峰值        //6000->13bit
    input               i_dds_p2p_vld      ,    
    input    [12:0]     i_dds_offset       ,//直流偏移  //6000->13bit
    input               i_dds_offset_vld   ,
    input    [11:0]     i_dds_phase        ,//相位   3600->12bit
    input               i_dds_phase_vld    ,  
    input    [9:0]      i_dds_duty         ,//占空比  //1000-》10bit
    input               i_dds_duty_vld     ,

    input    [13:0]     i_dds_data         ,
 
    output              o_run              ,
    output              o_run_vld          ,
    output   [26:0]     o_fword            ,
    output              o_fword_vld        ,
    output   [7 :0]     o_pword            ,
    output              o_pword_vld        ,
    output   [2:0]      o_mode             ,
    output              o_mode_vld         ,
    output   [9:0]      o_dds_duty         ,//占空比  //1000-》10bit
    output              o_dds_duty_vld     ,
    output   [13:0]     o_pay_dds_data     
);

/***************function**************/

/***************parameter*************/

/***************port******************/             

/***************mechine***************/

/***************reg*******************/
reg [13:0]     r_dds_offset ;
reg            ro_run        ;
reg            ro_run_vld    ;
reg [26:0]     ro_fword      ;
reg            ro_fword_vld  ;
reg [7 :0]     ro_pword      ;
reg            ro_pword_vld  ;
reg [2:0]      ro_mode       ;
reg            ro_mode_vld   ;
reg  [9:0]     ro_dds_duty    ;
reg            ro_dds_duty_vld;
reg [13:0]     ro_pay_dds_data;
reg [25:0]     ro_pay_dds_data_mul;
reg [25:0]     ro_pay_dds_data_div_mul;
reg            ri_dds_frq_vld;

reg    [11:0]  r_amp_rec;
/***************wire******************/
reg [42:0] r_shift_frq;

/***************assign****************/
assign  o_run       = ro_run       ;
assign  o_run_vld   = ro_run_vld   ;
assign  o_fword     = ro_fword     ;
assign  o_fword_vld = ro_fword_vld ;
assign  o_pword     = ro_pword ;
assign  o_pword_vld = ro_pword_vld ;
assign  o_mode      = ro_mode      ;
assign  o_mode_vld  = ro_mode_vld  ;
assign  o_pay_dds_data = ro_pay_dds_data[13:0]; 
assign  o_dds_duty     = ro_dds_duty    ;
assign  o_dds_duty_vld = ro_dds_duty_vld;


/***************component*************/

/***************always****************/
    



always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds_duty <= 'd1;
     else if(i_dds_duty_vld)
        ro_dds_duty <= i_dds_duty;
     else 
        ro_dds_duty <= ro_dds_duty;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds_duty_vld <= 'd0;
     else 
        ro_dds_duty_vld <= i_dds_duty_vld;
end


always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_run <= 'd1;
     else if(i_dds_run_vld)
        ro_run <= i_dds_run;
     else 
        ro_run <= ro_run;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_run_vld <= 'd0;
     else 
        ro_run_vld <= i_dds_run_vld;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        r_shift_frq <= 'd1;
     else if(i_dds_frq_vld )
        r_shift_frq <= i_dds_frq<<27;
     else 
        r_shift_frq <= r_shift_frq;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_fword <= 'd64;
     else if(ri_dds_frq_vld)
        ro_fword <= r_shift_frq/1000000;//16+14=30
     else 
        ro_fword <= ro_fword;
end


always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ri_dds_frq_vld <= 'd0;
     else 
        ri_dds_frq_vld <= i_dds_frq_vld;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_fword_vld <= 'd0;
     else 
        ro_fword_vld <= ri_dds_frq_vld;
end


always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_pword_vld <= 'd0; 
     else 
        ro_pword_vld <= i_dds_phase_vld;
end


always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_pword <= 'd0;
     else if(i_dds_phase_vld)
        // ro_pword <= i_dds_phase/3600<<8-1    rom深度256！！
        ro_pword <= (i_dds_phase<<4)/225;
     else 
        ro_pword <= ro_pword;
    
end
     
 
always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_mode_vld <= 'd0; 
    else 
        ro_mode_vld <= i_dds_type_vld;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)   
        ro_mode <= 'd0;
    else if(i_dds_type_vld)
        ro_mode <= i_dds_type;
    else 
        ro_mode <= 'd0;
end

 
always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        r_amp_rec <= 'd3000;
    else if(i_dds_amp_vld)
        r_amp_rec <= i_dds_amp;
    else if(i_dds_p2p_vld)
        r_amp_rec <= i_dds_p2p>>1;
    else 
        r_amp_rec <= r_amp_rec;
end
   
always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        r_dds_offset <= 'd0;
    else if(i_dds_offset_vld)   
        r_dds_offset <= (i_dds_offset/375)<<10;//i_dds_offset/6000*2^14
    else 
        r_dds_offset <= r_dds_offset;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_pay_dds_data_mul <= 'd0; 
    else 
        ro_pay_dds_data_mul <= i_dds_data*r_amp_rec;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_pay_dds_data_div_mul <= 'd0; 
    else 
        ro_pay_dds_data_div_mul <= ro_pay_dds_data_mul/3000;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_pay_dds_data <= 'd0;
    else 
        ro_pay_dds_data <= ro_pay_dds_data_div_mul + r_dds_offset;
end

// always@(posedge i_clk, posedge i_rst)
// begin
//     if(i_rst)
//     else if()
//     else 
// end

// always@(posedge i_clk, posedge i_rst)
// begin
//     if(i_rst)
//     else if()
//     else 
// end

// always@(posedge i_clk, posedge i_rst)
// begin
//     if(i_rst)
//     else if()
//     else 
// end
endmodule