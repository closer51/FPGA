`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/28 23:03:00
// Design Name: 
// Module Name: test_top
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


module test_TOP(
    input                       i_gtref_clk_p       ,
    input                       i_gtref_clk_n       ,
    input                       i_clk_50M           ,
    output [1 :0]               gt_txp              ,
    output [1 :0]               gt_txn              ,
    input  [1 :0]               gt_rxp              ,
    input  [1 :0]               gt_rxn              ,
    output [1 :0]               o_sfp_dis           
);

wire                            w_clk_100M          ;
wire                            w_clk_100M_rst      ;
wire                            w_clk_50M_rst       ;
wire                            w_c0_user_clk       ;
wire                            w_c0_user_rst       ;
wire                            w_c1_user_clk       ;
wire                            w_c1_user_rst       ;
(* MARK_DEBUG = "TRUE" *)wire [31:0]                        m_c0_axi_tx_tdata   ;
(* MARK_DEBUG = "TRUE" *)wire [3 :0]                        m_c0_axi_tx_tkeep   ;
(* MARK_DEBUG = "TRUE" *)wire                               m_c0_axi_tx_tlast   ;
(* MARK_DEBUG = "TRUE" *)wire                               m_c0_axi_tx_tvalid  ;
(* MARK_DEBUG = "TRUE" *)wire                               m_c0_axi_tx_tready  ;
(* MARK_DEBUG = "TRUE" *)wire [31:0]                        s_c0_axi_rx_tdata   ;
(* MARK_DEBUG = "TRUE" *)wire [3 :0]                        s_c0_axi_rx_tkeep   ;
(* MARK_DEBUG = "TRUE" *)wire                               s_c0_axi_rx_tlast   ;
(* MARK_DEBUG = "TRUE" *)wire                               s_c0_axi_rx_tvalid  ;
(* MARK_DEBUG = "TRUE" *)wire [31:0]                        m_c1_axi_tx_tdata   ;
(* MARK_DEBUG = "TRUE" *)wire [3 :0]                        m_c1_axi_tx_tkeep   ;
(* MARK_DEBUG = "TRUE" *)wire                               m_c1_axi_tx_tlast   ;
(* MARK_DEBUG = "TRUE" *)wire                               m_c1_axi_tx_tvalid  ;
(* MARK_DEBUG = "TRUE" *)wire                               m_c1_axi_tx_tready  ;
(* MARK_DEBUG = "TRUE" *)wire [31:0]                        s_c1_axi_rx_tdata   ;
(* MARK_DEBUG = "TRUE" *)wire [3 :0]                        s_c1_axi_rx_tkeep   ;
(* MARK_DEBUG = "TRUE" *)wire                               s_c1_axi_rx_tlast   ;
(* MARK_DEBUG = "TRUE" *)wire                               s_c1_axi_rx_tvalid  ;
(* MARK_DEBUG = "TRUE" *)wire                               w_c0_hard_err       ;
(* MARK_DEBUG = "TRUE" *)wire                               w_c0_soft_err       ;
(* MARK_DEBUG = "TRUE" *)wire                               w_c0_frame_err      ;
(* MARK_DEBUG = "TRUE" *)wire                               w_c0_channel_up     ;
(* MARK_DEBUG = "TRUE" *)wire                               w_c0_lane_up        ;
(* MARK_DEBUG = "TRUE" *)wire [2 :0]                        w_c0_loopback       ;
(* MARK_DEBUG = "TRUE" *)wire                               w_c1_hard_err       ;
(* MARK_DEBUG = "TRUE" *)wire                               w_c1_soft_err       ;
(* MARK_DEBUG = "TRUE" *)wire                               w_c1_frame_err      ;
(* MARK_DEBUG = "TRUE" *)wire                               w_c1_channel_up     ;
(* MARK_DEBUG = "TRUE" *)wire                               w_c1_lane_up        ;
(* MARK_DEBUG = "TRUE" *)wire [2 :0]                        w_c1_loopback       ;

// assign w_c0_loopback = 3'b010;
// assign w_c1_loopback = 3'b010;
assign w_c0_loopback = 3'b000;
assign w_c1_loopback = 3'b000;
assign o_sfp_dis     = 2'b00 ;

 
wire    locked;


wire init_clk;

IBUF u_ibuf_init_clk (
  .I(i_clk_50M),  // 板卡输入的单端时钟
  .O(init_clk)     // 缓冲后的单端时钟
);
wire init_clk_p;
wire init_clk_n;
assign init_clk_p = init_clk;       // 原时钟作为 P 端
assign init_clk_n = ~init_clk;      // 反向时钟作为 N 端

rst_gen_module#(    
    .P_RST_CYCLE                (10                 )   
)   
rst_gen_module_U0   
(   
    .i_clk                      (init_clk         ),
    .o_rst                      (w_clk_50M_rst         )
);

user_data_gen user_data_gen_u0(
    .i_clk                      (w_c0_user_clk      ),
    .i_rst                      (w_c0_user_rst      ),

    .m_axi_tx_tdata             (m_c0_axi_tx_tdata  ),
    .m_axi_tx_tkeep             (m_c0_axi_tx_tkeep  ),
    .m_axi_tx_tlast             (m_c0_axi_tx_tlast  ),
    .m_axi_tx_tvalid            (m_c0_axi_tx_tvalid ),
    .m_axi_tx_tready            (m_c0_axi_tx_tready ),
    .s_axi_rx_tdata             (s_c0_axi_rx_tdata  ),
    .s_axi_rx_tkeep             (s_c0_axi_rx_tkeep  ),
    .s_axi_rx_tlast             (s_c0_axi_rx_tlast  ),
    .s_axi_rx_tvalid            (s_c0_axi_rx_tvalid )
);

user_data_gen user_data_gen_u1(
    .i_clk                      (w_c1_user_clk      ),
    .i_rst                      (w_c1_user_rst      ),

    .m_axi_tx_tdata             (m_c1_axi_tx_tdata  ),
    .m_axi_tx_tkeep             (m_c1_axi_tx_tkeep  ),
    .m_axi_tx_tlast             (m_c1_axi_tx_tlast  ),
    .m_axi_tx_tvalid            (m_c1_axi_tx_tvalid ),
    .m_axi_tx_tready            (m_c1_axi_tx_tready ),
    .s_axi_rx_tdata             (s_c1_axi_rx_tdata  ),
    .s_axi_rx_tkeep             (s_c1_axi_rx_tkeep  ),
    .s_axi_rx_tlast             (s_c1_axi_rx_tlast  ),
    .s_axi_rx_tvalid            (s_c1_axi_rx_tvalid )
);



aurora_8b10b_in_core aurora_8b10b_in_core_u0 (
  .s_axi_tx_tdata               (m_c0_axi_tx_tdata  ),                  // input wire [0 : 31] s_axi_tx_tdata
  .s_axi_tx_tkeep               (m_c0_axi_tx_tkeep  ),                  // input wire [0 : 3] s_axi_tx_tkeep
  .s_axi_tx_tlast               (m_c0_axi_tx_tlast  ),                  // input wire s_axi_tx_tlast
  .s_axi_tx_tvalid              (m_c0_axi_tx_tvalid ),                // input wire s_axi_tx_tvalid
  .s_axi_tx_tready              (m_c0_axi_tx_tready ),                // output wire s_axi_tx_tready
  .m_axi_rx_tdata               (s_c0_axi_rx_tdata  ),                  // output wire [0 : 31] m_axi_rx_tdata
  .m_axi_rx_tkeep               (s_c0_axi_rx_tkeep  ),                  // output wire [0 : 3] m_axi_rx_tkeep
  .m_axi_rx_tlast               (s_c0_axi_rx_tlast  ),                  // output wire m_axi_rx_tlast
  .m_axi_rx_tvalid              (s_c0_axi_rx_tvalid ),                // output wire m_axi_rx_tvalid
  .hard_err                     (w_c0_hard_err      ),                              // output wire hard_err
  .soft_err                     (w_c0_soft_err      ),                              // output wire soft_err
  .frame_err                    (w_c0_frame_err     ),                            // output wire frame_err
  .channel_up                   (w_c0_channel_up    ),                          // output wire channel_up
  .lane_up                      (w_c0_lane_up       ),                                // output wire [0 : 0] lane_up
  .txp                          (gt_txp[0]             ),                                        // output wire [0 : 0] txp
  .txn                          (gt_txn[0]             ),                                        // output wire [0 : 0] txn
  .reset                        (w_clk_50M_rst      ), //                                   // input wire reset
  .gt_reset                     (gt_reset_out       ),                              // input wire gt_reset
  .loopback                     (w_c0_loopback      ),                              // input wire [2 : 0] loopback
  .rxp                          (gt_rxp[0]),                                        // input wire [0 : 0] rxp
  .rxn                          (gt_rxn[0]),                                        // input wire [0 : 0] rxn
  
  .drpclk_in                    (init_clk),                            // input wire drpclk_in
  .drpaddr_in                   (0),                          // input wire [8 : 0] drpaddr_in
  .drpen_in                     (0),                              // input wire drpen_in
  .drpdi_in                     (0),                              // input wire [15 : 0] drpdi_in
  .drprdy_out                   (),                          // output wire drprdy_out
  .drpdo_out                    (),                            // output wire [15 : 0] drpdo_out
  .drpwe_in                     (0),                              // input wire drpwe_in
  .power_down                   (0),                          // input wire power_down
  .tx_lock                      (),                                // output wire tx_lock
  .tx_resetdone_out             (),              // output wire tx_resetdone_out
  .rx_resetdone_out             (),              // output wire rx_resetdone_out
  
  .link_reset_out               ( ),                  // output wire link_reset_out
  .init_clk_p                   (init_clk_p),                          // input wire init_clk_p
  .init_clk_n                   (init_clk_n),                          // input wire init_clk_n
  .user_clk_out                 (w_c0_user_clk),                      // output wire user_clk_out
  .pll_not_locked_out           ( ),          // output wire pll_not_locked_out
 
  .sys_reset_out                (w_c0_user_rst),                    // output wire sys_reset_out
  .gt_refclk1_p                 (i_gtref_clk_p),                      // input wire gt_refclk1_p
  .gt_refclk1_n                 (i_gtref_clk_n),                      // input wire gt_refclk1_n
  .sync_clk_out                 ( ),                      // output wire sync_clk_out
  .init_clk_out                 ( ),                      // output wire init_clk_out
  .gt_reset_out                 ( ),                      // output wire gt_reset_out
  .gt_refclk1_out               ( ),                  // output wire gt_refclk1_out
  .gt0_pll0refclklost_out       (      ),  // output wire gt0_pll0refclklost_out
  .quad1_common_lock_out        (       ),    // output wire quad1_common_lock_out
  .gt0_pll0outclk_out           (          ),          // output wire gt0_pll0outclk_out
  .gt0_pll1outclk_out           (          ),          // output wire gt0_pll1outclk_out
  .gt0_pll0outrefclk_out        (       ),    // output wire gt0_pll0outrefclk_out
  .gt0_pll1outrefclk_out        (       )    // output wire gt0_pll1outrefclk_out
);
aurora_8b10b_in_core aurora_8b10b_in_core_u1 (
  .s_axi_tx_tdata               (m_c1_axi_tx_tdata  ),                  // input wire [0 : 31] s_axi_tx_tdata
  .s_axi_tx_tkeep               (m_c1_axi_tx_tkeep  ),                  // input wire [0 : 3] s_axi_tx_tkeep
  .s_axi_tx_tlast               (m_c1_axi_tx_tlast  ),                  // input wire s_axi_tx_tlast
  .s_axi_tx_tvalid              (m_c1_axi_tx_tvalid ),                // input wire s_axi_tx_tvalid
  .s_axi_tx_tready              (m_c1_axi_tx_tready ),                // output wire s_axi_tx_tready
  .m_axi_rx_tdata               (s_c1_axi_rx_tdata  ),                  // output wire [0 : 31] m_axi_rx_tdata
  .m_axi_rx_tkeep               (s_c1_axi_rx_tkeep  ),                  // output wire [0 : 3] m_axi_rx_tkeep
  .m_axi_rx_tlast               (s_c1_axi_rx_tlast  ),                  // output wire m_axi_rx_tlast
  .m_axi_rx_tvalid              (s_c1_axi_rx_tvalid ),                // output wire m_axi_rx_tvalid
  .hard_err                     (w_c1_hard_err      ),                              // output wire hard_err
  .soft_err                     (w_c1_soft_err      ),                              // output wire soft_err
  .frame_err                    (w_c1_frame_err     ),                            // output wire frame_err
  .channel_up                   (w_c1_channel_up    ),                          // output wire channel_up
  .lane_up                      (w_c1_lane_up       ),                                // output wire [0 : 0] lane_up
  .txp                          (gt_txp[1]             ),                                        // output wire [0 : 0] txp
  .txn                          (gt_txn[1]             ),                                        // output wire [0 : 0] txn
  .reset                        (w_clk_50M_rst      ), //                                   // input wire reset
  .gt_reset                     (gt_reset_out       ),                              // input wire gt_reset
  .loopback                     (w_c1_loopback      ),                              // input wire [2 : 0] loopback
  .rxp                          (gt_rxp[1]),                                        // input wire [0 : 0] rxp
  .rxn                          (gt_rxn[1]),                                        // input wire [0 : 0] rxn
  
  .drpclk_in                    (init_clk),                            // input wire drpclk_in
  .drpaddr_in                   (0),                          // input wire [8 : 0] drpaddr_in
  .drpen_in                     (0),                              // input wire drpen_in
  .drpdi_in                     (0),                              // input wire [15 : 0] drpdi_in
  .drprdy_out                   (),                          // output wire drprdy_out
  .drpdo_out                    (),                            // output wire [15 : 0] drpdo_out
  .drpwe_in                     (0),                              // input wire drpwe_in
  .power_down                   (0),                          // input wire power_down
  .tx_lock                      (),                                // output wire tx_lock
  .tx_resetdone_out             (),              // output wire tx_resetdone_out
  .rx_resetdone_out             (),              // output wire rx_resetdone_out
  
  .link_reset_out               ( ),                  // output wire link_reset_out
  .init_clk_p                   (init_clk_p),                          // input wire init_clk_p
  .init_clk_n                   (init_clk_n),                          // input wire init_clk_n
  .user_clk_out                 (w_c1_user_clk),                      // output wire user_clk_out
  .pll_not_locked_out           ( ),          // output wire pll_not_locked_out
 
  .sys_reset_out                (w_c1_user_rst),                    // output wire sys_reset_out
  .gt_refclk1_p                 (i_gtref_clk_p),                      // input wire gt_refclk1_p
  .gt_refclk1_n                 (i_gtref_clk_n),                      // input wire gt_refclk1_n
  .sync_clk_out                 ( ),                      // output wire sync_clk_out
  .init_clk_out                 ( ),                      // output wire init_clk_out
  .gt_reset_out                 ( ),                      // output wire gt_reset_out
  .gt_refclk1_out               ( ),                  // output wire gt_refclk1_out
  .gt0_pll0refclklost_out       (      ),  // output wire gt0_pll0refclklost_out
  .quad1_common_lock_out        (       ),    // output wire quad1_common_lock_out
  .gt0_pll0outclk_out           (          ),          // output wire gt0_pll0outclk_out
  .gt0_pll1outclk_out           (          ),          // output wire gt0_pll1outclk_out
  .gt0_pll0outrefclk_out        (       ),    // output wire gt0_pll0outrefclk_out
  .gt0_pll1outrefclk_out        (       )    // output wire gt0_pll1outrefclk_out
);

endmodule
