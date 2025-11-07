`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/25 12:42:19
// Design Name: 
// Module Name: Updata_Ctrl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:  ID(1) + cmd(1) + addr4(1) + addr3(1) + addr2(1) + addr1(1) + plyload(1024);
// cmd:
// H4bit : 0-更新完成 1-开始更新
// L4bit : 0-普通写   1-先擦除4KB扇区再写 2-回复
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Updata_Ctrl(
    input           i_clk                   ,
    input           i_rst                   ,

    input  [7 :0]   i_erx_axis_data         ,
    input  [15:0]   i_erx_axis_user         ,
    input           i_erx_axis_last         ,
    input           i_erx_axis_valid        ,

    output [7 :0]   o_reply_info            ,
    output          o_reply_valid           ,

    output          o_updata_run            ,

    output  [1 :0]  o_operation_type        ,
    output  [23:0]  o_operation_addr        ,
    output  [8 :0]  o_operation_num         ,
    output          o_operation_valid       ,
    input           i_operation_ready       ,
    output  [7 :0]  o_write_data            ,
    output          o_write_sop             ,
    output          o_write_eop             ,
    output          o_write_valid           ,
    input   [7 :0]  i_read_data             ,
    input           i_read_sop              ,
    input           i_read_eop              ,
    input           i_read_valid             
);

localparam          P_DATA_NUMBER   = 256   ;

localparam          P_OP_CLEAR      = 0     ,
                    P_OP_WRITE      = 1     ,
                    P_OP_READ       = 2     ;

localparam          P_ST_IDLE       = 0     ,
                    P_ST_4K_CHECK   = 1     ,
                    P_ST_CLEAR      = 2     ,
                    P_ST_WRITE      = 3     ,
                    P_ST_WRITE_W    = 4     ,
                    P_ST_READ       = 5     ,
                    P_ST_CHECK      = 6     ,
                    P_ST_WRITE_E    = 7     ;

reg  [7 :0]         r_st_log                ;
(* MARK_DEBUG = "TRUE" *)reg  [7 :0]         r_st_current            ;
reg  [7 :0]         r_st_next               ;
reg  [15:0]         r_st_cnt                ;

reg  [7 :0]         ro_reply_info           ;
reg                 ro_reply_valid          ;
reg                 ro_updata_run           ;
reg  [1 :0]         ro_operation_type       ;
reg  [23:0]         ro_operation_addr       ;
reg  [8 :0]         ro_operation_num        ;
reg                 ro_operation_valid      ;
reg  [7 :0]         ro_write_data           ;
reg                 ro_write_sop            ;
reg                 ro_write_eop            ;
reg                 ro_write_valid          ;
(* MARK_DEBUG = "TRUE" *)reg  [7 :0]         ri_erx_axis_data        ;
reg  [15:0]         ri_erx_axis_user        ;
reg                 ri_erx_axis_last        ;
(* MARK_DEBUG = "TRUE" *)reg                 ri_erx_axis_valid       ;     
reg  [31:0]         r_updata_addr           ;
(* MARK_DEBUG = "TRUE" *)reg  [7 :0]         r_4K_clear_valid        ;
reg  [15:0]         r_axis_cnt              ;
(* MARK_DEBUG = "TRUE" *)reg                 r_bram_en               ;
(* MARK_DEBUG = "TRUE" *)reg                 r_bram_wren             ;
(* MARK_DEBUG = "TRUE" *)reg  [10:0]         r_bram_addr             ;
reg                 ri_operation_ready      ;
reg  [10:0]         r_raddr                 ;
reg  [7 :0]         r_burst_num             ;
reg                 r_bram_valid            ;
reg                 r_bram_valid_1d         ;
reg                 r_write_end             ;
reg  [7 :0]         ri_read_data            ;
reg                 ri_read_sop             ;
reg                 ri_read_eop             ;
reg                 ri_read_valid           ;
reg  [7 :0]         ri_read_data_1d         ;
reg                 ri_read_sop_1d          ;
reg                 ri_read_eop_1d          ;
reg                 ri_read_valid_1d        ;
(* MARK_DEBUG = "TRUE" *)reg                 r_read_check_ok         ;
reg  [7 :0]         r_cnt_ff                ;


wire [7 :0]         w_bram_data             ;
wire                w_operation_end         ;
wire                w_operation_act         ;

assign w_operation_end   = i_operation_ready & !ri_operation_ready    ;
assign w_operation_act   = i_operation_ready & o_operation_valid      ;
assign o_reply_info      = ro_reply_info        ;
assign o_reply_valid     = ro_reply_valid       ;
assign o_updata_run      = ro_updata_run        ;
assign o_operation_type  = ro_operation_type    ;
assign o_operation_addr  = ro_operation_addr    ;
assign o_operation_num   = ro_operation_num     ;
assign o_operation_valid = ro_operation_valid   ;
assign o_write_data      = ro_write_data        ;
assign o_write_sop       = ro_write_sop         ;
assign o_write_eop       = ro_write_eop         ;
assign o_write_valid     = ro_write_valid       ;

BRAM_8X1024 BRAM_8X1024_U0 (
  .clka             (i_clk              ),
  .ena              (r_bram_en          ),
  .wea              (r_bram_wren        ),
  .addra            (r_bram_addr        ),
  .dina             (ri_erx_axis_data   ),
  .douta            (w_bram_data        ) 
);

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_st_current <= 'd0;
    else 
        r_st_current <= r_st_next;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_st_log <= 'd0;
    else
        r_st_log <= r_st_current;
end 

always@(*)
begin
    case(r_st_current)
        P_ST_IDLE       : r_st_next = ri_erx_axis_last      ? P_ST_4K_CHECK     : P_ST_IDLE     ;//空闲状态，以太网发送完毕跳转
        P_ST_4K_CHECK   : r_st_next = r_4K_clear_valid      ? P_ST_CLEAR        : P_ST_WRITE    ;//是否需要擦除
        P_ST_CLEAR      : r_st_next = w_operation_end       ? P_ST_WRITE        : P_ST_CLEAR    ;//擦除flash 4KB扇区
        P_ST_WRITE      : r_st_next = r_raddr == 256 - 1    ? P_ST_WRITE_W      : P_ST_WRITE    ;//写数据状态
        P_ST_WRITE_W    : r_st_next = w_operation_end       ? P_ST_READ         : P_ST_WRITE_W  ;//写等待
        P_ST_READ       : r_st_next = ri_read_eop_1d        ? P_ST_CHECK        : P_ST_READ     ;//读状态
        P_ST_CHECK      : r_st_next = r_st_cnt == 1         ?                                    //检查状态
                                      r_read_check_ok       ? 
                                      r_cnt_ff >= 200 ? P_ST_WRITE : P_ST_WRITE_E      
                                      : P_ST_CLEAR//结果正确，跳入写结束，不正确重新写一遍
                                                                                :P_ST_CHECK     ;
        P_ST_WRITE_E    : r_st_next = r_write_end           ? P_ST_IDLE         : P_ST_WRITE    ;//判断1KB的字节是否突发写4次，没有写完4次进入到下一次写。写完4次回到空闲
        default         : r_st_next = P_ST_IDLE;
    endcase
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_st_cnt <= 'd0;
    else if(r_st_current != r_st_next)
        r_st_cnt <= 'd0;
    else 
        r_st_cnt <= r_st_cnt + 1;
end

//打拍
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        ri_erx_axis_data    <= 'd0;
        ri_erx_axis_user    <= 'd0;
        ri_erx_axis_last    <= 'd0;
        ri_erx_axis_valid   <= 'd0;
        ri_operation_ready  <= 'd0;
        ri_read_data        <= 'd0;
        ri_read_sop         <= 'd0;
        ri_read_eop         <= 'd0;
        ri_read_valid       <= 'd0;
        ri_read_data_1d     <= 'd0;
        ri_read_sop_1d      <= 'd0;
        ri_read_eop_1d      <= 'd0;
        ri_read_valid_1d    <= 'd0;
    end else begin
        ri_erx_axis_data    <= i_erx_axis_data      ;
        ri_erx_axis_user    <= i_erx_axis_user      ;
        ri_erx_axis_last    <= i_erx_axis_last      ;
        ri_erx_axis_valid   <= i_erx_axis_valid     ;
        ri_operation_ready  <= i_operation_ready    ;
        ri_read_data        <= i_read_data          ;
        ri_read_sop         <= i_read_sop           ;
        ri_read_eop         <= i_read_eop           ;
        ri_read_valid       <= i_read_valid         ;
        ri_read_data_1d     <= ri_read_data         ; 
        ri_read_sop_1d      <= ri_read_sop          ; 
        ri_read_eop_1d      <= ri_read_eop          ;  
        ri_read_valid_1d    <= ri_read_valid        ; 
    end
end

//以太网输入数据字节计数器
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_axis_cnt <= 'd0;
    else if(ri_erx_axis_valid)
        r_axis_cnt <= r_axis_cnt + 1;
    else 
        r_axis_cnt <= 'd0;
end

//上位机下发的升级地址
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_updata_addr <= 'd0;
    else if((r_axis_cnt >= 2 && r_axis_cnt <= 5) && ri_erx_axis_valid)       
        r_updata_addr <= {r_updata_addr[23:0],ri_erx_axis_data};
    else 
        r_updata_addr <= r_updata_addr;
end

//解析上位机下发的擦除4KB扇区指令
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_4K_clear_valid <= 'd0;
    else if(r_axis_cnt == 1 && ri_erx_axis_valid)
        r_4K_clear_valid <= ri_erx_axis_data[3 :0];
    else 
        r_4K_clear_valid <= r_4K_clear_valid;
end

//BRAM控制逻辑
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        r_bram_en   <= 'd0;
        r_bram_wren <= 'd0;
        r_bram_addr <= 'd0;
    end else if(r_axis_cnt >= 5 && i_erx_axis_valid) begin//存储以太网下发的更新bit数据
        r_bram_en   <= 'd1;
        r_bram_wren <= 'd1;
        r_bram_addr <= r_axis_cnt - 5;
    end else if(r_raddr == 256 - 0) begin//写完清零
        r_bram_en   <= 'd0;
        r_bram_wren <= 'd0;
        r_bram_addr <= 'd0;
    end else if(r_st_current == P_ST_WRITE) begin//在flash状态读取BRAM中的数据
        r_bram_en   <= 'd1;
        r_bram_wren <= 'd0;
        r_bram_addr <= r_raddr + (r_burst_num << 8);//flash写地址计算 *256
    end else if(i_read_valid || ri_read_valid) begin//在falsh读数据的同时，把BRAM里的数据读出
        r_bram_en   <= 'd1;
        r_bram_wren <= 'd0;
        r_bram_addr <= r_raddr + (r_burst_num << 8);
    end else begin
        r_bram_en   <= 'd0;
        r_bram_wren <= 'd0;
        r_bram_addr <= 'd0;
    end
end

//BRAM的读有效信号
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_bram_valid <= 'd0;
    else 
        r_bram_valid <= r_bram_en & !r_bram_wren;
end

//BRAM的读有效信号打一拍
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_bram_valid_1d <= 'd0;
    else 
        r_bram_valid_1d <= r_bram_valid;
end

//从0递增的地址
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_raddr <= 'd0;
    else if(r_raddr == 256 - 1)
        r_raddr <= 'd0;
    else if(r_st_current == P_ST_WRITE || i_read_valid)
        r_raddr <= r_raddr + 1;
    else 
        r_raddr <= r_raddr;
end

//突发次数
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_burst_num <= 'd0;
    else if(r_st_current == P_ST_CHECK && r_st_cnt == 0 && r_read_check_ok && r_burst_num == 4 - 1)
        r_burst_num <= 'd0;
    else if(r_st_current == P_ST_CHECK && r_st_cnt == 0 && r_read_check_ok)
        r_burst_num <= r_burst_num + 1;
    else 
        r_burst_num <= r_burst_num;
end

//写结束判断信号
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_write_end <= 'd0;
    else if(r_st_current == P_ST_IDLE)//在空闲状态清零
        r_write_end <= 'd0;
    else if(r_st_current == P_ST_READ && r_read_check_ok && r_burst_num == 4 - 1)//判断是否写完4次
        r_write_end <= 'd1;
    else 
        r_write_end <= r_write_end;
end

//flash回读数据与BRAM中需要写入的数据校验
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_read_check_ok <= 'd1;
    else if(ri_read_valid_1d && ri_read_data_1d != w_bram_data)//比较BRAM和FLASH数据是否一致
        r_read_check_ok <= 'd0;
    else if(r_st_current == P_ST_CLEAR || r_st_current == P_ST_IDLE)//状态在空闲时，信号拉高
        r_read_check_ok <= 'd1;
    else 
        r_read_check_ok <= r_read_check_ok;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_cnt_ff <= 'd0;
    else if(r_st_current == P_ST_WRITE)
        r_cnt_ff <= 'd0;
    else if(ri_read_valid_1d && &ri_read_data_1d)
        r_cnt_ff <= r_cnt_ff < 255 ? r_cnt_ff + 1 : r_cnt_ff;
    else 
        r_cnt_ff <= r_cnt_ff;
end

//flash drive的操作激活
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_operation_valid <= 'd0;
    else if(w_operation_act)
        ro_operation_valid <= 'd0;
    else if(r_st_current == P_ST_CLEAR &&  r_st_log != P_ST_CLEAR)
        ro_operation_valid <= 'd1;
    else if(r_st_current == P_ST_WRITE &&  r_st_log != P_ST_WRITE)
        ro_operation_valid <= 'd1;
    else if(r_st_current == P_ST_READ &&  r_st_log  != P_ST_READ)
        ro_operation_valid <= 'd1;
    else     
        ro_operation_valid <= ro_operation_valid;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        ro_operation_type <= 'd0;
        ro_operation_addr <= 'd0;
        ro_operation_num  <= 'd0;
    end else if(r_st_current == P_ST_CLEAR) begin//发送擦除指令
        ro_operation_type <= P_OP_CLEAR;
        ro_operation_addr <= r_updata_addr;
        ro_operation_num  <= 'd0;
    end else if(r_st_current == P_ST_WRITE) begin//发起页编程操作
        ro_operation_type <= P_OP_WRITE;
        ro_operation_addr <= r_updata_addr + (r_burst_num << 8);//计算页地址，每写一次地址增加256
        ro_operation_num  <= P_DATA_NUMBER;
    end else if(r_st_current == P_ST_READ) begin//连续读操作
        ro_operation_type <= P_OP_READ;
        ro_operation_addr <= r_updata_addr + (r_burst_num << 8);//计算页地址，每读一次地址增加256
        ro_operation_num  <= P_DATA_NUMBER;
    end else begin
        ro_operation_type <= ro_operation_type;
        ro_operation_addr <= ro_operation_addr;
        ro_operation_num  <= ro_operation_num ;
    end
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_write_data <= 'd0;
    else if(r_bram_valid)//BRAM读有效
        ro_write_data <= w_bram_data;//赋值BRAM的读出数据
    else 
        ro_write_data <= 'd0;
end

//写起始信号
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_write_sop <= 'd0;
    else if(r_st_current == P_ST_WRITE && r_bram_valid & !r_bram_valid_1d)//BRAM开始读
        ro_write_sop <= 'd1;
    else 
        ro_write_sop <= 'd0;
end

//写结束信号
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_write_eop <= 'd0;
    else if(!(r_bram_en & !r_bram_wren) && r_bram_valid && ro_write_valid)//BRAM读结束
        ro_write_eop <= 'd1;
    else 
        ro_write_eop <= 'd0;
end

//写有效
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_write_valid <= 'd0;
    else if(ro_write_eop)//写完拉低
        ro_write_valid <= 'd0;
    else if(r_st_current == P_ST_WRITE && r_bram_valid & !r_bram_valid_1d)//开始写的时候拉高
        ro_write_valid <= 'd1;
    else 
        ro_write_valid <= ro_write_valid;
end

//回复信息
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        ro_reply_info  <= 'd0;
        ro_reply_valid <= 'd0;
    end else if(r_st_current == P_ST_WRITE_E && r_write_end) begin//1KB数据写完
        ro_reply_info  <= 'd1;
        ro_reply_valid <= 'd1;
    end else begin
        ro_reply_info  <= 'd0;
        ro_reply_valid <= 'd0;
    end
end

//升级运行信号
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_updata_run <= 'd0;
    else if(r_axis_cnt == 1 && ri_erx_axis_valid)
        ro_updata_run <= ri_erx_axis_data[7 :4];
    else 
        ro_updata_run <= ro_updata_run;
end


endmodule
