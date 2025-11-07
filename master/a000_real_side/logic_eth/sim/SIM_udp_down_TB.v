`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/05 14:06:17
// Design Name: 
// Module Name: SIM_udp_down_TB
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


module SIM_udp_down_TB();

reg         clk,rst;

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


reg         clk_d4,rst_d4;

always
begin
    clk_d4 = 0;
    #40;
    clk_d4 = 1;
    #40;    
end

initial 
begin
    rst_d4 = 1;
    #100 @(posedge clk)rst_d4 = 0;
end

reg  [15:0]         r_udp_len           ;    
reg  [7 :0]         r_udp_data          ;    
reg                 r_udp_last          ;    
reg                 r_udp_valid         ;    

wire        [7:0]           w_scope_channel         ;
wire        [1:0]           w_trigger_coupling      ;
wire                        w_trigger_coupling_vld  ;
wire        [1:0]           w_trigger_mode          ;
wire                        w_trigger_mode_vld      ;

wire     [15:0]     w_post_tri_coup_mode    ;
wire                w_post_tri_coup_mode_vld;

wire        [7 :0]          w_dds_custom_channel    ;
wire        [15:0]          w_dds_custom_len        ;
wire        [7 :0]          w_dds_custom_data       ;
wire                        w_dds_custom_last       ;
wire                        w_dds_custom_valid      ;


UDP_Type_Spilt UDP_Type_Spilt_u0(
    . i_clk                     (clk                      ) ,
    . i_rst                     (rst                      ) ,
    . i_udp_len                 (r_udp_len                 ) ,
    . i_udp_data                (r_udp_data                ) ,
    . i_udp_last                (r_udp_last                ) ,
    . i_udp_valid               (r_udp_valid               ) ,
    . o_scope_channel           (w_scope_channel          ) ,
    . o_trigger_coupling        (w_trigger_coupling       ) ,
    . o_trigger_coupling_vld    (w_trigger_coupling_vld   ) ,
    . o_trigger_mode            (w_trigger_mode           ) ,  
    . o_trigger_mode_vld        (w_trigger_mode_vld       ) ,
    . o_dds_custom_channel      (w_dds_custom_channel     ) ,
    . o_dds_custom_len          (w_dds_custom_len         ) ,
    . o_dds_custom_data         (w_dds_custom_data        ) ,
    . o_dds_custom_last         (w_dds_custom_last        ) ,
    . o_dds_custom_valid        (w_dds_custom_valid       )  
);
assign w_mig_initcomplete = 1;


wire [28:0]   S00_AXI_0_araddr        ;
wire [1 :0]   S00_AXI_0_arburst       ;
wire [3 :0]   S00_AXI_0_arcache       ;
wire [0 :0]   S00_AXI_0_arid          ;
wire [7 :0]   S00_AXI_0_arlen         ;
wire [0 :0]   S00_AXI_0_arlock        ;
wire [2 :0]   S00_AXI_0_arprot        ;
wire [3 :0]   S00_AXI_0_arqos         ;
wire          S00_AXI_0_arready       ;
wire [2 :0]   S00_AXI_0_arsize        ;
wire          S00_AXI_0_arvalid       ;
wire [28:0]   S00_AXI_0_awaddr        ;
wire [1 :0]   S00_AXI_0_awburst       ;
wire [3 :0]   S00_AXI_0_awcache       ;
wire [0 :0]   S00_AXI_0_awid          ;
wire [7 :0]   S00_AXI_0_awlen         ;
wire [0 :0]   S00_AXI_0_awlock        ;
wire [2 :0]   S00_AXI_0_awprot        ;
wire [3 :0]   S00_AXI_0_awqos         ;
wire          S00_AXI_0_awready       ;
wire [2 :0]   S00_AXI_0_awsize        ;
wire          S00_AXI_0_awvalid       ;
wire [0 :0]   S00_AXI_0_bid           ;
wire          S00_AXI_0_bready        ;
wire [1 :0]   S00_AXI_0_bresp         ;
wire          S00_AXI_0_bvalid        ;
wire [31:0]   S00_AXI_0_rdata         ;
wire [0 :0]   S00_AXI_0_rid           ;
wire          S00_AXI_0_rlast         ;
wire          S00_AXI_0_rready        ;
wire [1 :0]   S00_AXI_0_rresp         ;
wire          S00_AXI_0_rvalid        ;
wire [31:0]   S00_AXI_0_wdata         ;
wire          S00_AXI_0_wlast         ;
wire          S00_AXI_0_wready        ;
wire [3 :0]   S00_AXI_0_wstrb         ;
wire          S00_AXI_0_wvalid        ;

wire [28:0]   S01_AXI_0_araddr        ;
wire [1 :0]   S01_AXI_0_arburst       ;
wire [3 :0]   S01_AXI_0_arcache       ;
wire [0 :0]   S01_AXI_0_arid          ;
wire [7 :0]   S01_AXI_0_arlen         ;
wire [0 :0]   S01_AXI_0_arlock        ;
wire [2 :0]   S01_AXI_0_arprot        ;
wire [3 :0]   S01_AXI_0_arqos         ;
wire          S01_AXI_0_arready       ;
wire [2 :0]   S01_AXI_0_arsize        ;
wire          S01_AXI_0_arvalid       ;
wire [28:0]   S01_AXI_0_awaddr        ;
wire [1 :0]   S01_AXI_0_awburst       ;
wire [3 :0]   S01_AXI_0_awcache       ;
wire [0 :0]   S01_AXI_0_awid          ;
wire [7 :0]   S01_AXI_0_awlen         ;
wire [0 :0]   S01_AXI_0_awlock        ;
wire [2 :0]   S01_AXI_0_awprot        ;
wire [3 :0]   S01_AXI_0_awqos         ;
wire          S01_AXI_0_awready       ;
wire [2 :0]   S01_AXI_0_awsize        ;
wire          S01_AXI_0_awvalid       ;
wire [0 :0]   S01_AXI_0_bid           ;
wire          S01_AXI_0_bready        ;
wire [1 :0]   S01_AXI_0_bresp         ;
wire          S01_AXI_0_bvalid        ;
reg  [31:0]   S01_AXI_0_rdata         ;
reg           S01_AXI_0_rlast         ;
reg           S01_AXI_0_rvalid        ;
wire [0 :0]   S01_AXI_0_rid           ;
wire          S01_AXI_0_rready        ;
wire [1 :0]   S01_AXI_0_rresp         ;
wire [31:0]   S01_AXI_0_wdata         ;
wire          S01_AXI_0_wlast         ;
wire          S01_AXI_0_wready        ;
wire [3 :0]   S01_AXI_0_wstrb         ;
wire          S01_AXI_0_wvalid        ;

wire [15:0]   w_dds0_data             ;
wire [15:0]   w_dds1_data             ;
wire          w_dds0_valid            ;
wire          w_dds1_valid            ;

assign S00_AXI_0_awready = 1;
assign S00_AXI_0_wready = 1;
assign S00_AXI_0_bvalid = 1;
assign S01_AXI_0_arready = 1;


AXI_Master_Drive AXI_Master_Drive_u0( 
    .i_clk                   (clk               ),
    .i_rst                   (rst               ),
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


DDR_Ctrl DDR_Ctrl_u0
(
    . i_clk                   (clk                    ),
    . i_rst                   (rst                    ),
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
    . i_clk_50M               (clk_d4                 ),
    . i_rst_50M               (rst_d4                 ),
    . i_dds_number            (0                      ),
    . i_dss_number_valid      (0                      ),
    . o_dds0_data             (w_dds0_data            ),
    . o_dds0_valid            (w_dds0_valid),
    . o_dds1_data             (w_dds1_data            ),
    . o_dds1_valid            (w_dds1_valid) 
);
 

// AXIS_BUF_2CLK_16X16 cdc_spilt_2_scope_0(
//     . i_per_clk           (clk                               ),
//     . i_per_rst           (rst                               ),
//     . i_per_axis_data     ( {12'd0,w_trigger_coupling,w_trigger_mode}   ),
//     . i_per_axis_user     (16'd1                                        ),
//     . i_per_axis_valid    (w_trigger_coupling_vld                       ),
//     . i_per_axis_last     (w_trigger_coupling_vld                       ),
//     . o_per_axis_ready    (                                             ),//对于流氓数据，有fifo，所以不用
//     . i_post_clk          (clk                                        ),
//     . i_post_rst          (rst                                        ),
//     . o_post_axis_data    (w_post_tri_coup_mode                         ),
//     . o_post_axis_user    (                                             ),
//     . o_post_axis_valid   (w_post_tri_coup_mode_vld                     ),
//     . o_post_axis_last    (                                             ),
//     . i_post_axis_ready   (1'd1                                         )           
// );
     
// scope_top scope_top_u0(
//     .  i_clk                  (clk         ),//
//     .  i_clk_180p             (clk    ),
//     .  i_clk_100MHz           (clk        ),
//     .  i_rst                  (rst     ),//
//     .  i_adc_digit            (0         ),
//     .  o_adc_clk              (o_adc_clk           ),
//     .  i_trigger_coupling     (w_post_tri_coup_mode[3:2]),//0 dc  1 ac  2 hf_reject  3 lf_reject  //触发耦合
//     .  i_trigger_coupling_vld (w_post_tri_coup_mode_vld),
//     .  i_trigger_mode         (w_post_tri_coup_mode[1:0]),//0 上升沿   1 下降沿 
//     .  i_trigger_mode_vld     (w_post_tri_coup_mode_vld),
//     .  o_show_ad_data         (  ),//1008
//     .  o_show_ad_data_last    (  ),
//     .  o_show_ad_data_vld     (  )    
// );

initial
begin
    r_udp_len   = 'd0;
    r_udp_data  = 'd0;
    r_udp_last  = 'd0;
    r_udp_valid = 'd0;
    wait(!rst);
    repeat(10)@(posedge clk);
    // udp_test_scope_send( );
    // repeat(100)@(posedge clk);
    udp_test_send(1024,0);
    // repeat(20)@(posedge clk);
    // udp_test_send(2, 1,0);
    // repeat(20)@(posedge clk);
    // udp_test_send(2, 2,1);
    // repeat(20)@(posedge clk);
    // udp_test_send(3,2,0);
    // repeat(20)@(posedge clk);
    // udp_test_send(3,2,1);
    // repeat(20)@(posedge clk);
    // udp_test_send(4,1,0);
    // repeat(20)@(posedge clk);
end

task udp_test_send(input [15:0] payload_len,input [7 :0] channel);
begin:udp_test_send_task
    integer i;
    r_udp_len   = 'd0;
    r_udp_data  = 'd0;
    r_udp_last  = 'd0;
    r_udp_valid = 'd0;
    @(posedge clk);
    r_udp_len   = payload_len + 7;
    r_udp_data  = 'd51;
    r_udp_last  = 'd0;
    r_udp_valid = 'd1;
    @(posedge clk);
    r_udp_len   = payload_len + 7;
    r_udp_data  = 0;
    r_udp_last  = 'd0;
    r_udp_valid = 'd1;
    @(posedge clk);
    r_udp_len   = payload_len + 7;
    r_udp_data  = 1;
    r_udp_last  = 'd0;
    r_udp_valid = 'd1;
    @(posedge clk);
    r_udp_len   = payload_len + 7;
    r_udp_data  = 1;
    r_udp_last  = 'd0;
    r_udp_valid = 'd1;
    @(posedge clk);
    r_udp_len   = payload_len + 7;
    r_udp_data  = channel;
    r_udp_last  = 'd0;
    r_udp_valid = 'd1;
    @(posedge clk);
    r_udp_len   = payload_len + 7;
    r_udp_data  = payload_len[15 :8];
    r_udp_last  = 'd0;
    r_udp_valid = 'd1;
    @(posedge clk);
    r_udp_len   = payload_len + 7;
    r_udp_data  = payload_len[7 :0];
    r_udp_last  = 'd0;
    r_udp_valid = 'd1;
    @(posedge clk);
    for(i = 0 ;i < payload_len ; i = i + 1)
    begin
        r_udp_len   = payload_len + 7;
        // r_udp_data  = 8'hff;
        r_udp_data  = i;
        if(i == payload_len - 1)r_udp_last  = 'd1;
        else r_udp_last  = 'd0;
        r_udp_valid = 'd1;
        @(posedge clk);
    end
    r_udp_len   = 'd0;
    r_udp_data  = 'd0;
    r_udp_last  = 'd0;
    r_udp_valid = 'd0;
    @(posedge clk);
end
endtask


initial begin
    forever begin
        wait(S01_AXI_0_arvalid & S01_AXI_0_arready);
        wait(S01_AXI_0_rready);
        AXI_READ_DATA();
    end
end


    reg [7 :0] cnt = 0;
task AXI_READ_DATA();
begin:AXI_READ_DATA_task
    integer i;

    S01_AXI_0_rdata  <= 'd0;
    S01_AXI_0_rlast  <= 'd0;
    S01_AXI_0_rvalid <= 'd0;
    @(posedge clk);
    for(i = 0;i < 256;i=i+1)
    begin
        cnt <= cnt + 1;
        S01_AXI_0_rdata  <= {{(cnt)},{(cnt)},{(cnt)},{(cnt)}};
        if(i == 256 - 1)S01_AXI_0_rlast  <= 'd1;
        else S01_AXI_0_rlast <= 'd0; 
        S01_AXI_0_rvalid <= 'd1;
        @(posedge clk);
    end
    S01_AXI_0_rdata  <= 'd0;
    S01_AXI_0_rlast  <= 'd0;
    S01_AXI_0_rvalid <= 'd0;
    @(posedge clk);
end
endtask

// task udp_test_scope_send( );
// begin:udp_test_send_task
//     integer i;
//     r_udp_len   = 'd0;
//     r_udp_data  = 'd0;
//     r_udp_last  = 'd0;
//     r_udp_valid = 'd0;
//     @(posedge clk);
//     r_udp_len   = 8;
//     r_udp_data  = 'd100;
//     r_udp_last  = 'd0;
//     r_udp_valid = 'd1;
//     @(posedge clk);
//     r_udp_len   = 8;
//     r_udp_data  = 0;
//     r_udp_last  = 'd0;
//     r_udp_valid = 'd1;
//     @(posedge clk);
//     r_udp_len   = 8;
//     r_udp_data  = 1;
//     r_udp_last  = 'd0;
//     r_udp_valid = 'd1;
//     @(posedge clk);
//     r_udp_len   = 8;
//     r_udp_data  = 0;
//     r_udp_last  = 'd0;
//     r_udp_valid = 'd1;
//     @(posedge clk);
//     r_udp_len   = 8;
//     r_udp_data  = 0;
//     r_udp_last  = 'd0;
//     r_udp_valid = 'd1;
//     @(posedge clk);
//     r_udp_len   = 8;
//     r_udp_data  = 0;
//     r_udp_last  = 'd0;
//     r_udp_valid = 'd1;
//     @(posedge clk);
//     r_udp_len   = 8;
//     r_udp_data  = 1;
//     r_udp_last  = 'd0;
//     r_udp_valid = 'd1;
//     @(posedge clk);
//     r_udp_len   = 8;
//     r_udp_data  = 11;
//     r_udp_last  = 'd1;
//     r_udp_valid = 'd1;
//     @(posedge clk);
//     r_udp_len   = 'd0;
//     r_udp_data  = 'd0;
//     r_udp_last  = 'd0;
//     r_udp_valid = 'd0;
//     @(posedge clk);
// end
// endtask



 

endmodule
