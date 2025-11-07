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


module test_AXI_Master_Drive(
    input                   i_clk                   ,
    input                   i_rst                   ,

(* mark_debug = "true" *)    input                   i_init_calib_complete   ,

    output [3 :0]           m_axi_awid              ,
    output [31:0]			m_axi_awaddr            ,
    output [7 :0]			m_axi_awlen             ,
    output [2 :0]			m_axi_awsize            ,           
    output [1 :0]			m_axi_awburst           ,           
    output [0 :0]			m_axi_awlock            ,              
    output [3 :0]			m_axi_awcache           ,          
    output [2 :0]			m_axi_awprot            ,                  
    output [3 :0]			m_axi_awqos             ,         
    output 		            m_axi_awvalid           ,                 
(* mark_debug = "true" *)    input 			        m_axi_awready           ,   

    output [31:0]			m_axi_wdata             ,                 
    output [3 :0]			m_axi_wstrb             ,             
    output			        m_axi_wlast             ,       
    output			        m_axi_wvalid            ,   
(* mark_debug = "true" *)    input			        m_axi_wready            ,  

    input [3 :0]			m_axi_bid               ,       
    input [1 :0]			m_axi_bresp             ,   
(* mark_debug = "true" *)    input			        m_axi_bvalid            ,       
    output			        m_axi_bready            ,  

    output  [3 :0]			m_axi_arid              ,       
    output  [31:0]			m_axi_araddr            ,   
    output  [7 :0]			m_axi_arlen             ,
    output  [2 :0]			m_axi_arsize            ,   
    output  [1 :0]			m_axi_arburst           ,       
    output  [0 :0]			m_axi_arlock            ,       
    output  [3 :0]			m_axi_arcache           ,       
    output  [2 :0]			m_axi_arprot            ,       
    output  [3 :0]			m_axi_arqos             ,   
    output			        m_axi_arvalid           ,   
(* mark_debug = "true" *)    input			        m_axi_arready           ,  

    input [0 :0]			m_axi_rid               ,       
    input [31:0]			m_axi_rdata             ,       
    input [1 :0]			m_axi_rresp             ,       
    input			        m_axi_rlast             ,       
    input			        m_axi_rvalid            ,       
    output			        m_axi_rready                       
);

/***************function**************/

/***************parameter*************/
localparam                  P_ST_INIT   =   0   ,
                            P_ST_IDLE   =   1   ,
                            P_ST_WRITE  =   2   ,
                            P_ST_READ   =   3   ;

localparam                  P_LEN       =   16  ;

/***************port******************/             

/***************mechine***************/
(* mark_debug = "true" *)reg  [7 :0]                 r_st_current        ;
reg  [7 :0]                 r_st_next           ;
reg  [15:0]                 r_st_cnt            ;

/***************reg*******************/
reg  [3 :0]                 ro_m_axi_awid       ;
(* mark_debug = "true" *)reg  [31:0]			        ro_m_axi_awaddr     ;
(* mark_debug = "true" *)reg  [7 :0]			        ro_m_axi_awlen      ;
reg  [2 :0]			        ro_m_axi_awsize     ;
reg  [1 :0]			        ro_m_axi_awburst    ;
reg  [0 :0]			        ro_m_axi_awlock     ;
reg  [3 :0]			        ro_m_axi_awcache    ;
reg  [2 :0]			        ro_m_axi_awprot     ;
reg  [3 :0]			        ro_m_axi_awqos      ;
(* mark_debug = "true" *)reg  		                ro_m_axi_awvalid    ;
(* mark_debug = "true" *)reg  [31:0]			    ro_m_axi_wdata      ;
reg  [3:0]			        ro_m_axi_wstrb      ;
(* mark_debug = "true" *)reg  			            ro_m_axi_wlast      ;
(* mark_debug = "true" *)reg  			            ro_m_axi_wvalid     ;
(* mark_debug = "true" *)reg                         ro_m_axi_bready     ;
reg  [3 :0]			        ro_m_axi_arid       ;
(* mark_debug = "true" *)reg  [31:0]			        ro_m_axi_araddr     ;
(* mark_debug = "true" *)reg  [7 :0]			        ro_m_axi_arlen      ;
reg  [2 :0]			        ro_m_axi_arsize     ;
reg  [1 :0]			        ro_m_axi_arburst    ;
reg  [0 :0]			        ro_m_axi_arlock     ;
reg  [3 :0]			        ro_m_axi_arcache    ;
reg  [2 :0]			        ro_m_axi_arprot     ;
reg  [3 :0]			        ro_m_axi_arqos      ;
(* mark_debug = "true" *)reg  		                ro_m_axi_arvalid    ;
(* mark_debug = "true" *)reg                         ro_m_axi_rready     ;
reg  [3 :0]			        ri_m_axi_rid        ;
(* mark_debug = "true" *)reg  [31:0]			    ri_m_axi_rdata      ;
reg  [1 :0]			        ri_m_axi_rresp      ;
(* mark_debug = "true" *)reg  			            ri_m_axi_rlast      ;
(* mark_debug = "true" *)reg  			            ri_m_axi_rvalid     ;
reg  [15:0]     r_read_cnt;

