`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/12 19:13:48
// Design Name: 
// Module Name: AXI_Master_Drive
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


module DDR_Ctrl#(
    parameter               P_DDS_NUMBER = 1024     //512个点    1024字节
)(
    input                   i_clk                   ,
    input                   i_rst                   ,

    input                   i_init_calib_complete   ,

    output [0 :0]           m_axi_awid              ,
    output [28:0]			m_axi_awaddr            ,
    output [7 :0]			m_axi_awlen             ,
    output [2 :0]			m_axi_awsize            ,           
    output [1 :0]			m_axi_awburst           ,           
    output [0 :0]			m_axi_awlock            ,              
    output [3 :0]			m_axi_awcache           ,          
    output [2 :0]			m_axi_awprot            ,                  
    output [3 :0]			m_axi_awqos             ,         
    output 		            m_axi_awvalid           ,                 
    input 			        m_axi_awready           ,   

    output [31:0]			m_axi_wdata             ,                 
    output [3 :0]			m_axi_wstrb             ,             
    output			        m_axi_wlast             ,       
    output			        m_axi_wvalid            ,   
    input			        m_axi_wready            ,  

    input [0 :0]			m_axi_bid               ,       
    input [1 :0]			m_axi_bresp             ,   
    input			        m_axi_bvalid            ,       
    output			        m_axi_bready            ,  

    output  [0 :0]			m_axi_arid              ,       
    output  [28:0]			m_axi_araddr            ,   
    output  [7 :0]			m_axi_arlen             ,
    output  [2 :0]			m_axi_arsize            ,   
    output  [1 :0]			m_axi_arburst           ,       
    output  [0 :0]			m_axi_arlock            ,       
    output  [3 :0]			m_axi_arcache           ,       
    output  [2 :0]			m_axi_arprot            ,       
    output  [3 :0]			m_axi_arqos             ,   
    output			        m_axi_arvalid           ,   
    input			        m_axi_arready           ,  

    input [0 :0]			m_axi_rid               ,       
   input [31:0]			m_axi_rdata             ,       
    input [1 :0]			m_axi_rresp             ,       
    input			        m_axi_rlast             ,       
    input			        m_axi_rvalid            ,       
   output			        m_axi_rready            ,

    input                   i_clk_50M               ,
    input                   i_rst_50M               ,
    input  [15:0]           i_dds_number            ,
    input                   i_dss_number_valid      ,
 (* mark_debug = "true" *) output [13:0]           o_dds0_data             ,
    output                  o_dds0_valid            ,
 (* mark_debug = "true" *) output [13:0]           o_dds1_data             ,
    output                  o_dds1_valid              
);

/***************function**************/

/***************parameter*************/
localparam                  P_FIFO_NUMBER = P_DDS_NUMBER >> 1;//512

localparam                  P_ST_INIT   =   0   ,
                            P_ST_IDLE   =   1   ,
                            P_ST_WRITE  =   2   ,
                            P_ST_READ   =   3   ;

localparam                  P_LEN       =   256  ;//1024B  512点

/***************port******************/             

/***************mechine***************/
reg  [7 :0]                 r_st_current        ;
reg  [7 :0]                 r_st_next           ;
reg  [15:0]                 r_st_cnt            ;

/***************reg*******************/
reg  [0 :0]                 ro_m_axi_awid       ;
reg  [28:0]			        ro_m_axi_awaddr     ;
reg  [7 :0]			        ro_m_axi_awlen      ;
reg  [2 :0]			        ro_m_axi_awsize     ;
reg  [1 :0]			        ro_m_axi_awburst    ;
reg  [0 :0]			        ro_m_axi_awlock     ;
reg  [3 :0]			        ro_m_axi_awcache    ;
reg  [2 :0]			        ro_m_axi_awprot     ;
reg  [3 :0]			        ro_m_axi_awqos      ;
reg  		                ro_m_axi_awvalid    ;
reg  [31:0]			        ro_m_axi_wdata      ;
reg  [3 :0]			        ro_m_axi_wstrb      ;
reg  			            ro_m_axi_wlast      ;
reg  			            ro_m_axi_wvalid     ;
reg                         ro_m_axi_bready     ;
reg  [0 :0]			        ro_m_axi_arid       ;
reg  [28:0]			        ro_m_axi_araddr     ;
reg  [7 :0]			        ro_m_axi_arlen      ;
reg  [2 :0]			        ro_m_axi_arsize     ;
reg  [1 :0]			        ro_m_axi_arburst    ;
reg  [0 :0]			        ro_m_axi_arlock     ;
reg  [3 :0]			        ro_m_axi_arcache    ;
reg  [2 :0]			        ro_m_axi_arprot     ;
reg  [3 :0]			        ro_m_axi_arqos      ;
reg  		                ro_m_axi_arvalid    ;
reg                         ro_m_axi_rready     ;
reg  [0 :0]			        ri_m_axi_rid        ;
 reg  [31:0]			        ri_m_axi_rdata      ;
reg  [1 :0]			        ri_m_axi_rresp      ;
reg  			            ri_m_axi_rlast      ;
 reg  			            ri_m_axi_rvalid     ;
reg  [15:0]                 r_read_cnt          ;
reg  [15:0]                 ro_dds0_data        ;
reg                         ro_dds0_valid       ;
reg  [15:0]                 ro_dds1_data        ;
reg                         ro_dds1_valid       ;
reg                         r_fifo_dds0_rden    ;
reg                         r_fifo_dds1_rden    ;
reg                         r_fifo_dds0_wren    ;
reg                         r_fifo_dds0_wren_1d ;
reg                         r_fifo_dds1_wren    ;
reg                         r_fifo_dds1_wren_1d ;
reg  [15:0]                 ri_dds_number       ;
// reg  [15:0]                 r_fifo0_rcnt        ;
// reg  [15:0]                 r_fifo1_rcnt        ;
reg  [7 :0]                 r_rfifo_flag        ;
reg  [15:0]                 r_dds_data          ;
reg                         r_fifo_rdata_rden   ;
reg                         r_fifo_rdata_rden_1d;
reg  [7 :0]                 r_width_cnt         ;
reg                         r_width_run         ;
reg  [1 :0]                 r_fifo_dds0_empty   ;
reg  [1 :0]                 r_fifo_dds1_empty   ;
reg  [0 :0]                 r_fifo_dds0_empty_1d;
reg  [0 :0]                 r_fifo_dds1_empty_1d;
reg  [15:0]                 r_dds0_wcnt         ;
reg  [15:0]                 r_dds1_wcnt         ;
reg                         r_dds_wend          ;
reg                         r_dds_wend_1d       ;
reg                         r_start1            ;
reg  [15:0]                 r_start1_cnt        ;
reg                         r_start2            ;
reg  [15:0]                 r_start2_cnt        ;
reg                         r_setup1            ;
reg                         r_setup2            ;
reg  [15:0]                 r_fifo_read_cnt     ;
reg  [15:0]                 r_axis_rcnt         ;

/***************wire******************/
wire                        w_aw_act            ;
wire                        w_w_act             ;
wire                        w_br_act            ;
wire                        w_ar_act            ;
wire                        w_r_act             ;
wire [15:0]                 w_fifo_dds0_dout    ;
wire [15:0]                 w_fifo_dds1_dout    ;
wire                        w_fifo_dds0_empty   ;
wire                        w_fifo_dds1_empty   ;
wire                        w_fifo_dds0_full    ;
wire                        w_fifo_dds1_full    ;
wire [31:0]                 w_fifo_rdata_dout   ;
wire                        w_fifo_rdata_full   ;
wire                        w_fifo_rdata_empty  ;
wire                        w_fifo_dds0_wren    ;
wire                        w_fifo_dds1_wren    ;
wire [9 :0]                 w_fifo_dds0_cnt     ;
wire [9 :0]                 w_fifo_dds1_cnt     ;
// wire [0 :0]                 w_fifo_dds0_flag    ;
// wire [0 :0]                 w_fifo_dds1_flag    ;

/***************component*************/

/***************assign****************/
assign m_axi_awid    = 0                                ;
assign m_axi_awaddr  = 0                                ;
assign m_axi_awlen   = 0                                ;
assign m_axi_awsize  = 0                                ;
assign m_axi_awburst = 0                                ;
assign m_axi_awlock  = 0                                ;
assign m_axi_awcache = 0                                ;
assign m_axi_awprot  = 0                                ;
assign m_axi_awqos   = 0                                ;
assign m_axi_awvalid = 0                                ;
assign m_axi_wdata   = 0                                ;
assign m_axi_wstrb   = 0                                ;
assign m_axi_wlast   = 0                                ;
assign m_axi_wvalid  = 0                                ;
assign m_axi_bready  = 0                                ;
assign m_axi_arid    = ro_m_axi_arid                    ;
assign m_axi_araddr  = ro_m_axi_araddr                  ;
assign m_axi_arlen   = ro_m_axi_arlen                   ;
assign m_axi_arsize  = ro_m_axi_arsize                  ;
assign m_axi_arburst = ro_m_axi_arburst                 ;
assign m_axi_arlock  = ro_m_axi_arlock                  ;
assign m_axi_arcache = ro_m_axi_arcache                 ;
assign m_axi_arprot  = ro_m_axi_arprot                  ;
assign m_axi_arqos   = ro_m_axi_arqos                   ;
assign m_axi_arvalid = ro_m_axi_arvalid                 ;
assign m_axi_rready  = ro_m_axi_rready                  ;
assign w_aw_act      = m_axi_awvalid & m_axi_awready    ;//写地�?�?活信�?
assign w_w_act       = m_axi_wvalid  & m_axi_wready     ;//写数据激活信�?
assign w_br_act      = m_axi_bvalid  & m_axi_bready     ;//响应�?活信�?
assign w_ar_act      = m_axi_arvalid & m_axi_arready    ;//读地�?�?活信�?
assign w_r_act       = m_axi_rvalid  & m_axi_rready     ;//读数据信�?
assign s_axis_ready  = 1                                ;
assign o_dds0_data   = ro_dds0_data[13:0]                      ;
assign o_dds0_valid  = ro_dds0_valid                    ;
assign o_dds1_data   = ro_dds1_data[13:0]                      ;
assign o_dds1_valid  = ro_dds1_valid                    ;
assign w_fifo_dds0_wren = r_fifo_dds0_wren | r_fifo_dds0_wren_1d;
assign w_fifo_dds1_wren = r_fifo_dds1_wren | r_fifo_dds1_wren_1d;
// assign w_fifo_dds0_flag = w_fifo_dds0_cnt > 150         ;
// assign w_fifo_dds1_flag = w_fifo_dds1_cnt > 150         ;

//DDR读取的数据直接参数此FIFO

FIFO_32X512 FIFO_32X512_U0 (
  .clk              (i_clk              ), 
  .din              (ri_m_axi_rdata     ), 
  .wr_en            (ri_m_axi_rvalid    ), 
  .rd_en            (r_fifo_rdata_rden  ), 
  .dout             (w_fifo_rdata_dout  ), 
  .full             (w_fifo_rdata_full  ), 
  .empty            (w_fifo_rdata_empty )  
);

//对应通道的数据存入此FIFO
//跨时钟域，输入时钟为ui_clk(100M)，输出是DAC的50M时钟
FIFO_32to16_512 FIFO_16X1024_u0 (
  .wr_clk           (i_clk                  ),
  .wr_rst           (i_rst                  ),
  .rd_clk           (i_clk_50M              ),
  .rd_rst           (i_rst_50M              ),
  .din              (w_fifo_rdata_dout      ),
  .wr_en            (r_fifo_dds0_wren       ),
  .rd_en            (r_fifo_dds0_rden       ),
  .dout             (w_fifo_dds0_dout       ),
  .full             (w_fifo_dds0_full       ),
  .empty            (                       ),
  .prog_empty       (w_fifo_dds0_empty      ) 
);

//对应通道的数据存入此FIFO
//跨时钟域，输入时钟为ui_clk(100M)，输出是DAC的50M时钟
FIFO_32to16_512 FIFO_16X1024_u1 (
  .wr_clk           (i_clk                  ),
  .wr_rst           (i_rst                  ),
  .rd_clk           (i_clk_50M              ),
  .rd_rst           (i_rst_50M              ),
  .din              (w_fifo_rdata_dout      ),
  .wr_en            (r_fifo_dds1_wren       ),
  .rd_en            (r_fifo_dds1_rden       ),
  .dout             (w_fifo_dds1_dout       ),
  .full             (w_fifo_dds1_full       ),
  .empty            (                       ),
  .prog_empty       (w_fifo_dds1_empty      ) 
);

/***************always****************/
//第一段状态机
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_st_current <= P_ST_IDLE;
    else
        r_st_current <= r_st_next;    
end

//第二�?
always@(*)
begin
    case(r_st_current)
        P_ST_INIT   : r_st_next <= i_init_calib_complete & r_st_cnt > 100 ? P_ST_IDLE     : P_ST_INIT     ;//DDR初始化完成转入IDLE
        P_ST_IDLE   : r_st_next <= (r_fifo_dds0_empty[1] | r_fifo_dds1_empty[1]) & r_dds_wend              //判断DDS数据FIFO马上要空了，并且当前不在写数据状态，转入READ
                                   ? P_ST_READ : P_ST_IDLE;
        P_ST_READ   : r_st_next <= m_axi_rlast && w_r_act    ? P_ST_IDLE : P_ST_READ;                      //发起AXI读数据，并将读数据存入DDS数据FIFO
        default     : r_st_next <= P_ST_IDLE;
    endcase
end

//状态机计数器
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_st_cnt <= 'd0;
    else if(r_st_current != r_st_next)
        r_st_cnt <= 'd0;
    else 
        r_st_cnt <= r_st_cnt + 1;
end

//通道0启动信号，记录通道0是否启动          //没用，监视
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_setup1 <= 'd0;
    else if(r_rfifo_flag == 1 && w_fifo_dds0_wren)
        r_setup1 <= 'd1;
    else 
        r_setup1 <= r_setup1;
end

//通道1启动信号，记录通道1是否启动          //没用，监视
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_setup2 <= 'd0;
    else if(r_rfifo_flag == 2 && w_fifo_dds1_wren)
        r_setup2 <= 'd1;
    else 
        r_setup2 <= r_setup2;
end

//打拍
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_fifo_rdata_rden_1d <= 'd0;
    else 
        r_fifo_rdata_rden_1d <= r_fifo_rdata_rden;
end

//DDS0的FIFO写使能信号
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_fifo_dds0_wren <= 'd0;
    else if(r_rfifo_flag == 1)
        r_fifo_dds0_wren <= r_fifo_rdata_rden;
    else 
        r_fifo_dds0_wren <= 'd0;
end

//DDS1的FIFO写使能信号
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_fifo_dds1_wren <= 'd0;
    else if(r_rfifo_flag == 2)
        r_fifo_dds1_wren <= r_fifo_rdata_rden;
    else 
        r_fifo_dds1_wren <= 'd0;
end

//AXI发送读操作
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        ro_m_axi_arid    <= 'd0;
        ro_m_axi_arlen   <= 'd0;
        ro_m_axi_arsize  <= 'd0;
        ro_m_axi_arburst <= 'd0;
        ro_m_axi_arlock  <= 'd0;
        ro_m_axi_arcache <= 'd0;
        ro_m_axi_arprot  <= 'd0;
        ro_m_axi_arqos   <= 'd0;
        ro_m_axi_arvalid <= 'd0;
    end else if(w_ar_act) begin
        ro_m_axi_arid    <= 'd0;
        ro_m_axi_arlen   <= 'd0;
        ro_m_axi_arsize  <= 'd0;
        ro_m_axi_arburst <= 'd0;
        ro_m_axi_arlock  <= 'd0;
        ro_m_axi_arcache <= 'd0;
        ro_m_axi_arprot  <= 'd0;
        ro_m_axi_arqos   <= 'd0;
        ro_m_axi_arvalid <= 'd0;
    end else if(r_st_current == P_ST_READ && r_st_cnt == 0) begin
        ro_m_axi_arid    <= 'd0;
        ro_m_axi_arlen   <= P_LEN - 1;
        ro_m_axi_arsize  <= 3'b010;
        ro_m_axi_arburst <= 'd1;
        ro_m_axi_arlock  <= 'd0;
        ro_m_axi_arcache <= 4'b0010;
        ro_m_axi_arprot  <= 'd0;
        ro_m_axi_arqos   <= 'd0;
        ro_m_axi_arvalid <= 'd1;
    end else begin
        ro_m_axi_arid    <= ro_m_axi_arid   ;
        ro_m_axi_arlen   <= ro_m_axi_arlen  ;
        ro_m_axi_arsize  <= ro_m_axi_arsize ;
        ro_m_axi_arburst <= ro_m_axi_arburst;
        ro_m_axi_arlock  <= ro_m_axi_arlock ;
        ro_m_axi_arcache <= ro_m_axi_arcache;
        ro_m_axi_arprot  <= ro_m_axi_arprot ;
        ro_m_axi_arqos   <= ro_m_axi_arqos  ;
        ro_m_axi_arvalid <= ro_m_axi_arvalid;
    end 
end

//读地址计算
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_m_axi_araddr <= 'd0;
    else if(r_st_current == P_ST_READ && r_rfifo_flag == 1 && r_st_cnt == 0)
        ro_m_axi_araddr <= 'd0    ;
    else if(r_st_current == P_ST_READ &&  r_rfifo_flag == 2 && r_st_cnt == 0)
        ro_m_axi_araddr <= 'd1024 ;
    else 
        ro_m_axi_araddr <= ro_m_axi_araddr;
end

//写入通道FIFO的控制信号
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_rfifo_flag <= 'd1;
    else if(r_rfifo_flag == 1 && r_dds0_wcnt == (P_DDS_NUMBER >> 2) - 1 && r_fifo_dds0_wren)//256
        r_rfifo_flag <= 'd2;
    else if(r_rfifo_flag == 2 && r_dds1_wcnt == (P_DDS_NUMBER >> 2) - 1 && r_fifo_dds1_wren)
        r_rfifo_flag <= 'd1;
    else 
        r_rfifo_flag <= r_rfifo_flag;
end

//AXI准备信号
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_m_axi_rready <= 'd1;
    else 
        ro_m_axi_rready <= 'd1;
end

//读数据打拍
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        ri_m_axi_rid    <= 'd0;
        ri_m_axi_rdata  <= 'd0;
        ri_m_axi_rresp  <= 'd0;
        ri_m_axi_rlast  <= 'd0;
        ri_m_axi_rvalid <= 'd0;
    end else begin
        ri_m_axi_rid    <= m_axi_rid   ;
        ri_m_axi_rdata  <= m_axi_rdata ;
        ri_m_axi_rresp  <= m_axi_rresp ;
        ri_m_axi_rlast  <= m_axi_rlast ;
        ri_m_axi_rvalid <= m_axi_rvalid & m_axi_rready;//w_r_act 的打拍
    end
end 

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_axis_rcnt <= 'd0;
    else if(ri_m_axi_rlast)
        r_axis_rcnt <= 'd0;
    else if(ri_m_axi_rvalid)
        r_axis_rcnt <= r_axis_rcnt + 1;
    else 
        r_axis_rcnt <= r_axis_rcnt;
end

//读数据计数器                  //这里是摆设
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_read_cnt <= 'd0;
    else if(r_read_cnt == P_LEN - 1 && w_r_act)
        r_read_cnt <= 'd0;
    else if(w_r_act)
        r_read_cnt <= r_read_cnt + 1;
    else 
        r_read_cnt <= r_read_cnt;
end

/*----对接DAC----*/
//DDS输出点数
// always@(posedge i_clk,posedge i_rst)
// begin
//     if(i_rst)
//         ri_dds_number <= P_DDS_NUMBER;
//     else if(i_dss_number_valid)
//         ri_dds_number <= i_dds_number ;
//     else    
//         ri_dds_number <= ri_dds_number;
// end

// //输出点数计数器
// always@(posedge i_clk,posedge i_rst)
// begin
//     if(i_rst)
//         r_fifo0_rcnt <= 'd0;
//     else if(r_fifo0_rcnt == (ri_dds_number >> 10) - 1)
//         r_fifo0_rcnt <= 'd0;
//     else if(r_rfifo_flag == 1 && m_axi_rlast)
//         r_fifo0_rcnt <= r_fifo0_rcnt + 1;
//     else 
//         r_fifo0_rcnt <= r_fifo0_rcnt;
// end

// //输出点数计数器
// always@(posedge i_clk,posedge i_rst)
// begin
//     if(i_rst)
//         r_fifo1_rcnt <= 'd0;
//     else if(r_fifo1_rcnt == (ri_dds_number >> 10) - 1)
//         r_fifo1_rcnt <= 'd0;
//     else if(r_rfifo_flag == 2  && m_axi_rlast)
//         r_fifo1_rcnt <= r_fifo1_rcnt + 1;
//     else 
//         r_fifo1_rcnt <= r_fifo1_rcnt;
// end        

//读使能
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)       
        r_fifo_rdata_rden <= 'd0;
    else if(r_fifo_rdata_rden && r_fifo_read_cnt == (P_DDS_NUMBER >> 2) - 1)//256
        r_fifo_rdata_rden <= 'd0;
    else if(!w_fifo_rdata_empty && !r_fifo_rdata_rden && r_axis_rcnt > 100)       
        r_fifo_rdata_rden <= 'd1;
    else        
        r_fifo_rdata_rden <= r_fifo_rdata_rden;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)  
        r_fifo_read_cnt <= 'd0;
    else if(r_fifo_rdata_rden && r_fifo_read_cnt == (P_DDS_NUMBER >> 2) - 1)
        r_fifo_read_cnt <= 'd0;
    else if(r_fifo_rdata_rden)
        r_fifo_read_cnt <= r_fifo_read_cnt + 1;
    else 
        r_fifo_read_cnt <= r_fifo_read_cnt;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_dds_wend <= 'd1;
    else if(r_dds0_wcnt == (P_DDS_NUMBER >> 2) - 1 && r_fifo_rdata_rden)
        r_dds_wend <= 'd1;
    else if(r_dds1_wcnt == (P_DDS_NUMBER >> 2) - 1 && r_fifo_rdata_rden)
        r_dds_wend <= 'd1;
    else if(!w_fifo_rdata_empty && !r_fifo_rdata_rden)
        r_dds_wend <= 'd0;
    else 
        r_dds_wend <= r_dds_wend;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_dds_wend_1d <= 'd0;
    else 
        r_dds_wend_1d <= r_dds_wend;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        r_fifo_dds0_empty   <= 'd0;
        r_fifo_dds0_empty_1d <= 'd0;
        r_fifo_dds1_empty   <= 'd0;
        r_fifo_dds1_empty_1d <= 'd0;
    end else begin
        r_fifo_dds0_empty   <= {r_fifo_dds0_empty[0],w_fifo_dds0_empty};
        r_fifo_dds1_empty   <= {r_fifo_dds1_empty[0],w_fifo_dds1_empty};
        r_fifo_dds0_empty_1d <= r_fifo_dds0_empty[1];
        r_fifo_dds1_empty_1d <= r_fifo_dds1_empty[1];

    end
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)   
        r_dds0_wcnt <= 'd0;
    else if(r_dds0_wcnt == (P_DDS_NUMBER >> 2) - 1 && r_fifo_rdata_rden)
        r_dds0_wcnt <= 'd0;
    else if(r_fifo_rdata_rden)
        r_dds0_wcnt <= r_dds0_wcnt + 1;
    else 
        r_dds0_wcnt <= r_dds0_wcnt;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)   
        r_dds1_wcnt <= 'd0;
    else if(r_dds1_wcnt == (P_DDS_NUMBER >> 2) - 1 && r_fifo_rdata_rden)
        r_dds1_wcnt <= 'd0;
    else if(r_fifo_rdata_rden)
        r_dds1_wcnt <= r_dds1_wcnt + 1;
    else 
        r_dds1_wcnt <= r_dds1_wcnt;
end

always@(posedge i_clk_50M,posedge i_rst_50M)
begin
    if(i_rst_50M)
        r_start1 <= 'd0;
    else if(r_start1_cnt == 512)
        r_start1 <= 'd1;
    else 
        r_start1 <= r_start1;
end

always@(posedge i_clk_50M,posedge i_rst_50M)
begin
    if(i_rst_50M)
        r_start1_cnt <= 'd0;
    else if(r_start1_cnt == 512)
        r_start1_cnt <= r_start1_cnt;
    else if(!w_fifo_dds0_empty || r_start1_cnt)
        r_start1_cnt <= r_start1_cnt + 1;
    else 
        r_start1_cnt <= r_start1_cnt;
end

always@(posedge i_clk_50M,posedge i_rst_50M)
begin
    if(i_rst_50M)
        r_start2 <= 'd0;
    else if(r_start2_cnt == 512)
        r_start2 <= 'd1;
    else 
        r_start2 <= r_start2;
end

always@(posedge i_clk_50M,posedge i_rst_50M)
begin
    if(i_rst_50M)
        r_start2_cnt <= 'd0;
    else if(r_start2_cnt == 512)
        r_start2_cnt <= r_start2_cnt;
    else if(!w_fifo_dds1_empty || r_start2_cnt)
        r_start2_cnt <= r_start2_cnt + 1;
    else 
        r_start2_cnt <= r_start2_cnt;
end

// always@(posedge i_clk_50M,posedge i_rst_50M)
// begin
//     if(i_rst_50M)
//         r_fifo_dds0_rden <='d0;
//     else if(!w_fifo_dds0_empty && r_start1)
//         r_fifo_dds0_rden <='d1;
//     else
//         r_fifo_dds0_rden <= r_fifo_dds0_rden;
// end

always@(posedge i_clk_50M,posedge i_rst_50M)//同步
begin
    if(i_rst_50M)
        r_fifo_dds0_rden <='d0;
    else if(!w_fifo_dds1_empty && r_start2)
        r_fifo_dds0_rden <='d1;
    else
        r_fifo_dds0_rden <= r_fifo_dds0_rden;
end


always@(posedge i_clk_50M,posedge i_rst_50M)
begin
    if(i_rst_50M)
        r_fifo_dds1_rden <='d0;
    else if(!w_fifo_dds1_empty && r_start2)
        r_fifo_dds1_rden <='d1;
    else
        r_fifo_dds1_rden <= r_fifo_dds1_rden;
end

always@(posedge i_clk_50M,posedge i_rst_50M)
begin
    if(i_rst_50M) begin
        ro_dds0_data  <= 'd0;
        ro_dds0_valid <= 'd0;
        ro_dds1_data  <= 'd0;
        ro_dds1_valid <= 'd0;
    end else begin
        ro_dds0_data  <= w_fifo_dds0_dout;
        ro_dds0_valid <= 'd1;
        ro_dds1_data  <= w_fifo_dds1_dout;
        ro_dds1_valid <= 'd1;
    end
end

endmodule
