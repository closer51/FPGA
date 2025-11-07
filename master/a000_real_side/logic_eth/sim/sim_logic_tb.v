`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/18 05:50:07
// Design Name: 
// Module Name: sim_logic_tb
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


module sim_logic_tb();

reg clk,rst;
reg protocol_clk;
initial begin
    clk = 0;
    protocol_clk =0;
end

always
begin
    clk = 0;
    #10;
    clk = 1;
    #10;    
end

always
begin
    protocol_clk = 0;
    #70;
    protocol_clk = 1;
    #70;    
end


initial 
begin
    rst = 1;
    #100 @(posedge clk)rst = 0;
end


wire    o_iic_scl ;
wire    io_iic_sda;
// pullup(o_iic_scl    );
pulldown(io_iic_sda   );

reg     [6 :0]       ri_drive           =7'b0011_110;//0110 1110
reg     [15:0]       ri_operation_addr  =16'h1234;//1010 
reg     [7 :0]       ri_operation_len   =1;
reg     [1 :0]       ri_operation_type  =1;
reg                  ri_opeartion_valid =1;
reg     [7 :0]       ri_write_data      =8'h56;//0101


wire    w_operation_ready;
wire    w_write_req;


iic_drive#(
    .           P_ADDR_WIDTH (16)                     
)iic_drive(              
    .  i_clk                  (protocol_clk),//模块输入时钟
    .  i_rst                  (rst),//模块输入复位-高有效 
    .  i_drive                (ri_drive          ),//用户输入设备地址
    .  i_operation_addr       (ri_operation_addr ),//用户输入存储地址
    .  i_operation_len        (ri_operation_len  ),//用户输入读写长度
    .  i_operation_type       (ri_operation_type ),//用户输入操作类型
    .  i_opeartion_valid      (ri_opeartion_valid),//用户输入有效信号
    .  o_operation_ready      (w_operation_ready),//用户输出准备信号
    .  i_write_data           (ri_write_data),//用户输入写数据
    .  o_write_req            (w_write_req ),//用户写数据请求信号
    .  o_read_data            (),//输出IIC读到的数据
    .  o_read_valid           (),//输出IIC读数据有效 
    .  o_iic_scl              (o_iic_scl ),//IIC的时钟
    .  io_iic_sda             (io_iic_sda) //IIC的双向数据项
);


reg r_logic_pulse;
reg [3:0]r_logic_frq_sel;
wire    w_sam_clk;
wire    w_sam_rst;
// wire    [7:0]        w_lfsr_value;

// LFSR_Gen_8dout#(
//     .           P_LFSR_INIT (16'hA076 )  
// )LFSR_Gen_8dout(
//     .   i_clk          (w_sam_clk)         ,
//     .   i_rst          (w_sam_rst)         ,
//     .   o_lfsr_value   (w_lfsr_value)        
// );


// reg r_operation_valid;
// reg r_write_valid;


wire    w_spi_clk  ;
wire    w_spi_cs   ;
wire    w_spi_mosi ;
wire    w_spi_miso ;

flash_drive flash_drive(
    .i_clk                   (protocol_clk),
    .i_rst                   (rst), 
    .i_operation_type        (2'd2),//操作类型
    .i_operation_addr        (24'h55aa55),//操作地址
    .i_operation_num         (9'd1),//限制用户每次最多写256字节
    .i_operation_valid       (1),//操作握手有效
    .o_operation_ready       (),//操作握手准备
    .i_write_data            (8'haa),//写数据
    .i_write_sop             (1),//写数据-开始信号
    .i_write_eop             (1),//写数据-结束信号
    .i_write_valid           (1),//写数据-有效信号
    .o_read_data             (),//读数据
    .o_read_sop              (),//读数据-开始信号
    .o_read_eop              (),//读数据-结束信号
    .o_read_valid            (),//读数据-有效信号 
    .o_spi_clk               (w_spi_clk ),//spi的clk
    .o_spi_cs                (w_spi_cs  ),//spi的片选
    .o_spi_mosi              (w_spi_mosi),//spi的主机输出
    .i_spi_miso              (w_spi_miso)//spi的从机输出
);

// spi_stream_rx#
// (
//     .                                          BITS_LEN    (8   )   ,    //设置接收bit长度
//     .                                          CPOL        (1'b0)   ,     //时钟极性
//     .                                          CPHA        (1'b0)       //时钟相位
// )spi_stream_rx
// (
//     .    sys_clk            (sam_clk) ,
//     .    rst_n              (~rst) ,
//     .    spi_cs             (w_spi_cs) ,           //spi片选信号
//     .    spi_clk            (w_spi_clk) ,           //spi_clk
//     .    spi_mosi           (w_spi_mosi) ,       //spi_mosi
//     .    rx_spi_data_valid  () ,   //接收到的数据有效信号
//     .    rx_data            ()  ,   //接收到的信号
//     .    spi_data           ()       //接收到的信号
// );


// initial begin 
// r_write_valid <= 'd0;
// r_operation_valid <= 'd0;
// wait(!rst);
// #100;
// @(posedge clk)
// r_write_valid <= 'd1;
// r_operation_valid <= 'd1;
// @(posedge clk);
// r_write_valid <= 'd0;
// r_operation_valid <= 'd0;
// @(posedge clk);
// end


wire    w_uart_tx;
uart_drive uart_drive(                  
    . i_clk             (protocol_clk)              ,
    . i_rst             (rst)              ,  
    . i_uart_rx         ()              ,
    . o_uart_tx         (w_uart_tx)              ,
    . i_user_tx_data    (8'haa)              ,
    . i_user_tx_valid   (1)              ,
    . o_user_tx_ready   ()              ,
    . o_user_rx_data    ()              ,
    . o_user_rx_valid   ()              ,
    . o_user_clk        ()              ,
    . o_user_rst        ()              
);

logic_top logic_top(
    .i_clk                (clk),
    .i_rst                (rst), 
    .i_logic_pulse        (r_logic_pulse), 
    .i_logic_frq_sel      (r_logic_frq_sel),
    .i_logic_trig_model   (3'd2),
    .i_logic_trig_channel (8'b0000_0001),
    .o_logic_ready        (), 
    .i_logic_data         ({2'd0,w_uart_tx,w_spi_mosi,w_spi_clk,w_spi_cs,io_iic_sda,o_iic_scl}),
    .o_sam_data           (),
    .o_sam_data_vld       (),
    .o_sam_data_last      (),
    .o_sam_clk            (w_sam_clk    ),
    .o_sam_rst            (w_sam_rst    )   
);



initial begin 
r_logic_pulse <= 'd0;
r_logic_frq_sel <= 'd0;
wait(!rst);
#200;
// @(posedge clk);
// r_logic_pulse <= 'd1;
// r_logic_frq_sel <= 4'hf;
// @(posedge clk);
// r_logic_pulse <= 'd0;
// r_logic_frq_sel <= 'd0;
// #10000;
@(posedge clk);
r_logic_pulse <= 'd1;
r_logic_frq_sel <=4'hf;
@(posedge clk);
r_logic_pulse <= 'd0;
r_logic_frq_sel <= 'd0;
end


endmodule