/***************wire******************/
wire                        w_aw_act            ;
wire                        w_w_act             ;
wire                        w_br_act            ;
wire                        w_ar_act            ;
wire                        w_r_act             ;

/***************component*************/

/***************assign****************/
assign m_axi_awid    = ro_m_axi_awid                    ;
assign m_axi_awaddr  = ro_m_axi_awaddr                  ;
assign m_axi_awlen   = ro_m_axi_awlen                   ;
assign m_axi_awsize  = ro_m_axi_awsize                  ;
assign m_axi_awburst = ro_m_axi_awburst                 ;
assign m_axi_awlock  = ro_m_axi_awlock                  ;
assign m_axi_awcache = ro_m_axi_awcache                 ;
assign m_axi_awprot  = ro_m_axi_awprot                  ;
assign m_axi_awqos   = ro_m_axi_awqos                   ;
assign m_axi_awvalid = ro_m_axi_awvalid                 ;
assign m_axi_wdata   = ro_m_axi_wdata                   ;
assign m_axi_wstrb   = ro_m_axi_wstrb                   ;
assign m_axi_wlast   = ro_m_axi_wlast                   ;
assign m_axi_wvalid  = ro_m_axi_wvalid                  ;
assign m_axi_bready  = ro_m_axi_bready                  ;
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
assign w_aw_act      = m_axi_awvalid & m_axi_awready    ;//写地址激活信号
assign w_w_act       = m_axi_wvalid  & m_axi_wready     ;//写数据激活信号
assign w_br_act      = m_axi_bvalid  & m_axi_bready     ;//响应激活信号
assign w_ar_act      = m_axi_arvalid & m_axi_arready    ;//读地址激活信号
assign w_r_act       = m_axi_rvalid  & m_axi_rready     ;//读数据信号

/***************always****************/
//第一段状态机
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_st_current <= P_ST_IDLE;
    else
        r_st_current <= r_st_next;    
end

