`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/30 10:46:37
// Design Name: 
// Module Name: XC7Z035_TOP
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


module XC7A200_TOP(
    input                       i_gtref_clk_p       ,
    input                       i_gtref_clk_n       ,
    output [1 :0]               gt_txp              ,
    output [1 :0]               gt_txn              ,
    input  [1 :0]               gt_rxp              ,
    input  [1 :0]               gt_rxn              ,
    output [1 :0]               o_sfp_dis           ,

    input                       i_clk_50M           ,
    input                       i_clk_50M_rst_n     ,

    input               i_rxc           ,
    input  [3 :0]       i_rxd           ,
    input               i_rx_ctl        ,
    output              o_txc           ,
    output [3 :0]       o_txd           ,
    output              o_tx_ctl        ,

    input              cam_pclk     ,  //cmos ��������ʱ��
    input              cam_vsync    ,  //cmos ��ͬ���ź�
    input              cam_href     ,  //cmos ��ͬ���ź�
    input   [7:0]      cam_data     ,  //cmos ����
    output             cam_rst_n    ,  //cmos ��λ�źţ��͵�ƽ��Ч
    output             cam_pwdn     ,  //��Դ����ģʽѡ�� 0������ģʽ 1����Դ����ģʽ
    output             cam_scl      ,  //cmos SCCB_SCL��
    inout              cam_sda         //cmos SCCB_SDA��    

 
);

localparam              P_SEND_CNT = 100 ;
localparam              P_SEND_LEN  =   1472;



 wire [7 :0]             w_GMII_tx_data  ;
 wire                    w_GMII_tx_valid ;
 wire [7 :0]             w_GMII_rx_data  ;
 wire                    w_GMII_rx_valid ;
 wire [1 :0]             w_speed         ;
 wire                    w_link          ;
wire                    w_user_clk      ;
wire                    w_user_rst      ;
 wire [15:0]             w_rec_len       ;
 wire [7 :0]             w_rec_data      ;
 wire                    w_rec_last      ;
 wire                    w_rec_valid     ;
wire    w_send_ready;
 

reg  [15:0]         r_send_len      ;
reg  [7 :0]         r_send_data     ;
reg                 r_send_last     ;
reg                 r_send_valid    ;
reg  [15:0]         r_send_cnt      ;
reg  [15:0]         r_gap_cnt       ;
reg  [15:0]         r_pkg_cnt=0     ;
reg  [15:0]         r_start_cnt     ;

rst_gen_module#(
    .P_RST_CYCLE            (5                                         )   
)                               
rst_gen_module_u0                               
(                               
    .i_clk                  (w_user_clk                                 ),
    .o_rst                  (w_user_rst                                 )
);

parameter  H_CMOS_DISP = 11'd640;                  //CMOS�ֱ���--��
parameter  V_CMOS_DISP = 11'd480;                  //CMOS�ֱ���--��	
parameter  TOTAL_H_PIXEL = H_CMOS_DISP + 12'd1216; //ˮƽ�����ش�С
parameter  TOTAL_V_PIXEL = V_CMOS_DISP + 12'd504;  //��ֱ�����ش�С

parameter SLAVE_ADDR = 7'h3c          ; //OV5640��������ַ7'h3c
parameter BIT_CTRL   = 1'b1           ; //OV5640���ֽڵ�ַΪ16λ  0:8λ 1:16λ
parameter CLK_FREQ   = 27'd50_000_000 ; //i2c_driģ�������ʱ��Ƶ�� 
parameter I2C_FREQ   = 20'd250_000    ; //I2C��SCLʱ��Ƶ��,������400KHz

wire            locked          ; 
wire            rst_n           ; 
wire            i2c_dri_clk     ;   //I2C����ʱ��
wire            i2c_done        ;   //I2C��д����ź�
wire   [7:0]    i2c_data_r      ;   //I2C����������
wire            i2c_exec        ;   //I2C�����ź�
wire   [23:0]   i2c_data        ;   //I2Cд��ַ+����
wire            i2c_rh_wl       ;   //I2C��д�����ź�
wire            cam_init_done   ;   //����ͷ����ʼ������ź� 

assign  rst_n = i_clk_50M_rst_n & locked;/////////////////////////////////////////
assign  cam_pwdn  = 1'b0;
assign  cam_rst_n = 1'b1;






wire                            w_clk_50M_rst       ;
wire                            w_c0_user_clk       ;
wire                            w_c0_user_rst       ;
wire                            w_c1_user_clk       ;
wire                            w_c1_user_rst       ;
wire [31:0]                        m_c0_axi_tx_tdata   ;
wire [3 :0]                        m_c0_axi_tx_tkeep   ;
wire                               m_c0_axi_tx_tlast   ;
wire                               m_c0_axi_tx_tvalid  ;
wire                               m_c0_axi_tx_tready  ;
wire [31:0]                        s_c0_axi_rx_tdata   ;
wire [3 :0]                        s_c0_axi_rx_tkeep   ;
wire                               s_c0_axi_rx_tlast   ;
wire                               s_c0_axi_rx_tvalid  ;
wire [31:0]                        m_c1_axi_tx_tdata   ;
wire [3 :0]                        m_c1_axi_tx_tkeep   ;
wire                               m_c1_axi_tx_tlast   ;
wire                               m_c1_axi_tx_tvalid  ;
wire                               m_c1_axi_tx_tready  ;
wire [31:0]                        s_c1_axi_rx_tdata   ;
wire [3 :0]                        s_c1_axi_rx_tkeep   ;
wire                               s_c1_axi_rx_tlast   ;
wire                               s_c1_axi_rx_tvalid  ;
wire                               w_c0_hard_err       ;
wire                               w_c0_soft_err       ;
wire                               w_c0_frame_err      ;
wire                               w_c0_channel_up     ;
wire                               w_c0_lane_up        ;
wire [2 :0]                        w_c0_loopback       ;
wire                               w_c1_hard_err       ;
wire                               w_c1_soft_err       ;
wire                               w_c1_frame_err      ;
wire                               w_c1_channel_up     ;
wire                               w_c1_lane_up        ;
wire [2 :0]                        w_c1_loopback       ;
wire        [7 :0]          w_camera_tx_data ;
wire                        w_camera_tx_vld  ;
wire                        w_camera_tx_last ;
wire        [15:0]          w_camera_tx_len  ;
// assign w_c0_loopback = 3'b010;
// assign w_c1_loopback = 3'b010;
assign w_c0_loopback = 3'b000;
assign w_c1_loopback = 3'b000;
assign o_sfp_dis     = 2'b00 ;

 wire   w_clk_50Mhz;
  clk_wiz_0 instance_name
   ( 
    .clk_out1(w_clk_50Mhz),       
    .locked(locked),       
    .clk_in1(i_clk_50M));      
 

rst_gen_module#(    
    .P_RST_CYCLE                (120                 )   
)   
rst_gen_module_U0   
(   
    .i_clk                      (i_clk_50M         ),
    .o_rst                      (w_clk_50M_rst         )
);

 
 
aurora_module aurora_module_u0(
    .i_gtref_clk_p              (i_gtref_clk_p      ),
    .i_gtref_clk_n              (i_gtref_clk_n      ),
    .i_clk_100M                 (i_clk_50M     ),
    .i_rst                      (w_clk_50M_rst ),
    .gt_txp                     (gt_txp             ),
    .gt_txn                     (gt_txn             ),
    .gt_rxp                     (gt_rxp             ),
    .gt_rxn                     (gt_rxn             ),

    .s_axi_c0_tx_tdata          (w_camera_tx_data  ),
    .s_axi_c0_tx_tkeep          (4'b1111           ),
    .s_axi_c0_tx_tlast          (w_camera_tx_last  ),
    .s_axi_c0_tx_tvalid         (w_camera_tx_vld ),
    .s_axi_c0_tx_tready         (m_c0_axi_tx_tready ),
    .m_axi_c0_rx_tdata          (s_c0_axi_rx_tdata  ),
    .m_axi_c0_rx_tkeep          (s_c0_axi_rx_tkeep  ),
    .m_axi_c0_rx_tlast          (s_c0_axi_rx_tlast  ),
    .m_axi_c0_rx_tvalid         (s_c0_axi_rx_tvalid ),

    .s_axi_c1_tx_tdata          (m_c1_axi_tx_tdata  ),
    .s_axi_c1_tx_tkeep          (m_c1_axi_tx_tkeep  ),
    .s_axi_c1_tx_tlast          (m_c1_axi_tx_tlast  ),
    .s_axi_c1_tx_tvalid         (m_c1_axi_tx_tvalid ),
    .s_axi_c1_tx_tready         (m_c1_axi_tx_tready ),
    .m_axi_c1_rx_tdata          (s_c1_axi_rx_tdata  ),
    .m_axi_c1_rx_tkeep          (s_c1_axi_rx_tkeep  ),
    .m_axi_c1_rx_tlast          (s_c1_axi_rx_tlast  ),
    .m_axi_c1_rx_tvalid         (s_c1_axi_rx_tvalid ),

    .o_c0_hard_err              (w_c0_hard_err      ),
    .o_c0_soft_err              (w_c0_soft_err      ),
    .o_c0_frame_err             (w_c0_frame_err     ),
    .o_c0_channel_up            (w_c0_channel_up    ),
    .o_c0_lane_up               (w_c0_lane_up       ),
    .i_c0_loopback              (w_c0_loopback      ),
    .o_c1_hard_err              (w_c1_hard_err      ),
    .o_c1_soft_err              (w_c1_soft_err      ),
    .o_c1_frame_err             (w_c1_frame_err     ),
    .o_c1_channel_up            (w_c1_channel_up    ),
    .o_c1_lane_up               (w_c1_lane_up       ),
    .i_c1_loopback              (w_c1_loopback      ),

    .o_c0_user_clk              (w_c0_user_clk      ),
    .o_c0_user_rst              (w_c0_user_rst      ),
    .o_c1_user_clk              (w_c1_user_clk      ),
    .o_c1_user_rst              (w_c1_user_rst      )
);


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



img_data_pkt u_img_data_pkt(    
    .rst_n              (rst_n),              
   
    .cam_pclk           (cam_pclk),
    .img_vsync          (cam_vsync),
    .img_data_en        (cam_href),
    .img_data           (cam_data),
    .transfer_flag      (1),            
    .eth_tx_clk         (w_c0_user_clk), 
    .     o_udp_data (w_camera_tx_data  )     ,
    .     o_udp_vld  (w_camera_tx_vld   )     ,
    .     o_udp_last (w_camera_tx_last  )     ,
    .     o_udp_len  (w_camera_tx_len   )      
    );  


 









endmodule
