//****************************************Copyright (c)***********************************//
//ԭ�Ӹ����߽�ѧƽ̨��www.yuanzige.com
//����֧�֣�www.openedv.com
//�Ա����̣�http://openedv.taobao.com 
//��ע΢�Ź���ƽ̨΢�źţ�"����ԭ��"����ѻ�ȡZYNQ & FPGA & STM32 & LINUX���ϡ�
//��Ȩ���У�����ؾ���
//Copyright(C) ����ԭ�� 2018-2028
//All rights reserved                                  
//----------------------------------------------------------------------------------------
// File name:           ov5640_udp_pc
// Last modified Date:  2020/2/18 9:20:14
// Last Version:        V1.0
// Descriptions:        OV7725��̫��������Ƶ����ģ��
//----------------------------------------------------------------------------------------
// Created by:          ����ԭ��
// Created date:        2020/2/18 9:20:14
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module ov5640_udp_pc(
    input              sys_clk     ,   //ϵͳʱ��  
    input              sys_rst_n   ,   //ϵͳ��λ�źţ��͵�ƽ��Ч 
    //��̫���ӿ�
    input              eth_rxc     ,   //RGMII��������ʱ��
    input              eth_rx_ctl  ,   //RGMII����������Ч�ź�
    input       [3:0]  eth_rxd     ,   //RGMII��������
    output             eth_txc     ,   //RGMII��������ʱ��    
    output             eth_tx_ctl  ,   //RGMII���������Ч�ź�
    output      [3:0]  eth_txd     ,   //RGMII�������          
    output             eth_rst_n   ,   //��̫��оƬ��λ�źţ��͵�ƽ��Ч    

    //����ͷ�ӿ�                       
    input              cam_pclk     ,  //cmos ��������ʱ��
    input              cam_vsync    ,  //cmos ��ͬ���ź�
    input              cam_href     ,  //cmos ��ͬ���ź�
    input   [7:0]      cam_data     ,  //cmos ����
    output             cam_rst_n    ,  //cmos ��λ�źţ��͵�ƽ��Ч
    output             cam_pwdn     ,  //��Դ����ģʽѡ�� 0������ģʽ 1����Դ����ģʽ
    output             cam_scl      ,  //cmos SCCB_SCL��
    inout              cam_sda         //cmos SCCB_SDA��      
);

 

parameter  H_CMOS_DISP = 11'd640;                  //CMOS�ֱ���--��
parameter  V_CMOS_DISP = 11'd480;                  //CMOS�ֱ���--��	
parameter  TOTAL_H_PIXEL = H_CMOS_DISP + 12'd1216; //ˮƽ�����ش�С
parameter  TOTAL_V_PIXEL = V_CMOS_DISP + 12'd504;  //��ֱ�����ش�С

parameter SLAVE_ADDR = 7'h3c          ; //OV5640��������ַ7'h3c
parameter BIT_CTRL   = 1'b1           ; //OV5640���ֽڵ�ַΪ16λ  0:8λ 1:16λ
parameter CLK_FREQ   = 27'd50_000_000 ; //i2c_driģ�������ʱ��Ƶ�� 
parameter I2C_FREQ   = 20'd250_000    ; //I2C��SCLʱ��Ƶ��,������400KHz

//wire define
 
wire            eth_tx_clk      ;   //��̫������ʱ��
wire            locked          ; 
wire            rst_n           ; 
wire            i2c_dri_clk     ;   //I2C����ʱ��
wire            i2c_done        ;   //I2C��д����ź�
wire   [7:0]    i2c_data_r      ;   //I2C����������
wire            i2c_exec        ;   //I2C�����ź�
wire   [23:0]   i2c_data        ;   //I2Cд��ַ+����
wire            i2c_rh_wl       ;   //I2C��д�����ź�
wire            cam_init_done   ;   //����ͷ����ʼ������ź� 

 
wire            eth_rx_clk      ;   //��̫������ʱ��
wire            udp_tx_start_en ;   //��̫����ʼ�����ź�
wire   [15:0]   udp_tx_byte_num ;   //��̫�����͵���Ч�ֽ���
wire   [7 :0]   udp_tx_data     ;   //��̫�����͵�����    
wire            udp_rec_pkt_done;   //��̫���������ݽ�������ź�
wire            udp_rec_en      ;   //��̫������ʹ���ź�
wire   [31:0]   udp_rec_data    ;   //��̫�����յ�������
wire   [15:0]   udp_rec_byte_num;   //��̫�����յ����ֽڸ���
wire            udp_tx_req      ;   //��̫���������������ź�
wire            udp_tx_done     ;   //��̫����������ź�


wire            w_udp_clk        ;
wire            w_udp_clk_rst    ;
wire            w_clk_50Mhz      ;
wire            w_clk_50Mhz_rst  ;



//*****************************************************
//**                    main code
//*****************************************************

assign  rst_n = sys_rst_n & w_locked;
//��Դ����ģʽѡ�� 0������ģʽ 1����Դ����ģʽ
assign  cam_pwdn  = 1'b0;
assign  cam_rst_n = 1'b1;

