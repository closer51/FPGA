`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/17 01:26:04
// Design Name: 
// Module Name: sample_data_gen
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


module sample_data_gen#(
        parameter   P_SEND_LEN = 1000
)(
    input           i_clk               ,
    input           i_rst               ,
 
    input           i_sam_vld           ,//启动触发  //此信号特殊，需要跨时钟域
    output          o_fifo_read         ,
    input   [2 :0]  i_sam_trig_model    ,//触发模式选择 
    input   [7 :0]  i_sam_trig_channel  ,//触发通道选择
    input   [7 :0]  i_sam_data          ,//被测信号输入
    
    output  [7 :0]  o_sam_data          ,
    output          o_sam_data_vld      ,
    output          o_sam_data_last 
);

/***************function**************/

/***************parameter*************/

/***************port******************/             

/***************mechine***************/

/***************reg*******************/
reg             ri_sam_vld          ;
reg             ro_fifo_read        ;
reg     [2 :0]  ri_sam_trig_model   ;
reg     [7 :0]  ri_sam_trig_channel ;   //通道寄存
reg     [7:0]   ri_sam_data     ;       //打拍
reg     [7:0]   ri_sam_data_1d  ;       //打拍
reg     [7:0]   ri_sam_data_2d  ;       //打拍
reg     [7:0]   ro_sam_data    ;
reg             ro_sam_data_vld;
reg             ro_sam_data_last;
reg     [7:0]   r_sam_trig_true_tab;    //真值表
 
reg             r_detect_vld;    
reg   [12:0]    r_dout_cnt;

reg     r_run;
reg     r_detect_vld_run;
reg     r_sam_vld_pos;
/***************wire******************/
wire            w_sam_vld_pos   ;

wire    [9:0]   w_sam_posedge   ;    //上升沿标志 
wire    [9:0]   w_sam_negedge   ;    //下降沿标志 
wire    [9:0]   w_sam_edge      ;    //双沿标志    

wire            w_detect_vld_0  ;
wire            w_detect_vld_1  ;
wire            w_detect_vld_2  ;
wire            w_detect_vld_3  ;
wire            w_detect_vld_4  ;
wire            w_detect_vld_5  ;
wire            w_detect_vld_6  ;
wire            w_detect_vld_7  ;
wire            w_detect_vld    ;

wire            w_detect_vld_pos    ;

/***************assign****************/
assign o_sam_data    = ro_sam_data    ;
assign o_sam_data_vld= ro_sam_data_vld;
assign o_sam_data_last = ro_sam_data_last;
assign w_sam_vld_pos = i_sam_vld & !ri_sam_vld;      //有效信号上升沿检测
assign o_fifo_read   = ro_fifo_read;
assign w_sam_posedge = ri_sam_data & ~ri_sam_data_1d;//上升沿检测(当前时刻为1，并且上一时刻为0) 
assign w_sam_negedge = ~ri_sam_data & ri_sam_data_1d;//下降沿检测(当前时刻为0，并且上一时刻为1)
assign w_sam_edge    = ri_sam_data ^ ri_sam_data_1d ;   //边沿检测(当前时刻和上一时刻数据点不同即可，所以用异或) 
assign w_detect_vld  = w_detect_vld_0&w_detect_vld_1&w_detect_vld_2&w_detect_vld_3&w_detect_vld_4&w_detect_vld_5&w_detect_vld_6&w_detect_vld_7;
assign w_detect_vld_pos = w_detect_vld & !r_detect_vld&r_run&!r_detect_vld_run;
/***************component*************/
one_channel_truth_table_detect truth_table_0(
    . i_clk               (i_clk                 ),
    . i_rst               (i_rst                 ),
    . i_truth_table_data  (r_sam_trig_true_tab[0]),//被测信号真值输入
    . i_channel_vld       (ri_sam_trig_channel[0]),
    . o_detect_vld        (w_detect_vld_0        )
);

one_channel_truth_table_detect truth_table_1(
    . i_clk               (i_clk                 ),
    . i_rst               (i_rst                 ),
    . i_truth_table_data  (r_sam_trig_true_tab[1]),//被测信号真值输入
    . i_channel_vld       (ri_sam_trig_channel[1]),
    . o_detect_vld        (w_detect_vld_1        )
);

one_channel_truth_table_detect truth_table_2(
    . i_clk               (i_clk                 ),
    . i_rst               (i_rst                 ),
    . i_truth_table_data  (r_sam_trig_true_tab[2]),//被测信号真值输入
    . i_channel_vld       (ri_sam_trig_channel[2]),
    . o_detect_vld        (w_detect_vld_2        )
);
one_channel_truth_table_detect truth_table_3(
    . i_clk               (i_clk                 ),
    . i_rst               (i_rst                 ),
    . i_truth_table_data  (r_sam_trig_true_tab[3]),//被测信号真值输入
    . i_channel_vld       (ri_sam_trig_channel[3]),
    . o_detect_vld        (w_detect_vld_3        )
);
one_channel_truth_table_detect truth_table_4(
    . i_clk               (i_clk                 ),
    . i_rst               (i_rst                 ),
    . i_truth_table_data  (r_sam_trig_true_tab[4]),//被测信号真值输入
    . i_channel_vld       (ri_sam_trig_channel[4]),
    . o_detect_vld        (w_detect_vld_4        )
);
one_channel_truth_table_detect truth_table_5(
    . i_clk               (i_clk                 ),
    . i_rst               (i_rst                 ),
    . i_truth_table_data  (r_sam_trig_true_tab[5]),//被测信号真值输入
    . i_channel_vld       (ri_sam_trig_channel[5]),
    . o_detect_vld        (w_detect_vld_5        )
);
one_channel_truth_table_detect truth_table_6(
    . i_clk               (i_clk                 ),
    . i_rst               (i_rst                 ),
    . i_truth_table_data  (r_sam_trig_true_tab[6]),//被测信号真值输入
    . i_channel_vld       (ri_sam_trig_channel[6]),
    . o_detect_vld        (w_detect_vld_6        )
);
one_channel_truth_table_detect truth_table_7(
    . i_clk               (i_clk                 ),
    . i_rst               (i_rst                 ),
    . i_truth_table_data  (r_sam_trig_true_tab[7]),//被测信号真值输入
    . i_channel_vld       (ri_sam_trig_channel[7]),
    . o_detect_vld        (w_detect_vld_7        )
);
/***************always****************/
 
always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        r_sam_vld_pos <= 'd0; 
    else 
        r_sam_vld_pos <= w_sam_vld_pos;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        r_run <= 'd0;
    else if(r_dout_cnt == P_SEND_LEN -1)
        r_run <= 'd0;        
    else if(r_sam_vld_pos)
        r_run <= 'd1;
    else 
        r_run <= r_run;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        r_detect_vld_run <= 'd0;   
    else if(r_dout_cnt == P_SEND_LEN -1)
        r_detect_vld_run <= 'd0;    
    else if(w_detect_vld_pos)
        r_detect_vld_run <= 'd1;
    else 
        r_detect_vld_run <= r_detect_vld_run;
end

always@(posedge i_clk, posedge i_rst)//打拍
begin
    if(i_rst)begin 
        ri_sam_data    <= 'd0;
        ri_sam_data_1d <= 'd0;
        ri_sam_data_2d <= 'd0;
        ri_sam_vld     <= 'd0;
    end else begin
        ri_sam_data    <= i_sam_data ;
        ri_sam_data_1d <= ri_sam_data;
        ri_sam_data_2d <= ri_sam_data_1d;
        ri_sam_vld     <=  i_sam_vld;
    end
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_fifo_read <= 'd0;
    else if(w_sam_vld_pos)
        ro_fifo_read <= 'd1;
    else 
        ro_fifo_read <= 'd0;
end
 

always@(posedge i_clk, posedge i_rst) 
begin
    if(i_rst)
        ri_sam_trig_model <= 'd2;
    else if(w_sam_vld_pos)
        ri_sam_trig_model <= i_sam_trig_model;
    else 
        ri_sam_trig_model <= ri_sam_trig_model;
end

always@(posedge i_clk, posedge i_rst) 
begin
    if(i_rst)
        ri_sam_trig_channel <= 8'b1111_1111;
    else if(w_sam_vld_pos)
        ri_sam_trig_channel <= i_sam_trig_channel;
    else 
        ri_sam_trig_channel <= ri_sam_trig_channel;
end

// 使用generate例化8个触发器逻辑（i从0到7）
generate
    genvar i;  // 循环计数
    for (i = 0; i < 8; i = i + 1) begin : trig_true_tab_gen  // 块名用于区分不同实例
        always @(*) begin
                case (ri_sam_trig_model)
                    3'd0: r_sam_trig_true_tab[i] = ~ri_sam_data[i];  // 低电平触发
                    3'd1: r_sam_trig_true_tab[i] = ri_sam_data[i];   // 高电平触发
                    3'd2: r_sam_trig_true_tab[i] = w_sam_posedge[i];    // 上升沿触发
                    3'd3: r_sam_trig_true_tab[i] = w_sam_negedge[i];    // 下降沿触发
                    3'd4: r_sam_trig_true_tab[i] = w_sam_edge[i];       // 边沿触发
                    3'd5: r_sam_trig_true_tab[i] = 1'b1;                // 立即触发
                    default: r_sam_trig_true_tab[i] = 1'b1;             // 立即触发
                endcase
        end
    end
endgenerate



always@(posedge i_clk, posedge i_rst)//对满足触发条件情况加上采样时钟限制
begin
    if(i_rst)
        r_detect_vld <= 'd0;
    else 
        r_detect_vld <= w_detect_vld;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_sam_data <= 'd0;
    else 
        ro_sam_data <= ri_sam_data_1d;  
end


always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_sam_data_vld <= 'd0;
    else if(r_dout_cnt == P_SEND_LEN -1)
        ro_sam_data_vld <= 'd0;
    else if(w_detect_vld_pos) 
        ro_sam_data_vld <= 'd1;
    else 
        ro_sam_data_vld <= ro_sam_data_vld;
end
 
always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        r_dout_cnt <= 'd0;
    else if(r_dout_cnt == P_SEND_LEN-1)
        r_dout_cnt <= 'd0;
    else if(ro_sam_data_vld)
        r_dout_cnt <= r_dout_cnt + 1;
    else 
        r_dout_cnt <= r_dout_cnt ;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_sam_data_last <= 'd0;
    else if(r_dout_cnt==P_SEND_LEN-2)
        ro_sam_data_last <= 'd1;
    else 
        ro_sam_data_last <= 'd0;
end

// always@(posedge i_clk, posedge i_rst)
// begin
//     if(i_rst)
//     else if()
//     else 
// end
endmodule
