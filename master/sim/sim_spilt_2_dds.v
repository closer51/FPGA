`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/31 02:42:43
// Design Name: 
// Module Name: sim_spilt_2_dds
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


module sim_spilt_2_dds();
reg clk,rst;


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

initial 
begin
    rst = 1;
    #100 @(posedge clk)rst = 0;
end





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

wire [13:0]       o_dds1_data ;
wire [13:0]       o_dds2_data ;

reg [7 :0]  r_udma_tx_data  ;
reg         r_udma_tx_valid ;
uart_type_spilt uart_type_spilt_u0(
    . i_clk                  (clk            ),
    . i_rst                  (rst            ),
    . i_udma_data            (r_udma_tx_data   ),
    . i_udma_vld             (r_udma_tx_valid ), 

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
    . i_per_clk           (clk                ),
    . i_per_rst           (rst                ),
    . i_per_axis_data     ( {12'd0,w_dds1_run,w_dds1_type}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),//因为我的报文w_dds2_duty_vld在最后，所以都用此信号同时更新，没有问题
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (clk           ),
    . i_post_rst          (rst           ),
    . o_post_axis_data    (w_dds1_post_axis_data_run_type),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds1_post_axis_data_run_type_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
    

    


AXIS_BUF_2CLK_16X16 cdc_udma_2_dds1_2(
    . i_per_clk           (clk               ),
    . i_per_rst           (rst               ),
    . i_per_axis_data     ( w_dds1_frq[15:0]),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (clk          ),
    . i_post_rst          (rst          ),
    . o_post_axis_data    (w_dds1_post_axis_data_frq_L),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds1_post_axis_data_frq_L_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
AXIS_BUF_2CLK_16X16 cdc_udma_2_dds1_22(
    . i_per_clk           (clk               ),
    . i_per_rst           (rst               ),
    . i_per_axis_data     ( {8'd0,w_dds1_frq[23:16]}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (clk          ),
    . i_post_rst          (rst          ),
    . o_post_axis_data    (w_dds1_post_axis_data_frq_H),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds1_post_axis_data_frq_H_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds1_3(
    . i_per_clk           (clk               ),
    . i_per_rst           (rst               ),
    . i_per_axis_data     ( {4'd0,w_dds1_amp}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (clk          ),
    . i_post_rst          (rst          ),
    . o_post_axis_data    (w_dds1_post_axis_data_amp),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds1_post_axis_data_amp_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
    

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds1_4(
    . i_per_clk           (clk               ),
    . i_per_rst           (rst               ),
    . i_per_axis_data     ( {3'd0,w_dds1_offset}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (clk         ),
    . i_post_rst          (rst         ),
    . o_post_axis_data    (w_dds1_post_axis_data_offset),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds1_post_axis_data_offset_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
    

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds1_5(
    . i_per_clk           (clk              ),
    . i_per_rst           (rst              ),
    . i_per_axis_data     ( {4'd0,w_dds1_phase}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (clk           ),
    . i_post_rst          (rst           ),
    . o_post_axis_data    (w_dds1_post_axis_data_phase),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds1_post_axis_data_phase_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
    

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds1_6(
    . i_per_clk           (clk               ),
    . i_per_rst           (rst               ),
    . i_per_axis_data     ( {6'd0,w_dds1_duty}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (clk           ),
    . i_post_rst          (rst           ),
    . o_post_axis_data    (w_dds1_post_axis_data_duty),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds1_post_axis_data_duty_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);

 

/*-------end--------关于dds1的多个cdc-------------------------------*/
     
dds_single_channel_top dds_single_channel_top_u0
(     
    .  i_clk              (clk                      ),
    .  i_rst              (rst                      ),
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
    .  o_dds_data         (o_dds1_data                          ) 
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
    . i_per_clk           (clk              ),
    . i_per_rst           (rst              ),
    . i_per_axis_data     ( {12'd0,w_dds2_run,w_dds2_type}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),//因为我的报文w_dds2_duty_vld在最后，所以都用此信号同时更新，没有问题
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (clk          ),
    . i_post_rst          (rst          ),
    . o_post_axis_data    (w_dds2_post_axis_data_run_type),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds2_post_axis_data_run_type_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
 
AXIS_BUF_2CLK_16X16 cdc_udma_2_dds2_2(
    . i_per_clk           (clk             ),
    . i_per_rst           (rst             ),
    . i_per_axis_data     ( w_dds2_frq[15:0]),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (clk          ),
    . i_post_rst          (rst          ),
    . o_post_axis_data    (w_dds2_post_axis_data_frq_L),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds2_post_axis_data_frq_L_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds2_22(
    . i_per_clk           (clk              ),
    . i_per_rst           (rst              ),
    . i_per_axis_data     ( {8'd0,w_dds2_frq}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (clk          ),
    . i_post_rst          (rst          ),
    . o_post_axis_data    (w_dds2_post_axis_data_frq_H),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds2_post_axis_data_frq_H_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds2_3(
    . i_per_clk           (clk             ),
    . i_per_rst           (rst             ),
    . i_per_axis_data     ( {4'd0,w_dds2_amp}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (clk          ),
    . i_post_rst          (rst          ),
    . o_post_axis_data    (w_dds2_post_axis_data_amp),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds2_post_axis_data_amp_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
    

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds2_4(
    . i_per_clk           (clk              ),
    . i_per_rst           (rst              ),
    . i_per_axis_data     ( {3'd0,w_dds2_offset}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (clk       ),
    . i_post_rst          (rst       ),
    . o_post_axis_data    (w_dds2_post_axis_data_offset),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds2_post_axis_data_offset_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
    

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds2_5(
    . i_per_clk           (clk              ),
    . i_per_rst           (rst              ),
    . i_per_axis_data     ( {4'd0,w_dds2_phase}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (clk          ),
    . i_post_rst          (rst          ),
    . o_post_axis_data    (w_dds2_post_axis_data_phase),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds2_post_axis_data_phase_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);
    

AXIS_BUF_2CLK_16X16 cdc_udma_2_dds2_6(
    . i_per_clk           (clk              ),
    . i_per_rst           (rst              ),
    . i_per_axis_data     ( {6'd0,w_dds2_duty}),
    . i_per_axis_user     (16'd1                        ),
    . i_per_axis_valid    (w_dds2_duty_vld        ),
    . i_per_axis_last     (w_dds2_duty_vld        ),
    . o_per_axis_ready    ( ),//对于流氓数据，有fifo，所以不用
    . i_post_clk          (clk           ),
    . i_post_rst          (rst           ),
    . o_post_axis_data    (w_dds2_post_axis_data_duty),
    . o_post_axis_user    ( ),
    . o_post_axis_valid   (w_dds2_post_axis_data_duty_vld),
    . o_post_axis_last    ( ),
    . i_post_axis_ready   (1'd1                        )           
);

 

/*-------end--------关于dds1的多个cdc-------------------------------*/
     
dds_single_channel_top dds_single_channel_top_u1
(     
    .  i_clk              (clk                      ),
    .  i_rst              (rst                      ),
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
    .  o_dds_data         (o_dds2_data                          ) 
    // .  o_dds_data         (                                     ) 
);
/*---------------------------------------------------------------*/



reg [16:0]  r_send_len   = 22;

reg [0:0]     r_dds1_run   = 1;
reg [2:0]   r_dds1_type  = 0;
reg [23:0]  r_dds1_frq   = 5000000;
reg [15:0]  r_dds1_amp   = 1500;
reg [15:0]  r_dds1_offset   = 0;
reg [15:0]  r_dds1_pha   = 0;
reg [15:0]  r_dds1_duty   = 200;

reg [0:0]     r_dds2_run   = 1;//
reg [2:0]   r_dds2_type  = 0;//
reg [23:0]  r_dds2_frq   = 5000000;//
reg [15:0]  r_dds2_amp   = 1500;//
reg [15:0]  r_dds2_offset   = 0;//
reg [15:0]  r_dds2_pha   = 1800;//
reg [15:0]  r_dds2_duty   = 800;

initial begin
r_udma_tx_data  <= 'd0;
r_udma_tx_valid <= 'd0;
wait(!rst);
repeat(1)@(posedge clk);
udma(r_send_len,r_dds1_run,r_dds1_type,r_dds1_frq,r_dds1_amp,r_dds1_offset,r_dds1_pha,r_dds1_duty,
                r_dds2_run,r_dds2_type,r_dds2_frq,r_dds2_amp,r_dds2_offset,r_dds2_pha,r_dds2_duty);
end




task udma(input  [16:0] r_send_len,input r_dds1_run,input[2:0]   r_dds1_type,input[23:0]  r_dds1_frq,input [15:0]  r_dds1_amp,input [15:0]  r_dds1_offset,input [15:0]  r_dds1_pha,input [15:0]  r_dds1_duty,
                                   input r_dds2_run,input[2:0]   r_dds2_type,input[23:0]  r_dds2_frq,input [15:0]  r_dds2_amp,input [15:0]  r_dds2_offset,input [15:0]  r_dds2_pha,input [15:0]  r_dds2_duty
);
begin:hehe
    integer i;
    r_udma_tx_data  <= 'd0;
    r_udma_tx_valid <= 'd0; 
    @(posedge clk);
    r_udma_tx_data  <= 'd0;//*********
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= 'd0;
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= 'd1;
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= 'd1;
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_send_len[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_send_len[7 :0];
    r_udma_tx_valid <= 'd1; 

    @(posedge clk);
    r_udma_tx_data  <= {4'd0,r_dds1_run,r_dds1_type};
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds1_frq[23:16];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds1_frq[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds1_frq[7:0];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds1_amp[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds1_amp[7:0];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds1_offset[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds1_offset[7:0];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds1_pha[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds1_pha[7:0];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds1_duty[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds1_duty[7:0];
    r_udma_tx_valid <= 'd1; 

    @(posedge clk);
    r_udma_tx_data  <= {4'd0,r_dds2_run,r_dds2_type};
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds2_frq[23:16];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds2_frq[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds2_frq[7:0];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds2_amp[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds2_amp[7:0];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds2_offset[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds2_offset[7:0];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds2_pha[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds2_pha[7:0];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds2_duty[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge clk);
    r_udma_tx_data  <= r_dds2_duty[7:0];
    r_udma_tx_valid <= 'd1; 

    @(posedge clk);
    r_udma_tx_data  <= 'd0;
    r_udma_tx_valid <= 'd0; 
    @(posedge clk);
end
endtask










endmodule