mmcm mmcm_u0
(
 .clk_out1  (w_clk_100Mhz   ),
 .clk_out2  (w_clk_50Mhz    ), 
 .clk_out3  (w_clk_5Mhz     ),  
 .clk_out4  (w_clk_50Mhz_180P),    
 .locked    (w_locked       ),      
 .clk_in1   (sys_clk          )         
);      
 

 
mmcm_125 mmcm_125_u0
 ( 
  .clk_out1 (w_clk_125Mhz   ),     
  .clk_out2 (w_clk_200Mhz   ),     // output clk_out2
  .locked   (w_locked_1     ),       
  .clk_in1  (w_clk_100Mhz   )
);

rst_gen_module#(
    .       P_RST_CYCLE     (10)    
)rst_gen_module_50M_rst
(
    .          i_clk (w_clk_50Mhz       )                  ,
    .          o_rst (w_clk_50Mhz_rst   )                  
);

rst_gen_module#(
    .       P_RST_CYCLE     (50)    
)rst_gen_module_125M_rst
(
    .          i_clk (w_udp_clk      )                  ,
    .          o_rst (w_udp_clk_rst  )                  
);


//I2C����ģ��    
i2c_ov5640_rgb565_cfg u_i2c_cfg(
    .clk           (i2c_dri_clk),
    .rst_n         (rst_n),
    .i2c_done      (i2c_done),
    .i2c_data_r    (i2c_data_r),
    .cmos_h_pixel  (H_CMOS_DISP),
    .cmos_v_pixel  (V_CMOS_DISP),
    .total_h_pixel (TOTAL_H_PIXEL),
    .total_v_pixel (TOTAL_V_PIXEL),    
    .i2c_exec      (i2c_exec),
    .i2c_data      (i2c_data),
    .i2c_rh_wl     (i2c_rh_wl),
    .init_done     (cam_init_done)
    );    

//I2C����ģ��
i2c_dri 
   #(
    .SLAVE_ADDR  (SLAVE_ADDR),               //��������
    .CLK_FREQ    (CLK_FREQ  ),              
    .I2C_FREQ    (I2C_FREQ  )                
    ) 
   u_i2c_dri(
    .clk         (w_clk_50Mhz       ),   
    .rst_n       (rst_n),   
    //i2c interface
    .i2c_exec    (i2c_exec  ),   
    .bit_ctrl    (BIT_CTRL  ),   
    .i2c_rh_wl   (i2c_rh_wl ),   
    .i2c_addr    (i2c_data[23:8]),   
    .i2c_data_w  (i2c_data[7:0]),   
    .i2c_data_r  (i2c_data_r),   
    .i2c_done    (i2c_done  ),  
    .i2c_ack     (), 
    .scl         (cam_scl   ),   
    .sda         (cam_sda   ),   
    //user interface
    .dri_clk     (i2c_dri_clk)               //I2C����ʱ��
);

    
(* mark_debug = "true" *)wire        [7 :0]          w_udp_tx_data ;
(* mark_debug = "true" *)wire                        w_udp_tx_vld  ;
(* mark_debug = "true" *)wire                        w_udp_tx_last ;
(* mark_debug = "true" *)wire        [15:0]          w_udp_tx_len  ;
     
//ͼ���װģ��     
img_data_pkt u_img_data_pkt(    
    .rst_n              (rst_n),              
   
    .cam_pclk           (cam_pclk),
    .img_vsync          (cam_vsync),
    .img_data_en        (cam_href),
    .img_data           (cam_data),
    .transfer_flag      (1),            
    .eth_tx_clk         (w_udp_clk      ),
    // .udp_tx_req         (udp_tx_req     ),
    // .udp_tx_done        (udp_tx_done    ),
    // .udp_tx_start_en    (udp_tx_start_en),
    // .udp_tx_data        (udp_tx_data    ),
    // .udp_tx_byte_num    (udp_tx_byte_num)
    .     o_udp_data (w_udp_tx_data  )     ,
    .     o_udp_vld  (w_udp_tx_vld   )     ,
    .     o_udp_last (w_udp_tx_last  )     ,
    .     o_udp_len  (w_udp_tx_len   )        

    );  

// //��̫������ģ��    
// eth_top  #(
//     .BOARD_MAC     (BOARD_MAC),              //��������
//     .BOARD_IP      (BOARD_IP ),          
//     .DES_MAC       (DES_MAC  ),          
//     .DES_IP        (DES_IP   )          
//     )          
//     u_eth_top(          
//     .sys_rst_n       (rst_n     ),           //ϵͳ��λ�źţ��͵�ƽ��Ч            
//     .clk_200m        (clk_200m), 
//     //��̫��RGMII�ӿ�             
//     .eth_rxc         (eth_rxc   ),           //RGMII��������ʱ��
//     .eth_rx_ctl      (eth_rx_ctl),           //RGMII����������Ч�ź�
//     .eth_rxd         (eth_rxd   ),           //RGMII��������
//     .eth_txc         (eth_txc   ),           //RGMII��������ʱ��    
//     .eth_tx_ctl      (eth_tx_ctl),           //RGMII���������Ч�ź�
//     .eth_txd         (eth_txd   ),           //RGMII�������          
//     .eth_rst_n       (eth_rst_n ),           //��̫��оƬ��λ�źţ��͵�ƽ��Ч 

