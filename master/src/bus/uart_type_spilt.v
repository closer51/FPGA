`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/17 14:07:16
// Design Name: 
// Module Name: uart_type_spilt
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


module uart_type_spilt(
    input                i_clk                   ,
    input                i_rst                   ,
     
    input   [7 :0]       i_udma_data             ,
    input                i_udma_vld              ,
     
    output               o_logic_pulse           , 
    output  [3 :0]       o_logic_frq_sel         ,
    output  [2 :0]       o_logic_trig_model      ,
    output  [7 :0]       o_logic_trig_channel    ,
    output               o_logic_send_model      ,

    output               o_dds1_run          ,//开关
    output               o_dds1_run_vld      ,
    output    [2:0]      o_dds1_type         ,//类型   //8种
    output               o_dds1_type_vld     , 
    output    [23:0]     o_dds1_frq          ,//频率   120/30=4M  //算5m  23bit -> 又因为只精确到100hz，所以5M对应50000-》16bit，
    output               o_dds1_frq_vld      ,
    output    [11:0]     o_dds1_amp          ,//幅值      //3000->12bit
    output               o_dds1_amp_vld      ,
    output    [12:0]     o_dds1_p2p          ,//峰峰值        //6000->13bit
    output               o_dds1_p2p_vld      ,    
    output    [12:0]     o_dds1_offset       ,//直流偏移  //6000->13bit
    output               o_dds1_offset_vld   ,
    output    [11:0]     o_dds1_phase        ,//相位   3600->12bit
    output               o_dds1_phase_vld    ,  
    output    [9:0]      o_dds1_duty         ,//占空比  //1000-》10bit
    output               o_dds1_duty_vld     ,

    output               o_dds2_run          ,
    output               o_dds2_run_vld      ,
    output    [2:0]      o_dds2_type         ,
    output               o_dds2_type_vld     ,
    output    [23:0]     o_dds2_frq          ,
    output               o_dds2_frq_vld      ,
    output    [11:0]     o_dds2_amp          ,
    output               o_dds2_amp_vld      ,
    output    [12:0]     o_dds2_p2p          ,
    output               o_dds2_p2p_vld      ,
    output    [12:0]     o_dds2_offset       ,
    output               o_dds2_offset_vld   ,
    output    [11:0]     o_dds2_phase        ,
    output               o_dds2_phase_vld    ,
    output    [9:0]      o_dds2_duty         ,
    output               o_dds2_duty_vld     
);

/***************function**************/

/***************parameter*************/

/***************port******************/             

/***************mechine***************/

/***************reg*******************/
reg [7 :0]  ri_udma_data         ;
reg         ri_udma_vld          ;

reg         ro_logic_pulse       ;
reg [3 :0]  ro_logic_frq_sel     ;
reg [2 :0]  ro_logic_trig_model  ;
reg [7 :0]  ro_logic_trig_channel;
reg         ro_logic_send_model  ;

reg            ro_dds1_run        ;
reg            ro_dds1_run_vld    ;
reg [2:0]      ro_dds1_type       ;
reg            ro_dds1_type_vld   ;
reg [23:0]     ro_dds1_frq        ;
reg            ro_dds1_frq_vld    ;
reg [11:0]     ro_dds1_amp        ;
reg            ro_dds1_amp_vld    ;
reg [12:0]     ro_dds1_p2p        ;
reg            ro_dds1_p2p_vld    ;
reg [12:0]     ro_dds1_offset     ;
reg            ro_dds1_offset_vld ;
reg [11:0]     ro_dds1_phase      ;
reg            ro_dds1_phase_vld  ;
reg [9:0]      ro_dds1_duty       ;
reg            ro_dds1_duty_vld   ;

reg            ro_dds2_run        ;
reg            ro_dds2_run_vld    ;
reg  [2:0]     ro_dds2_type       ;
reg            ro_dds2_type_vld   ;
reg  [23:0]    ro_dds2_frq        ;
reg            ro_dds2_frq_vld    ;
reg  [11:0]    ro_dds2_amp        ;
reg            ro_dds2_amp_vld    ;
reg  [12:0]    ro_dds2_p2p        ;
reg            ro_dds2_p2p_vld    ;
reg  [12:0]    ro_dds2_offset     ;
reg            ro_dds2_offset_vld ;
reg  [11:0]    ro_dds2_phase      ;
reg            ro_dds2_phase_vld  ;
reg  [9:0]     ro_dds2_duty       ;
reg            ro_dds2_duty_vld   ;
 


reg [15:0]  r_cnt                ;
reg [7:0]   r_uart_kind          ;
/***************wire******************/

/***************assign****************/
assign  o_logic_pulse        = ro_logic_pulse       ;
assign  o_logic_frq_sel      = ro_logic_frq_sel     ;
assign  o_logic_trig_model   = ro_logic_trig_model  ;
assign  o_logic_trig_channel = ro_logic_trig_channel;
assign  o_logic_send_model   = ro_logic_send_model  ;

assign  o_dds1_run           = ro_dds1_run          ;
assign  o_dds1_run_vld       = ro_dds1_run_vld      ;
assign  o_dds1_type          = ro_dds1_type         ;
assign  o_dds1_type_vld      = ro_dds1_type_vld     ;
assign  o_dds1_frq           = ro_dds1_frq          ;
assign  o_dds1_frq_vld       = ro_dds1_frq_vld      ;
assign  o_dds1_amp           = ro_dds1_amp          ;
assign  o_dds1_amp_vld       = ro_dds1_amp_vld      ;
assign  o_dds1_p2p           = ro_dds1_p2p          ;
assign  o_dds1_p2p_vld       = ro_dds1_p2p_vld      ;
assign  o_dds1_offset        = ro_dds1_offset       ;
assign  o_dds1_offset_vld    = ro_dds1_offset_vld   ;
assign  o_dds1_phase         = ro_dds1_phase        ;
assign  o_dds1_phase_vld     = ro_dds1_phase_vld    ;
assign  o_dds1_duty          = ro_dds1_duty         ;
assign  o_dds1_duty_vld      = ro_dds1_duty_vld     ;

assign  o_dds2_run           = ro_dds2_run          ;
assign  o_dds2_run_vld       = ro_dds2_run_vld      ;
assign  o_dds2_type          = ro_dds2_type         ;
assign  o_dds2_type_vld      = ro_dds2_type_vld     ;
assign  o_dds2_frq           = ro_dds2_frq          ;
assign  o_dds2_frq_vld       = ro_dds2_frq_vld      ;
assign  o_dds2_amp           = ro_dds2_amp          ;
assign  o_dds2_amp_vld       = ro_dds2_amp_vld      ;
assign  o_dds2_p2p           = ro_dds2_p2p          ;
assign  o_dds2_p2p_vld       = ro_dds2_p2p_vld      ;
assign  o_dds2_offset        = ro_dds2_offset       ;
assign  o_dds2_offset_vld    = ro_dds2_offset_vld   ;
assign  o_dds2_phase         = ro_dds2_phase        ;
assign  o_dds2_phase_vld     = ro_dds2_phase_vld    ;
assign  o_dds2_duty          = ro_dds2_duty         ;
assign  o_dds2_duty_vld      = ro_dds2_duty_vld     ;
 

/***************component*************/

/***************always****************/



always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)begin
        ro_dds1_p2p     <= 'd0;
        ro_dds1_p2p_vld <= 'd0;   
    end else begin
        ro_dds1_p2p     <= ro_dds1_p2p    ;
        ro_dds1_p2p_vld <= ro_dds1_p2p_vld;  
    end
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)begin
        ro_dds2_p2p     <= 'd0;
        ro_dds2_p2p_vld <= 'd0;   
    end else begin
        ro_dds2_p2p     <= ro_dds2_p2p    ;
        ro_dds2_p2p_vld <= ro_dds2_p2p_vld;  
    end
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)begin
        ri_udma_data <= 'd0;
        ri_udma_vld  <= 'd0;   
    end else begin
        ri_udma_data <= i_udma_data;
        ri_udma_vld  <= i_udma_vld ;  
    end
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_cnt <= 'd0;
    else if(ri_udma_vld)
        r_cnt <= r_cnt + 1;
    else 
        r_cnt <= 'd0;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        r_uart_kind <= 'd0;
    else if(ri_udma_vld && r_cnt==2)
        r_uart_kind <= ri_udma_data;
    else 
        r_uart_kind <= r_uart_kind;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_logic_trig_channel <= 'd0;
    else if(ri_udma_vld && r_cnt==6&&r_uart_kind==0)
        ro_logic_trig_channel <= ri_udma_data;
    else 
        ro_logic_trig_channel <= ro_logic_trig_channel;
end   

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_logic_trig_model <= 'd0;
    else if(ri_udma_vld && r_cnt==7&&r_uart_kind==0)
        ro_logic_trig_model <= ri_udma_data[6:4];
    else 
        ro_logic_trig_model <= ro_logic_trig_model;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_logic_frq_sel <= 'd0;
    else if(ri_udma_vld && r_cnt==7&&r_uart_kind==0)
        ro_logic_frq_sel <= ri_udma_data[3:0];
    else 
        ro_logic_frq_sel <= ro_logic_frq_sel;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_logic_send_model <= 'd0;
    else if(ri_udma_vld && r_cnt==8&&r_uart_kind==0)
        ro_logic_send_model <= ri_udma_data[0];
    else 
        ro_logic_send_model <= ro_logic_send_model;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_logic_pulse <= 'd0;
    else if(ro_logic_pulse)   
        ro_logic_pulse <= 'd0; 
    else if(ri_udma_vld && r_cnt==8&&r_uart_kind == 0)//报文种类正确才触发
        ro_logic_pulse <= ri_udma_data[1];
    else 
        ro_logic_pulse <= ro_logic_pulse;
end
    

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)begin
        ro_dds1_run <= 'd0;
        ro_dds1_run_vld <= 'd0;
    end else if(ri_udma_vld && r_cnt==6&&r_uart_kind == 1)begin
        ro_dds1_run <= ri_udma_data[3];
        ro_dds1_run_vld <= 'd1;
    end else begin
        ro_dds1_run <= ro_dds1_run;
        ro_dds1_run_vld <= 'd0;
    end
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)begin
        ro_dds1_type     <= 'd0;
        ro_dds1_type_vld <= 'd0;
    end else if(ri_udma_vld && r_cnt==6&&r_uart_kind == 1)begin
        ro_dds1_type     <= ri_udma_data[2:0];
        ro_dds1_type_vld <= 'd1;
    end else begin
        ro_dds1_type     <= ro_dds1_type;
        ro_dds1_type_vld <= 'd0;
    end
end
     

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds1_frq <= 'd0; 
    else if(ri_udma_vld && (r_cnt==7 || r_cnt == 8 || r_cnt == 9)&&r_uart_kind == 1)
        ro_dds1_frq <= {ro_dds1_frq[15:0],ri_udma_data}; 
    else 
        ro_dds1_frq <= ro_dds1_frq;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds1_frq_vld <= 'd0;
    else if(ri_udma_vld && r_cnt==9&&r_uart_kind == 1)
        ro_dds1_frq_vld <= 'd1;
    else 
        ro_dds1_frq_vld <= 'd0;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds1_amp <= 'd0;
    else if(ri_udma_vld && r_cnt==10&&r_uart_kind == 1)
        ro_dds1_amp <= ri_udma_data;
    else if(ri_udma_vld && r_cnt==11&&r_uart_kind == 1)
        ro_dds1_amp <= {ro_dds1_amp,ri_udma_data}; 
    else 
        ro_dds1_amp <= ro_dds1_amp;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds1_amp_vld <= 'd0;
    else if(ri_udma_vld && r_cnt==11&&r_uart_kind == 1)
        ro_dds1_amp_vld <= 'd1;
    else 
        ro_dds1_amp_vld <= 'd0;
end


always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds1_offset <= 'd0;
    else if(ri_udma_vld && r_cnt==12&&r_uart_kind == 1)
        ro_dds1_offset <= ri_udma_data;
    else if(ri_udma_vld && r_cnt==13&&r_uart_kind == 1)
        ro_dds1_offset <= {ro_dds1_offset,ri_udma_data}; 
    else 
        ro_dds1_offset <= ro_dds1_offset;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds1_offset_vld <= 'd0;
    else if(ri_udma_vld && r_cnt==13&&r_uart_kind == 1)
        ro_dds1_offset_vld <= 'd1;
    else 
        ro_dds1_offset_vld <= 'd0;
end

     
 
always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds1_phase <= 'd0;
    else if(ri_udma_vld && r_cnt==14&&r_uart_kind == 1)
        ro_dds1_phase <= ri_udma_data;
    else if(ri_udma_vld && r_cnt==15&&r_uart_kind == 1)
        ro_dds1_phase <= {ro_dds1_phase,ri_udma_data}; 
    else 
        ro_dds1_phase <= ro_dds1_phase;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds1_phase_vld <= 'd0;
    else if(ri_udma_vld && r_cnt==15&&r_uart_kind == 1)
        ro_dds1_phase_vld <= 'd1;
    else 
        ro_dds1_phase_vld <= 'd0;
end
    

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds1_duty <= 'd0;
    else if(ri_udma_vld && r_cnt==16&&r_uart_kind == 1)
        ro_dds1_duty <= ri_udma_data;
    else if(ri_udma_vld && r_cnt==17&&r_uart_kind == 1)
        ro_dds1_duty <= {ro_dds1_duty,ri_udma_data}; 
    else 
        ro_dds1_duty <= ro_dds1_duty;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds1_duty_vld <= 'd0;
    else if(ri_udma_vld && r_cnt==17&&r_uart_kind == 1)
        ro_dds1_duty_vld <= 'd1;
    else 
        ro_dds1_duty_vld <= 'd0;
end


always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)begin
        ro_dds2_run <= 'd0;
        ro_dds2_run_vld <= 'd0;
    end else if(ri_udma_vld && r_cnt==18&&r_uart_kind == 1)begin
        ro_dds2_run <= ri_udma_data[3];
        ro_dds2_run_vld <= 'd1;
    end else begin
        ro_dds2_run <= ro_dds2_run;
        ro_dds2_run_vld <= 'd0;
    end
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)begin
        ro_dds2_type     <= 'd0;
        ro_dds2_type_vld <= 'd0;
    end else if(ri_udma_vld && r_cnt==18&&r_uart_kind == 1)begin
        ro_dds2_type     <= ri_udma_data[2:0];
        ro_dds2_type_vld <= 'd1;
    end else begin
        ro_dds2_type     <= ro_dds2_type;
        ro_dds2_type_vld <= 'd0;
    end
end
     

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds2_frq <= 'd0; 
    else if(ri_udma_vld && (r_cnt==19||r_cnt==20||r_cnt==21)&&r_uart_kind == 1)
        ro_dds2_frq <= {ro_dds2_frq[15:0],ri_udma_data}; 
    else 
        ro_dds2_frq <= ro_dds2_frq;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds2_frq_vld <= 'd0;
    else if(ri_udma_vld && r_cnt==21&&r_uart_kind == 1)
        ro_dds2_frq_vld <= 'd1;
    else 
        ro_dds2_frq_vld <= 'd0;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds2_amp <= 'd0;
    else if(ri_udma_vld && r_cnt==22&&r_uart_kind == 1)
        ro_dds2_amp <= ri_udma_data;
    else if(ri_udma_vld && r_cnt==23&&r_uart_kind == 1)
        ro_dds2_amp <= {ro_dds2_amp,ri_udma_data}; 
    else 
        ro_dds2_amp <= ro_dds2_amp;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds2_amp_vld <= 'd0;
    else if(ri_udma_vld && r_cnt==23&&r_uart_kind == 1)
        ro_dds2_amp_vld <= 'd1;
    else 
        ro_dds2_amp_vld <= 'd0;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds2_offset <= 'd0;
    else if(ri_udma_vld && r_cnt==24&&r_uart_kind == 1)
        ro_dds2_offset <= ri_udma_data;
    else if(ri_udma_vld && r_cnt==25&&r_uart_kind == 1)
        ro_dds2_offset <= {ro_dds2_offset,ri_udma_data}; 
    else 
        ro_dds2_offset <= ro_dds2_offset;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds2_offset_vld <= 'd0;
    else if(ri_udma_vld && r_cnt==25&&r_uart_kind == 1)
        ro_dds2_offset_vld <= 'd1;
    else 
        ro_dds2_offset_vld <= 'd0;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds2_phase <= 'd0;
    else if(ri_udma_vld && r_cnt==26&&r_uart_kind == 1)
        ro_dds2_phase <= ri_udma_data;
    else if(ri_udma_vld && r_cnt==27&&r_uart_kind == 1)
        ro_dds2_phase <= {ro_dds2_phase,ri_udma_data}; 
    else 
        ro_dds2_phase <= ro_dds2_phase;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds2_phase_vld <= 'd0;
    else if(ri_udma_vld && r_cnt==27&&r_uart_kind == 1)
        ro_dds2_phase_vld <= 'd1;
    else 
        ro_dds2_phase_vld <= 'd0;
end
    

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds2_duty <= 'd0;
    else if(ri_udma_vld && r_cnt==28&&r_uart_kind == 1)
        ro_dds2_duty <= ri_udma_data;
    else if(ri_udma_vld && r_cnt==29&&r_uart_kind == 1)
        ro_dds2_duty <= {ro_dds2_duty,ri_udma_data}; 
    else 
        ro_dds2_duty <= ro_dds2_duty;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_dds2_duty_vld <= 'd0;
    else if(ri_udma_vld && r_cnt==29&&r_uart_kind == 1)
        ro_dds2_duty_vld <= 'd1;
    else 
        ro_dds2_duty_vld <= 'd0;
end

 
// always@(posedge i_clk, posedge i_rst)
// begin
//     if(i_rst)
//     else if()
//     else 
// end

// always@(posedge i_clk, posedge i_rst)
// begin
//     if(i_rst)begin
//     end else if()begin
//     end else begin
//     end
// end


// always@(posedge i_clk, posedge i_rst)
// begin
//     if(i_rst)
//     else if()
//     else 
// end



endmodule
