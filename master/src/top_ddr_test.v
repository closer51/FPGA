`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/09 11:32:10
// Design Name: 
// Module Name: top_ddr_test
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


module top_ddr_test(
    input               i_clk               , 
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
 
wire                    w_clk_200Mhz         ;

clk_wiz_0 instance_name
(
    .clk_out1(w_clk_200Mhz),   
    .locked(locked),   
    .clk_in1(i_clk)
);      
    

 



// rst_gen_module#(
//     .       P_RST_CYCLE     (10)    
// )rst_gen_module_100M_rst
// (
//     .          i_clk (w_clk_100Mhz      )                  ,
//     .          o_rst (w_clk_100Mhz_rst  )                  
// );




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

// wire [31:0]   S01_AXI_0_araddr        ;
// wire [1 :0]   S01_AXI_0_arburst       ;
// wire [3 :0]   S01_AXI_0_arcache       ; 
// wire [7 :0]   S01_AXI_0_arlen         ;
// wire [0 :0]   S01_AXI_0_arlock        ;
// wire [2 :0]   S01_AXI_0_arprot        ;
// wire [3 :0]   S01_AXI_0_arqos         ;
// wire          S01_AXI_0_arready       ;
// wire [2 :0]   S01_AXI_0_arsize        ;
// wire          S01_AXI_0_arvalid       ;
// wire [31:0]   S01_AXI_0_awaddr        ;
// wire [1 :0]   S01_AXI_0_awburst       ;
// wire [3 :0]   S01_AXI_0_awcache       ; 
// wire [7 :0]   S01_AXI_0_awlen         ;
// wire [0 :0]   S01_AXI_0_awlock        ;
// wire [2 :0]   S01_AXI_0_awprot        ;
// wire [3 :0]   S01_AXI_0_awqos         ;
// wire          S01_AXI_0_awready       ;
// wire [2 :0]   S01_AXI_0_awsize        ;
// wire          S01_AXI_0_awvalid       ; 
// wire          S01_AXI_0_bready        ;
// wire [1 :0]   S01_AXI_0_bresp         ;
// wire          S01_AXI_0_bvalid        ;
// wire [31:0]   S01_AXI_0_rdata         ; 
// wire          S01_AXI_0_rlast         ;
// wire          S01_AXI_0_rready        ;
// wire [1 :0]   S01_AXI_0_rresp         ;
// wire          S01_AXI_0_rvalid        ;
// wire [31:0]   S01_AXI_0_wdata         ;
// wire          S01_AXI_0_wlast         ;
// wire          S01_AXI_0_wready        ;
// wire [3 :0]   S01_AXI_0_wstrb         ;
// wire          S01_AXI_0_wvalid        ;


    
test_AXI_Master_Drive test_AXI_Master_Drive_u0( 
    .i_clk                   (w_ui_clk           ),
    .i_rst                   (w_ui_rst           ),
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
    .m_axi_rready            (S00_AXI_0_rready   ) 
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

    .S00_ACLK_0             (w_ui_clk               ),
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

// DDR_Ctrl DDR_Ctrl_u0
// (
//     . i_clk                   (w_ui_clk               ),
//     . i_rst                   (w_ui_rst               ),
//     . i_init_calib_complete   (w_mig_initcomplete     ),
//     . m_axi_awid              (S01_AXI_0_awid         ),
//     . m_axi_awaddr            (S01_AXI_0_awaddr       ),
//     . m_axi_awlen             (S01_AXI_0_awlen        ),
//     . m_axi_awsize            (S01_AXI_0_awsize       ),           
//     . m_axi_awburst           (S01_AXI_0_awburst      ),           
//     . m_axi_awlock            (S01_AXI_0_awlock       ),              
//     . m_axi_awcache           (S01_AXI_0_awcache      ),          
//     . m_axi_awprot            (S01_AXI_0_awprot       ),                  
//     . m_axi_awqos             (S01_AXI_0_awqos        ),         
//     . m_axi_awvalid           (S01_AXI_0_awvalid      ),                 
//     . m_axi_awready           (S01_AXI_0_awready      ),   
//     . m_axi_wdata             (S01_AXI_0_wdata        ),                 
//     . m_axi_wstrb             (S01_AXI_0_wstrb        ),             
//     . m_axi_wlast             (S01_AXI_0_wlast        ),       
//     . m_axi_wvalid            (S01_AXI_0_wvalid       ),   
//     . m_axi_wready            (S01_AXI_0_wready       ),  
//     . m_axi_bid               (S01_AXI_0_bid          ),       
//     . m_axi_bresp             (S01_AXI_0_bresp        ),   
//     . m_axi_bvalid            (S01_AXI_0_bvalid       ),       
//     . m_axi_bready            (S01_AXI_0_bready       ),  
//     . m_axi_arid              (S01_AXI_0_arid         ),       
//     . m_axi_araddr            (S01_AXI_0_araddr       ),   
//     . m_axi_arlen             (S01_AXI_0_arlen        ),
//     . m_axi_arsize            (S01_AXI_0_arsize       ),   
//     . m_axi_arburst           (S01_AXI_0_arburst      ),       
//     . m_axi_arlock            (S01_AXI_0_arlock       ),       
//     . m_axi_arcache           (S01_AXI_0_arcache      ),       
//     . m_axi_arprot            (S01_AXI_0_arprot       ),       
//     . m_axi_arqos             (S01_AXI_0_arqos        ),   
//     . m_axi_arvalid           (S01_AXI_0_arvalid      ),   
//     . m_axi_arready           (S01_AXI_0_arready      ),  
//     . m_axi_rid               (S01_AXI_0_rid          ),       
//     . m_axi_rdata             (S01_AXI_0_rdata        ),       
//     . m_axi_rresp             (S01_AXI_0_rresp        ),       
//     . m_axi_rlast             (S01_AXI_0_rlast        ),       
//     . m_axi_rvalid            (S01_AXI_0_rvalid       ),       
//     . m_axi_rready            (S01_AXI_0_rready       ),
//     . i_clk_50M               (w_clk_50Mhz            ),
//     . i_rst_50M               (w_clk_50Mhz_rst        ),
//     . i_dds_number            (0                      ),
//     . i_dss_number_valid      (0                      ),
//     . o_dds0_data             (w_dds0_data            ),
//     . o_dds0_valid            (w_dds0_valid),
//     . o_dds1_data             (w_dds1_data            ),
//     . o_dds1_valid            (w_dds1_valid) 
// );







endmodule
