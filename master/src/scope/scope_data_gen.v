`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/26 22:54:35
// Design Name: 
// Module Name: scope_data_gen
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


module scope_data_gen#(
        parameter   P_SEND_LEN = 1000
)(
    input                       i_clk                   ,
    input                       i_rst                   ,

    input  signed [11:0]        i_adc_digit             ,

    input   [1:0]               i_trigger_coupling      ,//0 dc  1 ac  2 hf_reject  3 lf_reject  //触发耦合
    input                       i_trigger_coupling_vld        ,
    input   [1:0]               i_trigger_mode          ,//0 下降沿   1 上升沿   
    input                       i_trigger_mode_vld      ,
    
    output  signed[11:0]        o_show_ad_data          ,
    output                      o_show_ad_data_last     ,
    output                      o_show_ad_data_vld  
);

(*mark_debug = "true"*)reg   signed  [11:0]            ro_show_ad_data      ;
reg                             ro_show_ad_data_last ;
(*mark_debug = "true"*)reg                             ro_show_ad_data_vld  ;

reg     [1:0]                   ri_trigger_mode ;
reg  signed   [11:0]            ri_adc_digit    ;
reg  signed   [11:0]            ri_adc_digit_1d    ;
reg                             ri_trigger_mode_vld;

reg  signed                     r_sam_trig_true_tab;    //真值表
reg   [12:0]                    r_dout_cnt;
reg                             r_run;


wire    signed                  w_sam_posedge     ;    //上升沿标志 
wire    signed                  w_sam_negedge     ;    //下降沿标志 
wire                            w_detect_vld      ;
wire                            w_1s_pulse;
wire                            w_export_vld        ; 

assign o_show_ad_data      = ro_show_ad_data     ;
assign o_show_ad_data_last = ro_show_ad_data_last;
assign o_show_ad_data_vld  = ro_show_ad_data_vld ;

assign w_sam_posedge = ~ri_adc_digit[11] & ri_adc_digit_1d[11];//  对于有符号数检测
assign w_sam_negedge = ri_adc_digit[11] & ~ri_adc_digit_1d[11];// 
assign  w_export_vld = r_run&&w_detect_vld&&!ro_show_ad_data_vld;



one_channel_truth_table_detect truth_table_0(
    . i_clk               (i_clk                 ),
    . i_rst               (i_rst                 ),
    . i_truth_table_data  (r_sam_trig_true_tab),//被测信号真值输入
    . i_channel_vld       (1                     ),
    . o_detect_vld        (w_detect_vld          )
);

timer_1s timer_1s_u0(
    . i_clk       (i_clk        ),   
    . i_rst       (i_rst        ),
    . o_1s_pulse  (w_1s_pulse   )
);

always@(posedge i_clk, posedge i_rst) 
begin
    if(i_rst)
        ri_adc_digit <= 'd0; 
    else 
        ri_adc_digit <= i_adc_digit;
end

always@(posedge i_clk, posedge i_rst) 
begin
    if(i_rst)
        ri_adc_digit_1d <= 'd0; 
    else 
        ri_adc_digit_1d <= ri_adc_digit;
end

always@(posedge i_clk, posedge i_rst) 
begin
    if(i_rst)
        ri_trigger_mode_vld <= 'd0; 
    else 
        ri_trigger_mode_vld <= i_trigger_mode_vld;
end




always@(posedge i_clk, posedge i_rst) 
begin
    if(i_rst)
        ri_trigger_mode <= 'd1;// 上升沿触发
    else if(i_trigger_mode_vld&&!ri_trigger_mode_vld)
        ri_trigger_mode <= i_trigger_mode;
    else 
        ri_trigger_mode <= ri_trigger_mode;
end

always@(posedge i_clk, posedge i_rst) 
begin
    if(i_rst)begin
        r_sam_trig_true_tab <= 'd0;
    end else begin
        case (ri_trigger_mode)
            3'd0: r_sam_trig_true_tab  = w_sam_negedge ;    // 下降沿触发 
            3'd1: r_sam_trig_true_tab  = w_sam_posedge ;    // 上升沿触发
            default: r_sam_trig_true_tab  = 1'b1;             // 默认实时触发
        endcase
    end

end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        r_dout_cnt <= 'd0;
    else if(r_dout_cnt == P_SEND_LEN)
        r_dout_cnt <= 'd0;
    else if(w_export_vld||r_dout_cnt)
        r_dout_cnt <= r_dout_cnt + 1;
    else 
        r_dout_cnt <= r_dout_cnt ;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        r_run <= 'd0;
    else if(r_dout_cnt == P_SEND_LEN)
        r_run <= 'd0;
    else if(w_1s_pulse)
        r_run <= 'd1;
    else 
        r_run <= r_run ;
end


always@(posedge i_clk, posedge i_rst) 
begin
    if(i_rst)
        ro_show_ad_data_last <= 'd0;    
    else if(r_dout_cnt == P_SEND_LEN-1)
        ro_show_ad_data_last <= 'd1;
    else 
        ro_show_ad_data_last <= 'd0;
end

always@(posedge i_clk, posedge i_rst) 
begin
    if(i_rst)
        ro_show_ad_data_vld <= 'd0; 
    else if(r_dout_cnt == P_SEND_LEN)
        ro_show_ad_data_vld <= 'd0;    
    else if(w_export_vld)
        ro_show_ad_data_vld <= 'd1;
    else 
        ro_show_ad_data_vld <= ro_show_ad_data_vld;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_show_ad_data <= 'd0; 
    else  
        ro_show_ad_data <= ri_adc_digit_1d; 
end
endmodule
