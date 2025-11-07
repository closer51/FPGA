`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/14 21:23:13
// Design Name: 
// Module Name: scope_top
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

// Description: 总计 1008
module scope_top(
    input               i_clk                   ,
    input               i_clk_180p              ,
    input               i_clk_100MHz            ,
    input               i_rst                   ,
    input   [11:0]      i_adc_digit             ,
    output              o_adc_clk               ,

    input   [1:0]       i_trigger_coupling      ,//0 dc  1 ac  2 hf_reject  3 lf_reject  //触发耦合
    input               i_trigger_coupling_vld        ,
    input   [1:0]       i_trigger_mode          ,//0 上升沿   1 下降沿 
    input               i_trigger_mode_vld      ,

    output  [7 :0]      o_show_ad_data          ,//做数据截尾，保留高8位
    output              o_show_ad_data_last     ,
    output              o_show_ad_data_vld  
);
localparam LP_SEND_DATA  = 1000;
localparam LP_SEND_PARAM = 8;
localparam LP_SEND_LEN = LP_SEND_DATA + LP_SEND_PARAM;
reg     [15:0]           r_test_cnt;
reg     [15:0]           r_test1000_cnt;
reg     [15:0]           r_cnt;

reg     [31:0]           r_user_freq    ;
reg     [11:0]    r_user_max_val ;
reg     [11:0]    r_user_min_val ;
reg     [7 :0]           ro_show_ad_data     ;
reg                      ro_show_ad_data_last;
reg                      ro_show_ad_data_vld ;

wire    signed [11:0]    w_user_adc_data;
wire    [31:0]           w_user_freq    ;
wire    [11:0]    w_user_max_val ;
wire    [11:0]    w_user_min_val ;
wire                     w_measure_vld  ;
wire    [11:0]           w_show_ad_data     ;
wire                     w_show_ad_data_last;
wire                     w_show_ad_data_vld ;

assign o_show_ad_data      = ro_show_ad_data      ;
assign o_show_ad_data_last = ro_show_ad_data_last ;
assign o_show_ad_data_vld  = ro_show_ad_data_vld  ;

adc_drive adc_drive_u0(
    .  i_clk              (i_clk           ) ,
    .  i_rst              (i_rst           ) ,
    .  i_clk_180p         (i_clk_180p      ) ,
    .  o_user_adc_data    (w_user_adc_data ) ,
    .  i_adc_digit        (i_adc_digit     ) ,
    .  o_adc_clk          (o_adc_clk       ) 
);

measure_top measure_top_u0(
    .  i_clk             (i_clk            )  ,
    .  i_clk_100MHz      (i_clk_100MHz     )  ,
    .  i_rst             (i_rst            )  ,
    .  i_user_adc_data   (w_user_adc_data  )  ,
    .  o_user_freq       (w_user_freq   )  ,
    .  o_user_max_val    (w_user_max_val)  ,
    .  o_user_min_val    (w_user_min_val)  ,
    .  o_measure_vld     (w_measure_vld )  
);

scope_data_gen #(
    .P_SEND_LEN(LP_SEND_DATA)
)

scope_data_gen_u0                            //产生1000个数据
(
    .    i_clk                (i_clk                     )   ,
    .    i_rst                (i_rst                     )   ,
    .    i_adc_digit          (w_user_adc_data           )   ,
    .    i_trigger_coupling   (i_trigger_coupling        )   ,//0 dc  1 ac  2 hf_reject  3 lf_reject  //触发耦合
    .    i_trigger_coupling_vld(i_trigger_coupling_vld   )   ,
    .    i_trigger_mode       (i_trigger_mode            )   ,//0 上升沿   1 下降沿   
    .    i_trigger_mode_vld   (i_trigger_mode_vld        )   ,
    .    o_show_ad_data       (w_show_ad_data            )   ,
    .    o_show_ad_data_last  (w_show_ad_data_last       )   ,
    .    o_show_ad_data_vld   (w_show_ad_data_vld        )
);



always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)begin 
        r_user_freq    <= 'd0;
        r_user_max_val <= 'd0;
        r_user_min_val <= 'd0;
    end else if(w_measure_vld)begin
        r_user_freq    <= w_user_freq   ;
        r_user_max_val <= w_user_max_val + 12'd2048;
        r_user_min_val <= w_user_min_val + 12'd2048; 
    end else begin
        r_user_freq    <= r_user_freq   ;
        r_user_max_val <= r_user_max_val;
        r_user_min_val <= r_user_min_val;
    end
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)begin  
        r_cnt <= 'd0;
    end else if(r_cnt == LP_SEND_LEN)begin 
        r_cnt <= 'd0;
    end else if(w_show_ad_data_vld||r_cnt )begin 
        r_cnt <= r_cnt + 1;
    end else begin 
        r_cnt <= 'd0;
    end
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)begin  
        r_test_cnt <= 'd0; 
    end else if(ro_show_ad_data_vld)begin 
        r_test_cnt <= r_test_cnt + 1;
    end else begin 
        r_test_cnt <= 'd0;
    end
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)begin  
        r_test1000_cnt <= 'd0; 
    end else if(w_show_ad_data_vld)begin 
        r_test1000_cnt <= r_test1000_cnt + 1;
    end else begin 
        r_test1000_cnt <= 'd0;
    end
end


always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)begin  
        ro_show_ad_data <= 'd0;
    end else if(w_show_ad_data_vld&&r_cnt <= LP_SEND_DATA-1)begin //999
        ro_show_ad_data <= w_show_ad_data[11:4];                  
    end else begin 
        case(r_cnt)
            // 1000: ro_show_ad_data <= r_user_freq[31:24];              //  无符号数
            // 1001: ro_show_ad_data <= r_user_freq[23:16];              //  无符号数
            // 1002: ro_show_ad_data <= r_user_freq[15:8];               //  无符号数 
            // 1003: ro_show_ad_data <= r_user_freq[7 :0];               //  无符号数 
            // 1004: ro_show_ad_data <= {4'b0000,r_user_max_val[11:8]} ; //  无符号数
            // 1005: ro_show_ad_data <= r_user_max_val[7:0]            ; //  无符号数
            // 1006: ro_show_ad_data <= {4'b0000,r_user_min_val[11:8]} ; //  无符号数
            // 1007: ro_show_ad_data <= r_user_min_val[7:0]            ; //  无符号数
            1000: ro_show_ad_data <=  1;
            1001: ro_show_ad_data <=  2;
            1002: ro_show_ad_data <=  3;
            1003: ro_show_ad_data <=  4;
            1004: ro_show_ad_data <=  5;
            1005: ro_show_ad_data <=  6;
            1006: ro_show_ad_data <=  7;
            1007: ro_show_ad_data <=  8;//LP_SEND_LEN-1


            default:ro_show_ad_data <= 'd0;
        endcase
    end
end
     
always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)begin  
        ro_show_ad_data_vld <= 'd0;
    end else if(r_cnt == LP_SEND_LEN)begin 
        ro_show_ad_data_vld <= 'd0;
    end else if(w_show_ad_data_vld)begin 
        ro_show_ad_data_vld <= 'd1;
    end else begin 
        ro_show_ad_data_vld <= ro_show_ad_data_vld;
    end 
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)begin  
        ro_show_ad_data_last <= 'd0;
    end else if(r_cnt == LP_SEND_LEN-1)begin 
        ro_show_ad_data_last <= 'd1;
    end else begin 
        ro_show_ad_data_last <= 'd0;
    end
end

endmodule