//     .gmii_rx_clk     (eth_rx_clk),
//     .gmii_tx_clk     (eth_tx_clk),       
//     .udp_tx_start_en (udp_tx_start_en),
//     .tx_data         (udp_tx_data),
//     .tx_byte_num     (udp_tx_byte_num),
//     .udp_tx_done     (udp_tx_done),
//     .tx_req          (udp_tx_req ),
//     .rec_pkt_done    (udp_rec_pkt_done),
//     .rec_en          (udp_rec_en      ),
//     .rec_data        (udp_rec_data    ),
//     .rec_byte_num    (udp_rec_byte_num)
//     );
// /*------start---------------udp协议栈大帝-------------------------------*/


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

wire        w_1s_pulse;

timer_1s timer_1s_u0(
    . i_clk       (w_udp_clk        ),   
    . i_rst       (w_udp_clk_rst        ),
    . o_1s_pulse  (w_1s_pulse   )
);


localparam              P_SEND_CNT = 100 ;
localparam              P_SEND_LEN  =   1472;
reg  [15:0] r_send_len   ;
reg  [7:0]  r_send_data  ;
reg         r_send_last  ;
reg         r_send_valid ;
reg  [15:0]         r_send_cnt      ;

     

always@(posedge w_udp_clk,posedge w_udp_clk_rst)
begin
    if(w_udp_clk_rst)
        r_send_cnt <= 'd0;
    else if(r_send_valid)
        r_send_cnt <= r_send_cnt + 1;
    else 
        r_send_cnt <= 'd0;
end

always@(posedge w_udp_clk,posedge w_udp_clk_rst)
begin
    if(w_udp_clk_rst)
        r_send_valid <= 'd0;
    else if(r_send_cnt == P_SEND_LEN - 1)
        r_send_valid <= 'd0;
    else if(w_send_ready)
        r_send_valid <= 'd1;
    else 
        r_send_valid <= r_send_valid;
end

always@(posedge w_udp_clk,posedge w_udp_clk_rst)
begin
    if(w_udp_clk_rst)
        r_send_last <= 'd0;
    else if(r_send_cnt == P_SEND_LEN - 2)
        r_send_last <= 'd1;
    else 
        r_send_last <= 'd0;
end

always@(posedge w_udp_clk,posedge w_udp_clk_rst)
begin
    if(w_udp_clk_rst)
        r_send_data <= 'd0;
    else if(r_send_valid)
        r_send_data <= r_send_data + 1;
    else 
        r_send_data <= 'd0;
end

always@(posedge w_udp_clk,posedge w_udp_clk_rst)
begin
    if(w_udp_clk_rst)
        r_send_len <= 'd0;
    else 
        r_send_len <= P_SEND_LEN;
end


UDP_Stack_Module#(
    .P_TARGET_PORT          (16'd1234                                  ),//PC端口
    .P_SOURCE_PORT          (16'd1234                                  ),//板卡端口
    .P_TARGET_IP            ({8'd192,8'd168,8'd100,8'd99}              ),//PC端IP
    .P_SOURCE_IP            ({8'd192,8'd168,8'd100,8'd100}             ),//板卡IP
    .P_TARTGET_MAC          ({8'hff,8'hff,8'hff,8'hff,8'hff,8'hff}     ),//PC端MAC
    .P_SOURCE_MAC           ({8'h01,8'h02,8'h03,8'h04,8'h05,8'h06}     ),//板卡MAC
    .P_CRC_CHEKC            ( 1                                        ) //CRC使能
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
    
 
    .i_send_len             (r_send_len    ),//user发送数据长度
    .i_send_data            (r_send_data  ),//user发送数据
    .i_send_last            (r_send_last  ),//user发送结束
    .i_send_valid           (r_send_valid),//user发送有效
 

    // .i_send_len             (w_udp_tx_len             ),//user发送数据长度
    // .i_send_data            (w_udp_tx_data            ),//user发送数据
    // .i_send_last            (w_udp_tx_last            ),//user发送结束
    // .i_send_valid           (w_udp_tx_vld             ),//user发送有效
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
    .i_rxc                  (eth_rxc                  ),
    .i_rxd                  (eth_rxd                  ),
    .i_rx_ctl               (eth_rx_ctl               ),
    .o_txc                  (eth_txc                  ),
    .o_txd                  (eth_txd                  ),
    .o_tx_ctl               (eth_tx_ctl               ),
    .o_speed                (w_speed                ),
    .o_link                 (w_link                 ),
    .o_user_clk             (                       )
);

    
 
    
    
 
    

// /*-------end-----------------udp协议栈大帝------------------------------*/
endmodule