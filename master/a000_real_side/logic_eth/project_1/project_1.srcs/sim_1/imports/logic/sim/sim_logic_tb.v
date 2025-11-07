`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/18 01:57:21
// Design Name: 
// Module Name: sim_logic_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: logic的pc->数据发放到模块顶层参数验证
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sim_pc_2_logic_tb();

reg clk,rst;
reg protocol_clk;
initial begin
    clk = 0;
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


reg [7 :0]  r_udma_tx_data  ;
reg         r_udma_tx_valid ;

wire    w_uart_rx ;
wire    w_uart_tx ;

wire   [7:0] w_uart_tx_data  ;
wire    w_uart_tx_valid ;
wire    w_uart_tx_ready ;

wire    w_uart_clk;
wire    w_uart_rst;

//uart协议驱动
uart_drive#(
    .P_SYSTEM_CLK                       (50_000_000             ),   //输入时钟频率
    .P_UART_BUADRATE                    (115200                 ),   //波特率
    .P_UART_DATA_WIDTH                  (8                      ),   //数据宽度
    .P_UART_STOP_WIDTH                  (1                      ),   //1或者2
    .P_UART_CHECK                       (0                      )    //None=0 Odd-1 Even-2
)
uart_drive_U0
(                  
    .i_clk                              (clk            ),
    .i_rst                              (rst            ),  

    .i_uart_rx                          (w_uart_rx             ),
    .o_uart_tx                          (w_uart_tx             ),

    .i_user_tx_data                     (w_uart_tx_data         ),
    .i_user_tx_valid                    (w_uart_tx_valid        ),
    .o_user_tx_ready                    (w_uart_tx_ready        ),
    .o_user_rx_data                     (         ),
    .o_user_rx_valid                    (         ),

    .o_user_clk                         (w_uart_clk             ),
    .o_user_rst                         (w_uart_rst             ) 
);

//uart DMA引擎
Uart_DMA Uart_DMA_u0(
    .i_clk                              (w_uart_clk             ),
    .i_rst                              (w_uart_rst             ),

    .i_uart_rx_data                     (         ),
    .i_uart_rx_valid                    (         ),
    .o_uart_tx_data                     (w_uart_tx_data        ),
    .o_uart_tx_valid                    (w_uart_tx_valid        ),
    .i_uart_tx_ready                    (w_uart_tx_ready        ),

    .o_user_rx_data                     (         ),
    .o_user_rx_valid                    (         ),
    .i_user_tx_data                     (r_udma_tx_data         ),
    .i_user_tx_valid                    (r_udma_tx_valid        ),
    .i_logic_send_model                 (0     )
);

wire    w_sam_clk ;
wire    w_sam_rst ;
// wire    [7:0]   w_lfsr_value;
// LFSR_Gen_8dout#(
//     .           P_LFSR_INIT (16'hA076 )  
// )LFSR_Gen_8dout(
//     .   i_clk          (w_sam_clk)         ,
//     .   i_rst          (w_sam_rst)         ,
//     .   o_lfsr_value   (w_lfsr_value)        
// );

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

wire    w_pro_uart_tx;
uart_drive uart_drive_pro(                  
    . i_clk             (protocol_clk)              ,
    . i_rst             (rst)              ,  
    . i_uart_rx         ()              ,
    . o_uart_tx         (w_pro_uart_tx)              ,
    . i_user_tx_data    (8'haa)              ,
    . i_user_tx_valid   (1)              ,
    . o_user_tx_ready   ()              ,
    . o_user_rx_data    ()              ,
    . o_user_rx_valid   ()              ,
    . o_user_clk        ()              ,
    . o_user_rst        ()              
);


top top_u0(
    . i_clk       (clk      ), 
    . i_uart_rx   (w_uart_tx),
    . o_uart_tx   (w_uart_rx)
    // . i_logic_data({2'd0,w_pro_uart_tx,w_spi_mosi,w_spi_clk,w_spi_cs,io_iic_sda,o_iic_scl}),
    // . o_sam_clk   (w_sam_clk),
    // . o_sam_rst   (w_sam_rst)
);

reg [16:0]  r_send_len   = 3;
reg [7 :0]  r_channel    = 8'b0000_0001;
reg [2 :0]  r_tri_model  = 3'd2;//上升沿
reg [3 :0]  r_frq_sel    = 4'hf;//25M
reg         r_pulse      = 1;
reg         r_send_model = 0;

initial begin
r_udma_tx_data  <= 'd0;
r_udma_tx_valid <= 'd0;
wait(!rst);
repeat(5)@(posedge w_uart_clk);
udma(r_send_len,r_channel,r_tri_model,r_frq_sel,r_pulse,r_send_model);
end



task udma(input  [16:0] i_send_len,input[7:0]i_channel,input[2:0]i_tri_model,input[3:0]i_frq_sel,input i_pulse,input i_send_model);
begin:hehe
    integer i;
    r_udma_tx_data  <= 'd0;
    r_udma_tx_valid <= 'd0; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= 'd0;//*********
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= 'd0;
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= 'd0;
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= 'd1;
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= i_send_len[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= i_send_len[7 :0];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= i_channel;
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= {1'b0,i_tri_model,i_frq_sel};
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= {6'b0,i_pulse,i_send_model};
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= 'd0;
    r_udma_tx_valid <= 'd0; 
    @(posedge w_uart_clk);
end
endtask




endmodule
