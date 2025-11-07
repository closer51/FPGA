`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/17 12:27:45
// Design Name: 
// Module Name: top
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


module top(
    input           i_clk       , 

    input   [11:0]      i_adc_digit ,
    output              o_adc_clk   ,

    input           i_uart_rx   ,
    output          o_uart_tx   , 
    output              o_dds1_clk  ,
    output              o_dds2_clk  ,
     output [13:0]       o_dds1_data ,
     output [13:0]       o_dds2_data , 

    input               i_rxc               ,
    input  [3 :0]       i_rxd               ,
    input               i_rx_ctl            ,
    output              o_txc               ,
    output [3 :0]       o_txd               ,
    output              o_tx_ctl            ,

    input               i_1_rxc               ,
    input  [3 :0]       i_1_rxd               ,
    input               i_1_rx_ctl            ,
    output              o_1_txc               ,
    output [3 :0]       o_1_txd               ,
    output              o_1_tx_ctl            ,

    output              o_spi_cs            ,
    output              o_spi_mosi          ,
    input               i_spi_miso          ,
    output [1 :0]       o_spi_wp_hold       ,//flash接口

    output [13:0]       DDR3_0_addr         ,
    output [2 :0]       DDR3_0_ba           ,
    output              DDR3_0_cas_n        ,
    output [0 :0]       DDR3_0_ck_n         ,    
    output [0 :0]       DDR3_0_ck_p         ,
    output [0 :0]       DDR3_0_cke          ,
    output [0 :0]       DDR3_0_cs_n         ,
    output [3 :0]       DDR3_0_dm           ,
    inout  [31:0]       DDR3_0_dq           ,
    inout  [3 :0]       DDR3_0_dqs_n        ,
    inout  [3 :0]       DDR3_0_dqs_p        ,
    output [0 :0]       DDR3_0_odt          ,
    output              DDR3_0_ras_n        ,
    output              DDR3_0_reset_n      ,
    output              DDR3_0_we_n        
);

assign o_spi_wp_hold = 2'b11            ;//关闭flash的wp与hold



/***************function**************/

/***************parameter*************/
parameter   P_SEND_LEN = 16'd1048;//总长度  x+48
/***************port******************/             

/***************mechine***************/

/***************reg*******************/

/***************wire******************/
wire                    w_locked;
wire                    w_locked_1;
wire                    w_clk_125Mhz         ;
wire                    w_clk_200Mhz         ;
wire                    w_udp_clk            ;
wire                    w_udp_clk_rst         ;
wire                    w_clk_100Mhz         ;
wire                    w_clk_100Mhz_rst     ;
wire                    w_clk_50Mhz         ;
wire                    w_clk_50Mhz_rst     ;
wire                    w_clk_50Mhz_180P    ;
wire                    w_clk_5Mhz         ;
wire                    w_clk_5Mhz_rst     ; 
wire                    w_clk_100khz         ;
wire                    w_clk_100khz_rst     ; 
wire                    w_clk_5Mhz_180p         ;           

 

wire                    w_uart_clk;
wire                    w_uart_rst;
wire [7 :0]             w_uart_tx_data      ;
wire                    w_uart_tx_valid     ;
wire                    w_uart_tx_ready     ;
wire [7 :0]             w_uart_rx_data      ;
wire                    w_uart_rx_valid     ;

wire          w_uart_logic_send_model   ;
wire          w_uart_logic_pulse        ;
wire  [3 :0]  w_uart_logic_frq_sel      ;
wire  [2 :0]  w_uart_logic_trig_model   ;
wire  [7 :0]  w_uart_logic_trig_channel ;

wire        w_logic_ready   ;

 wire                 w_dds1_run         ;
 wire                 w_dds1_run_vld     ;
 wire      [2:0]      w_dds1_type        ;
 wire                 w_dds1_type_vld    ;
 wire      [23:0]     w_dds1_frq         ;
 wire                 w_dds1_frq_vld     ;
 wire      [11:0]     w_dds1_amp         ;
 wire                 w_dds1_amp_vld     ;
 wire      [12:0]     w_dds1_p2p         ;
 wire                 w_dds1_p2p_vld     ;
 wire      [12:0]     w_dds1_offset      ;
 wire                 w_dds1_offset_vld  ;
 wire      [11:0]     w_dds1_phase       ;
 wire                 w_dds1_phase_vld   ;
 wire      [9:0]      w_dds1_duty        ;
 wire                 w_dds1_duty_vld    ;

wire                 w_dds2_run         ;
wire                 w_dds2_run_vld     ;
wire      [2:0]      w_dds2_type        ;
wire                 w_dds2_type_vld    ;
wire      [23:0]     w_dds2_frq         ;
wire                 w_dds2_frq_vld     ;
wire      [11:0]     w_dds2_amp         ;
wire                 w_dds2_amp_vld     ;
wire      [12:0]     w_dds2_p2p         ;
wire                 w_dds2_p2p_vld     ;
wire      [12:0]     w_dds2_offset      ;
wire                 w_dds2_offset_vld  ;
wire      [11:0]     w_dds2_phase       ;
wire                 w_dds2_phase_vld   ;
wire      [9:0]      w_dds2_duty        ;
wire                 w_dds2_duty_vld    ;

wire    [7 :0]       w_udma_rx_data     ;
wire                 w_udma_rx_valid    ;
wire                 w_udma_rx_last     ;
wire    [15:0]       w_udma_rx_len      ;
wire    [7 :0]       w_user_tx_data     ;
wire                 w_user_tx_valid    ;

wire                 w_udma_post_axis_valid;
wire                 w_udma_post_axis_last ;

wire     [7 :0]      w_sam_data     ;
wire                 w_sam_data_vld ;
wire                 w_sam_data_last;

wire    [13:0]       w_dds1_data;//正常dds
wire    [13:0]       w_dds2_data;//正常dds
wire    [13:0]      w_custon_dds1_data;
wire    [13:0]      w_custon_dds2_data;

reg             r_dds_out_mode;
/***************assign****************/
assign  o_dds1_clk = w_clk_50Mhz_180P;
assign  o_dds2_clk = w_clk_50Mhz_180P;

assign  o_dds1_data =  r_dds_out_mode?w_dds1_data:w_custon_dds1_data;
assign  o_dds2_data =  r_dds_out_mode?w_dds2_data:w_custon_dds2_data;






/***************component*************/
/*--------------时钟管理模块------------*/
mmcm mmcm_u0
(
 .clk_out1  (w_clk_100Mhz   ),
 .clk_out2  (w_clk_50Mhz    ), 
 .clk_out3  (w_clk_50Mhz_180P     ),   
 .locked    (w_locked       ),      
 .clk_in1   (i_clk          )         
);      
 

wire    w_clk_125Mhz_180p;
mmcm_125 mmcm_125_u0
 ( 
  .clk_out1 (w_clk_125Mhz   ),     
  .clk_out2 (w_clk_200Mhz   ),      
  .clk_out3 (w_clk_125Mhz_180p   ),      
  .locked   (w_locked_1     ),       
  .clk_in1  (w_clk_100Mhz   )
);

CLK_DIV_module#(
    .       P_CLK_DIV_CNT (10)      //最大为65535
)CLK_DIV_module_u0(
    .     i_clk        (w_clk_50Mhz     )       ,//输入时钟
    .     i_rst        (w_clk_50Mhz_rst )       ,//high value
    .     o_clk_div    (w_clk_5Mhz      )        //分频后的时钟  1M
);


rst_gen_module#(
    .       P_RST_CYCLE     (50)    
)rst_gen_module_125M_rst
(
    .          i_clk (w_udp_clk      )                  ,
    .          o_rst (w_udp_clk_rst  )                  
);

rst_gen_module#(
    .       P_RST_CYCLE     (10)    
)rst_gen_module_100M_rst
(
    .          i_clk (w_clk_100Mhz      )                  ,
    .          o_rst (w_clk_100Mhz_rst  )                  
);

    

CLK_DIV_module#(
    .       P_CLK_DIV_CNT (50)      //最大为65535
)CLK_DIV_module_100k_u0(
    .     i_clk        (w_clk_50Mhz     )       ,//输入时钟
    .     i_rst        (w_clk_50Mhz_rst )       ,//high value
    .     o_clk_div    (w_clk_100khz      )        //分频后的时钟  1M
);

rst_gen_module#(
    .       P_RST_CYCLE     (10)    
)rst_gen_module_50M_rst
(
    .          i_clk (w_clk_100khz       )                  ,
    .          o_rst (w_clk_100khz_rst   )                  
);




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
    .i_clk                              (w_clk_50Mhz            ),
    .i_rst                              (w_clk_50Mhz_rst        ),  

    .i_uart_rx                          (i_uart_rx              ),
    .o_uart_tx                          (o_uart_tx              ),

    .i_user_tx_data                     (w_uart_tx_data         ),
    .i_user_tx_valid                    (w_uart_tx_valid        ),
    .o_user_tx_ready                    (w_uart_tx_ready        ),
    .o_user_rx_data                     (w_uart_rx_data         ),
    .o_user_rx_valid                    (w_uart_rx_valid        ),

    .o_user_clk                         (w_uart_clk             ),
    .o_user_rst                         (w_uart_rst             ) 
);
wire    [15:0]       w_sam_post_axis_user; 
wire                 w_sam_post_axis_last; 
//uart DMA引擎
Uart_DMA Uart_DMA_u0(
    .i_clk                              (w_uart_clk             ),
    .i_rst                              (w_uart_rst             ),
    .i_uart_rx_data                     (w_uart_rx_data         ),
    .i_uart_rx_valid                    (w_uart_rx_valid        ),
    .o_uart_tx_data                     (w_uart_tx_data        ),
    .o_uart_tx_valid                    (w_uart_tx_valid        ),
    .i_uart_tx_ready                    (w_uart_tx_ready        ),
    .o_user_rx_data                     (w_udma_rx_data         ),
    .o_user_rx_valid                    (w_udma_rx_valid        ),
    .o_user_rx_last                     (w_udma_rx_last       ),
    .o_user_rx_len                      (w_udma_rx_len        ),
    .i_user_tx_data                     (w_user_tx_data         ),
    .i_user_tx_valid                    (w_user_tx_valid        ),
    .i_logic_send_model                 (w_uart_logic_send_model     )
);
 
   
 
  

uart_type_spilt uart_type_spilt_u0(
    . i_clk                  (w_uart_clk            ),
    . i_rst                  (w_uart_rst            ),
    . i_udma_data            (w_udma_rx_data        ),
    . i_udma_vld             (w_udma_rx_valid       ),
    
    . o_logic_pulse          (w_uart_logic_pulse         ), 
    . o_logic_frq_sel        (w_uart_logic_frq_sel       ),
    . o_logic_trig_model     (w_uart_logic_trig_model    ),
    . o_logic_trig_channel   (w_uart_logic_trig_channel  ),
    . o_logic_send_model     (w_uart_logic_send_model    ),

    . o_dds1_run             (w_dds1_run            ),//开关
    . o_dds1_run_vld         (w_dds1_run_vld        ),
    . o_dds1_type            (w_dds1_type           ),//类型   //8种
    . o_dds1_type_vld        (w_dds1_type_vld       ), 
    . o_dds1_frq             (w_dds1_frq            ),//频率   120/30=4M  //算5m  23bit -> 又因为只精确到100hz，所以5M对应50000-》16bit，
    . o_dds1_frq_vld         (w_dds1_frq_vld        ),
    . o_dds1_amp             (w_dds1_amp            ),//幅值      //3000->12bit
    . o_dds1_amp_vld         (w_dds1_amp_vld        ),
    . o_dds1_p2p             (w_dds1_p2p            ),//峰峰值        //6000->13bit
    . o_dds1_p2p_vld         (w_dds1_p2p_vld        ),    
    . o_dds1_offset          (w_dds1_offset         ),//直流偏移  //6000->13bit
    . o_dds1_offset_vld      (w_dds1_offset_vld     ),
    . o_dds1_phase           (w_dds1_phase          ),//相位   3600->12bit
    . o_dds1_phase_vld       (w_dds1_phase_vld      ),  
    . o_dds1_duty            (w_dds1_duty           ),//占空比  //1000-》10bit
    . o_dds1_duty_vld        (w_dds1_duty_vld       ),

    . o_dds2_run             (w_dds2_run            ),
    . o_dds2_run_vld         (w_dds2_run_vld        ),
    . o_dds2_type            (w_dds2_type           ),
    . o_dds2_type_vld        (w_dds2_type_vld       ),
    . o_dds2_frq             (w_dds2_frq            ),
    . o_dds2_frq_vld         (w_dds2_frq_vld        ),
    . o_dds2_amp             (w_dds2_amp            ),
    . o_dds2_amp_vld         (w_dds2_amp_vld        ),
    . o_dds2_p2p             (w_dds2_p2p            ),
    . o_dds2_p2p_vld         (w_dds2_p2p_vld        ),
    . o_dds2_offset          (w_dds2_offset         ),
    . o_dds2_offset_vld      (w_dds2_offset_vld     ),
    . o_dds2_phase           (w_dds2_phase          ),
    . o_dds2_phase_vld       (w_dds2_phase_vld      ),
    . o_dds2_duty            (w_dds2_duty           ),
    . o_dds2_duty_vld        (w_dds2_duty_vld       )

);
// /*-------start------关于logic的两个cdc-------------------------------*/
wire    w_pro_uart_tx;

uart_drive_data_gen uart_drive_data_gen(                  
    . i_clk             (w_clk_50Mhz       )              ,
    . i_rst             (w_clk_50Mhz_rst   )              ,  
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

wire    w_spi_clk  ;
wire    w_spi_cs   ;
wire    w_spi_mosi ; 


flash_drive flash_drive(
    .i_clk                   (w_clk_100khz    ),
    .i_rst                   (w_clk_100khz_rst), 
    .i_operation_type        (2'd2          ),//操作类型
    .i_operation_addr        (24'h55aa55    ),//操作地址
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


wire    o_iic_scl ;
wire    io_iic_sda;

iic_drive#(
    .           P_ADDR_WIDTH (16)                     
)iic_drive(              
    .  i_clk                  (w_clk_100khz     ),//模块输入时钟
    .  i_rst                  (w_clk_100khz_rst ),//模块输入复位-高有效 
    .  i_drive                (7'b0011_110          ),//用户输入设备地址
    .  i_operation_addr       (16'h1234 ),//用户输入存储地址
    .  i_operation_len        (1  ),//用户输入读写长度
    .  i_operation_type       (1 ),//用户输入操作类型
    .  i_opeartion_valid      (1),//用户输入有效信号
    .  o_operation_ready      (w_operation_ready),//用户输出准备信号
    .  i_write_data           (8'h56),//用户输入写数据
    .  o_write_req            (w_write_req ),//用户写数据请求信号
    .  o_read_data            (),//输出IIC读到的数据
    .  o_read_valid           (),//输出IIC读数据有效 
    .  o_iic_scl              (o_iic_scl ),//IIC的时钟
    .  io_iic_sda             (io_iic_sda) //IIC的双向数据项
);


wire        [7 :0]  i_logic_data;
assign          i_logic_data = {2'd0,w_pro_uart_tx,w_spi_mosi,w_spi_clk,w_spi_cs,io_iic_sda,o_iic_scl};

wire    w_sam_clk;
wire    w_sam_rst;

wire                 w_sam_data_ready;//废线


assign  w_sam_clk = o_sam_clk ;
assign  w_sam_rst = o_sam_rst ;

wire    [15:0]  w_sam_data_len;
assign w_sam_data_len = P_SEND_LEN;
AXIS_BUF_2CLK_8X2048 cdc_logic_2_udma(
    . i_per_clk           (w_sam_clk            ),
    . i_per_rst           (w_sam_rst            ),
    . i_per_axis_data     (w_sam_data           ),
    . i_per_axis_user     (w_sam_data_len       ),
    . i_per_axis_valid    (w_sam_data_vld       ),
    . i_per_axis_last     (w_sam_data_last      ),
    . o_per_axis_ready    (w_sam_data_ready     ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_uart_clk           ),
    . i_post_rst          (w_uart_rst           ),
    . o_post_axis_data    (w_user_tx_data       ),
    . o_post_axis_user    (w_sam_post_axis_user ),
    . o_post_axis_valid   (w_user_tx_valid      ),
    . o_post_axis_last    (w_sam_post_axis_last ),
    . i_post_axis_ready   (1                    )           
);

wire  [3 :0]       w_logic_frq_sel         ;
wire  [2 :0]       w_logic_trig_model      ;
wire  [7 :0]       w_logic_trig_channel    ;
wire   [15:0]  w_udma_2_logic_post_axis_data ;
wire           w_udma_2_logic_post_axis_valid;

assign  w_logic_frq_sel      = w_udma_2_logic_post_axis_data[15:12];
assign  w_logic_trig_model   = w_udma_2_logic_post_axis_data[11:9];
assign  w_logic_trig_channel = w_udma_2_logic_post_axis_data[8:1];

AXIS_BUF_2CLK_16X16 cdc_udma_2_logic(
    . i_per_clk           (w_uart_clk               ),
    . i_per_rst           (w_uart_rst               ),
    . i_per_axis_data     ({w_uart_logic_frq_sel,w_uart_logic_trig_model,w_uart_logic_trig_channel,w_uart_logic_pulse}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_uart_logic_pulse       ),
    . i_per_axis_last     (w_uart_logic_pulse       ),
    . o_per_axis_ready    (                         ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_clk_50Mhz              ),
    . i_post_rst          (w_clk_50Mhz_rst          ),
    . o_post_axis_data    (w_udma_2_logic_post_axis_data),
    . o_post_axis_user    (                         ),
    . o_post_axis_valid   (w_udma_2_logic_post_axis_valid),
    . o_post_axis_last    (                         ),
    . i_post_axis_ready   (1'd1                        )           
);

// /*-------end--------关于logic的两个cdc-------------------------------*/
logic_top #(
    .P_SEND_LEN(P_SEND_LEN-48)//需要减去传参长度 16*3=48
)logic_top_u0(
    . i_clk               (w_clk_50Mhz                    ),
    . i_rst               (w_clk_50Mhz_rst                ), 
    . i_logic_pulse       (w_udma_2_logic_post_axis_valid ),
    . i_logic_frq_sel     (w_logic_frq_sel                ),
    . i_logic_trig_model  (w_logic_trig_model             ),
    . i_logic_trig_channel(w_logic_trig_channel           ),
    . o_logic_ready       (w_logic_ready        ),//这个ready信号不能单独作判断条件，不好！！ 要加上其他条件进行流控
    . i_logic_data        (i_logic_data         ),
    . o_sam_data          (w_sam_data           ),
    . o_sam_data_vld      (w_sam_data_vld       ),
    . o_sam_data_last     (w_sam_data_last      ),
    . o_sam_clk           (o_sam_clk            ),
    . o_sam_rst           (o_sam_rst            )
);



// /*-------start--------关于dds1的多个cdc-------------------------------*/
 wire   [15:0]  w_dds1_post_axis_data_run_type      ;
 wire           w_dds1_post_axis_data_run_type_vld  ;
 wire   [15:0]  w_dds1_post_axis_data_frq_L           ;
 wire           w_dds1_post_axis_data_frq_L_vld       ;
 wire   [15:0]  w_dds1_post_axis_data_frq_H           ;
 wire           w_dds1_post_axis_data_frq_H_vld       ;
 wire   [23:0]  w_dds1_post_axis_data_frq_real          ;
 wire   [15:0]  w_dds1_post_axis_data_amp           ;
 wire           w_dds1_post_axis_data_amp_vld       ;
 wire   [15:0]  w_dds1_post_axis_data_offset        ;
 wire           w_dds1_post_axis_data_offset_vld    ;
 wire   [15:0]  w_dds1_post_axis_data_phase         ;
 wire           w_dds1_post_axis_data_phase_vld     ;
 wire   [15:0]  w_dds1_post_axis_data_duty          ;
 wire           w_dds1_post_axis_data_duty_vld      ;

assign  w_dds1_post_axis_data_frq_real = {w_dds1_post_axis_data_frq_H[7:0],w_dds1_post_axis_data_frq_L};

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds1_1(
    . i_per_clk           (w_uart_clk               ),
    . i_per_rst           (w_uart_rst               ),
    . i_per_axis_data     ( {12'd0,w_dds1_run,w_dds1_type}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),//因为我的报文w_dds2_duty_vld在最后，所以都用此信号同时更新，没有问题
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_clk_50Mhz              ),
    . i_post_rst          (w_clk_50Mhz_rst          ),
    . o_post_axis_data    (w_dds1_post_axis_data_run_type),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds1_post_axis_data_run_type_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
    

    


AXIS_BUF_2CLK_16X16 cdc_udma_2_dds1_2(
    . i_per_clk           (w_uart_clk               ),
    . i_per_rst           (w_uart_rst               ),
    . i_per_axis_data     ( w_dds1_frq[15:0]),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_clk_50Mhz              ),
    . i_post_rst          (w_clk_50Mhz_rst          ),
    . o_post_axis_data    (w_dds1_post_axis_data_frq_L),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds1_post_axis_data_frq_L_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
AXIS_BUF_2CLK_16X16 cdc_udma_2_dds1_22(
    . i_per_clk           (w_uart_clk               ),
    . i_per_rst           (w_uart_rst               ),
    . i_per_axis_data     ( {8'd0,w_dds1_frq[23:16]}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_clk_50Mhz              ),
    . i_post_rst          (w_clk_50Mhz_rst          ),
    . o_post_axis_data    (w_dds1_post_axis_data_frq_H),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds1_post_axis_data_frq_H_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds1_3(
    . i_per_clk           (w_uart_clk               ),
    . i_per_rst           (w_uart_rst               ),
    . i_per_axis_data     ( {4'd0,w_dds1_amp}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_clk_50Mhz              ),
    . i_post_rst          (w_clk_50Mhz_rst          ),
    . o_post_axis_data    (w_dds1_post_axis_data_amp),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds1_post_axis_data_amp_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
    

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds1_4(
    . i_per_clk           (w_uart_clk               ),
    . i_per_rst           (w_uart_rst               ),
    . i_per_axis_data     ( {3'd0,w_dds1_offset}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_clk_50Mhz             ),
    . i_post_rst          (w_clk_50Mhz_rst         ),
    . o_post_axis_data    (w_dds1_post_axis_data_offset),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds1_post_axis_data_offset_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
    

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds1_5(
    . i_per_clk           (w_uart_clk               ),
    . i_per_rst           (w_uart_rst               ),
    . i_per_axis_data     ( {4'd0,w_dds1_phase}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_clk_50Mhz               ),
    . i_post_rst          (w_clk_50Mhz_rst           ),
    . o_post_axis_data    (w_dds1_post_axis_data_phase),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds1_post_axis_data_phase_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
    

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds1_6(
    . i_per_clk           (w_uart_clk               ),
    . i_per_rst           (w_uart_rst               ),
    . i_per_axis_data     ( {6'd0,w_dds1_duty}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_clk_50Mhz               ),
    . i_post_rst          (w_clk_50Mhz_rst           ),
    . o_post_axis_data    (w_dds1_post_axis_data_duty),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds1_post_axis_data_duty_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);

 

/*-------end--------关于dds1的多个cdc-------------------------------*/
     
dds_single_channel_top dds_single_channel_top_u0
(     
    .  i_clk              (w_clk_50Mhz                          ),
    .  i_rst              (w_clk_50Mhz_rst                      ),
    .  i_dds_run          (w_dds1_post_axis_data_run_type[3]    ),//开关
    .  i_dds_run_vld      (w_dds1_post_axis_data_run_type_vld   ),
    .  i_dds_type         (w_dds1_post_axis_data_run_type[2:0]  ),//类型   //8种
    .  i_dds_type_vld     (w_dds1_post_axis_data_run_type_vld   ), 
    .  i_dds_frq          (w_dds1_post_axis_data_frq_real            ),//频率   120/30=4M  //算5m  23bit -> 又因为只精确到100hz，所以5M对应50000-》16bit，
    .  i_dds_frq_vld      (w_dds1_post_axis_data_frq_H_vld        ),
    .  i_dds_amp          (w_dds1_post_axis_data_amp[11:0]      ),//幅值      //3000->12bit
    .  i_dds_amp_vld      (w_dds1_post_axis_data_amp_vld        ),   
    .  i_dds_offset       (w_dds1_post_axis_data_offset[12:0]   ),//直流偏移  //6000->13bit
    .  i_dds_offset_vld   (w_dds1_post_axis_data_offset_vld     ),
    .  i_dds_phase        (w_dds1_post_axis_data_phase[11:0]    ),//相位   3600->12bit
    .  i_dds_phase_vld    (w_dds1_post_axis_data_phase_vld      ),  
    .  i_dds_duty         (w_dds1_post_axis_data_duty[9:0]      ),//占空比  //1000-》10bit
    .  i_dds_duty_vld     (w_dds1_post_axis_data_duty_vld       ),
    .  o_dds_data         (w_dds1_data                          ) 
    // .  o_dds_data         (                                     ) 
);
/*---------------------------------------------------------------*/

 
// /*-------start--------关于dds2的多个cdc-------------------------------*/
 wire   [15:0]  w_dds2_post_axis_data_run_type      ;
 wire           w_dds2_post_axis_data_run_type_vld  ; 
 wire   [15:0]  w_dds2_post_axis_data_frq_L           ;
 wire           w_dds2_post_axis_data_frq_L_vld       ;
 wire   [15:0]  w_dds2_post_axis_data_frq_H           ;
 wire           w_dds2_post_axis_data_frq_H_vld       ;
 wire   [23:0]  w_dds2_post_axis_data_frq_real        ;

 wire   [15:0]  w_dds2_post_axis_data_amp           ;
 wire           w_dds2_post_axis_data_amp_vld       ;
 wire   [15:0]  w_dds2_post_axis_data_offset        ;
 wire           w_dds2_post_axis_data_offset_vld    ;
 wire   [15:0]  w_dds2_post_axis_data_phase         ;
 wire           w_dds2_post_axis_data_phase_vld     ;
 wire   [15:0]  w_dds2_post_axis_data_duty          ;
 wire           w_dds2_post_axis_data_duty_vld      ;
 assign w_dds2_post_axis_data_frq_real = {w_dds2_post_axis_data_frq_H[7:0],w_dds2_post_axis_data_frq_L};
AXIS_BUF_2CLK_16X16 cdc_udma_2_dds2_1(
    . i_per_clk           (w_uart_clk               ),
    . i_per_rst           (w_uart_rst               ),
    . i_per_axis_data     ( {12'd0,w_dds2_run,w_dds2_type}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),//因为我的报文w_dds2_duty_vld在最后，所以都用此信号同时更新，没有问题
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_clk_50Mhz              ),
    . i_post_rst          (w_clk_50Mhz_rst          ),
    . o_post_axis_data    (w_dds2_post_axis_data_run_type),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds2_post_axis_data_run_type_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
 
AXIS_BUF_2CLK_16X16 cdc_udma_2_dds2_2(
    . i_per_clk           (w_uart_clk               ),
    . i_per_rst           (w_uart_rst               ),
    . i_per_axis_data     ( w_dds2_frq[15:0]),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_clk_50Mhz              ),
    . i_post_rst          (w_clk_50Mhz_rst          ),
    . o_post_axis_data    (w_dds2_post_axis_data_frq_L),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds2_post_axis_data_frq_L_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds2_22(
    . i_per_clk           (w_uart_clk               ),
    . i_per_rst           (w_uart_rst               ),
    . i_per_axis_data     ( {8'd0,w_dds2_frq}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_clk_50Mhz              ),
    . i_post_rst          (w_clk_50Mhz_rst          ),
    . o_post_axis_data    (w_dds2_post_axis_data_frq_H),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds2_post_axis_data_frq_H_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds2_3(
    . i_per_clk           (w_uart_clk               ),
    . i_per_rst           (w_uart_rst               ),
    . i_per_axis_data     ( {4'd0,w_dds2_amp}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_clk_50Mhz              ),
    . i_post_rst          (w_clk_50Mhz_rst          ),
    . o_post_axis_data    (w_dds2_post_axis_data_amp),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds2_post_axis_data_amp_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
    

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds2_4(
    . i_per_clk           (w_uart_clk               ),
    . i_per_rst           (w_uart_rst               ),
    . i_per_axis_data     ( {3'd0,w_dds2_offset}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_clk_50Mhz             ),
    . i_post_rst          (w_clk_50Mhz_rst         ),
    . o_post_axis_data    (w_dds2_post_axis_data_offset),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds2_post_axis_data_offset_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
    

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds2_5(
    . i_per_clk           (w_uart_clk               ),
    . i_per_rst           (w_uart_rst               ),
    . i_per_axis_data     ( {4'd0,w_dds2_phase}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_clk_50Mhz               ),
    . i_post_rst          (w_clk_50Mhz_rst           ),
    . o_post_axis_data    (w_dds2_post_axis_data_phase),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds2_post_axis_data_phase_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
    

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds2_6(
    . i_per_clk           (w_uart_clk               ),
    . i_per_rst           (w_uart_rst               ),
    . i_per_axis_data     ( {6'd0,w_dds2_duty}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_clk_50Mhz               ),
    . i_post_rst          (w_clk_50Mhz_rst           ),
    . o_post_axis_data    (w_dds2_post_axis_data_duty),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds2_post_axis_data_duty_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);

 

/*-------end--------关于dds1的多个cdc-------------------------------*/
     
dds_single_channel_top dds_single_channel_top_u1
(     
    .  i_clk              (w_clk_50Mhz                          ),
    .  i_rst              (w_clk_50Mhz_rst                      ),
    .  i_dds_run          (w_dds2_post_axis_data_run_type[3]    ),//开关
    .  i_dds_run_vld      (w_dds2_post_axis_data_run_type_vld   ),
    .  i_dds_type         (w_dds2_post_axis_data_run_type[2:0]  ),//类型   //8种
    .  i_dds_type_vld     (w_dds2_post_axis_data_run_type_vld   ), 
    .  i_dds_frq          (w_dds2_post_axis_data_frq_real            ),//频率   120/30=4M  //算5m  23bit -> 又因为只精确到100hz，所以5M对应50000-》16bit，
    .  i_dds_frq_vld      (w_dds2_post_axis_data_frq_H_vld        ),
    .  i_dds_amp          (w_dds2_post_axis_data_amp[11:0]      ),//幅值      //3000->12bit
    .  i_dds_amp_vld      (w_dds2_post_axis_data_amp_vld        ),   
    .  i_dds_offset       (w_dds2_post_axis_data_offset[12:0]   ),//直流偏移  //6000->13bit
    .  i_dds_offset_vld   (w_dds2_post_axis_data_offset_vld     ),
    .  i_dds_phase        (w_dds2_post_axis_data_phase[11:0]    ),//相位   3600->12bit
    .  i_dds_phase_vld    (w_dds2_post_axis_data_phase_vld      ),  
    .  i_dds_duty         (w_dds2_post_axis_data_duty[9:0]      ),//占空比  //1000-》10bit
    .  i_dds_duty_vld     (w_dds2_post_axis_data_duty_vld       ),
    .  o_dds_data         (w_dds2_data                          ) 
    // .  o_dds_data         (                                     ) 
);
/*---------------------------------------------------------------*/


// /*------start---------------udp协议栈大帝-------------------------------*/
reg  [15:0]             r_send_len              ;
reg  [7 :0]             r_send_data             ;
reg                     r_send_last             ;
reg                     r_send_valid            ; 


wire [15:0]             w_send_len              ;
wire [7 :0]             w_send_data             ;
wire                    w_send_last             ;
wire                    w_send_valid            ;
wire                    w_send_ready            ;
wire [15:0]             w_rec_len               ;
wire [7 :0]             w_rec_data              ;
wire                    w_rec_last              ;
wire                    w_rec_valid             ;
wire [7 :0]             w_GMII_tx_data          ;
wire                    w_GMII_tx_valid         ;
wire [7 :0]             w_GMII_rx_data          ;
wire                    w_GMII_rx_valid         ;
wire [1 :0]             w_speed                 ;
wire                    w_link                  ;


//UDP协议栈，时钟为PLL输出的125MHZ
UDP_Stack_Module#(
    .P_TARGET_PORT          (16'd1234                                  ),//PC端口
    .P_SOURCE_PORT          (16'd1234                                  ),//板卡端口
    .P_TARGET_IP            ({8'd192,8'd168,8'd100,8'd99}              ),//PC端IP
    .P_SOURCE_IP            ({8'd192,8'd168,8'd100,8'd100}             ),//板卡IP
    .P_TARTGET_MAC          ({8'hff,8'hff,8'hff,8'hff,8'hff,8'hff}     ),//PC端MAC
    .P_SOURCE_MAC           ({8'h01,8'h02,8'h03,8'h04,8'h05,8'h06}     ),//板卡MAC
    .P_CRC_CHEKC            ( 0                                        ) //CRC使能
)
UDP_Stack_Module_u0
(
    .i_clk                  (w_udp_clk              ),
    .i_rst                  (w_udp_clk_rst          ),
    /*--------info port-------*/    
    .i_target_port          (0                      ),
    .i_target_port_valid    (0                      ),
    .i_source_port          (0                      ),
    .i_source_port_valid    (0                      ),
    .i_target_ip            (0                      ),
    .i_target_ip_valid      (0                      ),
    .i_source_ip            (0                      ),
    .i_source_ip_valid      (0                      ),
    .i_target_mac           (0                      ),
    .i_target_mac_valid     (0                      ),
    .i_source_mac           (0                      ),
    .i_source_mac_valid     (0                      ),
    /*--------data port--------*/
    .i_send_len             (w_send_len             ),//user发送数据长度
    .i_send_data            (w_send_data            ),//user发送数据
    .i_send_last            (w_send_last            ),//user发送结束
    .i_send_valid           (w_send_valid           ),//user发送有效
    // .i_send_len             (r_send_len    ),//user发送数据长度
    // .i_send_data            (r_send_data  ),//user发送数据
    // .i_send_last            (r_send_last  ),//user发送结束
    // .i_send_valid           (r_send_valid),//user发送有效
 
    // .i_send_len             (w_rec_len             ),//user发送数据长度
    // .i_send_data            (w_rec_data            ),//user发送数据
    // .i_send_last            (w_rec_last            ),//user发送结束
    // .i_send_valid           (w_rec_valid           ),//user发送有效

    .o_send_ready           (w_send_ready           ),//user可以发送信号
    .o_rec_len              (w_rec_len              ),//user接收数据长度
    .o_rec_data             (w_rec_data             ),//user接收数据
    .o_rec_last             (w_rec_last             ),//user接收结束
    .o_rec_valid            (w_rec_valid            ),//user接收有效

    .o_source_ip            (),
    .o_source_ip_valid      (),
    .o_rec_src_mac          (),
    .o_rec_src_valid        (),
    .o_crc_error            (),   
    .o_crc_valid            (), 
    /*--------GMII port--------*/
    .o_GMII_data            (w_GMII_tx_data         ),
    .o_GMII_valid           (w_GMII_tx_valid        ),
    .i_GMII_data            (w_GMII_rx_data         ),
    .i_GMII_valid           (w_GMII_rx_valid        )   
);

//UDP协议栈时钟连接到PLL输出的125MHz时钟
assign w_udp_clk = w_clk_125Mhz;
//GMII转RGMII接口模块，时钟为i_rxc
GMII2RGMII_Drive GMII2RGMII_Drive_u0(
    //UDP协议栈输入
    .i_udp_stack_clk        (w_udp_clk              ),
    .i_GMII_data            (w_GMII_tx_data         ),
    .i_GMII_valid           (w_GMII_tx_valid        ),
    .o_GMII_data            (w_GMII_rx_data         ),
    .o_GMII_valid           (w_GMII_rx_valid        ),

    //RGMII接口输出
    .i_rxc                  (i_rxc                  ),
    .i_rxd                  (i_rxd                  ),
    .i_rx_ctl               (i_rx_ctl               ),
    .o_txc                  (o_txc                  ),
    .o_txd                  (o_txd                  ),
    .o_tx_ctl               (o_tx_ctl               ),
    .o_speed                (w_speed                ),
    .o_link                 (w_link                 ),
    .o_user_clk             (                       )
);

  

   



wire [15:0]             w_1_send_len              ;
wire [7 :0]             w_1_send_data             ;
wire                    w_1_send_last             ;
wire                    w_1_send_valid            ;
wire                    w_1_send_ready            ;
(*mark_debug = "true"*)wire [15:0]             w_1_rec_len               ;
(*mark_debug = "true"*)wire [7 :0]             w_1_rec_data              ;
(*mark_debug = "true"*)wire                    w_1_rec_last              ;
(*mark_debug = "true"*)wire                    w_1_rec_valid             ;
wire [7 :0]             w_1_GMII_tx_data          ;
wire                    w_1_GMII_tx_valid         ;
wire [7 :0]             w_1_GMII_rx_data          ;
wire                    w_1_GMII_rx_valid         ;


wire                        w_music_run             ;//主机开关

wire        [7 :0]          w_music_data            ;
wire        [15:0]          w_music_len             ;
wire                        w_music_last            ;
wire                        w_music_valid           ;

 
//UDP协议栈，时钟为PLL输出的125MHZ          //对接从机
UDP_Stack_Module#(
    .P_TARGET_PORT          (16'd8080                                  ),//PC端口
    .P_SOURCE_PORT          (16'd8080                                  ),//板卡端口
    .P_TARGET_IP            ({8'd192,8'd168,8'd100,8'd99}              ),//PC端IP
    .P_SOURCE_IP            ({8'd192,8'd168,8'd100,8'd100}             ),//板卡IP
    .P_TARTGET_MAC          ( {8'hff,8'hff,8'hff,8'hff,8'hff,8'hff}     ),//PC端MAC
    .P_SOURCE_MAC           ( {8'h01,8'h02,8'h03,8'h04,8'h05,8'h06}   ),//板卡MAC

    // .P_TARGET_IP            ( {8'd192,8'd168,8'd100,8'd100}            ),//PC端IP 
    // .P_SOURCE_IP            (  {8'd192,8'd168,8'd100,8'd99}            ),//板卡IP
    // .P_TARTGET_MAC          ( {8'h01,8'h02,8'h03,8'h04,8'h05,8'h06}      ),//PC端MAC
    // .P_SOURCE_MAC           ( {8'hff,8'hff,8'hff,8'hff,8'hff,8'hff}  ),//板卡MAC
    .P_CRC_CHEKC            ( 1                                        ) //CRC使能
)
UDP_Stack_Module_u1
(
    .i_clk                  (w_clk_125Mhz_180p              ),
    .i_rst                  (w_udp_clk_rst          ),
    /*--------info port-------*/    
    .i_target_port          (0                      ),
    .i_target_port_valid    (0                      ),
    .i_source_port          (0                      ),
    .i_source_port_valid    (0                      ),
    .i_target_ip            (0                      ),
    .i_target_ip_valid      (0                      ),
    .i_source_ip            (0                      ),
    .i_source_ip_valid      (0                      ),
    .i_target_mac           (0                      ),
    .i_target_mac_valid     (0                      ),
    .i_source_mac           (0                      ),
    .i_source_mac_valid     (0                      ),
    /*--------data port--------*/ 
    // .i_send_len             (w_music_len  ),//user发送数据长度
    // .i_send_data            (w_music_data ),//user发送数据
    // .i_send_last            (w_music_last ),//user发送结束
    // .i_send_valid           (w_music_valid),//user发送有效
    .i_send_len             (w_1_rec_len             ),//user发送数据长度
    .i_send_data            (w_1_rec_data            ),//user发送数据
    .i_send_last            (w_1_rec_last            ),//user发送结束
    .i_send_valid           (w_1_rec_valid           ),//user发送有效

    .o_send_ready           (w_1_send_ready ),//user可以发送信号
    .o_rec_len              (w_1_rec_len    ),//user接收数据长度
    .o_rec_data             (w_1_rec_data   ),//user接收数据
    .o_rec_last             (w_1_rec_last   ),//user接收结束
    .o_rec_valid            (w_1_rec_valid  ),//user接收有效

    .o_source_ip            (),
    .o_source_ip_valid      (),
    .o_rec_src_mac          (),
    .o_rec_src_valid        (),
    .o_crc_error            (),   
    .o_crc_valid            (), 
    /*--------GMII port--------*/
    .o_GMII_data            (w_1_GMII_tx_data ),
    .o_GMII_valid           (w_1_GMII_tx_valid),
    .i_GMII_data            (w_1_GMII_rx_data ),
    .i_GMII_valid           (w_1_GMII_rx_valid)   
);

 
// //GMII转RGMII接口模块，时钟为i_rxc
GMII2RGMII_Drive GMII2RGMII_Drive_u1(
    //UDP协议栈输入
    .i_udp_stack_clk        (w_clk_125Mhz_180p              ),
    .i_GMII_data            (w_1_GMII_tx_data   ),
    .i_GMII_valid           (w_1_GMII_tx_valid  ),
    .o_GMII_data            (w_1_GMII_rx_data   ),
    .o_GMII_valid           (w_1_GMII_rx_valid  ),

    //RGMII接口输出
    .i_rxc                  (i_1_rxc        ),
    .i_rxd                  (i_1_rxd        ),
    .i_rx_ctl               (i_1_rx_ctl     ),
    .o_txc                  (o_1_txc        ),
    .o_txd                  (o_1_txd        ),
    .o_tx_ctl               (o_1_tx_ctl     ),
    .o_speed                (               ),
    .o_link                 (               ),
    .o_user_clk             ( )
);








// /*-------end-----------------udp协议栈大帝------------------------------*/

// //udp变量集聚地

wire    [7 :0]      w_show_ad_data     ;
wire                w_show_ad_data_last;
wire                w_show_ad_data_vld ;

wire     [15:0]     w_post_tri_coup_mode    ;
wire                w_post_tri_coup_mode_vld;

wire  [7 :0]        w_axis_ad_pck_data  ;
wire  [15:0]        w_axis_ad_pck_user  ;
wire                w_axis_ad_pck_valid ;
wire                w_axis_ad_pck_last  ;

(*mark_debug = "true"*)wire     [7:0]      w_post_adc_axis_data  ;
wire     [15:0]     w_post_adc_axis_user  ;
(*mark_debug = "true"*)wire                w_post_adc_axis_valid ;
wire                w_post_adc_axis_last  ;



// /*-------start-----------------udp报文分发------------------------------*/
 
wire        [7:0]           w_scope_channel         ;
wire        [1:0]           w_trigger_coupling      ;
wire                        w_trigger_coupling_vld  ;
wire        [1:0]           w_trigger_mode          ;
wire                        w_trigger_mode_vld      ;
 
wire        [7 :0]          w_dds_custom_channel    ;
wire        [15:0]          w_dds_custom_len        ;
wire        [7 :0]          w_dds_custom_data       ;
wire                        w_dds_custom_last       ;
wire                        w_dds_custom_valid      ;

wire         [7:0]          w_sm3_axis_data         ;
wire         [15:0]         w_sm3_axis_user         ;
wire                        w_sm3_axis_valid        ;
wire                        w_sm3_axis_last         ;

wire        [255:0]         w_cipher_code_data      ;
wire                        w_cipher_code_vld       ;

wire                        w_uart_min_b_vld        ;
wire  [15:0]                w_uart_min_b_data       ;
wire                        w_uart_max_b_vld        ;
wire  [15:0]                w_uart_max_b_data       ;
wire                        w_uart_8b10_or_nor_vld  ;
wire                        w_uart_8b10_or_nor_data ;

wire    [15:0]              w_updata_len            ;
wire    [7 :0]              w_updata_data           ;
wire                        w_updata_last           ;
wire                        w_updata_valid          ;

UDP_Type_Spilt UDP_Type_Spilt_u0(
    . i_clk                     (w_udp_clk                ) ,
    . i_rst                     (w_udp_clk_rst            ) ,
    . i_udp_len                 (w_rec_len                ) ,
    . i_udp_data                (w_rec_data               ) ,
    . i_udp_last                (w_rec_last               ) ,
    . i_udp_valid               (w_rec_valid              ) ,
    . o_scope_channel           (w_scope_channel          ) ,
    . o_trigger_coupling        (w_trigger_coupling       ) ,
    . o_trigger_coupling_vld    (w_trigger_coupling_vld   ) ,
    . o_trigger_mode            (w_trigger_mode           ) ,  
    . o_trigger_mode_vld        (w_trigger_mode_vld       ) ,
    . o_dds_custom_channel      (w_dds_custom_channel     ) ,
    . o_dds_custom_len          (w_dds_custom_len         ) ,
    . o_dds_custom_data         (w_dds_custom_data        ) ,
    . o_dds_custom_last         (w_dds_custom_last        ) ,
    . o_dds_custom_valid        (w_dds_custom_valid       ) ,
    . o_music_data              (w_music_data             ) ,
    . o_music_len               (w_music_len              ) ,
    . o_music_last              (w_music_last             ) ,
    . o_music_valid             (w_music_valid            ) ,
    . o_music_run               (w_music_run              ),
    . o_cipher_code_data        (w_cipher_code_data       ) ,
    . o_cipher_code_vld         (w_cipher_code_vld        ) ,
    . o_uart_min_b_vld          (w_uart_min_b_vld         ) ,
    . o_uart_min_b_data         (w_uart_min_b_data        ) ,
    . o_uart_max_b_vld          (w_uart_max_b_vld         ) ,
    . o_uart_max_b_data         (w_uart_max_b_data        ) ,
    . o_uart_8b10_or_nor_vld    (w_uart_8b10_or_nor_vld   ) ,
    . o_uart_8b10_or_nor_data   (w_uart_8b10_or_nor_data  ) ,
    . o_updata_len              (w_updata_len             ) ,
    . o_updata_data             (w_updata_data            ) ,
    . o_updata_last             (w_updata_last            ) ,
    . o_updata_valid            (w_updata_valid           )  
);          



always@(posedge w_udp_clk,posedge w_udp_clk_rst)
begin
    if(w_udp_clk_rst)
        r_dds_out_mode <= 'd1;
    else if(w_dds_custom_valid)
        r_dds_out_mode <= 'd0;
    else if(w_dds2_duty_vld) 
        r_dds_out_mode <= 'd1;
    else 
        r_dds_out_mode <= r_dds_out_mode;
end






wire        w_verify_sm3_ok;

UDP_Type_Gether UDP_Type_Gether_u0(
    . i_clk                 (w_udp_clk                ) ,
    . i_rst                 (w_udp_clk_rst            ) ,
    . o_send_len            (w_send_len               ) ,
    . o_send_data           (w_send_data              ) ,
    . o_send_last           (w_send_last              ) ,
    . o_send_valid          (w_send_valid             ) ,
    . i_send_ready          ('d1                      ) ,
    . i_adc_axis_data       (w_post_adc_axis_data     ) ,
    . i_adc_axis_user       (w_post_adc_axis_user     ) ,
    . i_adc_axis_valid      (w_post_adc_axis_valid    ) ,
    // . i_adc_axis_valid      (0    ) ,  
    . i_adc_axis_last       (w_post_adc_axis_last     ) ,
    . o_adc_axis_ready      (                         ) ,
    . i_picture_axis_data  (w_1_rec_data    ) ,
    . i_picture_axis_user  (w_1_rec_len     ) ,
    . i_picture_axis_valid (w_1_rec_valid && w_music_run  ) ,   // 发送开关控制 
    . i_picture_axis_last  (w_1_rec_last    ) ,
    . i_sm3_axis_data        (8'hff           )     ,
    . i_sm3_axis_user        (1 )     ,
    . i_sm3_axis_valid       (w_verify_sm3_ok )     , 
    . i_sm3_axis_last        (w_verify_sm3_ok )     

);
 

// /*-------end------------------udp报文分发------------------------------*/

//sm3

id_sm3_verify id_sm3_verify_u0(
    . i_clk               (w_clk_5Mhz           )    ,
    . i_rst               (w_clk_5Mhz_rst       )    ,
    . i_udp_code_data     (w_cipher_code_data   )    ,
    . i_udp_code_vld      (w_cipher_code_vld    )    ,
    . i_board_card        (16'h8080             )    ,
    . i_board_card_vld    (1                    )    ,
    . o_verify_sm3_ok     (w_verify_sm3_ok      )           
);

// /*-------start------------------scope_udp-------------------------------*/
 

scope_top scope_top_u0(
    .  i_clk                  (w_clk_5Mhz         ),//
    .  i_clk_180p             (~w_clk_5Mhz    ),
    .  i_clk_100MHz           (w_clk_100Mhz        ),
    .  i_rst                  (w_clk_5Mhz_rst     ),//
    .  i_adc_digit            (i_adc_digit         ),
    .  o_adc_clk              (o_adc_clk           ),
    .  i_trigger_coupling     (w_post_tri_coup_mode[3:2]),//0 dc  1 ac  2 hf_reject  3 lf_reject  //触发耦合
    .  i_trigger_coupling_vld (w_post_tri_coup_mode_vld),
    .  i_trigger_mode         (w_post_tri_coup_mode[1:0]),//0 上升沿   1 下降沿 
    .  i_trigger_mode_vld     (w_post_tri_coup_mode_vld),
    .  o_show_ad_data         (w_show_ad_data      ),//1008
    .  o_show_ad_data_last    (w_show_ad_data_last ),
    .  o_show_ad_data_vld     (w_show_ad_data_vld  )    
);

wire        w_uaer_ad_ready;  


scope_UDP_Packet scope_UDP_Packet_u0(
    . i_clk        (w_clk_5Mhz           )  ,
    . i_rst        (w_clk_5Mhz_rst       )  ,
    . i_user_data  (w_show_ad_data        )  ,
    . i_user_valid (w_show_ad_data_vld    )  ,
    . o_uaer_ready (w_uaer_ad_ready       )  ,//作调试指示信号
    . o_axis_data  (w_axis_ad_pck_data    )  ,//1015
    . o_axis_user  (w_axis_ad_pck_user    )  ,
    . o_axis_valid (w_axis_ad_pck_valid   )  ,
    . o_axis_last  (w_axis_ad_pck_last    )  ,
    . i_axis_ready (1                     )  
);
// /*-------end------------------scope_udp-------------------------------*/




// /*-------start------------------scope_cdc-------------------------------*/

AXIS_BUF_2CLK_16X16 cdc_spilt_2_scope_0(
    . i_per_clk           (w_udp_clk                                    ),
    . i_per_rst           (w_udp_clk_rst                                ),
    . i_per_axis_data     ( {12'd0,w_trigger_coupling,w_trigger_mode}   ),
    . i_per_axis_user     (16'd1                                        ),
    . i_per_axis_valid    (w_trigger_coupling_vld                       ),
    . i_per_axis_last     (w_trigger_coupling_vld                       ),
    . o_per_axis_ready    (                                             ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_clk_50Mhz                                  ),
    . i_post_rst          (w_clk_50Mhz_rst                              ),
    . o_post_axis_data    (w_post_tri_coup_mode                         ),
    . o_post_axis_user    (                                             ),
    . o_post_axis_valid   (w_post_tri_coup_mode_vld                     ),
    . o_post_axis_last    (                                             ),
    . i_post_axis_ready   (1'd1                                         )           
);


AXIS_BUF_2CLK_8X2048 cdc_scope_2_gether(
    . i_per_clk           (w_clk_5Mhz              ),
    . i_per_rst           (w_clk_5Mhz_rst          ),
    . i_per_axis_data     (w_axis_ad_pck_data       ),
    . i_per_axis_user     (w_axis_ad_pck_user       ),//这里还没封装好
    . i_per_axis_valid    (w_axis_ad_pck_valid      ),
    . i_per_axis_last     (w_axis_ad_pck_last       ),
    . o_per_axis_ready    (                         ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (w_udp_clk                ),
    . i_post_rst          (w_udp_clk_rst            ),
    . o_post_axis_data    (w_post_adc_axis_data     ),
    . o_post_axis_user    (w_post_adc_axis_user     ),
    . o_post_axis_valid   (w_post_adc_axis_valid    ),
    . o_post_axis_last    (w_post_adc_axis_last     ),
    . i_post_axis_ready   (1                        )           
);
 
// /*-------end------------------scope_cdc-------------------------------*/


// /*-------start------------------远程更新-------------------------------*/
wire [1 :0]         w_updata_operation_type    ;
wire [23:0]         w_updata_operation_addr    ;
wire [8 :0]         w_updata_operation_num     ;
wire                w_updata_operation_valid   ;
wire                w_updata_operation_ready   ;
wire [7 :0]         w_updata_write_data        ;
wire                w_updata_write_sop         ;
wire                w_updata_write_eop         ;
wire                w_updata_write_valid       ;
wire [7 :0]         w_updata_read_data         ;
wire                w_updata_read_sop          ;
wire                w_updata_read_eop          ;
wire                w_updata_read_valid        ;
wire                w_updata_spi_clk                  ;


wire                w_updata_run        ;
wire [7 :0]         w_erx_axis_data     ;
wire [15:0]         w_erx_axis_user     ;
wire                w_erx_axis_last     ;
wire                w_erx_axis_valid    ;
wire [7 :0]         w_etx_axis_data     ;
wire [15:0]         w_etx_axis_user     ;
wire                w_etx_axis_last     ;
wire                w_etx_axis_valid    ;
wire                w_etx_axis_ready    ;

wire [7 :0]             w_axis_updata_reply_data ;
wire [15:0]             w_axis_updata_reply_user ;
wire                    w_axis_updata_reply_valid;
wire                    w_axis_updata_reply_last ;

// CCLK时钟输出原语

STARTUPE2 #(
    .PROG_USR               ("FALSE"        ),
    .SIM_CCLK_FREQ          (10.0           ) 
)       
STARTUPE2_u0 (      
    .CFGCLK                 (               ),//内部振荡器输出到普通逻辑,由用户时钟决定
    .CFGMCLK                (               ),//内部振荡器输出，65MHz 
    .EOS                    (               ),//FPGA启动完成
    .PREQ                   (               ),//PROGRAM_B 输出
    .PACK                   (1              ),//PROGRAM_B 应答输入
    
    .CLK                    (0              ),//时钟
    .GSR                    (0              ),
    .GTS                    (0              ),
    .KEYCLEARB              (1              ),
    
    .USRCCLKO               (w_updata_spi_clk      ),//CCLK输出
    .USRCCLKTS              (0              ),//1=Z 0=O
    .USRDONEO               (1              ),//DONE信号输出
    .USRDONETS              (1              ) //DONE信号三态
);

flash_drive flash_drive_updata_u0(
    .i_clk                  (w_clk_5Mhz        ),
    .i_rst                  (w_clk_5Mhz_rst    ),

    .i_operation_type       (w_updata_operation_type ),//操作类型
    .i_operation_addr       (w_updata_operation_addr ),//操作地址
    .i_operation_num        (w_updata_operation_num  ),//限制用户每次最多写256字节
    .i_operation_valid      (w_updata_operation_valid),//操作握手有效
    .o_operation_ready      (w_updata_operation_ready),//操作握手准备
    .i_write_data           (w_updata_write_data       ),//写数据
    .i_write_sop            (w_updata_write_sop        ),//写数据-开始信号
    .i_write_eop            (w_updata_write_eop        ),//写数据-结束信号
    .i_write_valid          (w_updata_write_valid      ),//写数据-有效信号
    .o_read_data            (w_updata_read_data        ),//读数据
    .o_read_sop             (w_updata_read_sop         ),//读数据-开始信号
    .o_read_eop             (w_updata_read_eop         ),//读数据-结束信号
    .o_read_valid           (w_updata_read_valid       ),//读数据-有效信号

    .o_spi_clk              (w_updata_spi_clk          ),//spi的clk
    .o_spi_cs               (o_spi_cs           ),//spi的片选
    .o_spi_mosi             (o_spi_mosi         ),//spi的主机输出
    .i_spi_miso             (i_spi_miso         )//spi的从机输出
);

Updata_TOP Updata_TOP_u0(
    .i_clk                  (w_clk_5Mhz            ),
    .i_rst                  (w_clk_5Mhz_rst        ),

    .i_erx_axis_data        (w_erx_axis_data    ),
    .i_erx_axis_user        (w_erx_axis_user    ),
    .i_erx_axis_last        (w_erx_axis_last    ),
    .i_erx_axis_valid       (w_erx_axis_valid   ),
    .o_etx_axis_data        (w_etx_axis_data    ),
    .o_etx_axis_user        (w_etx_axis_user    ),
    .o_etx_axis_last        (w_etx_axis_last    ),
    .o_etx_axis_valid       (w_etx_axis_valid   ),
    .i_etx_axis_ready       (w_etx_axis_ready   ),

    .o_updata_run           (w_updata_run       ),

    .o_operation_type       (w_updata_operation_type   ),//操作类型
    .o_operation_addr       (w_updata_operation_addr   ),//操作地址
    .o_operation_num        (w_updata_operation_num    ),//限制用户每次最多写256字节
    .o_operation_valid      (w_updata_operation_valid  ),//操作握手有效
    .i_operation_ready      (w_updata_operation_ready  ),//操作握手准备
    .o_write_data           (w_updata_write_data       ),//写数据
    .o_write_sop            (w_updata_write_sop        ),//写数据-开始信号
    .o_write_eop            (w_updata_write_eop        ),//写数据-结束信号
    .o_write_valid          (w_updata_write_valid      ),//写数据-有效信号
    .i_read_data            (w_updata_read_data        ),//读数据
    .i_read_sop             (w_updata_read_sop         ),//读数据-开始信号
    .i_read_eop             (w_updata_read_eop         ),//读数据-结束信号
    .i_read_valid           (w_updata_read_valid       ) //读数据-有效信号
);

AXIS_BUF_2CLK_8X2048 AXIS_BUF_2CLK_updata_u0(
    .i_per_clk              (w_udp_clk     ),
    .i_per_rst              (w_udp_clk_rst ),
    .i_per_axis_data        (w_updata_data         ),
    .i_per_axis_user        (w_updata_len          ),
    .i_per_axis_valid       (w_updata_valid        ),
    .i_per_axis_last        (w_updata_last         ),
    .o_per_axis_ready       (w_updata__per_axis_ready),

    .i_post_clk             (w_clk_5Mhz             ),
    .i_post_rst             (w_clk_5Mhz_rst         ),
    .o_post_axis_data       (w_erx_axis_data    ),
    .o_post_axis_user       (w_erx_axis_user    ),
    .o_post_axis_valid      (w_erx_axis_valid   ),
    .o_post_axis_last       (w_erx_axis_last    ),
    .i_post_axis_ready      (1'b1                  )           
);
AXIS_BUF_2CLK_8X2048 AXIS_BUF_2CLK_updata_u1(
    .i_per_clk              (w_clk_5Mhz            ),
    .i_per_rst              (w_clk_5Mhz_rst        ),
    .i_per_axis_data        (w_etx_axis_data    ),
    .i_per_axis_user        (w_etx_axis_user    ),
    .i_per_axis_valid       (w_etx_axis_valid   ),
    .i_per_axis_last        (w_etx_axis_last    ),
    .o_per_axis_ready       (                   ),

    .i_post_clk             (w_udp_clk          ),
    .i_post_rst             (w_udp_clk_rst      ),
    .o_post_axis_data       (w_axis_updata_reply_data ),
    .o_post_axis_user       (w_axis_updata_reply_user ),
    .o_post_axis_valid      (w_axis_updata_reply_valid),
    .o_post_axis_last       (w_axis_updata_reply_last ),
    .i_post_axis_ready      (1                  )           
);

 

// // /*-------end------------------远程更新-------------------------------*/

//dds自定义波形 变量区
wire        w_mig_initcomplete  ;
wire        w_ui_clk            ;
wire        w_ui_rst            ;


wire [31:0]   S00_AXI_0_araddr        ;
wire [1 :0]   S00_AXI_0_arburst       ;
wire [3 :0]   S00_AXI_0_arcache       ; 
wire [7 :0]   S00_AXI_0_arlen         ;
wire [0 :0]   S00_AXI_0_arlock        ;
wire [2 :0]   S00_AXI_0_arprot        ;
wire [3 :0]   S00_AXI_0_arqos         ;
wire          S00_AXI_0_arready       ;
wire [2 :0]   S00_AXI_0_arsize        ;
wire          S00_AXI_0_arvalid       ;
wire [31:0]   S00_AXI_0_awaddr        ;
wire [1 :0]   S00_AXI_0_awburst       ;
wire [3 :0]   S00_AXI_0_awcache       ; 
wire [7 :0]   S00_AXI_0_awlen         ;
wire [0 :0]   S00_AXI_0_awlock        ;
wire [2 :0]   S00_AXI_0_awprot        ;
wire [3 :0]   S00_AXI_0_awqos         ;
wire          S00_AXI_0_awready       ;
wire [2 :0]   S00_AXI_0_awsize        ;
wire          S00_AXI_0_awvalid       ; 
wire          S00_AXI_0_bready        ;
wire [1 :0]   S00_AXI_0_bresp         ;
wire          S00_AXI_0_bvalid        ;
wire [31:0]   S00_AXI_0_rdata         ; 
wire          S00_AXI_0_rlast         ;
wire          S00_AXI_0_rready        ;
wire [1 :0]   S00_AXI_0_rresp         ;
wire          S00_AXI_0_rvalid        ;
wire [31:0]   S00_AXI_0_wdata         ;
wire          S00_AXI_0_wlast         ;
wire          S00_AXI_0_wready        ;
wire [3 :0]   S00_AXI_0_wstrb         ;
wire          S00_AXI_0_wvalid        ;

wire [31:0]   S01_AXI_0_araddr        ;
wire [1 :0]   S01_AXI_0_arburst       ;
wire [3 :0]   S01_AXI_0_arcache       ; 
wire [7 :0]   S01_AXI_0_arlen         ;
wire [0 :0]   S01_AXI_0_arlock        ;
wire [2 :0]   S01_AXI_0_arprot        ;
wire [3 :0]   S01_AXI_0_arqos         ;
wire          S01_AXI_0_arready       ;
wire [2 :0]   S01_AXI_0_arsize        ;
wire          S01_AXI_0_arvalid       ;
wire [31:0]   S01_AXI_0_awaddr        ;
wire [1 :0]   S01_AXI_0_awburst       ;
wire [3 :0]   S01_AXI_0_awcache       ; 
wire [7 :0]   S01_AXI_0_awlen         ;
wire [0 :0]   S01_AXI_0_awlock        ;
wire [2 :0]   S01_AXI_0_awprot        ;
wire [3 :0]   S01_AXI_0_awqos         ;
wire          S01_AXI_0_awready       ;
wire [2 :0]   S01_AXI_0_awsize        ;
wire          S01_AXI_0_awvalid       ; 
wire          S01_AXI_0_bready        ;
wire [1 :0]   S01_AXI_0_bresp         ;
wire          S01_AXI_0_bvalid        ;
wire [31:0]   S01_AXI_0_rdata         ; 
wire          S01_AXI_0_rlast         ;
wire          S01_AXI_0_rready        ;
wire [1 :0]   S01_AXI_0_rresp         ;
wire          S01_AXI_0_rvalid        ;
wire [31:0]   S01_AXI_0_wdata         ;
wire          S01_AXI_0_wlast         ;
wire          S01_AXI_0_wready        ;
wire [3 :0]   S01_AXI_0_wstrb         ;
wire          S01_AXI_0_wvalid        ;

 
wire          w_dds0_valid            ;
wire          w_dds1_valid            ;
// /*-------start------------------dds自定义波形-------------------------------*/
    
AXI_Master_Drive AXI_Master_Drive_u0( 
    .i_clk                   (w_udp_clk          ),
    .i_rst                   (w_udp_clk_rst      ),
    .i_init_calib_complete   (w_mig_initcomplete ),
    .m_axi_awid              (S00_AXI_0_awid     ), 
    .m_axi_awaddr            (S00_AXI_0_awaddr   ), 
    .m_axi_awlen             (S00_AXI_0_awlen    ),
    .m_axi_awsize            (S00_AXI_0_awsize   ),           
    .m_axi_awburst           (S00_AXI_0_awburst  ),           
    .m_axi_awlock            (S00_AXI_0_awlock   ),              
    .m_axi_awcache           (S00_AXI_0_awcache  ),          
    .m_axi_awprot            (S00_AXI_0_awprot   ),                  
    .m_axi_awqos             (S00_AXI_0_awqos    ),         
    .m_axi_awvalid           (S00_AXI_0_awvalid  ),                 
    .m_axi_awready           (S00_AXI_0_awready  ),   
    .m_axi_wdata             (S00_AXI_0_wdata    ),                 
    .m_axi_wstrb             (S00_AXI_0_wstrb    ),             
    .m_axi_wlast             (S00_AXI_0_wlast    ),       
    .m_axi_wvalid            (S00_AXI_0_wvalid   ),   
    .m_axi_wready            (S00_AXI_0_wready   ),  
    .m_axi_bid               (S00_AXI_0_bid      ),       
    .m_axi_bresp             (S00_AXI_0_bresp    ),   
    .m_axi_bvalid            (S00_AXI_0_bvalid   ),       
    .m_axi_bready            (S00_AXI_0_bready   ),  
    .m_axi_arid              (S00_AXI_0_arid     ),       
    .m_axi_araddr            (S00_AXI_0_araddr   ),   
    .m_axi_arlen             (S00_AXI_0_arlen    ),
    .m_axi_arsize            (S00_AXI_0_arsize   ),   
    .m_axi_arburst           (S00_AXI_0_arburst  ),       
    .m_axi_arlock            (S00_AXI_0_arlock   ),       
    .m_axi_arcache           (S00_AXI_0_arcache  ),       
    .m_axi_arprot            (S00_AXI_0_arprot   ),       
    .m_axi_arqos             (S00_AXI_0_arqos    ),   
    .m_axi_arvalid           (S00_AXI_0_arvalid  ),   
    .m_axi_arready           (S00_AXI_0_arready  ),  
    .m_axi_rid               (S00_AXI_0_rid      ),       
    .m_axi_rdata             (S00_AXI_0_rdata    ),       
    .m_axi_rresp             (S00_AXI_0_rresp    ),       
    .m_axi_rlast             (S00_AXI_0_rlast    ),       
    .m_axi_rvalid            (S00_AXI_0_rvalid   ),       
    .m_axi_rready            (S00_AXI_0_rready   ),
    .s_axis_data             (w_dds_custom_data),
    .s_axis_user             ({16'd0,w_dds_custom_channel}),
    .s_axis_last             (w_dds_custom_last),
    .s_axis_valid            (w_dds_custom_valid),   
    .s_axis_ready            ()       
);
                      
design_1_wrapper design_1_wrapper_u0
(   .DDR3_0_addr            (DDR3_0_addr            ),
    .DDR3_0_ba              (DDR3_0_ba              ),
    .DDR3_0_cas_n           (DDR3_0_cas_n           ),
    .DDR3_0_ck_n            (DDR3_0_ck_n            ),
    .DDR3_0_ck_p            (DDR3_0_ck_p            ),
    .DDR3_0_cke             (DDR3_0_cke             ),
    .DDR3_0_cs_n            (DDR3_0_cs_n            ),
    .DDR3_0_dm              (DDR3_0_dm              ),
    .DDR3_0_dq              (DDR3_0_dq              ),
    .DDR3_0_dqs_n           (DDR3_0_dqs_n           ),
    .DDR3_0_dqs_p           (DDR3_0_dqs_p           ),
    .DDR3_0_odt             (DDR3_0_odt             ),
    .DDR3_0_ras_n           (DDR3_0_ras_n           ),
    .DDR3_0_reset_n         (DDR3_0_reset_n         ),
    .DDR3_0_we_n            (DDR3_0_we_n            ),

    .S00_ACLK_0             (w_udp_clk              ),
    .S00_AXI_0_araddr       (S00_AXI_0_araddr       ),
    .S00_AXI_0_arburst      (S00_AXI_0_arburst      ),
    .S00_AXI_0_arcache      (S00_AXI_0_arcache      ), 
    .S00_AXI_0_arlen        (S00_AXI_0_arlen        ),
    .S00_AXI_0_arlock       (S00_AXI_0_arlock       ),
    .S00_AXI_0_arprot       (S00_AXI_0_arprot       ),
    .S00_AXI_0_arqos        (S00_AXI_0_arqos        ),
    .S00_AXI_0_arready      (S00_AXI_0_arready      ),
    .S00_AXI_0_arsize       (S00_AXI_0_arsize       ),
    .S00_AXI_0_arvalid      (S00_AXI_0_arvalid      ),
    .S00_AXI_0_awaddr       (S00_AXI_0_awaddr       ),
    .S00_AXI_0_awburst      (S00_AXI_0_awburst      ),
    .S00_AXI_0_awcache      (S00_AXI_0_awcache      ), 
    .S00_AXI_0_awlen        (S00_AXI_0_awlen        ),
    .S00_AXI_0_awlock       (S00_AXI_0_awlock       ),
    .S00_AXI_0_awprot       (S00_AXI_0_awprot       ),
    .S00_AXI_0_awqos        (S00_AXI_0_awqos        ),
    .S00_AXI_0_awready      (S00_AXI_0_awready      ),
    .S00_AXI_0_awsize       (S00_AXI_0_awsize       ),
    .S00_AXI_0_awvalid      (S00_AXI_0_awvalid      ), 
    .S00_AXI_0_bready       (S00_AXI_0_bready       ),
    .S00_AXI_0_bresp        (S00_AXI_0_bresp        ),
    .S00_AXI_0_bvalid       (S00_AXI_0_bvalid       ),
    .S00_AXI_0_rdata        (S00_AXI_0_rdata        ), 
    .S00_AXI_0_rlast        (S00_AXI_0_rlast        ),
    .S00_AXI_0_rready       (S00_AXI_0_rready       ),
    .S00_AXI_0_rresp        (S00_AXI_0_rresp        ),
    .S00_AXI_0_rvalid       (S00_AXI_0_rvalid       ),
    .S00_AXI_0_wdata        (S00_AXI_0_wdata        ),
    .S00_AXI_0_wlast        (S00_AXI_0_wlast        ),
    .S00_AXI_0_wready       (S00_AXI_0_wready       ),
    .S00_AXI_0_wstrb        (S00_AXI_0_wstrb        ),
    .S00_AXI_0_wvalid       (S00_AXI_0_wvalid       ),

    .S01_ACLK_0             (w_ui_clk               ),
    .S01_AXI_0_araddr       (S01_AXI_0_araddr       ),
    .S01_AXI_0_arburst      (S01_AXI_0_arburst      ),
    .S01_AXI_0_arcache      (S01_AXI_0_arcache      ), 
    .S01_AXI_0_arlen        (S01_AXI_0_arlen        ),
    .S01_AXI_0_arlock       (S01_AXI_0_arlock       ),
    .S01_AXI_0_arprot       (S01_AXI_0_arprot       ),
    .S01_AXI_0_arqos        (S01_AXI_0_arqos        ),
    .S01_AXI_0_arready      (S01_AXI_0_arready      ),
    .S01_AXI_0_arsize       (S01_AXI_0_arsize       ),
    .S01_AXI_0_arvalid      (S01_AXI_0_arvalid      ),
    .S01_AXI_0_awaddr       (S01_AXI_0_awaddr       ),
    .S01_AXI_0_awburst      (S01_AXI_0_awburst      ),
    .S01_AXI_0_awcache      (S01_AXI_0_awcache      ), 
    .S01_AXI_0_awlen        (S01_AXI_0_awlen        ),
    .S01_AXI_0_awlock       (S01_AXI_0_awlock       ),
    .S01_AXI_0_awprot       (S01_AXI_0_awprot       ),
    .S01_AXI_0_awqos        (S01_AXI_0_awqos        ),
    .S01_AXI_0_awready      (S01_AXI_0_awready      ),
    .S01_AXI_0_awsize       (S01_AXI_0_awsize       ),
    .S01_AXI_0_awvalid      (S01_AXI_0_awvalid      ), 
    .S01_AXI_0_bready       (S01_AXI_0_bready       ),
    .S01_AXI_0_bresp        (S01_AXI_0_bresp        ),
    .S01_AXI_0_bvalid       (S01_AXI_0_bvalid       ),  
    .S01_AXI_0_rdata        (S01_AXI_0_rdata        ), 
    .S01_AXI_0_rlast        (S01_AXI_0_rlast        ),
    .S01_AXI_0_rready       (S01_AXI_0_rready       ),
    .S01_AXI_0_rresp        (S01_AXI_0_rresp        ),
    .S01_AXI_0_rvalid       (S01_AXI_0_rvalid       ),
    .S01_AXI_0_wdata        (S01_AXI_0_wdata        ),
    .S01_AXI_0_wlast        (S01_AXI_0_wlast        ),
    .S01_AXI_0_wready       (S01_AXI_0_wready       ),
    .S01_AXI_0_wstrb        (S01_AXI_0_wstrb        ),
    .S01_AXI_0_wvalid       (S01_AXI_0_wvalid       ),

    .sys_clk_i_0            (w_clk_200Mhz           ),  
    .init_calib_complete_0  (w_mig_initcomplete     ),
    .sys_rst_0              (0                      ),
    .ui_clk_0               (w_ui_clk               ),
    .ui_clk_sync_rst_0      (w_ui_rst               )    
);

DDR_Ctrl DDR_Ctrl_u0
(
    . i_clk                   (w_ui_clk               ),
    . i_rst                   (w_ui_rst               ),
    . i_init_calib_complete   (w_mig_initcomplete     ),
    . m_axi_awid              (S01_AXI_0_awid         ),
    . m_axi_awaddr            (S01_AXI_0_awaddr       ),
    . m_axi_awlen             (S01_AXI_0_awlen        ),
    . m_axi_awsize            (S01_AXI_0_awsize       ),           
    . m_axi_awburst           (S01_AXI_0_awburst      ),           
    . m_axi_awlock            (S01_AXI_0_awlock       ),              
    . m_axi_awcache           (S01_AXI_0_awcache      ),          
    . m_axi_awprot            (S01_AXI_0_awprot       ),                  
    . m_axi_awqos             (S01_AXI_0_awqos        ),         
    . m_axi_awvalid           (S01_AXI_0_awvalid      ),                 
    . m_axi_awready           (S01_AXI_0_awready      ),   
    . m_axi_wdata             (S01_AXI_0_wdata        ),                 
    . m_axi_wstrb             (S01_AXI_0_wstrb        ),             
    . m_axi_wlast             (S01_AXI_0_wlast        ),       
    . m_axi_wvalid            (S01_AXI_0_wvalid       ),   
    . m_axi_wready            (S01_AXI_0_wready       ),  
    . m_axi_bid               (S01_AXI_0_bid          ),       
    . m_axi_bresp             (S01_AXI_0_bresp        ),   
    . m_axi_bvalid            (S01_AXI_0_bvalid       ),       
    . m_axi_bready            (S01_AXI_0_bready       ),  
    . m_axi_arid              (S01_AXI_0_arid         ),       
    . m_axi_araddr            (S01_AXI_0_araddr       ),   
    . m_axi_arlen             (S01_AXI_0_arlen        ),
    . m_axi_arsize            (S01_AXI_0_arsize       ),   
    . m_axi_arburst           (S01_AXI_0_arburst      ),       
    . m_axi_arlock            (S01_AXI_0_arlock       ),       
    . m_axi_arcache           (S01_AXI_0_arcache      ),       
    . m_axi_arprot            (S01_AXI_0_arprot       ),       
    . m_axi_arqos             (S01_AXI_0_arqos        ),   
    . m_axi_arvalid           (S01_AXI_0_arvalid      ),   
    . m_axi_arready           (S01_AXI_0_arready      ),  
    . m_axi_rid               (S01_AXI_0_rid          ),       
    . m_axi_rdata             (S01_AXI_0_rdata        ),       
    . m_axi_rresp             (S01_AXI_0_rresp        ),       
    . m_axi_rlast             (S01_AXI_0_rlast        ),       
    . m_axi_rvalid            (S01_AXI_0_rvalid       ),       
    . m_axi_rready            (S01_AXI_0_rready       ),
    . i_clk_50M               (w_clk_50Mhz            ),
    . i_rst_50M               (w_clk_50Mhz_rst        ),
    . i_dds_number            (0                      ),
    . i_dss_number_valid      (0                      ),
    . o_dds0_data             (w_custon_dds1_data            ),
    . o_dds0_valid            (),
    . o_dds1_data             (w_custon_dds2_data            ),
    . o_dds1_valid            () 
);
/*-------end--------------------dds自定义波形-------------------------------*/




/***************always****************/




// always@(posedge i_clk, posedge i_rst)
// begin
//     if(i_rst)
//     else if()
//     else 
// end
endmodule