//第二段
always@(*)
begin
    case(r_st_current)
        P_ST_INIT   : r_st_next <= i_init_calib_complete ? P_ST_IDLE : P_ST_INIT;
        P_ST_IDLE   : r_st_next <= P_ST_WRITE;
        P_ST_WRITE  : r_st_next <= w_br_act     ? P_ST_READ : P_ST_WRITE;
        P_ST_READ   : r_st_next <= r_read_cnt == P_LEN - 1 && w_r_act  ? P_ST_IDLE : P_ST_READ;
        default     : r_st_next <= P_ST_IDLE;
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

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        ro_m_axi_awid    <= 'd0;
        ro_m_axi_awaddr  <= 'd0;
        ro_m_axi_awlen   <= 'd0;
        ro_m_axi_awsize  <= 'd0;
        ro_m_axi_awburst <= 'd0;
        ro_m_axi_awlock  <= 'd0;
        ro_m_axi_awcache <= 'd0;
        ro_m_axi_awprot  <= 'd0;
        ro_m_axi_awqos   <= 'd0;
        ro_m_axi_awvalid <= 'd0;
    end else if(w_aw_act) begin
        ro_m_axi_awid    <= 'd0;
        ro_m_axi_awaddr  <= 'd0;
        ro_m_axi_awlen   <= 'd0;
        ro_m_axi_awsize  <= 'd0;
        ro_m_axi_awburst <= 'd0;
        ro_m_axi_awlock  <= 'd0;
        ro_m_axi_awcache <= 'd0;
        ro_m_axi_awprot  <= 'd0;
        ro_m_axi_awqos   <= 'd0;
        ro_m_axi_awvalid <= 'd0;
    end else if(r_st_current == P_ST_WRITE && r_st_cnt == 0) begin
        ro_m_axi_awid    <= 'd0;
        ro_m_axi_awaddr  <= 'd0;
        ro_m_axi_awlen   <= P_LEN - 1;
        ro_m_axi_awsize  <= 3'b010;//4byte  
        ro_m_axi_awburst <= 'd1;//突发模式
        ro_m_axi_awlock  <= 'd0;
        ro_m_axi_awcache <= 4'b0010;//无缓存
        ro_m_axi_awprot  <= 'd0;
        ro_m_axi_awqos   <= 'd0;
        ro_m_axi_awvalid <= 'd1;//有效拉高
    end else begin
        ro_m_axi_awid    <= ro_m_axi_awid   ;
        ro_m_axi_awaddr  <= ro_m_axi_awaddr ;
        ro_m_axi_awlen   <= ro_m_axi_awlen  ;
        ro_m_axi_awsize  <= ro_m_axi_awsize ;
        ro_m_axi_awburst <= ro_m_axi_awburst;
        ro_m_axi_awlock  <= ro_m_axi_awlock ;
        ro_m_axi_awcache <= ro_m_axi_awcache;
        ro_m_axi_awprot  <= ro_m_axi_awprot ;
        ro_m_axi_awqos   <= ro_m_axi_awqos  ;
        ro_m_axi_awvalid <= ro_m_axi_awvalid;
    end 
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_m_axi_wdata <= 'd0;
    else if(ro_m_axi_wdata == P_LEN - 1 && w_w_act)
        ro_m_axi_wdata <= 'd0;
    else if(w_w_act)
        ro_m_axi_wdata <= ro_m_axi_wdata + 1;
    else 
        ro_m_axi_wdata <= ro_m_axi_wdata;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_m_axi_wvalid <= 'd0;
    else if(ro_m_axi_wdata == P_LEN - 1 && w_w_act)
        ro_m_axi_wvalid <= 'd0;
    else if(w_aw_act)       
        ro_m_axi_wvalid <= 'd1;
    else 
        ro_m_axi_wvalid <= ro_m_axi_wvalid;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_m_axi_wlast <= 'd0;
    else if(ro_m_axi_wdata == P_LEN - 1 && w_w_act)
        ro_m_axi_wlast <= 'd0;
    else if(ro_m_axi_wdata == P_LEN - 2)   
        ro_m_axi_wlast <= 'd1;
    else 
        ro_m_axi_wlast <= ro_m_axi_wlast;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_m_axi_wstrb <= 4'b1111;
    else 
        ro_m_axi_wstrb <= 4'b1111;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_m_axi_bready <= 'd0;
    else if(w_br_act)
        ro_m_axi_bready <= 'd0;
    else if(ro_m_axi_wlast)
        ro_m_axi_bready <= 'd1;
    else 
        ro_m_axi_bready <= ro_m_axi_bready;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        ro_m_axi_arid    <= 'd0;
        ro_m_axi_araddr  <= 'd0;
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
        ro_m_axi_araddr  <= 'd0;
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
        ro_m_axi_araddr  <= 'd0;
        ro_m_axi_arlen   <= P_LEN - 1;
        ro_m_axi_arsize  <= 3'b010;//4byte  
        ro_m_axi_arburst <= 'd1;
        ro_m_axi_arlock  <= 'd0;
        ro_m_axi_arcache <= 4'b0010;
        ro_m_axi_arprot  <= 'd0;
        ro_m_axi_arqos   <= 'd0;
        ro_m_axi_arvalid <= 'd1;
    end else begin
        ro_m_axi_arid    <= ro_m_axi_arid   ;
        ro_m_axi_araddr  <= ro_m_axi_araddr ;
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

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_m_axi_rready <= 'd0;
    else if(r_read_cnt == P_LEN - 1 && w_r_act)
        ro_m_axi_rready <= 'd0;
    else if(w_ar_act)
        ro_m_axi_rready <= 'd1;
    else 
        ro_m_axi_rready <= ro_m_axi_rready;
end

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
        ri_m_axi_rvalid <= m_axi_rvalid;
    end
end

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
endmodule
