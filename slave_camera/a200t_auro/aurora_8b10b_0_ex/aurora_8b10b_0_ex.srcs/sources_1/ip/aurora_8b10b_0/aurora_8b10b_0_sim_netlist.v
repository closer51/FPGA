// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Sep 29 15:42:47 2025
// Host        : PC-1000-times running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/auro/a200t/project_1/project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0_sim_netlist.v
// Design      : aurora_8b10b_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module aurora_8b10b_0
   (s_axi_tx_tdata,
    s_axi_tx_tkeep,
    s_axi_tx_tvalid,
    s_axi_tx_tlast,
    s_axi_tx_tready,
    m_axi_rx_tdata,
    m_axi_rx_tkeep,
    m_axi_rx_tvalid,
    m_axi_rx_tlast,
    rxp,
    rxn,
    txp,
    txn,
    gt_refclk1,
    frame_err,
    hard_err,
    soft_err,
    lane_up,
    channel_up,
    user_clk,
    sync_clk,
    gt_reset,
    reset,
    sys_reset_out,
    power_down,
    loopback,
    tx_lock,
    init_clk_in,
    tx_resetdone_out,
    rx_resetdone_out,
    link_reset_out,
    drpclk_in,
    drpaddr_in,
    drpen_in,
    drpdi_in,
    drprdy_out,
    drpdo_out,
    drpwe_in,
    gt_common_reset_out,
    gt0_pll0refclklost_in,
    quad1_common_lock_in,
    gt0_pll0outclk_in,
    gt0_pll1outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outrefclk_in,
    tx_out_clk,
    pll_not_locked);
  input [0:31]s_axi_tx_tdata;
  input [0:3]s_axi_tx_tkeep;
  input s_axi_tx_tvalid;
  input s_axi_tx_tlast;
  output s_axi_tx_tready;
  output [0:31]m_axi_rx_tdata;
  output [0:3]m_axi_rx_tkeep;
  output m_axi_rx_tvalid;
  output m_axi_rx_tlast;
  input rxp;
  input rxn;
  output txp;
  output txn;
  input gt_refclk1;
  output frame_err;
  output hard_err;
  output soft_err;
  output lane_up;
  output channel_up;
  input user_clk;
  input sync_clk;
  input gt_reset;
  input reset;
  output sys_reset_out;
  input power_down;
  input [2:0]loopback;
  output tx_lock;
  input init_clk_in;
  output tx_resetdone_out;
  output rx_resetdone_out;
  output link_reset_out;
  input drpclk_in;
  input [8:0]drpaddr_in;
  input drpen_in;
  input [15:0]drpdi_in;
  output drprdy_out;
  output [15:0]drpdo_out;
  input drpwe_in;
  output gt_common_reset_out;
  input gt0_pll0refclklost_in;
  input quad1_common_lock_in;
  input gt0_pll0outclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outrefclk_in;
  output tx_out_clk;
  input pll_not_locked;

  wire channel_up;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire frame_err;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll0refclklost_in;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire gt_common_reset_out;
  wire gt_refclk1;
  wire gt_reset;
  wire hard_err;
  wire init_clk_in;
  wire lane_up;
  wire link_reset_out;
  wire [2:0]loopback;
  wire [0:31]m_axi_rx_tdata;
  wire [0:3]m_axi_rx_tkeep;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire pll_not_locked;
  wire power_down;
  wire quad1_common_lock_in;
  wire reset;
  wire rx_resetdone_out;
  wire rxn;
  wire rxp;
  wire [0:31]s_axi_tx_tdata;
  wire [0:3]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire soft_err;
  wire sync_clk;
  wire sys_reset_out;
  wire tx_lock;
  wire tx_out_clk;
  wire tx_resetdone_out;
  wire txn;
  wire txp;
  wire user_clk;

  (* CC_FREQ_FACTOR = "5'b01100" *) 
  (* EXAMPLE_SIMULATION = "0" *) 
  (* SIM_GTRESET_SPEEDUP = "FALSE" *) 
  aurora_8b10b_0_aurora_8b10b_0_core inst
       (.channel_up(channel_up),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .frame_err(frame_err),
        .gt0_pll0outclk_in(gt0_pll0outclk_in),
        .gt0_pll0outrefclk_in(gt0_pll0outrefclk_in),
        .gt0_pll0refclklost_in(gt0_pll0refclklost_in),
        .gt0_pll1outclk_in(gt0_pll1outclk_in),
        .gt0_pll1outrefclk_in(gt0_pll1outrefclk_in),
        .gt_common_reset_out(gt_common_reset_out),
        .gt_refclk1(gt_refclk1),
        .gt_reset(gt_reset),
        .hard_err(hard_err),
        .init_clk_in(init_clk_in),
        .lane_up(lane_up),
        .link_reset_out(link_reset_out),
        .loopback(loopback),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tkeep(m_axi_rx_tkeep),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .pll_not_locked(pll_not_locked),
        .power_down(power_down),
        .quad1_common_lock_in(quad1_common_lock_in),
        .reset(reset),
        .rx_resetdone_out(rx_resetdone_out),
        .rxn(rxn),
        .rxp(rxp),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .soft_err(soft_err),
        .sync_clk(sync_clk),
        .sys_reset_out(sys_reset_out),
        .tx_lock(tx_lock),
        .tx_out_clk(tx_out_clk),
        .tx_resetdone_out(tx_resetdone_out),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_AURORA_LANE_4BYTE" *) 
module aurora_8b10b_0_aurora_8b10b_0_AURORA_LANE_4BYTE
   (lane_up,
    ena_comma_align_i,
    consecutive_commas_r,
    begin_r,
    enable_err_detect_i,
    \left_align_select_r_reg[0] ,
    \left_align_select_r_reg[1] ,
    D,
    link_reset_out,
    got_v_i,
    rx_polarity_i,
    hard_err_i,
    ready_r_reg,
    Q,
    \RX_PAD_reg[1] ,
    \RX_ECP_reg[1] ,
    \RX_ECP_reg[0] ,
    \RX_SCP_reg[0] ,
    \RX_ECP_reg[0]_0 ,
    \SOFT_ERR_reg[0] ,
    TXDATA,
    \CHAR_IS_K_OUT_reg[3] ,
    \data_nxt2_reg[0] ,
    \RX_PE_DATA_V_reg[0] ,
    after_scp_select_c_0,
    after_scp_select_c_1,
    reset_lanes_i,
    user_clk,
    \left_align_select_r_reg[0]_0 ,
    \left_align_select_r_reg[1]_0 ,
    \word_aligned_control_bits_r_reg[3] ,
    hard_err_gt0,
    init_clk_in,
    gen_cc_i,
    rx_realign_i,
    \DOUT_reg[0] ,
    reset_count_r_reg,
    reset_count_r_reg_0,
    RXCHARISK,
    RXDATA,
    \RX_CHAR_IS_COMMA_R_reg[3] ,
    \word_aligned_data_r_reg[24] ,
    \word_aligned_data_r_reg[18] ,
    \soft_err_r_reg[0] ,
    SS,
    \gen_v_r_reg[1] ,
    \tx_pe_data_v_r_reg[0] ,
    GEN_ECP,
    GEN_SCP,
    \gen_pad_r_reg[0] ,
    \gen_r_r_reg[0] ,
    \gen_k_r_reg[0] ,
    \tx_pe_data_r_reg[0] ,
    GEN_A);
  output lane_up;
  output ena_comma_align_i;
  output consecutive_commas_r;
  output begin_r;
  output enable_err_detect_i;
  output \left_align_select_r_reg[0] ;
  output \left_align_select_r_reg[1] ;
  output [0:0]D;
  output link_reset_out;
  output got_v_i;
  output rx_polarity_i;
  output hard_err_i;
  output ready_r_reg;
  output [5:0]Q;
  output \RX_PAD_reg[1] ;
  output \RX_ECP_reg[1] ;
  output [1:0]\RX_ECP_reg[0] ;
  output [1:0]\RX_SCP_reg[0] ;
  output \RX_ECP_reg[0]_0 ;
  output [1:0]\SOFT_ERR_reg[0] ;
  output [31:0]TXDATA;
  output [3:0]\CHAR_IS_K_OUT_reg[3] ;
  output [31:0]\data_nxt2_reg[0] ;
  output [1:0]\RX_PE_DATA_V_reg[0] ;
  output after_scp_select_c_0;
  output after_scp_select_c_1;
  input reset_lanes_i;
  input user_clk;
  input \left_align_select_r_reg[0]_0 ;
  input \left_align_select_r_reg[1]_0 ;
  input \word_aligned_control_bits_r_reg[3] ;
  input hard_err_gt0;
  input init_clk_in;
  input gen_cc_i;
  input rx_realign_i;
  input \DOUT_reg[0] ;
  input reset_count_r_reg;
  input reset_count_r_reg_0;
  input [3:0]RXCHARISK;
  input [31:0]RXDATA;
  input [3:0]\RX_CHAR_IS_COMMA_R_reg[3] ;
  input [7:0]\word_aligned_data_r_reg[24] ;
  input [5:0]\word_aligned_data_r_reg[18] ;
  input [3:0]\soft_err_r_reg[0] ;
  input [0:0]SS;
  input [2:0]\gen_v_r_reg[1] ;
  input [1:0]\tx_pe_data_v_r_reg[0] ;
  input [0:0]GEN_ECP;
  input [0:0]GEN_SCP;
  input [1:0]\gen_pad_r_reg[0] ;
  input [3:0]\gen_r_r_reg[0] ;
  input [3:0]\gen_k_r_reg[0] ;
  input [31:0]\tx_pe_data_r_reg[0] ;
  input GEN_A;

  wire [3:0]\CHAR_IS_K_OUT_reg[3] ;
  wire [0:0]D;
  wire \DOUT_reg[0] ;
  wire GEN_A;
  wire [0:0]GEN_ECP;
  wire [0:0]GEN_SCP;
  wire [5:0]Q;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire [3:0]\RX_CHAR_IS_COMMA_R_reg[3] ;
  wire [1:0]\RX_ECP_reg[0] ;
  wire \RX_ECP_reg[0]_0 ;
  wire \RX_ECP_reg[1] ;
  wire \RX_PAD_reg[1] ;
  wire [1:0]\RX_PE_DATA_V_reg[0] ;
  wire [1:0]\RX_SCP_reg[0] ;
  wire [1:0]\SOFT_ERR_reg[0] ;
  wire [0:0]SS;
  wire [31:0]TXDATA;
  wire after_scp_select_c_0;
  wire after_scp_select_c_1;
  wire \aurora_8b10b_0_descrambler0_i/p_0_in3_in ;
  wire \aurora_8b10b_0_descrambler0_i/p_11_in ;
  wire \aurora_8b10b_0_descrambler0_i/p_12_in ;
  wire \aurora_8b10b_0_descrambler0_i/p_13_in28_in ;
  wire \aurora_8b10b_0_descrambler0_i/p_14_in ;
  wire \aurora_8b10b_0_descrambler0_i/p_15_in25_in ;
  wire \aurora_8b10b_0_descrambler0_i/p_2_in ;
  wire \aurora_8b10b_0_descrambler0_i/p_5_in ;
  wire \aurora_8b10b_0_descrambler0_i/p_7_in ;
  wire \aurora_8b10b_0_descrambler0_i/p_8_in ;
  wire \aurora_8b10b_0_descrambler0_i/p_9_in ;
  wire \aurora_8b10b_0_descrambler1_i/p_0_in3_in ;
  wire \aurora_8b10b_0_descrambler1_i/p_11_in ;
  wire \aurora_8b10b_0_descrambler1_i/p_12_in ;
  wire \aurora_8b10b_0_descrambler1_i/p_13_in28_in ;
  wire \aurora_8b10b_0_descrambler1_i/p_14_in ;
  wire \aurora_8b10b_0_descrambler1_i/p_15_in25_in ;
  wire \aurora_8b10b_0_descrambler1_i/p_2_in ;
  wire \aurora_8b10b_0_descrambler1_i/p_5_in ;
  wire \aurora_8b10b_0_descrambler1_i/p_7_in ;
  wire \aurora_8b10b_0_descrambler1_i/p_8_in ;
  wire \aurora_8b10b_0_descrambler1_i/p_9_in ;
  wire aurora_8b10b_0_descrambler_top_i_n_15;
  wire aurora_8b10b_0_descrambler_top_i_n_27;
  wire \aurora_8b10b_0_scrambler0_i/p_0_in3_in ;
  wire \aurora_8b10b_0_scrambler0_i/p_11_in ;
  wire \aurora_8b10b_0_scrambler0_i/p_12_in ;
  wire \aurora_8b10b_0_scrambler0_i/p_13_in28_in ;
  wire \aurora_8b10b_0_scrambler0_i/p_14_in ;
  wire \aurora_8b10b_0_scrambler0_i/p_15_in25_in ;
  wire \aurora_8b10b_0_scrambler0_i/p_2_in ;
  wire \aurora_8b10b_0_scrambler0_i/p_5_in ;
  wire \aurora_8b10b_0_scrambler0_i/p_7_in ;
  wire \aurora_8b10b_0_scrambler0_i/p_8_in ;
  wire \aurora_8b10b_0_scrambler0_i/p_9_in ;
  wire \aurora_8b10b_0_scrambler1_i/p_0_in3_in ;
  wire \aurora_8b10b_0_scrambler1_i/p_11_in ;
  wire \aurora_8b10b_0_scrambler1_i/p_12_in ;
  wire \aurora_8b10b_0_scrambler1_i/p_13_in28_in ;
  wire \aurora_8b10b_0_scrambler1_i/p_14_in ;
  wire \aurora_8b10b_0_scrambler1_i/p_15_in25_in ;
  wire \aurora_8b10b_0_scrambler1_i/p_2_in ;
  wire \aurora_8b10b_0_scrambler1_i/p_5_in ;
  wire \aurora_8b10b_0_scrambler1_i/p_7_in ;
  wire \aurora_8b10b_0_scrambler1_i/p_8_in ;
  wire \aurora_8b10b_0_scrambler1_i/p_9_in ;
  wire aurora_8b10b_0_scrambler_top_i_n_11;
  wire aurora_8b10b_0_scrambler_top_i_n_23;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_14;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_15;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_22;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_55;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_56;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_57;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_58;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_59;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_60;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_61;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_62;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_63;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_64;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_65;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_66;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_67;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_68;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_69;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_70;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_71;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_72;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_73;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_74;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_75;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_76;
  wire aurora_8b10b_0_sym_dec_4byte_i_n_77;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_10;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_43;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_44;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_45;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_46;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_47;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_48;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_49;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_50;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_51;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_52;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_53;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_54;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_55;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_56;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_57;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_58;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_59;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_60;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_61;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_62;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_63;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_64;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_65;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_8;
  wire aurora_8b10b_0_sym_gen_4byte_i_n_9;
  wire begin_r;
  wire bypass_w0;
  wire bypass_w01_out;
  wire bypass_w_0;
  wire bypass_w_1;
  wire consecutive_commas_r;
  wire counter3_r0;
  wire counter4_r0;
  wire [31:0]\data_nxt2_reg[0] ;
  wire ena_comma_align_i;
  wire enable_err_detect_i;
  wire first_v_received_r;
  wire gen_cc_i;
  wire gen_cc_r;
  wire [3:0]\gen_k_r_reg[0] ;
  wire [1:0]\gen_pad_r_reg[0] ;
  wire [3:0]\gen_r_r_reg[0] ;
  wire gen_sp_i;
  wire gen_spa_i;
  wire gen_spa_r;
  wire gen_v_r;
  wire gen_v_r0_n_0;
  wire gen_v_r2;
  wire [2:0]\gen_v_r_reg[1] ;
  wire got_v_descram_in;
  wire got_v_i;
  wire hard_err_gt0;
  wire hard_err_i;
  wire init_clk_in;
  wire lane_up;
  wire \left_align_select_r_reg[0] ;
  wire \left_align_select_r_reg[0]_0 ;
  wire \left_align_select_r_reg[1] ;
  wire \left_align_select_r_reg[1]_0 ;
  wire link_reset_out;
  wire p_0_in__0;
  wire ready_r;
  wire ready_r_reg;
  wire ready_r_reg0;
  wire reset_count_r_reg;
  wire reset_count_r_reg_0;
  wire reset_lanes_i;
  wire [0:1]rx_ecp_descram_in;
  wire rx_neg_descram_in;
  wire rx_neg_i;
  wire [0:1]rx_pad_descram_in;
  wire [0:31]rx_pe_data_descram_in;
  wire [0:1]rx_pe_data_v_descram_in;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire [0:1]rx_scp_descram_in;
  wire rx_sp_descram_in;
  wire rx_spa_descram_in;
  wire [3:0]\soft_err_r_reg[0] ;
  wire [3:0]sym_gen_tx_char_is_k;
  wire [31:0]sym_gen_tx_data;
  wire [31:0]\tx_pe_data_r_reg[0] ;
  wire [1:0]\tx_pe_data_v_r_reg[0] ;
  wire user_clk;
  wire \word_aligned_control_bits_r_reg[3] ;
  wire [5:0]\word_aligned_data_r_reg[18] ;
  wire [7:0]\word_aligned_data_r_reg[24] ;

  aurora_8b10b_0_aurora_8b10b_0_descrambler_top aurora_8b10b_0_descrambler_top_i
       (.D({bypass_w01_out,bypass_w0}),
        .\DOUT_reg[0] (aurora_8b10b_0_sym_dec_4byte_i_n_15),
        .\DOUT_reg[0]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_14),
        .\DOUT_reg[0]_1 (aurora_8b10b_0_sym_dec_4byte_i_n_65),
        .\DOUT_reg[0]_2 (aurora_8b10b_0_sym_dec_4byte_i_n_77),
        .\DOUT_reg[10] (aurora_8b10b_0_sym_dec_4byte_i_n_59),
        .\DOUT_reg[10]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_71),
        .\DOUT_reg[11] (aurora_8b10b_0_sym_dec_4byte_i_n_58),
        .\DOUT_reg[11]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_70),
        .\DOUT_reg[12] (aurora_8b10b_0_sym_dec_4byte_i_n_57),
        .\DOUT_reg[12]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_69),
        .\DOUT_reg[13] (aurora_8b10b_0_sym_dec_4byte_i_n_56),
        .\DOUT_reg[13]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_68),
        .\DOUT_reg[14] (aurora_8b10b_0_sym_dec_4byte_i_n_55),
        .\DOUT_reg[14]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_67),
        .\DOUT_reg[15] (aurora_8b10b_0_sym_dec_4byte_i_n_22),
        .\DOUT_reg[15]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_66),
        .\DOUT_reg[1] (aurora_8b10b_0_sym_dec_4byte_i_n_64),
        .\DOUT_reg[1]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_76),
        .\DOUT_reg[4] (aurora_8b10b_0_sym_dec_4byte_i_n_63),
        .\DOUT_reg[4]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_75),
        .\DOUT_reg[5] (aurora_8b10b_0_sym_dec_4byte_i_n_62),
        .\DOUT_reg[5]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_74),
        .\DOUT_reg[8] (aurora_8b10b_0_sym_dec_4byte_i_n_61),
        .\DOUT_reg[8]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_73),
        .\DOUT_reg[9] (aurora_8b10b_0_sym_dec_4byte_i_n_60),
        .\DOUT_reg[9]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_72),
        .Q({\aurora_8b10b_0_descrambler0_i/p_11_in ,\aurora_8b10b_0_descrambler0_i/p_8_in ,\aurora_8b10b_0_descrambler0_i/p_2_in ,\aurora_8b10b_0_descrambler0_i/p_0_in3_in ,\aurora_8b10b_0_descrambler0_i/p_15_in25_in ,\aurora_8b10b_0_descrambler0_i/p_14_in ,\aurora_8b10b_0_descrambler0_i/p_13_in28_in ,\aurora_8b10b_0_descrambler0_i/p_12_in ,\aurora_8b10b_0_descrambler0_i/p_9_in ,\aurora_8b10b_0_descrambler0_i/p_7_in ,\aurora_8b10b_0_descrambler0_i/p_5_in ,aurora_8b10b_0_descrambler_top_i_n_15}),
        .\RX_ECP_reg[0]_0 (\RX_ECP_reg[0] ),
        .\RX_ECP_reg[0]_1 (\RX_ECP_reg[0]_0 ),
        .\RX_ECP_reg[0]_2 ({rx_ecp_descram_in[0],rx_ecp_descram_in[1]}),
        .\RX_ECP_reg[1]_0 (\RX_ECP_reg[1] ),
        .\RX_PAD_reg[0]_0 ({rx_pad_descram_in[0],rx_pad_descram_in[1]}),
        .\RX_PAD_reg[1]_0 (\RX_PAD_reg[1] ),
        .\RX_PE_DATA_V_reg[0]_0 (\RX_PE_DATA_V_reg[0] ),
        .\RX_PE_DATA_V_reg[0]_1 ({rx_pe_data_v_descram_in[0],rx_pe_data_v_descram_in[1]}),
        .\RX_SCP_reg[0]_0 (\RX_SCP_reg[0] ),
        .\RX_SCP_reg[0]_1 ({rx_scp_descram_in[0],rx_scp_descram_in[1]}),
        .SS(SS),
        .after_scp_select_c_0(after_scp_select_c_0),
        .after_scp_select_c_1(after_scp_select_c_1),
        .counter3_r0(counter3_r0),
        .counter4_r0(counter4_r0),
        .\data_nxt2_reg[0]_0 (\data_nxt2_reg[0] ),
        .\data_nxt2_reg[0]_1 ({rx_pe_data_descram_in[0],rx_pe_data_descram_in[1],rx_pe_data_descram_in[2],rx_pe_data_descram_in[3],rx_pe_data_descram_in[4],rx_pe_data_descram_in[5],rx_pe_data_descram_in[6],rx_pe_data_descram_in[7],rx_pe_data_descram_in[8],rx_pe_data_descram_in[9],rx_pe_data_descram_in[10],rx_pe_data_descram_in[11],rx_pe_data_descram_in[12],rx_pe_data_descram_in[13],rx_pe_data_descram_in[14],rx_pe_data_descram_in[15],rx_pe_data_descram_in[16],rx_pe_data_descram_in[17],rx_pe_data_descram_in[18],rx_pe_data_descram_in[19],rx_pe_data_descram_in[20],rx_pe_data_descram_in[21],rx_pe_data_descram_in[22],rx_pe_data_descram_in[23],rx_pe_data_descram_in[24],rx_pe_data_descram_in[25],rx_pe_data_descram_in[26],rx_pe_data_descram_in[27],rx_pe_data_descram_in[28],rx_pe_data_descram_in[29],rx_pe_data_descram_in[30],rx_pe_data_descram_in[31]}),
        .gen_spa_i(gen_spa_i),
        .got_v_descram_in(got_v_descram_in),
        .got_v_i(got_v_i),
        .\lfsr_reg[15] ({\aurora_8b10b_0_descrambler1_i/p_11_in ,\aurora_8b10b_0_descrambler1_i/p_8_in ,\aurora_8b10b_0_descrambler1_i/p_2_in ,\aurora_8b10b_0_descrambler1_i/p_0_in3_in ,\aurora_8b10b_0_descrambler1_i/p_15_in25_in ,\aurora_8b10b_0_descrambler1_i/p_14_in ,\aurora_8b10b_0_descrambler1_i/p_13_in28_in ,\aurora_8b10b_0_descrambler1_i/p_12_in ,\aurora_8b10b_0_descrambler1_i/p_9_in ,\aurora_8b10b_0_descrambler1_i/p_7_in ,\aurora_8b10b_0_descrambler1_i/p_5_in ,aurora_8b10b_0_descrambler_top_i_n_27}),
        .ready_r(ready_r),
        .rx_neg_descram_in(rx_neg_descram_in),
        .rx_neg_i(rx_neg_i),
        .rx_sp_descram_in(rx_sp_descram_in),
        .rx_spa_descram_in(rx_spa_descram_in),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_ERR_DETECT_4BYTE aurora_8b10b_0_err_detect_4byte_i
       (.\SOFT_ERR_reg[0]_0 (\SOFT_ERR_reg[0] ),
        .enable_err_detect_i(enable_err_detect_i),
        .hard_err_gt0(hard_err_gt0),
        .hard_err_i(hard_err_i),
        .p_0_in__0(p_0_in__0),
        .ready_r_reg0(ready_r_reg0),
        .reset_lanes_i(reset_lanes_i),
        .\soft_err_r_reg[0]_0 (\soft_err_r_reg[0] ),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_hotplug aurora_8b10b_0_hotplug_i
       (.D(D),
        .init_clk_in(init_clk_in),
        .link_reset_out(link_reset_out),
        .reset_lanes_i(reset_lanes_i),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_LANE_INIT_SM_4BYTE aurora_8b10b_0_lane_init_sm_4byte_i
       (.GEN_SP(gen_sp_i),
        .RXCHARISK(RXCHARISK[3:2]),
        .\RX_CHAR_IS_COMMA_R_reg[3]_0 (\RX_CHAR_IS_COMMA_R_reg[3] ),
        .align_r_reg_0(ena_comma_align_i),
        .begin_r(begin_r),
        .consecutive_commas_r(consecutive_commas_r),
        .counter3_r0(counter3_r0),
        .counter4_r0(counter4_r0),
        .enable_err_detect_i(enable_err_detect_i),
        .first_v_received_r(first_v_received_r),
        .gen_spa_i(gen_spa_i),
        .gen_spa_r(gen_spa_r),
        .lane_up(lane_up),
        .p_0_in__0(p_0_in__0),
        .ready_r(ready_r),
        .ready_r_reg0(ready_r_reg0),
        .ready_r_reg_0(ready_r_reg),
        .reset_count_r_reg_0(reset_count_r_reg),
        .reset_count_r_reg_1(reset_count_r_reg_0),
        .reset_lanes_i(reset_lanes_i),
        .rx_neg_i(rx_neg_i),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_scrambler_top aurora_8b10b_0_scrambler_top_i
       (.\CHAR_IS_K_OUT_reg[3]_0 (\CHAR_IS_K_OUT_reg[3] ),
        .\CHAR_IS_K_OUT_reg[3]_1 (sym_gen_tx_char_is_k),
        .D(sym_gen_tx_data),
        .\DOUT_reg[0] (aurora_8b10b_0_sym_gen_4byte_i_n_9),
        .\DOUT_reg[0]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_8),
        .\DOUT_reg[0]_1 (aurora_8b10b_0_sym_gen_4byte_i_n_53),
        .\DOUT_reg[0]_2 (aurora_8b10b_0_sym_gen_4byte_i_n_65),
        .\DOUT_reg[10] (aurora_8b10b_0_sym_gen_4byte_i_n_47),
        .\DOUT_reg[10]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_59),
        .\DOUT_reg[11] (aurora_8b10b_0_sym_gen_4byte_i_n_46),
        .\DOUT_reg[11]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_58),
        .\DOUT_reg[12] (aurora_8b10b_0_sym_gen_4byte_i_n_45),
        .\DOUT_reg[12]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_57),
        .\DOUT_reg[13] (aurora_8b10b_0_sym_gen_4byte_i_n_44),
        .\DOUT_reg[13]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_56),
        .\DOUT_reg[14] (aurora_8b10b_0_sym_gen_4byte_i_n_43),
        .\DOUT_reg[14]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_55),
        .\DOUT_reg[15] (aurora_8b10b_0_sym_gen_4byte_i_n_10),
        .\DOUT_reg[15]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_54),
        .\DOUT_reg[1] (aurora_8b10b_0_sym_gen_4byte_i_n_52),
        .\DOUT_reg[1]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_64),
        .\DOUT_reg[4] (aurora_8b10b_0_sym_gen_4byte_i_n_51),
        .\DOUT_reg[4]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_63),
        .\DOUT_reg[5] (aurora_8b10b_0_sym_gen_4byte_i_n_50),
        .\DOUT_reg[5]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_62),
        .\DOUT_reg[8] (aurora_8b10b_0_sym_gen_4byte_i_n_49),
        .\DOUT_reg[8]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_61),
        .\DOUT_reg[9] (aurora_8b10b_0_sym_gen_4byte_i_n_48),
        .\DOUT_reg[9]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_60),
        .Q({\aurora_8b10b_0_scrambler0_i/p_11_in ,\aurora_8b10b_0_scrambler0_i/p_8_in ,\aurora_8b10b_0_scrambler0_i/p_2_in ,\aurora_8b10b_0_scrambler0_i/p_0_in3_in ,\aurora_8b10b_0_scrambler0_i/p_15_in25_in ,\aurora_8b10b_0_scrambler0_i/p_14_in ,\aurora_8b10b_0_scrambler0_i/p_13_in28_in ,\aurora_8b10b_0_scrambler0_i/p_12_in ,\aurora_8b10b_0_scrambler0_i/p_9_in ,\aurora_8b10b_0_scrambler0_i/p_7_in ,\aurora_8b10b_0_scrambler0_i/p_5_in ,aurora_8b10b_0_scrambler_top_i_n_11}),
        .TXDATA(TXDATA),
        .\bypass_r_reg[1]_0 ({bypass_w_1,bypass_w_0}),
        .gen_cc_r(gen_cc_r),
        .gen_v_r2(gen_v_r2),
        .\lfsr_reg[15] ({\aurora_8b10b_0_scrambler1_i/p_11_in ,\aurora_8b10b_0_scrambler1_i/p_8_in ,\aurora_8b10b_0_scrambler1_i/p_2_in ,\aurora_8b10b_0_scrambler1_i/p_0_in3_in ,\aurora_8b10b_0_scrambler1_i/p_15_in25_in ,\aurora_8b10b_0_scrambler1_i/p_14_in ,\aurora_8b10b_0_scrambler1_i/p_13_in28_in ,\aurora_8b10b_0_scrambler1_i/p_12_in ,\aurora_8b10b_0_scrambler1_i/p_9_in ,\aurora_8b10b_0_scrambler1_i/p_7_in ,\aurora_8b10b_0_scrambler1_i/p_5_in ,aurora_8b10b_0_scrambler_top_i_n_23}),
        .\lfsr_reg[15]_0 (\DOUT_reg[0] ),
        .reset_lanes_i(reset_lanes_i),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_SYM_DEC_4BYTE aurora_8b10b_0_sym_dec_4byte_i
       (.D(D),
        .\DOUT_reg[0] (\DOUT_reg[0] ),
        .\DOUT_reg[0]_0 ({\aurora_8b10b_0_descrambler1_i/p_11_in ,\aurora_8b10b_0_descrambler1_i/p_8_in ,\aurora_8b10b_0_descrambler1_i/p_2_in ,\aurora_8b10b_0_descrambler1_i/p_0_in3_in ,\aurora_8b10b_0_descrambler1_i/p_15_in25_in ,\aurora_8b10b_0_descrambler1_i/p_14_in ,\aurora_8b10b_0_descrambler1_i/p_13_in28_in ,\aurora_8b10b_0_descrambler1_i/p_12_in ,\aurora_8b10b_0_descrambler1_i/p_9_in ,\aurora_8b10b_0_descrambler1_i/p_7_in ,\aurora_8b10b_0_descrambler1_i/p_5_in ,aurora_8b10b_0_descrambler_top_i_n_27}),
        .\DOUT_reg[0]_1 ({\aurora_8b10b_0_descrambler0_i/p_11_in ,\aurora_8b10b_0_descrambler0_i/p_8_in ,\aurora_8b10b_0_descrambler0_i/p_2_in ,\aurora_8b10b_0_descrambler0_i/p_0_in3_in ,\aurora_8b10b_0_descrambler0_i/p_15_in25_in ,\aurora_8b10b_0_descrambler0_i/p_14_in ,\aurora_8b10b_0_descrambler0_i/p_13_in28_in ,\aurora_8b10b_0_descrambler0_i/p_12_in ,\aurora_8b10b_0_descrambler0_i/p_9_in ,\aurora_8b10b_0_descrambler0_i/p_7_in ,\aurora_8b10b_0_descrambler0_i/p_5_in ,aurora_8b10b_0_descrambler_top_i_n_15}),
        .Q({rx_pad_descram_in[0],rx_pad_descram_in[1]}),
        .RXCHARISK(RXCHARISK),
        .RXDATA(RXDATA),
        .\RX_ECP_reg[0]_0 ({rx_ecp_descram_in[0],rx_ecp_descram_in[1]}),
        .\RX_PAD_reg[0]_0 ({bypass_w01_out,bypass_w0}),
        .\RX_PE_DATA_V_reg[0]_0 ({rx_pe_data_v_descram_in[0],rx_pe_data_v_descram_in[1]}),
        .\RX_PE_DATA_reg[0]_0 ({rx_pe_data_descram_in[0],rx_pe_data_descram_in[1],rx_pe_data_descram_in[2],rx_pe_data_descram_in[3],rx_pe_data_descram_in[4],rx_pe_data_descram_in[5],rx_pe_data_descram_in[6],rx_pe_data_descram_in[7],rx_pe_data_descram_in[8],rx_pe_data_descram_in[9],rx_pe_data_descram_in[10],rx_pe_data_descram_in[11],rx_pe_data_descram_in[12],rx_pe_data_descram_in[13],rx_pe_data_descram_in[14],rx_pe_data_descram_in[15],rx_pe_data_descram_in[16],rx_pe_data_descram_in[17],rx_pe_data_descram_in[18],rx_pe_data_descram_in[19],rx_pe_data_descram_in[20],rx_pe_data_descram_in[21],rx_pe_data_descram_in[22],rx_pe_data_descram_in[23],rx_pe_data_descram_in[24],rx_pe_data_descram_in[25],rx_pe_data_descram_in[26],rx_pe_data_descram_in[27],rx_pe_data_descram_in[28],rx_pe_data_descram_in[29],rx_pe_data_descram_in[30],rx_pe_data_descram_in[31]}),
        .\RX_PE_DATA_reg[0]_1 (aurora_8b10b_0_sym_dec_4byte_i_n_66),
        .\RX_PE_DATA_reg[10]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_74),
        .\RX_PE_DATA_reg[11]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_75),
        .\RX_PE_DATA_reg[14]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_76),
        .\RX_PE_DATA_reg[15]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_77),
        .\RX_PE_DATA_reg[16]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_22),
        .\RX_PE_DATA_reg[17]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_55),
        .\RX_PE_DATA_reg[18]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_56),
        .\RX_PE_DATA_reg[19]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_57),
        .\RX_PE_DATA_reg[1]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_67),
        .\RX_PE_DATA_reg[20]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_58),
        .\RX_PE_DATA_reg[21]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_59),
        .\RX_PE_DATA_reg[22]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_60),
        .\RX_PE_DATA_reg[23]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_61),
        .\RX_PE_DATA_reg[26]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_62),
        .\RX_PE_DATA_reg[27]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_63),
        .\RX_PE_DATA_reg[2]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_68),
        .\RX_PE_DATA_reg[30]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_64),
        .\RX_PE_DATA_reg[31]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_65),
        .\RX_PE_DATA_reg[3]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_69),
        .\RX_PE_DATA_reg[4]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_70),
        .\RX_PE_DATA_reg[5]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_71),
        .\RX_PE_DATA_reg[6]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_72),
        .\RX_PE_DATA_reg[7]_0 (aurora_8b10b_0_sym_dec_4byte_i_n_73),
        .\RX_SCP_reg[0]_0 ({rx_scp_descram_in[0],rx_scp_descram_in[1]}),
        .first_v_received_r(first_v_received_r),
        .got_v_descram_in(got_v_descram_in),
        .lane_up(lane_up),
        .\left_align_select_r_reg[0]_0 (\left_align_select_r_reg[0] ),
        .\left_align_select_r_reg[0]_1 (\left_align_select_r_reg[0]_0 ),
        .\left_align_select_r_reg[1]_0 (\left_align_select_r_reg[1] ),
        .\left_align_select_r_reg[1]_1 (\left_align_select_r_reg[1]_0 ),
        .\previous_cycle_data_r_reg[5]_0 (Q),
        .reset_lanes_flop_i(aurora_8b10b_0_sym_dec_4byte_i_n_14),
        .reset_lanes_flop_i_0(aurora_8b10b_0_sym_dec_4byte_i_n_15),
        .reset_lanes_i(reset_lanes_i),
        .rx_neg_descram_in(rx_neg_descram_in),
        .rx_sp_descram_in(rx_sp_descram_in),
        .rx_spa_descram_in(rx_spa_descram_in),
        .user_clk(user_clk),
        .\word_aligned_control_bits_r_reg[3]_0 (\word_aligned_control_bits_r_reg[3] ),
        .\word_aligned_data_r_reg[18]_0 (\word_aligned_data_r_reg[18] ),
        .\word_aligned_data_r_reg[24]_0 (\word_aligned_data_r_reg[24] ));
  aurora_8b10b_0_aurora_8b10b_0_SYM_GEN_4BYTE aurora_8b10b_0_sym_gen_4byte_i
       (.D(sym_gen_tx_data),
        .\DOUT_reg[0] (\DOUT_reg[0] ),
        .\DOUT_reg[0]_0 ({\aurora_8b10b_0_scrambler1_i/p_11_in ,\aurora_8b10b_0_scrambler1_i/p_8_in ,\aurora_8b10b_0_scrambler1_i/p_2_in ,\aurora_8b10b_0_scrambler1_i/p_0_in3_in ,\aurora_8b10b_0_scrambler1_i/p_15_in25_in ,\aurora_8b10b_0_scrambler1_i/p_14_in ,\aurora_8b10b_0_scrambler1_i/p_13_in28_in ,\aurora_8b10b_0_scrambler1_i/p_12_in ,\aurora_8b10b_0_scrambler1_i/p_9_in ,\aurora_8b10b_0_scrambler1_i/p_7_in ,\aurora_8b10b_0_scrambler1_i/p_5_in ,aurora_8b10b_0_scrambler_top_i_n_23}),
        .GEN_A(GEN_A),
        .GEN_ECP(GEN_ECP),
        .GEN_SCP(GEN_SCP),
        .GEN_SP(gen_sp_i),
        .Q({\aurora_8b10b_0_scrambler0_i/p_11_in ,\aurora_8b10b_0_scrambler0_i/p_8_in ,\aurora_8b10b_0_scrambler0_i/p_2_in ,\aurora_8b10b_0_scrambler0_i/p_0_in3_in ,\aurora_8b10b_0_scrambler0_i/p_15_in25_in ,\aurora_8b10b_0_scrambler0_i/p_14_in ,\aurora_8b10b_0_scrambler0_i/p_13_in28_in ,\aurora_8b10b_0_scrambler0_i/p_12_in ,\aurora_8b10b_0_scrambler0_i/p_9_in ,\aurora_8b10b_0_scrambler0_i/p_7_in ,\aurora_8b10b_0_scrambler0_i/p_5_in ,aurora_8b10b_0_scrambler_top_i_n_11}),
        .\TX_CHAR_IS_K_reg[3]_0 ({bypass_w_1,bypass_w_0}),
        .\TX_CHAR_IS_K_reg[3]_1 (sym_gen_tx_char_is_k),
        .\TX_DATA_reg[0]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_53),
        .\TX_DATA_reg[10]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_47),
        .\TX_DATA_reg[11]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_46),
        .\TX_DATA_reg[12]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_45),
        .\TX_DATA_reg[13]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_44),
        .\TX_DATA_reg[14]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_43),
        .\TX_DATA_reg[15]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_10),
        .\TX_DATA_reg[16]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_65),
        .\TX_DATA_reg[17]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_64),
        .\TX_DATA_reg[1]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_52),
        .\TX_DATA_reg[20]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_63),
        .\TX_DATA_reg[21]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_62),
        .\TX_DATA_reg[24]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_61),
        .\TX_DATA_reg[25]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_60),
        .\TX_DATA_reg[26]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_59),
        .\TX_DATA_reg[27]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_58),
        .\TX_DATA_reg[28]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_57),
        .\TX_DATA_reg[29]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_56),
        .\TX_DATA_reg[30]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_55),
        .\TX_DATA_reg[31]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_54),
        .\TX_DATA_reg[4]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_51),
        .\TX_DATA_reg[5]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_50),
        .\TX_DATA_reg[8]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_49),
        .\TX_DATA_reg[9]_0 (aurora_8b10b_0_sym_gen_4byte_i_n_48),
        .gen_cc_i(gen_cc_i),
        .gen_cc_r(gen_cc_r),
        .\gen_k_r_reg[0]_0 (\gen_k_r_reg[0] ),
        .\gen_pad_r_reg[0]_0 (\gen_pad_r_reg[0] ),
        .\gen_r_r_reg[0]_0 (\gen_r_r_reg[0] ),
        .gen_spa_i(gen_spa_i),
        .gen_spa_r(gen_spa_r),
        .gen_v_r2(gen_v_r2),
        .\gen_v_r_reg[1]_0 (\gen_v_r_reg[1] ),
        .reset_lanes_flop_i(aurora_8b10b_0_sym_gen_4byte_i_n_8),
        .reset_lanes_flop_i_0(aurora_8b10b_0_sym_gen_4byte_i_n_9),
        .reset_lanes_i(reset_lanes_i),
        .\tx_pe_data_r_reg[0]_0 (\tx_pe_data_r_reg[0] ),
        .\tx_pe_data_v_r_reg[0]_0 (\tx_pe_data_v_r_reg[0] ),
        .user_clk(user_clk));
  LUT3 #(
    .INIT(8'hFE)) 
    gen_v_r0
       (.I0(\gen_v_r_reg[1] [1]),
        .I1(\gen_v_r_reg[1] [0]),
        .I2(\gen_v_r_reg[1] [2]),
        .O(gen_v_r0_n_0));
  FDRE gen_v_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_v_r),
        .Q(gen_v_r2),
        .R(1'b0));
  FDRE gen_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_v_r0_n_0),
        .Q(gen_v_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_AXI_TO_LL" *) 
module aurora_8b10b_0_aurora_8b10b_0_AXI_TO_LL
   (new_pkt_r_reg_0,
    new_pkt_r,
    user_clk);
  output new_pkt_r_reg_0;
  input new_pkt_r;
  input user_clk;

  wire new_pkt_r;
  wire new_pkt_r_reg_0;
  wire user_clk;

  FDRE new_pkt_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(new_pkt_r),
        .Q(new_pkt_r_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_CHANNEL_ERR_DETECT" *) 
module aurora_8b10b_0_aurora_8b10b_0_CHANNEL_ERR_DETECT
   (soft_err,
    hard_err,
    reset_channel_i,
    wait_for_lane_up_r0,
    user_clk,
    hard_err_i,
    lane_up,
    verify_r_reg,
    power_down,
    \soft_err_r_reg[0]_0 );
  output soft_err;
  output hard_err;
  output reset_channel_i;
  output wait_for_lane_up_r0;
  input user_clk;
  input hard_err_i;
  input lane_up;
  input verify_r_reg;
  input power_down;
  input [1:0]\soft_err_r_reg[0]_0 ;

  wire RESET_CHANNEL0;
  wire channel_soft_err_c;
  wire hard_err;
  wire hard_err_i;
  wire hard_err_r;
  wire lane_up;
  wire lane_up_r;
  wire power_down;
  wire reset_channel_i;
  wire soft_err;
  wire [1:0]soft_err_r;
  wire [1:0]\soft_err_r_reg[0]_0 ;
  wire user_clk;
  wire verify_r_reg;
  wire wait_for_lane_up_r0;

  FDRE #(
    .INIT(1'b1)) 
    CHANNEL_HARD_ERR_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_r),
        .Q(hard_err),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    CHANNEL_SOFT_ERR_i_1
       (.I0(soft_err_r[1]),
        .I1(soft_err_r[0]),
        .O(channel_soft_err_c));
  FDRE #(
    .INIT(1'b1)) 
    CHANNEL_SOFT_ERR_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(channel_soft_err_c),
        .Q(soft_err),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    RESET_CHANNEL_i_1
       (.I0(power_down),
        .I1(lane_up_r),
        .O(RESET_CHANNEL0));
  FDRE #(
    .INIT(1'b1)) 
    RESET_CHANNEL_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RESET_CHANNEL0),
        .Q(reset_channel_i),
        .R(1'b0));
  FDRE hard_err_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_i),
        .Q(hard_err_r),
        .R(1'b0));
  FDRE lane_up_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(lane_up),
        .Q(lane_up_r),
        .R(1'b0));
  FDRE \soft_err_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[0]_0 [1]),
        .Q(soft_err_r[1]),
        .R(1'b0));
  FDRE \soft_err_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[0]_0 [0]),
        .Q(soft_err_r[0]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    verify_r_i_1
       (.I0(reset_channel_i),
        .I1(verify_r_reg),
        .O(wait_for_lane_up_r0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_CHANNEL_INIT_SM" *) 
module aurora_8b10b_0_aurora_8b10b_0_CHANNEL_INIT_SM
   (reset_lanes_i,
    GTRXRESET_OUT,
    gen_ver_i,
    CHANNEL_UP_reg_0,
    START_RX,
    SS,
    CHANNEL_UP_reg_1,
    SR,
    user_clk,
    got_v_i,
    wait_for_lane_up_r0,
    START_RX_reg_0,
    txver_count_r0,
    D,
    reset_channel_i);
  output reset_lanes_i;
  output GTRXRESET_OUT;
  output gen_ver_i;
  output CHANNEL_UP_reg_0;
  output START_RX;
  output [0:0]SS;
  output CHANNEL_UP_reg_1;
  output [0:0]SR;
  input user_clk;
  input got_v_i;
  input wait_for_lane_up_r0;
  input START_RX_reg_0;
  input txver_count_r0;
  input [0:0]D;
  input reset_channel_i;

  wire CHANNEL_UP_reg_0;
  wire CHANNEL_UP_reg_1;
  wire [0:0]D;
  wire GTRXRESET_OUT;
  wire GTRXRESET_OUT_i_1_n_0;
  wire GTRXRESET_OUT_i_2_n_0;
  wire [0:0]SR;
  wire [0:0]SS;
  wire START_RX;
  wire START_RX0;
  wire START_RX_reg_0;
  wire all_lanes_v_r;
  wire bad_v_r;
  wire bad_v_r0;
  wire \free_count_r[13]_i_2_n_0 ;
  wire \free_count_r[13]_i_3_n_0 ;
  wire \free_count_r[13]_i_4_n_0 ;
  wire \free_count_r[13]_i_5_n_0 ;
  wire \free_count_r[1]_i_2_n_0 ;
  wire \free_count_r[1]_i_3_n_0 ;
  wire \free_count_r[5]_i_2_n_0 ;
  wire \free_count_r[5]_i_3_n_0 ;
  wire \free_count_r[5]_i_4_n_0 ;
  wire \free_count_r[5]_i_5_n_0 ;
  wire \free_count_r[9]_i_2_n_0 ;
  wire \free_count_r[9]_i_3_n_0 ;
  wire \free_count_r[9]_i_4_n_0 ;
  wire \free_count_r[9]_i_5_n_0 ;
  wire [0:13]free_count_r_reg;
  wire \free_count_r_reg[13]_i_1_n_0 ;
  wire \free_count_r_reg[13]_i_1_n_1 ;
  wire \free_count_r_reg[13]_i_1_n_2 ;
  wire \free_count_r_reg[13]_i_1_n_3 ;
  wire \free_count_r_reg[13]_i_1_n_4 ;
  wire \free_count_r_reg[13]_i_1_n_5 ;
  wire \free_count_r_reg[13]_i_1_n_6 ;
  wire \free_count_r_reg[13]_i_1_n_7 ;
  wire \free_count_r_reg[1]_i_1_n_3 ;
  wire \free_count_r_reg[1]_i_1_n_6 ;
  wire \free_count_r_reg[1]_i_1_n_7 ;
  wire \free_count_r_reg[5]_i_1_n_0 ;
  wire \free_count_r_reg[5]_i_1_n_1 ;
  wire \free_count_r_reg[5]_i_1_n_2 ;
  wire \free_count_r_reg[5]_i_1_n_3 ;
  wire \free_count_r_reg[5]_i_1_n_4 ;
  wire \free_count_r_reg[5]_i_1_n_5 ;
  wire \free_count_r_reg[5]_i_1_n_6 ;
  wire \free_count_r_reg[5]_i_1_n_7 ;
  wire \free_count_r_reg[9]_i_1_n_0 ;
  wire \free_count_r_reg[9]_i_1_n_1 ;
  wire \free_count_r_reg[9]_i_1_n_2 ;
  wire \free_count_r_reg[9]_i_1_n_3 ;
  wire \free_count_r_reg[9]_i_1_n_4 ;
  wire \free_count_r_reg[9]_i_1_n_5 ;
  wire \free_count_r_reg[9]_i_1_n_6 ;
  wire \free_count_r_reg[9]_i_1_n_7 ;
  wire gen_ver_i;
  wire got_first_v_r;
  wire got_first_v_r_i_1_n_0;
  wire got_v_i;
  wire gtreset_c;
  wire [7:0]gtrxreset_extend_r;
  wire gtrxreset_nxt;
  wire next_ready_c;
  wire next_verify_c;
  wire [15:15]p_2_out;
  wire ready_r;
  wire ready_r2;
  wire reset_channel_i;
  wire reset_lanes_c;
  wire reset_lanes_i;
  wire \rxver_count_r_reg[1]_srl2_i_1_n_0 ;
  wire \rxver_count_r_reg[1]_srl2_n_0 ;
  wire \rxver_count_r_reg_n_0_[2] ;
  wire txver_count_r0;
  wire \txver_count_r_reg[6]_srl7_n_0 ;
  wire \txver_count_r_reg_n_0_[7] ;
  wire user_clk;
  wire \v_count_r_reg[14]_srl15_n_0 ;
  wire \v_count_r_reg_n_0_[15] ;
  wire \verify_watchdog_r_reg[14]_srl15_i_1_n_0 ;
  wire \verify_watchdog_r_reg[14]_srl15_i_2_n_0 ;
  wire \verify_watchdog_r_reg[14]_srl15_i_3_n_0 ;
  wire \verify_watchdog_r_reg[14]_srl15_i_4_n_0 ;
  wire \verify_watchdog_r_reg[14]_srl15_n_0 ;
  wire \verify_watchdog_r_reg_n_0_[15] ;
  wire wait_for_lane_up_r;
  wire wait_for_lane_up_r0;
  wire [3:1]\NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED ;

  FDRE CHANNEL_UP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r2),
        .Q(CHANNEL_UP_reg_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    FRAME_ERR_i_1
       (.I0(START_RX),
        .O(SR));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    GTRXRESET_OUT_i_1
       (.I0(gtrxreset_extend_r[2]),
        .I1(gtrxreset_extend_r[3]),
        .I2(gtrxreset_extend_r[0]),
        .I3(gtrxreset_extend_r[1]),
        .I4(GTRXRESET_OUT_i_2_n_0),
        .O(GTRXRESET_OUT_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    GTRXRESET_OUT_i_2
       (.I0(gtrxreset_extend_r[5]),
        .I1(gtrxreset_extend_r[4]),
        .I2(gtrxreset_extend_r[7]),
        .I3(gtrxreset_extend_r[6]),
        .O(GTRXRESET_OUT_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    GTRXRESET_OUT_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GTRXRESET_OUT_i_1_n_0),
        .Q(GTRXRESET_OUT),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    START_RX_i_1
       (.I0(wait_for_lane_up_r),
        .O(START_RX0));
  FDRE START_RX_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(START_RX0),
        .Q(START_RX),
        .R(START_RX_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT1 #(
    .INIT(2'h1)) 
    TX_DST_RDY_N_i_1
       (.I0(CHANNEL_UP_reg_0),
        .O(CHANNEL_UP_reg_1));
  FDRE all_lanes_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(got_v_i),
        .Q(all_lanes_v_r),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h28)) 
    bad_v_r_i_1
       (.I0(got_first_v_r),
        .I1(all_lanes_v_r),
        .I2(\v_count_r_reg_n_0_[15] ),
        .O(bad_v_r0));
  FDRE bad_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(bad_v_r0),
        .Q(bad_v_r),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[13]_i_2 
       (.I0(free_count_r_reg[10]),
        .O(\free_count_r[13]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[13]_i_3 
       (.I0(free_count_r_reg[11]),
        .O(\free_count_r[13]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[13]_i_4 
       (.I0(free_count_r_reg[12]),
        .O(\free_count_r[13]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[13]_i_5 
       (.I0(free_count_r_reg[13]),
        .O(\free_count_r[13]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[1]_i_2 
       (.I0(free_count_r_reg[0]),
        .O(\free_count_r[1]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[1]_i_3 
       (.I0(free_count_r_reg[1]),
        .O(\free_count_r[1]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[5]_i_2 
       (.I0(free_count_r_reg[2]),
        .O(\free_count_r[5]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[5]_i_3 
       (.I0(free_count_r_reg[3]),
        .O(\free_count_r[5]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[5]_i_4 
       (.I0(free_count_r_reg[4]),
        .O(\free_count_r[5]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[5]_i_5 
       (.I0(free_count_r_reg[5]),
        .O(\free_count_r[5]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[9]_i_2 
       (.I0(free_count_r_reg[6]),
        .O(\free_count_r[9]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[9]_i_3 
       (.I0(free_count_r_reg[7]),
        .O(\free_count_r[9]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[9]_i_4 
       (.I0(free_count_r_reg[8]),
        .O(\free_count_r[9]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[9]_i_5 
       (.I0(free_count_r_reg[9]),
        .O(\free_count_r[9]_i_5_n_0 ));
  FDSE \free_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[1]_i_1_n_6 ),
        .Q(free_count_r_reg[0]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[13]_i_1_n_4 ),
        .Q(free_count_r_reg[10]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[13]_i_1_n_5 ),
        .Q(free_count_r_reg[11]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[13]_i_1_n_6 ),
        .Q(free_count_r_reg[12]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[13]_i_1_n_7 ),
        .Q(free_count_r_reg[13]),
        .S(wait_for_lane_up_r0));
  CARRY4 \free_count_r_reg[13]_i_1 
       (.CI(1'b0),
        .CO({\free_count_r_reg[13]_i_1_n_0 ,\free_count_r_reg[13]_i_1_n_1 ,\free_count_r_reg[13]_i_1_n_2 ,\free_count_r_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\free_count_r_reg[13]_i_1_n_4 ,\free_count_r_reg[13]_i_1_n_5 ,\free_count_r_reg[13]_i_1_n_6 ,\free_count_r_reg[13]_i_1_n_7 }),
        .S({\free_count_r[13]_i_2_n_0 ,\free_count_r[13]_i_3_n_0 ,\free_count_r[13]_i_4_n_0 ,\free_count_r[13]_i_5_n_0 }));
  FDSE \free_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[1]_i_1_n_7 ),
        .Q(free_count_r_reg[1]),
        .S(wait_for_lane_up_r0));
  CARRY4 \free_count_r_reg[1]_i_1 
       (.CI(\free_count_r_reg[5]_i_1_n_0 ),
        .CO({\NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED [3:1],\free_count_r_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED [3:2],\free_count_r_reg[1]_i_1_n_6 ,\free_count_r_reg[1]_i_1_n_7 }),
        .S({1'b0,1'b0,\free_count_r[1]_i_2_n_0 ,\free_count_r[1]_i_3_n_0 }));
  FDSE \free_count_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[5]_i_1_n_4 ),
        .Q(free_count_r_reg[2]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[5]_i_1_n_5 ),
        .Q(free_count_r_reg[3]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[5]_i_1_n_6 ),
        .Q(free_count_r_reg[4]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[5]_i_1_n_7 ),
        .Q(free_count_r_reg[5]),
        .S(wait_for_lane_up_r0));
  CARRY4 \free_count_r_reg[5]_i_1 
       (.CI(\free_count_r_reg[9]_i_1_n_0 ),
        .CO({\free_count_r_reg[5]_i_1_n_0 ,\free_count_r_reg[5]_i_1_n_1 ,\free_count_r_reg[5]_i_1_n_2 ,\free_count_r_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\free_count_r_reg[5]_i_1_n_4 ,\free_count_r_reg[5]_i_1_n_5 ,\free_count_r_reg[5]_i_1_n_6 ,\free_count_r_reg[5]_i_1_n_7 }),
        .S({\free_count_r[5]_i_2_n_0 ,\free_count_r[5]_i_3_n_0 ,\free_count_r[5]_i_4_n_0 ,\free_count_r[5]_i_5_n_0 }));
  FDSE \free_count_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[9]_i_1_n_4 ),
        .Q(free_count_r_reg[6]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[9]_i_1_n_5 ),
        .Q(free_count_r_reg[7]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[9]_i_1_n_6 ),
        .Q(free_count_r_reg[8]),
        .S(wait_for_lane_up_r0));
  FDSE \free_count_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\free_count_r_reg[9]_i_1_n_7 ),
        .Q(free_count_r_reg[9]),
        .S(wait_for_lane_up_r0));
  CARRY4 \free_count_r_reg[9]_i_1 
       (.CI(\free_count_r_reg[13]_i_1_n_0 ),
        .CO({\free_count_r_reg[9]_i_1_n_0 ,\free_count_r_reg[9]_i_1_n_1 ,\free_count_r_reg[9]_i_1_n_2 ,\free_count_r_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\free_count_r_reg[9]_i_1_n_4 ,\free_count_r_reg[9]_i_1_n_5 ,\free_count_r_reg[9]_i_1_n_6 ,\free_count_r_reg[9]_i_1_n_7 }),
        .S({\free_count_r[9]_i_2_n_0 ,\free_count_r[9]_i_3_n_0 ,\free_count_r[9]_i_4_n_0 ,\free_count_r[9]_i_5_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    got_first_v_r_i_1
       (.I0(gen_ver_i),
        .I1(got_first_v_r),
        .I2(all_lanes_v_r),
        .O(got_first_v_r_i_1_n_0));
  FDRE got_first_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(got_first_v_r_i_1_n_0),
        .Q(got_first_v_r),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b1)) 
    gtreset_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gtreset_c),
        .Q(gtrxreset_nxt),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8A88)) 
    gtreset_flop_0_i_i_1
       (.I0(gen_ver_i),
        .I1(\verify_watchdog_r_reg_n_0_[15] ),
        .I2(\rxver_count_r_reg_n_0_[2] ),
        .I3(bad_v_r),
        .O(gtreset_c));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[1]),
        .Q(gtrxreset_extend_r[0]),
        .R(START_RX_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[2]),
        .Q(gtrxreset_extend_r[1]),
        .R(START_RX_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[3]),
        .Q(gtrxreset_extend_r[2]),
        .R(START_RX_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[4]),
        .Q(gtrxreset_extend_r[3]),
        .R(START_RX_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[5]),
        .Q(gtrxreset_extend_r[4]),
        .R(START_RX_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[6]),
        .Q(gtrxreset_extend_r[5]),
        .R(START_RX_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[7]),
        .Q(gtrxreset_extend_r[6]),
        .R(START_RX_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \gtrxreset_extend_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_nxt),
        .Q(gtrxreset_extend_r[7]),
        .R(START_RX_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \lfsr[15]_i_1__0 
       (.I0(D),
        .I1(CHANNEL_UP_reg_0),
        .I2(reset_lanes_i),
        .O(SS));
  FDRE ready_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r),
        .Q(ready_r2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    ready_r_i_1__0
       (.I0(ready_r),
        .I1(\rxver_count_r_reg_n_0_[2] ),
        .I2(\txver_count_r_reg_n_0_[7] ),
        .I3(gen_ver_i),
        .O(next_ready_c));
  FDRE ready_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ready_c),
        .Q(ready_r),
        .R(wait_for_lane_up_r0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b1)) 
    reset_lanes_flop_i
       (.C(user_clk),
        .CE(1'b1),
        .D(reset_lanes_c),
        .Q(reset_lanes_i),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFAE)) 
    reset_lanes_flop_i_i_1
       (.I0(gtreset_c),
        .I1(reset_channel_i),
        .I2(wait_for_lane_up_r),
        .I3(START_RX_reg_0),
        .O(reset_lanes_c));
  (* srl_bus_name = "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/rxver_count_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/rxver_count_r_reg[1]_srl2 " *) 
  SRL16E \rxver_count_r_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\rxver_count_r_reg[1]_srl2_i_1_n_0 ),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\rxver_count_r_reg[1]_srl2_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \rxver_count_r_reg[1]_srl2_i_1 
       (.I0(all_lanes_v_r),
        .I1(\v_count_r_reg_n_0_[15] ),
        .I2(gen_ver_i),
        .O(\rxver_count_r_reg[1]_srl2_i_1_n_0 ));
  FDRE \rxver_count_r_reg[2] 
       (.C(user_clk),
        .CE(\rxver_count_r_reg[1]_srl2_i_1_n_0 ),
        .D(\rxver_count_r_reg[1]_srl2_n_0 ),
        .Q(\rxver_count_r_reg_n_0_[2] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/txver_count_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/txver_count_r_reg[6]_srl7 " *) 
  SRL16E \txver_count_r_reg[6]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(txver_count_r0),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\txver_count_r_reg[6]_srl7_n_0 ));
  FDRE \txver_count_r_reg[7] 
       (.C(user_clk),
        .CE(txver_count_r0),
        .D(\txver_count_r_reg[6]_srl7_n_0 ),
        .Q(\txver_count_r_reg_n_0_[7] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/v_count_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/v_count_r_reg[14]_srl15 " *) 
  SRL16E \v_count_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(p_2_out),
        .Q(\v_count_r_reg[14]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \v_count_r_reg[14]_srl15_i_1 
       (.I0(\v_count_r_reg_n_0_[15] ),
        .I1(gen_ver_i),
        .I2(got_first_v_r),
        .I3(all_lanes_v_r),
        .O(p_2_out));
  FDRE \v_count_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\v_count_r_reg[14]_srl15_n_0 ),
        .Q(\v_count_r_reg_n_0_[15] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hAEEE)) 
    verify_r_i_2
       (.I0(wait_for_lane_up_r),
        .I1(gen_ver_i),
        .I2(\rxver_count_r_reg_n_0_[2] ),
        .I3(\txver_count_r_reg_n_0_[7] ),
        .O(next_verify_c));
  FDRE verify_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_verify_c),
        .Q(gen_ver_i),
        .R(wait_for_lane_up_r0));
  (* srl_bus_name = "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/verify_watchdog_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/verify_watchdog_r_reg[14]_srl15 " *) 
  SRL16E \verify_watchdog_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(\verify_watchdog_r_reg[14]_srl15_i_1_n_0 ),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\verify_watchdog_r_reg[14]_srl15_n_0 ));
  LUT4 #(
    .INIT(16'h10FF)) 
    \verify_watchdog_r_reg[14]_srl15_i_1 
       (.I0(\verify_watchdog_r_reg[14]_srl15_i_2_n_0 ),
        .I1(\verify_watchdog_r_reg[14]_srl15_i_3_n_0 ),
        .I2(\verify_watchdog_r_reg[14]_srl15_i_4_n_0 ),
        .I3(gen_ver_i),
        .O(\verify_watchdog_r_reg[14]_srl15_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \verify_watchdog_r_reg[14]_srl15_i_2 
       (.I0(free_count_r_reg[6]),
        .I1(free_count_r_reg[8]),
        .I2(free_count_r_reg[2]),
        .I3(free_count_r_reg[12]),
        .O(\verify_watchdog_r_reg[14]_srl15_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \verify_watchdog_r_reg[14]_srl15_i_3 
       (.I0(free_count_r_reg[7]),
        .I1(free_count_r_reg[9]),
        .I2(free_count_r_reg[5]),
        .I3(free_count_r_reg[11]),
        .O(\verify_watchdog_r_reg[14]_srl15_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \verify_watchdog_r_reg[14]_srl15_i_4 
       (.I0(free_count_r_reg[3]),
        .I1(free_count_r_reg[4]),
        .I2(free_count_r_reg[10]),
        .I3(free_count_r_reg[13]),
        .I4(free_count_r_reg[0]),
        .I5(free_count_r_reg[1]),
        .O(\verify_watchdog_r_reg[14]_srl15_i_4_n_0 ));
  FDRE \verify_watchdog_r_reg[15] 
       (.C(user_clk),
        .CE(\verify_watchdog_r_reg[14]_srl15_i_1_n_0 ),
        .D(\verify_watchdog_r_reg[14]_srl15_n_0 ),
        .Q(\verify_watchdog_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE wait_for_lane_up_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(wait_for_lane_up_r0),
        .Q(wait_for_lane_up_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_ERR_DETECT_4BYTE" *) 
module aurora_8b10b_0_aurora_8b10b_0_ERR_DETECT_4BYTE
   (ready_r_reg0,
    hard_err_i,
    \SOFT_ERR_reg[0]_0 ,
    p_0_in__0,
    user_clk,
    hard_err_gt0,
    reset_lanes_i,
    enable_err_detect_i,
    \soft_err_r_reg[0]_0 );
  output ready_r_reg0;
  output hard_err_i;
  output [1:0]\SOFT_ERR_reg[0]_0 ;
  input p_0_in__0;
  input user_clk;
  input hard_err_gt0;
  input reset_lanes_i;
  input enable_err_detect_i;
  input [3:0]\soft_err_r_reg[0]_0 ;

  wire SOFT_ERR0;
  wire \SOFT_ERR[1]_i_1_n_0 ;
  wire [1:0]\SOFT_ERR_reg[0]_0 ;
  wire cnt_good_code_r;
  wire cnt_good_code_r_i_3_n_0;
  wire cnt_good_code_r_i_4_n_0;
  wire cnt_soft_err_r;
  wire enable_err_detect_i;
  wire \err_cnt_r[0]_i_1_n_0 ;
  wire \err_cnt_r[1]_i_1_n_0 ;
  wire \err_cnt_r[2]_i_1_n_0 ;
  wire \err_cnt_r[2]_i_2_n_0 ;
  wire \err_cnt_r_reg_n_0_[0] ;
  wire \err_cnt_r_reg_n_0_[1] ;
  wire \good_cnt_r[3]_i_1_n_0 ;
  wire [3:0]good_cnt_r_reg;
  wire hard_err_frm_soft_err;
  wire hard_err_gt;
  wire hard_err_gt0;
  wire hard_err_i;
  wire next_good_code_c;
  wire next_soft_err_c;
  wire next_start_c;
  wire p_0_in;
  wire p_0_in__0;
  wire [3:0]p_0_in__0__0;
  wire ready_r_reg0;
  wire reset_lanes_i;
  wire [3:0]\soft_err_r_reg[0]_0 ;
  wire \soft_err_r_reg_n_0_[0] ;
  wire \soft_err_r_reg_n_0_[1] ;
  wire \soft_err_r_reg_n_0_[2] ;
  wire \soft_err_r_reg_n_0_[3] ;
  wire start_r;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \SOFT_ERR[0]_i_1 
       (.I0(\soft_err_r_reg_n_0_[0] ),
        .I1(\soft_err_r_reg_n_0_[1] ),
        .O(SOFT_ERR0));
  LUT2 #(
    .INIT(4'hE)) 
    \SOFT_ERR[1]_i_1 
       (.I0(\soft_err_r_reg_n_0_[2] ),
        .I1(\soft_err_r_reg_n_0_[3] ),
        .O(\SOFT_ERR[1]_i_1_n_0 ));
  FDRE \SOFT_ERR_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(SOFT_ERR0),
        .Q(\SOFT_ERR_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \SOFT_ERR_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\SOFT_ERR[1]_i_1_n_0 ),
        .Q(\SOFT_ERR_reg[0]_0 [0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    align_r_i_1
       (.I0(reset_lanes_i),
        .I1(p_0_in),
        .I2(hard_err_frm_soft_err),
        .I3(hard_err_gt),
        .O(ready_r_reg0));
  LUT5 #(
    .INIT(32'hAAAA2A00)) 
    cnt_good_code_r_i_2
       (.I0(cnt_good_code_r_i_3_n_0),
        .I1(cnt_good_code_r_i_4_n_0),
        .I2(good_cnt_r_reg[3]),
        .I3(cnt_good_code_r),
        .I4(cnt_soft_err_r),
        .O(next_good_code_c));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    cnt_good_code_r_i_3
       (.I0(\soft_err_r_reg_n_0_[1] ),
        .I1(\soft_err_r_reg_n_0_[0] ),
        .I2(\soft_err_r_reg_n_0_[3] ),
        .I3(\soft_err_r_reg_n_0_[2] ),
        .O(cnt_good_code_r_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h80)) 
    cnt_good_code_r_i_4
       (.I0(good_cnt_r_reg[2]),
        .I1(good_cnt_r_reg[1]),
        .I2(good_cnt_r_reg[0]),
        .O(cnt_good_code_r_i_4_n_0));
  FDRE cnt_good_code_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_good_code_c),
        .Q(cnt_good_code_r),
        .R(p_0_in__0));
  LUT4 #(
    .INIT(16'h00FE)) 
    cnt_soft_err_r_i_1
       (.I0(cnt_soft_err_r),
        .I1(start_r),
        .I2(cnt_good_code_r),
        .I3(cnt_good_code_r_i_3_n_0),
        .O(next_soft_err_c));
  FDRE cnt_soft_err_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_soft_err_c),
        .Q(cnt_soft_err_r),
        .R(p_0_in__0));
  LUT5 #(
    .INIT(32'hBEBE4140)) 
    \err_cnt_r[0]_i_1 
       (.I0(p_0_in),
        .I1(\err_cnt_r[2]_i_2_n_0 ),
        .I2(cnt_soft_err_r),
        .I3(\err_cnt_r_reg_n_0_[1] ),
        .I4(\err_cnt_r_reg_n_0_[0] ),
        .O(\err_cnt_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hCCCC6CC8)) 
    \err_cnt_r[1]_i_1 
       (.I0(\err_cnt_r_reg_n_0_[0] ),
        .I1(\err_cnt_r_reg_n_0_[1] ),
        .I2(cnt_soft_err_r),
        .I3(\err_cnt_r[2]_i_2_n_0 ),
        .I4(p_0_in),
        .O(\err_cnt_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \err_cnt_r[2]_i_1 
       (.I0(\err_cnt_r_reg_n_0_[0] ),
        .I1(\err_cnt_r_reg_n_0_[1] ),
        .I2(cnt_soft_err_r),
        .I3(\err_cnt_r[2]_i_2_n_0 ),
        .I4(p_0_in),
        .O(\err_cnt_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFF1)) 
    \err_cnt_r[2]_i_2 
       (.I0(good_cnt_r_reg[3]),
        .I1(good_cnt_r_reg[2]),
        .I2(good_cnt_r_reg[1]),
        .I3(good_cnt_r_reg[0]),
        .O(\err_cnt_r[2]_i_2_n_0 ));
  FDRE \err_cnt_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\err_cnt_r[0]_i_1_n_0 ),
        .Q(\err_cnt_r_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE \err_cnt_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\err_cnt_r[1]_i_1_n_0 ),
        .Q(\err_cnt_r_reg_n_0_[1] ),
        .R(p_0_in__0));
  FDRE \err_cnt_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\err_cnt_r[2]_i_1_n_0 ),
        .Q(p_0_in),
        .R(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \good_cnt_r[0]_i_1 
       (.I0(good_cnt_r_reg[0]),
        .O(p_0_in__0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \good_cnt_r[1]_i_1 
       (.I0(good_cnt_r_reg[0]),
        .I1(good_cnt_r_reg[1]),
        .O(p_0_in__0__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \good_cnt_r[2]_i_1 
       (.I0(good_cnt_r_reg[0]),
        .I1(good_cnt_r_reg[1]),
        .I2(good_cnt_r_reg[2]),
        .O(p_0_in__0__0[2]));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \good_cnt_r[3]_i_1 
       (.I0(start_r),
        .I1(cnt_soft_err_r),
        .I2(enable_err_detect_i),
        .I3(cnt_good_code_r),
        .O(\good_cnt_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \good_cnt_r[3]_i_2 
       (.I0(good_cnt_r_reg[3]),
        .I1(good_cnt_r_reg[0]),
        .I2(good_cnt_r_reg[1]),
        .I3(good_cnt_r_reg[2]),
        .O(p_0_in__0__0[3]));
  FDRE \good_cnt_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in__0__0[0]),
        .Q(good_cnt_r_reg[0]),
        .R(\good_cnt_r[3]_i_1_n_0 ));
  FDRE \good_cnt_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in__0__0[1]),
        .Q(good_cnt_r_reg[1]),
        .R(\good_cnt_r[3]_i_1_n_0 ));
  FDRE \good_cnt_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in__0__0[2]),
        .Q(good_cnt_r_reg[2]),
        .R(\good_cnt_r[3]_i_1_n_0 ));
  FDRE \good_cnt_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in__0__0[3]),
        .Q(good_cnt_r_reg[3]),
        .R(\good_cnt_r[3]_i_1_n_0 ));
  FDRE hard_err_frm_soft_err_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(hard_err_frm_soft_err),
        .R(p_0_in__0));
  FDRE hard_err_gt_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_gt0),
        .Q(hard_err_gt),
        .R(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    hard_err_r_i_1
       (.I0(hard_err_gt),
        .I1(hard_err_frm_soft_err),
        .I2(p_0_in),
        .O(hard_err_i));
  FDRE \soft_err_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[0]_0 [3]),
        .Q(\soft_err_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \soft_err_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[0]_0 [2]),
        .Q(\soft_err_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \soft_err_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[0]_0 [1]),
        .Q(\soft_err_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \soft_err_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\soft_err_r_reg[0]_0 [0]),
        .Q(\soft_err_r_reg_n_0_[3] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hA8888888)) 
    start_r_i_1
       (.I0(cnt_good_code_r_i_3_n_0),
        .I1(start_r),
        .I2(cnt_good_code_r_i_4_n_0),
        .I3(good_cnt_r_reg[3]),
        .I4(cnt_good_code_r),
        .O(next_start_c));
  FDSE start_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_start_c),
        .Q(start_r),
        .S(p_0_in__0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_GLOBAL_LOGIC" *) 
module aurora_8b10b_0_aurora_8b10b_0_GLOBAL_LOGIC
   (reset_lanes_i,
    gen_v_flop_1_i,
    GEN_A,
    gen_k_flop_0_i,
    gen_r_flop_0_i,
    GTRXRESET_OUT,
    CHANNEL_UP_reg,
    soft_err,
    hard_err,
    START_RX,
    SS,
    CHANNEL_UP_reg_0,
    SR,
    user_clk,
    got_v_i,
    hard_err_i,
    lane_up,
    \downcounter_r_reg[0] ,
    D,
    power_down,
    \soft_err_r_reg[0] );
  output reset_lanes_i;
  output [2:0]gen_v_flop_1_i;
  output GEN_A;
  output [3:0]gen_k_flop_0_i;
  output [3:0]gen_r_flop_0_i;
  output GTRXRESET_OUT;
  output CHANNEL_UP_reg;
  output soft_err;
  output hard_err;
  output START_RX;
  output [0:0]SS;
  output CHANNEL_UP_reg_0;
  output [0:0]SR;
  input user_clk;
  input got_v_i;
  input hard_err_i;
  input lane_up;
  input \downcounter_r_reg[0] ;
  input [0:0]D;
  input power_down;
  input [1:0]\soft_err_r_reg[0] ;

  wire CHANNEL_UP_reg;
  wire CHANNEL_UP_reg_0;
  wire [0:0]D;
  wire GEN_A;
  wire GTRXRESET_OUT;
  wire [0:0]SR;
  wire [0:0]SS;
  wire START_RX;
  wire \downcounter_r_reg[0] ;
  wire [3:0]gen_k_flop_0_i;
  wire [3:0]gen_r_flop_0_i;
  wire [2:0]gen_v_flop_1_i;
  wire gen_ver_i;
  wire got_v_i;
  wire hard_err;
  wire hard_err_i;
  wire lane_up;
  wire power_down;
  wire reset_channel_i;
  wire reset_lanes_i;
  wire soft_err;
  wire [1:0]\soft_err_r_reg[0] ;
  wire txver_count_r0;
  wire user_clk;
  wire wait_for_lane_up_r0;

  aurora_8b10b_0_aurora_8b10b_0_CHANNEL_ERR_DETECT channel_err_detect_i
       (.hard_err(hard_err),
        .hard_err_i(hard_err_i),
        .lane_up(lane_up),
        .power_down(power_down),
        .reset_channel_i(reset_channel_i),
        .soft_err(soft_err),
        .\soft_err_r_reg[0]_0 (\soft_err_r_reg[0] ),
        .user_clk(user_clk),
        .verify_r_reg(\downcounter_r_reg[0] ),
        .wait_for_lane_up_r0(wait_for_lane_up_r0));
  aurora_8b10b_0_aurora_8b10b_0_CHANNEL_INIT_SM channel_init_sm_i
       (.CHANNEL_UP_reg_0(CHANNEL_UP_reg),
        .CHANNEL_UP_reg_1(CHANNEL_UP_reg_0),
        .D(D),
        .GTRXRESET_OUT(GTRXRESET_OUT),
        .SR(SR),
        .SS(SS),
        .START_RX(START_RX),
        .START_RX_reg_0(\downcounter_r_reg[0] ),
        .gen_ver_i(gen_ver_i),
        .got_v_i(got_v_i),
        .reset_channel_i(reset_channel_i),
        .reset_lanes_i(reset_lanes_i),
        .txver_count_r0(txver_count_r0),
        .user_clk(user_clk),
        .wait_for_lane_up_r0(wait_for_lane_up_r0));
  aurora_8b10b_0_aurora_8b10b_0_IDLE_AND_VER_GEN idle_and_ver_gen_i
       (.GEN_A(GEN_A),
        .\downcounter_r_reg[0]_0 (\downcounter_r_reg[0] ),
        .gen_k_flop_0_i_0(gen_k_flop_0_i),
        .gen_r_flop_0_i_0(gen_r_flop_0_i),
        .gen_v_flop_1_i_0(gen_v_flop_1_i),
        .gen_ver_i(gen_ver_i),
        .txver_count_r0(txver_count_r0),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_GT_WRAPPER" *) 
module aurora_8b10b_0_aurora_8b10b_0_GT_WRAPPER
   (tx_resetdone_out,
    drpclk_in_0,
    txn,
    txp,
    rx_realign_i,
    tx_out_clk,
    drpdo_out,
    RXDATA,
    drpclk_in_1,
    RXCHARISK,
    rx_resetdone_out,
    gt_common_reset_out,
    \left_align_select_r_reg[0] ,
    \left_align_select_r_reg[1] ,
    consecutive_commas_r_reg,
    drpclk_in_2,
    \previous_cycle_data_r_reg[5] ,
    \left_align_select_r_reg[1]_0 ,
    \left_align_select_r_reg[1]_1 ,
    ENABLE_ERR_DETECT_reg,
    hard_err_gt0,
    tx_lock,
    s_level_out_d3_reg,
    rxfsm_rxresetdone_r3_reg_0,
    quad1_common_lock_in,
    drpclk_in,
    rxn,
    rxp,
    gt0_pll0outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outclk_in,
    gt0_pll1outrefclk_in,
    ena_comma_align_i,
    rx_polarity_i,
    sync_clk,
    user_clk,
    power_down,
    loopback,
    TXDATA,
    drprdy_out,
    GTRXRESET_OUT,
    init_clk_in,
    link_reset_r,
    AR,
    \left_align_select_r_reg[0]_0 ,
    \left_align_select_r_reg[0]_1 ,
    \left_align_select_r_reg[1]_2 ,
    consecutive_commas_r,
    begin_r,
    Q,
    enable_err_detect_i,
    pll_not_locked,
    drpaddr_in,
    drpdi_in,
    drpwe_in,
    drpen_in);
  output tx_resetdone_out;
  output drpclk_in_0;
  output txn;
  output txp;
  output rx_realign_i;
  output tx_out_clk;
  output [15:0]drpdo_out;
  output [31:0]RXDATA;
  output [3:0]drpclk_in_1;
  output [3:0]RXCHARISK;
  output rx_resetdone_out;
  output gt_common_reset_out;
  output \left_align_select_r_reg[0] ;
  output \left_align_select_r_reg[1] ;
  output consecutive_commas_r_reg;
  output drpclk_in_2;
  output [5:0]\previous_cycle_data_r_reg[5] ;
  output [7:0]\left_align_select_r_reg[1]_0 ;
  output \left_align_select_r_reg[1]_1 ;
  output [3:0]ENABLE_ERR_DETECT_reg;
  output hard_err_gt0;
  output tx_lock;
  output s_level_out_d3_reg;
  output rxfsm_rxresetdone_r3_reg_0;
  input quad1_common_lock_in;
  input drpclk_in;
  input rxn;
  input rxp;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input ena_comma_align_i;
  input rx_polarity_i;
  input sync_clk;
  input user_clk;
  input power_down;
  input [2:0]loopback;
  input [31:0]TXDATA;
  input [3:0]drprdy_out;
  input GTRXRESET_OUT;
  input init_clk_in;
  input link_reset_r;
  input [0:0]AR;
  input \left_align_select_r_reg[0]_0 ;
  input \left_align_select_r_reg[0]_1 ;
  input \left_align_select_r_reg[1]_2 ;
  input consecutive_commas_r;
  input begin_r;
  input [5:0]Q;
  input enable_err_detect_i;
  input pll_not_locked;
  input [8:0]drpaddr_in;
  input [15:0]drpdi_in;
  input drpwe_in;
  input drpen_in;

  wire [0:0]AR;
  wire [3:0]ENABLE_ERR_DETECT_reg;
  wire GTRXRESET_OUT;
  wire [5:0]Q;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire [31:0]TXDATA;
  wire aurora_8b10b_0_multi_gt_i_n_4;
  wire aurora_8b10b_0_multi_gt_i_n_6;
  wire begin_r;
  wire consecutive_commas_r;
  wire consecutive_commas_r_reg;
  wire [31:1]data0;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire drpclk_in_0;
  wire [3:0]drpclk_in_1;
  wire drpclk_in_2;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire [3:0]drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire enable_err_detect_i;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire gt0_rxresetdone_r3_reg_srl3_n_0;
  wire gt0_txresetdone_r3_reg_srl3_n_0;
  wire gt_common_reset_out;
  wire gt_rx_reset_i;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gtrxreset_i;
  wire gtrxreset_pulse;
  wire gtrxreset_pulse0;
  wire gtrxreset_r1;
  wire gtrxreset_r2;
  wire gtrxreset_r3;
  wire gtrxreset_sync;
  wire hard_err_gt0;
  wire init_clk_in;
  wire \left_align_select_r_reg[0] ;
  wire \left_align_select_r_reg[0]_0 ;
  wire \left_align_select_r_reg[0]_1 ;
  wire \left_align_select_r_reg[1] ;
  wire [7:0]\left_align_select_r_reg[1]_0 ;
  wire \left_align_select_r_reg[1]_1 ;
  wire \left_align_select_r_reg[1]_2 ;
  wire link_reset_r;
  wire link_reset_r2;
  wire [2:0]loopback;
  wire pll_not_locked;
  wire power_down;
  wire [5:0]\previous_cycle_data_r_reg[5] ;
  wire quad1_common_lock_in;
  wire [31:0]rx_cdrlock_counter;
  wire rx_cdrlock_counter0_carry__0_n_0;
  wire rx_cdrlock_counter0_carry__0_n_1;
  wire rx_cdrlock_counter0_carry__0_n_2;
  wire rx_cdrlock_counter0_carry__0_n_3;
  wire rx_cdrlock_counter0_carry__1_n_0;
  wire rx_cdrlock_counter0_carry__1_n_1;
  wire rx_cdrlock_counter0_carry__1_n_2;
  wire rx_cdrlock_counter0_carry__1_n_3;
  wire rx_cdrlock_counter0_carry__2_n_0;
  wire rx_cdrlock_counter0_carry__2_n_1;
  wire rx_cdrlock_counter0_carry__2_n_2;
  wire rx_cdrlock_counter0_carry__2_n_3;
  wire rx_cdrlock_counter0_carry__3_n_0;
  wire rx_cdrlock_counter0_carry__3_n_1;
  wire rx_cdrlock_counter0_carry__3_n_2;
  wire rx_cdrlock_counter0_carry__3_n_3;
  wire rx_cdrlock_counter0_carry__4_n_0;
  wire rx_cdrlock_counter0_carry__4_n_1;
  wire rx_cdrlock_counter0_carry__4_n_2;
  wire rx_cdrlock_counter0_carry__4_n_3;
  wire rx_cdrlock_counter0_carry__5_n_0;
  wire rx_cdrlock_counter0_carry__5_n_1;
  wire rx_cdrlock_counter0_carry__5_n_2;
  wire rx_cdrlock_counter0_carry__5_n_3;
  wire rx_cdrlock_counter0_carry__6_n_2;
  wire rx_cdrlock_counter0_carry__6_n_3;
  wire rx_cdrlock_counter0_carry_n_0;
  wire rx_cdrlock_counter0_carry_n_1;
  wire rx_cdrlock_counter0_carry_n_2;
  wire rx_cdrlock_counter0_carry_n_3;
  wire \rx_cdrlock_counter[0]_i_1_n_0 ;
  wire \rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \rx_cdrlock_counter[31]_i_5_n_0 ;
  wire \rx_cdrlock_counter[31]_i_6_n_0 ;
  wire \rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \rx_cdrlock_counter[31]_i_9_n_0 ;
  wire [31:1]rx_cdrlock_counter_0;
  wire rx_cdrlocked_i_1_n_0;
  wire rx_cdrlocked_reg_n_0;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rx_resetdone_out;
  wire rxfsm_rxresetdone_r;
  wire rxfsm_rxresetdone_r2;
  wire rxfsm_rxresetdone_r3_reg_0;
  wire rxfsm_soft_reset_r;
  wire rxfsm_soft_reset_r_i_1_n_0;
  wire rxn;
  wire rxp;
  wire s_level_out_d3_reg;
  wire sync_clk;
  wire tx_lock;
  wire tx_out_clk;
  wire tx_resetdone_out;
  wire txfsm_txresetdone_r;
  wire txn;
  wire txp;
  wire user_clk;
  wire [3:2]NLW_rx_cdrlock_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_rx_cdrlock_counter0_carry__6_O_UNCONNECTED;

  aurora_8b10b_0_aurora_8b10b_0_multi_gt aurora_8b10b_0_multi_gt_i
       (.ENABLE_ERR_DETECT_reg(ENABLE_ERR_DETECT_reg),
        .Q(Q),
        .RXCHARISK(RXCHARISK),
        .RXDATA(RXDATA),
        .SR(gt_rx_reset_i),
        .TXDATA(TXDATA),
        .begin_r(begin_r),
        .consecutive_commas_r(consecutive_commas_r),
        .consecutive_commas_r_reg(consecutive_commas_r_reg),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpclk_in_0(drpclk_in_0),
        .drpclk_in_1(aurora_8b10b_0_multi_gt_i_n_4),
        .drpclk_in_2(aurora_8b10b_0_multi_gt_i_n_6),
        .drpclk_in_3(drpclk_in_1),
        .drpclk_in_4(drpclk_in_2),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .enable_err_detect_i(enable_err_detect_i),
        .gt0_pll0outclk_in(gt0_pll0outclk_in),
        .gt0_pll0outrefclk_in(gt0_pll0outrefclk_in),
        .gt0_pll1outclk_in(gt0_pll1outclk_in),
        .gt0_pll1outrefclk_in(gt0_pll1outrefclk_in),
        .gt_common_reset_out(gt_common_reset_out),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .hard_err_gt0(hard_err_gt0),
        .init_clk_in(init_clk_in),
        .\left_align_select_r_reg[0] (\left_align_select_r_reg[0] ),
        .\left_align_select_r_reg[0]_0 (\left_align_select_r_reg[0]_0 ),
        .\left_align_select_r_reg[0]_1 (\left_align_select_r_reg[0]_1 ),
        .\left_align_select_r_reg[1] (\left_align_select_r_reg[1] ),
        .\left_align_select_r_reg[1]_0 (\left_align_select_r_reg[1]_0 ),
        .\left_align_select_r_reg[1]_1 (\left_align_select_r_reg[1]_1 ),
        .\left_align_select_r_reg[1]_2 (\left_align_select_r_reg[1]_2 ),
        .loopback(loopback),
        .power_down(power_down),
        .\previous_cycle_data_r_reg[5] (\previous_cycle_data_r_reg[5] ),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rxn(rxn),
        .rxp(rxp),
        .sync_clk(sync_clk),
        .tx_out_clk(tx_out_clk),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk));
  (* srl_name = "inst/\gt_wrapper_i/gt0_rxresetdone_r3_reg_srl3 " *) 
  SRL16E gt0_rxresetdone_r3_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(aurora_8b10b_0_multi_gt_i_n_4),
        .Q(gt0_rxresetdone_r3_reg_srl3_n_0));
  (* srl_name = "inst/\gt_wrapper_i/gt0_txresetdone_r3_reg_srl3 " *) 
  SRL16E gt0_txresetdone_r3_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(aurora_8b10b_0_multi_gt_i_n_6),
        .Q(gt0_txresetdone_r3_reg_srl3_n_0));
  (* equivalent_register_removal = "no" *) 
  FDRE gt_rx_reset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_i),
        .Q(gt_rx_reset_i),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    gt_rxresetdone_r_i_1
       (.I0(rx_resetdone_out),
        .O(rxfsm_rxresetdone_r3_reg_0));
  aurora_8b10b_0_aurora_8b10b_0_rx_startup_fsm gt_rxresetfsm_i
       (.AR(rxfsm_soft_reset_r),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .gtrxreset_i(gtrxreset_i),
        .init_clk_in(init_clk_in),
        .quad1_common_lock_in(quad1_common_lock_in),
        .reset_time_out_reg_0(rx_cdrlocked_reg_n_0),
        .rxfsm_rxresetdone_r(rxfsm_rxresetdone_r),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_tx_startup_fsm gt_txresetfsm_i
       (.AR(AR),
        .gt_common_reset_out(gt_common_reset_out),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .init_clk_in(init_clk_in),
        .pll_not_locked(pll_not_locked),
        .quad1_common_lock_in(quad1_common_lock_in),
        .s_level_out_d3_reg(s_level_out_d3_reg),
        .tx_lock(tx_lock),
        .tx_resetdone_out(tx_resetdone_out),
        .txfsm_txresetdone_r(txfsm_txresetdone_r),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0 gtrxreset_cdc_sync
       (.GTRXRESET_OUT(GTRXRESET_OUT),
        .init_clk_in(init_clk_in),
        .out(gtrxreset_sync),
        .user_clk(user_clk));
  LUT2 #(
    .INIT(4'h2)) 
    gtrxreset_pulse_i_1
       (.I0(gtrxreset_r2),
        .I1(gtrxreset_r3),
        .O(gtrxreset_pulse0));
  FDRE gtrxreset_pulse_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_pulse0),
        .Q(gtrxreset_pulse),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE gtrxreset_r1_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_sync),
        .Q(gtrxreset_r1),
        .R(1'b0));
  FDRE gtrxreset_r2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_r1),
        .Q(gtrxreset_r2),
        .R(1'b0));
  FDRE gtrxreset_r3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_r2),
        .Q(gtrxreset_r3),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE link_reset_r2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_r),
        .Q(link_reset_r2),
        .R(1'b0));
  CARRY4 rx_cdrlock_counter0_carry
       (.CI(1'b0),
        .CO({rx_cdrlock_counter0_carry_n_0,rx_cdrlock_counter0_carry_n_1,rx_cdrlock_counter0_carry_n_2,rx_cdrlock_counter0_carry_n_3}),
        .CYINIT(rx_cdrlock_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(rx_cdrlock_counter[4:1]));
  CARRY4 rx_cdrlock_counter0_carry__0
       (.CI(rx_cdrlock_counter0_carry_n_0),
        .CO({rx_cdrlock_counter0_carry__0_n_0,rx_cdrlock_counter0_carry__0_n_1,rx_cdrlock_counter0_carry__0_n_2,rx_cdrlock_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(rx_cdrlock_counter[8:5]));
  CARRY4 rx_cdrlock_counter0_carry__1
       (.CI(rx_cdrlock_counter0_carry__0_n_0),
        .CO({rx_cdrlock_counter0_carry__1_n_0,rx_cdrlock_counter0_carry__1_n_1,rx_cdrlock_counter0_carry__1_n_2,rx_cdrlock_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(rx_cdrlock_counter[12:9]));
  CARRY4 rx_cdrlock_counter0_carry__2
       (.CI(rx_cdrlock_counter0_carry__1_n_0),
        .CO({rx_cdrlock_counter0_carry__2_n_0,rx_cdrlock_counter0_carry__2_n_1,rx_cdrlock_counter0_carry__2_n_2,rx_cdrlock_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(rx_cdrlock_counter[16:13]));
  CARRY4 rx_cdrlock_counter0_carry__3
       (.CI(rx_cdrlock_counter0_carry__2_n_0),
        .CO({rx_cdrlock_counter0_carry__3_n_0,rx_cdrlock_counter0_carry__3_n_1,rx_cdrlock_counter0_carry__3_n_2,rx_cdrlock_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(rx_cdrlock_counter[20:17]));
  CARRY4 rx_cdrlock_counter0_carry__4
       (.CI(rx_cdrlock_counter0_carry__3_n_0),
        .CO({rx_cdrlock_counter0_carry__4_n_0,rx_cdrlock_counter0_carry__4_n_1,rx_cdrlock_counter0_carry__4_n_2,rx_cdrlock_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(rx_cdrlock_counter[24:21]));
  CARRY4 rx_cdrlock_counter0_carry__5
       (.CI(rx_cdrlock_counter0_carry__4_n_0),
        .CO({rx_cdrlock_counter0_carry__5_n_0,rx_cdrlock_counter0_carry__5_n_1,rx_cdrlock_counter0_carry__5_n_2,rx_cdrlock_counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(rx_cdrlock_counter[28:25]));
  CARRY4 rx_cdrlock_counter0_carry__6
       (.CI(rx_cdrlock_counter0_carry__5_n_0),
        .CO({NLW_rx_cdrlock_counter0_carry__6_CO_UNCONNECTED[3:2],rx_cdrlock_counter0_carry__6_n_2,rx_cdrlock_counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_rx_cdrlock_counter0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,rx_cdrlock_counter[31:29]}));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \rx_cdrlock_counter[0]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(rx_cdrlock_counter[0]),
        .O(\rx_cdrlock_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[10]_i_1 
       (.I0(data0[10]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlock_counter_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[11]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[11]),
        .O(rx_cdrlock_counter_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[12]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[12]),
        .O(rx_cdrlock_counter_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[13]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[13]),
        .O(rx_cdrlock_counter_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[14]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[14]),
        .O(rx_cdrlock_counter_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[15]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[15]),
        .O(rx_cdrlock_counter_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[16]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[16]),
        .O(rx_cdrlock_counter_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[17]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[17]),
        .O(rx_cdrlock_counter_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[18]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[18]),
        .O(rx_cdrlock_counter_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[19]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[19]),
        .O(rx_cdrlock_counter_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[1]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[1]),
        .O(rx_cdrlock_counter_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[20]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[20]),
        .O(rx_cdrlock_counter_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[21]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[21]),
        .O(rx_cdrlock_counter_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[22]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[22]),
        .O(rx_cdrlock_counter_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[23]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[23]),
        .O(rx_cdrlock_counter_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[24]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[24]),
        .O(rx_cdrlock_counter_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[25]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[25]),
        .O(rx_cdrlock_counter_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[26]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[26]),
        .O(rx_cdrlock_counter_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[27]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[27]),
        .O(rx_cdrlock_counter_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[28]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[28]),
        .O(rx_cdrlock_counter_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[29]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[29]),
        .O(rx_cdrlock_counter_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[2]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[2]),
        .O(rx_cdrlock_counter_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[30]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[30]),
        .O(rx_cdrlock_counter_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[31]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[31]),
        .O(rx_cdrlock_counter_0[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rx_cdrlock_counter[31]_i_2 
       (.I0(rx_cdrlock_counter[18]),
        .I1(rx_cdrlock_counter[19]),
        .I2(rx_cdrlock_counter[16]),
        .I3(rx_cdrlock_counter[17]),
        .I4(\rx_cdrlock_counter[31]_i_6_n_0 ),
        .O(\rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rx_cdrlock_counter[31]_i_3 
       (.I0(rx_cdrlock_counter[26]),
        .I1(rx_cdrlock_counter[27]),
        .I2(rx_cdrlock_counter[24]),
        .I3(rx_cdrlock_counter[25]),
        .I4(\rx_cdrlock_counter[31]_i_7_n_0 ),
        .O(\rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rx_cdrlock_counter[31]_i_4 
       (.I0(rx_cdrlock_counter[2]),
        .I1(rx_cdrlock_counter[3]),
        .I2(rx_cdrlock_counter[0]),
        .I3(rx_cdrlock_counter[1]),
        .I4(\rx_cdrlock_counter[31]_i_8_n_0 ),
        .O(\rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \rx_cdrlock_counter[31]_i_5 
       (.I0(rx_cdrlock_counter[11]),
        .I1(rx_cdrlock_counter[10]),
        .I2(rx_cdrlock_counter[8]),
        .I3(rx_cdrlock_counter[9]),
        .I4(\rx_cdrlock_counter[31]_i_9_n_0 ),
        .O(\rx_cdrlock_counter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_cdrlock_counter[31]_i_6 
       (.I0(rx_cdrlock_counter[21]),
        .I1(rx_cdrlock_counter[20]),
        .I2(rx_cdrlock_counter[23]),
        .I3(rx_cdrlock_counter[22]),
        .O(\rx_cdrlock_counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_cdrlock_counter[31]_i_7 
       (.I0(rx_cdrlock_counter[29]),
        .I1(rx_cdrlock_counter[28]),
        .I2(rx_cdrlock_counter[31]),
        .I3(rx_cdrlock_counter[30]),
        .O(\rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \rx_cdrlock_counter[31]_i_8 
       (.I0(rx_cdrlock_counter[4]),
        .I1(rx_cdrlock_counter[5]),
        .I2(rx_cdrlock_counter[7]),
        .I3(rx_cdrlock_counter[6]),
        .O(\rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_cdrlock_counter[31]_i_9 
       (.I0(rx_cdrlock_counter[13]),
        .I1(rx_cdrlock_counter[12]),
        .I2(rx_cdrlock_counter[15]),
        .I3(rx_cdrlock_counter[14]),
        .O(\rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[3]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[3]),
        .O(rx_cdrlock_counter_0[3]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[4]_i_1 
       (.I0(data0[4]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlock_counter_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[5]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[5]),
        .O(rx_cdrlock_counter_0[5]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[6]_i_1 
       (.I0(data0[6]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlock_counter_0[6]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[7]_i_1 
       (.I0(data0[7]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlock_counter_0[7]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[8]_i_1 
       (.I0(data0[8]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlock_counter_0[8]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[9]_i_1 
       (.I0(data0[9]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlock_counter_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\rx_cdrlock_counter[0]_i_1_n_0 ),
        .Q(rx_cdrlock_counter[0]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[10] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[10]),
        .Q(rx_cdrlock_counter[10]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[11] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[11]),
        .Q(rx_cdrlock_counter[11]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[12] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[12]),
        .Q(rx_cdrlock_counter[12]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[13] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[13]),
        .Q(rx_cdrlock_counter[13]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[14] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[14]),
        .Q(rx_cdrlock_counter[14]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[15] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[15]),
        .Q(rx_cdrlock_counter[15]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[16] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[16]),
        .Q(rx_cdrlock_counter[16]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[17] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[17]),
        .Q(rx_cdrlock_counter[17]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[18] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[18]),
        .Q(rx_cdrlock_counter[18]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[19] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[19]),
        .Q(rx_cdrlock_counter[19]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[1] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[1]),
        .Q(rx_cdrlock_counter[1]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[20] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[20]),
        .Q(rx_cdrlock_counter[20]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[21] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[21]),
        .Q(rx_cdrlock_counter[21]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[22] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[22]),
        .Q(rx_cdrlock_counter[22]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[23] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[23]),
        .Q(rx_cdrlock_counter[23]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[24] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[24]),
        .Q(rx_cdrlock_counter[24]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[25] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[25]),
        .Q(rx_cdrlock_counter[25]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[26] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[26]),
        .Q(rx_cdrlock_counter[26]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[27] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[27]),
        .Q(rx_cdrlock_counter[27]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[28] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[28]),
        .Q(rx_cdrlock_counter[28]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[29] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[29]),
        .Q(rx_cdrlock_counter[29]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[2] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[2]),
        .Q(rx_cdrlock_counter[2]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[30] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[30]),
        .Q(rx_cdrlock_counter[30]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[31] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[31]),
        .Q(rx_cdrlock_counter[31]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[3] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[3]),
        .Q(rx_cdrlock_counter[3]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[4] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[4]),
        .Q(rx_cdrlock_counter[4]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[5] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[5]),
        .Q(rx_cdrlock_counter[5]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[6] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[6]),
        .Q(rx_cdrlock_counter[6]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[7] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[7]),
        .Q(rx_cdrlock_counter[7]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[8] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[8]),
        .Q(rx_cdrlock_counter[8]),
        .R(gt_rx_reset_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[9] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[9]),
        .Q(rx_cdrlock_counter[9]),
        .R(gt_rx_reset_i));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    rx_cdrlocked_i_1
       (.I0(rx_cdrlocked_reg_n_0),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(rx_cdrlocked_i_1_n_0));
  FDRE rx_cdrlocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlocked_i_1_n_0),
        .Q(rx_cdrlocked_reg_n_0),
        .R(gt_rx_reset_i));
  (* equivalent_register_removal = "no" *) 
  FDRE rxfsm_rxresetdone_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rxfsm_rxresetdone_r),
        .Q(rxfsm_rxresetdone_r2),
        .R(1'b0));
  FDRE rxfsm_rxresetdone_r3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rxfsm_rxresetdone_r2),
        .Q(rx_resetdone_out),
        .R(1'b0));
  FDRE rxfsm_rxresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt0_rxresetdone_r3_reg_srl3_n_0),
        .Q(rxfsm_rxresetdone_r),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    rxfsm_soft_reset_r_i_1
       (.I0(AR),
        .I1(gtrxreset_pulse),
        .I2(link_reset_r2),
        .O(rxfsm_soft_reset_r_i_1_n_0));
  FDRE rxfsm_soft_reset_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rxfsm_soft_reset_r_i_1_n_0),
        .Q(rxfsm_soft_reset_r),
        .R(1'b0));
  FDRE txfsm_txresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt0_txresetdone_r3_reg_srl3_n_0),
        .Q(txfsm_txresetdone_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_IDLE_AND_VER_GEN" *) 
module aurora_8b10b_0_aurora_8b10b_0_IDLE_AND_VER_GEN
   (gen_v_flop_1_i_0,
    GEN_A,
    gen_k_flop_0_i_0,
    gen_r_flop_0_i_0,
    txver_count_r0,
    user_clk,
    gen_ver_i,
    \downcounter_r_reg[0]_0 );
  output [2:0]gen_v_flop_1_i_0;
  output GEN_A;
  output [3:0]gen_k_flop_0_i_0;
  output [3:0]gen_r_flop_0_i_0;
  output txver_count_r0;
  input user_clk;
  input gen_ver_i;
  input \downcounter_r_reg[0]_0 ;

  wire GEN_A;
  wire did_ver_i;
  wire [0:2]down_count_r;
  wire \down_count_r[0]_i_1_n_0 ;
  wire \down_count_r[1]_i_1_n_0 ;
  wire \downcounter_r[0]_i_1_n_0 ;
  wire \downcounter_r[1]_i_1_n_0 ;
  wire \downcounter_r[2]_i_1_n_0 ;
  wire \downcounter_r_reg[0]_0 ;
  wire \downcounter_r_reg_n_0_[0] ;
  wire \downcounter_r_reg_n_0_[1] ;
  wire \downcounter_r_reg_n_0_[2] ;
  wire gen_a_flop_c;
  wire [3:0]gen_k_flop_0_i_0;
  wire gen_k_flop_c_0;
  wire gen_k_flop_c_1;
  wire gen_k_flop_c_2;
  wire gen_k_flop_c_3;
  wire [3:0]gen_r_flop_0_i_0;
  wire gen_r_flop_c_0;
  wire gen_r_flop_c_2;
  wire gen_r_flop_c_3;
  wire [2:0]gen_v_flop_1_i_0;
  wire gen_ver_i;
  wire insert_ver_c;
  wire \lfsr_reg[3]_i_1_n_0 ;
  wire p_1_in;
  wire p_2_in;
  wire prev_cycle_gen_ver_r;
  wire recycle_gen_ver_c;
  wire txver_count_r0;
  wire user_clk;
  wire ver_counter_c;

  FDRE DID_VER_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ver_counter_c),
        .Q(did_ver_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \down_count_r[0]_i_1 
       (.I0(gen_r_flop_c_0),
        .I1(p_2_in),
        .O(\down_count_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \down_count_r[1]_i_1 
       (.I0(gen_r_flop_c_0),
        .I1(p_2_in),
        .O(\down_count_r[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \down_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\down_count_r[0]_i_1_n_0 ),
        .Q(down_count_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \down_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\down_count_r[1]_i_1_n_0 ),
        .Q(down_count_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \down_count_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_c_0),
        .Q(down_count_r[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hFC02)) 
    \downcounter_r[0]_i_1 
       (.I0(down_count_r[0]),
        .I1(\downcounter_r_reg_n_0_[1] ),
        .I2(\downcounter_r_reg_n_0_[2] ),
        .I3(\downcounter_r_reg_n_0_[0] ),
        .O(\downcounter_r[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC3C2)) 
    \downcounter_r[1]_i_1 
       (.I0(down_count_r[1]),
        .I1(\downcounter_r_reg_n_0_[1] ),
        .I2(\downcounter_r_reg_n_0_[2] ),
        .I3(\downcounter_r_reg_n_0_[0] ),
        .O(\downcounter_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h0F0E)) 
    \downcounter_r[2]_i_1 
       (.I0(down_count_r[2]),
        .I1(\downcounter_r_reg_n_0_[1] ),
        .I2(\downcounter_r_reg_n_0_[2] ),
        .I3(\downcounter_r_reg_n_0_[0] ),
        .O(\downcounter_r[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\downcounter_r[0]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[0] ),
        .R(\downcounter_r_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\downcounter_r[1]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[1] ),
        .R(\downcounter_r_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \downcounter_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\downcounter_r[2]_i_1_n_0 ),
        .Q(\downcounter_r_reg_n_0_[2] ),
        .R(\downcounter_r_reg[0]_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_a_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_a_flop_c),
        .Q(GEN_A),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h00010101)) 
    gen_a_flop_0_i_i_1
       (.I0(\downcounter_r_reg_n_0_[0] ),
        .I1(\downcounter_r_reg_n_0_[2] ),
        .I2(\downcounter_r_reg_n_0_[1] ),
        .I3(gen_ver_i),
        .I4(did_ver_i),
        .O(gen_a_flop_c));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_c_3),
        .Q(gen_k_flop_0_i_0[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hD5D5D5D5D5D5D5C0)) 
    gen_k_flop_0_i_i_1
       (.I0(p_1_in),
        .I1(did_ver_i),
        .I2(gen_ver_i),
        .I3(\downcounter_r_reg_n_0_[1] ),
        .I4(\downcounter_r_reg_n_0_[2] ),
        .I5(\downcounter_r_reg_n_0_[0] ),
        .O(gen_k_flop_c_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_c_2),
        .Q(gen_k_flop_0_i_0[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    gen_k_flop_1_i_i_1
       (.I0(gen_r_flop_c_2),
        .O(gen_k_flop_c_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_2_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_c_1),
        .Q(gen_k_flop_0_i_0[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    gen_k_flop_2_i_i_1
       (.I0(p_2_in),
        .O(gen_k_flop_c_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_k_flop_3_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_flop_c_0),
        .Q(gen_k_flop_0_i_0[0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT1 #(
    .INIT(2'h1)) 
    gen_k_flop_3_i_i_1
       (.I0(gen_r_flop_c_0),
        .O(gen_k_flop_c_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_c_3),
        .Q(gen_r_flop_0_i_0[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FE00FE00FE00)) 
    gen_r_flop_0_i_i_1
       (.I0(\downcounter_r_reg_n_0_[0] ),
        .I1(\downcounter_r_reg_n_0_[2] ),
        .I2(\downcounter_r_reg_n_0_[1] ),
        .I3(p_1_in),
        .I4(did_ver_i),
        .I5(gen_ver_i),
        .O(gen_r_flop_c_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_c_2),
        .Q(gen_r_flop_0_i_0[2]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_2_i
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(gen_r_flop_0_i_0[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_r_flop_3_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_c_0),
        .Q(gen_r_flop_0_i_0[0]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_v_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(recycle_gen_ver_c),
        .Q(gen_v_flop_1_i_0[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gen_v_flop_1_i_i_1
       (.I0(did_ver_i),
        .I1(gen_ver_i),
        .O(recycle_gen_ver_c));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_v_flop_2_i
       (.C(user_clk),
        .CE(1'b1),
        .D(recycle_gen_ver_c),
        .Q(gen_v_flop_1_i_0[1]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_v_flop_3_i
       (.C(user_clk),
        .CE(1'b1),
        .D(recycle_gen_ver_c),
        .Q(gen_v_flop_1_i_0[0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h55A9)) 
    \lfsr_reg[3]_i_1 
       (.I0(p_1_in),
        .I1(p_2_in),
        .I2(gen_r_flop_c_2),
        .I3(gen_r_flop_c_0),
        .O(\lfsr_reg[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_c_2),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(gen_r_flop_c_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_flop_c_0),
        .Q(p_2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\lfsr_reg[3]_i_1_n_0 ),
        .Q(gen_r_flop_c_0),
        .R(1'b0));
  FDRE prev_cycle_gen_ver_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_ver_i),
        .Q(prev_cycle_gen_ver_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \txver_count_r_reg[6]_srl7_i_1 
       (.I0(did_ver_i),
        .I1(gen_ver_i),
        .O(txver_count_r0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "SRL16" *) 
  (* srl_name = "inst/\aurora_8b10b_0_global_logic_i/idle_and_ver_gen_i/ver_counter_i " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    ver_counter_i
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(insert_ver_c),
        .Q(ver_counter_c));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    ver_counter_i_i_1
       (.I0(gen_ver_i),
        .I1(did_ver_i),
        .I2(prev_cycle_gen_ver_r),
        .O(insert_ver_c));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_LANE_INIT_SM_4BYTE" *) 
module aurora_8b10b_0_aurora_8b10b_0_LANE_INIT_SM_4BYTE
   (lane_up,
    ready_r,
    align_r_reg_0,
    gen_spa_i,
    consecutive_commas_r,
    begin_r,
    enable_err_detect_i,
    rx_polarity_i,
    GEN_SP,
    p_0_in__0,
    ready_r_reg_0,
    reset_lanes_i,
    user_clk,
    ready_r_reg0,
    counter4_r0,
    counter3_r0,
    gen_spa_r,
    rx_realign_i,
    rx_neg_i,
    reset_count_r_reg_0,
    reset_count_r_reg_1,
    RXCHARISK,
    first_v_received_r,
    \RX_CHAR_IS_COMMA_R_reg[3]_0 );
  output lane_up;
  output ready_r;
  output align_r_reg_0;
  output gen_spa_i;
  output consecutive_commas_r;
  output begin_r;
  output enable_err_detect_i;
  output rx_polarity_i;
  output GEN_SP;
  output p_0_in__0;
  output ready_r_reg_0;
  input reset_lanes_i;
  input user_clk;
  input ready_r_reg0;
  input counter4_r0;
  input counter3_r0;
  input gen_spa_r;
  input rx_realign_i;
  input rx_neg_i;
  input reset_count_r_reg_0;
  input reset_count_r_reg_1;
  input [1:0]RXCHARISK;
  input first_v_received_r;
  input [3:0]\RX_CHAR_IS_COMMA_R_reg[3]_0 ;

  wire ENABLE_ERR_DETECT0;
  wire GEN_SP;
  wire [1:0]RXCHARISK;
  wire [3:0]\RX_CHAR_IS_COMMA_R_reg[3]_0 ;
  wire \RX_CHAR_IS_COMMA_R_reg_n_0_[0] ;
  wire \RX_CHAR_IS_COMMA_R_reg_n_0_[3] ;
  wire align_r_reg_0;
  wire begin_r;
  wire begin_r_i_2_n_0;
  wire consecutive_commas_r;
  wire consecutive_commas_r0;
  wire count_128d_done_r;
  wire count_32d_done_r;
  wire count_8d_done_r;
  wire counter1_r0;
  wire \counter1_r[0]_i_3_n_0 ;
  wire \counter1_r[2]_i_1_n_0 ;
  wire \counter1_r_reg_n_0_[1] ;
  wire \counter1_r_reg_n_0_[3] ;
  wire \counter1_r_reg_n_0_[5] ;
  wire \counter1_r_reg_n_0_[6] ;
  wire \counter1_r_reg_n_0_[7] ;
  wire \counter2_r_reg[14]_srl14_n_0 ;
  wire \counter2_r_reg_n_0_[15] ;
  wire counter3_r0;
  wire \counter3_r_reg[2]_srl3_n_0 ;
  wire \counter3_r_reg_n_0_[3] ;
  wire counter4_r0;
  wire \counter4_r_reg[14]_srl15_n_0 ;
  wire \counter4_r_reg_n_0_[15] ;
  wire counter5_r0;
  wire \counter5_r_reg[14]_srl15_n_0 ;
  wire \counter5_r_reg_n_0_[15] ;
  wire do_watchdog_count_r;
  wire do_watchdog_count_r0;
  wire enable_err_detect_i;
  wire first_v_received_r;
  wire gen_spa_i;
  wire gen_spa_r;
  wire lane_up;
  wire next_ack_c;
  wire next_align_c;
  wire next_begin_c;
  wire next_polarity_c;
  wire next_ready_c;
  wire next_realign_c;
  wire next_rst_c;
  wire [7:0]p_0_in;
  wire p_0_in2_in;
  wire p_0_in__0;
  wire p_1_in;
  wire polarity_r;
  wire prev_count_128d_done_r;
  wire ready_r;
  wire ready_r_reg0;
  wire ready_r_reg_0;
  wire realign_r;
  wire reset_count_r;
  wire reset_count_r0;
  wire reset_count_r_reg_0;
  wire reset_count_r_reg_1;
  wire reset_lanes_i;
  wire rx_neg_i;
  wire rx_polarity_i;
  wire rx_polarity_r_i_1_n_0;
  wire rx_realign_i;
  wire tx_reset_i;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    ENABLE_ERR_DETECT_i_1
       (.I0(gen_spa_i),
        .I1(ready_r),
        .O(ENABLE_ERR_DETECT0));
  FDRE ENABLE_ERR_DETECT_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ENABLE_ERR_DETECT0),
        .Q(enable_err_detect_i),
        .R(1'b0));
  FDRE \RX_CHAR_IS_COMMA_R_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_CHAR_IS_COMMA_R_reg[3]_0 [0]),
        .Q(\RX_CHAR_IS_COMMA_R_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \RX_CHAR_IS_COMMA_R_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_CHAR_IS_COMMA_R_reg[3]_0 [1]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \RX_CHAR_IS_COMMA_R_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_CHAR_IS_COMMA_R_reg[3]_0 [2]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \RX_CHAR_IS_COMMA_R_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_CHAR_IS_COMMA_R_reg[3]_0 [3]),
        .Q(\RX_CHAR_IS_COMMA_R_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0444FFFF04440444)) 
    ack_r_i_1
       (.I0(\counter5_r_reg_n_0_[15] ),
        .I1(gen_spa_i),
        .I2(\counter2_r_reg_n_0_[15] ),
        .I3(\counter3_r_reg_n_0_[3] ),
        .I4(rx_neg_i),
        .I5(polarity_r),
        .O(next_ack_c));
  FDRE ack_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ack_c),
        .Q(gen_spa_i),
        .R(ready_r_reg0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF222)) 
    align_r_i_2
       (.I0(align_r_reg_0),
        .I1(count_128d_done_r),
        .I2(tx_reset_i),
        .I3(count_8d_done_r),
        .O(next_align_c));
  FDRE align_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_align_c),
        .Q(align_r_reg_0),
        .R(ready_r_reg0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    begin_r_i_1
       (.I0(rx_realign_i),
        .I1(realign_r),
        .I2(polarity_r),
        .I3(rx_neg_i),
        .I4(begin_r_i_2_n_0),
        .O(next_begin_c));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    begin_r_i_2
       (.I0(gen_spa_i),
        .I1(\counter5_r_reg_n_0_[15] ),
        .I2(\counter4_r_reg_n_0_[15] ),
        .I3(ready_r),
        .O(begin_r_i_2_n_0));
  FDSE begin_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_begin_c),
        .Q(begin_r),
        .S(ready_r_reg0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt_good_code_r_i_1
       (.I0(enable_err_detect_i),
        .O(p_0_in__0));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    consecutive_commas_r_i_1
       (.I0(align_r_reg_0),
        .I1(p_0_in2_in),
        .I2(\RX_CHAR_IS_COMMA_R_reg_n_0_[0] ),
        .I3(\RX_CHAR_IS_COMMA_R_reg_n_0_[3] ),
        .I4(p_1_in),
        .O(consecutive_commas_r0));
  FDRE consecutive_commas_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(consecutive_commas_r0),
        .Q(consecutive_commas_r),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \counter1_r[0]_i_1 
       (.I0(ready_r),
        .I1(reset_count_r),
        .O(counter1_r0));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter1_r[0]_i_2 
       (.I0(count_128d_done_r),
        .I1(count_32d_done_r),
        .I2(count_8d_done_r),
        .I3(\counter1_r[0]_i_3_n_0 ),
        .I4(\counter1_r_reg_n_0_[3] ),
        .I5(\counter1_r_reg_n_0_[1] ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter1_r[0]_i_3 
       (.I0(\counter1_r_reg_n_0_[5] ),
        .I1(\counter1_r_reg_n_0_[6] ),
        .I2(\counter1_r_reg_n_0_[7] ),
        .O(\counter1_r[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter1_r[1]_i_1 
       (.I0(\counter1_r_reg_n_0_[1] ),
        .I1(\counter1_r_reg_n_0_[3] ),
        .I2(\counter1_r[0]_i_3_n_0 ),
        .I3(count_8d_done_r),
        .I4(count_32d_done_r),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter1_r[2]_i_1 
       (.I0(count_32d_done_r),
        .I1(count_8d_done_r),
        .I2(\counter1_r_reg_n_0_[7] ),
        .I3(\counter1_r_reg_n_0_[6] ),
        .I4(\counter1_r_reg_n_0_[5] ),
        .I5(\counter1_r_reg_n_0_[3] ),
        .O(\counter1_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter1_r[3]_i_1 
       (.I0(\counter1_r_reg_n_0_[3] ),
        .I1(\counter1_r_reg_n_0_[5] ),
        .I2(\counter1_r_reg_n_0_[6] ),
        .I3(\counter1_r_reg_n_0_[7] ),
        .I4(count_8d_done_r),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter1_r[4]_i_1 
       (.I0(count_8d_done_r),
        .I1(\counter1_r_reg_n_0_[7] ),
        .I2(\counter1_r_reg_n_0_[6] ),
        .I3(\counter1_r_reg_n_0_[5] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter1_r[5]_i_1 
       (.I0(\counter1_r_reg_n_0_[7] ),
        .I1(\counter1_r_reg_n_0_[6] ),
        .I2(\counter1_r_reg_n_0_[5] ),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \counter1_r[6]_i_1 
       (.I0(\counter1_r_reg_n_0_[7] ),
        .I1(\counter1_r_reg_n_0_[6] ),
        .O(p_0_in[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1_r[7]_i_1 
       (.I0(\counter1_r_reg_n_0_[7] ),
        .O(p_0_in[0]));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[0] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[7]),
        .Q(count_128d_done_r),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[1] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[6]),
        .Q(\counter1_r_reg_n_0_[1] ),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[2] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(\counter1_r[2]_i_1_n_0 ),
        .Q(count_32d_done_r),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[3] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[4]),
        .Q(\counter1_r_reg_n_0_[3] ),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[4] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[3]),
        .Q(count_8d_done_r),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[5] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[2]),
        .Q(\counter1_r_reg_n_0_[5] ),
        .R(counter1_r0));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[6] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[1]),
        .Q(\counter1_r_reg_n_0_[6] ),
        .R(counter1_r0));
  FDSE #(
    .INIT(1'b1)) 
    \counter1_r_reg[7] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in[0]),
        .Q(\counter1_r_reg_n_0_[7] ),
        .S(counter1_r0));
  (* srl_bus_name = "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter2_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter2_r_reg[14]_srl14 " *) 
  SRL16E \counter2_r_reg[14]_srl14 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(gen_spa_r),
        .Q(\counter2_r_reg[14]_srl14_n_0 ));
  FDRE \counter2_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\counter2_r_reg[14]_srl14_n_0 ),
        .Q(\counter2_r_reg_n_0_[15] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter3_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter3_r_reg[2]_srl3 " *) 
  SRL16E \counter3_r_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(counter3_r0),
        .CLK(user_clk),
        .D(gen_spa_i),
        .Q(\counter3_r_reg[2]_srl3_n_0 ));
  FDRE \counter3_r_reg[3] 
       (.C(user_clk),
        .CE(counter3_r0),
        .D(\counter3_r_reg[2]_srl3_n_0 ),
        .Q(\counter3_r_reg_n_0_[3] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter4_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter4_r_reg[14]_srl15 " *) 
  SRL16E \counter4_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(counter4_r0),
        .CLK(user_clk),
        .D(ready_r),
        .Q(\counter4_r_reg[14]_srl15_n_0 ));
  FDRE \counter4_r_reg[15] 
       (.C(user_clk),
        .CE(counter4_r0),
        .D(\counter4_r_reg[14]_srl15_n_0 ),
        .Q(\counter4_r_reg_n_0_[15] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter5_r_reg " *) 
  (* srl_name = "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter5_r_reg[14]_srl15 " *) 
  SRL16E \counter5_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(counter5_r0),
        .CLK(user_clk),
        .D(gen_spa_i),
        .Q(\counter5_r_reg[14]_srl15_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \counter5_r_reg[14]_srl15_i_1 
       (.I0(do_watchdog_count_r),
        .I1(gen_spa_i),
        .O(counter5_r0));
  FDRE \counter5_r_reg[15] 
       (.C(user_clk),
        .CE(counter5_r0),
        .D(\counter5_r_reg[14]_srl15_n_0 ),
        .Q(\counter5_r_reg_n_0_[15] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    do_watchdog_count_r_i_1
       (.I0(count_128d_done_r),
        .I1(prev_count_128d_done_r),
        .O(do_watchdog_count_r0));
  FDRE do_watchdog_count_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(do_watchdog_count_r0),
        .Q(do_watchdog_count_r),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    gen_sp_r_i_1
       (.I0(ready_r),
        .I1(gen_spa_i),
        .O(GEN_SP));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    lane_up_flop_i
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r),
        .Q(lane_up),
        .R(reset_lanes_i));
  LUT5 #(
    .INIT(32'hFFFF888F)) 
    \left_align_select_r[0]_i_2 
       (.I0(RXCHARISK[1]),
        .I1(RXCHARISK[0]),
        .I2(ready_r),
        .I3(align_r_reg_0),
        .I4(first_v_received_r),
        .O(ready_r_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h08)) 
    polarity_r_i_1
       (.I0(count_32d_done_r),
        .I1(realign_r),
        .I2(rx_realign_i),
        .O(next_polarity_c));
  FDRE polarity_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_polarity_c),
        .Q(polarity_r),
        .R(ready_r_reg0));
  FDRE prev_count_128d_done_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(count_128d_done_r),
        .Q(prev_count_128d_done_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4F44444444444444)) 
    ready_r_i_1
       (.I0(\counter4_r_reg_n_0_[15] ),
        .I1(ready_r),
        .I2(\counter5_r_reg_n_0_[15] ),
        .I3(gen_spa_i),
        .I4(\counter2_r_reg_n_0_[15] ),
        .I5(\counter3_r_reg_n_0_[3] ),
        .O(next_ready_c));
  FDRE ready_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ready_c),
        .Q(ready_r),
        .R(ready_r_reg0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFF040404)) 
    realign_r_i_1
       (.I0(rx_realign_i),
        .I1(realign_r),
        .I2(count_32d_done_r),
        .I3(align_r_reg_0),
        .I4(count_128d_done_r),
        .O(next_realign_c));
  FDRE realign_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_realign_c),
        .Q(realign_r),
        .R(ready_r_reg0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0FBB00BB)) 
    reset_count_r_i_1
       (.I0(reset_count_r_reg_0),
        .I1(reset_count_r_reg_1),
        .I2(begin_r),
        .I3(tx_reset_i),
        .I4(count_8d_done_r),
        .I5(reset_lanes_i),
        .O(reset_count_r0));
  FDRE reset_count_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(reset_count_r0),
        .Q(reset_count_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    rst_r_i_1
       (.I0(begin_r),
        .I1(count_8d_done_r),
        .I2(tx_reset_i),
        .O(next_rst_c));
  FDRE rst_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_rst_c),
        .Q(tx_reset_i),
        .R(ready_r_reg0));
  LUT3 #(
    .INIT(8'h78)) 
    rx_polarity_r_i_1
       (.I0(rx_neg_i),
        .I1(polarity_r),
        .I2(rx_polarity_i),
        .O(rx_polarity_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_polarity_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_polarity_r_i_1_n_0),
        .Q(rx_polarity_i),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_LEFT_ALIGN_CONTROL" *) 
module aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_CONTROL
   (MUX_SELECT,
    mux_select_c,
    user_clk);
  output [0:0]MUX_SELECT;
  input [0:0]mux_select_c;
  input user_clk;

  wire [0:0]MUX_SELECT;
  wire [0:0]mux_select_c;
  wire user_clk;

  FDRE \MUX_SELECT_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(mux_select_c),
        .Q(MUX_SELECT),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_LEFT_ALIGN_MUX" *) 
module aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_MUX
   (\MUXED_DATA_reg[0]_0 ,
    D,
    Q,
    MUX_SELECT,
    user_clk,
    STORAGE_SELECT);
  output [15:0]\MUXED_DATA_reg[0]_0 ;
  output [31:0]D;
  input [31:0]Q;
  input [0:0]MUX_SELECT;
  input user_clk;
  input [1:0]STORAGE_SELECT;

  wire [31:0]D;
  wire [16:31]MUXED_DATA;
  wire [15:0]\MUXED_DATA_reg[0]_0 ;
  wire [0:0]MUX_SELECT;
  wire [31:0]Q;
  wire [1:0]STORAGE_SELECT;
  wire [0:15]muxed_data_c;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[0]_i_1 
       (.I0(Q[15]),
        .I1(MUX_SELECT),
        .I2(Q[31]),
        .O(muxed_data_c[0]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[10]_i_1 
       (.I0(Q[5]),
        .I1(MUX_SELECT),
        .I2(Q[21]),
        .O(muxed_data_c[10]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[11]_i_1 
       (.I0(Q[4]),
        .I1(MUX_SELECT),
        .I2(Q[20]),
        .O(muxed_data_c[11]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[12]_i_1 
       (.I0(Q[3]),
        .I1(MUX_SELECT),
        .I2(Q[19]),
        .O(muxed_data_c[12]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[13]_i_1 
       (.I0(Q[2]),
        .I1(MUX_SELECT),
        .I2(Q[18]),
        .O(muxed_data_c[13]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[14]_i_1 
       (.I0(Q[1]),
        .I1(MUX_SELECT),
        .I2(Q[17]),
        .O(muxed_data_c[14]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[15]_i_1 
       (.I0(Q[0]),
        .I1(MUX_SELECT),
        .I2(Q[16]),
        .O(muxed_data_c[15]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[1]_i_1 
       (.I0(Q[14]),
        .I1(MUX_SELECT),
        .I2(Q[30]),
        .O(muxed_data_c[1]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[2]_i_1 
       (.I0(Q[13]),
        .I1(MUX_SELECT),
        .I2(Q[29]),
        .O(muxed_data_c[2]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[3]_i_1 
       (.I0(Q[12]),
        .I1(MUX_SELECT),
        .I2(Q[28]),
        .O(muxed_data_c[3]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[4]_i_1 
       (.I0(Q[11]),
        .I1(MUX_SELECT),
        .I2(Q[27]),
        .O(muxed_data_c[4]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[5]_i_1 
       (.I0(Q[10]),
        .I1(MUX_SELECT),
        .I2(Q[26]),
        .O(muxed_data_c[5]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[6]_i_1 
       (.I0(Q[9]),
        .I1(MUX_SELECT),
        .I2(Q[25]),
        .O(muxed_data_c[6]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[7]_i_1 
       (.I0(Q[8]),
        .I1(MUX_SELECT),
        .I2(Q[24]),
        .O(muxed_data_c[7]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[8]_i_1 
       (.I0(Q[7]),
        .I1(MUX_SELECT),
        .I2(Q[23]),
        .O(muxed_data_c[8]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MUXED_DATA[9]_i_1 
       (.I0(Q[6]),
        .I1(MUX_SELECT),
        .I2(Q[22]),
        .O(muxed_data_c[9]));
  FDRE \MUXED_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[0]),
        .Q(\MUXED_DATA_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[10]),
        .Q(\MUXED_DATA_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[11]),
        .Q(\MUXED_DATA_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[12]),
        .Q(\MUXED_DATA_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[13]),
        .Q(\MUXED_DATA_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[14]),
        .Q(\MUXED_DATA_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[15]),
        .Q(\MUXED_DATA_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(MUXED_DATA[16]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(MUXED_DATA[17]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(MUXED_DATA[18]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(MUXED_DATA[19]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[1]),
        .Q(\MUXED_DATA_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(MUXED_DATA[20]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(MUXED_DATA[21]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(MUXED_DATA[22]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(MUXED_DATA[23]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(MUXED_DATA[24]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(MUXED_DATA[25]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(MUXED_DATA[26]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(MUXED_DATA[27]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(MUXED_DATA[28]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(MUXED_DATA[29]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[2]),
        .Q(\MUXED_DATA_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(MUXED_DATA[30]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(MUXED_DATA[31]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[3]),
        .Q(\MUXED_DATA_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[4]),
        .Q(\MUXED_DATA_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[5]),
        .Q(\MUXED_DATA_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[6]),
        .Q(\MUXED_DATA_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[7]),
        .Q(\MUXED_DATA_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[8]),
        .Q(\MUXED_DATA_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \MUXED_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[9]),
        .Q(\MUXED_DATA_reg[0]_0 [6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[0]_i_1 
       (.I0(MUXED_DATA[16]),
        .I1(STORAGE_SELECT[1]),
        .I2(\MUXED_DATA_reg[0]_0 [15]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[10]_i_1 
       (.I0(MUXED_DATA[26]),
        .I1(STORAGE_SELECT[1]),
        .I2(\MUXED_DATA_reg[0]_0 [5]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[11]_i_1 
       (.I0(MUXED_DATA[27]),
        .I1(STORAGE_SELECT[1]),
        .I2(\MUXED_DATA_reg[0]_0 [4]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[12]_i_1 
       (.I0(MUXED_DATA[28]),
        .I1(STORAGE_SELECT[1]),
        .I2(\MUXED_DATA_reg[0]_0 [3]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[13]_i_1 
       (.I0(MUXED_DATA[29]),
        .I1(STORAGE_SELECT[1]),
        .I2(\MUXED_DATA_reg[0]_0 [2]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[14]_i_1 
       (.I0(MUXED_DATA[30]),
        .I1(STORAGE_SELECT[1]),
        .I2(\MUXED_DATA_reg[0]_0 [1]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[15]_i_1 
       (.I0(MUXED_DATA[31]),
        .I1(STORAGE_SELECT[1]),
        .I2(\MUXED_DATA_reg[0]_0 [0]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[16]_i_1 
       (.I0(MUXED_DATA[16]),
        .I1(STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_0 [15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[17]_i_1 
       (.I0(MUXED_DATA[17]),
        .I1(STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_0 [14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[18]_i_1 
       (.I0(MUXED_DATA[18]),
        .I1(STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_0 [13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[19]_i_1 
       (.I0(MUXED_DATA[19]),
        .I1(STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_0 [12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[1]_i_1 
       (.I0(MUXED_DATA[17]),
        .I1(STORAGE_SELECT[1]),
        .I2(\MUXED_DATA_reg[0]_0 [14]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[20]_i_1 
       (.I0(MUXED_DATA[20]),
        .I1(STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_0 [11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[21]_i_1 
       (.I0(MUXED_DATA[21]),
        .I1(STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_0 [10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[22]_i_1 
       (.I0(MUXED_DATA[22]),
        .I1(STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_0 [9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[23]_i_1 
       (.I0(MUXED_DATA[23]),
        .I1(STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_0 [8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[24]_i_1 
       (.I0(MUXED_DATA[24]),
        .I1(STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_0 [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[25]_i_1 
       (.I0(MUXED_DATA[25]),
        .I1(STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_0 [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[26]_i_1 
       (.I0(MUXED_DATA[26]),
        .I1(STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_0 [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[27]_i_1 
       (.I0(MUXED_DATA[27]),
        .I1(STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_0 [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[28]_i_1 
       (.I0(MUXED_DATA[28]),
        .I1(STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[29]_i_1 
       (.I0(MUXED_DATA[29]),
        .I1(STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[2]_i_1 
       (.I0(MUXED_DATA[18]),
        .I1(STORAGE_SELECT[1]),
        .I2(\MUXED_DATA_reg[0]_0 [13]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[30]_i_1 
       (.I0(MUXED_DATA[30]),
        .I1(STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[31]_i_1 
       (.I0(MUXED_DATA[31]),
        .I1(STORAGE_SELECT[0]),
        .I2(\MUXED_DATA_reg[0]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[3]_i_1 
       (.I0(MUXED_DATA[19]),
        .I1(STORAGE_SELECT[1]),
        .I2(\MUXED_DATA_reg[0]_0 [12]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[4]_i_1 
       (.I0(MUXED_DATA[20]),
        .I1(STORAGE_SELECT[1]),
        .I2(\MUXED_DATA_reg[0]_0 [11]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[5]_i_1 
       (.I0(MUXED_DATA[21]),
        .I1(STORAGE_SELECT[1]),
        .I2(\MUXED_DATA_reg[0]_0 [10]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[6]_i_1 
       (.I0(MUXED_DATA[22]),
        .I1(STORAGE_SELECT[1]),
        .I2(\MUXED_DATA_reg[0]_0 [9]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[7]_i_1 
       (.I0(MUXED_DATA[23]),
        .I1(STORAGE_SELECT[1]),
        .I2(\MUXED_DATA_reg[0]_0 [8]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[8]_i_1 
       (.I0(MUXED_DATA[24]),
        .I1(STORAGE_SELECT[1]),
        .I2(\MUXED_DATA_reg[0]_0 [7]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \STORAGE_DATA[9]_i_1 
       (.I0(MUXED_DATA[25]),
        .I1(STORAGE_SELECT[1]),
        .I2(\MUXED_DATA_reg[0]_0 [6]),
        .O(D[22]));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_LL_TO_AXI" *) 
module aurora_8b10b_0_aurora_8b10b_0_LL_TO_AXI
   (m_axi_rx_tkeep,
    rx_eof,
    Q);
  output [2:0]m_axi_rx_tkeep;
  input rx_eof;
  input [1:0]Q;

  wire [1:0]Q;
  wire [2:0]m_axi_rx_tkeep;
  wire rx_eof;

  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \m_axi_rx_tkeep[1]_INST_0 
       (.I0(rx_eof),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(m_axi_rx_tkeep[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axi_rx_tkeep[2]_INST_0 
       (.I0(rx_eof),
        .I1(Q[1]),
        .O(m_axi_rx_tkeep[1]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \m_axi_rx_tkeep[3]_INST_0 
       (.I0(rx_eof),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(m_axi_rx_tkeep[0]));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_OUTPUT_MUX" *) 
module aurora_8b10b_0_aurora_8b10b_0_OUTPUT_MUX
   (m_axi_rx_tdata,
    Q,
    user_clk,
    \OUTPUT_DATA_reg[16]_0 ,
    OUTPUT_SELECT);
  output [0:31]m_axi_rx_tdata;
  input [31:0]Q;
  input user_clk;
  input [15:0]\OUTPUT_DATA_reg[16]_0 ;
  input OUTPUT_SELECT;

  wire [15:0]\OUTPUT_DATA_reg[16]_0 ;
  wire OUTPUT_SELECT;
  wire [31:0]Q;
  wire [0:31]m_axi_rx_tdata;
  wire [16:31]output_data_c;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[16]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [15]),
        .I1(OUTPUT_SELECT),
        .I2(Q[15]),
        .O(output_data_c[16]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[17]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [14]),
        .I1(OUTPUT_SELECT),
        .I2(Q[14]),
        .O(output_data_c[17]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[18]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [13]),
        .I1(OUTPUT_SELECT),
        .I2(Q[13]),
        .O(output_data_c[18]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[19]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [12]),
        .I1(OUTPUT_SELECT),
        .I2(Q[12]),
        .O(output_data_c[19]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[20]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [11]),
        .I1(OUTPUT_SELECT),
        .I2(Q[11]),
        .O(output_data_c[20]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[21]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [10]),
        .I1(OUTPUT_SELECT),
        .I2(Q[10]),
        .O(output_data_c[21]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[22]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [9]),
        .I1(OUTPUT_SELECT),
        .I2(Q[9]),
        .O(output_data_c[22]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[23]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [8]),
        .I1(OUTPUT_SELECT),
        .I2(Q[8]),
        .O(output_data_c[23]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[24]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [7]),
        .I1(OUTPUT_SELECT),
        .I2(Q[7]),
        .O(output_data_c[24]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[25]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [6]),
        .I1(OUTPUT_SELECT),
        .I2(Q[6]),
        .O(output_data_c[25]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[26]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [5]),
        .I1(OUTPUT_SELECT),
        .I2(Q[5]),
        .O(output_data_c[26]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[27]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [4]),
        .I1(OUTPUT_SELECT),
        .I2(Q[4]),
        .O(output_data_c[27]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[28]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [3]),
        .I1(OUTPUT_SELECT),
        .I2(Q[3]),
        .O(output_data_c[28]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[29]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [2]),
        .I1(OUTPUT_SELECT),
        .I2(Q[2]),
        .O(output_data_c[29]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[30]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [1]),
        .I1(OUTPUT_SELECT),
        .I2(Q[1]),
        .O(output_data_c[30]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \OUTPUT_DATA[31]_i_1 
       (.I0(\OUTPUT_DATA_reg[16]_0 [0]),
        .I1(OUTPUT_SELECT),
        .I2(Q[0]),
        .O(output_data_c[31]));
  FDRE \OUTPUT_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[31]),
        .Q(m_axi_rx_tdata[0]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(m_axi_rx_tdata[10]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(m_axi_rx_tdata[11]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(m_axi_rx_tdata[12]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(m_axi_rx_tdata[13]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(m_axi_rx_tdata[14]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(m_axi_rx_tdata[15]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[16]),
        .Q(m_axi_rx_tdata[16]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[17]),
        .Q(m_axi_rx_tdata[17]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[18]),
        .Q(m_axi_rx_tdata[18]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[19]),
        .Q(m_axi_rx_tdata[19]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[30]),
        .Q(m_axi_rx_tdata[1]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[20]),
        .Q(m_axi_rx_tdata[20]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[21]),
        .Q(m_axi_rx_tdata[21]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[22]),
        .Q(m_axi_rx_tdata[22]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[23]),
        .Q(m_axi_rx_tdata[23]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[24]),
        .Q(m_axi_rx_tdata[24]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[25]),
        .Q(m_axi_rx_tdata[25]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[26]),
        .Q(m_axi_rx_tdata[26]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[27]),
        .Q(m_axi_rx_tdata[27]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[28]),
        .Q(m_axi_rx_tdata[28]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[29]),
        .Q(m_axi_rx_tdata[29]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[29]),
        .Q(m_axi_rx_tdata[2]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[30]),
        .Q(m_axi_rx_tdata[30]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[31]),
        .Q(m_axi_rx_tdata[31]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[28]),
        .Q(m_axi_rx_tdata[3]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[27]),
        .Q(m_axi_rx_tdata[4]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[26]),
        .Q(m_axi_rx_tdata[5]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[25]),
        .Q(m_axi_rx_tdata[6]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[24]),
        .Q(m_axi_rx_tdata[7]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(m_axi_rx_tdata[8]),
        .R(1'b0));
  FDRE \OUTPUT_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(m_axi_rx_tdata[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_OUTPUT_SWITCH_CONTROL" *) 
module aurora_8b10b_0_aurora_8b10b_0_OUTPUT_SWITCH_CONTROL
   (OUTPUT_SELECT,
    output_select_c,
    user_clk);
  output OUTPUT_SELECT;
  input [0:0]output_select_c;
  input user_clk;

  wire OUTPUT_SELECT;
  wire [0:0]output_select_c;
  wire user_clk;

  FDRE \OUTPUT_SELECT_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_select_c),
        .Q(OUTPUT_SELECT),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_RESET_LOGIC" *) 
module aurora_8b10b_0_aurora_8b10b_0_RESET_LOGIC
   (link_reset_r,
    SYSTEM_RESET_reg_0,
    new_pkt_r,
    pll_not_locked,
    out,
    link_reset_out,
    init_clk_in,
    user_clk,
    tx_lock,
    gt_txresetdone_r2_reg_0,
    gt_rxresetdone_r2_reg_0,
    s_axi_tx_tlast,
    channel_up,
    s_axi_tx_tvalid,
    tx_dst_rdy,
    new_pkt_r_reg);
  output link_reset_r;
  output SYSTEM_RESET_reg_0;
  output new_pkt_r;
  input pll_not_locked;
  input out;
  input link_reset_out;
  input init_clk_in;
  input user_clk;
  input tx_lock;
  input gt_txresetdone_r2_reg_0;
  input gt_rxresetdone_r2_reg_0;
  input s_axi_tx_tlast;
  input channel_up;
  input s_axi_tx_tvalid;
  input tx_dst_rdy;
  input new_pkt_r_reg;

  wire SYSTEM_RESET0_n_0;
  wire SYSTEM_RESET_reg_0;
  wire channel_up;
  wire gt_rxresetdone_r;
  wire gt_rxresetdone_r2;
  wire gt_rxresetdone_r2_reg_0;
  wire gt_rxresetdone_r3;
  wire gt_txresetdone_r;
  wire gt_txresetdone_r2;
  wire gt_txresetdone_r2_reg_0;
  wire gt_txresetdone_r3;
  wire init_clk_in;
  wire link_reset_out;
  wire link_reset_r;
  wire link_reset_sync;
  wire new_pkt_r;
  wire new_pkt_r_reg;
  wire out;
  wire pll_not_locked;
  wire pll_not_locked_sync;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tvalid;
  wire tx_dst_rdy;
  wire tx_lock;
  wire tx_lock_comb_r;
  wire tx_lock_sync;
  wire user_clk;

  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    SYSTEM_RESET0
       (.I0(pll_not_locked_sync),
        .I1(out),
        .I2(gt_rxresetdone_r3),
        .I3(gt_txresetdone_r3),
        .I4(link_reset_sync),
        .I5(tx_lock_sync),
        .O(SYSTEM_RESET0_n_0));
  FDRE SYSTEM_RESET_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(SYSTEM_RESET0_n_0),
        .Q(SYSTEM_RESET_reg_0),
        .R(1'b0));
  FDCE gt_rxresetdone_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(gt_rxresetdone_r2_reg_0),
        .D(gt_rxresetdone_r),
        .Q(gt_rxresetdone_r2));
  FDRE gt_rxresetdone_r3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt_rxresetdone_r2),
        .Q(gt_rxresetdone_r3),
        .R(1'b0));
  FDCE gt_rxresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(gt_rxresetdone_r2_reg_0),
        .D(1'b1),
        .Q(gt_rxresetdone_r));
  FDCE gt_txresetdone_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(gt_txresetdone_r2_reg_0),
        .D(gt_txresetdone_r),
        .Q(gt_txresetdone_r2));
  FDRE gt_txresetdone_r3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt_txresetdone_r2),
        .Q(gt_txresetdone_r3),
        .R(1'b0));
  FDCE gt_txresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(gt_txresetdone_r2_reg_0),
        .D(1'b1),
        .Q(gt_txresetdone_r));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_23 link_reset_cdc_sync
       (.init_clk_in(init_clk_in),
        .link_reset_r(link_reset_r),
        .out(link_reset_sync),
        .user_clk(user_clk));
  FDRE link_reset_comb_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_out),
        .Q(link_reset_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h3030103000001000)) 
    new_pkt_r_i_1
       (.I0(s_axi_tx_tlast),
        .I1(SYSTEM_RESET_reg_0),
        .I2(channel_up),
        .I3(s_axi_tx_tvalid),
        .I4(tx_dst_rdy),
        .I5(new_pkt_r_reg),
        .O(new_pkt_r));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync_24 pll_not_locked_cdc_sync
       (.out(pll_not_locked_sync),
        .pll_not_locked(pll_not_locked),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_25 tx_lock_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(tx_lock_sync),
        .tx_lock_comb_r(tx_lock_comb_r),
        .user_clk(user_clk));
  FDRE tx_lock_comb_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_lock),
        .Q(tx_lock_comb_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_RX_LL" *) 
module aurora_8b10b_0_aurora_8b10b_0_RX_LL
   (rx_eof,
    frame_err,
    m_axi_rx_tlast,
    m_axi_rx_tvalid,
    Q,
    m_axi_rx_tdata,
    \IN_FRAME_reg[1] ,
    D,
    in_frame_r_reg,
    after_scp_select_c_1,
    after_scp_select_c_0,
    user_clk,
    SR,
    stage_1_pad_r_reg,
    START_RX,
    \DEFRAMED_DATA_V_reg[0] ,
    \stage_1_ecp_r_reg[0] ,
    \stage_1_data_r_reg[0] );
  output rx_eof;
  output frame_err;
  output m_axi_rx_tlast;
  output m_axi_rx_tvalid;
  output [1:0]Q;
  output [0:31]m_axi_rx_tdata;
  input \IN_FRAME_reg[1] ;
  input [1:0]D;
  input in_frame_r_reg;
  input after_scp_select_c_1;
  input after_scp_select_c_0;
  input user_clk;
  input [0:0]SR;
  input stage_1_pad_r_reg;
  input START_RX;
  input [1:0]\DEFRAMED_DATA_V_reg[0] ;
  input [1:0]\stage_1_ecp_r_reg[0] ;
  input [31:0]\stage_1_data_r_reg[0] ;

  wire [1:0]D;
  wire [1:0]\DEFRAMED_DATA_V_reg[0] ;
  wire \IN_FRAME_reg[1] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire START_RX;
  wire after_scp_select_c_0;
  wire after_scp_select_c_1;
  wire frame_err;
  wire in_frame_r_reg;
  wire [0:31]m_axi_rx_tdata;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire rx_eof;
  wire [31:0]\stage_1_data_r_reg[0] ;
  wire [1:0]\stage_1_ecp_r_reg[0] ;
  wire stage_1_pad_r_reg;
  wire user_clk;

  aurora_8b10b_0_aurora_8b10b_0_RX_LL_PDU_DATAPATH rx_ll_pdu_datapath_i
       (.D(D),
        .\DEFRAMED_DATA_V_reg[0] (\DEFRAMED_DATA_V_reg[0] ),
        .\IN_FRAME_reg[1] (\IN_FRAME_reg[1] ),
        .Q(Q),
        .SR(SR),
        .START_RX(START_RX),
        .after_scp_select_c_0(after_scp_select_c_0),
        .after_scp_select_c_1(after_scp_select_c_1),
        .frame_err(frame_err),
        .in_frame_r_reg(in_frame_r_reg),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .rx_eof(rx_eof),
        .\stage_1_data_r_reg[0]_0 (\stage_1_data_r_reg[0] ),
        .\stage_1_ecp_r_reg[0]_0 (\stage_1_ecp_r_reg[0] ),
        .stage_1_pad_r_reg_0(stage_1_pad_r_reg),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_RX_LL_DEFRAMER" *) 
module aurora_8b10b_0_aurora_8b10b_0_RX_LL_DEFRAMER
   (mux_select_c,
    \AFTER_SCP_reg[1]_0 ,
    \AFTER_SCP_reg[1]_1 ,
    \AFTER_SCP_reg[1]_2 ,
    \DEFRAMED_DATA_V_reg[1]_0 ,
    \stage_1_ecp_r_reg[0] ,
    \IN_FRAME_reg[1]_0 ,
    D,
    in_frame_r_reg_0,
    after_scp_select_c_1,
    after_scp_select_c_0,
    SR,
    user_clk,
    Q,
    stage_2_frame_err_r_reg,
    \DEFRAMED_DATA_V_reg[0]_0 );
  output [0:0]mux_select_c;
  output \AFTER_SCP_reg[1]_0 ;
  output \AFTER_SCP_reg[1]_1 ;
  output \AFTER_SCP_reg[1]_2 ;
  output [1:0]\DEFRAMED_DATA_V_reg[1]_0 ;
  output \stage_1_ecp_r_reg[0] ;
  input \IN_FRAME_reg[1]_0 ;
  input [1:0]D;
  input in_frame_r_reg_0;
  input after_scp_select_c_1;
  input after_scp_select_c_0;
  input [0:0]SR;
  input user_clk;
  input [1:0]Q;
  input [1:0]stage_2_frame_err_r_reg;
  input [1:0]\DEFRAMED_DATA_V_reg[0]_0 ;

  wire \AFTER_SCP_reg[1]_0 ;
  wire \AFTER_SCP_reg[1]_1 ;
  wire \AFTER_SCP_reg[1]_2 ;
  wire [1:0]D;
  wire \DEFRAMED_DATA_V[0]_i_1_n_0 ;
  wire \DEFRAMED_DATA_V[1]_i_1_n_0 ;
  wire [1:0]\DEFRAMED_DATA_V_reg[0]_0 ;
  wire [1:0]\DEFRAMED_DATA_V_reg[1]_0 ;
  wire \IN_FRAME_reg[1]_0 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire after_scp_c_1;
  wire after_scp_select_c_0;
  wire after_scp_select_c_1;
  wire data_after_start_muxcy_1_n_0;
  wire in_frame_c_0;
  wire in_frame_c_1;
  wire in_frame_r;
  wire in_frame_r_reg_0;
  wire [0:0]mux_select_c;
  wire [0:1]stage_1_after_scp_r;
  wire [0:1]stage_1_data_v_r;
  wire \stage_1_ecp_r_reg[0] ;
  wire [0:1]stage_1_in_frame_r;
  wire [1:0]stage_2_frame_err_r_reg;
  wire user_clk;
  wire [3:2]NLW_data_after_start_muxcy_0_CARRY4_CO_UNCONNECTED;
  wire [3:2]NLW_data_after_start_muxcy_0_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_data_after_start_muxcy_0_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_data_after_start_muxcy_0_CARRY4_S_UNCONNECTED;
  wire [3:2]NLW_in_frame_muxcy_0_CARRY4_CO_UNCONNECTED;
  wire [3:2]NLW_in_frame_muxcy_0_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_in_frame_muxcy_0_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_in_frame_muxcy_0_CARRY4_S_UNCONNECTED;

  FDRE \AFTER_SCP_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(after_scp_c_1),
        .Q(stage_1_after_scp_r[0]),
        .R(SR));
  FDRE \AFTER_SCP_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(data_after_start_muxcy_1_n_0),
        .Q(stage_1_after_scp_r[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \COUNT[0]_i_1 
       (.I0(stage_1_data_v_r[1]),
        .I1(stage_1_data_v_r[0]),
        .O(\DEFRAMED_DATA_V_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \COUNT[1]_i_1 
       (.I0(stage_1_data_v_r[0]),
        .I1(stage_1_data_v_r[1]),
        .O(\DEFRAMED_DATA_V_reg[1]_0 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \DEFRAMED_DATA_V[0]_i_1 
       (.I0(in_frame_c_1),
        .I1(\DEFRAMED_DATA_V_reg[0]_0 [1]),
        .O(\DEFRAMED_DATA_V[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \DEFRAMED_DATA_V[1]_i_1 
       (.I0(in_frame_c_0),
        .I1(\DEFRAMED_DATA_V_reg[0]_0 [0]),
        .O(\DEFRAMED_DATA_V[1]_i_1_n_0 ));
  FDRE \DEFRAMED_DATA_V_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\DEFRAMED_DATA_V[0]_i_1_n_0 ),
        .Q(stage_1_data_v_r[0]),
        .R(SR));
  FDRE \DEFRAMED_DATA_V_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\DEFRAMED_DATA_V[1]_i_1_n_0 ),
        .Q(stage_1_data_v_r[1]),
        .R(SR));
  FDRE \IN_FRAME_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(in_frame_r),
        .Q(stage_1_in_frame_r[0]),
        .R(SR));
  FDRE \IN_FRAME_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(in_frame_c_1),
        .Q(stage_1_in_frame_r[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MUX_SELECT[2]_i_1 
       (.I0(stage_1_data_v_r[1]),
        .I1(stage_1_data_v_r[0]),
        .O(mux_select_c));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 data_after_start_muxcy_0_CARRY4
       (.CI(1'b0),
        .CO({NLW_data_after_start_muxcy_0_CARRY4_CO_UNCONNECTED[3:2],data_after_start_muxcy_1_n_0,after_scp_c_1}),
        .CYINIT(1'b0),
        .DI({NLW_data_after_start_muxcy_0_CARRY4_DI_UNCONNECTED[3:2],1'b1,1'b1}),
        .O(NLW_data_after_start_muxcy_0_CARRY4_O_UNCONNECTED[3:0]),
        .S({NLW_data_after_start_muxcy_0_CARRY4_S_UNCONNECTED[3:2],after_scp_select_c_0,after_scp_select_c_1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 in_frame_muxcy_0_CARRY4
       (.CI(1'b0),
        .CO({NLW_in_frame_muxcy_0_CARRY4_CO_UNCONNECTED[3:2],in_frame_c_0,in_frame_c_1}),
        .CYINIT(in_frame_r),
        .DI({NLW_in_frame_muxcy_0_CARRY4_DI_UNCONNECTED[3:2],D[0],D[1]}),
        .O(NLW_in_frame_muxcy_0_CARRY4_O_UNCONNECTED[3:0]),
        .S({NLW_in_frame_muxcy_0_CARRY4_S_UNCONNECTED[3:2],in_frame_r_reg_0,\IN_FRAME_reg[1]_0 }));
  FDRE in_frame_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(in_frame_c_0),
        .Q(in_frame_r),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    stage_2_end_after_start_r_i_1
       (.I0(stage_1_after_scp_r[1]),
        .I1(Q[0]),
        .I2(stage_1_after_scp_r[0]),
        .I3(Q[1]),
        .O(\AFTER_SCP_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    stage_2_end_before_start_r_i_1
       (.I0(stage_1_after_scp_r[1]),
        .I1(Q[0]),
        .I2(stage_1_after_scp_r[0]),
        .I3(Q[1]),
        .O(\AFTER_SCP_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFF0AAFCEEFCEE)) 
    stage_2_frame_err_r_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(stage_2_frame_err_r_reg[1]),
        .I3(stage_1_in_frame_r[0]),
        .I4(stage_2_frame_err_r_reg[0]),
        .I5(stage_1_in_frame_r[1]),
        .O(\stage_1_ecp_r_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    stage_2_start_with_data_r_i_1
       (.I0(stage_1_after_scp_r[1]),
        .I1(stage_1_data_v_r[1]),
        .I2(stage_1_after_scp_r[0]),
        .I3(stage_1_data_v_r[0]),
        .O(\AFTER_SCP_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_RX_LL_PDU_DATAPATH" *) 
module aurora_8b10b_0_aurora_8b10b_0_RX_LL_PDU_DATAPATH
   (rx_eof,
    frame_err,
    m_axi_rx_tlast,
    m_axi_rx_tvalid,
    Q,
    m_axi_rx_tdata,
    \IN_FRAME_reg[1] ,
    D,
    in_frame_r_reg,
    after_scp_select_c_1,
    after_scp_select_c_0,
    user_clk,
    SR,
    stage_1_pad_r_reg_0,
    START_RX,
    \DEFRAMED_DATA_V_reg[0] ,
    \stage_1_ecp_r_reg[0]_0 ,
    \stage_1_data_r_reg[0]_0 );
  output rx_eof;
  output frame_err;
  output m_axi_rx_tlast;
  output m_axi_rx_tvalid;
  output [1:0]Q;
  output [0:31]m_axi_rx_tdata;
  input \IN_FRAME_reg[1] ;
  input [1:0]D;
  input in_frame_r_reg;
  input after_scp_select_c_1;
  input after_scp_select_c_0;
  input user_clk;
  input [0:0]SR;
  input stage_1_pad_r_reg_0;
  input START_RX;
  input [1:0]\DEFRAMED_DATA_V_reg[0] ;
  input [1:0]\stage_1_ecp_r_reg[0]_0 ;
  input [31:0]\stage_1_data_r_reg[0]_0 ;

  wire [1:0]D;
  wire [1:0]\DEFRAMED_DATA_V_reg[0] ;
  wire EOF_N;
  wire FRAME_ERR_RESULT;
  wire FRAME_ERR_RESULT0;
  wire \IN_FRAME_reg[1] ;
  wire [0:15]MUXED_DATA;
  wire [2:2]MUX_SELECT;
  wire OUTPUT_SELECT;
  wire [1:0]Q;
  wire RX_SRC_RDY_N;
  wire [0:0]SR;
  wire SRC_RDY_N;
  wire START_RX;
  wire [0:31]STORAGE_DATA;
  wire [4:9]STORAGE_SELECT;
  wire after_scp_select_c_0;
  wire after_scp_select_c_1;
  wire [0:1]ce_command_c;
  wire [0:1]count_c;
  wire end_storage_r0;
  wire excess_c;
  wire frame_err;
  wire in_frame_r_reg;
  wire [0:31]m_axi_rx_tdata;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire [2:2]mux_select_c;
  wire [9:9]output_select_c;
  wire p_0_in0;
  wire rx_eof;
  wire sideband_output_i_n_1;
  wire sideband_output_i_n_6;
  wire sideband_output_i_n_7;
  wire [0:31]stage_1_data_r;
  wire [31:0]\stage_1_data_r_reg[0]_0 ;
  wire [0:1]stage_1_ecp_r;
  wire [1:0]\stage_1_ecp_r_reg[0]_0 ;
  wire stage_1_pad_r;
  wire stage_1_pad_r_reg_0;
  wire stage_1_rx_ll_deframer_i_n_1;
  wire stage_1_rx_ll_deframer_i_n_2;
  wire stage_1_rx_ll_deframer_i_n_3;
  wire stage_1_rx_ll_deframer_i_n_6;
  wire [0:1]stage_1_scp_r;
  wire [0:31]stage_2_data_r;
  wire [0:1]stage_2_data_v_count_r;
  wire stage_2_end_after_start_r;
  wire stage_2_end_before_start_r;
  wire stage_2_frame_err_r;
  wire stage_2_pad_r;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire stage_3_left_align_datapath_mux_i_n_16;
  wire stage_3_left_align_datapath_mux_i_n_17;
  wire stage_3_left_align_datapath_mux_i_n_18;
  wire stage_3_left_align_datapath_mux_i_n_19;
  wire stage_3_left_align_datapath_mux_i_n_20;
  wire stage_3_left_align_datapath_mux_i_n_21;
  wire stage_3_left_align_datapath_mux_i_n_22;
  wire stage_3_left_align_datapath_mux_i_n_23;
  wire stage_3_left_align_datapath_mux_i_n_24;
  wire stage_3_left_align_datapath_mux_i_n_25;
  wire stage_3_left_align_datapath_mux_i_n_26;
  wire stage_3_left_align_datapath_mux_i_n_27;
  wire stage_3_left_align_datapath_mux_i_n_28;
  wire stage_3_left_align_datapath_mux_i_n_29;
  wire stage_3_left_align_datapath_mux_i_n_30;
  wire stage_3_left_align_datapath_mux_i_n_31;
  wire stage_3_left_align_datapath_mux_i_n_32;
  wire stage_3_left_align_datapath_mux_i_n_33;
  wire stage_3_left_align_datapath_mux_i_n_34;
  wire stage_3_left_align_datapath_mux_i_n_35;
  wire stage_3_left_align_datapath_mux_i_n_36;
  wire stage_3_left_align_datapath_mux_i_n_37;
  wire stage_3_left_align_datapath_mux_i_n_38;
  wire stage_3_left_align_datapath_mux_i_n_39;
  wire stage_3_left_align_datapath_mux_i_n_40;
  wire stage_3_left_align_datapath_mux_i_n_41;
  wire stage_3_left_align_datapath_mux_i_n_42;
  wire stage_3_left_align_datapath_mux_i_n_43;
  wire stage_3_left_align_datapath_mux_i_n_44;
  wire stage_3_left_align_datapath_mux_i_n_45;
  wire stage_3_left_align_datapath_mux_i_n_46;
  wire stage_3_left_align_datapath_mux_i_n_47;
  wire stage_3_storage_ce_control_i_n_1;
  wire stage_3_storage_count_control_i_n_3;
  wire [0:1]stage_3_storage_count_r;
  wire [0:1]storage_count_c;
  wire storage_not_empty_c__0;
  wire user_clk;

  FDRE FRAME_ERR_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(FRAME_ERR_RESULT),
        .Q(frame_err),
        .R(SR));
  FDRE RX_EOF_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(EOF_N),
        .Q(rx_eof),
        .R(1'b0));
  FDRE \RX_REM_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(sideband_output_i_n_6),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \RX_REM_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(sideband_output_i_n_7),
        .Q(Q[0]),
        .R(1'b0));
  FDSE RX_SRC_RDY_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(SRC_RDY_N),
        .Q(RX_SRC_RDY_N),
        .S(SR));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_rx_tlast_INST_0
       (.I0(rx_eof),
        .O(m_axi_rx_tlast));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_rx_tvalid_INST_0
       (.I0(RX_SRC_RDY_N),
        .O(m_axi_rx_tvalid));
  aurora_8b10b_0_aurora_8b10b_0_OUTPUT_MUX output_mux_i
       (.\OUTPUT_DATA_reg[16]_0 ({MUXED_DATA[0],MUXED_DATA[1],MUXED_DATA[2],MUXED_DATA[3],MUXED_DATA[4],MUXED_DATA[5],MUXED_DATA[6],MUXED_DATA[7],MUXED_DATA[8],MUXED_DATA[9],MUXED_DATA[10],MUXED_DATA[11],MUXED_DATA[12],MUXED_DATA[13],MUXED_DATA[14],MUXED_DATA[15]}),
        .OUTPUT_SELECT(OUTPUT_SELECT),
        .Q({STORAGE_DATA[0],STORAGE_DATA[1],STORAGE_DATA[2],STORAGE_DATA[3],STORAGE_DATA[4],STORAGE_DATA[5],STORAGE_DATA[6],STORAGE_DATA[7],STORAGE_DATA[8],STORAGE_DATA[9],STORAGE_DATA[10],STORAGE_DATA[11],STORAGE_DATA[12],STORAGE_DATA[13],STORAGE_DATA[14],STORAGE_DATA[15],STORAGE_DATA[16],STORAGE_DATA[17],STORAGE_DATA[18],STORAGE_DATA[19],STORAGE_DATA[20],STORAGE_DATA[21],STORAGE_DATA[22],STORAGE_DATA[23],STORAGE_DATA[24],STORAGE_DATA[25],STORAGE_DATA[26],STORAGE_DATA[27],STORAGE_DATA[28],STORAGE_DATA[29],STORAGE_DATA[30],STORAGE_DATA[31]}),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_SIDEBAND_OUTPUT sideband_output_i
       (.D(storage_count_c[1]),
        .EOF_N(EOF_N),
        .EOF_N_reg_0(stage_3_storage_count_control_i_n_3),
        .FRAME_ERR_RESULT(FRAME_ERR_RESULT),
        .FRAME_ERR_RESULT0(FRAME_ERR_RESULT0),
        .Q(stage_2_data_v_count_r[1]),
        .\RX_REM_reg[0]_0 ({sideband_output_i_n_6,sideband_output_i_n_7}),
        .\RX_REM_reg[0]_1 (stage_3_storage_count_r[1]),
        .SR(sideband_output_i_n_1),
        .SRC_RDY_N(SRC_RDY_N),
        .START_RX(START_RX),
        .end_storage_r0(end_storage_r0),
        .excess_c(excess_c),
        .stage_2_end_before_start_r(stage_2_end_before_start_r),
        .stage_2_frame_err_r(stage_2_frame_err_r),
        .stage_2_pad_r(stage_2_pad_r),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .user_clk(user_clk));
  FDRE \stage_1_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [31]),
        .Q(stage_1_data_r[0]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [21]),
        .Q(stage_1_data_r[10]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [20]),
        .Q(stage_1_data_r[11]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [19]),
        .Q(stage_1_data_r[12]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [18]),
        .Q(stage_1_data_r[13]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [17]),
        .Q(stage_1_data_r[14]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [16]),
        .Q(stage_1_data_r[15]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [15]),
        .Q(stage_1_data_r[16]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [14]),
        .Q(stage_1_data_r[17]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [13]),
        .Q(stage_1_data_r[18]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [12]),
        .Q(stage_1_data_r[19]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [30]),
        .Q(stage_1_data_r[1]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [11]),
        .Q(stage_1_data_r[20]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [10]),
        .Q(stage_1_data_r[21]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [9]),
        .Q(stage_1_data_r[22]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [8]),
        .Q(stage_1_data_r[23]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [7]),
        .Q(stage_1_data_r[24]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [6]),
        .Q(stage_1_data_r[25]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [5]),
        .Q(stage_1_data_r[26]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [4]),
        .Q(stage_1_data_r[27]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [3]),
        .Q(stage_1_data_r[28]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [2]),
        .Q(stage_1_data_r[29]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [29]),
        .Q(stage_1_data_r[2]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [1]),
        .Q(stage_1_data_r[30]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [0]),
        .Q(stage_1_data_r[31]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [28]),
        .Q(stage_1_data_r[3]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [27]),
        .Q(stage_1_data_r[4]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [26]),
        .Q(stage_1_data_r[5]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [25]),
        .Q(stage_1_data_r[6]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [24]),
        .Q(stage_1_data_r[7]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [23]),
        .Q(stage_1_data_r[8]),
        .R(1'b0));
  FDRE \stage_1_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_data_r_reg[0]_0 [22]),
        .Q(stage_1_data_r[9]),
        .R(1'b0));
  FDRE \stage_1_ecp_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_ecp_r_reg[0]_0 [1]),
        .Q(stage_1_ecp_r[0]),
        .R(1'b0));
  FDRE \stage_1_ecp_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\stage_1_ecp_r_reg[0]_0 [0]),
        .Q(stage_1_ecp_r[1]),
        .R(1'b0));
  FDRE stage_1_pad_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_pad_r_reg_0),
        .Q(stage_1_pad_r),
        .R(1'b0));
  aurora_8b10b_0_aurora_8b10b_0_RX_LL_DEFRAMER stage_1_rx_ll_deframer_i
       (.\AFTER_SCP_reg[1]_0 (stage_1_rx_ll_deframer_i_n_1),
        .\AFTER_SCP_reg[1]_1 (stage_1_rx_ll_deframer_i_n_2),
        .\AFTER_SCP_reg[1]_2 (stage_1_rx_ll_deframer_i_n_3),
        .D(D),
        .\DEFRAMED_DATA_V_reg[0]_0 (\DEFRAMED_DATA_V_reg[0] ),
        .\DEFRAMED_DATA_V_reg[1]_0 ({count_c[0],count_c[1]}),
        .\IN_FRAME_reg[1]_0 (\IN_FRAME_reg[1] ),
        .Q({stage_1_ecp_r[0],stage_1_ecp_r[1]}),
        .SR(SR),
        .after_scp_select_c_0(after_scp_select_c_0),
        .after_scp_select_c_1(after_scp_select_c_1),
        .in_frame_r_reg_0(in_frame_r_reg),
        .mux_select_c(mux_select_c),
        .\stage_1_ecp_r_reg[0] (stage_1_rx_ll_deframer_i_n_6),
        .stage_2_frame_err_r_reg({stage_1_scp_r[0],stage_1_scp_r[1]}),
        .user_clk(user_clk));
  FDRE \stage_1_scp_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(stage_1_scp_r[0]),
        .R(1'b0));
  FDRE \stage_1_scp_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(stage_1_scp_r[1]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[0]),
        .Q(stage_2_data_r[0]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[10]),
        .Q(stage_2_data_r[10]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[11]),
        .Q(stage_2_data_r[11]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[12]),
        .Q(stage_2_data_r[12]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[13]),
        .Q(stage_2_data_r[13]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[14]),
        .Q(stage_2_data_r[14]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[15]),
        .Q(stage_2_data_r[15]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[16]),
        .Q(stage_2_data_r[16]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[17]),
        .Q(stage_2_data_r[17]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[18]),
        .Q(stage_2_data_r[18]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[19]),
        .Q(stage_2_data_r[19]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[1]),
        .Q(stage_2_data_r[1]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[20]),
        .Q(stage_2_data_r[20]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[21]),
        .Q(stage_2_data_r[21]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[22]),
        .Q(stage_2_data_r[22]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[23]),
        .Q(stage_2_data_r[23]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[24]),
        .Q(stage_2_data_r[24]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[25]),
        .Q(stage_2_data_r[25]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[26]),
        .Q(stage_2_data_r[26]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[27]),
        .Q(stage_2_data_r[27]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[28]),
        .Q(stage_2_data_r[28]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[29]),
        .Q(stage_2_data_r[29]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[2]),
        .Q(stage_2_data_r[2]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[30]),
        .Q(stage_2_data_r[30]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[31]),
        .Q(stage_2_data_r[31]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[3]),
        .Q(stage_2_data_r[3]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[4]),
        .Q(stage_2_data_r[4]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[5]),
        .Q(stage_2_data_r[5]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[6]),
        .Q(stage_2_data_r[6]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[7]),
        .Q(stage_2_data_r[7]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[8]),
        .Q(stage_2_data_r[8]),
        .R(1'b0));
  FDRE \stage_2_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_data_r[9]),
        .Q(stage_2_data_r[9]),
        .R(1'b0));
  FDRE stage_2_end_after_start_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_rx_ll_deframer_i_n_3),
        .Q(stage_2_end_after_start_r),
        .R(SR));
  FDRE stage_2_end_before_start_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_rx_ll_deframer_i_n_2),
        .Q(stage_2_end_before_start_r),
        .R(SR));
  FDRE stage_2_frame_err_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_rx_ll_deframer_i_n_6),
        .Q(stage_2_frame_err_r),
        .R(SR));
  aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_CONTROL stage_2_left_align_control_i
       (.MUX_SELECT(MUX_SELECT),
        .mux_select_c(mux_select_c),
        .user_clk(user_clk));
  FDRE stage_2_pad_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_pad_r),
        .Q(stage_2_pad_r),
        .R(1'b0));
  FDRE stage_2_start_with_data_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_rx_ll_deframer_i_n_1),
        .Q(stage_2_start_with_data_r),
        .R(SR));
  aurora_8b10b_0_aurora_8b10b_0_VALID_DATA_COUNTER stage_2_valid_data_counter_i
       (.\COUNT_reg[0]_0 ({count_c[0],count_c[1]}),
        .D({ce_command_c[0],ce_command_c[1]}),
        .FRAME_ERR_RESULT0(FRAME_ERR_RESULT0),
        .Q({stage_2_data_v_count_r[0],stage_2_data_v_count_r[1]}),
        .SR(SR),
        .\STORAGE_CE_reg[0] ({stage_3_storage_count_r[0],stage_3_storage_count_r[1]}),
        .end_storage_r0(end_storage_r0),
        .end_storage_r_reg(storage_count_c[0]),
        .excess_c(excess_c),
        .stage_2_end_after_start_r(stage_2_end_after_start_r),
        .stage_2_end_before_start_r(stage_2_end_before_start_r),
        .stage_2_frame_err_r(stage_2_frame_err_r),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .storage_not_empty_c__0(storage_not_empty_c__0),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_MUX stage_3_left_align_datapath_mux_i
       (.D({stage_3_left_align_datapath_mux_i_n_16,stage_3_left_align_datapath_mux_i_n_17,stage_3_left_align_datapath_mux_i_n_18,stage_3_left_align_datapath_mux_i_n_19,stage_3_left_align_datapath_mux_i_n_20,stage_3_left_align_datapath_mux_i_n_21,stage_3_left_align_datapath_mux_i_n_22,stage_3_left_align_datapath_mux_i_n_23,stage_3_left_align_datapath_mux_i_n_24,stage_3_left_align_datapath_mux_i_n_25,stage_3_left_align_datapath_mux_i_n_26,stage_3_left_align_datapath_mux_i_n_27,stage_3_left_align_datapath_mux_i_n_28,stage_3_left_align_datapath_mux_i_n_29,stage_3_left_align_datapath_mux_i_n_30,stage_3_left_align_datapath_mux_i_n_31,stage_3_left_align_datapath_mux_i_n_32,stage_3_left_align_datapath_mux_i_n_33,stage_3_left_align_datapath_mux_i_n_34,stage_3_left_align_datapath_mux_i_n_35,stage_3_left_align_datapath_mux_i_n_36,stage_3_left_align_datapath_mux_i_n_37,stage_3_left_align_datapath_mux_i_n_38,stage_3_left_align_datapath_mux_i_n_39,stage_3_left_align_datapath_mux_i_n_40,stage_3_left_align_datapath_mux_i_n_41,stage_3_left_align_datapath_mux_i_n_42,stage_3_left_align_datapath_mux_i_n_43,stage_3_left_align_datapath_mux_i_n_44,stage_3_left_align_datapath_mux_i_n_45,stage_3_left_align_datapath_mux_i_n_46,stage_3_left_align_datapath_mux_i_n_47}),
        .\MUXED_DATA_reg[0]_0 ({MUXED_DATA[0],MUXED_DATA[1],MUXED_DATA[2],MUXED_DATA[3],MUXED_DATA[4],MUXED_DATA[5],MUXED_DATA[6],MUXED_DATA[7],MUXED_DATA[8],MUXED_DATA[9],MUXED_DATA[10],MUXED_DATA[11],MUXED_DATA[12],MUXED_DATA[13],MUXED_DATA[14],MUXED_DATA[15]}),
        .MUX_SELECT(MUX_SELECT),
        .Q({stage_2_data_r[0],stage_2_data_r[1],stage_2_data_r[2],stage_2_data_r[3],stage_2_data_r[4],stage_2_data_r[5],stage_2_data_r[6],stage_2_data_r[7],stage_2_data_r[8],stage_2_data_r[9],stage_2_data_r[10],stage_2_data_r[11],stage_2_data_r[12],stage_2_data_r[13],stage_2_data_r[14],stage_2_data_r[15],stage_2_data_r[16],stage_2_data_r[17],stage_2_data_r[18],stage_2_data_r[19],stage_2_data_r[20],stage_2_data_r[21],stage_2_data_r[22],stage_2_data_r[23],stage_2_data_r[24],stage_2_data_r[25],stage_2_data_r[26],stage_2_data_r[27],stage_2_data_r[28],stage_2_data_r[29],stage_2_data_r[30],stage_2_data_r[31]}),
        .STORAGE_SELECT({STORAGE_SELECT[4],STORAGE_SELECT[9]}),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_OUTPUT_SWITCH_CONTROL stage_3_output_switch_control_i
       (.OUTPUT_SELECT(OUTPUT_SELECT),
        .output_select_c(output_select_c),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_STORAGE_CE_CONTROL stage_3_storage_ce_control_i
       (.D({ce_command_c[0],ce_command_c[1]}),
        .Q({p_0_in0,stage_3_storage_ce_control_i_n_1}),
        .SR(SR),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_STORAGE_COUNT_CONTROL stage_3_storage_count_control_i
       (.D({storage_count_c[0],storage_count_c[1]}),
        .\OUTPUT_SELECT_reg[9] ({stage_2_data_v_count_r[0],stage_2_data_v_count_r[1]}),
        .Q({stage_3_storage_count_r[0],stage_3_storage_count_r[1]}),
        .SR(sideband_output_i_n_1),
        .end_storage_r_reg(stage_3_storage_count_control_i_n_3),
        .output_select_c(output_select_c),
        .stage_2_end_before_start_r(stage_2_end_before_start_r),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .storage_not_empty_c__0(storage_not_empty_c__0),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_STORAGE_SWITCH_CONTROL stage_3_storage_switch_control_i
       (.Q({stage_3_storage_count_r[0],stage_3_storage_count_r[1]}),
        .STORAGE_SELECT({STORAGE_SELECT[4],STORAGE_SELECT[9]}),
        .\STORAGE_SELECT_reg[9]_0 ({stage_2_data_v_count_r[0],stage_2_data_v_count_r[1]}),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_STORAGE_MUX stage_4_storage_mux_i
       (.D({stage_3_left_align_datapath_mux_i_n_16,stage_3_left_align_datapath_mux_i_n_17,stage_3_left_align_datapath_mux_i_n_18,stage_3_left_align_datapath_mux_i_n_19,stage_3_left_align_datapath_mux_i_n_20,stage_3_left_align_datapath_mux_i_n_21,stage_3_left_align_datapath_mux_i_n_22,stage_3_left_align_datapath_mux_i_n_23,stage_3_left_align_datapath_mux_i_n_24,stage_3_left_align_datapath_mux_i_n_25,stage_3_left_align_datapath_mux_i_n_26,stage_3_left_align_datapath_mux_i_n_27,stage_3_left_align_datapath_mux_i_n_28,stage_3_left_align_datapath_mux_i_n_29,stage_3_left_align_datapath_mux_i_n_30,stage_3_left_align_datapath_mux_i_n_31,stage_3_left_align_datapath_mux_i_n_32,stage_3_left_align_datapath_mux_i_n_33,stage_3_left_align_datapath_mux_i_n_34,stage_3_left_align_datapath_mux_i_n_35,stage_3_left_align_datapath_mux_i_n_36,stage_3_left_align_datapath_mux_i_n_37,stage_3_left_align_datapath_mux_i_n_38,stage_3_left_align_datapath_mux_i_n_39,stage_3_left_align_datapath_mux_i_n_40,stage_3_left_align_datapath_mux_i_n_41,stage_3_left_align_datapath_mux_i_n_42,stage_3_left_align_datapath_mux_i_n_43,stage_3_left_align_datapath_mux_i_n_44,stage_3_left_align_datapath_mux_i_n_45,stage_3_left_align_datapath_mux_i_n_46,stage_3_left_align_datapath_mux_i_n_47}),
        .E({p_0_in0,stage_3_storage_ce_control_i_n_1}),
        .Q({STORAGE_DATA[0],STORAGE_DATA[1],STORAGE_DATA[2],STORAGE_DATA[3],STORAGE_DATA[4],STORAGE_DATA[5],STORAGE_DATA[6],STORAGE_DATA[7],STORAGE_DATA[8],STORAGE_DATA[9],STORAGE_DATA[10],STORAGE_DATA[11],STORAGE_DATA[12],STORAGE_DATA[13],STORAGE_DATA[14],STORAGE_DATA[15],STORAGE_DATA[16],STORAGE_DATA[17],STORAGE_DATA[18],STORAGE_DATA[19],STORAGE_DATA[20],STORAGE_DATA[21],STORAGE_DATA[22],STORAGE_DATA[23],STORAGE_DATA[24],STORAGE_DATA[25],STORAGE_DATA[26],STORAGE_DATA[27],STORAGE_DATA[28],STORAGE_DATA[29],STORAGE_DATA[30],STORAGE_DATA[31]}),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_SIDEBAND_OUTPUT" *) 
module aurora_8b10b_0_aurora_8b10b_0_SIDEBAND_OUTPUT
   (SRC_RDY_N,
    SR,
    EOF_N,
    stage_3_end_storage_r,
    FRAME_ERR_RESULT,
    D,
    \RX_REM_reg[0]_0 ,
    user_clk,
    EOF_N_reg_0,
    end_storage_r0,
    FRAME_ERR_RESULT0,
    stage_2_start_with_data_r,
    stage_2_pad_r,
    excess_c,
    stage_2_end_before_start_r,
    Q,
    \RX_REM_reg[0]_1 ,
    stage_2_frame_err_r,
    START_RX);
  output SRC_RDY_N;
  output [0:0]SR;
  output EOF_N;
  output stage_3_end_storage_r;
  output FRAME_ERR_RESULT;
  output [0:0]D;
  output [1:0]\RX_REM_reg[0]_0 ;
  input user_clk;
  input EOF_N_reg_0;
  input end_storage_r0;
  input FRAME_ERR_RESULT0;
  input stage_2_start_with_data_r;
  input stage_2_pad_r;
  input excess_c;
  input stage_2_end_before_start_r;
  input [0:0]Q;
  input [0:0]\RX_REM_reg[0]_1 ;
  input stage_2_frame_err_r;
  input START_RX;

  wire [0:0]D;
  wire EOF_N;
  wire EOF_N_reg_0;
  wire FRAME_ERR_RESULT;
  wire FRAME_ERR_RESULT0;
  wire [0:0]Q;
  wire [1:0]\RX_REM_reg[0]_0 ;
  wire [0:0]\RX_REM_reg[0]_1 ;
  wire [0:0]SR;
  wire SRC_RDY_N;
  wire SRC_RDY_N_i_2_n_0;
  wire START_RX;
  wire end_storage_r0;
  wire excess_c;
  wire pad_storage_r;
  wire pad_storage_r_i_1_n_0;
  wire [1:0]rx_rem_c;
  wire stage_2_end_before_start_r;
  wire stage_2_frame_err_r;
  wire stage_2_pad_r;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire user_clk;

  FDRE EOF_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(EOF_N_reg_0),
        .Q(EOF_N),
        .R(1'b0));
  FDRE FRAME_ERR_RESULT_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(FRAME_ERR_RESULT0),
        .Q(FRAME_ERR_RESULT),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \RX_REM[0]_i_1 
       (.I0(stage_3_end_storage_r),
        .I1(stage_2_start_with_data_r),
        .I2(Q),
        .I3(\RX_REM_reg[0]_1 ),
        .O(rx_rem_c[1]));
  LUT4 #(
    .INIT(16'h0E0F)) 
    \RX_REM[1]_i_1 
       (.I0(stage_3_end_storage_r),
        .I1(stage_2_start_with_data_r),
        .I2(pad_storage_r),
        .I3(stage_2_pad_r),
        .O(rx_rem_c[0]));
  FDRE \RX_REM_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_rem_c[1]),
        .Q(\RX_REM_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_REM_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_rem_c[0]),
        .Q(\RX_REM_reg[0]_0 [0]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    SRC_RDY_N_i_1
       (.I0(stage_2_frame_err_r),
        .I1(START_RX),
        .O(SR));
  LUT4 #(
    .INIT(16'h0145)) 
    SRC_RDY_N_i_2
       (.I0(stage_3_end_storage_r),
        .I1(stage_2_start_with_data_r),
        .I2(excess_c),
        .I3(stage_2_end_before_start_r),
        .O(SRC_RDY_N_i_2_n_0));
  FDSE SRC_RDY_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(SRC_RDY_N_i_2_n_0),
        .Q(SRC_RDY_N),
        .S(SR));
  FDRE end_storage_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(end_storage_r0),
        .Q(stage_3_end_storage_r),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAABBABBAAAAAAAA)) 
    pad_storage_r_i_1
       (.I0(stage_2_pad_r),
        .I1(stage_3_end_storage_r),
        .I2(stage_2_start_with_data_r),
        .I3(excess_c),
        .I4(stage_2_end_before_start_r),
        .I5(pad_storage_r),
        .O(pad_storage_r_i_1_n_0));
  FDRE pad_storage_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(pad_storage_r_i_1_n_0),
        .Q(pad_storage_r),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hE1F0)) 
    \storage_count_r[1]_i_1 
       (.I0(stage_3_end_storage_r),
        .I1(stage_2_start_with_data_r),
        .I2(Q),
        .I3(\RX_REM_reg[0]_1 ),
        .O(D));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_STANDARD_CC_MODULE" *) 
module aurora_8b10b_0_aurora_8b10b_0_STANDARD_CC_MODULE
   (Q,
    DO_CC_reg_0,
    user_clk);
  output Q;
  input DO_CC_reg_0;
  input user_clk;

  wire DO_CC_i_1_n_0;
  wire DO_CC_reg_0;
  wire Q;
  wire \cc_count_r_reg_n_0_[5] ;
  wire cc_idle_count_done_c;
  wire count_13d_flop_r_reg_r_n_0;
  wire \count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0 ;
  wire \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0 ;
  wire \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0 ;
  wire count_13d_srl_r_reg_gate_n_0;
  wire count_13d_srl_r_reg_r_0_n_0;
  wire count_13d_srl_r_reg_r_1_n_0;
  wire count_13d_srl_r_reg_r_2_n_0;
  wire count_13d_srl_r_reg_r_3_n_0;
  wire count_13d_srl_r_reg_r_4_n_0;
  wire count_13d_srl_r_reg_r_5_n_0;
  wire count_13d_srl_r_reg_r_6_n_0;
  wire count_13d_srl_r_reg_r_7_n_0;
  wire count_13d_srl_r_reg_r_8_n_0;
  wire count_13d_srl_r_reg_r_9_n_0;
  wire count_13d_srl_r_reg_r_n_0;
  wire count_16d_flop_r;
  wire count_16d_flop_r_i_1_n_0;
  wire count_16d_srl_r0;
  wire \count_16d_srl_r_reg_n_0_[0] ;
  wire \count_16d_srl_r_reg_n_0_[10] ;
  wire \count_16d_srl_r_reg_n_0_[11] ;
  wire \count_16d_srl_r_reg_n_0_[12] ;
  wire \count_16d_srl_r_reg_n_0_[13] ;
  wire \count_16d_srl_r_reg_n_0_[14] ;
  wire \count_16d_srl_r_reg_n_0_[1] ;
  wire \count_16d_srl_r_reg_n_0_[2] ;
  wire \count_16d_srl_r_reg_n_0_[3] ;
  wire \count_16d_srl_r_reg_n_0_[4] ;
  wire \count_16d_srl_r_reg_n_0_[5] ;
  wire \count_16d_srl_r_reg_n_0_[6] ;
  wire \count_16d_srl_r_reg_n_0_[7] ;
  wire \count_16d_srl_r_reg_n_0_[8] ;
  wire \count_16d_srl_r_reg_n_0_[9] ;
  wire count_24d_flop_r;
  wire count_24d_flop_r_i_1_n_0;
  wire count_24d_srl_r0;
  wire \count_24d_srl_r_reg_n_0_[0] ;
  wire \count_24d_srl_r_reg_n_0_[10] ;
  wire \count_24d_srl_r_reg_n_0_[1] ;
  wire \count_24d_srl_r_reg_n_0_[2] ;
  wire \count_24d_srl_r_reg_n_0_[3] ;
  wire \count_24d_srl_r_reg_n_0_[4] ;
  wire \count_24d_srl_r_reg_n_0_[5] ;
  wire \count_24d_srl_r_reg_n_0_[6] ;
  wire \count_24d_srl_r_reg_n_0_[7] ;
  wire \count_24d_srl_r_reg_n_0_[8] ;
  wire \count_24d_srl_r_reg_n_0_[9] ;
  wire [1:0]p_2_in;
  wire [2:2]p_3_out;
  wire \prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0 ;
  wire \prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0 ;
  wire prepare_count_r_reg_gate_n_0;
  wire reset_r;
  wire user_clk;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    DO_CC_i_1
       (.I0(p_2_in[1]),
        .I1(\cc_count_r_reg_n_0_[5] ),
        .I2(p_2_in[0]),
        .I3(reset_r),
        .I4(p_3_out),
        .O(DO_CC_i_1_n_0));
  FDRE DO_CC_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(DO_CC_i_1_n_0),
        .Q(Q),
        .R(DO_CC_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(p_2_in[1]),
        .R(DO_CC_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_in[1]),
        .Q(p_2_in[0]),
        .R(DO_CC_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_in[0]),
        .Q(\cc_count_r_reg_n_0_[5] ),
        .R(DO_CC_reg_0));
  FDRE count_13d_flop_r_reg_r
       (.C(user_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(count_13d_flop_r_reg_r_n_0),
        .R(DO_CC_reg_0));
  FDRE \count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9 
       (.C(user_clk),
        .CE(1'b1),
        .D(\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0 ),
        .Q(\count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0 ),
        .R(1'b0));
  FDRE \count_13d_srl_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_gate_n_0),
        .Q(count_16d_srl_r0),
        .R(DO_CC_reg_0));
  (* srl_bus_name = "inst/\standard_cc_module_i/count_13d_srl_r_reg " *) 
  (* srl_name = "inst/\standard_cc_module_i/count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8 " *) 
  SRL16E \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0 ),
        .Q(\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1 
       (.I0(count_16d_srl_r0),
        .I1(reset_r),
        .O(\count_13d_srl_r_reg[9]_srl11___standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    count_13d_srl_r_reg_gate
       (.I0(\count_13d_srl_r_reg[10]_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0 ),
        .I1(count_13d_srl_r_reg_r_9_n_0),
        .O(count_13d_srl_r_reg_gate_n_0));
  FDRE count_13d_srl_r_reg_r
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_flop_r_reg_r_n_0),
        .Q(count_13d_srl_r_reg_r_n_0),
        .R(DO_CC_reg_0));
  FDRE count_13d_srl_r_reg_r_0
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_n_0),
        .Q(count_13d_srl_r_reg_r_0_n_0),
        .R(DO_CC_reg_0));
  FDRE count_13d_srl_r_reg_r_1
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_0_n_0),
        .Q(count_13d_srl_r_reg_r_1_n_0),
        .R(DO_CC_reg_0));
  FDRE count_13d_srl_r_reg_r_2
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_1_n_0),
        .Q(count_13d_srl_r_reg_r_2_n_0),
        .R(DO_CC_reg_0));
  FDRE count_13d_srl_r_reg_r_3
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_2_n_0),
        .Q(count_13d_srl_r_reg_r_3_n_0),
        .R(DO_CC_reg_0));
  FDRE count_13d_srl_r_reg_r_4
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_3_n_0),
        .Q(count_13d_srl_r_reg_r_4_n_0),
        .R(DO_CC_reg_0));
  FDRE count_13d_srl_r_reg_r_5
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_4_n_0),
        .Q(count_13d_srl_r_reg_r_5_n_0),
        .R(DO_CC_reg_0));
  FDRE count_13d_srl_r_reg_r_6
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_5_n_0),
        .Q(count_13d_srl_r_reg_r_6_n_0),
        .R(DO_CC_reg_0));
  FDRE count_13d_srl_r_reg_r_7
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_6_n_0),
        .Q(count_13d_srl_r_reg_r_7_n_0),
        .R(DO_CC_reg_0));
  FDRE count_13d_srl_r_reg_r_8
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_7_n_0),
        .Q(count_13d_srl_r_reg_r_8_n_0),
        .R(DO_CC_reg_0));
  FDRE count_13d_srl_r_reg_r_9
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_srl_r_reg_r_8_n_0),
        .Q(count_13d_srl_r_reg_r_9_n_0),
        .R(DO_CC_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    count_16d_flop_r_i_1
       (.I0(\count_16d_srl_r_reg_n_0_[14] ),
        .I1(count_16d_srl_r0),
        .I2(reset_r),
        .I3(count_16d_flop_r),
        .O(count_16d_flop_r_i_1_n_0));
  FDRE count_16d_flop_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(count_16d_flop_r_i_1_n_0),
        .Q(count_16d_flop_r),
        .R(DO_CC_reg_0));
  FDRE \count_16d_srl_r_reg[0] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(count_16d_flop_r),
        .Q(\count_16d_srl_r_reg_n_0_[0] ),
        .R(DO_CC_reg_0));
  FDRE \count_16d_srl_r_reg[10] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[9] ),
        .Q(\count_16d_srl_r_reg_n_0_[10] ),
        .R(DO_CC_reg_0));
  FDRE \count_16d_srl_r_reg[11] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[10] ),
        .Q(\count_16d_srl_r_reg_n_0_[11] ),
        .R(DO_CC_reg_0));
  FDRE \count_16d_srl_r_reg[12] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[11] ),
        .Q(\count_16d_srl_r_reg_n_0_[12] ),
        .R(DO_CC_reg_0));
  FDRE \count_16d_srl_r_reg[13] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[12] ),
        .Q(\count_16d_srl_r_reg_n_0_[13] ),
        .R(DO_CC_reg_0));
  FDRE \count_16d_srl_r_reg[14] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[13] ),
        .Q(\count_16d_srl_r_reg_n_0_[14] ),
        .R(DO_CC_reg_0));
  FDRE \count_16d_srl_r_reg[1] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[0] ),
        .Q(\count_16d_srl_r_reg_n_0_[1] ),
        .R(DO_CC_reg_0));
  FDRE \count_16d_srl_r_reg[2] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[1] ),
        .Q(\count_16d_srl_r_reg_n_0_[2] ),
        .R(DO_CC_reg_0));
  FDRE \count_16d_srl_r_reg[3] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[2] ),
        .Q(\count_16d_srl_r_reg_n_0_[3] ),
        .R(DO_CC_reg_0));
  FDRE \count_16d_srl_r_reg[4] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[3] ),
        .Q(\count_16d_srl_r_reg_n_0_[4] ),
        .R(DO_CC_reg_0));
  FDRE \count_16d_srl_r_reg[5] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[4] ),
        .Q(\count_16d_srl_r_reg_n_0_[5] ),
        .R(DO_CC_reg_0));
  FDRE \count_16d_srl_r_reg[6] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[5] ),
        .Q(\count_16d_srl_r_reg_n_0_[6] ),
        .R(DO_CC_reg_0));
  FDRE \count_16d_srl_r_reg[7] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[6] ),
        .Q(\count_16d_srl_r_reg_n_0_[7] ),
        .R(DO_CC_reg_0));
  FDRE \count_16d_srl_r_reg[8] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[7] ),
        .Q(\count_16d_srl_r_reg_n_0_[8] ),
        .R(DO_CC_reg_0));
  FDRE \count_16d_srl_r_reg[9] 
       (.C(user_clk),
        .CE(count_16d_srl_r0),
        .D(\count_16d_srl_r_reg_n_0_[8] ),
        .Q(\count_16d_srl_r_reg_n_0_[9] ),
        .R(DO_CC_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT5 #(
    .INIT(32'hFFBFFF80)) 
    count_24d_flop_r_i_1
       (.I0(\count_24d_srl_r_reg_n_0_[10] ),
        .I1(\count_16d_srl_r_reg_n_0_[14] ),
        .I2(count_16d_srl_r0),
        .I3(reset_r),
        .I4(count_24d_flop_r),
        .O(count_24d_flop_r_i_1_n_0));
  FDRE count_24d_flop_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(count_24d_flop_r_i_1_n_0),
        .Q(count_24d_flop_r),
        .R(DO_CC_reg_0));
  LUT2 #(
    .INIT(4'h8)) 
    \count_24d_srl_r[0]_i_1 
       (.I0(\count_16d_srl_r_reg_n_0_[14] ),
        .I1(count_16d_srl_r0),
        .O(count_24d_srl_r0));
  FDRE \count_24d_srl_r_reg[0] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(count_24d_flop_r),
        .Q(\count_24d_srl_r_reg_n_0_[0] ),
        .R(DO_CC_reg_0));
  FDRE \count_24d_srl_r_reg[10] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[9] ),
        .Q(\count_24d_srl_r_reg_n_0_[10] ),
        .R(DO_CC_reg_0));
  FDRE \count_24d_srl_r_reg[1] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[0] ),
        .Q(\count_24d_srl_r_reg_n_0_[1] ),
        .R(DO_CC_reg_0));
  FDRE \count_24d_srl_r_reg[2] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[1] ),
        .Q(\count_24d_srl_r_reg_n_0_[2] ),
        .R(DO_CC_reg_0));
  FDRE \count_24d_srl_r_reg[3] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[2] ),
        .Q(\count_24d_srl_r_reg_n_0_[3] ),
        .R(DO_CC_reg_0));
  FDRE \count_24d_srl_r_reg[4] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[3] ),
        .Q(\count_24d_srl_r_reg_n_0_[4] ),
        .R(DO_CC_reg_0));
  FDRE \count_24d_srl_r_reg[5] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[4] ),
        .Q(\count_24d_srl_r_reg_n_0_[5] ),
        .R(DO_CC_reg_0));
  FDRE \count_24d_srl_r_reg[6] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[5] ),
        .Q(\count_24d_srl_r_reg_n_0_[6] ),
        .R(DO_CC_reg_0));
  FDRE \count_24d_srl_r_reg[7] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[6] ),
        .Q(\count_24d_srl_r_reg_n_0_[7] ),
        .R(DO_CC_reg_0));
  FDRE \count_24d_srl_r_reg[8] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[7] ),
        .Q(\count_24d_srl_r_reg_n_0_[8] ),
        .R(DO_CC_reg_0));
  FDRE \count_24d_srl_r_reg[9] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[8] ),
        .Q(\count_24d_srl_r_reg_n_0_[9] ),
        .R(DO_CC_reg_0));
  (* srl_bus_name = "inst/\standard_cc_module_i/prepare_count_r_reg " *) 
  (* srl_name = "inst/\standard_cc_module_i/prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(cc_idle_count_done_c),
        .Q(\prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_i_1 
       (.I0(\count_24d_srl_r_reg_n_0_[10] ),
        .I1(\count_16d_srl_r_reg_n_0_[14] ),
        .I2(count_16d_srl_r0),
        .O(cc_idle_count_done_c));
  FDRE \prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2 
       (.C(user_clk),
        .CE(1'b1),
        .D(\prepare_count_r_reg[7]_srl4___standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0 ),
        .Q(\prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0 ),
        .R(1'b0));
  FDRE \prepare_count_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(prepare_count_r_reg_gate_n_0),
        .Q(p_3_out),
        .R(DO_CC_reg_0));
  LUT2 #(
    .INIT(4'h8)) 
    prepare_count_r_reg_gate
       (.I0(\prepare_count_r_reg[8]_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0 ),
        .I1(count_13d_srl_r_reg_r_2_n_0),
        .O(prepare_count_r_reg_gate_n_0));
  FDRE reset_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(DO_CC_reg_0),
        .Q(reset_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_STORAGE_CE_CONTROL" *) 
module aurora_8b10b_0_aurora_8b10b_0_STORAGE_CE_CONTROL
   (Q,
    SR,
    D,
    user_clk);
  output [1:0]Q;
  input [0:0]SR;
  input [1:0]D;
  input user_clk;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire user_clk;

  FDRE \STORAGE_CE_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \STORAGE_CE_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_STORAGE_COUNT_CONTROL" *) 
module aurora_8b10b_0_aurora_8b10b_0_STORAGE_COUNT_CONTROL
   (output_select_c,
    Q,
    end_storage_r_reg,
    storage_not_empty_c__0,
    stage_3_end_storage_r,
    stage_2_start_with_data_r,
    \OUTPUT_SELECT_reg[9] ,
    stage_2_end_before_start_r,
    SR,
    D,
    user_clk);
  output [0:0]output_select_c;
  output [1:0]Q;
  output end_storage_r_reg;
  output storage_not_empty_c__0;
  input stage_3_end_storage_r;
  input stage_2_start_with_data_r;
  input [1:0]\OUTPUT_SELECT_reg[9] ;
  input stage_2_end_before_start_r;
  input [0:0]SR;
  input [1:0]D;
  input user_clk;

  wire [1:0]D;
  wire [1:0]\OUTPUT_SELECT_reg[9] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire end_storage_r_reg;
  wire [0:0]output_select_c;
  wire stage_2_end_before_start_r;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire storage_not_empty_c__0;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT5 #(
    .INIT(32'h01555555)) 
    EOF_N_i_1
       (.I0(stage_3_end_storage_r),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(stage_2_end_before_start_r),
        .I4(stage_2_start_with_data_r),
        .O(end_storage_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'hE)) 
    FRAME_ERR_RESULT_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(storage_not_empty_c__0));
  LUT6 #(
    .INIT(64'h0000010001000100)) 
    \OUTPUT_SELECT[9]_i_1 
       (.I0(stage_3_end_storage_r),
        .I1(stage_2_start_with_data_r),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\OUTPUT_SELECT_reg[9] [0]),
        .I5(\OUTPUT_SELECT_reg[9] [1]),
        .O(output_select_c));
  FDRE \storage_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \storage_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_STORAGE_MUX" *) 
module aurora_8b10b_0_aurora_8b10b_0_STORAGE_MUX
   (Q,
    E,
    D,
    user_clk);
  output [31:0]Q;
  input [1:0]E;
  input [31:0]D;
  input user_clk;

  wire [31:0]D;
  wire [1:0]E;
  wire [31:0]Q;
  wire user_clk;

  FDRE \STORAGE_DATA_reg[0] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[10] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[11] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[12] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[13] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[14] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[15] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[16] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[17] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[18] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[19] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[1] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[20] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[21] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[22] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[23] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[24] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[25] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[26] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[27] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[28] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[29] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[2] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[30] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[31] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[3] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[4] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[5] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[6] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[7] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[8] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \STORAGE_DATA_reg[9] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_STORAGE_SWITCH_CONTROL" *) 
module aurora_8b10b_0_aurora_8b10b_0_STORAGE_SWITCH_CONTROL
   (STORAGE_SELECT,
    Q,
    \STORAGE_SELECT_reg[9]_0 ,
    stage_2_start_with_data_r,
    stage_3_end_storage_r,
    user_clk);
  output [1:0]STORAGE_SELECT;
  input [1:0]Q;
  input [1:0]\STORAGE_SELECT_reg[9]_0 ;
  input stage_2_start_with_data_r;
  input stage_3_end_storage_r;
  input user_clk;

  wire [1:0]Q;
  wire [1:0]STORAGE_SELECT;
  wire \STORAGE_SELECT[4]_i_1_n_0 ;
  wire \STORAGE_SELECT[9]_i_1_n_0 ;
  wire [1:0]\STORAGE_SELECT_reg[9]_0 ;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire user_clk;

  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \STORAGE_SELECT[4]_i_1 
       (.I0(Q[0]),
        .I1(\STORAGE_SELECT_reg[9]_0 [1]),
        .I2(Q[1]),
        .I3(\STORAGE_SELECT_reg[9]_0 [0]),
        .I4(stage_2_start_with_data_r),
        .I5(stage_3_end_storage_r),
        .O(\STORAGE_SELECT[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF14)) 
    \STORAGE_SELECT[9]_i_1 
       (.I0(Q[0]),
        .I1(\STORAGE_SELECT_reg[9]_0 [0]),
        .I2(\STORAGE_SELECT_reg[9]_0 [1]),
        .I3(stage_2_start_with_data_r),
        .I4(stage_3_end_storage_r),
        .O(\STORAGE_SELECT[9]_i_1_n_0 ));
  FDRE \STORAGE_SELECT_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\STORAGE_SELECT[4]_i_1_n_0 ),
        .Q(STORAGE_SELECT[1]),
        .R(1'b0));
  FDRE \STORAGE_SELECT_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\STORAGE_SELECT[9]_i_1_n_0 ),
        .Q(STORAGE_SELECT[0]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_SYM_DEC_4BYTE" *) 
module aurora_8b10b_0_aurora_8b10b_0_SYM_DEC_4BYTE
   (\left_align_select_r_reg[0]_0 ,
    \left_align_select_r_reg[1]_0 ,
    rx_sp_descram_in,
    rx_spa_descram_in,
    rx_neg_descram_in,
    got_v_descram_in,
    D,
    first_v_received_r,
    \RX_PAD_reg[0]_0 ,
    Q,
    \RX_PE_DATA_V_reg[0]_0 ,
    reset_lanes_flop_i,
    reset_lanes_flop_i_0,
    \previous_cycle_data_r_reg[5]_0 ,
    \RX_PE_DATA_reg[16]_0 ,
    \RX_PE_DATA_reg[0]_0 ,
    \RX_PE_DATA_reg[17]_0 ,
    \RX_PE_DATA_reg[18]_0 ,
    \RX_PE_DATA_reg[19]_0 ,
    \RX_PE_DATA_reg[20]_0 ,
    \RX_PE_DATA_reg[21]_0 ,
    \RX_PE_DATA_reg[22]_0 ,
    \RX_PE_DATA_reg[23]_0 ,
    \RX_PE_DATA_reg[26]_0 ,
    \RX_PE_DATA_reg[27]_0 ,
    \RX_PE_DATA_reg[30]_0 ,
    \RX_PE_DATA_reg[31]_0 ,
    \RX_PE_DATA_reg[0]_1 ,
    \RX_PE_DATA_reg[1]_0 ,
    \RX_PE_DATA_reg[2]_0 ,
    \RX_PE_DATA_reg[3]_0 ,
    \RX_PE_DATA_reg[4]_0 ,
    \RX_PE_DATA_reg[5]_0 ,
    \RX_PE_DATA_reg[6]_0 ,
    \RX_PE_DATA_reg[7]_0 ,
    \RX_PE_DATA_reg[10]_0 ,
    \RX_PE_DATA_reg[11]_0 ,
    \RX_PE_DATA_reg[14]_0 ,
    \RX_PE_DATA_reg[15]_0 ,
    \RX_SCP_reg[0]_0 ,
    \RX_ECP_reg[0]_0 ,
    \left_align_select_r_reg[0]_1 ,
    user_clk,
    \left_align_select_r_reg[1]_1 ,
    \word_aligned_control_bits_r_reg[3]_0 ,
    \DOUT_reg[0] ,
    reset_lanes_i,
    RXDATA,
    RXCHARISK,
    \DOUT_reg[0]_0 ,
    \DOUT_reg[0]_1 ,
    lane_up,
    \word_aligned_data_r_reg[24]_0 ,
    \word_aligned_data_r_reg[18]_0 );
  output \left_align_select_r_reg[0]_0 ;
  output \left_align_select_r_reg[1]_0 ;
  output rx_sp_descram_in;
  output rx_spa_descram_in;
  output rx_neg_descram_in;
  output got_v_descram_in;
  output [0:0]D;
  output first_v_received_r;
  output [1:0]\RX_PAD_reg[0]_0 ;
  output [1:0]Q;
  output [1:0]\RX_PE_DATA_V_reg[0]_0 ;
  output reset_lanes_flop_i;
  output reset_lanes_flop_i_0;
  output [5:0]\previous_cycle_data_r_reg[5]_0 ;
  output \RX_PE_DATA_reg[16]_0 ;
  output [31:0]\RX_PE_DATA_reg[0]_0 ;
  output \RX_PE_DATA_reg[17]_0 ;
  output \RX_PE_DATA_reg[18]_0 ;
  output \RX_PE_DATA_reg[19]_0 ;
  output \RX_PE_DATA_reg[20]_0 ;
  output \RX_PE_DATA_reg[21]_0 ;
  output \RX_PE_DATA_reg[22]_0 ;
  output \RX_PE_DATA_reg[23]_0 ;
  output \RX_PE_DATA_reg[26]_0 ;
  output \RX_PE_DATA_reg[27]_0 ;
  output \RX_PE_DATA_reg[30]_0 ;
  output \RX_PE_DATA_reg[31]_0 ;
  output \RX_PE_DATA_reg[0]_1 ;
  output \RX_PE_DATA_reg[1]_0 ;
  output \RX_PE_DATA_reg[2]_0 ;
  output \RX_PE_DATA_reg[3]_0 ;
  output \RX_PE_DATA_reg[4]_0 ;
  output \RX_PE_DATA_reg[5]_0 ;
  output \RX_PE_DATA_reg[6]_0 ;
  output \RX_PE_DATA_reg[7]_0 ;
  output \RX_PE_DATA_reg[10]_0 ;
  output \RX_PE_DATA_reg[11]_0 ;
  output \RX_PE_DATA_reg[14]_0 ;
  output \RX_PE_DATA_reg[15]_0 ;
  output [1:0]\RX_SCP_reg[0]_0 ;
  output [1:0]\RX_ECP_reg[0]_0 ;
  input \left_align_select_r_reg[0]_1 ;
  input user_clk;
  input \left_align_select_r_reg[1]_1 ;
  input \word_aligned_control_bits_r_reg[3]_0 ;
  input \DOUT_reg[0] ;
  input reset_lanes_i;
  input [31:0]RXDATA;
  input [3:0]RXCHARISK;
  input [11:0]\DOUT_reg[0]_0 ;
  input [11:0]\DOUT_reg[0]_1 ;
  input lane_up;
  input [7:0]\word_aligned_data_r_reg[24]_0 ;
  input [5:0]\word_aligned_data_r_reg[18]_0 ;

  wire [0:0]D;
  wire \DOUT_reg[0] ;
  wire [11:0]\DOUT_reg[0]_0 ;
  wire [11:0]\DOUT_reg[0]_1 ;
  wire GOT_V_i_2_n_0;
  wire [1:0]Q;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire RX_CC0;
  wire RX_CC_i_2_n_0;
  wire RX_CC_i_3_n_0;
  wire RX_ECP0;
  wire \RX_ECP[1]_i_1_n_0 ;
  wire [1:0]\RX_ECP_reg[0]_0 ;
  wire RX_NEG0;
  wire [1:0]\RX_PAD_reg[0]_0 ;
  wire [1:0]\RX_PE_DATA_V_reg[0]_0 ;
  wire [31:0]\RX_PE_DATA_reg[0]_0 ;
  wire \RX_PE_DATA_reg[0]_1 ;
  wire \RX_PE_DATA_reg[10]_0 ;
  wire \RX_PE_DATA_reg[11]_0 ;
  wire \RX_PE_DATA_reg[14]_0 ;
  wire \RX_PE_DATA_reg[15]_0 ;
  wire \RX_PE_DATA_reg[16]_0 ;
  wire \RX_PE_DATA_reg[17]_0 ;
  wire \RX_PE_DATA_reg[18]_0 ;
  wire \RX_PE_DATA_reg[19]_0 ;
  wire \RX_PE_DATA_reg[1]_0 ;
  wire \RX_PE_DATA_reg[20]_0 ;
  wire \RX_PE_DATA_reg[21]_0 ;
  wire \RX_PE_DATA_reg[22]_0 ;
  wire \RX_PE_DATA_reg[23]_0 ;
  wire \RX_PE_DATA_reg[26]_0 ;
  wire \RX_PE_DATA_reg[27]_0 ;
  wire \RX_PE_DATA_reg[2]_0 ;
  wire \RX_PE_DATA_reg[30]_0 ;
  wire \RX_PE_DATA_reg[31]_0 ;
  wire \RX_PE_DATA_reg[3]_0 ;
  wire \RX_PE_DATA_reg[4]_0 ;
  wire \RX_PE_DATA_reg[5]_0 ;
  wire \RX_PE_DATA_reg[6]_0 ;
  wire \RX_PE_DATA_reg[7]_0 ;
  wire RX_SCP0;
  wire \RX_SCP[1]_i_1_n_0 ;
  wire [1:0]\RX_SCP_reg[0]_0 ;
  wire RX_SP0;
  wire RX_SPA0;
  wire RX_SPA_i_2_n_0;
  wire RX_SP_i_2_n_0;
  wire RX_SP_i_3_n_0;
  wire first_v_received_r;
  wire first_v_received_r_i_1_n_0;
  wire got_v_c;
  wire got_v_descram_in;
  wire lane_up;
  wire \left_align_select_r_reg[0]_0 ;
  wire \left_align_select_r_reg[0]_1 ;
  wire \left_align_select_r_reg[1]_0 ;
  wire \left_align_select_r_reg[1]_1 ;
  wire [3:0]p_0_in;
  wire [1:0]p_1_out;
  wire [7:0]p_2_in;
  wire [1:0]p_3_out;
  wire [5:0]p_8_out;
  wire [2:0]previous_cycle_control_r;
  wire [5:0]\previous_cycle_data_r_reg[5]_0 ;
  wire \previous_cycle_data_r_reg_n_0_[16] ;
  wire \previous_cycle_data_r_reg_n_0_[17] ;
  wire \previous_cycle_data_r_reg_n_0_[18] ;
  wire \previous_cycle_data_r_reg_n_0_[19] ;
  wire \previous_cycle_data_r_reg_n_0_[20] ;
  wire \previous_cycle_data_r_reg_n_0_[21] ;
  wire \previous_cycle_data_r_reg_n_0_[22] ;
  wire \previous_cycle_data_r_reg_n_0_[23] ;
  wire \previous_cycle_data_r_reg_n_0_[6] ;
  wire \previous_cycle_data_r_reg_n_0_[7] ;
  wire reset_lanes_flop_i;
  wire reset_lanes_flop_i_0;
  wire reset_lanes_i;
  wire [1:7]rx_cc_r;
  wire rx_cc_r0__0;
  wire \rx_cc_r0_inferred__0/i__n_0 ;
  wire \rx_cc_r0_inferred__1/i__n_0 ;
  wire rx_cc_r0_n_0;
  wire [0:7]rx_ecp_d_r;
  wire rx_ecp_d_r0__0;
  wire \rx_ecp_d_r0_inferred__0/i__n_0 ;
  wire \rx_ecp_d_r0_inferred__1/i__n_0 ;
  wire \rx_ecp_d_r0_inferred__2/i__n_0 ;
  wire \rx_ecp_d_r0_inferred__3/i__n_0 ;
  wire rx_ecp_d_r0_n_0;
  wire rx_neg_descram_in;
  wire [0:2]rx_pad_d_r;
  wire rx_pad_d_r0__0;
  wire \rx_pad_d_r0_inferred__0/i__n_0 ;
  wire \rx_pad_d_r0_inferred__1/i__n_0 ;
  wire rx_pad_d_r0_n_0;
  wire [0:3]rx_pe_control_r;
  wire [0:31]rx_pe_data_r;
  wire [0:7]rx_scp_d_r;
  wire rx_scp_d_r0__0;
  wire \rx_scp_d_r0_inferred__0/i__n_0 ;
  wire \rx_scp_d_r0_inferred__1/i__n_0 ;
  wire \rx_scp_d_r0_inferred__2/i__n_0 ;
  wire \rx_scp_d_r0_inferred__3/i__n_0 ;
  wire \rx_scp_d_r0_inferred__4/i__n_0 ;
  wire \rx_scp_d_r0_inferred__5/i__n_0 ;
  wire rx_scp_d_r0_n_0;
  wire rx_sp_descram_in;
  wire [0:1]rx_sp_neg_d_r;
  wire [0:7]rx_sp_r;
  wire rx_sp_r0_n_0;
  wire rx_sp_r111_in;
  wire rx_sp_r114_in;
  wire rx_spa_descram_in;
  wire [0:1]rx_spa_neg_d_r;
  wire rx_spa_neg_d_r0__0;
  wire rx_spa_neg_d_r0_n_0;
  wire [2:7]rx_spa_r;
  wire rx_spa_r0__0;
  wire \rx_spa_r0_inferred__0/i__n_0 ;
  wire rx_spa_r0_n_0;
  wire [2:7]rx_v_d_r;
  wire rx_v_d_r0__0;
  wire \rx_v_d_r0_inferred__0/i__n_0 ;
  wire \rx_v_d_r0_inferred__1/i__n_0 ;
  wire \rx_v_d_r0_inferred__2/i__n_0 ;
  wire \rx_v_d_r0_inferred__3/i__n_0 ;
  wire rx_v_d_r0_n_0;
  wire user_clk;
  wire [0:3]word_aligned_control_bits_r;
  wire \word_aligned_control_bits_r[0]_i_1_n_0 ;
  wire \word_aligned_control_bits_r[1]_i_1_n_0 ;
  wire \word_aligned_control_bits_r[2]_i_1_n_0 ;
  wire \word_aligned_control_bits_r_reg[3]_0 ;
  wire \word_aligned_data_r[0]_i_1_n_0 ;
  wire \word_aligned_data_r[10]_i_1_n_0 ;
  wire \word_aligned_data_r[11]_i_1_n_0 ;
  wire \word_aligned_data_r[12]_i_1_n_0 ;
  wire \word_aligned_data_r[13]_i_1_n_0 ;
  wire \word_aligned_data_r[14]_i_1_n_0 ;
  wire \word_aligned_data_r[15]_i_1_n_0 ;
  wire \word_aligned_data_r[16]_i_1_n_0 ;
  wire \word_aligned_data_r[17]_i_1_n_0 ;
  wire \word_aligned_data_r[1]_i_1_n_0 ;
  wire \word_aligned_data_r[2]_i_1_n_0 ;
  wire \word_aligned_data_r[3]_i_1_n_0 ;
  wire \word_aligned_data_r[4]_i_1_n_0 ;
  wire \word_aligned_data_r[5]_i_1_n_0 ;
  wire \word_aligned_data_r[6]_i_1_n_0 ;
  wire \word_aligned_data_r[7]_i_1_n_0 ;
  wire \word_aligned_data_r[8]_i_1_n_0 ;
  wire \word_aligned_data_r[9]_i_1_n_0 ;
  wire [5:0]\word_aligned_data_r_reg[18]_0 ;
  wire [7:0]\word_aligned_data_r_reg[24]_0 ;
  wire \word_aligned_data_r_reg_n_0_[0] ;
  wire \word_aligned_data_r_reg_n_0_[12] ;
  wire \word_aligned_data_r_reg_n_0_[13] ;
  wire \word_aligned_data_r_reg_n_0_[14] ;
  wire \word_aligned_data_r_reg_n_0_[15] ;
  wire \word_aligned_data_r_reg_n_0_[16] ;
  wire \word_aligned_data_r_reg_n_0_[17] ;
  wire \word_aligned_data_r_reg_n_0_[18] ;
  wire \word_aligned_data_r_reg_n_0_[19] ;
  wire \word_aligned_data_r_reg_n_0_[1] ;
  wire \word_aligned_data_r_reg_n_0_[20] ;
  wire \word_aligned_data_r_reg_n_0_[21] ;
  wire \word_aligned_data_r_reg_n_0_[22] ;
  wire \word_aligned_data_r_reg_n_0_[23] ;
  wire \word_aligned_data_r_reg_n_0_[24] ;
  wire \word_aligned_data_r_reg_n_0_[25] ;
  wire \word_aligned_data_r_reg_n_0_[26] ;
  wire \word_aligned_data_r_reg_n_0_[27] ;
  wire \word_aligned_data_r_reg_n_0_[28] ;
  wire \word_aligned_data_r_reg_n_0_[29] ;
  wire \word_aligned_data_r_reg_n_0_[2] ;
  wire \word_aligned_data_r_reg_n_0_[30] ;
  wire \word_aligned_data_r_reg_n_0_[31] ;
  wire \word_aligned_data_r_reg_n_0_[3] ;
  wire \word_aligned_data_r_reg_n_0_[4] ;
  wire \word_aligned_data_r_reg_n_0_[5] ;
  wire \word_aligned_data_r_reg_n_0_[6] ;
  wire \word_aligned_data_r_reg_n_0_[7] ;

  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[0]_i_1__1 
       (.I0(\RX_PE_DATA_reg[0]_0 [0]),
        .I1(\DOUT_reg[0]_0 [11]),
        .O(\RX_PE_DATA_reg[31]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[0]_i_1__2 
       (.I0(\RX_PE_DATA_reg[0]_0 [16]),
        .I1(\DOUT_reg[0]_1 [11]),
        .O(\RX_PE_DATA_reg[15]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[10]_i_1__1 
       (.I0(\RX_PE_DATA_reg[0]_0 [10]),
        .I1(\DOUT_reg[0]_0 [5]),
        .O(\RX_PE_DATA_reg[21]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[10]_i_1__2 
       (.I0(\RX_PE_DATA_reg[0]_0 [26]),
        .I1(\DOUT_reg[0]_1 [5]),
        .O(\RX_PE_DATA_reg[5]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[11]_i_1__1 
       (.I0(\RX_PE_DATA_reg[0]_0 [11]),
        .I1(\DOUT_reg[0]_0 [4]),
        .O(\RX_PE_DATA_reg[20]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[11]_i_1__2 
       (.I0(\RX_PE_DATA_reg[0]_0 [27]),
        .I1(\DOUT_reg[0]_1 [4]),
        .O(\RX_PE_DATA_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[12]_i_1__1 
       (.I0(\RX_PE_DATA_reg[0]_0 [12]),
        .I1(\DOUT_reg[0]_0 [3]),
        .O(\RX_PE_DATA_reg[19]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[12]_i_1__2 
       (.I0(\RX_PE_DATA_reg[0]_0 [28]),
        .I1(\DOUT_reg[0]_1 [3]),
        .O(\RX_PE_DATA_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[13]_i_1__1 
       (.I0(\RX_PE_DATA_reg[0]_0 [13]),
        .I1(\DOUT_reg[0]_0 [2]),
        .O(\RX_PE_DATA_reg[18]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[13]_i_1__2 
       (.I0(\RX_PE_DATA_reg[0]_0 [29]),
        .I1(\DOUT_reg[0]_1 [2]),
        .O(\RX_PE_DATA_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[14]_i_1__1 
       (.I0(\RX_PE_DATA_reg[0]_0 [14]),
        .I1(\DOUT_reg[0]_0 [1]),
        .O(\RX_PE_DATA_reg[17]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[14]_i_1__2 
       (.I0(\RX_PE_DATA_reg[0]_0 [30]),
        .I1(\DOUT_reg[0]_1 [1]),
        .O(\RX_PE_DATA_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[15]_i_1__1 
       (.I0(\RX_PE_DATA_reg[0]_0 [15]),
        .I1(\DOUT_reg[0]_0 [0]),
        .O(\RX_PE_DATA_reg[16]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[15]_i_1__2 
       (.I0(\RX_PE_DATA_reg[0]_0 [31]),
        .I1(\DOUT_reg[0]_1 [0]),
        .O(\RX_PE_DATA_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[1]_i_1__1 
       (.I0(\RX_PE_DATA_reg[0]_0 [1]),
        .I1(\DOUT_reg[0]_0 [10]),
        .O(\RX_PE_DATA_reg[30]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[1]_i_1__2 
       (.I0(\RX_PE_DATA_reg[0]_0 [17]),
        .I1(\DOUT_reg[0]_1 [10]),
        .O(\RX_PE_DATA_reg[14]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[4]_i_1__1 
       (.I0(\RX_PE_DATA_reg[0]_0 [4]),
        .I1(\DOUT_reg[0]_0 [9]),
        .O(\RX_PE_DATA_reg[27]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[4]_i_1__2 
       (.I0(\RX_PE_DATA_reg[0]_0 [20]),
        .I1(\DOUT_reg[0]_1 [9]),
        .O(\RX_PE_DATA_reg[11]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[5]_i_1__1 
       (.I0(\RX_PE_DATA_reg[0]_0 [5]),
        .I1(\DOUT_reg[0]_0 [8]),
        .O(\RX_PE_DATA_reg[26]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[5]_i_1__2 
       (.I0(\RX_PE_DATA_reg[0]_0 [21]),
        .I1(\DOUT_reg[0]_1 [8]),
        .O(\RX_PE_DATA_reg[10]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[8]_i_1__1 
       (.I0(\RX_PE_DATA_reg[0]_0 [8]),
        .I1(\DOUT_reg[0]_0 [7]),
        .O(\RX_PE_DATA_reg[23]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[8]_i_1__2 
       (.I0(\RX_PE_DATA_reg[0]_0 [24]),
        .I1(\DOUT_reg[0]_1 [7]),
        .O(\RX_PE_DATA_reg[7]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[9]_i_1__1 
       (.I0(\RX_PE_DATA_reg[0]_0 [9]),
        .I1(\DOUT_reg[0]_0 [6]),
        .O(\RX_PE_DATA_reg[22]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[9]_i_1__2 
       (.I0(\RX_PE_DATA_reg[0]_0 [25]),
        .I1(\DOUT_reg[0]_1 [6]),
        .O(\RX_PE_DATA_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    GOT_V_i_1
       (.I0(RX_SP_i_2_n_0),
        .I1(GOT_V_i_2_n_0),
        .I2(rx_sp_r[0]),
        .I3(rx_sp_r[1]),
        .I4(rx_v_d_r[3]),
        .I5(rx_v_d_r[2]),
        .O(got_v_c));
  LUT4 #(
    .INIT(16'h7FFF)) 
    GOT_V_i_2
       (.I0(rx_v_d_r[5]),
        .I1(rx_v_d_r[4]),
        .I2(rx_v_d_r[7]),
        .I3(rx_v_d_r[6]),
        .O(GOT_V_i_2_n_0));
  FDRE GOT_V_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(got_v_c),
        .Q(got_v_descram_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    RX_CC_i_1
       (.I0(rx_pe_control_r[2]),
        .I1(rx_pe_control_r[3]),
        .I2(rx_pe_control_r[1]),
        .I3(rx_pe_control_r[0]),
        .I4(RX_CC_i_2_n_0),
        .I5(RX_CC_i_3_n_0),
        .O(RX_CC0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    RX_CC_i_2
       (.I0(rx_cc_r[5]),
        .I1(rx_ecp_d_r[4]),
        .I2(rx_cc_r[7]),
        .I3(rx_ecp_d_r[6]),
        .O(RX_CC_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    RX_CC_i_3
       (.I0(rx_ecp_d_r[0]),
        .I1(rx_cc_r[1]),
        .I2(rx_cc_r[3]),
        .I3(rx_ecp_d_r[2]),
        .O(RX_CC_i_3_n_0));
  FDRE RX_CC_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_CC0),
        .Q(D),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \RX_ECP[0]_i_1 
       (.I0(rx_ecp_d_r[2]),
        .I1(rx_ecp_d_r[3]),
        .I2(rx_pe_control_r[1]),
        .I3(rx_pe_control_r[0]),
        .I4(rx_ecp_d_r[1]),
        .I5(rx_ecp_d_r[0]),
        .O(RX_ECP0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \RX_ECP[1]_i_1 
       (.I0(rx_ecp_d_r[6]),
        .I1(rx_ecp_d_r[7]),
        .I2(rx_pe_control_r[3]),
        .I3(rx_pe_control_r[2]),
        .I4(rx_ecp_d_r[5]),
        .I5(rx_ecp_d_r[4]),
        .O(\RX_ECP[1]_i_1_n_0 ));
  FDRE \RX_ECP_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_ECP0),
        .Q(\RX_ECP_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_ECP_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_ECP[1]_i_1_n_0 ),
        .Q(\RX_ECP_reg[0]_0 [0]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000F888)) 
    RX_NEG_i_1
       (.I0(rx_spa_neg_d_r[1]),
        .I1(rx_spa_neg_d_r[0]),
        .I2(rx_sp_neg_d_r[1]),
        .I3(rx_sp_neg_d_r[0]),
        .I4(rx_pe_control_r[1]),
        .O(RX_NEG0));
  FDRE RX_NEG_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_NEG0),
        .Q(rx_neg_descram_in),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0800)) 
    \RX_PAD[0]_i_1 
       (.I0(rx_pad_d_r[0]),
        .I1(rx_spa_r[3]),
        .I2(rx_pe_control_r[0]),
        .I3(rx_pe_control_r[1]),
        .O(p_3_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \RX_PAD[1]_i_1 
       (.I0(rx_pad_d_r[2]),
        .I1(rx_spa_r[7]),
        .I2(rx_pe_control_r[2]),
        .I3(rx_pe_control_r[3]),
        .O(p_3_out[0]));
  FDRE \RX_PAD_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_out[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \RX_PAD_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_out[0]),
        .Q(Q[0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \RX_PE_DATA_V[0]_i_1 
       (.I0(rx_pe_control_r[0]),
        .O(p_1_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \RX_PE_DATA_V[1]_i_1 
       (.I0(rx_pe_control_r[2]),
        .O(p_1_out[0]));
  FDRE \RX_PE_DATA_V_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_1_out[1]),
        .Q(\RX_PE_DATA_V_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_PE_DATA_V_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_1_out[0]),
        .Q(\RX_PE_DATA_V_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[0]),
        .Q(\RX_PE_DATA_reg[0]_0 [31]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[10]),
        .Q(\RX_PE_DATA_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[11]),
        .Q(\RX_PE_DATA_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[12]),
        .Q(\RX_PE_DATA_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[13]),
        .Q(\RX_PE_DATA_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[14]),
        .Q(\RX_PE_DATA_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[15]),
        .Q(\RX_PE_DATA_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[16]),
        .Q(\RX_PE_DATA_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[17]),
        .Q(\RX_PE_DATA_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[18]),
        .Q(\RX_PE_DATA_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[19]),
        .Q(\RX_PE_DATA_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[1]),
        .Q(\RX_PE_DATA_reg[0]_0 [30]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[20]),
        .Q(\RX_PE_DATA_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[21]),
        .Q(\RX_PE_DATA_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[22]),
        .Q(\RX_PE_DATA_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[23]),
        .Q(\RX_PE_DATA_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[24]),
        .Q(\RX_PE_DATA_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[25]),
        .Q(\RX_PE_DATA_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[26]),
        .Q(\RX_PE_DATA_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[27]),
        .Q(\RX_PE_DATA_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[28]),
        .Q(\RX_PE_DATA_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[29]),
        .Q(\RX_PE_DATA_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[2]),
        .Q(\RX_PE_DATA_reg[0]_0 [29]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[30]),
        .Q(\RX_PE_DATA_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[31]),
        .Q(\RX_PE_DATA_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[3]),
        .Q(\RX_PE_DATA_reg[0]_0 [28]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[4]),
        .Q(\RX_PE_DATA_reg[0]_0 [27]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[5]),
        .Q(\RX_PE_DATA_reg[0]_0 [26]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[6]),
        .Q(\RX_PE_DATA_reg[0]_0 [25]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[7]),
        .Q(\RX_PE_DATA_reg[0]_0 [24]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[8]),
        .Q(\RX_PE_DATA_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \RX_PE_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[9]),
        .Q(\RX_PE_DATA_reg[0]_0 [22]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \RX_SCP[0]_i_1 
       (.I0(rx_ecp_d_r[2]),
        .I1(rx_scp_d_r[3]),
        .I2(rx_pe_control_r[1]),
        .I3(rx_pe_control_r[0]),
        .I4(rx_sp_r[1]),
        .I5(rx_scp_d_r[0]),
        .O(RX_SCP0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \RX_SCP[1]_i_1 
       (.I0(rx_ecp_d_r[6]),
        .I1(rx_scp_d_r[7]),
        .I2(rx_pe_control_r[3]),
        .I3(rx_pe_control_r[2]),
        .I4(rx_spa_r[5]),
        .I5(rx_scp_d_r[4]),
        .O(\RX_SCP[1]_i_1_n_0 ));
  FDRE \RX_SCP_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_SCP0),
        .Q(\RX_SCP_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_SCP_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_SCP[1]_i_1_n_0 ),
        .Q(\RX_SCP_reg[0]_0 [0]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    RX_SPA_i_1
       (.I0(RX_SP_i_2_n_0),
        .I1(RX_SPA_i_2_n_0),
        .I2(rx_sp_r[0]),
        .I3(rx_sp_r[1]),
        .I4(rx_spa_r[3]),
        .I5(rx_spa_r[2]),
        .O(RX_SPA0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    RX_SPA_i_2
       (.I0(rx_spa_r[5]),
        .I1(rx_spa_r[4]),
        .I2(rx_spa_r[7]),
        .I3(rx_spa_r[6]),
        .O(RX_SPA_i_2_n_0));
  FDRE RX_SPA_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_SPA0),
        .Q(rx_spa_descram_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    RX_SP_i_1
       (.I0(RX_SP_i_2_n_0),
        .I1(RX_SP_i_3_n_0),
        .I2(rx_sp_r[0]),
        .I3(rx_sp_r[1]),
        .I4(rx_sp_r[3]),
        .I5(rx_sp_r[2]),
        .O(RX_SP0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    RX_SP_i_2
       (.I0(rx_pe_control_r[3]),
        .I1(rx_pe_control_r[1]),
        .I2(rx_pe_control_r[0]),
        .I3(rx_pe_control_r[2]),
        .O(RX_SP_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    RX_SP_i_3
       (.I0(rx_sp_r[5]),
        .I1(rx_sp_r[4]),
        .I2(rx_sp_r[7]),
        .I3(rx_sp_r[6]),
        .O(RX_SP_i_3_n_0));
  FDRE RX_SP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_SP0),
        .Q(rx_sp_descram_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \bypass_r[0]_i_1 
       (.I0(Q[1]),
        .I1(\RX_PE_DATA_V_reg[0]_0 [1]),
        .I2(got_v_descram_in),
        .I3(\DOUT_reg[0] ),
        .I4(reset_lanes_i),
        .O(\RX_PAD_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \bypass_r[1]_i_1 
       (.I0(Q[0]),
        .I1(\RX_PE_DATA_V_reg[0]_0 [0]),
        .I2(got_v_descram_in),
        .I3(\DOUT_reg[0] ),
        .I4(reset_lanes_i),
        .O(\RX_PAD_reg[0]_0 [0]));
  LUT3 #(
    .INIT(8'hA8)) 
    first_v_received_r_i_1
       (.I0(lane_up),
        .I1(first_v_received_r),
        .I2(got_v_c),
        .O(first_v_received_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    first_v_received_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(first_v_received_r_i_1_n_0),
        .Q(first_v_received_r),
        .R(1'b0));
  FDRE \left_align_select_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\left_align_select_r_reg[0]_1 ),
        .Q(\left_align_select_r_reg[0]_0 ),
        .R(1'b0));
  FDRE \left_align_select_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\left_align_select_r_reg[1]_1 ),
        .Q(\left_align_select_r_reg[1]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \lfsr[15]_i_1 
       (.I0(reset_lanes_i),
        .I1(\DOUT_reg[0] ),
        .I2(got_v_descram_in),
        .I3(\RX_PE_DATA_V_reg[0]_0 [0]),
        .I4(Q[0]),
        .O(reset_lanes_flop_i));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \lfsr[15]_i_2 
       (.I0(reset_lanes_i),
        .I1(\DOUT_reg[0] ),
        .I2(got_v_descram_in),
        .I3(\RX_PE_DATA_V_reg[0]_0 [1]),
        .I4(Q[1]),
        .O(reset_lanes_flop_i_0));
  FDRE \previous_cycle_control_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXCHARISK[3]),
        .Q(previous_cycle_control_r[0]),
        .R(1'b0));
  FDRE \previous_cycle_control_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXCHARISK[2]),
        .Q(previous_cycle_control_r[1]),
        .R(1'b0));
  FDRE \previous_cycle_control_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXCHARISK[1]),
        .Q(previous_cycle_control_r[2]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[24]),
        .Q(\previous_cycle_data_r_reg[5]_0 [0]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[18]),
        .Q(p_2_in[2]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[19]),
        .Q(p_2_in[3]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[20]),
        .Q(p_2_in[4]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[21]),
        .Q(p_2_in[5]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[22]),
        .Q(p_2_in[6]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[23]),
        .Q(p_2_in[7]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[8]),
        .Q(\previous_cycle_data_r_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[9]),
        .Q(\previous_cycle_data_r_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[10]),
        .Q(\previous_cycle_data_r_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[11]),
        .Q(\previous_cycle_data_r_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[25]),
        .Q(\previous_cycle_data_r_reg[5]_0 [1]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[12]),
        .Q(\previous_cycle_data_r_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[13]),
        .Q(\previous_cycle_data_r_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[14]),
        .Q(\previous_cycle_data_r_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[15]),
        .Q(\previous_cycle_data_r_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[26]),
        .Q(\previous_cycle_data_r_reg[5]_0 [2]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[27]),
        .Q(\previous_cycle_data_r_reg[5]_0 [3]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[28]),
        .Q(\previous_cycle_data_r_reg[5]_0 [4]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[29]),
        .Q(\previous_cycle_data_r_reg[5]_0 [5]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[30]),
        .Q(\previous_cycle_data_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[31]),
        .Q(\previous_cycle_data_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[16]),
        .Q(p_2_in[0]),
        .R(1'b0));
  FDRE \previous_cycle_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[17]),
        .Q(p_2_in[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    rx_cc_r0
       (.I0(\word_aligned_data_r_reg_n_0_[28] ),
        .I1(\word_aligned_data_r_reg_n_0_[29] ),
        .I2(\word_aligned_data_r_reg_n_0_[30] ),
        .I3(\word_aligned_data_r_reg_n_0_[31] ),
        .O(rx_cc_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_cc_r0_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[20] ),
        .I1(\word_aligned_data_r_reg_n_0_[21] ),
        .I2(\word_aligned_data_r_reg_n_0_[22] ),
        .I3(\word_aligned_data_r_reg_n_0_[23] ),
        .O(\rx_cc_r0_inferred__0/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_cc_r0_inferred__1/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[12] ),
        .I1(\word_aligned_data_r_reg_n_0_[13] ),
        .I2(\word_aligned_data_r_reg_n_0_[14] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(\rx_cc_r0_inferred__1/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_cc_r0_inferred__2/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[4] ),
        .I1(\word_aligned_data_r_reg_n_0_[5] ),
        .I2(\word_aligned_data_r_reg_n_0_[6] ),
        .I3(\word_aligned_data_r_reg_n_0_[7] ),
        .O(rx_cc_r0__0));
  FDRE \rx_cc_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_r0__0),
        .Q(rx_cc_r[1]),
        .R(1'b0));
  FDRE \rx_cc_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_cc_r0_inferred__1/i__n_0 ),
        .Q(rx_cc_r[3]),
        .R(1'b0));
  FDRE \rx_cc_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_cc_r0_inferred__0/i__n_0 ),
        .Q(rx_cc_r[5]),
        .R(1'b0));
  FDRE \rx_cc_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_r0_n_0),
        .Q(rx_cc_r[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    rx_ecp_d_r0
       (.I0(\word_aligned_data_r_reg_n_0_[31] ),
        .I1(\word_aligned_data_r_reg_n_0_[29] ),
        .I2(\word_aligned_data_r_reg_n_0_[28] ),
        .I3(\word_aligned_data_r_reg_n_0_[30] ),
        .O(rx_ecp_d_r0_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_ecp_d_r0_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[22] ),
        .I1(\word_aligned_data_r_reg_n_0_[21] ),
        .I2(\word_aligned_data_r_reg_n_0_[20] ),
        .I3(\word_aligned_data_r_reg_n_0_[23] ),
        .O(\rx_ecp_d_r0_inferred__0/i__n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \rx_ecp_d_r0_inferred__1/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[18] ),
        .I1(\word_aligned_data_r_reg_n_0_[19] ),
        .I2(\word_aligned_data_r_reg_n_0_[17] ),
        .I3(\word_aligned_data_r_reg_n_0_[16] ),
        .O(\rx_ecp_d_r0_inferred__1/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_ecp_d_r0_inferred__2/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[15] ),
        .I1(\word_aligned_data_r_reg_n_0_[13] ),
        .I2(\word_aligned_data_r_reg_n_0_[12] ),
        .I3(\word_aligned_data_r_reg_n_0_[14] ),
        .O(\rx_ecp_d_r0_inferred__2/i__n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_ecp_d_r0_inferred__3/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[6] ),
        .I1(\word_aligned_data_r_reg_n_0_[5] ),
        .I2(\word_aligned_data_r_reg_n_0_[4] ),
        .I3(\word_aligned_data_r_reg_n_0_[7] ),
        .O(\rx_ecp_d_r0_inferred__3/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \rx_ecp_d_r0_inferred__4/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[2] ),
        .I1(\word_aligned_data_r_reg_n_0_[3] ),
        .I2(\word_aligned_data_r_reg_n_0_[1] ),
        .I3(\word_aligned_data_r_reg_n_0_[0] ),
        .O(rx_ecp_d_r0__0));
  FDRE \rx_ecp_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_ecp_d_r0__0),
        .Q(rx_ecp_d_r[0]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_ecp_d_r0_inferred__3/i__n_0 ),
        .Q(rx_ecp_d_r[1]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_scp_d_r0_inferred__5/i__n_0 ),
        .Q(rx_ecp_d_r[2]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_ecp_d_r0_inferred__2/i__n_0 ),
        .Q(rx_ecp_d_r[3]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_ecp_d_r0_inferred__1/i__n_0 ),
        .Q(rx_ecp_d_r[4]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_ecp_d_r0_inferred__0/i__n_0 ),
        .Q(rx_ecp_d_r[5]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_scp_d_r0_inferred__1/i__n_0 ),
        .Q(rx_ecp_d_r[6]),
        .R(1'b0));
  FDRE \rx_ecp_d_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_ecp_d_r0_n_0),
        .Q(rx_ecp_d_r[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    rx_pad_d_r0
       (.I0(\word_aligned_data_r_reg_n_0_[30] ),
        .I1(\word_aligned_data_r_reg_n_0_[31] ),
        .I2(\word_aligned_data_r_reg_n_0_[29] ),
        .I3(\word_aligned_data_r_reg_n_0_[28] ),
        .O(rx_pad_d_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_pad_d_r0_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[25] ),
        .I1(\word_aligned_data_r_reg_n_0_[26] ),
        .I2(\word_aligned_data_r_reg_n_0_[24] ),
        .I3(\word_aligned_data_r_reg_n_0_[27] ),
        .O(\rx_pad_d_r0_inferred__0/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_pad_d_r0_inferred__1/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[14] ),
        .I1(\word_aligned_data_r_reg_n_0_[15] ),
        .I2(\word_aligned_data_r_reg_n_0_[13] ),
        .I3(\word_aligned_data_r_reg_n_0_[12] ),
        .O(\rx_pad_d_r0_inferred__1/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_pad_d_r0_inferred__2/i_ 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .O(rx_pad_d_r0__0));
  FDRE \rx_pad_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pad_d_r0__0),
        .Q(rx_pad_d_r[0]),
        .R(1'b0));
  FDRE \rx_pad_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_pad_d_r0_inferred__0/i__n_0 ),
        .Q(rx_pad_d_r[2]),
        .R(1'b0));
  FDRE \rx_pe_control_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[0]),
        .Q(rx_pe_control_r[0]),
        .R(1'b0));
  FDRE \rx_pe_control_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[1]),
        .Q(rx_pe_control_r[1]),
        .R(1'b0));
  FDRE \rx_pe_control_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[2]),
        .Q(rx_pe_control_r[2]),
        .R(1'b0));
  FDRE \rx_pe_control_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[3]),
        .Q(rx_pe_control_r[3]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[0] ),
        .Q(rx_pe_data_r[0]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(rx_pe_data_r[10]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(rx_pe_data_r[11]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[12] ),
        .Q(rx_pe_data_r[12]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[13] ),
        .Q(rx_pe_data_r[13]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[14] ),
        .Q(rx_pe_data_r[14]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[15] ),
        .Q(rx_pe_data_r[15]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[16] ),
        .Q(rx_pe_data_r[16]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[17] ),
        .Q(rx_pe_data_r[17]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[18] ),
        .Q(rx_pe_data_r[18]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[19] ),
        .Q(rx_pe_data_r[19]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[1] ),
        .Q(rx_pe_data_r[1]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[20] ),
        .Q(rx_pe_data_r[20]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[21] ),
        .Q(rx_pe_data_r[21]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[22] ),
        .Q(rx_pe_data_r[22]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[23] ),
        .Q(rx_pe_data_r[23]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[24] ),
        .Q(rx_pe_data_r[24]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[25] ),
        .Q(rx_pe_data_r[25]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[26] ),
        .Q(rx_pe_data_r[26]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[27] ),
        .Q(rx_pe_data_r[27]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[28] ),
        .Q(rx_pe_data_r[28]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[29] ),
        .Q(rx_pe_data_r[29]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[2] ),
        .Q(rx_pe_data_r[2]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[30] ),
        .Q(rx_pe_data_r[30]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[31] ),
        .Q(rx_pe_data_r[31]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[3] ),
        .Q(rx_pe_data_r[3]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[4] ),
        .Q(rx_pe_data_r[4]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[5] ),
        .Q(rx_pe_data_r[5]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[6] ),
        .Q(rx_pe_data_r[6]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg_n_0_[7] ),
        .Q(rx_pe_data_r[7]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(rx_pe_data_r[8]),
        .R(1'b0));
  FDRE \rx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(rx_pe_data_r[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    rx_scp_d_r0
       (.I0(\word_aligned_data_r_reg_n_0_[6] ),
        .I1(\word_aligned_data_r_reg_n_0_[7] ),
        .I2(\word_aligned_data_r_reg_n_0_[5] ),
        .I3(\word_aligned_data_r_reg_n_0_[4] ),
        .O(rx_scp_d_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_scp_d_r0_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[29] ),
        .I1(\word_aligned_data_r_reg_n_0_[28] ),
        .I2(\word_aligned_data_r_reg_n_0_[30] ),
        .I3(\word_aligned_data_r_reg_n_0_[31] ),
        .O(\rx_scp_d_r0_inferred__0/i__n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \rx_scp_d_r0_inferred__1/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[26] ),
        .I1(\word_aligned_data_r_reg_n_0_[27] ),
        .I2(\word_aligned_data_r_reg_n_0_[25] ),
        .I3(\word_aligned_data_r_reg_n_0_[24] ),
        .O(\rx_scp_d_r0_inferred__1/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_scp_d_r0_inferred__2/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[22] ),
        .I1(\word_aligned_data_r_reg_n_0_[23] ),
        .I2(\word_aligned_data_r_reg_n_0_[21] ),
        .I3(\word_aligned_data_r_reg_n_0_[20] ),
        .O(\rx_scp_d_r0_inferred__2/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_scp_d_r0_inferred__3/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[16] ),
        .I1(\word_aligned_data_r_reg_n_0_[18] ),
        .I2(\word_aligned_data_r_reg_n_0_[17] ),
        .I3(\word_aligned_data_r_reg_n_0_[19] ),
        .O(\rx_scp_d_r0_inferred__3/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_scp_d_r0_inferred__4/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[13] ),
        .I1(\word_aligned_data_r_reg_n_0_[12] ),
        .I2(\word_aligned_data_r_reg_n_0_[14] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(\rx_scp_d_r0_inferred__4/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \rx_scp_d_r0_inferred__5/i_ 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .O(\rx_scp_d_r0_inferred__5/i__n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_scp_d_r0_inferred__6/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[0] ),
        .I1(\word_aligned_data_r_reg_n_0_[2] ),
        .I2(\word_aligned_data_r_reg_n_0_[1] ),
        .I3(\word_aligned_data_r_reg_n_0_[3] ),
        .O(rx_scp_d_r0__0));
  FDRE \rx_scp_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_scp_d_r0__0),
        .Q(rx_scp_d_r[0]),
        .R(1'b0));
  FDRE \rx_scp_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_scp_d_r0_inferred__4/i__n_0 ),
        .Q(rx_scp_d_r[3]),
        .R(1'b0));
  FDRE \rx_scp_d_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_scp_d_r0_inferred__3/i__n_0 ),
        .Q(rx_scp_d_r[4]),
        .R(1'b0));
  FDRE \rx_scp_d_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_scp_d_r0_inferred__0/i__n_0 ),
        .Q(rx_scp_d_r[7]),
        .R(1'b0));
  FDRE \rx_sp_neg_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_sp_r114_in),
        .Q(rx_sp_neg_d_r[0]),
        .R(1'b0));
  FDRE \rx_sp_neg_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_sp_r111_in),
        .Q(rx_sp_neg_d_r[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    rx_sp_r0
       (.I0(\word_aligned_data_r_reg_n_0_[1] ),
        .I1(\word_aligned_data_r_reg_n_0_[0] ),
        .I2(\word_aligned_data_r_reg_n_0_[2] ),
        .I3(\word_aligned_data_r_reg_n_0_[3] ),
        .O(rx_sp_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    rx_sp_r1
       (.I0(\word_aligned_data_r_reg_n_0_[12] ),
        .I1(\word_aligned_data_r_reg_n_0_[14] ),
        .I2(\word_aligned_data_r_reg_n_0_[13] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(rx_sp_r111_in));
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_sp_r1_inferred__0/i_ 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(rx_sp_r114_in));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h0180)) 
    \rx_sp_r[2]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .O(p_8_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h1008)) 
    \rx_sp_r[3]_i_1 
       (.I0(\word_aligned_data_r_reg_n_0_[15] ),
        .I1(\word_aligned_data_r_reg_n_0_[13] ),
        .I2(\word_aligned_data_r_reg_n_0_[14] ),
        .I3(\word_aligned_data_r_reg_n_0_[12] ),
        .O(p_8_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h0810)) 
    \rx_sp_r[4]_i_1 
       (.I0(\word_aligned_data_r_reg_n_0_[18] ),
        .I1(\word_aligned_data_r_reg_n_0_[19] ),
        .I2(\word_aligned_data_r_reg_n_0_[17] ),
        .I3(\word_aligned_data_r_reg_n_0_[16] ),
        .O(p_8_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h1008)) 
    \rx_sp_r[5]_i_1 
       (.I0(\word_aligned_data_r_reg_n_0_[21] ),
        .I1(\word_aligned_data_r_reg_n_0_[23] ),
        .I2(\word_aligned_data_r_reg_n_0_[22] ),
        .I3(\word_aligned_data_r_reg_n_0_[20] ),
        .O(p_8_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0810)) 
    \rx_sp_r[6]_i_1 
       (.I0(\word_aligned_data_r_reg_n_0_[26] ),
        .I1(\word_aligned_data_r_reg_n_0_[27] ),
        .I2(\word_aligned_data_r_reg_n_0_[25] ),
        .I3(\word_aligned_data_r_reg_n_0_[24] ),
        .O(p_8_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h1008)) 
    \rx_sp_r[7]_i_1 
       (.I0(\word_aligned_data_r_reg_n_0_[29] ),
        .I1(\word_aligned_data_r_reg_n_0_[31] ),
        .I2(\word_aligned_data_r_reg_n_0_[30] ),
        .I3(\word_aligned_data_r_reg_n_0_[28] ),
        .O(p_8_out[0]));
  FDRE \rx_sp_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_sp_r0_n_0),
        .Q(rx_sp_r[0]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_scp_d_r0_n_0),
        .Q(rx_sp_r[1]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[5]),
        .Q(rx_sp_r[2]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[4]),
        .Q(rx_sp_r[3]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[3]),
        .Q(rx_sp_r[4]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[2]),
        .Q(rx_sp_r[5]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[1]),
        .Q(rx_sp_r[6]),
        .R(1'b0));
  FDRE \rx_sp_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[0]),
        .Q(rx_sp_r[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    rx_spa_neg_d_r0
       (.I0(\word_aligned_data_r_reg_n_0_[13] ),
        .I1(\word_aligned_data_r_reg_n_0_[12] ),
        .I2(\word_aligned_data_r_reg_n_0_[14] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(rx_spa_neg_d_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_spa_neg_d_r0_inferred__0/i_ 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .O(rx_spa_neg_d_r0__0));
  FDRE \rx_spa_neg_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_spa_neg_d_r0__0),
        .Q(rx_spa_neg_d_r[0]),
        .R(1'b0));
  FDRE \rx_spa_neg_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_spa_neg_d_r0_n_0),
        .Q(rx_spa_neg_d_r[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    rx_spa_r0
       (.I0(\word_aligned_data_r_reg_n_0_[25] ),
        .I1(\word_aligned_data_r_reg_n_0_[24] ),
        .I2(\word_aligned_data_r_reg_n_0_[26] ),
        .I3(\word_aligned_data_r_reg_n_0_[27] ),
        .O(rx_spa_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \rx_spa_r0_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[17] ),
        .I1(\word_aligned_data_r_reg_n_0_[16] ),
        .I2(\word_aligned_data_r_reg_n_0_[18] ),
        .I3(\word_aligned_data_r_reg_n_0_[19] ),
        .O(\rx_spa_r0_inferred__0/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \rx_spa_r0_inferred__1/i_ 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(rx_spa_r0__0));
  FDRE \rx_spa_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_spa_r0__0),
        .Q(rx_spa_r[2]),
        .R(1'b0));
  FDRE \rx_spa_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_pad_d_r0_inferred__1/i__n_0 ),
        .Q(rx_spa_r[3]),
        .R(1'b0));
  FDRE \rx_spa_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_spa_r0_inferred__0/i__n_0 ),
        .Q(rx_spa_r[4]),
        .R(1'b0));
  FDRE \rx_spa_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_scp_d_r0_inferred__2/i__n_0 ),
        .Q(rx_spa_r[5]),
        .R(1'b0));
  FDRE \rx_spa_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_spa_r0_n_0),
        .Q(rx_spa_r[6]),
        .R(1'b0));
  FDRE \rx_spa_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pad_d_r0_n_0),
        .Q(rx_spa_r[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    rx_v_d_r0
       (.I0(\word_aligned_data_r_reg_n_0_[29] ),
        .I1(\word_aligned_data_r_reg_n_0_[30] ),
        .I2(\word_aligned_data_r_reg_n_0_[28] ),
        .I3(\word_aligned_data_r_reg_n_0_[31] ),
        .O(rx_v_d_r0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_v_d_r0_inferred__0/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[27] ),
        .I1(\word_aligned_data_r_reg_n_0_[25] ),
        .I2(\word_aligned_data_r_reg_n_0_[24] ),
        .I3(\word_aligned_data_r_reg_n_0_[26] ),
        .O(\rx_v_d_r0_inferred__0/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \rx_v_d_r0_inferred__1/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[21] ),
        .I1(\word_aligned_data_r_reg_n_0_[22] ),
        .I2(\word_aligned_data_r_reg_n_0_[20] ),
        .I3(\word_aligned_data_r_reg_n_0_[23] ),
        .O(\rx_v_d_r0_inferred__1/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_v_d_r0_inferred__2/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[19] ),
        .I1(\word_aligned_data_r_reg_n_0_[17] ),
        .I2(\word_aligned_data_r_reg_n_0_[16] ),
        .I3(\word_aligned_data_r_reg_n_0_[18] ),
        .O(\rx_v_d_r0_inferred__2/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \rx_v_d_r0_inferred__3/i_ 
       (.I0(\word_aligned_data_r_reg_n_0_[13] ),
        .I1(\word_aligned_data_r_reg_n_0_[14] ),
        .I2(\word_aligned_data_r_reg_n_0_[12] ),
        .I3(\word_aligned_data_r_reg_n_0_[15] ),
        .O(\rx_v_d_r0_inferred__3/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \rx_v_d_r0_inferred__4/i_ 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .O(rx_v_d_r0__0));
  FDRE \rx_v_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_v_d_r0__0),
        .Q(rx_v_d_r[2]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_v_d_r0_inferred__3/i__n_0 ),
        .Q(rx_v_d_r[3]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_v_d_r0_inferred__2/i__n_0 ),
        .Q(rx_v_d_r[4]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_v_d_r0_inferred__1/i__n_0 ),
        .Q(rx_v_d_r[5]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\rx_v_d_r0_inferred__0/i__n_0 ),
        .Q(rx_v_d_r[6]),
        .R(1'b0));
  FDRE \rx_v_d_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_v_d_r0_n_0),
        .Q(rx_v_d_r[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_control_bits_r[0]_i_1 
       (.I0(RXCHARISK[0]),
        .I1(previous_cycle_control_r[2]),
        .I2(previous_cycle_control_r[0]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(previous_cycle_control_r[1]),
        .O(\word_aligned_control_bits_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_control_bits_r[1]_i_1 
       (.I0(RXCHARISK[1]),
        .I1(previous_cycle_control_r[1]),
        .I2(previous_cycle_control_r[0]),
        .I3(\left_align_select_r_reg[0]_0 ),
        .I4(\left_align_select_r_reg[1]_0 ),
        .I5(RXCHARISK[0]),
        .O(\word_aligned_control_bits_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \word_aligned_control_bits_r[2]_i_1 
       (.I0(previous_cycle_control_r[0]),
        .I1(RXCHARISK[0]),
        .I2(RXCHARISK[2]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(RXCHARISK[1]),
        .O(\word_aligned_control_bits_r[2]_i_1_n_0 ));
  FDRE \word_aligned_control_bits_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_control_bits_r[0]_i_1_n_0 ),
        .Q(word_aligned_control_bits_r[0]),
        .R(1'b0));
  FDRE \word_aligned_control_bits_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_control_bits_r[1]_i_1_n_0 ),
        .Q(word_aligned_control_bits_r[1]),
        .R(1'b0));
  FDRE \word_aligned_control_bits_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_control_bits_r[2]_i_1_n_0 ),
        .Q(word_aligned_control_bits_r[2]),
        .R(1'b0));
  FDRE \word_aligned_control_bits_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_control_bits_r_reg[3]_0 ),
        .Q(word_aligned_control_bits_r[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[0]_i_1 
       (.I0(RXDATA[7]),
        .I1(\previous_cycle_data_r_reg_n_0_[23] ),
        .I2(\previous_cycle_data_r_reg_n_0_[7] ),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(p_2_in[7]),
        .O(\word_aligned_data_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[10]_i_1 
       (.I0(RXDATA[13]),
        .I1(p_2_in[5]),
        .I2(\previous_cycle_data_r_reg[5]_0 [5]),
        .I3(\left_align_select_r_reg[0]_0 ),
        .I4(\left_align_select_r_reg[1]_0 ),
        .I5(RXDATA[5]),
        .O(\word_aligned_data_r[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[11]_i_1 
       (.I0(RXDATA[12]),
        .I1(p_2_in[4]),
        .I2(RXDATA[4]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(\previous_cycle_data_r_reg[5]_0 [4]),
        .O(\word_aligned_data_r[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[12]_i_1 
       (.I0(RXDATA[11]),
        .I1(p_2_in[3]),
        .I2(RXDATA[3]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(\previous_cycle_data_r_reg[5]_0 [3]),
        .O(\word_aligned_data_r[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[13]_i_1 
       (.I0(RXDATA[10]),
        .I1(p_2_in[2]),
        .I2(RXDATA[2]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(\previous_cycle_data_r_reg[5]_0 [2]),
        .O(\word_aligned_data_r[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[14]_i_1 
       (.I0(RXDATA[9]),
        .I1(p_2_in[1]),
        .I2(\previous_cycle_data_r_reg[5]_0 [1]),
        .I3(\left_align_select_r_reg[0]_0 ),
        .I4(\left_align_select_r_reg[1]_0 ),
        .I5(RXDATA[1]),
        .O(\word_aligned_data_r[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[15]_i_1 
       (.I0(RXDATA[8]),
        .I1(p_2_in[0]),
        .I2(RXDATA[0]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(\previous_cycle_data_r_reg[5]_0 [0]),
        .O(\word_aligned_data_r[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \word_aligned_data_r[16]_i_1 
       (.I0(\previous_cycle_data_r_reg_n_0_[7] ),
        .I1(RXDATA[7]),
        .I2(RXDATA[23]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(RXDATA[15]),
        .O(\word_aligned_data_r[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \word_aligned_data_r[17]_i_1 
       (.I0(\previous_cycle_data_r_reg_n_0_[6] ),
        .I1(RXDATA[6]),
        .I2(RXDATA[22]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(RXDATA[14]),
        .O(\word_aligned_data_r[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[1]_i_1 
       (.I0(RXDATA[6]),
        .I1(\previous_cycle_data_r_reg_n_0_[22] ),
        .I2(p_2_in[6]),
        .I3(\left_align_select_r_reg[0]_0 ),
        .I4(\left_align_select_r_reg[1]_0 ),
        .I5(\previous_cycle_data_r_reg_n_0_[6] ),
        .O(\word_aligned_data_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \word_aligned_data_r[2]_i_1 
       (.I0(\previous_cycle_data_r_reg_n_0_[21] ),
        .I1(p_2_in[5]),
        .I2(RXDATA[5]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(\previous_cycle_data_r_reg[5]_0 [5]),
        .O(\word_aligned_data_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[3]_i_1 
       (.I0(RXDATA[4]),
        .I1(\previous_cycle_data_r_reg_n_0_[20] ),
        .I2(\previous_cycle_data_r_reg[5]_0 [4]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(p_2_in[4]),
        .O(\word_aligned_data_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[4]_i_1 
       (.I0(RXDATA[3]),
        .I1(\previous_cycle_data_r_reg_n_0_[19] ),
        .I2(\previous_cycle_data_r_reg[5]_0 [3]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(p_2_in[3]),
        .O(\word_aligned_data_r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[5]_i_1 
       (.I0(RXDATA[2]),
        .I1(\previous_cycle_data_r_reg_n_0_[18] ),
        .I2(p_2_in[2]),
        .I3(\left_align_select_r_reg[0]_0 ),
        .I4(\left_align_select_r_reg[1]_0 ),
        .I5(\previous_cycle_data_r_reg[5]_0 [2]),
        .O(\word_aligned_data_r[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[6]_i_1 
       (.I0(RXDATA[1]),
        .I1(\previous_cycle_data_r_reg_n_0_[17] ),
        .I2(\previous_cycle_data_r_reg[5]_0 [1]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(p_2_in[1]),
        .O(\word_aligned_data_r[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[7]_i_1 
       (.I0(RXDATA[0]),
        .I1(\previous_cycle_data_r_reg_n_0_[16] ),
        .I2(\previous_cycle_data_r_reg[5]_0 [0]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(p_2_in[0]),
        .O(\word_aligned_data_r[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \word_aligned_data_r[8]_i_1 
       (.I0(p_2_in[7]),
        .I1(RXDATA[7]),
        .I2(RXDATA[15]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(\previous_cycle_data_r_reg_n_0_[7] ),
        .O(\word_aligned_data_r[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \word_aligned_data_r[9]_i_1 
       (.I0(p_2_in[6]),
        .I1(\previous_cycle_data_r_reg_n_0_[6] ),
        .I2(RXDATA[14]),
        .I3(\left_align_select_r_reg[1]_0 ),
        .I4(\left_align_select_r_reg[0]_0 ),
        .I5(RXDATA[6]),
        .O(\word_aligned_data_r[9]_i_1_n_0 ));
  FDRE \word_aligned_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[0]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[10]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[11]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[12]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[13]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[14]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[15]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[16]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[17]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[18]_0 [5]),
        .Q(\word_aligned_data_r_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[18]_0 [4]),
        .Q(\word_aligned_data_r_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[1]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[18]_0 [3]),
        .Q(\word_aligned_data_r_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[18]_0 [2]),
        .Q(\word_aligned_data_r_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[18]_0 [1]),
        .Q(\word_aligned_data_r_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[18]_0 [0]),
        .Q(\word_aligned_data_r_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [7]),
        .Q(\word_aligned_data_r_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [6]),
        .Q(\word_aligned_data_r_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [5]),
        .Q(\word_aligned_data_r_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [4]),
        .Q(\word_aligned_data_r_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [3]),
        .Q(\word_aligned_data_r_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [2]),
        .Q(\word_aligned_data_r_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[2]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [1]),
        .Q(\word_aligned_data_r_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r_reg[24]_0 [0]),
        .Q(\word_aligned_data_r_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[3]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[4]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[5]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[6]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[7]_i_1_n_0 ),
        .Q(\word_aligned_data_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[8]_i_1_n_0 ),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \word_aligned_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\word_aligned_data_r[9]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_SYM_GEN_4BYTE" *) 
module aurora_8b10b_0_aurora_8b10b_0_SYM_GEN_4BYTE
   (gen_spa_r,
    gen_cc_r,
    \TX_CHAR_IS_K_reg[3]_0 ,
    \TX_CHAR_IS_K_reg[3]_1 ,
    reset_lanes_flop_i,
    reset_lanes_flop_i_0,
    \TX_DATA_reg[15]_0 ,
    D,
    \TX_DATA_reg[14]_0 ,
    \TX_DATA_reg[13]_0 ,
    \TX_DATA_reg[12]_0 ,
    \TX_DATA_reg[11]_0 ,
    \TX_DATA_reg[10]_0 ,
    \TX_DATA_reg[9]_0 ,
    \TX_DATA_reg[8]_0 ,
    \TX_DATA_reg[5]_0 ,
    \TX_DATA_reg[4]_0 ,
    \TX_DATA_reg[1]_0 ,
    \TX_DATA_reg[0]_0 ,
    \TX_DATA_reg[31]_0 ,
    \TX_DATA_reg[30]_0 ,
    \TX_DATA_reg[29]_0 ,
    \TX_DATA_reg[28]_0 ,
    \TX_DATA_reg[27]_0 ,
    \TX_DATA_reg[26]_0 ,
    \TX_DATA_reg[25]_0 ,
    \TX_DATA_reg[24]_0 ,
    \TX_DATA_reg[21]_0 ,
    \TX_DATA_reg[20]_0 ,
    \TX_DATA_reg[17]_0 ,
    \TX_DATA_reg[16]_0 ,
    gen_spa_i,
    user_clk,
    gen_cc_i,
    gen_v_r2,
    \DOUT_reg[0] ,
    reset_lanes_i,
    Q,
    \DOUT_reg[0]_0 ,
    GEN_SP,
    \tx_pe_data_v_r_reg[0]_0 ,
    GEN_ECP,
    GEN_SCP,
    \gen_pad_r_reg[0]_0 ,
    \gen_v_r_reg[1]_0 ,
    \gen_r_r_reg[0]_0 ,
    \gen_k_r_reg[0]_0 ,
    \tx_pe_data_r_reg[0]_0 ,
    GEN_A);
  output gen_spa_r;
  output gen_cc_r;
  output [1:0]\TX_CHAR_IS_K_reg[3]_0 ;
  output [3:0]\TX_CHAR_IS_K_reg[3]_1 ;
  output reset_lanes_flop_i;
  output reset_lanes_flop_i_0;
  output \TX_DATA_reg[15]_0 ;
  output [31:0]D;
  output \TX_DATA_reg[14]_0 ;
  output \TX_DATA_reg[13]_0 ;
  output \TX_DATA_reg[12]_0 ;
  output \TX_DATA_reg[11]_0 ;
  output \TX_DATA_reg[10]_0 ;
  output \TX_DATA_reg[9]_0 ;
  output \TX_DATA_reg[8]_0 ;
  output \TX_DATA_reg[5]_0 ;
  output \TX_DATA_reg[4]_0 ;
  output \TX_DATA_reg[1]_0 ;
  output \TX_DATA_reg[0]_0 ;
  output \TX_DATA_reg[31]_0 ;
  output \TX_DATA_reg[30]_0 ;
  output \TX_DATA_reg[29]_0 ;
  output \TX_DATA_reg[28]_0 ;
  output \TX_DATA_reg[27]_0 ;
  output \TX_DATA_reg[26]_0 ;
  output \TX_DATA_reg[25]_0 ;
  output \TX_DATA_reg[24]_0 ;
  output \TX_DATA_reg[21]_0 ;
  output \TX_DATA_reg[20]_0 ;
  output \TX_DATA_reg[17]_0 ;
  output \TX_DATA_reg[16]_0 ;
  input gen_spa_i;
  input user_clk;
  input gen_cc_i;
  input gen_v_r2;
  input \DOUT_reg[0] ;
  input reset_lanes_i;
  input [11:0]Q;
  input [11:0]\DOUT_reg[0]_0 ;
  input GEN_SP;
  input [1:0]\tx_pe_data_v_r_reg[0]_0 ;
  input [0:0]GEN_ECP;
  input [0:0]GEN_SCP;
  input [1:0]\gen_pad_r_reg[0]_0 ;
  input [2:0]\gen_v_r_reg[1]_0 ;
  input [3:0]\gen_r_r_reg[0]_0 ;
  input [3:0]\gen_k_r_reg[0]_0 ;
  input [31:0]\tx_pe_data_r_reg[0]_0 ;
  input GEN_A;

  wire [31:0]D;
  wire \DOUT_reg[0] ;
  wire [11:0]\DOUT_reg[0]_0 ;
  wire GEN_A;
  wire [0:0]GEN_ECP;
  wire [0:0]GEN_SCP;
  wire GEN_SP;
  wire [11:0]Q;
  wire \TX_CHAR_IS_K[3]_i_1_n_0 ;
  wire TX_CHAR_IS_K_reg0;
  wire TX_CHAR_IS_K_reg03_out;
  wire TX_CHAR_IS_K_reg08_out;
  wire [1:0]\TX_CHAR_IS_K_reg[3]_0 ;
  wire [3:0]\TX_CHAR_IS_K_reg[3]_1 ;
  wire \TX_DATA[0]_i_1_n_0 ;
  wire \TX_DATA[0]_i_2_n_0 ;
  wire \TX_DATA[10]_i_1_n_0 ;
  wire \TX_DATA[10]_i_2_n_0 ;
  wire \TX_DATA[10]_i_3_n_0 ;
  wire \TX_DATA[11]_i_1_n_0 ;
  wire \TX_DATA[12]_i_1_n_0 ;
  wire \TX_DATA[12]_i_2_n_0 ;
  wire \TX_DATA[13]_i_1_n_0 ;
  wire \TX_DATA[13]_i_2_n_0 ;
  wire \TX_DATA[14]_i_1_n_0 ;
  wire \TX_DATA[14]_i_2_n_0 ;
  wire \TX_DATA[14]_i_3_n_0 ;
  wire \TX_DATA[14]_i_4_n_0 ;
  wire \TX_DATA[15]_i_1_n_0 ;
  wire \TX_DATA[15]_i_2_n_0 ;
  wire \TX_DATA[15]_i_3_n_0 ;
  wire \TX_DATA[16]_i_1_n_0 ;
  wire \TX_DATA[17]_i_1_n_0 ;
  wire \TX_DATA[18]_i_1_n_0 ;
  wire \TX_DATA[18]_i_2_n_0 ;
  wire \TX_DATA[18]_i_3_n_0 ;
  wire \TX_DATA[19]_i_1_n_0 ;
  wire \TX_DATA[1]_i_1_n_0 ;
  wire \TX_DATA[20]_i_1_n_0 ;
  wire \TX_DATA[20]_i_2_n_0 ;
  wire \TX_DATA[21]_i_1_n_0 ;
  wire \TX_DATA[21]_i_2_n_0 ;
  wire \TX_DATA[22]_i_1_n_0 ;
  wire \TX_DATA[22]_i_2_n_0 ;
  wire \TX_DATA[23]_i_1_n_0 ;
  wire \TX_DATA[23]_i_2_n_0 ;
  wire \TX_DATA[23]_i_3_n_0 ;
  wire \TX_DATA[24]_i_1_n_0 ;
  wire \TX_DATA[25]_i_1_n_0 ;
  wire \TX_DATA[26]_i_1_n_0 ;
  wire \TX_DATA[27]_i_1_n_0 ;
  wire \TX_DATA[28]_i_1_n_0 ;
  wire \TX_DATA[29]_i_1_n_0 ;
  wire \TX_DATA[2]_i_1_n_0 ;
  wire \TX_DATA[2]_i_2_n_0 ;
  wire \TX_DATA[30]_i_1_n_0 ;
  wire \TX_DATA[30]_i_2_n_0 ;
  wire \TX_DATA[30]_i_3_n_0 ;
  wire \TX_DATA[31]_i_1_n_0 ;
  wire \TX_DATA[31]_i_2_n_0 ;
  wire \TX_DATA[3]_i_1_n_0 ;
  wire \TX_DATA[4]_i_1_n_0 ;
  wire \TX_DATA[4]_i_2_n_0 ;
  wire \TX_DATA[5]_i_1_n_0 ;
  wire \TX_DATA[5]_i_2_n_0 ;
  wire \TX_DATA[6]_i_1_n_0 ;
  wire \TX_DATA[6]_i_2_n_0 ;
  wire \TX_DATA[7]_i_2_n_0 ;
  wire \TX_DATA[7]_i_3_n_0 ;
  wire \TX_DATA[7]_i_4_n_0 ;
  wire \TX_DATA[8]_i_1_n_0 ;
  wire \TX_DATA[9]_i_1_n_0 ;
  wire \TX_DATA[9]_i_2_n_0 ;
  wire TX_DATA_reg0;
  wire \TX_DATA_reg[0]_0 ;
  wire \TX_DATA_reg[10]_0 ;
  wire \TX_DATA_reg[11]_0 ;
  wire \TX_DATA_reg[12]_0 ;
  wire \TX_DATA_reg[13]_0 ;
  wire \TX_DATA_reg[14]_0 ;
  wire \TX_DATA_reg[15]_0 ;
  wire \TX_DATA_reg[16]_0 ;
  wire \TX_DATA_reg[17]_0 ;
  wire \TX_DATA_reg[1]_0 ;
  wire \TX_DATA_reg[20]_0 ;
  wire \TX_DATA_reg[21]_0 ;
  wire \TX_DATA_reg[24]_0 ;
  wire \TX_DATA_reg[25]_0 ;
  wire \TX_DATA_reg[26]_0 ;
  wire \TX_DATA_reg[27]_0 ;
  wire \TX_DATA_reg[28]_0 ;
  wire \TX_DATA_reg[29]_0 ;
  wire \TX_DATA_reg[30]_0 ;
  wire \TX_DATA_reg[31]_0 ;
  wire \TX_DATA_reg[4]_0 ;
  wire \TX_DATA_reg[5]_0 ;
  wire \TX_DATA_reg[8]_0 ;
  wire \TX_DATA_reg[9]_0 ;
  wire [7:0]data0;
  wire gen_a_r;
  wire gen_cc_i;
  wire gen_cc_r;
  wire \gen_ecp_r_reg_n_0_[1] ;
  wire [3:0]\gen_k_r_reg[0]_0 ;
  wire \gen_k_r_reg_n_0_[3] ;
  wire [1:0]\gen_pad_r_reg[0]_0 ;
  wire \gen_pad_r_reg_n_0_[1] ;
  wire [3:0]\gen_r_r_reg[0]_0 ;
  wire \gen_r_r_reg_n_0_[3] ;
  wire gen_sp_r;
  wire gen_spa_i;
  wire gen_spa_r;
  wire gen_v_r2;
  wire [2:0]\gen_v_r_reg[1]_0 ;
  wire \gen_v_r_reg_n_0_[3] ;
  wire p_0_in;
  wire p_0_in12_in;
  wire p_0_in14_in;
  wire p_0_in16_in;
  wire p_0_in4_in;
  wire p_0_in6_in;
  wire p_0_in8_in;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in16_in;
  wire p_1_in5_in;
  wire reset_lanes_flop_i;
  wire reset_lanes_flop_i_0;
  wire reset_lanes_i;
  wire [31:0]\tx_pe_data_r_reg[0]_0 ;
  wire \tx_pe_data_r_reg_n_0_[0] ;
  wire \tx_pe_data_r_reg_n_0_[10] ;
  wire \tx_pe_data_r_reg_n_0_[11] ;
  wire \tx_pe_data_r_reg_n_0_[12] ;
  wire \tx_pe_data_r_reg_n_0_[13] ;
  wire \tx_pe_data_r_reg_n_0_[14] ;
  wire \tx_pe_data_r_reg_n_0_[15] ;
  wire \tx_pe_data_r_reg_n_0_[1] ;
  wire \tx_pe_data_r_reg_n_0_[24] ;
  wire \tx_pe_data_r_reg_n_0_[25] ;
  wire \tx_pe_data_r_reg_n_0_[26] ;
  wire \tx_pe_data_r_reg_n_0_[27] ;
  wire \tx_pe_data_r_reg_n_0_[28] ;
  wire \tx_pe_data_r_reg_n_0_[29] ;
  wire \tx_pe_data_r_reg_n_0_[2] ;
  wire \tx_pe_data_r_reg_n_0_[30] ;
  wire \tx_pe_data_r_reg_n_0_[31] ;
  wire \tx_pe_data_r_reg_n_0_[3] ;
  wire \tx_pe_data_r_reg_n_0_[4] ;
  wire \tx_pe_data_r_reg_n_0_[5] ;
  wire \tx_pe_data_r_reg_n_0_[6] ;
  wire \tx_pe_data_r_reg_n_0_[7] ;
  wire \tx_pe_data_r_reg_n_0_[8] ;
  wire \tx_pe_data_r_reg_n_0_[9] ;
  wire [1:0]\tx_pe_data_v_r_reg[0]_0 ;
  wire \tx_pe_data_v_r_reg_n_0_[1] ;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[0]_i_1 
       (.I0(D[0]),
        .I1(Q[11]),
        .O(\TX_DATA_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[0]_i_1__0 
       (.I0(D[16]),
        .I1(\DOUT_reg[0]_0 [11]),
        .O(\TX_DATA_reg[16]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[10]_i_1 
       (.I0(D[10]),
        .I1(Q[5]),
        .O(\TX_DATA_reg[10]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[10]_i_1__0 
       (.I0(D[26]),
        .I1(\DOUT_reg[0]_0 [5]),
        .O(\TX_DATA_reg[26]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[11]_i_1 
       (.I0(D[11]),
        .I1(Q[4]),
        .O(\TX_DATA_reg[11]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[11]_i_1__0 
       (.I0(D[27]),
        .I1(\DOUT_reg[0]_0 [4]),
        .O(\TX_DATA_reg[27]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[12]_i_1 
       (.I0(D[12]),
        .I1(Q[3]),
        .O(\TX_DATA_reg[12]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[12]_i_1__0 
       (.I0(D[28]),
        .I1(\DOUT_reg[0]_0 [3]),
        .O(\TX_DATA_reg[28]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[13]_i_1 
       (.I0(D[13]),
        .I1(Q[2]),
        .O(\TX_DATA_reg[13]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[13]_i_1__0 
       (.I0(D[29]),
        .I1(\DOUT_reg[0]_0 [2]),
        .O(\TX_DATA_reg[29]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[14]_i_1 
       (.I0(D[14]),
        .I1(Q[1]),
        .O(\TX_DATA_reg[14]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[14]_i_1__0 
       (.I0(D[30]),
        .I1(\DOUT_reg[0]_0 [1]),
        .O(\TX_DATA_reg[30]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[15]_i_1 
       (.I0(D[15]),
        .I1(Q[0]),
        .O(\TX_DATA_reg[15]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[15]_i_1__0 
       (.I0(D[31]),
        .I1(\DOUT_reg[0]_0 [0]),
        .O(\TX_DATA_reg[31]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[1]_i_1 
       (.I0(D[1]),
        .I1(Q[10]),
        .O(\TX_DATA_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[1]_i_1__0 
       (.I0(D[17]),
        .I1(\DOUT_reg[0]_0 [10]),
        .O(\TX_DATA_reg[17]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[4]_i_1 
       (.I0(D[4]),
        .I1(Q[9]),
        .O(\TX_DATA_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[4]_i_1__0 
       (.I0(D[20]),
        .I1(\DOUT_reg[0]_0 [9]),
        .O(\TX_DATA_reg[20]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[5]_i_1 
       (.I0(D[5]),
        .I1(Q[8]),
        .O(\TX_DATA_reg[5]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[5]_i_1__0 
       (.I0(D[21]),
        .I1(\DOUT_reg[0]_0 [8]),
        .O(\TX_DATA_reg[21]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[8]_i_1 
       (.I0(D[8]),
        .I1(Q[7]),
        .O(\TX_DATA_reg[8]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[8]_i_1__0 
       (.I0(D[24]),
        .I1(\DOUT_reg[0]_0 [7]),
        .O(\TX_DATA_reg[24]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[9]_i_1 
       (.I0(D[9]),
        .I1(Q[6]),
        .O(\TX_DATA_reg[9]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[9]_i_1__0 
       (.I0(D[25]),
        .I1(\DOUT_reg[0]_0 [6]),
        .O(\TX_DATA_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000000B)) 
    \TX_CHAR_IS_K[0]_i_1 
       (.I0(\gen_pad_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(\gen_v_r_reg_n_0_[3] ),
        .I3(gen_sp_r),
        .I4(gen_spa_r),
        .I5(gen_cc_r),
        .O(TX_CHAR_IS_K_reg0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \TX_CHAR_IS_K[1]_i_1 
       (.I0(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I1(p_1_in),
        .I2(gen_sp_r),
        .I3(gen_spa_r),
        .I4(gen_cc_r),
        .O(TX_CHAR_IS_K_reg03_out));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000000B)) 
    \TX_CHAR_IS_K[2]_i_1 
       (.I0(p_0_in12_in),
        .I1(p_1_in11_in),
        .I2(p_1_in5_in),
        .I3(gen_sp_r),
        .I4(gen_spa_r),
        .I5(gen_cc_r),
        .O(TX_CHAR_IS_K_reg08_out));
  LUT2 #(
    .INIT(4'hB)) 
    \TX_CHAR_IS_K[3]_i_1 
       (.I0(gen_cc_r),
        .I1(p_1_in11_in),
        .O(\TX_CHAR_IS_K[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_CHAR_IS_K_reg0),
        .Q(\TX_CHAR_IS_K_reg[3]_1 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_CHAR_IS_K_reg03_out),
        .Q(\TX_CHAR_IS_K_reg[3]_1 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_CHAR_IS_K_reg08_out),
        .Q(\TX_CHAR_IS_K_reg[3]_1 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_CHAR_IS_K_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\TX_CHAR_IS_K[3]_i_1_n_0 ),
        .Q(\TX_CHAR_IS_K_reg[3]_1 [3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \TX_DATA[0]_i_1 
       (.I0(\TX_DATA[0]_i_2_n_0 ),
        .I1(TX_DATA_reg0),
        .I2(D[0]),
        .O(\TX_DATA[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000044E4)) 
    \TX_DATA[0]_i_2 
       (.I0(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I1(gen_cc_r),
        .I2(\tx_pe_data_r_reg_n_0_[31] ),
        .I3(\gen_pad_r_reg_n_0_[1] ),
        .I4(\gen_ecp_r_reg_n_0_[1] ),
        .O(\TX_DATA[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \TX_DATA[10]_i_1 
       (.I0(data0[2]),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(p_0_in4_in),
        .I3(\TX_DATA[10]_i_2_n_0 ),
        .I4(p_0_in),
        .I5(\TX_DATA[10]_i_3_n_0 ),
        .O(\TX_DATA[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hF0FB)) 
    \TX_DATA[10]_i_2 
       (.I0(gen_spa_r),
        .I1(p_1_in),
        .I2(gen_cc_r),
        .I3(gen_sp_r),
        .O(\TX_DATA[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \TX_DATA[10]_i_3 
       (.I0(gen_sp_r),
        .I1(gen_spa_r),
        .I2(gen_cc_r),
        .O(\TX_DATA[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hEAEF)) 
    \TX_DATA[11]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(data0[3]),
        .I2(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I3(gen_cc_r),
        .O(\TX_DATA[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \TX_DATA[12]_i_1 
       (.I0(data0[4]),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(p_0_in4_in),
        .I3(\TX_DATA[12]_i_2_n_0 ),
        .I4(p_0_in),
        .I5(gen_cc_r),
        .O(\TX_DATA[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    \TX_DATA[12]_i_2 
       (.I0(p_1_in),
        .I1(gen_sp_r),
        .I2(gen_spa_r),
        .I3(gen_cc_r),
        .O(\TX_DATA[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEFEA)) 
    \TX_DATA[13]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(data0[5]),
        .I2(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I3(\TX_DATA[13]_i_2_n_0 ),
        .O(\TX_DATA[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFFFEFF)) 
    \TX_DATA[13]_i_2 
       (.I0(p_0_in4_in),
        .I1(p_1_in),
        .I2(gen_spa_r),
        .I3(p_0_in),
        .I4(gen_cc_r),
        .I5(gen_sp_r),
        .O(\TX_DATA[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \TX_DATA[14]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(\TX_DATA[15]_i_1_n_0 ),
        .O(\TX_DATA[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \TX_DATA[14]_i_2 
       (.I0(data0[6]),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(p_0_in4_in),
        .I3(\TX_DATA[14]_i_3_n_0 ),
        .I4(p_0_in),
        .I5(\TX_DATA[14]_i_4_n_0 ),
        .O(\TX_DATA[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    \TX_DATA[14]_i_3 
       (.I0(gen_spa_r),
        .I1(p_1_in),
        .I2(gen_sp_r),
        .I3(gen_cc_r),
        .O(\TX_DATA[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \TX_DATA[14]_i_4 
       (.I0(gen_spa_r),
        .I1(gen_sp_r),
        .I2(gen_cc_r),
        .O(\TX_DATA[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA[15]_i_1 
       (.I0(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I1(p_0_in),
        .I2(\TX_DATA[7]_i_3_n_0 ),
        .I3(p_1_in),
        .I4(p_0_in4_in),
        .I5(\gen_ecp_r_reg_n_0_[1] ),
        .O(\TX_DATA[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFEA)) 
    \TX_DATA[15]_i_2 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(data0[7]),
        .I2(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I3(\TX_DATA[15]_i_3_n_0 ),
        .O(\TX_DATA[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000EF)) 
    \TX_DATA[15]_i_3 
       (.I0(p_0_in4_in),
        .I1(p_1_in),
        .I2(p_0_in),
        .I3(gen_sp_r),
        .I4(gen_spa_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBABAFFAA)) 
    \TX_DATA[16]_i_1 
       (.I0(p_1_in16_in),
        .I1(p_0_in12_in),
        .I2(\tx_pe_data_r_reg_n_0_[15] ),
        .I3(gen_cc_r),
        .I4(p_1_in11_in),
        .O(\TX_DATA[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFAEFFAEFFAEAA)) 
    \TX_DATA[17]_i_1 
       (.I0(p_1_in16_in),
        .I1(\tx_pe_data_r_reg_n_0_[14] ),
        .I2(p_0_in12_in),
        .I3(p_1_in11_in),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \TX_DATA[18]_i_1 
       (.I0(\TX_DATA[18]_i_2_n_0 ),
        .I1(\TX_DATA[23]_i_1_n_0 ),
        .I2(D[18]),
        .O(\TX_DATA[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EEE2)) 
    \TX_DATA[18]_i_2 
       (.I0(\TX_DATA[18]_i_3_n_0 ),
        .I1(p_1_in11_in),
        .I2(p_0_in12_in),
        .I3(\tx_pe_data_r_reg_n_0_[13] ),
        .I4(p_1_in16_in),
        .O(\TX_DATA[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00FF0032)) 
    \TX_DATA[18]_i_3 
       (.I0(p_0_in8_in),
        .I1(p_1_in5_in),
        .I2(p_0_in6_in),
        .I3(gen_sp_r),
        .I4(gen_spa_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEAAFEFF)) 
    \TX_DATA[19]_i_1 
       (.I0(p_1_in16_in),
        .I1(\tx_pe_data_r_reg_n_0_[12] ),
        .I2(p_0_in12_in),
        .I3(p_1_in11_in),
        .I4(gen_cc_r),
        .O(\TX_DATA[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFAEFFAEFFAEAA)) 
    \TX_DATA[1]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_r_reg_n_0_[30] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFEAA)) 
    \TX_DATA[20]_i_1 
       (.I0(p_1_in16_in),
        .I1(\tx_pe_data_r_reg_n_0_[11] ),
        .I2(p_0_in12_in),
        .I3(p_1_in11_in),
        .I4(\TX_DATA[20]_i_2_n_0 ),
        .O(\TX_DATA[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00030002)) 
    \TX_DATA[20]_i_2 
       (.I0(p_0_in8_in),
        .I1(p_1_in5_in),
        .I2(gen_sp_r),
        .I3(gen_spa_r),
        .I4(p_0_in6_in),
        .I5(gen_cc_r),
        .O(\TX_DATA[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEFFAEAA)) 
    \TX_DATA[21]_i_1 
       (.I0(p_1_in16_in),
        .I1(\tx_pe_data_r_reg_n_0_[10] ),
        .I2(p_0_in12_in),
        .I3(p_1_in11_in),
        .I4(\TX_DATA[21]_i_2_n_0 ),
        .O(\TX_DATA[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFFFEFF)) 
    \TX_DATA[21]_i_2 
       (.I0(p_0_in8_in),
        .I1(p_1_in5_in),
        .I2(gen_spa_r),
        .I3(p_0_in6_in),
        .I4(gen_cc_r),
        .I5(gen_sp_r),
        .O(\TX_DATA[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEFFAEAA)) 
    \TX_DATA[22]_i_1 
       (.I0(p_1_in16_in),
        .I1(\tx_pe_data_r_reg_n_0_[9] ),
        .I2(p_0_in12_in),
        .I3(p_1_in11_in),
        .I4(\TX_DATA[22]_i_2_n_0 ),
        .O(\TX_DATA[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00CD)) 
    \TX_DATA[22]_i_2 
       (.I0(p_0_in8_in),
        .I1(p_1_in5_in),
        .I2(p_0_in6_in),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA[23]_i_1 
       (.I0(p_1_in11_in),
        .I1(p_0_in6_in),
        .I2(\TX_DATA[7]_i_3_n_0 ),
        .I3(p_1_in5_in),
        .I4(p_0_in8_in),
        .I5(p_1_in16_in),
        .O(\TX_DATA[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFEAA)) 
    \TX_DATA[23]_i_2 
       (.I0(p_1_in16_in),
        .I1(\tx_pe_data_r_reg_n_0_[8] ),
        .I2(p_0_in12_in),
        .I3(p_1_in11_in),
        .I4(\TX_DATA[23]_i_3_n_0 ),
        .O(\TX_DATA[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000EF)) 
    \TX_DATA[23]_i_3 
       (.I0(p_0_in8_in),
        .I1(p_1_in5_in),
        .I2(p_0_in6_in),
        .I3(gen_sp_r),
        .I4(gen_spa_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \TX_DATA[24]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[7] ),
        .I1(p_1_in11_in),
        .I2(gen_cc_r),
        .O(\TX_DATA[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \TX_DATA[25]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[6] ),
        .I1(p_1_in11_in),
        .I2(gen_cc_r),
        .O(\TX_DATA[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBB8)) 
    \TX_DATA[26]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[5] ),
        .I1(p_1_in11_in),
        .I2(p_0_in16_in),
        .I3(\TX_DATA[7]_i_3_n_0 ),
        .I4(gen_a_r),
        .I5(p_0_in14_in),
        .O(\TX_DATA[26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \TX_DATA[27]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[4] ),
        .I1(p_1_in11_in),
        .I2(gen_cc_r),
        .O(\TX_DATA[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBB8)) 
    \TX_DATA[28]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[3] ),
        .I1(p_1_in11_in),
        .I2(p_0_in16_in),
        .I3(\TX_DATA[7]_i_3_n_0 ),
        .I4(gen_a_r),
        .I5(p_0_in14_in),
        .O(\TX_DATA[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8BBBBBBBB)) 
    \TX_DATA[29]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[2] ),
        .I1(p_1_in11_in),
        .I2(p_0_in16_in),
        .I3(\TX_DATA[7]_i_3_n_0 ),
        .I4(gen_a_r),
        .I5(p_0_in14_in),
        .O(\TX_DATA[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFEAA)) 
    \TX_DATA[2]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_r_reg_n_0_[29] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(\TX_DATA[2]_i_2_n_0 ),
        .O(\TX_DATA[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00FF0032)) 
    \TX_DATA[2]_i_2 
       (.I0(\gen_k_r_reg_n_0_[3] ),
        .I1(\gen_v_r_reg_n_0_[3] ),
        .I2(\gen_r_r_reg_n_0_[3] ),
        .I3(gen_sp_r),
        .I4(gen_spa_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \TX_DATA[30]_i_1 
       (.I0(\tx_pe_data_r_reg_n_0_[1] ),
        .I1(p_1_in11_in),
        .I2(p_0_in14_in),
        .I3(\TX_DATA[30]_i_2_n_0 ),
        .I4(p_0_in16_in),
        .I5(\TX_DATA[30]_i_3_n_0 ),
        .O(\TX_DATA[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hFF10)) 
    \TX_DATA[30]_i_2 
       (.I0(gen_sp_r),
        .I1(gen_spa_r),
        .I2(gen_a_r),
        .I3(gen_cc_r),
        .O(\TX_DATA[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \TX_DATA[30]_i_3 
       (.I0(gen_sp_r),
        .I1(gen_spa_r),
        .I2(gen_cc_r),
        .O(\TX_DATA[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA[31]_i_1 
       (.I0(p_1_in11_in),
        .I1(p_0_in16_in),
        .I2(\TX_DATA[7]_i_3_n_0 ),
        .I3(gen_a_r),
        .I4(p_0_in14_in),
        .I5(p_1_in16_in),
        .O(\TX_DATA[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8888BBBBB8BB)) 
    \TX_DATA[31]_i_2 
       (.I0(\tx_pe_data_r_reg_n_0_[0] ),
        .I1(p_1_in11_in),
        .I2(p_0_in16_in),
        .I3(p_0_in14_in),
        .I4(\TX_DATA[7]_i_3_n_0 ),
        .I5(gen_a_r),
        .O(\TX_DATA[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEAAFEFF)) 
    \TX_DATA[3]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_r_reg_n_0_[28] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(gen_cc_r),
        .O(\TX_DATA[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFEAA)) 
    \TX_DATA[4]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_r_reg_n_0_[27] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(\TX_DATA[4]_i_2_n_0 ),
        .O(\TX_DATA[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00030002)) 
    \TX_DATA[4]_i_2 
       (.I0(\gen_k_r_reg_n_0_[3] ),
        .I1(\gen_v_r_reg_n_0_[3] ),
        .I2(gen_sp_r),
        .I3(gen_spa_r),
        .I4(\gen_r_r_reg_n_0_[3] ),
        .I5(gen_cc_r),
        .O(\TX_DATA[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEFFAEAA)) 
    \TX_DATA[5]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_r_reg_n_0_[26] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(\TX_DATA[5]_i_2_n_0 ),
        .O(\TX_DATA[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFFFEFF)) 
    \TX_DATA[5]_i_2 
       (.I0(\gen_k_r_reg_n_0_[3] ),
        .I1(\gen_v_r_reg_n_0_[3] ),
        .I2(gen_spa_r),
        .I3(\gen_r_r_reg_n_0_[3] ),
        .I4(gen_cc_r),
        .I5(gen_sp_r),
        .O(\TX_DATA[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEFFAEAA)) 
    \TX_DATA[6]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_r_reg_n_0_[25] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(\TX_DATA[6]_i_2_n_0 ),
        .O(\TX_DATA[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00CD)) 
    \TX_DATA[6]_i_2 
       (.I0(\gen_k_r_reg_n_0_[3] ),
        .I1(\gen_v_r_reg_n_0_[3] ),
        .I2(\gen_r_r_reg_n_0_[3] ),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \TX_DATA[7]_i_1 
       (.I0(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I1(\gen_r_r_reg_n_0_[3] ),
        .I2(\TX_DATA[7]_i_3_n_0 ),
        .I3(\gen_v_r_reg_n_0_[3] ),
        .I4(\gen_k_r_reg_n_0_[3] ),
        .I5(\gen_ecp_r_reg_n_0_[1] ),
        .O(TX_DATA_reg0));
  LUT5 #(
    .INIT(32'hFEFFFEAA)) 
    \TX_DATA[7]_i_2 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(\tx_pe_data_r_reg_n_0_[24] ),
        .I2(\gen_pad_r_reg_n_0_[1] ),
        .I3(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I4(\TX_DATA[7]_i_4_n_0 ),
        .O(\TX_DATA[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \TX_DATA[7]_i_3 
       (.I0(gen_spa_r),
        .I1(gen_sp_r),
        .I2(gen_cc_r),
        .O(\TX_DATA[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000EF)) 
    \TX_DATA[7]_i_4 
       (.I0(\gen_k_r_reg_n_0_[3] ),
        .I1(\gen_v_r_reg_n_0_[3] ),
        .I2(\gen_r_r_reg_n_0_[3] ),
        .I3(gen_sp_r),
        .I4(gen_spa_r),
        .I5(gen_cc_r),
        .O(\TX_DATA[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hEFEA)) 
    \TX_DATA[8]_i_1 
       (.I0(\gen_ecp_r_reg_n_0_[1] ),
        .I1(data0[0]),
        .I2(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I3(gen_cc_r),
        .O(\TX_DATA[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \TX_DATA[9]_i_1 
       (.I0(\TX_DATA[9]_i_2_n_0 ),
        .I1(\tx_pe_data_v_r_reg_n_0_[1] ),
        .I2(data0[1]),
        .I3(\gen_ecp_r_reg_n_0_[1] ),
        .I4(\TX_DATA[15]_i_1_n_0 ),
        .I5(D[9]),
        .O(\TX_DATA[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \TX_DATA[9]_i_2 
       (.I0(gen_sp_r),
        .I1(gen_cc_r),
        .O(\TX_DATA[9]_i_2_n_0 ));
  FDRE \TX_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\TX_DATA[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(1'b0));
  FDSE \TX_DATA_reg[10] 
       (.C(user_clk),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[10]_i_1_n_0 ),
        .Q(D[10]),
        .S(\TX_DATA[14]_i_1_n_0 ));
  FDSE \TX_DATA_reg[11] 
       (.C(user_clk),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[11]_i_1_n_0 ),
        .Q(D[11]),
        .S(1'b0));
  FDSE \TX_DATA_reg[12] 
       (.C(user_clk),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[12]_i_1_n_0 ),
        .Q(D[12]),
        .S(\TX_DATA[14]_i_1_n_0 ));
  FDSE \TX_DATA_reg[13] 
       (.C(user_clk),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[13]_i_1_n_0 ),
        .Q(D[13]),
        .S(1'b0));
  FDSE \TX_DATA_reg[14] 
       (.C(user_clk),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[14]_i_2_n_0 ),
        .Q(D[14]),
        .S(\TX_DATA[14]_i_1_n_0 ));
  FDSE \TX_DATA_reg[15] 
       (.C(user_clk),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[15]_i_2_n_0 ),
        .Q(D[15]),
        .S(1'b0));
  FDSE \TX_DATA_reg[16] 
       (.C(user_clk),
        .CE(\TX_DATA[23]_i_1_n_0 ),
        .D(\TX_DATA[16]_i_1_n_0 ),
        .Q(D[16]),
        .S(1'b0));
  FDSE \TX_DATA_reg[17] 
       (.C(user_clk),
        .CE(\TX_DATA[23]_i_1_n_0 ),
        .D(\TX_DATA[17]_i_1_n_0 ),
        .Q(D[17]),
        .S(1'b0));
  FDRE \TX_DATA_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\TX_DATA[18]_i_1_n_0 ),
        .Q(D[18]),
        .R(1'b0));
  FDSE \TX_DATA_reg[19] 
       (.C(user_clk),
        .CE(\TX_DATA[23]_i_1_n_0 ),
        .D(\TX_DATA[19]_i_1_n_0 ),
        .Q(D[19]),
        .S(1'b0));
  FDSE \TX_DATA_reg[1] 
       (.C(user_clk),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[1]_i_1_n_0 ),
        .Q(D[1]),
        .S(1'b0));
  FDSE \TX_DATA_reg[20] 
       (.C(user_clk),
        .CE(\TX_DATA[23]_i_1_n_0 ),
        .D(\TX_DATA[20]_i_1_n_0 ),
        .Q(D[20]),
        .S(1'b0));
  FDSE \TX_DATA_reg[21] 
       (.C(user_clk),
        .CE(\TX_DATA[23]_i_1_n_0 ),
        .D(\TX_DATA[21]_i_1_n_0 ),
        .Q(D[21]),
        .S(1'b0));
  FDSE \TX_DATA_reg[22] 
       (.C(user_clk),
        .CE(\TX_DATA[23]_i_1_n_0 ),
        .D(\TX_DATA[22]_i_1_n_0 ),
        .Q(D[22]),
        .S(1'b0));
  FDSE \TX_DATA_reg[23] 
       (.C(user_clk),
        .CE(\TX_DATA[23]_i_1_n_0 ),
        .D(\TX_DATA[23]_i_2_n_0 ),
        .Q(D[23]),
        .S(1'b0));
  FDRE \TX_DATA_reg[24] 
       (.C(user_clk),
        .CE(\TX_DATA[31]_i_1_n_0 ),
        .D(\TX_DATA[24]_i_1_n_0 ),
        .Q(D[24]),
        .R(p_1_in16_in));
  FDRE \TX_DATA_reg[25] 
       (.C(user_clk),
        .CE(\TX_DATA[31]_i_1_n_0 ),
        .D(\TX_DATA[25]_i_1_n_0 ),
        .Q(D[25]),
        .R(p_1_in16_in));
  FDSE \TX_DATA_reg[26] 
       (.C(user_clk),
        .CE(\TX_DATA[31]_i_1_n_0 ),
        .D(\TX_DATA[26]_i_1_n_0 ),
        .Q(D[26]),
        .S(p_1_in16_in));
  FDSE \TX_DATA_reg[27] 
       (.C(user_clk),
        .CE(\TX_DATA[31]_i_1_n_0 ),
        .D(\TX_DATA[27]_i_1_n_0 ),
        .Q(D[27]),
        .S(p_1_in16_in));
  FDSE \TX_DATA_reg[28] 
       (.C(user_clk),
        .CE(\TX_DATA[31]_i_1_n_0 ),
        .D(\TX_DATA[28]_i_1_n_0 ),
        .Q(D[28]),
        .S(p_1_in16_in));
  FDRE \TX_DATA_reg[29] 
       (.C(user_clk),
        .CE(\TX_DATA[31]_i_1_n_0 ),
        .D(\TX_DATA[29]_i_1_n_0 ),
        .Q(D[29]),
        .R(p_1_in16_in));
  FDSE \TX_DATA_reg[2] 
       (.C(user_clk),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[2]_i_1_n_0 ),
        .Q(D[2]),
        .S(1'b0));
  FDSE \TX_DATA_reg[30] 
       (.C(user_clk),
        .CE(\TX_DATA[31]_i_1_n_0 ),
        .D(\TX_DATA[30]_i_1_n_0 ),
        .Q(D[30]),
        .S(p_1_in16_in));
  FDRE \TX_DATA_reg[31] 
       (.C(user_clk),
        .CE(\TX_DATA[31]_i_1_n_0 ),
        .D(\TX_DATA[31]_i_2_n_0 ),
        .Q(D[31]),
        .R(p_1_in16_in));
  FDSE \TX_DATA_reg[3] 
       (.C(user_clk),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[3]_i_1_n_0 ),
        .Q(D[3]),
        .S(1'b0));
  FDSE \TX_DATA_reg[4] 
       (.C(user_clk),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[4]_i_1_n_0 ),
        .Q(D[4]),
        .S(1'b0));
  FDSE \TX_DATA_reg[5] 
       (.C(user_clk),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[5]_i_1_n_0 ),
        .Q(D[5]),
        .S(1'b0));
  FDSE \TX_DATA_reg[6] 
       (.C(user_clk),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[6]_i_1_n_0 ),
        .Q(D[6]),
        .S(1'b0));
  FDSE \TX_DATA_reg[7] 
       (.C(user_clk),
        .CE(TX_DATA_reg0),
        .D(\TX_DATA[7]_i_2_n_0 ),
        .Q(D[7]),
        .S(1'b0));
  FDSE \TX_DATA_reg[8] 
       (.C(user_clk),
        .CE(\TX_DATA[15]_i_1_n_0 ),
        .D(\TX_DATA[8]_i_1_n_0 ),
        .Q(D[8]),
        .S(1'b0));
  FDRE \TX_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\TX_DATA[9]_i_1_n_0 ),
        .Q(D[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \bypass_r[0]_i_1__0 
       (.I0(\TX_CHAR_IS_K_reg[3]_1 [1]),
        .I1(\TX_CHAR_IS_K_reg[3]_1 [0]),
        .I2(gen_v_r2),
        .I3(\DOUT_reg[0] ),
        .I4(reset_lanes_i),
        .O(\TX_CHAR_IS_K_reg[3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \bypass_r[1]_i_1__0 
       (.I0(\TX_CHAR_IS_K_reg[3]_1 [3]),
        .I1(\TX_CHAR_IS_K_reg[3]_1 [2]),
        .I2(gen_v_r2),
        .I3(\DOUT_reg[0] ),
        .I4(reset_lanes_i),
        .O(\TX_CHAR_IS_K_reg[3]_0 [1]));
  FDRE gen_a_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_A),
        .Q(gen_a_r),
        .R(1'b0));
  FDRE gen_cc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_cc_i),
        .Q(gen_cc_r),
        .R(1'b0));
  FDRE \gen_ecp_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_ECP),
        .Q(\gen_ecp_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_k_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_k_r_reg[0]_0 [3]),
        .Q(p_0_in16_in),
        .R(1'b0));
  FDRE \gen_k_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_k_r_reg[0]_0 [2]),
        .Q(p_0_in8_in),
        .R(1'b0));
  FDRE \gen_k_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_k_r_reg[0]_0 [1]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \gen_k_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_k_r_reg[0]_0 [0]),
        .Q(\gen_k_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_pad_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_pad_r_reg[0]_0 [1]),
        .Q(p_0_in12_in),
        .R(1'b0));
  FDRE \gen_pad_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_pad_r_reg[0]_0 [0]),
        .Q(\gen_pad_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_r_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_r_r_reg[0]_0 [3]),
        .Q(p_0_in14_in),
        .R(1'b0));
  FDRE \gen_r_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_r_r_reg[0]_0 [2]),
        .Q(p_0_in6_in),
        .R(1'b0));
  FDRE \gen_r_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_r_r_reg[0]_0 [1]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \gen_r_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_r_r_reg[0]_0 [0]),
        .Q(\gen_r_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_scp_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_SCP),
        .Q(p_1_in16_in),
        .R(1'b0));
  FDRE gen_sp_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_SP),
        .Q(gen_sp_r),
        .R(1'b0));
  FDRE gen_spa_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_spa_i),
        .Q(gen_spa_r),
        .R(1'b0));
  FDRE \gen_v_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_v_r_reg[1]_0 [2]),
        .Q(p_1_in5_in),
        .R(1'b0));
  FDRE \gen_v_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_v_r_reg[1]_0 [1]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \gen_v_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_v_r_reg[1]_0 [0]),
        .Q(\gen_v_r_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \lfsr[15]_i_1__1 
       (.I0(reset_lanes_i),
        .I1(\DOUT_reg[0] ),
        .I2(gen_v_r2),
        .I3(\TX_CHAR_IS_K_reg[3]_1 [2]),
        .I4(\TX_CHAR_IS_K_reg[3]_1 [3]),
        .O(reset_lanes_flop_i));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \lfsr[15]_i_2__0 
       (.I0(reset_lanes_i),
        .I1(\DOUT_reg[0] ),
        .I2(gen_v_r2),
        .I3(\TX_CHAR_IS_K_reg[3]_1 [0]),
        .I4(\TX_CHAR_IS_K_reg[3]_1 [1]),
        .O(reset_lanes_flop_i_0));
  FDRE \tx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [31]),
        .Q(\tx_pe_data_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [21]),
        .Q(\tx_pe_data_r_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [20]),
        .Q(\tx_pe_data_r_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [19]),
        .Q(\tx_pe_data_r_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [18]),
        .Q(\tx_pe_data_r_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [17]),
        .Q(\tx_pe_data_r_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [16]),
        .Q(\tx_pe_data_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [15]),
        .Q(data0[7]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [14]),
        .Q(data0[6]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [13]),
        .Q(data0[5]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [12]),
        .Q(data0[4]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [30]),
        .Q(\tx_pe_data_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [11]),
        .Q(data0[3]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [10]),
        .Q(data0[2]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [9]),
        .Q(data0[1]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [8]),
        .Q(data0[0]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [7]),
        .Q(\tx_pe_data_r_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [6]),
        .Q(\tx_pe_data_r_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [5]),
        .Q(\tx_pe_data_r_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [4]),
        .Q(\tx_pe_data_r_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [3]),
        .Q(\tx_pe_data_r_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [2]),
        .Q(\tx_pe_data_r_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [29]),
        .Q(\tx_pe_data_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [1]),
        .Q(\tx_pe_data_r_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [0]),
        .Q(\tx_pe_data_r_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [28]),
        .Q(\tx_pe_data_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [27]),
        .Q(\tx_pe_data_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [26]),
        .Q(\tx_pe_data_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [25]),
        .Q(\tx_pe_data_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [24]),
        .Q(\tx_pe_data_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [23]),
        .Q(\tx_pe_data_r_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_r_reg[0]_0 [22]),
        .Q(\tx_pe_data_r_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \tx_pe_data_v_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_v_r_reg[0]_0 [1]),
        .Q(p_1_in11_in),
        .R(1'b0));
  FDRE \tx_pe_data_v_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_v_r_reg[0]_0 [0]),
        .Q(\tx_pe_data_v_r_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_TX_LL" *) 
module aurora_8b10b_0_aurora_8b10b_0_TX_LL
   (gen_cc_i,
    tx_dst_rdy,
    GEN_SCP,
    GEN_ECP,
    s_axi_tx_tready,
    \TX_PE_DATA_V_reg[0] ,
    \GEN_PAD_reg[0] ,
    \TX_PE_DATA_reg[0] ,
    user_clk,
    in_frame_r_reg,
    Q,
    s_axi_tx_tlast,
    s_axi_tx_tvalid,
    s_axi_tx_tkeep,
    \tx_pe_data_v_r_reg[1] ,
    s_axi_tx_tdata);
  output gen_cc_i;
  output tx_dst_rdy;
  output [0:0]GEN_SCP;
  output [0:0]GEN_ECP;
  output s_axi_tx_tready;
  output [1:0]\TX_PE_DATA_V_reg[0] ;
  output [1:0]\GEN_PAD_reg[0] ;
  output [31:0]\TX_PE_DATA_reg[0] ;
  input user_clk;
  input in_frame_r_reg;
  input Q;
  input s_axi_tx_tlast;
  input s_axi_tx_tvalid;
  input [0:3]s_axi_tx_tkeep;
  input \tx_pe_data_v_r_reg[1] ;
  input [0:31]s_axi_tx_tdata;

  wire [0:0]GEN_ECP;
  wire [1:0]\GEN_PAD_reg[0] ;
  wire [0:0]GEN_SCP;
  wire Q;
  wire [1:0]\TX_PE_DATA_V_reg[0] ;
  wire [31:0]\TX_PE_DATA_reg[0] ;
  wire do_cc_r;
  wire gen_cc_i;
  wire in_frame_r_reg;
  wire pdu_ok_c;
  wire [0:31]s_axi_tx_tdata;
  wire [0:3]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire storage_pad_r0;
  wire storage_v_r0;
  wire tx_dst_rdy;
  wire tx_ll_control_i_n_10;
  wire tx_ll_control_i_n_7;
  wire tx_ll_datapath_i_n_0;
  wire \tx_pe_data_v_r_reg[1] ;
  wire user_clk;

  aurora_8b10b_0_aurora_8b10b_0_TX_LL_CONTROL tx_ll_control_i
       (.D(tx_ll_control_i_n_7),
        .E(pdu_ok_c),
        .GEN_ECP(GEN_ECP),
        .GEN_ECP_reg_0(in_frame_r_reg),
        .GEN_SCP(GEN_SCP),
        .Q(Q),
        .TX_DST_RDY_N_reg_0(tx_dst_rdy),
        .do_cc_r(do_cc_r),
        .gen_cc_i(gen_cc_i),
        .idle_r_reg_0(\tx_pe_data_v_r_reg[1] ),
        .in_frame_r_reg(tx_ll_datapath_i_n_0),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tlast_0(tx_ll_control_i_n_10),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .storage_pad_r0(storage_pad_r0),
        .storage_v_r0(storage_v_r0),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_TX_LL_DATAPATH tx_ll_datapath_i
       (.D(tx_ll_control_i_n_7),
        .E(pdu_ok_c),
        .\GEN_PAD_reg[0]_0 (\GEN_PAD_reg[0] ),
        .\TX_PE_DATA_V_reg[0]_0 (\TX_PE_DATA_V_reg[0] ),
        .\TX_PE_DATA_reg[0]_0 (\TX_PE_DATA_reg[0] ),
        .do_cc_r(do_cc_r),
        .in_frame_r_reg_0(tx_ll_datapath_i_n_0),
        .in_frame_r_reg_1(in_frame_r_reg),
        .in_frame_r_reg_2(tx_ll_control_i_n_10),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .storage_pad_r0(storage_pad_r0),
        .storage_v_r0(storage_v_r0),
        .tx_dst_rdy(tx_dst_rdy),
        .\tx_pe_data_v_r_reg[1]_0 (\tx_pe_data_v_r_reg[1] ),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_TX_LL_CONTROL" *) 
module aurora_8b10b_0_aurora_8b10b_0_TX_LL_CONTROL
   (gen_cc_i,
    do_cc_r,
    TX_DST_RDY_N_reg_0,
    E,
    GEN_SCP,
    GEN_ECP,
    s_axi_tx_tready,
    D,
    storage_pad_r0,
    storage_v_r0,
    s_axi_tx_tlast_0,
    user_clk,
    GEN_ECP_reg_0,
    Q,
    s_axi_tx_tlast,
    s_axi_tx_tvalid,
    s_axi_tx_tkeep,
    in_frame_r_reg,
    idle_r_reg_0);
  output gen_cc_i;
  output do_cc_r;
  output TX_DST_RDY_N_reg_0;
  output [0:0]E;
  output [0:0]GEN_SCP;
  output [0:0]GEN_ECP;
  output s_axi_tx_tready;
  output [0:0]D;
  output storage_pad_r0;
  output storage_v_r0;
  output s_axi_tx_tlast_0;
  input user_clk;
  input GEN_ECP_reg_0;
  input Q;
  input s_axi_tx_tlast;
  input s_axi_tx_tvalid;
  input [0:3]s_axi_tx_tkeep;
  input in_frame_r_reg;
  input idle_r_reg_0;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]GEN_ECP;
  wire GEN_ECP0;
  wire GEN_ECP_reg_0;
  wire [0:0]GEN_SCP;
  wire GEN_SCP_i_1_n_0;
  wire Q;
  wire TX_DST_RDY_N_reg_0;
  wire data_r;
  wire data_to_eof_1_r;
  wire data_to_eof_2_r;
  wire do_cc_r;
  wire gen_cc_i;
  wire idle_r;
  wire idle_r_reg_0;
  wire in_frame_r_reg;
  wire next_data_c;
  wire next_data_to_eof_1_c;
  wire next_idle_c;
  wire next_sof_to_eof_1_c;
  wire [0:3]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tlast_0;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire sof_to_data_r;
  wire sof_to_data_r_i_1_n_0;
  wire sof_to_eof_1_r;
  wire sof_to_eof_1_r_i_2_n_0;
  wire sof_to_eof_2_r;
  wire storage_pad_r0;
  wire storage_v_r0;
  wire storage_v_r_i_3_n_0;
  wire tx_dst_rdy_n_c;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    GEN_ECP_i_1
       (.I0(data_to_eof_2_r),
        .I1(sof_to_eof_2_r),
        .I2(do_cc_r),
        .O(GEN_ECP0));
  FDRE GEN_ECP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_ECP0),
        .Q(GEN_ECP),
        .R(GEN_ECP_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h54)) 
    GEN_SCP_i_1
       (.I0(do_cc_r),
        .I1(sof_to_eof_1_r),
        .I2(sof_to_data_r),
        .O(GEN_SCP_i_1_n_0));
  FDRE GEN_SCP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_SCP_i_1_n_0),
        .Q(GEN_SCP),
        .R(GEN_ECP_reg_0));
  LUT6 #(
    .INIT(64'hFFEFFFEFFFEFFAEA)) 
    TX_DST_RDY_N_i_2
       (.I0(Q),
        .I1(data_to_eof_1_r),
        .I2(do_cc_r),
        .I3(sof_to_eof_1_r),
        .I4(next_sof_to_eof_1_c),
        .I5(next_data_to_eof_1_c),
        .O(tx_dst_rdy_n_c));
  FDSE TX_DST_RDY_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_dst_rdy_n_c),
        .Q(TX_DST_RDY_N_reg_0),
        .S(GEN_ECP_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT5 #(
    .INIT(32'hDFDFDF00)) 
    data_r_i_1
       (.I0(s_axi_tx_tlast),
        .I1(TX_DST_RDY_N_reg_0),
        .I2(s_axi_tx_tvalid),
        .I3(sof_to_data_r),
        .I4(data_r),
        .O(next_data_c));
  FDRE data_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_data_c),
        .Q(data_r),
        .R(GEN_ECP_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT5 #(
    .INIT(32'h20202000)) 
    data_to_eof_1_r_i_1
       (.I0(s_axi_tx_tlast),
        .I1(TX_DST_RDY_N_reg_0),
        .I2(s_axi_tx_tvalid),
        .I3(sof_to_data_r),
        .I4(data_r),
        .O(next_data_to_eof_1_c));
  FDRE data_to_eof_1_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_data_to_eof_1_c),
        .Q(data_to_eof_1_r),
        .R(GEN_ECP_reg_0));
  FDRE data_to_eof_2_r_reg
       (.C(user_clk),
        .CE(E),
        .D(data_to_eof_1_r),
        .Q(data_to_eof_2_r),
        .R(GEN_ECP_reg_0));
  FDRE do_cc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(Q),
        .Q(do_cc_r),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_cc_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(do_cc_r),
        .Q(gen_cc_i),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000200020220)) 
    \gen_pad_r[1]_i_1 
       (.I0(s_axi_tx_tlast),
        .I1(storage_v_r_i_3_n_0),
        .I2(s_axi_tx_tkeep[2]),
        .I3(s_axi_tx_tkeep[1]),
        .I4(s_axi_tx_tkeep[0]),
        .I5(s_axi_tx_tkeep[3]),
        .O(D));
  LUT6 #(
    .INIT(64'hFBFBFBFBFBFBFB00)) 
    idle_r_i_1
       (.I0(TX_DST_RDY_N_reg_0),
        .I1(s_axi_tx_tvalid),
        .I2(idle_r_reg_0),
        .I3(sof_to_eof_2_r),
        .I4(data_to_eof_2_r),
        .I5(idle_r),
        .O(next_idle_c));
  FDSE idle_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_idle_c),
        .Q(idle_r),
        .S(GEN_ECP_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT5 #(
    .INIT(32'hDFDF0010)) 
    in_frame_r_i_1
       (.I0(s_axi_tx_tlast),
        .I1(TX_DST_RDY_N_reg_0),
        .I2(s_axi_tx_tvalid),
        .I3(idle_r_reg_0),
        .I4(in_frame_r_reg),
        .O(s_axi_tx_tlast_0));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_tx_tready_INST_0
       (.I0(TX_DST_RDY_N_reg_0),
        .O(s_axi_tx_tready));
  LUT6 #(
    .INIT(64'h0000000000005554)) 
    sof_to_data_r_i_1
       (.I0(s_axi_tx_tlast),
        .I1(idle_r),
        .I2(data_to_eof_2_r),
        .I3(sof_to_eof_2_r),
        .I4(idle_r_reg_0),
        .I5(sof_to_eof_1_r_i_2_n_0),
        .O(sof_to_data_r_i_1_n_0));
  FDRE sof_to_data_r_reg
       (.C(user_clk),
        .CE(E),
        .D(sof_to_data_r_i_1_n_0),
        .Q(sof_to_data_r),
        .R(GEN_ECP_reg_0));
  LUT6 #(
    .INIT(64'h000000000000AAA8)) 
    sof_to_eof_1_r_i_1
       (.I0(s_axi_tx_tlast),
        .I1(idle_r),
        .I2(data_to_eof_2_r),
        .I3(sof_to_eof_2_r),
        .I4(idle_r_reg_0),
        .I5(sof_to_eof_1_r_i_2_n_0),
        .O(next_sof_to_eof_1_c));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'hB)) 
    sof_to_eof_1_r_i_2
       (.I0(TX_DST_RDY_N_reg_0),
        .I1(s_axi_tx_tvalid),
        .O(sof_to_eof_1_r_i_2_n_0));
  FDRE sof_to_eof_1_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_sof_to_eof_1_c),
        .Q(sof_to_eof_1_r),
        .R(GEN_ECP_reg_0));
  FDRE sof_to_eof_2_r_reg
       (.C(user_clk),
        .CE(E),
        .D(sof_to_eof_1_r),
        .Q(sof_to_eof_2_r),
        .R(GEN_ECP_reg_0));
  LUT6 #(
    .INIT(64'h0220200020000000)) 
    storage_pad_r_i_1
       (.I0(s_axi_tx_tlast),
        .I1(storage_v_r_i_3_n_0),
        .I2(s_axi_tx_tkeep[2]),
        .I3(s_axi_tx_tkeep[1]),
        .I4(s_axi_tx_tkeep[0]),
        .I5(s_axi_tx_tkeep[3]),
        .O(storage_pad_r0));
  LUT1 #(
    .INIT(2'h1)) 
    storage_v_r_i_1
       (.I0(do_cc_r),
        .O(E));
  LUT6 #(
    .INIT(64'h00000000FDD5D557)) 
    storage_v_r_i_2
       (.I0(s_axi_tx_tlast),
        .I1(s_axi_tx_tkeep[3]),
        .I2(s_axi_tx_tkeep[0]),
        .I3(s_axi_tx_tkeep[1]),
        .I4(s_axi_tx_tkeep[2]),
        .I5(storage_v_r_i_3_n_0),
        .O(storage_v_r0));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    storage_v_r_i_3
       (.I0(s_axi_tx_tvalid),
        .I1(TX_DST_RDY_N_reg_0),
        .I2(in_frame_r_reg),
        .I3(idle_r_reg_0),
        .O(storage_v_r_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_TX_LL_DATAPATH" *) 
module aurora_8b10b_0_aurora_8b10b_0_TX_LL_DATAPATH
   (in_frame_r_reg_0,
    \TX_PE_DATA_V_reg[0]_0 ,
    \GEN_PAD_reg[0]_0 ,
    \TX_PE_DATA_reg[0]_0 ,
    E,
    storage_v_r0,
    user_clk,
    storage_pad_r0,
    in_frame_r_reg_1,
    in_frame_r_reg_2,
    \tx_pe_data_v_r_reg[1]_0 ,
    tx_dst_rdy,
    s_axi_tx_tvalid,
    do_cc_r,
    D,
    s_axi_tx_tdata);
  output in_frame_r_reg_0;
  output [1:0]\TX_PE_DATA_V_reg[0]_0 ;
  output [1:0]\GEN_PAD_reg[0]_0 ;
  output [31:0]\TX_PE_DATA_reg[0]_0 ;
  input [0:0]E;
  input storage_v_r0;
  input user_clk;
  input storage_pad_r0;
  input in_frame_r_reg_1;
  input in_frame_r_reg_2;
  input \tx_pe_data_v_r_reg[1]_0 ;
  input tx_dst_rdy;
  input s_axi_tx_tvalid;
  input do_cc_r;
  input [0:0]D;
  input [0:31]s_axi_tx_tdata;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]\GEN_PAD_reg[0]_0 ;
  wire [1:0]\TX_PE_DATA_V_reg[0]_0 ;
  wire [31:0]\TX_PE_DATA_reg[0]_0 ;
  wire do_cc_r;
  wire \gen_pad_r_reg_n_0_[0] ;
  wire \gen_pad_r_reg_n_0_[1] ;
  wire in_frame_r_reg_0;
  wire in_frame_r_reg_1;
  wire in_frame_r_reg_2;
  wire p_12_in;
  wire [0:31]s_axi_tx_tdata;
  wire s_axi_tx_tvalid;
  wire storage_pad_r;
  wire storage_pad_r0;
  wire [0:15]storage_r;
  wire storage_v_r;
  wire storage_v_r0;
  wire tx_dst_rdy;
  wire [0:31]tx_pe_data_r;
  wire \tx_pe_data_v_r_reg[1]_0 ;
  wire \tx_pe_data_v_r_reg_n_0_[0] ;
  wire \tx_pe_data_v_r_reg_n_0_[1] ;
  wire user_clk;

  FDRE \GEN_PAD_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_pad_r_reg_n_0_[0] ),
        .Q(\GEN_PAD_reg[0]_0 [1]),
        .R(do_cc_r));
  FDRE \GEN_PAD_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\gen_pad_r_reg_n_0_[1] ),
        .Q(\GEN_PAD_reg[0]_0 [0]),
        .R(do_cc_r));
  FDRE \TX_PE_DATA_V_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_v_r_reg_n_0_[0] ),
        .Q(\TX_PE_DATA_V_reg[0]_0 [1]),
        .R(do_cc_r));
  FDRE \TX_PE_DATA_V_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\tx_pe_data_v_r_reg_n_0_[1] ),
        .Q(\TX_PE_DATA_V_reg[0]_0 [0]),
        .R(do_cc_r));
  FDRE \TX_PE_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[0]),
        .Q(\TX_PE_DATA_reg[0]_0 [31]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[10]),
        .Q(\TX_PE_DATA_reg[0]_0 [21]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[11]),
        .Q(\TX_PE_DATA_reg[0]_0 [20]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[12]),
        .Q(\TX_PE_DATA_reg[0]_0 [19]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[13]),
        .Q(\TX_PE_DATA_reg[0]_0 [18]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[14]),
        .Q(\TX_PE_DATA_reg[0]_0 [17]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[15]),
        .Q(\TX_PE_DATA_reg[0]_0 [16]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[16]),
        .Q(\TX_PE_DATA_reg[0]_0 [15]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[17]),
        .Q(\TX_PE_DATA_reg[0]_0 [14]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[18]),
        .Q(\TX_PE_DATA_reg[0]_0 [13]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[19]),
        .Q(\TX_PE_DATA_reg[0]_0 [12]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[1]),
        .Q(\TX_PE_DATA_reg[0]_0 [30]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[20]),
        .Q(\TX_PE_DATA_reg[0]_0 [11]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[21]),
        .Q(\TX_PE_DATA_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[22]),
        .Q(\TX_PE_DATA_reg[0]_0 [9]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[23]),
        .Q(\TX_PE_DATA_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[24]),
        .Q(\TX_PE_DATA_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[25]),
        .Q(\TX_PE_DATA_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[26]),
        .Q(\TX_PE_DATA_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[27]),
        .Q(\TX_PE_DATA_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[28]),
        .Q(\TX_PE_DATA_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[29]),
        .Q(\TX_PE_DATA_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[2]),
        .Q(\TX_PE_DATA_reg[0]_0 [29]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[30]),
        .Q(\TX_PE_DATA_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[31]),
        .Q(\TX_PE_DATA_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[3]),
        .Q(\TX_PE_DATA_reg[0]_0 [28]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[4]),
        .Q(\TX_PE_DATA_reg[0]_0 [27]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[5]),
        .Q(\TX_PE_DATA_reg[0]_0 [26]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[6]),
        .Q(\TX_PE_DATA_reg[0]_0 [25]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[7]),
        .Q(\TX_PE_DATA_reg[0]_0 [24]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[8]),
        .Q(\TX_PE_DATA_reg[0]_0 [23]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_pe_data_r[9]),
        .Q(\TX_PE_DATA_reg[0]_0 [22]),
        .R(1'b0));
  FDRE \gen_pad_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(storage_pad_r),
        .Q(\gen_pad_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_pad_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(D),
        .Q(\gen_pad_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE in_frame_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(in_frame_r_reg_2),
        .Q(in_frame_r_reg_0),
        .R(in_frame_r_reg_1));
  FDRE storage_pad_r_reg
       (.C(user_clk),
        .CE(E),
        .D(storage_pad_r0),
        .Q(storage_pad_r),
        .R(1'b0));
  FDRE \storage_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[16]),
        .Q(storage_r[0]),
        .R(1'b0));
  FDRE \storage_r_reg[10] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[26]),
        .Q(storage_r[10]),
        .R(1'b0));
  FDRE \storage_r_reg[11] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[27]),
        .Q(storage_r[11]),
        .R(1'b0));
  FDRE \storage_r_reg[12] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[28]),
        .Q(storage_r[12]),
        .R(1'b0));
  FDRE \storage_r_reg[13] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[29]),
        .Q(storage_r[13]),
        .R(1'b0));
  FDRE \storage_r_reg[14] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[30]),
        .Q(storage_r[14]),
        .R(1'b0));
  FDRE \storage_r_reg[15] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[31]),
        .Q(storage_r[15]),
        .R(1'b0));
  FDRE \storage_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[17]),
        .Q(storage_r[1]),
        .R(1'b0));
  FDRE \storage_r_reg[2] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[18]),
        .Q(storage_r[2]),
        .R(1'b0));
  FDRE \storage_r_reg[3] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[19]),
        .Q(storage_r[3]),
        .R(1'b0));
  FDRE \storage_r_reg[4] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[20]),
        .Q(storage_r[4]),
        .R(1'b0));
  FDRE \storage_r_reg[5] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[21]),
        .Q(storage_r[5]),
        .R(1'b0));
  FDRE \storage_r_reg[6] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[22]),
        .Q(storage_r[6]),
        .R(1'b0));
  FDRE \storage_r_reg[7] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[23]),
        .Q(storage_r[7]),
        .R(1'b0));
  FDRE \storage_r_reg[8] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[24]),
        .Q(storage_r[8]),
        .R(1'b0));
  FDRE \storage_r_reg[9] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[25]),
        .Q(storage_r[9]),
        .R(1'b0));
  FDRE storage_v_r_reg
       (.C(user_clk),
        .CE(E),
        .D(storage_v_r0),
        .Q(storage_v_r),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[0]),
        .Q(tx_pe_data_r[0]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[10]),
        .Q(tx_pe_data_r[10]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[11]),
        .Q(tx_pe_data_r[11]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[12]),
        .Q(tx_pe_data_r[12]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[13]),
        .Q(tx_pe_data_r[13]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[14]),
        .Q(tx_pe_data_r[14]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[15]),
        .Q(tx_pe_data_r[15]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[16] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[0]),
        .Q(tx_pe_data_r[16]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[17] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[1]),
        .Q(tx_pe_data_r[17]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[18] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[2]),
        .Q(tx_pe_data_r[18]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[19] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[3]),
        .Q(tx_pe_data_r[19]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[1]),
        .Q(tx_pe_data_r[1]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[20] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[4]),
        .Q(tx_pe_data_r[20]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[21] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[5]),
        .Q(tx_pe_data_r[21]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[22] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[6]),
        .Q(tx_pe_data_r[22]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[23] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[7]),
        .Q(tx_pe_data_r[23]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[24] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[8]),
        .Q(tx_pe_data_r[24]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[25] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[9]),
        .Q(tx_pe_data_r[25]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[26] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[10]),
        .Q(tx_pe_data_r[26]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[27] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[11]),
        .Q(tx_pe_data_r[27]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[28] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[12]),
        .Q(tx_pe_data_r[28]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[29] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[13]),
        .Q(tx_pe_data_r[29]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[2]),
        .Q(tx_pe_data_r[2]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[30] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[14]),
        .Q(tx_pe_data_r[30]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[31] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[15]),
        .Q(tx_pe_data_r[31]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[3]),
        .Q(tx_pe_data_r[3]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[4]),
        .Q(tx_pe_data_r[4]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[5]),
        .Q(tx_pe_data_r[5]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[6]),
        .Q(tx_pe_data_r[6]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[7]),
        .Q(tx_pe_data_r[7]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[8]),
        .Q(tx_pe_data_r[8]),
        .R(1'b0));
  FDRE \tx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[9]),
        .Q(tx_pe_data_r[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0D00)) 
    \tx_pe_data_v_r[1]_i_1 
       (.I0(\tx_pe_data_v_r_reg[1]_0 ),
        .I1(in_frame_r_reg_0),
        .I2(tx_dst_rdy),
        .I3(s_axi_tx_tvalid),
        .O(p_12_in));
  FDRE \tx_pe_data_v_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(storage_v_r),
        .Q(\tx_pe_data_v_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \tx_pe_data_v_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(p_12_in),
        .Q(\tx_pe_data_v_r_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_VALID_DATA_COUNTER" *) 
module aurora_8b10b_0_aurora_8b10b_0_VALID_DATA_COUNTER
   (D,
    Q,
    end_storage_r_reg,
    FRAME_ERR_RESULT0,
    excess_c,
    end_storage_r0,
    \STORAGE_CE_reg[0] ,
    stage_3_end_storage_r,
    stage_2_start_with_data_r,
    stage_2_frame_err_r,
    stage_2_end_after_start_r,
    stage_2_end_before_start_r,
    storage_not_empty_c__0,
    SR,
    \COUNT_reg[0]_0 ,
    user_clk);
  output [1:0]D;
  output [1:0]Q;
  output [0:0]end_storage_r_reg;
  output FRAME_ERR_RESULT0;
  output excess_c;
  output end_storage_r0;
  input [1:0]\STORAGE_CE_reg[0] ;
  input stage_3_end_storage_r;
  input stage_2_start_with_data_r;
  input stage_2_frame_err_r;
  input stage_2_end_after_start_r;
  input stage_2_end_before_start_r;
  input storage_not_empty_c__0;
  input [0:0]SR;
  input [1:0]\COUNT_reg[0]_0 ;
  input user_clk;

  wire [1:0]\COUNT_reg[0]_0 ;
  wire [1:0]D;
  wire FRAME_ERR_RESULT0;
  wire FRAME_ERR_RESULT2;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [1:0]\STORAGE_CE_reg[0] ;
  wire end_storage_r0;
  wire [0:0]end_storage_r_reg;
  wire excess_c;
  wire stage_2_end_after_start_r;
  wire stage_2_end_before_start_r;
  wire stage_2_frame_err_r;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire storage_not_empty_c__0;
  wire user_clk;

  FDRE \COUNT_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\COUNT_reg[0]_0 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \COUNT_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\COUNT_reg[0]_0 [0]),
        .Q(Q[0]),
        .R(SR));
  LUT6 #(
    .INIT(64'hCCFECCFCFFFECCFC)) 
    FRAME_ERR_RESULT_i_1
       (.I0(FRAME_ERR_RESULT2),
        .I1(stage_2_frame_err_r),
        .I2(stage_2_end_after_start_r),
        .I3(stage_2_start_with_data_r),
        .I4(stage_2_end_before_start_r),
        .I5(storage_not_empty_c__0),
        .O(FRAME_ERR_RESULT0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'hFEE0)) 
    SRC_RDY_N_i_3
       (.I0(Q[0]),
        .I1(\STORAGE_CE_reg[0] [0]),
        .I2(\STORAGE_CE_reg[0] [1]),
        .I3(Q[1]),
        .O(excess_c));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFAEF)) 
    \STORAGE_CE[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\STORAGE_CE_reg[0] [1]),
        .I3(\STORAGE_CE_reg[0] [0]),
        .I4(stage_3_end_storage_r),
        .I5(stage_2_start_with_data_r),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \STORAGE_CE[1]_i_1 
       (.I0(Q[1]),
        .I1(\STORAGE_CE_reg[0] [0]),
        .I2(Q[0]),
        .I3(\STORAGE_CE_reg[0] [1]),
        .I4(stage_3_end_storage_r),
        .I5(stage_2_start_with_data_r),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hF404)) 
    end_storage_r_i_1
       (.I0(FRAME_ERR_RESULT2),
        .I1(stage_2_end_before_start_r),
        .I2(stage_2_start_with_data_r),
        .I3(stage_2_end_after_start_r),
        .O(end_storage_r0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    end_storage_r_i_2
       (.I0(Q[0]),
        .I1(\STORAGE_CE_reg[0] [0]),
        .I2(\STORAGE_CE_reg[0] [1]),
        .I3(Q[1]),
        .O(FRAME_ERR_RESULT2));
  LUT6 #(
    .INIT(64'hEFFFFEEF10011000)) 
    \storage_count_r[0]_i_1 
       (.I0(stage_3_end_storage_r),
        .I1(stage_2_start_with_data_r),
        .I2(Q[0]),
        .I3(\STORAGE_CE_reg[0] [0]),
        .I4(\STORAGE_CE_reg[0] [1]),
        .I5(Q[1]),
        .O(end_storage_r_reg));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync
   (AR,
    gt_reset,
    init_clk_in);
  output [0:0]AR;
  input gt_reset;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign AR[0] = s_level_out_d3;
  assign p_level_in_int = gt_reset;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_0
   (reset,
    init_clk_in);
  input reset;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign p_level_in_int = reset;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_1
   (out,
    reset,
    user_clk);
  output out;
  input reset;
  input user_clk;

  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  assign p_level_in_int = reset;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_10
   (out,
    user_clk);
  output out;
  input user_clk;

  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_14
   (SR,
    mmcm_lock_reclocked_reg,
    init_clk_in,
    mmcm_lock_reclocked,
    mmcm_lock_reclocked_reg_0);
  output [0:0]SR;
  output mmcm_lock_reclocked_reg;
  input init_clk_in;
  input mmcm_lock_reclocked;
  input mmcm_lock_reclocked_reg_0;

  wire [0:0]SR;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;
  wire mmcm_lock_reclocked_reg_0;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[9]_i_1__0 
       (.I0(s_level_out_d3),
        .O(SR));
  LUT3 #(
    .INIT(8'hE0)) 
    mmcm_lock_reclocked_i_1__0
       (.I0(mmcm_lock_reclocked),
        .I1(mmcm_lock_reclocked_reg_0),
        .I2(s_level_out_d3),
        .O(mmcm_lock_reclocked_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_15
   (E,
    \FSM_sequential_rx_state_reg[1] ,
    quad1_common_lock_in,
    init_clk_in,
    \FSM_sequential_rx_state_reg[0] ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    \FSM_sequential_rx_state_reg[0]_1 ,
    Q,
    \FSM_sequential_rx_state_reg[0]_2 ,
    rxresetdone_s3,
    reset_time_out_reg,
    gtrxreset_i_0,
    reset_time_out_reg_0,
    reset_time_out_reg_1);
  output [0:0]E;
  output \FSM_sequential_rx_state_reg[1] ;
  input quad1_common_lock_in;
  input init_clk_in;
  input \FSM_sequential_rx_state_reg[0] ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input \FSM_sequential_rx_state_reg[0]_1 ;
  input [3:0]Q;
  input \FSM_sequential_rx_state_reg[0]_2 ;
  input rxresetdone_s3;
  input reset_time_out_reg;
  input gtrxreset_i_0;
  input reset_time_out_reg_0;
  input reset_time_out_reg_1;

  wire [0:0]E;
  wire \FSM_sequential_rx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[0]_1 ;
  wire \FSM_sequential_rx_state_reg[0]_2 ;
  wire \FSM_sequential_rx_state_reg[1] ;
  wire [3:0]Q;
  wire gtrxreset_i_0;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire rxresetdone_s3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign p_level_in_int = quad1_common_lock_in;
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \FSM_sequential_rx_state[3]_i_1 
       (.I0(\FSM_sequential_rx_state_reg[0] ),
        .I1(\FSM_sequential_rx_state_reg[0]_0 ),
        .I2(\FSM_sequential_rx_state_reg[0]_1 ),
        .I3(Q[0]),
        .I4(\FSM_sequential_rx_state[3]_i_6_n_0 ),
        .I5(\FSM_sequential_rx_state_reg[0]_2 ),
        .O(E));
  LUT5 #(
    .INIT(32'h000088F0)) 
    \FSM_sequential_rx_state[3]_i_6 
       (.I0(Q[1]),
        .I1(rxresetdone_s3),
        .I2(s_level_out_d3),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\FSM_sequential_rx_state[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    reset_time_out_i_1__0
       (.I0(reset_time_out_reg),
        .I1(\FSM_sequential_rx_state[3]_i_6_n_0 ),
        .I2(gtrxreset_i_0),
        .I3(Q[1]),
        .I4(reset_time_out_reg_0),
        .I5(reset_time_out_reg_1),
        .O(\FSM_sequential_rx_state_reg[1] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_16
   (init_clk_in);
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_22
   (out,
    in0,
    drpclk_in);
  output out;
  input in0;
  input drpclk_in;

  wire drpclk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d3;
  assign p_level_in_int = in0;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_24
   (out,
    pll_not_locked,
    user_clk);
  output out;
  input pll_not_locked;
  input user_clk;

  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  assign p_level_in_int = pll_not_locked;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_3
   (SR,
    mmcm_lock_reclocked_reg,
    init_clk_in,
    pll_not_locked,
    mmcm_lock_reclocked,
    mmcm_lock_reclocked_reg_0);
  output [0:0]SR;
  output mmcm_lock_reclocked_reg;
  input init_clk_in;
  input pll_not_locked;
  input mmcm_lock_reclocked;
  input mmcm_lock_reclocked_reg_0;

  wire [0:0]SR;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;
  wire mmcm_lock_reclocked_reg_0;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire pll_not_locked;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[9]_i_1 
       (.I0(s_level_out_d3),
        .O(SR));
  LUT3 #(
    .INIT(8'hE0)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(mmcm_lock_reclocked_reg_0),
        .I2(s_level_out_d3),
        .O(mmcm_lock_reclocked_reg));
  LUT1 #(
    .INIT(2'h1)) 
    p_level_in_int_inferred_i_1
       (.I0(pll_not_locked),
        .O(p_level_in_int));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_4
   (E,
    \FSM_sequential_tx_state_reg[0] ,
    quad1_common_lock_in,
    init_clk_in,
    Q,
    txresetdone_s3,
    \FSM_sequential_tx_state_reg[0]_0 ,
    \FSM_sequential_tx_state_reg[0]_1 ,
    \FSM_sequential_tx_state_reg[0]_2 ,
    \FSM_sequential_tx_state_reg[0]_3 ,
    \FSM_sequential_tx_state_reg[0]_4 ,
    \FSM_sequential_tx_state_reg[0]_5 ,
    \FSM_sequential_tx_state_reg[0]_6 ,
    mmcm_lock_reclocked,
    reset_time_out);
  output [0:0]E;
  output \FSM_sequential_tx_state_reg[0] ;
  input quad1_common_lock_in;
  input init_clk_in;
  input [3:0]Q;
  input txresetdone_s3;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input \FSM_sequential_tx_state_reg[0]_1 ;
  input \FSM_sequential_tx_state_reg[0]_2 ;
  input \FSM_sequential_tx_state_reg[0]_3 ;
  input \FSM_sequential_tx_state_reg[0]_4 ;
  input \FSM_sequential_tx_state_reg[0]_5 ;
  input \FSM_sequential_tx_state_reg[0]_6 ;
  input mmcm_lock_reclocked;
  input reset_time_out;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[0]_1 ;
  wire \FSM_sequential_tx_state_reg[0]_2 ;
  wire \FSM_sequential_tx_state_reg[0]_3 ;
  wire \FSM_sequential_tx_state_reg[0]_4 ;
  wire \FSM_sequential_tx_state_reg[0]_5 ;
  wire \FSM_sequential_tx_state_reg[0]_6 ;
  wire [3:0]Q;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire reset_time_out;
  wire reset_time_out_0;
  wire reset_time_out_i_3__0_n_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire txresetdone_s3;

  assign p_level_in_int = quad1_common_lock_in;
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    \FSM_sequential_tx_state[3]_i_1 
       (.I0(\FSM_sequential_tx_state_reg[0]_0 ),
        .I1(\FSM_sequential_tx_state[3]_i_4_n_0 ),
        .I2(\FSM_sequential_tx_state_reg[0]_1 ),
        .I3(\FSM_sequential_tx_state_reg[0]_2 ),
        .I4(\FSM_sequential_tx_state_reg[0]_3 ),
        .I5(\FSM_sequential_tx_state_reg[0]_4 ),
        .O(E));
  LUT6 #(
    .INIT(64'h00000000AA00CC30)) 
    \FSM_sequential_tx_state[3]_i_4 
       (.I0(txresetdone_s3),
        .I1(s_level_out_d3),
        .I2(\FSM_sequential_tx_state_reg[0]_5 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\FSM_sequential_tx_state_reg[0]_6 ),
        .O(\FSM_sequential_tx_state[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT6 #(
    .INIT(64'hFBFBFBAA080808AA)) 
    reset_time_out_i_1
       (.I0(reset_time_out_0),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(reset_time_out),
        .O(\FSM_sequential_tx_state_reg[0] ));
  LUT6 #(
    .INIT(64'hBAAAAAFFBAAAAAAA)) 
    reset_time_out_i_2__0
       (.I0(reset_time_out_i_3__0_n_0),
        .I1(Q[3]),
        .I2(txresetdone_s3),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(reset_time_out_0));
  LUT6 #(
    .INIT(64'h0075007500FF0075)) 
    reset_time_out_i_3__0
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(s_level_out_d3),
        .I3(Q[3]),
        .I4(mmcm_lock_reclocked),
        .I5(Q[1]),
        .O(reset_time_out_i_3__0_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_5
   (init_clk_in);
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0
   (out,
    GTRXRESET_OUT,
    user_clk,
    init_clk_in);
  output out;
  input GTRXRESET_OUT;
  input user_clk;
  input init_clk_in;

  wire GTRXRESET_OUT;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GTRXRESET_OUT),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_11
   (rxpmaresetdone_i,
    user_clk,
    init_clk_in);
  input rxpmaresetdone_i;
  input user_clk;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire rxpmaresetdone_i;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rxpmaresetdone_i),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_12
   (txpmaresetdone_i,
    user_clk,
    init_clk_in);
  input txpmaresetdone_i;
  input user_clk;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire txpmaresetdone_i;
  wire user_clk;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(txpmaresetdone_i),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_13
   (out,
    rxfsm_rxresetdone_r,
    user_clk,
    init_clk_in);
  output out;
  input rxfsm_rxresetdone_r;
  input user_clk;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire rxfsm_rxresetdone_r;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rxfsm_rxresetdone_r),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_17
   (out,
    p_level_in_d1_cdc_from_reg_0,
    init_clk_in,
    user_clk);
  output out;
  input p_level_in_d1_cdc_from_reg_0;
  input init_clk_in;
  input user_clk;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_d1_cdc_from_reg_0;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_d1_cdc_from_reg_0),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_18
   (out,
    rx_fsm_reset_done_int,
    init_clk_in,
    user_clk);
  output out;
  input rx_fsm_reset_done_int;
  input init_clk_in;
  input user_clk;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire rx_fsm_reset_done_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_19
   (out,
    p_level_in_d1_cdc_from_reg_0,
    user_clk,
    init_clk_in);
  output out;
  input p_level_in_d1_cdc_from_reg_0;
  input user_clk;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_d1_cdc_from_reg_0;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_d1_cdc_from_reg_0),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_2
   (out,
    txfsm_txresetdone_r,
    user_clk,
    init_clk_in);
  output out;
  input txfsm_txresetdone_r;
  input user_clk;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire txfsm_txresetdone_r;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(txfsm_txresetdone_r),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_20
   (out,
    SR,
    init_clk_in,
    drpclk_in);
  output out;
  input [0:0]SR;
  input init_clk_in;
  input drpclk_in;

  wire [0:0]SR;
  wire drpclk_in;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(SR),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_21
   (SR,
    gt_common_reset_out,
    init_clk_in,
    drpclk_in);
  output [0:0]SR;
  input gt_common_reset_out;
  input init_clk_in;
  input drpclk_in;

  wire drpclk_in;
  wire gt_common_reset_out;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign SR[0] = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gt_common_reset_out),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_23
   (out,
    link_reset_r,
    init_clk_in,
    user_clk);
  output out;
  input link_reset_r;
  input init_clk_in;
  input user_clk;

  wire init_clk_in;
  wire link_reset_r;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_r),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_25
   (out,
    tx_lock_comb_r,
    init_clk_in,
    user_clk);
  output out;
  input tx_lock_comb_r;
  input init_clk_in;
  input user_clk;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire tx_lock_comb_r;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_lock_comb_r),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_27
   (out,
    rx_cc_extend_r2,
    user_clk,
    init_clk_in);
  output out;
  input rx_cc_extend_r2;
  input user_clk;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire rx_cc_extend_r2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r2),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_6
   (run_phase_alignment_int,
    init_clk_in,
    user_clk);
  input run_phase_alignment_int;
  input init_clk_in;
  input user_clk;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  wire run_phase_alignment_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_7
   (out,
    user_clk,
    init_clk_in);
  output out;
  input user_clk;
  input init_clk_in;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_8
   (tx_resetdone_out,
    s_level_out_d3_reg_0,
    tx_fsm_reset_done_int,
    init_clk_in,
    user_clk);
  output tx_resetdone_out;
  output s_level_out_d3_reg_0;
  input tx_fsm_reset_done_int;
  input init_clk_in;
  input user_clk;

  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  wire s_level_out_d3_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire tx_fsm_reset_done_int;
  wire user_clk;

  assign tx_resetdone_out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h1)) 
    gt_txresetdone_r_i_1
       (.I0(s_level_out_d3),
        .O(s_level_out_d3_reg_0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_9
   (out,
    gtrxreset_i,
    init_clk_in,
    user_clk);
  output out;
  input gtrxreset_i;
  input init_clk_in;
  input user_clk;

  wire gtrxreset_i;
  wire init_clk_in;
  (* RTL_KEEP = "true" *) wire p_level_in_d1_cdc_from;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_8b10b_0_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_8b10b_0_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_8b10b_0_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_level_in_d1_cdc_from_inst
       (.I0(p_level_in_d1_cdc_from),
        .O(p_level_in_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    p_level_in_d1_cdc_from_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_i),
        .Q(p_level_in_d1_cdc_from),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_8b10b_0_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* CC_FREQ_FACTOR = "5'b01100" *) (* EXAMPLE_SIMULATION = "0" *) (* ORIG_REF_NAME = "aurora_8b10b_0_core" *) 
(* SIM_GTRESET_SPEEDUP = "FALSE" *) 
module aurora_8b10b_0_aurora_8b10b_0_core
   (s_axi_tx_tdata,
    s_axi_tx_tkeep,
    s_axi_tx_tvalid,
    s_axi_tx_tlast,
    s_axi_tx_tready,
    m_axi_rx_tdata,
    m_axi_rx_tkeep,
    m_axi_rx_tvalid,
    m_axi_rx_tlast,
    rxp,
    rxn,
    txp,
    txn,
    gt_refclk1,
    hard_err,
    soft_err,
    frame_err,
    channel_up,
    lane_up,
    user_clk,
    sync_clk,
    reset,
    power_down,
    loopback,
    gt_reset,
    init_clk_in,
    pll_not_locked,
    tx_resetdone_out,
    rx_resetdone_out,
    link_reset_out,
    drpclk_in,
    drpaddr_in,
    drpdi_in,
    drpdo_out,
    drpen_in,
    drprdy_out,
    drpwe_in,
    tx_out_clk,
    gt_common_reset_out,
    gt0_pll0refclklost_in,
    quad1_common_lock_in,
    gt0_pll0outclk_in,
    gt0_pll1outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outrefclk_in,
    sys_reset_out,
    tx_lock);
  input [0:31]s_axi_tx_tdata;
  input [0:3]s_axi_tx_tkeep;
  input s_axi_tx_tvalid;
  input s_axi_tx_tlast;
  output s_axi_tx_tready;
  output [0:31]m_axi_rx_tdata;
  output [0:3]m_axi_rx_tkeep;
  output m_axi_rx_tvalid;
  output m_axi_rx_tlast;
  input rxp;
  input rxn;
  output txp;
  output txn;
  input gt_refclk1;
  output hard_err;
  output soft_err;
  output frame_err;
  output channel_up;
  output lane_up;
  input user_clk;
  input sync_clk;
  input reset;
  input power_down;
  input [2:0]loopback;
  input gt_reset;
  input init_clk_in;
  input pll_not_locked;
  output tx_resetdone_out;
  output rx_resetdone_out;
  output link_reset_out;
  input drpclk_in;
  input [8:0]drpaddr_in;
  input [15:0]drpdi_in;
  output [15:0]drpdo_out;
  input drpen_in;
  output drprdy_out;
  input drpwe_in;
  output tx_out_clk;
  output gt_common_reset_out;
  input gt0_pll0refclklost_in;
  input quad1_common_lock_in;
  input gt0_pll0outclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outrefclk_in;
  output sys_reset_out;
  output tx_lock;

  wire \<const1> ;
  wire GTRXRESET_OUT;
  wire START_RX;
  wire aurora_8b10b_0_aurora_lane_4byte_0_i_n_12;
  wire aurora_8b10b_0_aurora_lane_4byte_0_i_n_13;
  wire aurora_8b10b_0_aurora_lane_4byte_0_i_n_14;
  wire aurora_8b10b_0_aurora_lane_4byte_0_i_n_15;
  wire aurora_8b10b_0_aurora_lane_4byte_0_i_n_16;
  wire aurora_8b10b_0_aurora_lane_4byte_0_i_n_17;
  wire aurora_8b10b_0_aurora_lane_4byte_0_i_n_18;
  wire aurora_8b10b_0_aurora_lane_4byte_0_i_n_19;
  wire aurora_8b10b_0_aurora_lane_4byte_0_i_n_20;
  wire aurora_8b10b_0_aurora_lane_4byte_0_i_n_25;
  wire aurora_8b10b_0_aurora_lane_4byte_0_i_n_5;
  wire aurora_8b10b_0_aurora_lane_4byte_0_i_n_6;
  wire \aurora_8b10b_0_err_detect_4byte_i/hard_err_gt0 ;
  wire [3:1]\aurora_8b10b_0_err_detect_4byte_i/p_6_out ;
  wire aurora_8b10b_0_global_logic_i_n_18;
  wire aurora_8b10b_0_global_logic_i_n_19;
  wire \aurora_8b10b_0_lane_init_sm_4byte_i/begin_r ;
  wire \aurora_8b10b_0_lane_init_sm_4byte_i/consecutive_commas_r ;
  wire axi_to_ll_pdu_i_n_0;
  wire channel_up;
  wire do_cc_i;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire enable_err_detect_i;
  wire frame_err;
  wire gen_a_i;
  wire gen_cc_i;
  wire gen_ecp_i;
  wire [0:3]gen_k_i;
  wire [0:1]gen_pad_i;
  wire [0:3]gen_r_i;
  wire [0:0]gen_scp_striped_i;
  wire [1:3]gen_v_i;
  wire got_v_i;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire gt_common_reset_out;
  wire gt_reset;
  wire gt_reset_sync_init_clk;
  wire gt_wrapper_i_n_64;
  wire gt_wrapper_i_n_65;
  wire gt_wrapper_i_n_66;
  wire gt_wrapper_i_n_67;
  wire gt_wrapper_i_n_68;
  wire gt_wrapper_i_n_69;
  wire gt_wrapper_i_n_70;
  wire gt_wrapper_i_n_71;
  wire gt_wrapper_i_n_72;
  wire gt_wrapper_i_n_73;
  wire gt_wrapper_i_n_74;
  wire gt_wrapper_i_n_75;
  wire gt_wrapper_i_n_76;
  wire gt_wrapper_i_n_77;
  wire gt_wrapper_i_n_78;
  wire gt_wrapper_i_n_79;
  wire gt_wrapper_i_n_80;
  wire gt_wrapper_i_n_81;
  wire gt_wrapper_i_n_82;
  wire gt_wrapper_i_n_84;
  wire gt_wrapper_i_n_86;
  wire gt_wrapper_i_n_89;
  wire gt_wrapper_i_n_90;
  wire hard_err;
  wire hard_err_i;
  wire init_clk_in;
  wire lane_up;
  wire link_reset_out;
  wire link_reset_r;
  wire [2:0]loopback;
  wire [0:31]m_axi_rx_tdata;
  wire [1:3]\^m_axi_rx_tkeep ;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire new_pkt_r;
  wire pll_not_locked;
  wire power_down;
  wire quad1_common_lock_in;
  wire reset;
  wire reset_lanes_i;
  wire reset_sync_user_clk;
  wire rx_cc_i;
  wire [3:0]rx_char_is_comma_i;
  wire [3:0]rx_char_is_k_i;
  wire [31:0]rx_data_i;
  wire [0:1]rx_ecp_striped_i;
  wire rx_eof;
  wire \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/after_scp_select_c_0 ;
  wire \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/after_scp_select_c_1 ;
  wire rx_ll_rst;
  wire [0:31]rx_pe_data_striped_i;
  wire [0:1]rx_pe_data_v_striped_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire [0:1]rx_rem_int;
  wire rx_resetdone_out;
  wire [0:1]rx_scp_striped_i;
  wire rxn;
  wire rxp;
  wire [0:31]s_axi_tx_tdata;
  wire [0:3]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire soft_err;
  wire [0:1]soft_err_i;
  wire sync_clk;
  wire sys_reset_out;
  wire [3:0]tx_char_is_k_i;
  wire [31:0]tx_data_i;
  wire tx_dst_rdy;
  wire tx_lock;
  wire tx_out_clk;
  wire [0:31]tx_pe_data_i;
  wire [0:1]tx_pe_data_v_i;
  wire tx_resetdone_out;
  wire txn;
  wire txp;
  wire user_clk;

  assign m_axi_rx_tkeep[0] = \<const1> ;
  assign m_axi_rx_tkeep[1:3] = \^m_axi_rx_tkeep [1:3];
  VCC VCC
       (.P(\<const1> ));
  aurora_8b10b_0_aurora_8b10b_0_AURORA_LANE_4BYTE aurora_8b10b_0_aurora_lane_4byte_0_i
       (.\CHAR_IS_K_OUT_reg[3] ({tx_char_is_k_i[0],tx_char_is_k_i[1],tx_char_is_k_i[2],tx_char_is_k_i[3]}),
        .D(rx_cc_i),
        .\DOUT_reg[0] (channel_up),
        .GEN_A(gen_a_i),
        .GEN_ECP(gen_ecp_i),
        .GEN_SCP(gen_scp_striped_i),
        .Q({aurora_8b10b_0_aurora_lane_4byte_0_i_n_13,aurora_8b10b_0_aurora_lane_4byte_0_i_n_14,aurora_8b10b_0_aurora_lane_4byte_0_i_n_15,aurora_8b10b_0_aurora_lane_4byte_0_i_n_16,aurora_8b10b_0_aurora_lane_4byte_0_i_n_17,aurora_8b10b_0_aurora_lane_4byte_0_i_n_18}),
        .RXCHARISK(rx_char_is_k_i),
        .RXDATA(rx_data_i),
        .\RX_CHAR_IS_COMMA_R_reg[3] (rx_char_is_comma_i),
        .\RX_ECP_reg[0] ({rx_ecp_striped_i[0],rx_ecp_striped_i[1]}),
        .\RX_ECP_reg[0]_0 (aurora_8b10b_0_aurora_lane_4byte_0_i_n_25),
        .\RX_ECP_reg[1] (aurora_8b10b_0_aurora_lane_4byte_0_i_n_20),
        .\RX_PAD_reg[1] (aurora_8b10b_0_aurora_lane_4byte_0_i_n_19),
        .\RX_PE_DATA_V_reg[0] ({rx_pe_data_v_striped_i[0],rx_pe_data_v_striped_i[1]}),
        .\RX_SCP_reg[0] ({rx_scp_striped_i[0],rx_scp_striped_i[1]}),
        .\SOFT_ERR_reg[0] ({soft_err_i[0],soft_err_i[1]}),
        .SS(aurora_8b10b_0_global_logic_i_n_18),
        .TXDATA(tx_data_i),
        .after_scp_select_c_0(\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/after_scp_select_c_0 ),
        .after_scp_select_c_1(\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/after_scp_select_c_1 ),
        .begin_r(\aurora_8b10b_0_lane_init_sm_4byte_i/begin_r ),
        .consecutive_commas_r(\aurora_8b10b_0_lane_init_sm_4byte_i/consecutive_commas_r ),
        .\data_nxt2_reg[0] ({rx_pe_data_striped_i[0],rx_pe_data_striped_i[1],rx_pe_data_striped_i[2],rx_pe_data_striped_i[3],rx_pe_data_striped_i[4],rx_pe_data_striped_i[5],rx_pe_data_striped_i[6],rx_pe_data_striped_i[7],rx_pe_data_striped_i[8],rx_pe_data_striped_i[9],rx_pe_data_striped_i[10],rx_pe_data_striped_i[11],rx_pe_data_striped_i[12],rx_pe_data_striped_i[13],rx_pe_data_striped_i[14],rx_pe_data_striped_i[15],rx_pe_data_striped_i[16],rx_pe_data_striped_i[17],rx_pe_data_striped_i[18],rx_pe_data_striped_i[19],rx_pe_data_striped_i[20],rx_pe_data_striped_i[21],rx_pe_data_striped_i[22],rx_pe_data_striped_i[23],rx_pe_data_striped_i[24],rx_pe_data_striped_i[25],rx_pe_data_striped_i[26],rx_pe_data_striped_i[27],rx_pe_data_striped_i[28],rx_pe_data_striped_i[29],rx_pe_data_striped_i[30],rx_pe_data_striped_i[31]}),
        .ena_comma_align_i(ena_comma_align_i),
        .enable_err_detect_i(enable_err_detect_i),
        .gen_cc_i(gen_cc_i),
        .\gen_k_r_reg[0] ({gen_k_i[0],gen_k_i[1],gen_k_i[2],gen_k_i[3]}),
        .\gen_pad_r_reg[0] ({gen_pad_i[0],gen_pad_i[1]}),
        .\gen_r_r_reg[0] ({gen_r_i[0],gen_r_i[1],gen_r_i[2],gen_r_i[3]}),
        .\gen_v_r_reg[1] ({gen_v_i[1],gen_v_i[2],gen_v_i[3]}),
        .got_v_i(got_v_i),
        .hard_err_gt0(\aurora_8b10b_0_err_detect_4byte_i/hard_err_gt0 ),
        .hard_err_i(hard_err_i),
        .init_clk_in(init_clk_in),
        .lane_up(lane_up),
        .\left_align_select_r_reg[0] (aurora_8b10b_0_aurora_lane_4byte_0_i_n_5),
        .\left_align_select_r_reg[0]_0 (gt_wrapper_i_n_64),
        .\left_align_select_r_reg[1] (aurora_8b10b_0_aurora_lane_4byte_0_i_n_6),
        .\left_align_select_r_reg[1]_0 (gt_wrapper_i_n_65),
        .link_reset_out(link_reset_out),
        .ready_r_reg(aurora_8b10b_0_aurora_lane_4byte_0_i_n_12),
        .reset_count_r_reg(gt_wrapper_i_n_67),
        .reset_count_r_reg_0(gt_wrapper_i_n_66),
        .reset_lanes_i(reset_lanes_i),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .\soft_err_r_reg[0] ({\aurora_8b10b_0_err_detect_4byte_i/p_6_out [3],gt_wrapper_i_n_84,\aurora_8b10b_0_err_detect_4byte_i/p_6_out [1],gt_wrapper_i_n_86}),
        .\tx_pe_data_r_reg[0] ({tx_pe_data_i[0],tx_pe_data_i[1],tx_pe_data_i[2],tx_pe_data_i[3],tx_pe_data_i[4],tx_pe_data_i[5],tx_pe_data_i[6],tx_pe_data_i[7],tx_pe_data_i[8],tx_pe_data_i[9],tx_pe_data_i[10],tx_pe_data_i[11],tx_pe_data_i[12],tx_pe_data_i[13],tx_pe_data_i[14],tx_pe_data_i[15],tx_pe_data_i[16],tx_pe_data_i[17],tx_pe_data_i[18],tx_pe_data_i[19],tx_pe_data_i[20],tx_pe_data_i[21],tx_pe_data_i[22],tx_pe_data_i[23],tx_pe_data_i[24],tx_pe_data_i[25],tx_pe_data_i[26],tx_pe_data_i[27],tx_pe_data_i[28],tx_pe_data_i[29],tx_pe_data_i[30],tx_pe_data_i[31]}),
        .\tx_pe_data_v_r_reg[0] ({tx_pe_data_v_i[0],tx_pe_data_v_i[1]}),
        .user_clk(user_clk),
        .\word_aligned_control_bits_r_reg[3] (gt_wrapper_i_n_82),
        .\word_aligned_data_r_reg[18] ({gt_wrapper_i_n_68,gt_wrapper_i_n_69,gt_wrapper_i_n_70,gt_wrapper_i_n_71,gt_wrapper_i_n_72,gt_wrapper_i_n_73}),
        .\word_aligned_data_r_reg[24] ({gt_wrapper_i_n_74,gt_wrapper_i_n_75,gt_wrapper_i_n_76,gt_wrapper_i_n_77,gt_wrapper_i_n_78,gt_wrapper_i_n_79,gt_wrapper_i_n_80,gt_wrapper_i_n_81}));
  aurora_8b10b_0_aurora_8b10b_0_GLOBAL_LOGIC aurora_8b10b_0_global_logic_i
       (.CHANNEL_UP_reg(channel_up),
        .CHANNEL_UP_reg_0(aurora_8b10b_0_global_logic_i_n_19),
        .D(rx_cc_i),
        .GEN_A(gen_a_i),
        .GTRXRESET_OUT(GTRXRESET_OUT),
        .SR(rx_ll_rst),
        .SS(aurora_8b10b_0_global_logic_i_n_18),
        .START_RX(START_RX),
        .\downcounter_r_reg[0] (sys_reset_out),
        .gen_k_flop_0_i({gen_k_i[0],gen_k_i[1],gen_k_i[2],gen_k_i[3]}),
        .gen_r_flop_0_i({gen_r_i[0],gen_r_i[1],gen_r_i[2],gen_r_i[3]}),
        .gen_v_flop_1_i({gen_v_i[1],gen_v_i[2],gen_v_i[3]}),
        .got_v_i(got_v_i),
        .hard_err(hard_err),
        .hard_err_i(hard_err_i),
        .lane_up(lane_up),
        .power_down(power_down),
        .reset_lanes_i(reset_lanes_i),
        .soft_err(soft_err),
        .\soft_err_r_reg[0] ({soft_err_i[0],soft_err_i[1]}),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_RX_LL aurora_8b10b_0_rx_ll_i
       (.D({rx_scp_striped_i[0],rx_scp_striped_i[1]}),
        .\DEFRAMED_DATA_V_reg[0] ({rx_pe_data_v_striped_i[0],rx_pe_data_v_striped_i[1]}),
        .\IN_FRAME_reg[1] (aurora_8b10b_0_aurora_lane_4byte_0_i_n_25),
        .Q({rx_rem_int[0],rx_rem_int[1]}),
        .SR(rx_ll_rst),
        .START_RX(START_RX),
        .after_scp_select_c_0(\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/after_scp_select_c_0 ),
        .after_scp_select_c_1(\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/after_scp_select_c_1 ),
        .frame_err(frame_err),
        .in_frame_r_reg(aurora_8b10b_0_aurora_lane_4byte_0_i_n_20),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .rx_eof(rx_eof),
        .\stage_1_data_r_reg[0] ({rx_pe_data_striped_i[0],rx_pe_data_striped_i[1],rx_pe_data_striped_i[2],rx_pe_data_striped_i[3],rx_pe_data_striped_i[4],rx_pe_data_striped_i[5],rx_pe_data_striped_i[6],rx_pe_data_striped_i[7],rx_pe_data_striped_i[8],rx_pe_data_striped_i[9],rx_pe_data_striped_i[10],rx_pe_data_striped_i[11],rx_pe_data_striped_i[12],rx_pe_data_striped_i[13],rx_pe_data_striped_i[14],rx_pe_data_striped_i[15],rx_pe_data_striped_i[16],rx_pe_data_striped_i[17],rx_pe_data_striped_i[18],rx_pe_data_striped_i[19],rx_pe_data_striped_i[20],rx_pe_data_striped_i[21],rx_pe_data_striped_i[22],rx_pe_data_striped_i[23],rx_pe_data_striped_i[24],rx_pe_data_striped_i[25],rx_pe_data_striped_i[26],rx_pe_data_striped_i[27],rx_pe_data_striped_i[28],rx_pe_data_striped_i[29],rx_pe_data_striped_i[30],rx_pe_data_striped_i[31]}),
        .\stage_1_ecp_r_reg[0] ({rx_ecp_striped_i[0],rx_ecp_striped_i[1]}),
        .stage_1_pad_r_reg(aurora_8b10b_0_aurora_lane_4byte_0_i_n_19),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_TX_LL aurora_8b10b_0_tx_ll_i
       (.GEN_ECP(gen_ecp_i),
        .\GEN_PAD_reg[0] ({gen_pad_i[0],gen_pad_i[1]}),
        .GEN_SCP(gen_scp_striped_i),
        .Q(do_cc_i),
        .\TX_PE_DATA_V_reg[0] ({tx_pe_data_v_i[0],tx_pe_data_v_i[1]}),
        .\TX_PE_DATA_reg[0] ({tx_pe_data_i[0],tx_pe_data_i[1],tx_pe_data_i[2],tx_pe_data_i[3],tx_pe_data_i[4],tx_pe_data_i[5],tx_pe_data_i[6],tx_pe_data_i[7],tx_pe_data_i[8],tx_pe_data_i[9],tx_pe_data_i[10],tx_pe_data_i[11],tx_pe_data_i[12],tx_pe_data_i[13],tx_pe_data_i[14],tx_pe_data_i[15],tx_pe_data_i[16],tx_pe_data_i[17],tx_pe_data_i[18],tx_pe_data_i[19],tx_pe_data_i[20],tx_pe_data_i[21],tx_pe_data_i[22],tx_pe_data_i[23],tx_pe_data_i[24],tx_pe_data_i[25],tx_pe_data_i[26],tx_pe_data_i[27],tx_pe_data_i[28],tx_pe_data_i[29],tx_pe_data_i[30],tx_pe_data_i[31]}),
        .gen_cc_i(gen_cc_i),
        .in_frame_r_reg(aurora_8b10b_0_global_logic_i_n_19),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .tx_dst_rdy(tx_dst_rdy),
        .\tx_pe_data_v_r_reg[1] (axi_to_ll_pdu_i_n_0),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_AXI_TO_LL axi_to_ll_pdu_i
       (.new_pkt_r(new_pkt_r),
        .new_pkt_r_reg_0(axi_to_ll_pdu_i_n_0),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_RESET_LOGIC core_reset_logic_i
       (.SYSTEM_RESET_reg_0(sys_reset_out),
        .channel_up(channel_up),
        .gt_rxresetdone_r2_reg_0(gt_wrapper_i_n_90),
        .gt_txresetdone_r2_reg_0(gt_wrapper_i_n_89),
        .init_clk_in(init_clk_in),
        .link_reset_out(link_reset_out),
        .link_reset_r(link_reset_r),
        .new_pkt_r(new_pkt_r),
        .new_pkt_r_reg(axi_to_ll_pdu_i_n_0),
        .out(reset_sync_user_clk),
        .pll_not_locked(pll_not_locked),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .tx_dst_rdy(tx_dst_rdy),
        .tx_lock(tx_lock),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync gt_reset_cdc_sync
       (.AR(gt_reset_sync_init_clk),
        .gt_reset(gt_reset),
        .init_clk_in(init_clk_in));
  aurora_8b10b_0_aurora_8b10b_0_GT_WRAPPER gt_wrapper_i
       (.AR(gt_reset_sync_init_clk),
        .ENABLE_ERR_DETECT_reg({\aurora_8b10b_0_err_detect_4byte_i/p_6_out [3],gt_wrapper_i_n_84,\aurora_8b10b_0_err_detect_4byte_i/p_6_out [1],gt_wrapper_i_n_86}),
        .GTRXRESET_OUT(GTRXRESET_OUT),
        .Q({aurora_8b10b_0_aurora_lane_4byte_0_i_n_13,aurora_8b10b_0_aurora_lane_4byte_0_i_n_14,aurora_8b10b_0_aurora_lane_4byte_0_i_n_15,aurora_8b10b_0_aurora_lane_4byte_0_i_n_16,aurora_8b10b_0_aurora_lane_4byte_0_i_n_17,aurora_8b10b_0_aurora_lane_4byte_0_i_n_18}),
        .RXCHARISK(rx_char_is_k_i),
        .RXDATA(rx_data_i),
        .TXDATA(tx_data_i),
        .begin_r(\aurora_8b10b_0_lane_init_sm_4byte_i/begin_r ),
        .consecutive_commas_r(\aurora_8b10b_0_lane_init_sm_4byte_i/consecutive_commas_r ),
        .consecutive_commas_r_reg(gt_wrapper_i_n_66),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpclk_in_0(drprdy_out),
        .drpclk_in_1(rx_char_is_comma_i),
        .drpclk_in_2(gt_wrapper_i_n_67),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out({tx_char_is_k_i[0],tx_char_is_k_i[1],tx_char_is_k_i[2],tx_char_is_k_i[3]}),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .enable_err_detect_i(enable_err_detect_i),
        .gt0_pll0outclk_in(gt0_pll0outclk_in),
        .gt0_pll0outrefclk_in(gt0_pll0outrefclk_in),
        .gt0_pll1outclk_in(gt0_pll1outclk_in),
        .gt0_pll1outrefclk_in(gt0_pll1outrefclk_in),
        .gt_common_reset_out(gt_common_reset_out),
        .hard_err_gt0(\aurora_8b10b_0_err_detect_4byte_i/hard_err_gt0 ),
        .init_clk_in(init_clk_in),
        .\left_align_select_r_reg[0] (gt_wrapper_i_n_64),
        .\left_align_select_r_reg[0]_0 (aurora_8b10b_0_aurora_lane_4byte_0_i_n_12),
        .\left_align_select_r_reg[0]_1 (aurora_8b10b_0_aurora_lane_4byte_0_i_n_5),
        .\left_align_select_r_reg[1] (gt_wrapper_i_n_65),
        .\left_align_select_r_reg[1]_0 ({gt_wrapper_i_n_74,gt_wrapper_i_n_75,gt_wrapper_i_n_76,gt_wrapper_i_n_77,gt_wrapper_i_n_78,gt_wrapper_i_n_79,gt_wrapper_i_n_80,gt_wrapper_i_n_81}),
        .\left_align_select_r_reg[1]_1 (gt_wrapper_i_n_82),
        .\left_align_select_r_reg[1]_2 (aurora_8b10b_0_aurora_lane_4byte_0_i_n_6),
        .link_reset_r(link_reset_r),
        .loopback(loopback),
        .pll_not_locked(pll_not_locked),
        .power_down(power_down),
        .\previous_cycle_data_r_reg[5] ({gt_wrapper_i_n_68,gt_wrapper_i_n_69,gt_wrapper_i_n_70,gt_wrapper_i_n_71,gt_wrapper_i_n_72,gt_wrapper_i_n_73}),
        .quad1_common_lock_in(quad1_common_lock_in),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rx_resetdone_out(rx_resetdone_out),
        .rxfsm_rxresetdone_r3_reg_0(gt_wrapper_i_n_90),
        .rxn(rxn),
        .rxp(rxp),
        .s_level_out_d3_reg(gt_wrapper_i_n_89),
        .sync_clk(sync_clk),
        .tx_lock(tx_lock),
        .tx_out_clk(tx_out_clk),
        .tx_resetdone_out(tx_resetdone_out),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync_0 hpcnt_reset_cdc_sync
       (.init_clk_in(init_clk_in),
        .reset(reset));
  aurora_8b10b_0_aurora_8b10b_0_LL_TO_AXI ll_to_axi_pdu_i
       (.Q({rx_rem_int[0],rx_rem_int[1]}),
        .m_axi_rx_tkeep({\^m_axi_rx_tkeep [1],\^m_axi_rx_tkeep [2],\^m_axi_rx_tkeep [3]}),
        .rx_eof(rx_eof));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync_1 reset_sync_user_clk_cdc_sync
       (.out(reset_sync_user_clk),
        .reset(reset),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_STANDARD_CC_MODULE standard_cc_module_i
       (.DO_CC_reg_0(sys_reset_out),
        .Q(do_cc_i),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_descrambler_top" *) 
module aurora_8b10b_0_aurora_8b10b_0_descrambler_top
   (rx_neg_i,
    got_v_i,
    counter4_r0,
    counter3_r0,
    Q,
    \lfsr_reg[15] ,
    \RX_PAD_reg[1]_0 ,
    \RX_ECP_reg[1]_0 ,
    \RX_ECP_reg[0]_0 ,
    \RX_SCP_reg[0]_0 ,
    \RX_ECP_reg[0]_1 ,
    \data_nxt2_reg[0]_0 ,
    \RX_PE_DATA_V_reg[0]_0 ,
    after_scp_select_c_0,
    after_scp_select_c_1,
    rx_sp_descram_in,
    user_clk,
    rx_spa_descram_in,
    rx_neg_descram_in,
    got_v_descram_in,
    ready_r,
    gen_spa_i,
    \data_nxt2_reg[0]_1 ,
    SS,
    \DOUT_reg[0] ,
    \DOUT_reg[0]_0 ,
    \RX_PAD_reg[0]_0 ,
    D,
    \DOUT_reg[15] ,
    \DOUT_reg[14] ,
    \DOUT_reg[13] ,
    \DOUT_reg[12] ,
    \DOUT_reg[11] ,
    \DOUT_reg[10] ,
    \DOUT_reg[9] ,
    \DOUT_reg[8] ,
    \DOUT_reg[5] ,
    \DOUT_reg[4] ,
    \DOUT_reg[1] ,
    \DOUT_reg[0]_1 ,
    \DOUT_reg[15]_0 ,
    \DOUT_reg[14]_0 ,
    \DOUT_reg[13]_0 ,
    \DOUT_reg[12]_0 ,
    \DOUT_reg[11]_0 ,
    \DOUT_reg[10]_0 ,
    \DOUT_reg[9]_0 ,
    \DOUT_reg[8]_0 ,
    \DOUT_reg[5]_0 ,
    \DOUT_reg[4]_0 ,
    \DOUT_reg[1]_0 ,
    \DOUT_reg[0]_2 ,
    \RX_PE_DATA_V_reg[0]_1 ,
    \RX_SCP_reg[0]_1 ,
    \RX_ECP_reg[0]_2 );
  output rx_neg_i;
  output got_v_i;
  output counter4_r0;
  output counter3_r0;
  output [11:0]Q;
  output [11:0]\lfsr_reg[15] ;
  output \RX_PAD_reg[1]_0 ;
  output \RX_ECP_reg[1]_0 ;
  output [1:0]\RX_ECP_reg[0]_0 ;
  output [1:0]\RX_SCP_reg[0]_0 ;
  output \RX_ECP_reg[0]_1 ;
  output [31:0]\data_nxt2_reg[0]_0 ;
  output [1:0]\RX_PE_DATA_V_reg[0]_0 ;
  output after_scp_select_c_0;
  output after_scp_select_c_1;
  input rx_sp_descram_in;
  input user_clk;
  input rx_spa_descram_in;
  input rx_neg_descram_in;
  input got_v_descram_in;
  input ready_r;
  input gen_spa_i;
  input [31:0]\data_nxt2_reg[0]_1 ;
  input [0:0]SS;
  input \DOUT_reg[0] ;
  input \DOUT_reg[0]_0 ;
  input [1:0]\RX_PAD_reg[0]_0 ;
  input [1:0]D;
  input \DOUT_reg[15] ;
  input \DOUT_reg[14] ;
  input \DOUT_reg[13] ;
  input \DOUT_reg[12] ;
  input \DOUT_reg[11] ;
  input \DOUT_reg[10] ;
  input \DOUT_reg[9] ;
  input \DOUT_reg[8] ;
  input \DOUT_reg[5] ;
  input \DOUT_reg[4] ;
  input \DOUT_reg[1] ;
  input \DOUT_reg[0]_1 ;
  input \DOUT_reg[15]_0 ;
  input \DOUT_reg[14]_0 ;
  input \DOUT_reg[13]_0 ;
  input \DOUT_reg[12]_0 ;
  input \DOUT_reg[11]_0 ;
  input \DOUT_reg[10]_0 ;
  input \DOUT_reg[9]_0 ;
  input \DOUT_reg[8]_0 ;
  input \DOUT_reg[5]_0 ;
  input \DOUT_reg[4]_0 ;
  input \DOUT_reg[1]_0 ;
  input \DOUT_reg[0]_2 ;
  input [1:0]\RX_PE_DATA_V_reg[0]_1 ;
  input [1:0]\RX_SCP_reg[0]_1 ;
  input [1:0]\RX_ECP_reg[0]_2 ;

  wire [1:0]D;
  wire [15:0]DOUT;
  wire \DOUT_reg[0] ;
  wire \DOUT_reg[0]_0 ;
  wire \DOUT_reg[0]_1 ;
  wire \DOUT_reg[0]_2 ;
  wire \DOUT_reg[10] ;
  wire \DOUT_reg[10]_0 ;
  wire \DOUT_reg[11] ;
  wire \DOUT_reg[11]_0 ;
  wire \DOUT_reg[12] ;
  wire \DOUT_reg[12]_0 ;
  wire \DOUT_reg[13] ;
  wire \DOUT_reg[13]_0 ;
  wire \DOUT_reg[14] ;
  wire \DOUT_reg[14]_0 ;
  wire \DOUT_reg[15] ;
  wire \DOUT_reg[15]_0 ;
  wire \DOUT_reg[1] ;
  wire \DOUT_reg[1]_0 ;
  wire \DOUT_reg[4] ;
  wire \DOUT_reg[4]_0 ;
  wire \DOUT_reg[5] ;
  wire \DOUT_reg[5]_0 ;
  wire \DOUT_reg[8] ;
  wire \DOUT_reg[8]_0 ;
  wire \DOUT_reg[9] ;
  wire \DOUT_reg[9]_0 ;
  wire [11:0]Q;
  wire [1:0]\RX_ECP_reg[0]_0 ;
  wire \RX_ECP_reg[0]_1 ;
  wire [1:0]\RX_ECP_reg[0]_2 ;
  wire \RX_ECP_reg[1]_0 ;
  wire [1:0]\RX_PAD_reg[0]_0 ;
  wire \RX_PAD_reg[1]_0 ;
  wire [1:0]\RX_PE_DATA_V_reg[0]_0 ;
  wire [1:0]\RX_PE_DATA_V_reg[0]_1 ;
  wire [1:0]\RX_SCP_reg[0]_0 ;
  wire [1:0]\RX_SCP_reg[0]_1 ;
  wire [0:0]SS;
  wire after_scp_select_c_0;
  wire after_scp_select_c_1;
  wire aurora_8b10b_0_descrambler1_i_n_12;
  wire aurora_8b10b_0_descrambler1_i_n_13;
  wire aurora_8b10b_0_descrambler1_i_n_14;
  wire aurora_8b10b_0_descrambler1_i_n_15;
  wire aurora_8b10b_0_descrambler1_i_n_16;
  wire aurora_8b10b_0_descrambler1_i_n_17;
  wire aurora_8b10b_0_descrambler1_i_n_18;
  wire aurora_8b10b_0_descrambler1_i_n_19;
  wire aurora_8b10b_0_descrambler1_i_n_20;
  wire aurora_8b10b_0_descrambler1_i_n_21;
  wire aurora_8b10b_0_descrambler1_i_n_22;
  wire aurora_8b10b_0_descrambler1_i_n_23;
  wire aurora_8b10b_0_descrambler1_i_n_24;
  wire aurora_8b10b_0_descrambler1_i_n_25;
  wire aurora_8b10b_0_descrambler1_i_n_26;
  wire aurora_8b10b_0_descrambler1_i_n_27;
  wire [0:1]bypass_r;
  wire counter3_r0;
  wire counter4_r0;
  wire [0:31]data_nxt2;
  wire [31:0]\data_nxt2_reg[0]_0 ;
  wire [31:0]\data_nxt2_reg[0]_1 ;
  wire gen_spa_i;
  wire got_v_descram_in;
  wire got_v_i;
  wire [11:0]\lfsr_reg[15] ;
  wire ready_r;
  wire rx_neg_descram_in;
  wire rx_neg_i;
  wire [0:1]rx_pad_striped_i;
  wire rx_sp_descram_in;
  wire rx_sp_i;
  wire rx_spa_descram_in;
  wire rx_spa_i;
  wire user_clk;

  FDRE GOT_V_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(got_v_descram_in),
        .Q(got_v_i),
        .R(1'b0));
  FDRE \RX_ECP_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_ECP_reg[0]_2 [1]),
        .Q(\RX_ECP_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_ECP_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_ECP_reg[0]_2 [0]),
        .Q(\RX_ECP_reg[0]_0 [0]),
        .R(1'b0));
  FDRE RX_NEG_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_neg_descram_in),
        .Q(rx_neg_i),
        .R(1'b0));
  FDRE \RX_PAD_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_PAD_reg[0]_0 [1]),
        .Q(rx_pad_striped_i[0]),
        .R(1'b0));
  FDRE \RX_PAD_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_PAD_reg[0]_0 [0]),
        .Q(rx_pad_striped_i[1]),
        .R(1'b0));
  FDRE \RX_PE_DATA_V_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_PE_DATA_V_reg[0]_1 [1]),
        .Q(\RX_PE_DATA_V_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_PE_DATA_V_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_PE_DATA_V_reg[0]_1 [0]),
        .Q(\RX_PE_DATA_V_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \RX_SCP_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_SCP_reg[0]_1 [1]),
        .Q(\RX_SCP_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \RX_SCP_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\RX_SCP_reg[0]_1 [0]),
        .Q(\RX_SCP_reg[0]_0 [0]),
        .R(1'b0));
  FDRE RX_SPA_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_spa_descram_in),
        .Q(rx_spa_i),
        .R(1'b0));
  FDRE RX_SP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_sp_descram_in),
        .Q(rx_sp_i),
        .R(1'b0));
  aurora_8b10b_0_aurora_8b10b_0_scrambler_28 aurora_8b10b_0_descrambler0_i
       (.DOUT(DOUT),
        .\DOUT_reg[0]_0 (\DOUT_reg[0] ),
        .\DOUT_reg[0]_1 (\DOUT_reg[0]_2 ),
        .\DOUT_reg[10]_0 (\DOUT_reg[10]_0 ),
        .\DOUT_reg[11]_0 (\DOUT_reg[11]_0 ),
        .\DOUT_reg[12]_0 (\DOUT_reg[12]_0 ),
        .\DOUT_reg[13]_0 (\DOUT_reg[13]_0 ),
        .\DOUT_reg[14]_0 (\DOUT_reg[14]_0 ),
        .\DOUT_reg[15]_0 (\DOUT_reg[15]_0 ),
        .\DOUT_reg[1]_0 (\DOUT_reg[1]_0 ),
        .\DOUT_reg[4]_0 (\DOUT_reg[4]_0 ),
        .\DOUT_reg[5]_0 (\DOUT_reg[5]_0 ),
        .\DOUT_reg[7]_0 ({\data_nxt2_reg[0]_1 [23:22],\data_nxt2_reg[0]_1 [19:18]}),
        .\DOUT_reg[8]_0 (\DOUT_reg[8]_0 ),
        .\DOUT_reg[9]_0 (\DOUT_reg[9]_0 ),
        .Q(Q),
        .SS(SS),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_scrambler_29 aurora_8b10b_0_descrambler1_i
       (.\DOUT_reg[0]_0 (aurora_8b10b_0_descrambler1_i_n_27),
        .\DOUT_reg[0]_1 (\DOUT_reg[0]_0 ),
        .\DOUT_reg[0]_2 (\DOUT_reg[0]_1 ),
        .\DOUT_reg[10]_0 (aurora_8b10b_0_descrambler1_i_n_17),
        .\DOUT_reg[10]_1 (\DOUT_reg[10] ),
        .\DOUT_reg[11]_0 (aurora_8b10b_0_descrambler1_i_n_16),
        .\DOUT_reg[11]_1 (\DOUT_reg[11] ),
        .\DOUT_reg[12]_0 (aurora_8b10b_0_descrambler1_i_n_15),
        .\DOUT_reg[12]_1 (\DOUT_reg[12] ),
        .\DOUT_reg[13]_0 (aurora_8b10b_0_descrambler1_i_n_14),
        .\DOUT_reg[13]_1 (\DOUT_reg[13] ),
        .\DOUT_reg[14]_0 (aurora_8b10b_0_descrambler1_i_n_13),
        .\DOUT_reg[14]_1 (\DOUT_reg[14] ),
        .\DOUT_reg[15]_0 (aurora_8b10b_0_descrambler1_i_n_12),
        .\DOUT_reg[15]_1 (\DOUT_reg[15] ),
        .\DOUT_reg[1]_0 (aurora_8b10b_0_descrambler1_i_n_26),
        .\DOUT_reg[1]_1 (\DOUT_reg[1] ),
        .\DOUT_reg[2]_0 (aurora_8b10b_0_descrambler1_i_n_25),
        .\DOUT_reg[3]_0 (aurora_8b10b_0_descrambler1_i_n_24),
        .\DOUT_reg[4]_0 (aurora_8b10b_0_descrambler1_i_n_23),
        .\DOUT_reg[4]_1 (\DOUT_reg[4] ),
        .\DOUT_reg[5]_0 (aurora_8b10b_0_descrambler1_i_n_22),
        .\DOUT_reg[5]_1 (\DOUT_reg[5] ),
        .\DOUT_reg[6]_0 (aurora_8b10b_0_descrambler1_i_n_21),
        .\DOUT_reg[7]_0 (aurora_8b10b_0_descrambler1_i_n_20),
        .\DOUT_reg[7]_1 ({\data_nxt2_reg[0]_1 [7:6],\data_nxt2_reg[0]_1 [3:2]}),
        .\DOUT_reg[8]_0 (aurora_8b10b_0_descrambler1_i_n_19),
        .\DOUT_reg[8]_1 (\DOUT_reg[8] ),
        .\DOUT_reg[9]_0 (aurora_8b10b_0_descrambler1_i_n_18),
        .\DOUT_reg[9]_1 (\DOUT_reg[9] ),
        .Q(\lfsr_reg[15] ),
        .SS(SS),
        .user_clk(user_clk));
  FDRE \bypass_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(bypass_r[0]),
        .R(1'b0));
  FDRE \bypass_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(bypass_r[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \counter3_r_reg[2]_srl3_i_1 
       (.I0(rx_spa_i),
        .I1(gen_spa_i),
        .O(counter3_r0));
  LUT2 #(
    .INIT(4'hB)) 
    \counter4_r_reg[14]_srl15_i_1 
       (.I0(rx_sp_i),
        .I1(ready_r),
        .O(counter4_r0));
  LUT1 #(
    .INIT(2'h1)) 
    data_after_start_muxcy_0_i_1
       (.I0(\RX_SCP_reg[0]_0 [1]),
        .O(after_scp_select_c_1));
  LUT1 #(
    .INIT(2'h1)) 
    data_after_start_muxcy_1_i_1
       (.I0(\RX_SCP_reg[0]_0 [0]),
        .O(after_scp_select_c_0));
  FDRE \data_nxt2_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [31]),
        .Q(data_nxt2[0]),
        .R(1'b0));
  FDRE \data_nxt2_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [21]),
        .Q(data_nxt2[10]),
        .R(1'b0));
  FDRE \data_nxt2_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [20]),
        .Q(data_nxt2[11]),
        .R(1'b0));
  FDRE \data_nxt2_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [19]),
        .Q(data_nxt2[12]),
        .R(1'b0));
  FDRE \data_nxt2_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [18]),
        .Q(data_nxt2[13]),
        .R(1'b0));
  FDRE \data_nxt2_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [17]),
        .Q(data_nxt2[14]),
        .R(1'b0));
  FDRE \data_nxt2_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [16]),
        .Q(data_nxt2[15]),
        .R(1'b0));
  FDRE \data_nxt2_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [15]),
        .Q(data_nxt2[16]),
        .R(1'b0));
  FDRE \data_nxt2_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [14]),
        .Q(data_nxt2[17]),
        .R(1'b0));
  FDRE \data_nxt2_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [13]),
        .Q(data_nxt2[18]),
        .R(1'b0));
  FDRE \data_nxt2_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [12]),
        .Q(data_nxt2[19]),
        .R(1'b0));
  FDRE \data_nxt2_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [30]),
        .Q(data_nxt2[1]),
        .R(1'b0));
  FDRE \data_nxt2_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [11]),
        .Q(data_nxt2[20]),
        .R(1'b0));
  FDRE \data_nxt2_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [10]),
        .Q(data_nxt2[21]),
        .R(1'b0));
  FDRE \data_nxt2_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [9]),
        .Q(data_nxt2[22]),
        .R(1'b0));
  FDRE \data_nxt2_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [8]),
        .Q(data_nxt2[23]),
        .R(1'b0));
  FDRE \data_nxt2_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [7]),
        .Q(data_nxt2[24]),
        .R(1'b0));
  FDRE \data_nxt2_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [6]),
        .Q(data_nxt2[25]),
        .R(1'b0));
  FDRE \data_nxt2_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [5]),
        .Q(data_nxt2[26]),
        .R(1'b0));
  FDRE \data_nxt2_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [4]),
        .Q(data_nxt2[27]),
        .R(1'b0));
  FDRE \data_nxt2_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [3]),
        .Q(data_nxt2[28]),
        .R(1'b0));
  FDRE \data_nxt2_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [2]),
        .Q(data_nxt2[29]),
        .R(1'b0));
  FDRE \data_nxt2_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [29]),
        .Q(data_nxt2[2]),
        .R(1'b0));
  FDRE \data_nxt2_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [1]),
        .Q(data_nxt2[30]),
        .R(1'b0));
  FDRE \data_nxt2_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [0]),
        .Q(data_nxt2[31]),
        .R(1'b0));
  FDRE \data_nxt2_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [28]),
        .Q(data_nxt2[3]),
        .R(1'b0));
  FDRE \data_nxt2_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [27]),
        .Q(data_nxt2[4]),
        .R(1'b0));
  FDRE \data_nxt2_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [26]),
        .Q(data_nxt2[5]),
        .R(1'b0));
  FDRE \data_nxt2_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [25]),
        .Q(data_nxt2[6]),
        .R(1'b0));
  FDRE \data_nxt2_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [24]),
        .Q(data_nxt2[7]),
        .R(1'b0));
  FDRE \data_nxt2_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [23]),
        .Q(data_nxt2[8]),
        .R(1'b0));
  FDRE \data_nxt2_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\data_nxt2_reg[0]_1 [22]),
        .Q(data_nxt2[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    in_frame_muxcy_0_i_1
       (.I0(\RX_ECP_reg[0]_0 [1]),
        .I1(\RX_SCP_reg[0]_0 [1]),
        .O(\RX_ECP_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    in_frame_muxcy_1_i_1
       (.I0(\RX_ECP_reg[0]_0 [0]),
        .I1(\RX_SCP_reg[0]_0 [0]),
        .O(\RX_ECP_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[0]_i_1 
       (.I0(data_nxt2[0]),
        .I1(bypass_r[0]),
        .I2(DOUT[15]),
        .O(\data_nxt2_reg[0]_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[10]_i_1 
       (.I0(data_nxt2[10]),
        .I1(bypass_r[0]),
        .I2(DOUT[5]),
        .O(\data_nxt2_reg[0]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[11]_i_1 
       (.I0(data_nxt2[11]),
        .I1(bypass_r[0]),
        .I2(DOUT[4]),
        .O(\data_nxt2_reg[0]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[12]_i_1 
       (.I0(data_nxt2[12]),
        .I1(bypass_r[0]),
        .I2(DOUT[3]),
        .O(\data_nxt2_reg[0]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[13]_i_1 
       (.I0(data_nxt2[13]),
        .I1(bypass_r[0]),
        .I2(DOUT[2]),
        .O(\data_nxt2_reg[0]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[14]_i_1 
       (.I0(data_nxt2[14]),
        .I1(bypass_r[0]),
        .I2(DOUT[1]),
        .O(\data_nxt2_reg[0]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[15]_i_1 
       (.I0(data_nxt2[15]),
        .I1(bypass_r[0]),
        .I2(DOUT[0]),
        .O(\data_nxt2_reg[0]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[16]_i_1 
       (.I0(data_nxt2[16]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_descrambler1_i_n_12),
        .O(\data_nxt2_reg[0]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[17]_i_1 
       (.I0(data_nxt2[17]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_descrambler1_i_n_13),
        .O(\data_nxt2_reg[0]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[18]_i_1 
       (.I0(data_nxt2[18]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_descrambler1_i_n_14),
        .O(\data_nxt2_reg[0]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[19]_i_1 
       (.I0(data_nxt2[19]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_descrambler1_i_n_15),
        .O(\data_nxt2_reg[0]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[1]_i_1 
       (.I0(data_nxt2[1]),
        .I1(bypass_r[0]),
        .I2(DOUT[14]),
        .O(\data_nxt2_reg[0]_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[20]_i_1 
       (.I0(data_nxt2[20]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_descrambler1_i_n_16),
        .O(\data_nxt2_reg[0]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[21]_i_1 
       (.I0(data_nxt2[21]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_descrambler1_i_n_17),
        .O(\data_nxt2_reg[0]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[22]_i_1 
       (.I0(data_nxt2[22]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_descrambler1_i_n_18),
        .O(\data_nxt2_reg[0]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[23]_i_1 
       (.I0(data_nxt2[23]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_descrambler1_i_n_19),
        .O(\data_nxt2_reg[0]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[24]_i_1 
       (.I0(data_nxt2[24]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_descrambler1_i_n_20),
        .O(\data_nxt2_reg[0]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[25]_i_1 
       (.I0(data_nxt2[25]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_descrambler1_i_n_21),
        .O(\data_nxt2_reg[0]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[26]_i_1 
       (.I0(data_nxt2[26]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_descrambler1_i_n_22),
        .O(\data_nxt2_reg[0]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[27]_i_1 
       (.I0(data_nxt2[27]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_descrambler1_i_n_23),
        .O(\data_nxt2_reg[0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[28]_i_1 
       (.I0(data_nxt2[28]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_descrambler1_i_n_24),
        .O(\data_nxt2_reg[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[29]_i_1 
       (.I0(data_nxt2[29]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_descrambler1_i_n_25),
        .O(\data_nxt2_reg[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[2]_i_1 
       (.I0(data_nxt2[2]),
        .I1(bypass_r[0]),
        .I2(DOUT[13]),
        .O(\data_nxt2_reg[0]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[30]_i_1 
       (.I0(data_nxt2[30]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_descrambler1_i_n_26),
        .O(\data_nxt2_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[31]_i_1 
       (.I0(data_nxt2[31]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_descrambler1_i_n_27),
        .O(\data_nxt2_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[3]_i_1 
       (.I0(data_nxt2[3]),
        .I1(bypass_r[0]),
        .I2(DOUT[12]),
        .O(\data_nxt2_reg[0]_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[4]_i_1 
       (.I0(data_nxt2[4]),
        .I1(bypass_r[0]),
        .I2(DOUT[11]),
        .O(\data_nxt2_reg[0]_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[5]_i_1 
       (.I0(data_nxt2[5]),
        .I1(bypass_r[0]),
        .I2(DOUT[10]),
        .O(\data_nxt2_reg[0]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[6]_i_1 
       (.I0(data_nxt2[6]),
        .I1(bypass_r[0]),
        .I2(DOUT[9]),
        .O(\data_nxt2_reg[0]_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[7]_i_1 
       (.I0(data_nxt2[7]),
        .I1(bypass_r[0]),
        .I2(DOUT[8]),
        .O(\data_nxt2_reg[0]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[8]_i_1 
       (.I0(data_nxt2[8]),
        .I1(bypass_r[0]),
        .I2(DOUT[7]),
        .O(\data_nxt2_reg[0]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stage_1_data_r[9]_i_1 
       (.I0(data_nxt2[9]),
        .I1(bypass_r[0]),
        .I2(DOUT[6]),
        .O(\data_nxt2_reg[0]_0 [22]));
  LUT2 #(
    .INIT(4'hE)) 
    stage_1_pad_r_i_1
       (.I0(rx_pad_striped_i[1]),
        .I1(rx_pad_striped_i[0]),
        .O(\RX_PAD_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_gt" *) 
module aurora_8b10b_0_aurora_8b10b_0_gt
   (drpclk_in_0,
    txn,
    txp,
    rx_realign_i,
    drpclk_in_1,
    tx_out_clk,
    drpclk_in_2,
    drpdo_out,
    RXDATA,
    drpclk_in_3,
    RXCHARISK,
    \left_align_select_r_reg[0] ,
    \left_align_select_r_reg[1] ,
    consecutive_commas_r_reg,
    drpclk_in_4,
    \previous_cycle_data_r_reg[5] ,
    \left_align_select_r_reg[1]_0 ,
    \left_align_select_r_reg[1]_1 ,
    ENABLE_ERR_DETECT_reg,
    hard_err_gt0,
    drpclk_in,
    rxn,
    rxp,
    gt_tx_reset_i,
    gt0_pll0outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outclk_in,
    gt0_pll1outrefclk_in,
    ena_comma_align_i,
    rx_polarity_i,
    gt_rxuserrdy_i,
    sync_clk,
    user_clk,
    power_down,
    gt_txuserrdy_i,
    loopback,
    TXDATA,
    drprdy_out,
    gt_common_reset_out,
    init_clk_in,
    SR,
    \left_align_select_r_reg[0]_0 ,
    \left_align_select_r_reg[0]_1 ,
    \left_align_select_r_reg[1]_2 ,
    consecutive_commas_r,
    begin_r,
    Q,
    enable_err_detect_i,
    drpaddr_in,
    drpdi_in,
    drpwe_in,
    drpen_in);
  output drpclk_in_0;
  output txn;
  output txp;
  output rx_realign_i;
  output drpclk_in_1;
  output tx_out_clk;
  output drpclk_in_2;
  output [15:0]drpdo_out;
  output [31:0]RXDATA;
  output [3:0]drpclk_in_3;
  output [3:0]RXCHARISK;
  output \left_align_select_r_reg[0] ;
  output \left_align_select_r_reg[1] ;
  output consecutive_commas_r_reg;
  output drpclk_in_4;
  output [5:0]\previous_cycle_data_r_reg[5] ;
  output [7:0]\left_align_select_r_reg[1]_0 ;
  output \left_align_select_r_reg[1]_1 ;
  output [3:0]ENABLE_ERR_DETECT_reg;
  output hard_err_gt0;
  input drpclk_in;
  input rxn;
  input rxp;
  input gt_tx_reset_i;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input ena_comma_align_i;
  input rx_polarity_i;
  input gt_rxuserrdy_i;
  input sync_clk;
  input user_clk;
  input power_down;
  input gt_txuserrdy_i;
  input [2:0]loopback;
  input [31:0]TXDATA;
  input [3:0]drprdy_out;
  input gt_common_reset_out;
  input init_clk_in;
  input [0:0]SR;
  input \left_align_select_r_reg[0]_0 ;
  input \left_align_select_r_reg[0]_1 ;
  input \left_align_select_r_reg[1]_2 ;
  input consecutive_commas_r;
  input begin_r;
  input [5:0]Q;
  input enable_err_detect_i;
  input [8:0]drpaddr_in;
  input [15:0]drpdi_in;
  input drpwe_in;
  input drpen_in;

  wire [3:0]ENABLE_ERR_DETECT_reg;
  wire [5:0]Q;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire [0:0]SR;
  wire [31:0]TXDATA;
  wire begin_r;
  wire consecutive_commas_r;
  wire consecutive_commas_r_reg;
  wire drp_op_done;
  wire [4:0]drpaddr_i;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire drpclk_in_0;
  wire drpclk_in_1;
  wire drpclk_in_2;
  wire [3:0]drpclk_in_3;
  wire drpclk_in_4;
  wire [15:0]drpdi_i;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_i;
  wire drpen_in;
  wire [3:0]drprdy_out;
  wire drpwe_i;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire enable_err_detect_i;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire gt_common_reset_out;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gtpe2_i_n_1;
  wire gtpe2_i_n_102;
  wire gtpe2_i_n_104;
  wire gtpe2_i_n_105;
  wire gtpe2_i_n_14;
  wire gtpe2_i_n_24;
  wire gtpe2_i_n_28;
  wire gtpe2_i_n_29;
  wire gtpe2_i_n_39;
  wire gtpe2_i_n_40;
  wire gtpe2_i_n_48;
  wire gtpe2_i_n_49;
  wire gtpe2_i_n_50;
  wire gtpe2_i_n_51;
  wire gtpe2_i_n_52;
  wire gtpe2_i_n_53;
  wire gtpe2_i_n_54;
  wire gtpe2_i_n_55;
  wire gtpe2_i_n_56;
  wire gtpe2_i_n_57;
  wire gtpe2_i_n_58;
  wire gtpe2_i_n_59;
  wire gtpe2_i_n_60;
  wire gtpe2_i_n_61;
  wire gtpe2_i_n_62;
  wire gtpe2_i_n_7;
  wire gtpe2_i_n_9;
  wire gtpe2_i_n_95;
  wire gtpe2_i_n_96;
  wire gtrxreset_out;
  wire gtrxreset_seq_i_n_10;
  wire gtrxreset_seq_i_n_17;
  wire gtrxreset_seq_i_n_2;
  wire gtrxreset_seq_i_n_4;
  wire gtrxreset_seq_i_n_5;
  wire gtrxreset_seq_i_n_6;
  wire gtrxreset_seq_i_n_7;
  wire gtrxreset_seq_i_n_8;
  wire gtrxreset_seq_i_n_9;
  wire hard_err_gt0;
  wire [15:0]in7;
  wire init_clk_in;
  wire \left_align_select_r_reg[0] ;
  wire \left_align_select_r_reg[0]_0 ;
  wire \left_align_select_r_reg[0]_1 ;
  wire \left_align_select_r_reg[1] ;
  wire [7:0]\left_align_select_r_reg[1]_0 ;
  wire \left_align_select_r_reg[1]_1 ;
  wire \left_align_select_r_reg[1]_2 ;
  wire [2:0]loopback;
  wire p_0_in;
  wire power_down;
  wire [5:0]\previous_cycle_data_r_reg[5] ;
  wire rx_buf_err_i;
  wire [3:0]rx_disp_err_i;
  wire [3:0]rx_not_in_table_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rxn;
  wire rxp;
  wire sync_clk;
  wire tx_buf_err_i;
  wire tx_out_clk;
  wire txn;
  wire txp;
  wire user_clk;
  wire NLW_gtpe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED;
  wire NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED;
  wire NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED;
  wire NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED;
  wire NLW_gtpe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXPMARESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXRATEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED;
  wire [15:0]NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [3:0]NLW_gtpe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtpe2_i_RXDATAVALID_UNCONNECTED;
  wire [2:0]NLW_gtpe2_i_RXHEADER_UNCONNECTED;
  wire [4:0]NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [1:0]NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire [2:0]NLW_gtpe2_i_RXSTATUS_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTPE2_CHANNEL #(
    .ACJTAG_DEBUG_MODE(1'b0),
    .ACJTAG_MODE(1'b0),
    .ACJTAG_RESET(1'b0),
    .ADAPT_CFG0(20'b00000000000000000000),
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CFOK_CFG(43'b1001001000000000000000001000000111010000000),
    .CFOK_CFG2(7'b0100000),
    .CFOK_CFG3(7'b0100000),
    .CFOK_CFG4(1'b0),
    .CFOK_CFG5(2'b00),
    .CFOK_CFG6(4'b0000),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(7),
    .CHAN_BOND_SEQ_1_1(10'b0101111100),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b0001),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b0000),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_COMMON_SWING(1'b0),
    .CLK_CORRECT_USE("TRUE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(31),
    .CLK_COR_MIN_LAT(24),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0111110111),
    .CLK_COR_SEQ_1_2(10'b0111110111),
    .CLK_COR_SEQ_1_3(10'b0111110111),
    .CLK_COR_SEQ_1_4(10'b0111110111),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0100000000),
    .CLK_COR_SEQ_2_3(10'b0100000000),
    .CLK_COR_SEQ_2_4(10'b0100000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(4),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CLK_PHASE_SEL(1'b0),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("FALSE"),
    .ES_HORZ_OFFSET(12'h010),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CLKRSVD0_INVERTED(1'b0),
    .IS_CLKRSVD1_INVERTED(1'b0),
    .IS_DMONITORCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_SIGVALIDCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .LOOPBACK_CFG(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_LOOPBACK_CFG(1'b0),
    .PMA_RSV(32'h00000333),
    .PMA_RSV2(32'h00002040),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(4'b0000),
    .PMA_RSV5(1'b0),
    .PMA_RSV6(1'b0),
    .PMA_RSV7(1'b0),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FULL"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(4),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(83'h0000107FE106001041010),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b001001),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPMRESET_TIME(7'b0001111),
    .RXLPM_BIAS_STARTUP_DISABLE(1'b0),
    .RXLPM_CFG(4'b0110),
    .RXLPM_CFG1(1'b0),
    .RXLPM_CM_CFG(1'b0),
    .RXLPM_GC_CFG(9'b111100010),
    .RXLPM_GC_CFG2(3'b001),
    .RXLPM_HF_CFG(14'b00001111110000),
    .RXLPM_HF_CFG2(5'b01010),
    .RXLPM_HF_CFG3(4'b0000),
    .RXLPM_HOLD_DURING_EIDLE(1'b0),
    .RXLPM_INCM_CFG(1'b1),
    .RXLPM_IPCM_CFG(1'b0),
    .RXLPM_LF_CFG(18'b000000001111110000),
    .RXLPM_LF_CFG2(5'b01010),
    .RXLPM_OSINT_CFG(3'b100),
    .RXOOB_CFG(7'b0000110),
    .RXOOB_CLK_CFG("PMA"),
    .RXOSCALRESET_TIME(5'b00011),
    .RXOSCALRESET_TIMEOUT(5'b00000),
    .RXOUT_DIV(4),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'hC00002),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPI_CFG0(3'b000),
    .RXPI_CFG1(1'b1),
    .RXPI_CFG2(1'b1),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RXSYNC_MULTILANE(1'b0),
    .RXSYNC_OVRD(1'b0),
    .RXSYNC_SKIP_DA(1'b0),
    .RX_BIAS_CFG(16'b0000111100110011),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(5),
    .RX_CLKMUX_EN(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(4'b1010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(14'b00000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b100),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SATA_PLL_CFG("VCO_3000MHZ"),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("FALSE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("2.0"),
    .TERM_RCAL_CFG(15'b100001000010000),
    .TERM_RCAL_OVRD(3'b000),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOOB_CFG(1'b0),
    .TXOUT_DIV(4),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPI_CFG0(2'b00),
    .TXPI_CFG1(2'b00),
    .TXPI_CFG2(2'b00),
    .TXPI_CFG3(1'b0),
    .TXPI_CFG4(1'b0),
    .TXPI_CFG5(3'b000),
    .TXPI_GREY_SEL(1'b0),
    .TXPI_INVSTROBE_SEL(1'b0),
    .TXPI_PPMCLK_SEL("TXUSRCLK2"),
    .TXPI_PPM_CFG(8'b00000000),
    .TXPI_SYNFREQ_PPM(3'b000),
    .TXPMARESET_TIME(5'b00001),
    .TXSYNC_MULTILANE(1'b0),
    .TXSYNC_OVRD(1'b0),
    .TXSYNC_SKIP_DA(1'b0),
    .TX_CLK25_DIV(5),
    .TX_CLKMUX_EN(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(6'b000000),
    .TX_DEEMPH1(6'b000000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0),
    .USE_PCS_CLK_PHASE_SEL(1'b0)) 
    gtpe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD0(1'b0),
        .CLKRSVD1(1'b0),
        .DMONFIFORESET(1'b0),
        .DMONITORCLK(1'b0),
        .DMONITOROUT({gtpe2_i_n_48,gtpe2_i_n_49,gtpe2_i_n_50,gtpe2_i_n_51,gtpe2_i_n_52,gtpe2_i_n_53,gtpe2_i_n_54,gtpe2_i_n_55,gtpe2_i_n_56,gtpe2_i_n_57,gtpe2_i_n_58,gtpe2_i_n_59,gtpe2_i_n_60,gtpe2_i_n_61,gtpe2_i_n_62}),
        .DRPADDR({gtrxreset_seq_i_n_4,gtrxreset_seq_i_n_5,gtrxreset_seq_i_n_6,gtrxreset_seq_i_n_7,drpaddr_i[4],gtrxreset_seq_i_n_8,gtrxreset_seq_i_n_9,gtrxreset_seq_i_n_10,drpaddr_i[0]}),
        .DRPCLK(drpclk_in),
        .DRPDI(drpdi_i),
        .DRPDO(drpdo_out),
        .DRPEN(drpen_i),
        .DRPRDY(drpclk_in_0),
        .DRPWE(drpwe_i),
        .EYESCANDATAERROR(gtpe2_i_n_1),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTPRXN(rxn),
        .GTPRXP(rxp),
        .GTPTXN(txn),
        .GTPTXP(txp),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(gtrxreset_out),
        .GTTXRESET(gt_tx_reset_i),
        .LOOPBACK(loopback),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtpe2_i_PHYSTATUS_UNCONNECTED),
        .PLL0CLK(gt0_pll0outclk_in),
        .PLL0REFCLK(gt0_pll0outrefclk_in),
        .PLL1CLK(gt0_pll1outclk_in),
        .PLL1REFCLK(gt0_pll1outrefclk_in),
        .PMARSVDIN0(1'b0),
        .PMARSVDIN1(1'b0),
        .PMARSVDIN2(1'b0),
        .PMARSVDIN3(1'b0),
        .PMARSVDIN4(1'b0),
        .PMARSVDOUT0(NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED),
        .PMARSVDOUT1(NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXADAPTSELTEST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({rx_buf_err_i,gtpe2_i_n_104,gtpe2_i_n_105}),
        .RXBYTEISALIGNED(gtpe2_i_n_7),
        .RXBYTEREALIGN(rx_realign_i),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(gtpe2_i_n_9),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA(drpclk_in_3),
        .RXCHARISK(RXCHARISK),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtpe2_i_RXCHBONDO_UNCONNECTED[3:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT({gtpe2_i_n_95,gtpe2_i_n_96}),
        .RXCOMINITDET(NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtpe2_i_n_14),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA(RXDATA),
        .RXDATAVALID(NLW_gtpe2_i_RXDATAVALID_UNCONNECTED[1:0]),
        .RXDDIEN(1'b0),
        .RXDFEXYDEN(1'b0),
        .RXDISPERR(rx_disp_err_i),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtpe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtpe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFOVRDEN(1'b0),
        .RXLPMOSINTNTRLEN(1'b0),
        .RXLPMRESET(1'b0),
        .RXMCOMMAALIGNEN(ena_comma_align_i),
        .RXNOTINTABLE(rx_not_in_table_i),
        .RXOOBRESET(1'b0),
        .RXOSCALRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSINTCFG({1'b0,1'b0,1'b1,1'b0}),
        .RXOSINTDONE(NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED),
        .RXOSINTEN(1'b1),
        .RXOSINTHOLD(1'b0),
        .RXOSINTID0({1'b0,1'b0,1'b0,1'b0}),
        .RXOSINTNTRLEN(1'b0),
        .RXOSINTOVRDEN(1'b0),
        .RXOSINTPD(1'b0),
        .RXOSINTSTARTED(NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED),
        .RXOSINTSTROBE(1'b0),
        .RXOSINTSTROBEDONE(NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED),
        .RXOSINTSTROBESTARTED(NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED),
        .RXOSINTTESTOVRDEN(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gtpe2_i_n_24),
        .RXOUTCLKFABRIC(NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(ena_comma_align_i),
        .RXPCSRESET(1'b0),
        .RXPD({power_down,power_down}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPMARESETDONE(gtpe2_i_n_28),
        .RXPOLARITY(rx_polarity_i),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtpe2_i_n_29),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtpe2_i_RXRATEDONE_UNCONNECTED),
        .RXRATEMODE(1'b0),
        .RXRESETDONE(drpclk_in_1),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED[1:0]),
        .RXSTATUS(NLW_gtpe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYNCALLIN(1'b0),
        .RXSYNCDONE(NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED),
        .RXSYNCIN(1'b0),
        .RXSYNCMODE(1'b0),
        .RXSYNCOUT(NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gt_rxuserrdy_i),
        .RXUSRCLK(sync_clk),
        .RXUSRCLK2(user_clk),
        .RXVALID(NLW_gtpe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .SIGVALIDCLK(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({tx_buf_err_i,gtpe2_i_n_102}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({drprdy_out[0],drprdy_out[1],drprdy_out[2],drprdy_out[3]}),
        .TXCOMFINISH(NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA(TXDATA),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(power_down),
        .TXGEARBOXREADY(NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(tx_out_clk),
        .TXOUTCLKFABRIC(gtpe2_i_n_39),
        .TXOUTCLKPCS(gtpe2_i_n_40),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({power_down,power_down}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPIPPMEN(1'b0),
        .TXPIPPMOVRDEN(1'b0),
        .TXPIPPMPD(1'b0),
        .TXPIPPMSEL(1'b1),
        .TXPIPPMSTEPSIZE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPMARESETDONE(NLW_gtpe2_i_TXPMARESETDONE_UNCONNECTED),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtpe2_i_TXRATEDONE_UNCONNECTED),
        .TXRATEMODE(1'b0),
        .TXRESETDONE(drpclk_in_2),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYNCALLIN(1'b0),
        .TXSYNCDONE(NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED),
        .TXSYNCIN(1'b0),
        .TXSYNCMODE(1'b0),
        .TXSYNCOUT(NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(gt_txuserrdy_i),
        .TXUSRCLK(sync_clk),
        .TXUSRCLK2(user_clk));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_10
       (.I0(drpdi_in[8]),
        .I1(in7[8]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(drpdi_i[8]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_11
       (.I0(drpdi_in[7]),
        .I1(in7[7]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(drpdi_i[7]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_12
       (.I0(drpdi_in[6]),
        .I1(in7[6]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(drpdi_i[6]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_13
       (.I0(drpdi_in[5]),
        .I1(in7[5]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(drpdi_i[5]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_14
       (.I0(drpdi_in[4]),
        .I1(in7[4]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(drpdi_i[4]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_15
       (.I0(drpdi_in[3]),
        .I1(in7[3]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(drpdi_i[3]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_16
       (.I0(drpdi_in[2]),
        .I1(in7[2]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(drpdi_i[2]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_17
       (.I0(drpdi_in[1]),
        .I1(in7[1]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(drpdi_i[1]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_18
       (.I0(drpdi_in[0]),
        .I1(in7[0]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(drpdi_i[0]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_3
       (.I0(drpdi_in[15]),
        .I1(in7[15]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(drpdi_i[15]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_4
       (.I0(drpdi_in[14]),
        .I1(in7[14]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(drpdi_i[14]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_5
       (.I0(drpdi_in[13]),
        .I1(in7[13]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(drpdi_i[13]));
  LUT2 #(
    .INIT(4'hB)) 
    gtpe2_i_i_55
       (.I0(drpaddr_in[4]),
        .I1(drp_op_done),
        .O(drpaddr_i[4]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'hB)) 
    gtpe2_i_i_59
       (.I0(drpaddr_in[0]),
        .I1(drp_op_done),
        .O(drpaddr_i[0]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_6
       (.I0(drpdi_in[12]),
        .I1(in7[12]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(drpdi_i[12]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    gtpe2_i_i_7
       (.I0(drpdi_in[11]),
        .I1(p_0_in),
        .I2(gtrxreset_seq_i_n_17),
        .I3(drp_op_done),
        .O(drpdi_i[11]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_8
       (.I0(drpdi_in[10]),
        .I1(in7[10]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(drpdi_i[10]));
  LUT5 #(
    .INIT(32'hAAAACCC0)) 
    gtpe2_i_i_9
       (.I0(drpdi_in[9]),
        .I1(in7[9]),
        .I2(gtrxreset_seq_i_n_2),
        .I3(p_0_in),
        .I4(drp_op_done),
        .O(drpdi_i[9]));
  aurora_8b10b_0_aurora_8b10b_0_gtrxreset_seq gtrxreset_seq_i
       (.DRPADDR({gtrxreset_seq_i_n_4,gtrxreset_seq_i_n_5,gtrxreset_seq_i_n_6,gtrxreset_seq_i_n_7,gtrxreset_seq_i_n_8,gtrxreset_seq_i_n_9,gtrxreset_seq_i_n_10}),
        .Q({gtrxreset_seq_i_n_2,p_0_in}),
        .SR(SR),
        .drp_op_done(drp_op_done),
        .drpaddr_in({drpaddr_in[8:5],drpaddr_in[3:1]}),
        .drpclk_in(drpclk_in),
        .drpdo_out(drpdo_out),
        .drpen_i(drpen_i),
        .drpen_in(drpen_in),
        .drpwe_i(drpwe_i),
        .drpwe_in(drpwe_in),
        .gt_common_reset_out(gt_common_reset_out),
        .gtrxreset_out(gtrxreset_out),
        .in0(gtpe2_i_n_28),
        .init_clk_in(init_clk_in),
        .\rd_data_reg[0]_0 (drpclk_in_0),
        .\rd_data_reg[15]_0 ({in7[15:12],gtrxreset_seq_i_n_17,in7[10:0]}));
  LUT3 #(
    .INIT(8'hFE)) 
    hard_err_gt_i_1
       (.I0(rx_buf_err_i),
        .I1(tx_buf_err_i),
        .I2(rx_realign_i),
        .O(hard_err_gt0));
  LUT6 #(
    .INIT(64'hFFFAFFFB10401110)) 
    \left_align_select_r[0]_i_1 
       (.I0(\left_align_select_r_reg[0]_0 ),
        .I1(RXCHARISK[0]),
        .I2(RXCHARISK[2]),
        .I3(RXCHARISK[3]),
        .I4(RXCHARISK[1]),
        .I5(\left_align_select_r_reg[0]_1 ),
        .O(\left_align_select_r_reg[0] ));
  LUT6 #(
    .INIT(64'hFFBFFFEB10051100)) 
    \left_align_select_r[1]_i_1 
       (.I0(\left_align_select_r_reg[0]_0 ),
        .I1(RXCHARISK[0]),
        .I2(RXCHARISK[2]),
        .I3(RXCHARISK[3]),
        .I4(RXCHARISK[1]),
        .I5(\left_align_select_r_reg[1]_2 ),
        .O(\left_align_select_r_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    reset_count_r_i_2
       (.I0(rx_disp_err_i[3]),
        .I1(rx_not_in_table_i[3]),
        .I2(rx_not_in_table_i[1]),
        .I3(rx_disp_err_i[1]),
        .I4(rx_disp_err_i[0]),
        .I5(rx_disp_err_i[2]),
        .O(drpclk_in_4));
  LUT4 #(
    .INIT(16'h0010)) 
    reset_count_r_i_3
       (.I0(rx_not_in_table_i[2]),
        .I1(rx_not_in_table_i[0]),
        .I2(consecutive_commas_r),
        .I3(begin_r),
        .O(consecutive_commas_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \soft_err_r[0]_i_1 
       (.I0(enable_err_detect_i),
        .I1(rx_disp_err_i[0]),
        .I2(rx_not_in_table_i[0]),
        .O(ENABLE_ERR_DETECT_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \soft_err_r[1]_i_1 
       (.I0(rx_disp_err_i[1]),
        .I1(rx_not_in_table_i[1]),
        .I2(enable_err_detect_i),
        .O(ENABLE_ERR_DETECT_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \soft_err_r[2]_i_1 
       (.I0(enable_err_detect_i),
        .I1(rx_disp_err_i[2]),
        .I2(rx_not_in_table_i[2]),
        .O(ENABLE_ERR_DETECT_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \soft_err_r[3]_i_1 
       (.I0(rx_disp_err_i[3]),
        .I1(rx_not_in_table_i[3]),
        .I2(enable_err_detect_i),
        .O(ENABLE_ERR_DETECT_reg[0]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \word_aligned_control_bits_r[3]_i_1 
       (.I0(RXCHARISK[0]),
        .I1(RXCHARISK[1]),
        .I2(RXCHARISK[3]),
        .I3(\left_align_select_r_reg[1]_2 ),
        .I4(\left_align_select_r_reg[0]_1 ),
        .I5(RXCHARISK[2]),
        .O(\left_align_select_r_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[18]_i_1 
       (.I0(RXDATA[21]),
        .I1(Q[5]),
        .I2(RXDATA[5]),
        .I3(\left_align_select_r_reg[0]_1 ),
        .I4(\left_align_select_r_reg[1]_2 ),
        .I5(RXDATA[13]),
        .O(\previous_cycle_data_r_reg[5] [5]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[19]_i_1 
       (.I0(RXDATA[20]),
        .I1(Q[4]),
        .I2(RXDATA[12]),
        .I3(\left_align_select_r_reg[1]_2 ),
        .I4(\left_align_select_r_reg[0]_1 ),
        .I5(RXDATA[4]),
        .O(\previous_cycle_data_r_reg[5] [4]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[20]_i_1 
       (.I0(RXDATA[19]),
        .I1(Q[3]),
        .I2(RXDATA[11]),
        .I3(\left_align_select_r_reg[1]_2 ),
        .I4(\left_align_select_r_reg[0]_1 ),
        .I5(RXDATA[3]),
        .O(\previous_cycle_data_r_reg[5] [3]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[21]_i_1 
       (.I0(RXDATA[18]),
        .I1(Q[2]),
        .I2(RXDATA[10]),
        .I3(\left_align_select_r_reg[1]_2 ),
        .I4(\left_align_select_r_reg[0]_1 ),
        .I5(RXDATA[2]),
        .O(\previous_cycle_data_r_reg[5] [2]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[22]_i_1 
       (.I0(RXDATA[17]),
        .I1(Q[1]),
        .I2(RXDATA[1]),
        .I3(\left_align_select_r_reg[0]_1 ),
        .I4(\left_align_select_r_reg[1]_2 ),
        .I5(RXDATA[9]),
        .O(\previous_cycle_data_r_reg[5] [1]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[23]_i_1 
       (.I0(RXDATA[16]),
        .I1(Q[0]),
        .I2(RXDATA[8]),
        .I3(\left_align_select_r_reg[1]_2 ),
        .I4(\left_align_select_r_reg[0]_1 ),
        .I5(RXDATA[0]),
        .O(\previous_cycle_data_r_reg[5] [0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \word_aligned_data_r[24]_i_1 
       (.I0(RXDATA[7]),
        .I1(RXDATA[23]),
        .I2(RXDATA[31]),
        .I3(\left_align_select_r_reg[1]_2 ),
        .I4(\left_align_select_r_reg[0]_1 ),
        .I5(RXDATA[15]),
        .O(\left_align_select_r_reg[1]_0 [7]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \word_aligned_data_r[25]_i_1 
       (.I0(RXDATA[6]),
        .I1(RXDATA[14]),
        .I2(RXDATA[30]),
        .I3(\left_align_select_r_reg[1]_2 ),
        .I4(\left_align_select_r_reg[0]_1 ),
        .I5(RXDATA[22]),
        .O(\left_align_select_r_reg[1]_0 [6]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[26]_i_1 
       (.I0(RXDATA[29]),
        .I1(RXDATA[5]),
        .I2(RXDATA[21]),
        .I3(\left_align_select_r_reg[1]_2 ),
        .I4(\left_align_select_r_reg[0]_1 ),
        .I5(RXDATA[13]),
        .O(\left_align_select_r_reg[1]_0 [5]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[27]_i_1 
       (.I0(RXDATA[28]),
        .I1(RXDATA[4]),
        .I2(RXDATA[20]),
        .I3(\left_align_select_r_reg[1]_2 ),
        .I4(\left_align_select_r_reg[0]_1 ),
        .I5(RXDATA[12]),
        .O(\left_align_select_r_reg[1]_0 [4]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[28]_i_1 
       (.I0(RXDATA[27]),
        .I1(RXDATA[3]),
        .I2(RXDATA[19]),
        .I3(\left_align_select_r_reg[1]_2 ),
        .I4(\left_align_select_r_reg[0]_1 ),
        .I5(RXDATA[11]),
        .O(\left_align_select_r_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[29]_i_1 
       (.I0(RXDATA[26]),
        .I1(RXDATA[2]),
        .I2(RXDATA[18]),
        .I3(\left_align_select_r_reg[1]_2 ),
        .I4(\left_align_select_r_reg[0]_1 ),
        .I5(RXDATA[10]),
        .O(\left_align_select_r_reg[1]_0 [2]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \word_aligned_data_r[30]_i_1 
       (.I0(RXDATA[25]),
        .I1(RXDATA[1]),
        .I2(RXDATA[9]),
        .I3(\left_align_select_r_reg[0]_1 ),
        .I4(\left_align_select_r_reg[1]_2 ),
        .I5(RXDATA[17]),
        .O(\left_align_select_r_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \word_aligned_data_r[31]_i_1 
       (.I0(RXDATA[24]),
        .I1(RXDATA[0]),
        .I2(RXDATA[16]),
        .I3(\left_align_select_r_reg[1]_2 ),
        .I4(\left_align_select_r_reg[0]_1 ),
        .I5(RXDATA[8]),
        .O(\left_align_select_r_reg[1]_0 [0]));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_gtrxreset_seq" *) 
module aurora_8b10b_0_aurora_8b10b_0_gtrxreset_seq
   (gtrxreset_out,
    drp_op_done,
    Q,
    DRPADDR,
    drpwe_i,
    drpen_i,
    \rd_data_reg[15]_0 ,
    in0,
    drpclk_in,
    gt_common_reset_out,
    init_clk_in,
    SR,
    \rd_data_reg[0]_0 ,
    drpaddr_in,
    drpwe_in,
    drpen_in,
    drpdo_out);
  output gtrxreset_out;
  output drp_op_done;
  output [1:0]Q;
  output [6:0]DRPADDR;
  output drpwe_i;
  output drpen_i;
  output [15:0]\rd_data_reg[15]_0 ;
  input in0;
  input drpclk_in;
  input gt_common_reset_out;
  input init_clk_in;
  input [0:0]SR;
  input \rd_data_reg[0]_0 ;
  input [6:0]drpaddr_in;
  input drpwe_in;
  input drpen_in;
  input [15:0]drpdo_out;

  wire [6:0]DRPADDR;
  wire DRP_OP_DONE_i_1_n_0;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire drp_op_done;
  wire [6:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdo_out;
  wire drpen_i;
  wire drpen_in;
  wire drpwe_i;
  wire drpwe_in;
  wire flag;
  wire flag_i_1_n_0;
  wire flag_reg_n_0;
  wire gt_common_reset_out;
  wire gtrxreset_f;
  wire gtrxreset_i__0;
  wire gtrxreset_out;
  wire gtrxreset_s;
  wire gtrxreset_ss;
  wire in0;
  wire init_clk_in;
  wire next_rd_data;
  wire [15:0]original_rd_data;
  wire original_rd_data0;
  wire p_0_in0_in;
  wire \rd_data[0]_i_1_n_0 ;
  wire \rd_data[10]_i_1_n_0 ;
  wire \rd_data[11]_i_1_n_0 ;
  wire \rd_data[12]_i_1_n_0 ;
  wire \rd_data[13]_i_1_n_0 ;
  wire \rd_data[14]_i_1_n_0 ;
  wire \rd_data[15]_i_2_n_0 ;
  wire \rd_data[1]_i_1_n_0 ;
  wire \rd_data[2]_i_1_n_0 ;
  wire \rd_data[3]_i_1_n_0 ;
  wire \rd_data[4]_i_1_n_0 ;
  wire \rd_data[5]_i_1_n_0 ;
  wire \rd_data[6]_i_1_n_0 ;
  wire \rd_data[7]_i_1_n_0 ;
  wire \rd_data[8]_i_1_n_0 ;
  wire \rd_data[9]_i_1_n_0 ;
  wire \rd_data_reg[0]_0 ;
  wire [15:0]\rd_data_reg[15]_0 ;
  wire rst_ss;
  wire rxpmaresetdone_ss;
  wire rxpmaresetdone_sss;

  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    DRP_OP_DONE_i_1
       (.I0(\rd_data_reg[0]_0 ),
        .I1(flag),
        .I2(drp_op_done),
        .O(DRP_OP_DONE_i_1_n_0));
  FDCE DRP_OP_DONE_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(gtrxreset_f),
        .D(DRP_OP_DONE_i_1_n_0),
        .Q(drp_op_done));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(Q[0]),
        .I1(\rd_data_reg[0]_0 ),
        .I2(flag),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\rd_data_reg[0]_0 ),
        .I1(flag),
        .I2(gtrxreset_ss),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(rxpmaresetdone_ss),
        .I2(rxpmaresetdone_sss),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT5 #(
    .INIT(32'hFFD0D0D0)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(rxpmaresetdone_sss),
        .I1(rxpmaresetdone_ss),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\rd_data_reg[0]_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(Q[1]),
        .I1(\rd_data_reg[0]_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(p_0_in0_in),
        .I1(\rd_data_reg[0]_0 ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\rd_data_reg[0]_0 ),
        .I2(p_0_in0_in),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(gtrxreset_ss),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(flag),
        .R(rst_ss));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .S(rst_ss));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(Q[0]),
        .R(rst_ss));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst_ss));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(rst_ss));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(Q[1]),
        .R(rst_ss));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(p_0_in0_in),
        .R(rst_ss));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(rst_ss));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    flag_i_1
       (.I0(flag),
        .I1(flag_reg_n_0),
        .I2(Q[0]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(Q[1]),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flag_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(flag_i_1_n_0),
        .Q(flag_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    gtpe2_i_i_1
       (.I0(drpen_in),
        .I1(drp_op_done),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .O(drpen_i));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'hBBB8)) 
    gtpe2_i_i_2
       (.I0(drpwe_in),
        .I1(drp_op_done),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(drpwe_i));
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_51
       (.I0(drp_op_done),
        .I1(drpaddr_in[6]),
        .O(DRPADDR[6]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_52
       (.I0(drp_op_done),
        .I1(drpaddr_in[5]),
        .O(DRPADDR[5]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_53
       (.I0(drp_op_done),
        .I1(drpaddr_in[4]),
        .O(DRPADDR[4]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_54
       (.I0(drp_op_done),
        .I1(drpaddr_in[3]),
        .O(DRPADDR[3]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_56
       (.I0(drp_op_done),
        .I1(drpaddr_in[2]),
        .O(DRPADDR[2]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_57
       (.I0(drp_op_done),
        .I1(drpaddr_in[1]),
        .O(DRPADDR[1]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gtpe2_i_i_58
       (.I0(drp_op_done),
        .I1(drpaddr_in[0]),
        .O(DRPADDR[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    gtrxreset_i
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(gtrxreset_ss),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(p_0_in0_in),
        .I5(Q[1]),
        .O(gtrxreset_i__0));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_20 gtrxreset_in_cdc_sync
       (.SR(SR),
        .drpclk_in(drpclk_in),
        .init_clk_in(init_clk_in),
        .out(gtrxreset_f));
  FDRE gtrxreset_o_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtrxreset_i__0),
        .Q(gtrxreset_out),
        .R(rst_ss));
  FDRE gtrxreset_s_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtrxreset_f),
        .Q(gtrxreset_s),
        .R(rst_ss));
  FDRE gtrxreset_ss_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtrxreset_s),
        .Q(gtrxreset_ss),
        .R(rst_ss));
  LUT3 #(
    .INIT(8'h20)) 
    \original_rd_data[15]_i_1 
       (.I0(p_0_in0_in),
        .I1(flag_reg_n_0),
        .I2(\rd_data_reg[0]_0 ),
        .O(original_rd_data0));
  FDRE \original_rd_data_reg[0] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[0]),
        .Q(original_rd_data[0]),
        .R(1'b0));
  FDRE \original_rd_data_reg[10] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[10]),
        .Q(original_rd_data[10]),
        .R(1'b0));
  FDRE \original_rd_data_reg[11] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[11]),
        .Q(original_rd_data[11]),
        .R(1'b0));
  FDRE \original_rd_data_reg[12] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[12]),
        .Q(original_rd_data[12]),
        .R(1'b0));
  FDRE \original_rd_data_reg[13] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[13]),
        .Q(original_rd_data[13]),
        .R(1'b0));
  FDRE \original_rd_data_reg[14] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[14]),
        .Q(original_rd_data[14]),
        .R(1'b0));
  FDRE \original_rd_data_reg[15] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[15]),
        .Q(original_rd_data[15]),
        .R(1'b0));
  FDRE \original_rd_data_reg[1] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[1]),
        .Q(original_rd_data[1]),
        .R(1'b0));
  FDRE \original_rd_data_reg[2] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[2]),
        .Q(original_rd_data[2]),
        .R(1'b0));
  FDRE \original_rd_data_reg[3] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[3]),
        .Q(original_rd_data[3]),
        .R(1'b0));
  FDRE \original_rd_data_reg[4] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[4]),
        .Q(original_rd_data[4]),
        .R(1'b0));
  FDRE \original_rd_data_reg[5] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[5]),
        .Q(original_rd_data[5]),
        .R(1'b0));
  FDRE \original_rd_data_reg[6] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[6]),
        .Q(original_rd_data[6]),
        .R(1'b0));
  FDRE \original_rd_data_reg[7] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[7]),
        .Q(original_rd_data[7]),
        .R(1'b0));
  FDRE \original_rd_data_reg[8] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[8]),
        .Q(original_rd_data[8]),
        .R(1'b0));
  FDRE \original_rd_data_reg[9] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[9]),
        .Q(original_rd_data[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[0]_i_1 
       (.I0(drpdo_out[0]),
        .I1(original_rd_data[0]),
        .I2(flag_reg_n_0),
        .O(\rd_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[10]_i_1 
       (.I0(drpdo_out[10]),
        .I1(original_rd_data[10]),
        .I2(flag_reg_n_0),
        .O(\rd_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[11]_i_1 
       (.I0(drpdo_out[11]),
        .I1(original_rd_data[11]),
        .I2(flag_reg_n_0),
        .O(\rd_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[12]_i_1 
       (.I0(drpdo_out[12]),
        .I1(original_rd_data[12]),
        .I2(flag_reg_n_0),
        .O(\rd_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[13]_i_1 
       (.I0(drpdo_out[13]),
        .I1(original_rd_data[13]),
        .I2(flag_reg_n_0),
        .O(\rd_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[14]_i_1 
       (.I0(drpdo_out[14]),
        .I1(original_rd_data[14]),
        .I2(flag_reg_n_0),
        .O(\rd_data[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_data[15]_i_1 
       (.I0(p_0_in0_in),
        .I1(\rd_data_reg[0]_0 ),
        .O(next_rd_data));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[15]_i_2 
       (.I0(drpdo_out[15]),
        .I1(original_rd_data[15]),
        .I2(flag_reg_n_0),
        .O(\rd_data[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[1]_i_1 
       (.I0(drpdo_out[1]),
        .I1(original_rd_data[1]),
        .I2(flag_reg_n_0),
        .O(\rd_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[2]_i_1 
       (.I0(drpdo_out[2]),
        .I1(original_rd_data[2]),
        .I2(flag_reg_n_0),
        .O(\rd_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[3]_i_1 
       (.I0(drpdo_out[3]),
        .I1(original_rd_data[3]),
        .I2(flag_reg_n_0),
        .O(\rd_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[4]_i_1 
       (.I0(drpdo_out[4]),
        .I1(original_rd_data[4]),
        .I2(flag_reg_n_0),
        .O(\rd_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[5]_i_1 
       (.I0(drpdo_out[5]),
        .I1(original_rd_data[5]),
        .I2(flag_reg_n_0),
        .O(\rd_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[6]_i_1 
       (.I0(drpdo_out[6]),
        .I1(original_rd_data[6]),
        .I2(flag_reg_n_0),
        .O(\rd_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[7]_i_1 
       (.I0(drpdo_out[7]),
        .I1(original_rd_data[7]),
        .I2(flag_reg_n_0),
        .O(\rd_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[8]_i_1 
       (.I0(drpdo_out[8]),
        .I1(original_rd_data[8]),
        .I2(flag_reg_n_0),
        .O(\rd_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[9]_i_1 
       (.I0(drpdo_out[9]),
        .I1(original_rd_data[9]),
        .I2(flag_reg_n_0),
        .O(\rd_data[9]_i_1_n_0 ));
  FDRE \rd_data_reg[0] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[0]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [0]),
        .R(rst_ss));
  FDRE \rd_data_reg[10] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[10]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [10]),
        .R(rst_ss));
  FDRE \rd_data_reg[11] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[11]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [11]),
        .R(rst_ss));
  FDRE \rd_data_reg[12] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[12]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [12]),
        .R(rst_ss));
  FDRE \rd_data_reg[13] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[13]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [13]),
        .R(rst_ss));
  FDRE \rd_data_reg[14] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[14]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [14]),
        .R(rst_ss));
  FDRE \rd_data_reg[15] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[15]_i_2_n_0 ),
        .Q(\rd_data_reg[15]_0 [15]),
        .R(rst_ss));
  FDRE \rd_data_reg[1] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[1]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [1]),
        .R(rst_ss));
  FDRE \rd_data_reg[2] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[2]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [2]),
        .R(rst_ss));
  FDRE \rd_data_reg[3] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[3]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [3]),
        .R(rst_ss));
  FDRE \rd_data_reg[4] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[4]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [4]),
        .R(rst_ss));
  FDRE \rd_data_reg[5] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[5]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [5]),
        .R(rst_ss));
  FDRE \rd_data_reg[6] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[6]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [6]),
        .R(rst_ss));
  FDRE \rd_data_reg[7] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[7]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [7]),
        .R(rst_ss));
  FDRE \rd_data_reg[8] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[8]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [8]),
        .R(rst_ss));
  FDRE \rd_data_reg[9] 
       (.C(drpclk_in),
        .CE(next_rd_data),
        .D(\rd_data[9]_i_1_n_0 ),
        .Q(\rd_data_reg[15]_0 [9]),
        .R(rst_ss));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_21 rst_cdc_sync
       (.SR(rst_ss),
        .drpclk_in(drpclk_in),
        .gt_common_reset_out(gt_common_reset_out),
        .init_clk_in(init_clk_in));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync_22 rxpmaresetdone_cdc_sync
       (.drpclk_in(drpclk_in),
        .in0(in0),
        .out(rxpmaresetdone_ss));
  FDRE rxpmaresetdone_sss_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rxpmaresetdone_ss),
        .Q(rxpmaresetdone_sss),
        .R(rst_ss));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_hotplug" *) 
module aurora_8b10b_0_aurora_8b10b_0_hotplug
   (link_reset_out,
    user_clk,
    init_clk_in,
    reset_lanes_i,
    D);
  output link_reset_out;
  input user_clk;
  input init_clk_in;
  input reset_lanes_i;
  input [0:0]D;

  wire [0:0]D;
  wire cc_sync;
  wire \count_for_reset_r[0]_i_2_n_0 ;
  wire [21:0]count_for_reset_r_reg;
  wire \count_for_reset_r_reg[0]_i_1_n_0 ;
  wire \count_for_reset_r_reg[0]_i_1_n_1 ;
  wire \count_for_reset_r_reg[0]_i_1_n_2 ;
  wire \count_for_reset_r_reg[0]_i_1_n_3 ;
  wire \count_for_reset_r_reg[0]_i_1_n_4 ;
  wire \count_for_reset_r_reg[0]_i_1_n_5 ;
  wire \count_for_reset_r_reg[0]_i_1_n_6 ;
  wire \count_for_reset_r_reg[0]_i_1_n_7 ;
  wire \count_for_reset_r_reg[12]_i_1_n_0 ;
  wire \count_for_reset_r_reg[12]_i_1_n_1 ;
  wire \count_for_reset_r_reg[12]_i_1_n_2 ;
  wire \count_for_reset_r_reg[12]_i_1_n_3 ;
  wire \count_for_reset_r_reg[12]_i_1_n_4 ;
  wire \count_for_reset_r_reg[12]_i_1_n_5 ;
  wire \count_for_reset_r_reg[12]_i_1_n_6 ;
  wire \count_for_reset_r_reg[12]_i_1_n_7 ;
  wire \count_for_reset_r_reg[16]_i_1_n_0 ;
  wire \count_for_reset_r_reg[16]_i_1_n_1 ;
  wire \count_for_reset_r_reg[16]_i_1_n_2 ;
  wire \count_for_reset_r_reg[16]_i_1_n_3 ;
  wire \count_for_reset_r_reg[16]_i_1_n_4 ;
  wire \count_for_reset_r_reg[16]_i_1_n_5 ;
  wire \count_for_reset_r_reg[16]_i_1_n_6 ;
  wire \count_for_reset_r_reg[16]_i_1_n_7 ;
  wire \count_for_reset_r_reg[20]_i_1_n_3 ;
  wire \count_for_reset_r_reg[20]_i_1_n_6 ;
  wire \count_for_reset_r_reg[20]_i_1_n_7 ;
  wire \count_for_reset_r_reg[4]_i_1_n_0 ;
  wire \count_for_reset_r_reg[4]_i_1_n_1 ;
  wire \count_for_reset_r_reg[4]_i_1_n_2 ;
  wire \count_for_reset_r_reg[4]_i_1_n_3 ;
  wire \count_for_reset_r_reg[4]_i_1_n_4 ;
  wire \count_for_reset_r_reg[4]_i_1_n_5 ;
  wire \count_for_reset_r_reg[4]_i_1_n_6 ;
  wire \count_for_reset_r_reg[4]_i_1_n_7 ;
  wire \count_for_reset_r_reg[8]_i_1_n_0 ;
  wire \count_for_reset_r_reg[8]_i_1_n_1 ;
  wire \count_for_reset_r_reg[8]_i_1_n_2 ;
  wire \count_for_reset_r_reg[8]_i_1_n_3 ;
  wire \count_for_reset_r_reg[8]_i_1_n_4 ;
  wire \count_for_reset_r_reg[8]_i_1_n_5 ;
  wire \count_for_reset_r_reg[8]_i_1_n_6 ;
  wire \count_for_reset_r_reg[8]_i_1_n_7 ;
  wire init_clk_in;
  wire link_reset_0;
  wire link_reset_0_i_2_n_0;
  wire link_reset_0_i_3_n_0;
  wire link_reset_0_i_4_n_0;
  wire link_reset_0_i_5_n_0;
  wire link_reset_out;
  wire p_0_in;
  wire reset_lanes_i;
  wire [7:0]rx_cc_extend_r;
  wire rx_cc_extend_r2;
  wire rx_cc_extend_r2_i_1_n_0;
  wire rx_cc_extend_r2_i_2_n_0;
  wire user_clk;
  wire [3:1]\NLW_count_for_reset_r_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_for_reset_r_reg[20]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_for_reset_r[0]_i_2 
       (.I0(count_for_reset_r_reg[0]),
        .O(\count_for_reset_r[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[0]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[0]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_for_reset_r_reg[0]_i_1_n_0 ,\count_for_reset_r_reg[0]_i_1_n_1 ,\count_for_reset_r_reg[0]_i_1_n_2 ,\count_for_reset_r_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_for_reset_r_reg[0]_i_1_n_4 ,\count_for_reset_r_reg[0]_i_1_n_5 ,\count_for_reset_r_reg[0]_i_1_n_6 ,\count_for_reset_r_reg[0]_i_1_n_7 }),
        .S({count_for_reset_r_reg[3:1],\count_for_reset_r[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[10] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[8]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[10]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[11] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[8]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[11]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[12] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[12]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[12]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[12]_i_1 
       (.CI(\count_for_reset_r_reg[8]_i_1_n_0 ),
        .CO({\count_for_reset_r_reg[12]_i_1_n_0 ,\count_for_reset_r_reg[12]_i_1_n_1 ,\count_for_reset_r_reg[12]_i_1_n_2 ,\count_for_reset_r_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[12]_i_1_n_4 ,\count_for_reset_r_reg[12]_i_1_n_5 ,\count_for_reset_r_reg[12]_i_1_n_6 ,\count_for_reset_r_reg[12]_i_1_n_7 }),
        .S(count_for_reset_r_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[13] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[12]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[13]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[14] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[12]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[14]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[15] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[12]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[15]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[16] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[16]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[16]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[16]_i_1 
       (.CI(\count_for_reset_r_reg[12]_i_1_n_0 ),
        .CO({\count_for_reset_r_reg[16]_i_1_n_0 ,\count_for_reset_r_reg[16]_i_1_n_1 ,\count_for_reset_r_reg[16]_i_1_n_2 ,\count_for_reset_r_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[16]_i_1_n_4 ,\count_for_reset_r_reg[16]_i_1_n_5 ,\count_for_reset_r_reg[16]_i_1_n_6 ,\count_for_reset_r_reg[16]_i_1_n_7 }),
        .S(count_for_reset_r_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[17] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[16]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[17]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[18] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[16]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[18]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[19] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[16]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[19]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[1] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[0]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[1]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[20] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[20]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[20]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[20]_i_1 
       (.CI(\count_for_reset_r_reg[16]_i_1_n_0 ),
        .CO({\NLW_count_for_reset_r_reg[20]_i_1_CO_UNCONNECTED [3:1],\count_for_reset_r_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_for_reset_r_reg[20]_i_1_O_UNCONNECTED [3:2],\count_for_reset_r_reg[20]_i_1_n_6 ,\count_for_reset_r_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,count_for_reset_r_reg[21:20]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[21] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[20]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[21]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[2] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[0]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[2]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[3] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[0]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[3]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[4] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[4]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[4]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[4]_i_1 
       (.CI(\count_for_reset_r_reg[0]_i_1_n_0 ),
        .CO({\count_for_reset_r_reg[4]_i_1_n_0 ,\count_for_reset_r_reg[4]_i_1_n_1 ,\count_for_reset_r_reg[4]_i_1_n_2 ,\count_for_reset_r_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[4]_i_1_n_4 ,\count_for_reset_r_reg[4]_i_1_n_5 ,\count_for_reset_r_reg[4]_i_1_n_6 ,\count_for_reset_r_reg[4]_i_1_n_7 }),
        .S(count_for_reset_r_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[5] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[4]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[5]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[6] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[4]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[6]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[7] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[4]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[7]),
        .R(cc_sync));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[8] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[8]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[8]),
        .R(cc_sync));
  CARRY4 \count_for_reset_r_reg[8]_i_1 
       (.CI(\count_for_reset_r_reg[4]_i_1_n_0 ),
        .CO({\count_for_reset_r_reg[8]_i_1_n_0 ,\count_for_reset_r_reg[8]_i_1_n_1 ,\count_for_reset_r_reg[8]_i_1_n_2 ,\count_for_reset_r_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[8]_i_1_n_4 ,\count_for_reset_r_reg[8]_i_1_n_5 ,\count_for_reset_r_reg[8]_i_1_n_6 ,\count_for_reset_r_reg[8]_i_1_n_7 }),
        .S(count_for_reset_r_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_reset_r_reg[9] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[8]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[9]),
        .R(cc_sync));
  LUT4 #(
    .INIT(16'h8000)) 
    link_reset_0_i_1
       (.I0(link_reset_0_i_2_n_0),
        .I1(link_reset_0_i_3_n_0),
        .I2(link_reset_0_i_4_n_0),
        .I3(link_reset_0_i_5_n_0),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    link_reset_0_i_2
       (.I0(count_for_reset_r_reg[12]),
        .I1(count_for_reset_r_reg[13]),
        .I2(count_for_reset_r_reg[10]),
        .I3(count_for_reset_r_reg[11]),
        .I4(count_for_reset_r_reg[15]),
        .I5(count_for_reset_r_reg[14]),
        .O(link_reset_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    link_reset_0_i_3
       (.I0(count_for_reset_r_reg[18]),
        .I1(count_for_reset_r_reg[19]),
        .I2(count_for_reset_r_reg[16]),
        .I3(count_for_reset_r_reg[17]),
        .I4(count_for_reset_r_reg[21]),
        .I5(count_for_reset_r_reg[20]),
        .O(link_reset_0_i_3_n_0));
  LUT5 #(
    .INIT(32'h78F8F8F8)) 
    link_reset_0_i_4
       (.I0(count_for_reset_r_reg[2]),
        .I1(count_for_reset_r_reg[3]),
        .I2(count_for_reset_r_reg[4]),
        .I3(count_for_reset_r_reg[1]),
        .I4(count_for_reset_r_reg[0]),
        .O(link_reset_0_i_4_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    link_reset_0_i_5
       (.I0(count_for_reset_r_reg[5]),
        .I1(count_for_reset_r_reg[6]),
        .I2(count_for_reset_r_reg[7]),
        .I3(count_for_reset_r_reg[9]),
        .I4(count_for_reset_r_reg[8]),
        .O(link_reset_0_i_5_n_0));
  FDRE link_reset_0_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_0_in),
        .Q(link_reset_0),
        .R(1'b0));
  FDRE \link_reset_r_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_0),
        .Q(link_reset_out),
        .R(1'b0));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_27 rx_cc_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(cc_sync),
        .rx_cc_extend_r2(rx_cc_extend_r2),
        .user_clk(user_clk));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    rx_cc_extend_r2_i_1
       (.I0(rx_cc_extend_r[2]),
        .I1(rx_cc_extend_r[3]),
        .I2(rx_cc_extend_r[0]),
        .I3(rx_cc_extend_r[1]),
        .I4(rx_cc_extend_r2_i_2_n_0),
        .O(rx_cc_extend_r2_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rx_cc_extend_r2_i_2
       (.I0(rx_cc_extend_r[5]),
        .I1(rx_cc_extend_r[4]),
        .I2(rx_cc_extend_r[7]),
        .I3(rx_cc_extend_r[6]),
        .O(rx_cc_extend_r2_i_2_n_0));
  FDRE rx_cc_extend_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r2_i_1_n_0),
        .Q(rx_cc_extend_r2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[1]),
        .Q(rx_cc_extend_r[0]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[2]),
        .Q(rx_cc_extend_r[1]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[3]),
        .Q(rx_cc_extend_r[2]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[4]),
        .Q(rx_cc_extend_r[3]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[5]),
        .Q(rx_cc_extend_r[4]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[6]),
        .Q(rx_cc_extend_r[5]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[7]),
        .Q(rx_cc_extend_r[6]),
        .R(reset_lanes_i));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cc_extend_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(rx_cc_extend_r[7]),
        .R(reset_lanes_i));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_multi_gt" *) 
module aurora_8b10b_0_aurora_8b10b_0_multi_gt
   (drpclk_in_0,
    txn,
    txp,
    rx_realign_i,
    drpclk_in_1,
    tx_out_clk,
    drpclk_in_2,
    drpdo_out,
    RXDATA,
    drpclk_in_3,
    RXCHARISK,
    \left_align_select_r_reg[0] ,
    \left_align_select_r_reg[1] ,
    consecutive_commas_r_reg,
    drpclk_in_4,
    \previous_cycle_data_r_reg[5] ,
    \left_align_select_r_reg[1]_0 ,
    \left_align_select_r_reg[1]_1 ,
    ENABLE_ERR_DETECT_reg,
    hard_err_gt0,
    drpclk_in,
    rxn,
    rxp,
    gt_tx_reset_i,
    gt0_pll0outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outclk_in,
    gt0_pll1outrefclk_in,
    ena_comma_align_i,
    rx_polarity_i,
    gt_rxuserrdy_i,
    sync_clk,
    user_clk,
    power_down,
    gt_txuserrdy_i,
    loopback,
    TXDATA,
    drprdy_out,
    gt_common_reset_out,
    init_clk_in,
    SR,
    \left_align_select_r_reg[0]_0 ,
    \left_align_select_r_reg[0]_1 ,
    \left_align_select_r_reg[1]_2 ,
    consecutive_commas_r,
    begin_r,
    Q,
    enable_err_detect_i,
    drpaddr_in,
    drpdi_in,
    drpwe_in,
    drpen_in);
  output drpclk_in_0;
  output txn;
  output txp;
  output rx_realign_i;
  output drpclk_in_1;
  output tx_out_clk;
  output drpclk_in_2;
  output [15:0]drpdo_out;
  output [31:0]RXDATA;
  output [3:0]drpclk_in_3;
  output [3:0]RXCHARISK;
  output \left_align_select_r_reg[0] ;
  output \left_align_select_r_reg[1] ;
  output consecutive_commas_r_reg;
  output drpclk_in_4;
  output [5:0]\previous_cycle_data_r_reg[5] ;
  output [7:0]\left_align_select_r_reg[1]_0 ;
  output \left_align_select_r_reg[1]_1 ;
  output [3:0]ENABLE_ERR_DETECT_reg;
  output hard_err_gt0;
  input drpclk_in;
  input rxn;
  input rxp;
  input gt_tx_reset_i;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input ena_comma_align_i;
  input rx_polarity_i;
  input gt_rxuserrdy_i;
  input sync_clk;
  input user_clk;
  input power_down;
  input gt_txuserrdy_i;
  input [2:0]loopback;
  input [31:0]TXDATA;
  input [3:0]drprdy_out;
  input gt_common_reset_out;
  input init_clk_in;
  input [0:0]SR;
  input \left_align_select_r_reg[0]_0 ;
  input \left_align_select_r_reg[0]_1 ;
  input \left_align_select_r_reg[1]_2 ;
  input consecutive_commas_r;
  input begin_r;
  input [5:0]Q;
  input enable_err_detect_i;
  input [8:0]drpaddr_in;
  input [15:0]drpdi_in;
  input drpwe_in;
  input drpen_in;

  wire [3:0]ENABLE_ERR_DETECT_reg;
  wire [5:0]Q;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire [0:0]SR;
  wire [31:0]TXDATA;
  wire begin_r;
  wire consecutive_commas_r;
  wire consecutive_commas_r_reg;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire drpclk_in_0;
  wire drpclk_in_1;
  wire drpclk_in_2;
  wire [3:0]drpclk_in_3;
  wire drpclk_in_4;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire [3:0]drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire enable_err_detect_i;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire gt_common_reset_out;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire hard_err_gt0;
  wire init_clk_in;
  wire \left_align_select_r_reg[0] ;
  wire \left_align_select_r_reg[0]_0 ;
  wire \left_align_select_r_reg[0]_1 ;
  wire \left_align_select_r_reg[1] ;
  wire [7:0]\left_align_select_r_reg[1]_0 ;
  wire \left_align_select_r_reg[1]_1 ;
  wire \left_align_select_r_reg[1]_2 ;
  wire [2:0]loopback;
  wire power_down;
  wire [5:0]\previous_cycle_data_r_reg[5] ;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rxn;
  wire rxp;
  wire sync_clk;
  wire tx_out_clk;
  wire txn;
  wire txp;
  wire user_clk;

  aurora_8b10b_0_aurora_8b10b_0_gt gt0_aurora_8b10b_0_i
       (.ENABLE_ERR_DETECT_reg(ENABLE_ERR_DETECT_reg),
        .Q(Q),
        .RXCHARISK(RXCHARISK),
        .RXDATA(RXDATA),
        .SR(SR),
        .TXDATA(TXDATA),
        .begin_r(begin_r),
        .consecutive_commas_r(consecutive_commas_r),
        .consecutive_commas_r_reg(consecutive_commas_r_reg),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpclk_in_0(drpclk_in_0),
        .drpclk_in_1(drpclk_in_1),
        .drpclk_in_2(drpclk_in_2),
        .drpclk_in_3(drpclk_in_3),
        .drpclk_in_4(drpclk_in_4),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .enable_err_detect_i(enable_err_detect_i),
        .gt0_pll0outclk_in(gt0_pll0outclk_in),
        .gt0_pll0outrefclk_in(gt0_pll0outrefclk_in),
        .gt0_pll1outclk_in(gt0_pll1outclk_in),
        .gt0_pll1outrefclk_in(gt0_pll1outrefclk_in),
        .gt_common_reset_out(gt_common_reset_out),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .hard_err_gt0(hard_err_gt0),
        .init_clk_in(init_clk_in),
        .\left_align_select_r_reg[0] (\left_align_select_r_reg[0] ),
        .\left_align_select_r_reg[0]_0 (\left_align_select_r_reg[0]_0 ),
        .\left_align_select_r_reg[0]_1 (\left_align_select_r_reg[0]_1 ),
        .\left_align_select_r_reg[1] (\left_align_select_r_reg[1] ),
        .\left_align_select_r_reg[1]_0 (\left_align_select_r_reg[1]_0 ),
        .\left_align_select_r_reg[1]_1 (\left_align_select_r_reg[1]_1 ),
        .\left_align_select_r_reg[1]_2 (\left_align_select_r_reg[1]_2 ),
        .loopback(loopback),
        .power_down(power_down),
        .\previous_cycle_data_r_reg[5] (\previous_cycle_data_r_reg[5] ),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rxn(rxn),
        .rxp(rxp),
        .sync_clk(sync_clk),
        .tx_out_clk(tx_out_clk),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_rx_startup_fsm" *) 
module aurora_8b10b_0_aurora_8b10b_0_rx_startup_fsm
   (gtrxreset_i,
    gt_rxuserrdy_i,
    quad1_common_lock_in,
    init_clk_in,
    user_clk,
    rxfsm_rxresetdone_r,
    AR,
    reset_time_out_reg_0,
    gt_txuserrdy_i);
  output gtrxreset_i;
  output gt_rxuserrdy_i;
  input quad1_common_lock_in;
  input init_clk_in;
  input user_clk;
  input rxfsm_rxresetdone_r;
  input [0:0]AR;
  input reset_time_out_reg_0;
  input gt_txuserrdy_i;

  wire [0:0]AR;
  wire \FSM_sequential_rx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[0]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_11_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_12_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_13_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_14_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_15_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_16_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_9_n_0 ;
  wire RXUSERRDY_i_1_n_0;
  wire check_tlock_max_i_1_n_0;
  wire check_tlock_max_reg_n_0;
  wire clear;
  wire gt_rxuserrdy_i;
  wire gt_txuserrdy_i;
  wire gtrxreset_i;
  wire gtrxreset_i_0;
  wire gtrxreset_i_i_1_n_0;
  wire gtrxreset_s;
  wire init_clk_in;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1__0_n_0 ;
  wire \init_wait_count[6]_i_2__0_n_0 ;
  wire \init_wait_count[7]_i_3__0_n_0 ;
  wire \init_wait_count[7]_i_4__0_n_0 ;
  wire [7:0]init_wait_count_reg;
  wire init_wait_done_i_1__0_n_0;
  wire init_wait_done_i_2__0_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[9]_i_2__0_n_0 ;
  wire \mmcm_lock_count[9]_i_4__0_n_0 ;
  wire [9:0]mmcm_lock_count_reg;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_2__0_n_0;
  wire [7:1]p_0_in__1;
  wire [9:0]p_0_in__2;
  wire quad1_common_lock_in;
  wire reset_time_out_i_2_n_0;
  wire reset_time_out_i_4_n_0;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_n_0;
  wire run_phase_alignment_int_i_1__0_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3_reg_n_0;
  wire rx_fsm_reset_done_int;
  wire rx_fsm_reset_done_int_1;
  wire rx_fsm_reset_done_int_i_1_n_0;
  wire rx_fsm_reset_done_int_i_3_n_0;
  wire rx_fsm_reset_done_int_i_4_n_0;
  wire rx_fsm_reset_done_int_i_5_n_0;
  wire rx_fsm_reset_done_int_s3;
  wire [3:0]rx_state;
  wire rxfsm_rxresetdone_r;
  wire rxpmaresetdone_i;
  wire rxpmaresetdone_rx_s;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire sync_mmcm_lock_reclocked_cdc_sync_n_0;
  wire sync_mmcm_lock_reclocked_cdc_sync_n_1;
  wire sync_pll0lock_cdc_sync_n_0;
  wire sync_pll0lock_cdc_sync_n_1;
  wire sync_rx_fsm_reset_done_int_cdc_sync_n_0;
  wire time_out_100us_i_1_n_0;
  wire time_out_100us_i_2_n_0;
  wire time_out_100us_i_3_n_0;
  wire time_out_100us_i_4_n_0;
  wire time_out_100us_reg_n_0;
  wire time_out_1us_i_1_n_0;
  wire time_out_1us_i_2_n_0;
  wire time_out_1us_i_3_n_0;
  wire time_out_1us_reg_n_0;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3_n_0 ;
  wire \time_out_counter[0]_i_4__0_n_0 ;
  wire \time_out_counter[0]_i_5_n_0 ;
  wire \time_out_counter[0]_i_6__0_n_0 ;
  wire [17:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__0_n_0 ;
  wire \time_out_counter_reg[0]_i_2__0_n_1 ;
  wire \time_out_counter_reg[0]_i_2__0_n_2 ;
  wire \time_out_counter_reg[0]_i_2__0_n_3 ;
  wire \time_out_counter_reg[0]_i_2__0_n_4 ;
  wire \time_out_counter_reg[0]_i_2__0_n_5 ;
  wire \time_out_counter_reg[0]_i_2__0_n_6 ;
  wire \time_out_counter_reg[0]_i_2__0_n_7 ;
  wire \time_out_counter_reg[12]_i_1__0_n_0 ;
  wire \time_out_counter_reg[12]_i_1__0_n_1 ;
  wire \time_out_counter_reg[12]_i_1__0_n_2 ;
  wire \time_out_counter_reg[12]_i_1__0_n_3 ;
  wire \time_out_counter_reg[12]_i_1__0_n_4 ;
  wire \time_out_counter_reg[12]_i_1__0_n_5 ;
  wire \time_out_counter_reg[12]_i_1__0_n_6 ;
  wire \time_out_counter_reg[12]_i_1__0_n_7 ;
  wire \time_out_counter_reg[16]_i_1__0_n_3 ;
  wire \time_out_counter_reg[16]_i_1__0_n_6 ;
  wire \time_out_counter_reg[16]_i_1__0_n_7 ;
  wire \time_out_counter_reg[4]_i_1__0_n_0 ;
  wire \time_out_counter_reg[4]_i_1__0_n_1 ;
  wire \time_out_counter_reg[4]_i_1__0_n_2 ;
  wire \time_out_counter_reg[4]_i_1__0_n_3 ;
  wire \time_out_counter_reg[4]_i_1__0_n_4 ;
  wire \time_out_counter_reg[4]_i_1__0_n_5 ;
  wire \time_out_counter_reg[4]_i_1__0_n_6 ;
  wire \time_out_counter_reg[4]_i_1__0_n_7 ;
  wire \time_out_counter_reg[8]_i_1__0_n_0 ;
  wire \time_out_counter_reg[8]_i_1__0_n_1 ;
  wire \time_out_counter_reg[8]_i_1__0_n_2 ;
  wire \time_out_counter_reg[8]_i_1__0_n_3 ;
  wire \time_out_counter_reg[8]_i_1__0_n_4 ;
  wire \time_out_counter_reg[8]_i_1__0_n_5 ;
  wire \time_out_counter_reg[8]_i_1__0_n_6 ;
  wire \time_out_counter_reg[8]_i_1__0_n_7 ;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire time_tlock_max_i_1_n_0;
  wire time_tlock_max_i_2_n_0;
  wire time_tlock_max_i_3_n_0;
  wire time_tlock_max_i_4_n_0;
  wire time_tlock_max_i_5_n_0;
  wire time_tlock_max_i_6_n_0;
  wire txpmaresetdone_i;
  wire user_clk;
  wire \wait_bypass_count[0]_i_2_n_0 ;
  wire \wait_bypass_count[0]_i_4_n_0 ;
  wire \wait_bypass_count[0]_i_5_n_0 ;
  wire \wait_bypass_count[0]_i_6_n_0 ;
  wire \wait_bypass_count[0]_i_7_n_0 ;
  wire [12:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1_n_7 ;
  wire \wait_time_cnt[0]_i_1_n_0 ;
  wire \wait_time_cnt[0]_i_2__0_n_0 ;
  wire \wait_time_cnt[0]_i_4__0_n_0 ;
  wire \wait_time_cnt[0]_i_5__0_n_0 ;
  wire \wait_time_cnt[0]_i_6__0_n_0 ;
  wire \wait_time_cnt[0]_i_7__0_n_0 ;
  wire \wait_time_cnt[0]_i_8__0_n_0 ;
  wire \wait_time_cnt[0]_i_9__0_n_0 ;
  wire \wait_time_cnt[12]_i_2__0_n_0 ;
  wire \wait_time_cnt[12]_i_3__0_n_0 ;
  wire \wait_time_cnt[12]_i_4__0_n_0 ;
  wire \wait_time_cnt[12]_i_5__0_n_0 ;
  wire \wait_time_cnt[4]_i_2__0_n_0 ;
  wire \wait_time_cnt[4]_i_3__0_n_0 ;
  wire \wait_time_cnt[4]_i_4__0_n_0 ;
  wire \wait_time_cnt[4]_i_5__0_n_0 ;
  wire \wait_time_cnt[8]_i_2__0_n_0 ;
  wire \wait_time_cnt[8]_i_3__0_n_0 ;
  wire \wait_time_cnt[8]_i_4__0_n_0 ;
  wire \wait_time_cnt[8]_i_5__0_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3__0_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_7 ;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFEFEFEF)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_rx_state[0]_i_3_n_0 ),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(rx_state[3]),
        .O(\FSM_sequential_rx_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2222AAAA00000C00)) 
    \FSM_sequential_rx_state[0]_i_2 
       (.I0(time_out_2ms_reg_n_0),
        .I1(rx_state[2]),
        .I2(rx_state[3]),
        .I3(time_tlock_max),
        .I4(reset_time_out_reg_n_0),
        .I5(rx_state[1]),
        .O(\FSM_sequential_rx_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \FSM_sequential_rx_state[0]_i_3 
       (.I0(rx_state[3]),
        .I1(reset_time_out_reg_n_0),
        .I2(gt_rxuserrdy_i),
        .I3(time_out_100us_reg_n_0),
        .O(\FSM_sequential_rx_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100050)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(time_tlock_max),
        .I5(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .O(\FSM_sequential_rx_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h303020302C2C2C2C)) 
    \FSM_sequential_rx_state[1]_i_2 
       (.I0(reset_time_out_reg_n_0),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(time_out_100us_reg_n_0),
        .I4(gt_rxuserrdy_i),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h010C0C0C01000C0C)) 
    \FSM_sequential_rx_state[2]_i_1 
       (.I0(time_out_2ms_reg_n_0),
        .I1(rx_state[2]),
        .I2(rx_state[3]),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .I5(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_rx_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[2]_i_2 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_tlock_max),
        .O(\FSM_sequential_rx_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_rx_state[3]_i_10 
       (.I0(wait_time_cnt_reg[12]),
        .I1(wait_time_cnt_reg[13]),
        .I2(wait_time_cnt_reg[10]),
        .I3(wait_time_cnt_reg[11]),
        .I4(wait_time_cnt_reg[15]),
        .I5(wait_time_cnt_reg[14]),
        .O(\FSM_sequential_rx_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_rx_state[3]_i_11 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[1]),
        .I2(rx_state[1]),
        .I3(rx_state[3]),
        .I4(wait_time_cnt_reg[3]),
        .I5(wait_time_cnt_reg[2]),
        .O(\FSM_sequential_rx_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_rx_state[3]_i_12 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[7]),
        .I2(wait_time_cnt_reg[4]),
        .I3(wait_time_cnt_reg[5]),
        .I4(wait_time_cnt_reg[9]),
        .I5(wait_time_cnt_reg[8]),
        .O(\FSM_sequential_rx_state[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT5 #(
    .INIT(32'h55AF00C0)) 
    \FSM_sequential_rx_state[3]_i_13 
       (.I0(gt_rxuserrdy_i),
        .I1(mmcm_lock_reclocked),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rx_state[3]_i_14 
       (.I0(rx_state[0]),
        .I1(rx_state[1]),
        .O(\FSM_sequential_rx_state[3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[3]_i_15 
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .O(\FSM_sequential_rx_state[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[3]_i_16 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_out_2ms_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0F0F8FBF0F0)) 
    \FSM_sequential_rx_state[3]_i_2 
       (.I0(\FSM_sequential_rx_state[3]_i_8_n_0 ),
        .I1(rx_state[0]),
        .I2(\FSM_sequential_rx_state[3]_i_9_n_0 ),
        .I3(time_out_wait_bypass_s3),
        .I4(rx_state[3]),
        .I5(rx_state[1]),
        .O(\FSM_sequential_rx_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88F0880088008800)) 
    \FSM_sequential_rx_state[3]_i_3 
       (.I0(gtrxreset_i_0),
        .I1(time_out_2ms_reg_n_0),
        .I2(\FSM_sequential_rx_state[3]_i_10_n_0 ),
        .I3(rx_state[0]),
        .I4(\FSM_sequential_rx_state[3]_i_11_n_0 ),
        .I5(\FSM_sequential_rx_state[3]_i_12_n_0 ),
        .O(\FSM_sequential_rx_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAFFFFEAAAEAAA)) 
    \FSM_sequential_rx_state[3]_i_4 
       (.I0(\FSM_sequential_rx_state[3]_i_13_n_0 ),
        .I1(rx_state[2]),
        .I2(reset_time_out_reg_0),
        .I3(\FSM_sequential_rx_state[3]_i_14_n_0 ),
        .I4(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .I5(\wait_time_cnt[0]_i_1_n_0 ),
        .O(\FSM_sequential_rx_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h02020202000000FF)) 
    \FSM_sequential_rx_state[3]_i_5 
       (.I0(time_out_100us_reg_n_0),
        .I1(gt_rxuserrdy_i),
        .I2(reset_time_out_reg_n_0),
        .I3(\FSM_sequential_rx_state[3]_i_15_n_0 ),
        .I4(rx_state[2]),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000200020002F002)) 
    \FSM_sequential_rx_state[3]_i_7 
       (.I0(init_wait_done_reg_n_0),
        .I1(rx_state[2]),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(\FSM_sequential_rx_state[3]_i_16_n_0 ),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_rx_state[3]_i_8 
       (.I0(time_out_100us_reg_n_0),
        .I1(gt_rxuserrdy_i),
        .I2(reset_time_out_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT5 #(
    .INIT(32'h8A000000)) 
    \FSM_sequential_rx_state[3]_i_9 
       (.I0(rx_state[2]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_out_2ms_reg_n_0),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .O(\FSM_sequential_rx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(init_clk_in),
        .CE(sync_pll0lock_cdc_sync_n_0),
        .D(\FSM_sequential_rx_state[0]_i_1_n_0 ),
        .Q(rx_state[0]),
        .R(AR));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(init_clk_in),
        .CE(sync_pll0lock_cdc_sync_n_0),
        .D(\FSM_sequential_rx_state[1]_i_1_n_0 ),
        .Q(rx_state[1]),
        .R(AR));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[2] 
       (.C(init_clk_in),
        .CE(sync_pll0lock_cdc_sync_n_0),
        .D(\FSM_sequential_rx_state[2]_i_1_n_0 ),
        .Q(rx_state[2]),
        .R(AR));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[3] 
       (.C(init_clk_in),
        .CE(sync_pll0lock_cdc_sync_n_0),
        .D(\FSM_sequential_rx_state[3]_i_2_n_0 ),
        .Q(rx_state[3]),
        .R(AR));
  LUT6 #(
    .INIT(64'hFFFFFFCF00008000)) 
    RXUSERRDY_i_1
       (.I0(gt_txuserrdy_i),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(rx_state[2]),
        .I4(rx_state[3]),
        .I5(gt_rxuserrdy_i),
        .O(RXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXUSERRDY_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(RXUSERRDY_i_1_n_0),
        .Q(gt_rxuserrdy_i),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    check_tlock_max_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[3]),
        .I4(check_tlock_max_reg_n_0),
        .O(check_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(check_tlock_max_i_1_n_0),
        .Q(check_tlock_max_reg_n_0),
        .R(AR));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_9 gtrxreset_cdc_sync
       (.gtrxreset_i(gtrxreset_i),
        .init_clk_in(init_clk_in),
        .out(gtrxreset_s),
        .user_clk(user_clk));
  LUT5 #(
    .INIT(32'hFFEF0004)) 
    gtrxreset_i_i_1
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(gtrxreset_i),
        .O(gtrxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtrxreset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_i_i_1_n_0),
        .Q(gtrxreset_i),
        .R(AR));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[5]),
        .O(p_0_in__1[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \init_wait_count[6]_i_1__0 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[3]),
        .I2(\init_wait_count[6]_i_2__0_n_0 ),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[4]),
        .I5(init_wait_count_reg[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \init_wait_count[6]_i_2__0 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(\init_wait_count[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \init_wait_count[7]_i_1__0 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[4]),
        .I2(\init_wait_count[7]_i_3__0_n_0 ),
        .I3(init_wait_count_reg[6]),
        .I4(init_wait_count_reg[7]),
        .I5(init_wait_count_reg[3]),
        .O(init_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \init_wait_count[7]_i_2__0 
       (.I0(init_wait_count_reg[6]),
        .I1(\init_wait_count[7]_i_4__0_n_0 ),
        .I2(init_wait_count_reg[7]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \init_wait_count[7]_i_3__0 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[2]),
        .O(\init_wait_count[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \init_wait_count[7]_i_4__0 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[5]),
        .O(\init_wait_count[7]_i_4__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(\init_wait_count[0]_i_1__0_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__1[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__1[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__1[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__1[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__1[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__1[6]),
        .Q(init_wait_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__1[7]),
        .Q(init_wait_count_reg[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    init_wait_done_i_1__0
       (.I0(\init_wait_count[7]_i_3__0_n_0 ),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[5]),
        .I3(init_wait_count_reg[4]),
        .I4(init_wait_done_i_2__0_n_0),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h1)) 
    init_wait_done_i_2__0
       (.I0(init_wait_count_reg[6]),
        .I1(init_wait_count_reg[7]),
        .O(init_wait_done_i_2__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(AR),
        .D(init_wait_done_i_1__0_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(p_0_in__2[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \mmcm_lock_count[6]_i_1__0 
       (.I0(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I1(mmcm_lock_count_reg[6]),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \mmcm_lock_count[7]_i_1__0 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I2(mmcm_lock_count_reg[7]),
        .O(p_0_in__2[7]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \mmcm_lock_count[8]_i_1__0 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_count_reg[8]),
        .O(p_0_in__2[8]));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \mmcm_lock_count[9]_i_2__0 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_count_reg[8]),
        .I4(mmcm_lock_count_reg[9]),
        .O(\mmcm_lock_count[9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \mmcm_lock_count[9]_i_3__0 
       (.I0(mmcm_lock_count_reg[8]),
        .I1(mmcm_lock_count_reg[6]),
        .I2(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I3(mmcm_lock_count_reg[7]),
        .I4(mmcm_lock_count_reg[9]),
        .O(p_0_in__2[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \mmcm_lock_count[9]_i_4__0 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(\mmcm_lock_count[9]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[2]),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[3]),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[4]),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[5]),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[6]),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[7]),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[8] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[8]),
        .Q(mmcm_lock_count_reg[8]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[9] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2__0_n_0 ),
        .D(p_0_in__2[9]),
        .Q(mmcm_lock_count_reg[9]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    mmcm_lock_reclocked_i_2__0
       (.I0(mmcm_lock_count_reg[9]),
        .I1(mmcm_lock_count_reg[8]),
        .I2(mmcm_lock_count_reg[6]),
        .I3(\mmcm_lock_count[9]_i_4__0_n_0 ),
        .I4(mmcm_lock_count_reg[7]),
        .O(mmcm_lock_reclocked_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(sync_mmcm_lock_reclocked_cdc_sync_n_1),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0F0E0C0EC3CEC0CE)) 
    reset_time_out_i_2
       (.I0(reset_time_out_reg_0),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(mmcm_lock_reclocked),
        .I5(gt_rxuserrdy_i),
        .O(reset_time_out_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'h1)) 
    reset_time_out_i_3
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .O(gtrxreset_i_0));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT5 #(
    .INIT(32'h34347674)) 
    reset_time_out_i_4
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .I2(rx_state[0]),
        .I3(reset_time_out_reg_0),
        .I4(rx_state[1]),
        .O(reset_time_out_i_4_n_0));
  FDSE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(sync_pll0lock_cdc_sync_n_1),
        .Q(reset_time_out_reg_n_0),
        .S(AR));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT5 #(
    .INIT(32'hFFFB0100)) 
    run_phase_alignment_int_i_1__0
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1__0_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(AR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hABA8)) 
    rx_fsm_reset_done_int_i_1
       (.I0(rx_fsm_reset_done_int_1),
        .I1(rx_fsm_reset_done_int_i_3_n_0),
        .I2(rx_fsm_reset_done_int_i_4_n_0),
        .I3(rx_fsm_reset_done_int),
        .O(rx_fsm_reset_done_int_i_1_n_0));
  LUT5 #(
    .INIT(32'h00040000)) 
    rx_fsm_reset_done_int_i_2
       (.I0(rx_state[0]),
        .I1(time_out_1us_reg_n_0),
        .I2(rx_state[2]),
        .I3(reset_time_out_reg_n_0),
        .I4(gt_rxuserrdy_i),
        .O(rx_fsm_reset_done_int_1));
  LUT6 #(
    .INIT(64'h0400040004040400)) 
    rx_fsm_reset_done_int_i_3
       (.I0(\FSM_sequential_rx_state[3]_i_15_n_0 ),
        .I1(rx_state[3]),
        .I2(rx_state[2]),
        .I3(gt_rxuserrdy_i),
        .I4(time_out_100us_reg_n_0),
        .I5(reset_time_out_reg_n_0),
        .O(rx_fsm_reset_done_int_i_3_n_0));
  LUT6 #(
    .INIT(64'h0008000808080008)) 
    rx_fsm_reset_done_int_i_4
       (.I0(rx_fsm_reset_done_int_i_5_n_0),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(gt_rxuserrdy_i),
        .I4(time_out_1us_reg_n_0),
        .I5(reset_time_out_reg_n_0),
        .O(rx_fsm_reset_done_int_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rx_fsm_reset_done_int_i_5
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .O(rx_fsm_reset_done_int_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_i_1_n_0),
        .Q(rx_fsm_reset_done_int),
        .R(AR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_s3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(sync_rx_fsm_reset_done_int_cdc_sync_n_0),
        .Q(rx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    rxpmaresetdone_i_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(gtrxreset_s),
        .D(rxpmaresetdone_rx_s),
        .Q(rxpmaresetdone_i));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync_10 rxpmaresetdone_rx_cdc_sync
       (.out(rxpmaresetdone_rx_s),
        .user_clk(user_clk));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    rxresetdone_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_11 sync2_pmaresetdone_cdc_sync
       (.init_clk_in(init_clk_in),
        .rxpmaresetdone_i(rxpmaresetdone_i),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_12 sync2_txpmaresetdone_cdc_sync
       (.init_clk_in(init_clk_in),
        .txpmaresetdone_i(txpmaresetdone_i),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_13 sync_RXRESETDONE_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(rxresetdone_s2),
        .rxfsm_rxresetdone_r(rxfsm_rxresetdone_r),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync_14 sync_mmcm_lock_reclocked_cdc_sync
       (.SR(sync_mmcm_lock_reclocked_cdc_sync_n_0),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(sync_mmcm_lock_reclocked_cdc_sync_n_1),
        .mmcm_lock_reclocked_reg_0(mmcm_lock_reclocked_i_2__0_n_0));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync_15 sync_pll0lock_cdc_sync
       (.E(sync_pll0lock_cdc_sync_n_0),
        .\FSM_sequential_rx_state_reg[0] (\FSM_sequential_rx_state[3]_i_3_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_0 (\FSM_sequential_rx_state[3]_i_4_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_1 (\FSM_sequential_rx_state[3]_i_5_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_2 (\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .\FSM_sequential_rx_state_reg[1] (sync_pll0lock_cdc_sync_n_1),
        .Q(rx_state),
        .gtrxreset_i_0(gtrxreset_i_0),
        .init_clk_in(init_clk_in),
        .quad1_common_lock_in(quad1_common_lock_in),
        .reset_time_out_reg(reset_time_out_i_2_n_0),
        .reset_time_out_reg_0(reset_time_out_i_4_n_0),
        .reset_time_out_reg_1(reset_time_out_reg_n_0),
        .rxresetdone_s3(rxresetdone_s3));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync_16 sync_pll1lock_cdc_sync
       (.init_clk_in(init_clk_in));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_17 sync_run_phase_alignment_int_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(run_phase_alignment_int_s2),
        .p_level_in_d1_cdc_from_reg_0(run_phase_alignment_int_reg_n_0),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_18 sync_rx_fsm_reset_done_int_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(sync_rx_fsm_reset_done_int_cdc_sync_n_0),
        .rx_fsm_reset_done_int(rx_fsm_reset_done_int),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_19 sync_time_out_wait_bypass_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(time_out_wait_bypass_s2),
        .p_level_in_d1_cdc_from_reg_0(time_out_wait_bypass_reg_n_0),
        .user_clk(user_clk));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    time_out_100us_i_1
       (.I0(\time_out_counter[0]_i_5_n_0 ),
        .I1(time_out_100us_i_2_n_0),
        .I2(time_out_100us_i_3_n_0),
        .I3(time_out_100us_i_4_n_0),
        .I4(time_out_100us_reg_n_0),
        .O(time_out_100us_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_100us_i_2
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[16]),
        .O(time_out_100us_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    time_out_100us_i_3
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[13]),
        .O(time_out_100us_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    time_out_100us_i_4
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[4]),
        .I4(time_out_counter_reg[5]),
        .I5(time_out_counter_reg[6]),
        .O(time_out_100us_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_100us_i_1_n_0),
        .Q(time_out_100us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hFF02)) 
    time_out_1us_i_1
       (.I0(time_out_1us_i_2_n_0),
        .I1(\time_out_counter[0]_i_3_n_0 ),
        .I2(time_out_100us_i_2_n_0),
        .I3(time_out_1us_reg_n_0),
        .O(time_out_1us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    time_out_1us_i_2
       (.I0(time_out_1us_i_3_n_0),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[12]),
        .I3(time_out_counter_reg[1]),
        .I4(time_out_counter_reg[5]),
        .I5(time_out_counter_reg[6]),
        .O(time_out_1us_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_out_1us_i_3
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[2]),
        .O(time_out_1us_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_1us_i_1_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    time_out_2ms_i_1
       (.I0(\time_out_counter[0]_i_3_n_0 ),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[6]),
        .I3(\time_out_counter[0]_i_4__0_n_0 ),
        .I4(\time_out_counter[0]_i_5_n_0 ),
        .I5(time_out_2ms_reg_n_0),
        .O(time_out_2ms_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \time_out_counter[0]_i_1 
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[5]),
        .I2(\time_out_counter[0]_i_3_n_0 ),
        .I3(\time_out_counter[0]_i_4__0_n_0 ),
        .I4(\time_out_counter[0]_i_5_n_0 ),
        .O(time_out_counter));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[4]),
        .I4(time_out_100us_i_3_n_0),
        .O(\time_out_counter[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \time_out_counter[0]_i_4__0 
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[16]),
        .O(\time_out_counter[0]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \time_out_counter[0]_i_5 
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[0]),
        .I4(time_out_counter_reg[2]),
        .O(\time_out_counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_6__0 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_6__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__0_n_0 ,\time_out_counter_reg[0]_i_2__0_n_1 ,\time_out_counter_reg[0]_i_2__0_n_2 ,\time_out_counter_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__0_n_4 ,\time_out_counter_reg[0]_i_2__0_n_5 ,\time_out_counter_reg[0]_i_2__0_n_6 ,\time_out_counter_reg[0]_i_2__0_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_6__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[12]_i_1__0 
       (.CI(\time_out_counter_reg[8]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__0_n_0 ,\time_out_counter_reg[12]_i_1__0_n_1 ,\time_out_counter_reg[12]_i_1__0_n_2 ,\time_out_counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__0_n_4 ,\time_out_counter_reg[12]_i_1__0_n_5 ,\time_out_counter_reg[12]_i_1__0_n_6 ,\time_out_counter_reg[12]_i_1__0_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[16]_i_1__0 
       (.CI(\time_out_counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1__0_n_6 ,\time_out_counter_reg[16]_i_1__0_n_7 }),
        .S({1'b0,1'b0,time_out_counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[4]_i_1__0 
       (.CI(\time_out_counter_reg[0]_i_2__0_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__0_n_0 ,\time_out_counter_reg[4]_i_1__0_n_1 ,\time_out_counter_reg[4]_i_1__0_n_2 ,\time_out_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__0_n_4 ,\time_out_counter_reg[4]_i_1__0_n_5 ,\time_out_counter_reg[4]_i_1__0_n_6 ,\time_out_counter_reg[4]_i_1__0_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[8]_i_1__0 
       (.CI(\time_out_counter_reg[4]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__0_n_0 ,\time_out_counter_reg[8]_i_1__0_n_1 ,\time_out_counter_reg[8]_i_1__0_n_2 ,\time_out_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__0_n_4 ,\time_out_counter_reg[8]_i_1__0_n_5 ,\time_out_counter_reg[8]_i_1__0_n_6 ,\time_out_counter_reg[8]_i_1__0_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(rx_fsm_reset_done_int_s3),
        .I2(\wait_bypass_count[0]_i_4_n_0 ),
        .I3(run_phase_alignment_int_s3_reg_n_0),
        .O(time_out_wait_bypass_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFC888)) 
    time_tlock_max_i_1
       (.I0(time_out_counter_reg[13]),
        .I1(check_tlock_max_reg_n_0),
        .I2(time_tlock_max_i_2_n_0),
        .I3(time_out_counter_reg[12]),
        .I4(time_tlock_max_i_3_n_0),
        .I5(time_tlock_max),
        .O(time_tlock_max_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max_i_2
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[11]),
        .O(time_tlock_max_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFF88888888888)) 
    time_tlock_max_i_3
       (.I0(check_tlock_max_reg_n_0),
        .I1(time_out_100us_i_2_n_0),
        .I2(time_out_counter_reg[3]),
        .I3(time_tlock_max_i_4_n_0),
        .I4(time_tlock_max_i_5_n_0),
        .I5(time_tlock_max_i_6_n_0),
        .O(time_tlock_max_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    time_tlock_max_i_4
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[1]),
        .O(time_tlock_max_i_4_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    time_tlock_max_i_5
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[4]),
        .O(time_tlock_max_i_5_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    time_tlock_max_i_6
       (.I0(check_tlock_max_reg_n_0),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[7]),
        .O(time_tlock_max_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max),
        .R(reset_time_out_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    txpmaresetdone_i_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(gtrxreset_s),
        .D(1'b1),
        .Q(txpmaresetdone_i));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1 
       (.I0(run_phase_alignment_int_s3_reg_n_0),
        .O(clear));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2 
       (.I0(\wait_bypass_count[0]_i_4_n_0 ),
        .I1(rx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \wait_bypass_count[0]_i_4 
       (.I0(\wait_bypass_count[0]_i_6_n_0 ),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[11]),
        .I3(wait_bypass_count_reg[0]),
        .I4(\wait_bypass_count[0]_i_7_n_0 ),
        .O(\wait_bypass_count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_5 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \wait_bypass_count[0]_i_6 
       (.I0(wait_bypass_count_reg[9]),
        .I1(wait_bypass_count_reg[4]),
        .I2(wait_bypass_count_reg[12]),
        .I3(wait_bypass_count_reg[2]),
        .O(\wait_bypass_count[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \wait_bypass_count[0]_i_7 
       (.I0(wait_bypass_count_reg[5]),
        .I1(wait_bypass_count_reg[7]),
        .I2(wait_bypass_count_reg[3]),
        .I3(wait_bypass_count_reg[6]),
        .I4(wait_bypass_count_reg[10]),
        .I5(wait_bypass_count_reg[8]),
        .O(\wait_bypass_count[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3_n_0 ,\wait_bypass_count_reg[0]_i_3_n_1 ,\wait_bypass_count_reg[0]_i_3_n_2 ,\wait_bypass_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3_n_4 ,\wait_bypass_count_reg[0]_i_3_n_5 ,\wait_bypass_count_reg[0]_i_3_n_6 ,\wait_bypass_count_reg[0]_i_3_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\wait_bypass_count_reg[8]_i_1_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1_O_UNCONNECTED [3:1],\wait_bypass_count_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\wait_bypass_count_reg[0]_i_3_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1_n_0 ,\wait_bypass_count_reg[4]_i_1_n_1 ,\wait_bypass_count_reg[4]_i_1_n_2 ,\wait_bypass_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1_n_4 ,\wait_bypass_count_reg[4]_i_1_n_5 ,\wait_bypass_count_reg[4]_i_1_n_6 ,\wait_bypass_count_reg[4]_i_1_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\wait_bypass_count_reg[4]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1_n_0 ,\wait_bypass_count_reg[8]_i_1_n_1 ,\wait_bypass_count_reg[8]_i_1_n_2 ,\wait_bypass_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1_n_4 ,\wait_bypass_count_reg[8]_i_1_n_5 ,\wait_bypass_count_reg[8]_i_1_n_6 ,\wait_bypass_count_reg[8]_i_1_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(user_clk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(clear));
  LUT3 #(
    .INIT(8'h02)) 
    \wait_time_cnt[0]_i_1 
       (.I0(rx_state[0]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .O(\wait_time_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_2__0 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(\wait_time_cnt[0]_i_4__0_n_0 ),
        .I5(\wait_time_cnt[0]_i_5__0_n_0 ),
        .O(\wait_time_cnt[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_4__0 
       (.I0(wait_time_cnt_reg[14]),
        .I1(wait_time_cnt_reg[15]),
        .I2(wait_time_cnt_reg[12]),
        .I3(wait_time_cnt_reg[13]),
        .I4(wait_time_cnt_reg[11]),
        .I5(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_5__0 
       (.I0(wait_time_cnt_reg[8]),
        .I1(wait_time_cnt_reg[9]),
        .I2(wait_time_cnt_reg[6]),
        .I3(wait_time_cnt_reg[7]),
        .I4(wait_time_cnt_reg[5]),
        .I5(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[0]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_6__0 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_7__0 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8__0 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9__0 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_9__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2__0 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3__0 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4__0 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5__0 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2__0 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3__0 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4__0 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5__0 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2__0 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3__0 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4__0 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5__0 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5__0_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3__0_n_0 ,\wait_time_cnt_reg[0]_i_3__0_n_1 ,\wait_time_cnt_reg[0]_i_3__0_n_2 ,\wait_time_cnt_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3__0_n_4 ,\wait_time_cnt_reg[0]_i_3__0_n_5 ,\wait_time_cnt_reg[0]_i_3__0_n_6 ,\wait_time_cnt_reg[0]_i_3__0_n_7 }),
        .S({\wait_time_cnt[0]_i_6__0_n_0 ,\wait_time_cnt[0]_i_7__0_n_0 ,\wait_time_cnt[0]_i_8__0_n_0 ,\wait_time_cnt[0]_i_9__0_n_0 }));
  FDRE \wait_time_cnt_reg[10] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[11] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[12] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[12]_i_1__0 
       (.CI(\wait_time_cnt_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1__0_n_1 ,\wait_time_cnt_reg[12]_i_1__0_n_2 ,\wait_time_cnt_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1__0_n_4 ,\wait_time_cnt_reg[12]_i_1__0_n_5 ,\wait_time_cnt_reg[12]_i_1__0_n_6 ,\wait_time_cnt_reg[12]_i_1__0_n_7 }),
        .S({\wait_time_cnt[12]_i_2__0_n_0 ,\wait_time_cnt[12]_i_3__0_n_0 ,\wait_time_cnt[12]_i_4__0_n_0 ,\wait_time_cnt[12]_i_5__0_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[14] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[15] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[1] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[2] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[3] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[4] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[4]_i_1__0 
       (.CI(\wait_time_cnt_reg[0]_i_3__0_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1__0_n_0 ,\wait_time_cnt_reg[4]_i_1__0_n_1 ,\wait_time_cnt_reg[4]_i_1__0_n_2 ,\wait_time_cnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1__0_n_4 ,\wait_time_cnt_reg[4]_i_1__0_n_5 ,\wait_time_cnt_reg[4]_i_1__0_n_6 ,\wait_time_cnt_reg[4]_i_1__0_n_7 }),
        .S({\wait_time_cnt[4]_i_2__0_n_0 ,\wait_time_cnt[4]_i_3__0_n_0 ,\wait_time_cnt[4]_i_4__0_n_0 ,\wait_time_cnt[4]_i_5__0_n_0 }));
  FDSE \wait_time_cnt_reg[5] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[7] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[8] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[8]_i_1__0 
       (.CI(\wait_time_cnt_reg[4]_i_1__0_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1__0_n_0 ,\wait_time_cnt_reg[8]_i_1__0_n_1 ,\wait_time_cnt_reg[8]_i_1__0_n_2 ,\wait_time_cnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1__0_n_4 ,\wait_time_cnt_reg[8]_i_1__0_n_5 ,\wait_time_cnt_reg[8]_i_1__0_n_6 ,\wait_time_cnt_reg[8]_i_1__0_n_7 }),
        .S({\wait_time_cnt[8]_i_2__0_n_0 ,\wait_time_cnt[8]_i_3__0_n_0 ,\wait_time_cnt[8]_i_4__0_n_0 ,\wait_time_cnt[8]_i_5__0_n_0 }));
  FDRE \wait_time_cnt_reg[9] 
       (.C(init_clk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_scrambler" *) 
module aurora_8b10b_0_aurora_8b10b_0_scrambler
   (SS,
    Q,
    DOUT,
    clear_nxt2,
    reset_lanes_i,
    \lfsr_reg[15]_0 ,
    gen_v_r2,
    D,
    \DOUT_reg[0]_0 ,
    user_clk,
    \DOUT_reg[15]_0 ,
    \DOUT_reg[14]_0 ,
    \DOUT_reg[13]_0 ,
    \DOUT_reg[12]_0 ,
    \DOUT_reg[11]_0 ,
    \DOUT_reg[10]_0 ,
    \DOUT_reg[9]_0 ,
    \DOUT_reg[8]_0 ,
    \DOUT_reg[5]_0 ,
    \DOUT_reg[4]_0 ,
    \DOUT_reg[1]_0 ,
    \DOUT_reg[0]_1 );
  output [0:0]SS;
  output [11:0]Q;
  output [15:0]DOUT;
  input clear_nxt2;
  input reset_lanes_i;
  input \lfsr_reg[15]_0 ;
  input gen_v_r2;
  input [3:0]D;
  input \DOUT_reg[0]_0 ;
  input user_clk;
  input \DOUT_reg[15]_0 ;
  input \DOUT_reg[14]_0 ;
  input \DOUT_reg[13]_0 ;
  input \DOUT_reg[12]_0 ;
  input \DOUT_reg[11]_0 ;
  input \DOUT_reg[10]_0 ;
  input \DOUT_reg[9]_0 ;
  input \DOUT_reg[8]_0 ;
  input \DOUT_reg[5]_0 ;
  input \DOUT_reg[4]_0 ;
  input \DOUT_reg[1]_0 ;
  input \DOUT_reg[0]_1 ;

  wire [3:0]D;
  wire [15:0]DOUT;
  wire \DOUT[2]_i_1_n_0 ;
  wire \DOUT[3]_i_1_n_0 ;
  wire \DOUT[6]_i_1_n_0 ;
  wire \DOUT[7]_i_1_n_0 ;
  wire \DOUT_reg[0]_0 ;
  wire \DOUT_reg[0]_1 ;
  wire \DOUT_reg[10]_0 ;
  wire \DOUT_reg[11]_0 ;
  wire \DOUT_reg[12]_0 ;
  wire \DOUT_reg[13]_0 ;
  wire \DOUT_reg[14]_0 ;
  wire \DOUT_reg[15]_0 ;
  wire \DOUT_reg[1]_0 ;
  wire \DOUT_reg[4]_0 ;
  wire \DOUT_reg[5]_0 ;
  wire \DOUT_reg[8]_0 ;
  wire \DOUT_reg[9]_0 ;
  wire [11:0]Q;
  wire [0:0]SS;
  wire clear_nxt2;
  wire gen_v_r2;
  wire [12:3]lfsrNext;
  wire \lfsr_reg[15]_0 ;
  wire p_0_in;
  wire p_1_in;
  wire p_3_in;
  wire p_6_in;
  wire reset_lanes_i;
  wire user_clk;

  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[2]_i_1 
       (.I0(p_6_in),
        .I1(D[0]),
        .O(\DOUT[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[3]_i_1 
       (.I0(p_3_in),
        .I1(D[1]),
        .O(\DOUT[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[6]_i_1 
       (.I0(p_0_in),
        .I1(D[2]),
        .O(\DOUT[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[7]_i_1 
       (.I0(p_1_in),
        .I1(D[3]),
        .O(\DOUT[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[0] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[0]_1 ),
        .Q(DOUT[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[10] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[10]_0 ),
        .Q(DOUT[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[11] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[11]_0 ),
        .Q(DOUT[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[12] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[12]_0 ),
        .Q(DOUT[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[13] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[13]_0 ),
        .Q(DOUT[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[14] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[14]_0 ),
        .Q(DOUT[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[15] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[15]_0 ),
        .Q(DOUT[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[1] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[1]_0 ),
        .Q(DOUT[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[2] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT[2]_i_1_n_0 ),
        .Q(DOUT[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[3] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT[3]_i_1_n_0 ),
        .Q(DOUT[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[4] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[4]_0 ),
        .Q(DOUT[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[5] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[5]_0 ),
        .Q(DOUT[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[6] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT[6]_i_1_n_0 ),
        .Q(DOUT[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[7] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT[7]_i_1_n_0 ),
        .Q(DOUT[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[8] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[8]_0 ),
        .Q(DOUT[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[9] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[9]_0 ),
        .Q(DOUT[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[10]_i_1 
       (.I0(Q[2]),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(p_6_in),
        .O(lfsrNext[10]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[11]_i_1 
       (.I0(Q[10]),
        .I1(Q[3]),
        .I2(Q[11]),
        .O(lfsrNext[11]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[12]_i_1 
       (.I0(Q[11]),
        .I1(Q[4]),
        .O(lfsrNext[12]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \lfsr[15]_i_1__2 
       (.I0(clear_nxt2),
        .I1(reset_lanes_i),
        .I2(\lfsr_reg[15]_0 ),
        .I3(gen_v_r2),
        .O(SS));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[3]_i_1 
       (.I0(p_1_in),
        .I1(Q[9]),
        .O(lfsrNext[3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[4]_i_1 
       (.I0(p_3_in),
        .I1(p_1_in),
        .I2(p_0_in),
        .O(lfsrNext[4]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[5]_i_1 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(Q[8]),
        .I3(p_6_in),
        .O(lfsrNext[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[6]_i_1 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_0_in),
        .O(lfsrNext[6]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[7]_i_1 
       (.I0(Q[11]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_3_in),
        .O(lfsrNext[7]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[8]_i_1 
       (.I0(p_3_in),
        .I1(p_6_in),
        .I2(Q[0]),
        .I3(Q[9]),
        .O(lfsrNext[8]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[9]_i_1 
       (.I0(p_3_in),
        .I1(p_6_in),
        .I2(Q[1]),
        .I3(Q[10]),
        .O(lfsrNext[9]));
  FDSE \lfsr_reg[0] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(p_1_in),
        .Q(Q[0]),
        .S(SS));
  FDSE \lfsr_reg[10] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[10]),
        .Q(Q[8]),
        .S(SS));
  FDSE \lfsr_reg[11] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[11]),
        .Q(Q[9]),
        .S(SS));
  FDSE \lfsr_reg[12] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[12]),
        .Q(p_3_in),
        .S(SS));
  FDSE \lfsr_reg[13] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(Q[5]),
        .Q(p_6_in),
        .S(SS));
  FDSE \lfsr_reg[14] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(Q[6]),
        .Q(Q[10]),
        .S(SS));
  FDSE \lfsr_reg[15] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(Q[7]),
        .Q(Q[11]),
        .S(SS));
  FDSE \lfsr_reg[1] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(p_0_in),
        .Q(Q[1]),
        .S(SS));
  FDSE \lfsr_reg[2] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(Q[8]),
        .Q(Q[2]),
        .S(SS));
  FDSE \lfsr_reg[3] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[3]),
        .Q(Q[3]),
        .S(SS));
  FDSE \lfsr_reg[4] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[4]),
        .Q(Q[4]),
        .S(SS));
  FDSE \lfsr_reg[5] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[5]),
        .Q(Q[5]),
        .S(SS));
  FDSE \lfsr_reg[6] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[6]),
        .Q(Q[6]),
        .S(SS));
  FDSE \lfsr_reg[7] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[7]),
        .Q(Q[7]),
        .S(SS));
  FDSE \lfsr_reg[8] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[8]),
        .Q(p_1_in),
        .S(SS));
  FDSE \lfsr_reg[9] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[9]),
        .Q(p_0_in),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_scrambler" *) 
module aurora_8b10b_0_aurora_8b10b_0_scrambler_26
   (Q,
    \DOUT_reg[15]_0 ,
    \DOUT_reg[14]_0 ,
    \DOUT_reg[13]_0 ,
    \DOUT_reg[12]_0 ,
    \DOUT_reg[11]_0 ,
    \DOUT_reg[10]_0 ,
    \DOUT_reg[9]_0 ,
    \DOUT_reg[8]_0 ,
    \DOUT_reg[7]_0 ,
    \DOUT_reg[6]_0 ,
    \DOUT_reg[5]_0 ,
    \DOUT_reg[4]_0 ,
    \DOUT_reg[3]_0 ,
    \DOUT_reg[2]_0 ,
    \DOUT_reg[1]_0 ,
    \DOUT_reg[0]_0 ,
    D,
    SS,
    \DOUT_reg[0]_1 ,
    user_clk,
    \DOUT_reg[15]_1 ,
    \DOUT_reg[14]_1 ,
    \DOUT_reg[13]_1 ,
    \DOUT_reg[12]_1 ,
    \DOUT_reg[11]_1 ,
    \DOUT_reg[10]_1 ,
    \DOUT_reg[9]_1 ,
    \DOUT_reg[8]_1 ,
    \DOUT_reg[5]_1 ,
    \DOUT_reg[4]_1 ,
    \DOUT_reg[1]_1 ,
    \DOUT_reg[0]_2 );
  output [11:0]Q;
  output \DOUT_reg[15]_0 ;
  output \DOUT_reg[14]_0 ;
  output \DOUT_reg[13]_0 ;
  output \DOUT_reg[12]_0 ;
  output \DOUT_reg[11]_0 ;
  output \DOUT_reg[10]_0 ;
  output \DOUT_reg[9]_0 ;
  output \DOUT_reg[8]_0 ;
  output \DOUT_reg[7]_0 ;
  output \DOUT_reg[6]_0 ;
  output \DOUT_reg[5]_0 ;
  output \DOUT_reg[4]_0 ;
  output \DOUT_reg[3]_0 ;
  output \DOUT_reg[2]_0 ;
  output \DOUT_reg[1]_0 ;
  output \DOUT_reg[0]_0 ;
  input [3:0]D;
  input [0:0]SS;
  input \DOUT_reg[0]_1 ;
  input user_clk;
  input \DOUT_reg[15]_1 ;
  input \DOUT_reg[14]_1 ;
  input \DOUT_reg[13]_1 ;
  input \DOUT_reg[12]_1 ;
  input \DOUT_reg[11]_1 ;
  input \DOUT_reg[10]_1 ;
  input \DOUT_reg[9]_1 ;
  input \DOUT_reg[8]_1 ;
  input \DOUT_reg[5]_1 ;
  input \DOUT_reg[4]_1 ;
  input \DOUT_reg[1]_1 ;
  input \DOUT_reg[0]_2 ;

  wire [3:0]D;
  wire \DOUT[2]_i_1__0_n_0 ;
  wire \DOUT[3]_i_1__0_n_0 ;
  wire \DOUT[6]_i_1__0_n_0 ;
  wire \DOUT[7]_i_1__0_n_0 ;
  wire \DOUT_reg[0]_0 ;
  wire \DOUT_reg[0]_1 ;
  wire \DOUT_reg[0]_2 ;
  wire \DOUT_reg[10]_0 ;
  wire \DOUT_reg[10]_1 ;
  wire \DOUT_reg[11]_0 ;
  wire \DOUT_reg[11]_1 ;
  wire \DOUT_reg[12]_0 ;
  wire \DOUT_reg[12]_1 ;
  wire \DOUT_reg[13]_0 ;
  wire \DOUT_reg[13]_1 ;
  wire \DOUT_reg[14]_0 ;
  wire \DOUT_reg[14]_1 ;
  wire \DOUT_reg[15]_0 ;
  wire \DOUT_reg[15]_1 ;
  wire \DOUT_reg[1]_0 ;
  wire \DOUT_reg[1]_1 ;
  wire \DOUT_reg[2]_0 ;
  wire \DOUT_reg[3]_0 ;
  wire \DOUT_reg[4]_0 ;
  wire \DOUT_reg[4]_1 ;
  wire \DOUT_reg[5]_0 ;
  wire \DOUT_reg[5]_1 ;
  wire \DOUT_reg[6]_0 ;
  wire \DOUT_reg[7]_0 ;
  wire \DOUT_reg[8]_0 ;
  wire \DOUT_reg[8]_1 ;
  wire \DOUT_reg[9]_0 ;
  wire \DOUT_reg[9]_1 ;
  wire [11:0]Q;
  wire [0:0]SS;
  wire [12:3]lfsrNext;
  wire p_0_in;
  wire p_1_in;
  wire p_3_in;
  wire p_6_in;
  wire user_clk;

  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[2]_i_1__0 
       (.I0(p_6_in),
        .I1(D[0]),
        .O(\DOUT[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[3]_i_1__0 
       (.I0(p_3_in),
        .I1(D[1]),
        .O(\DOUT[3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[6]_i_1__0 
       (.I0(p_0_in),
        .I1(D[2]),
        .O(\DOUT[6]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[7]_i_1__0 
       (.I0(p_1_in),
        .I1(D[3]),
        .O(\DOUT[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[0] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[0]_2 ),
        .Q(\DOUT_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[10] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[10]_1 ),
        .Q(\DOUT_reg[10]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[11] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[11]_1 ),
        .Q(\DOUT_reg[11]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[12] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[12]_1 ),
        .Q(\DOUT_reg[12]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[13] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[13]_1 ),
        .Q(\DOUT_reg[13]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[14] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[14]_1 ),
        .Q(\DOUT_reg[14]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[15] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[15]_1 ),
        .Q(\DOUT_reg[15]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[1] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[1]_1 ),
        .Q(\DOUT_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[2] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT[2]_i_1__0_n_0 ),
        .Q(\DOUT_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[3] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT[3]_i_1__0_n_0 ),
        .Q(\DOUT_reg[3]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[4] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[4]_1 ),
        .Q(\DOUT_reg[4]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[5] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[5]_1 ),
        .Q(\DOUT_reg[5]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[6] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT[6]_i_1__0_n_0 ),
        .Q(\DOUT_reg[6]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[7] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT[7]_i_1__0_n_0 ),
        .Q(\DOUT_reg[7]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[8] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[8]_1 ),
        .Q(\DOUT_reg[8]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[9] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[9]_1 ),
        .Q(\DOUT_reg[9]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[10]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(p_6_in),
        .O(lfsrNext[10]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[11]_i_1__0 
       (.I0(Q[10]),
        .I1(Q[3]),
        .I2(Q[11]),
        .O(lfsrNext[11]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[12]_i_1__0 
       (.I0(Q[11]),
        .I1(Q[4]),
        .O(lfsrNext[12]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[3]_i_1__0 
       (.I0(p_1_in),
        .I1(Q[9]),
        .O(lfsrNext[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[4]_i_1__0 
       (.I0(p_3_in),
        .I1(p_1_in),
        .I2(p_0_in),
        .O(lfsrNext[4]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[5]_i_1__0 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(Q[8]),
        .I3(p_6_in),
        .O(lfsrNext[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[6]_i_1__0 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_0_in),
        .O(lfsrNext[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[7]_i_1__0 
       (.I0(Q[11]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_3_in),
        .O(lfsrNext[7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[8]_i_1__0 
       (.I0(p_3_in),
        .I1(p_6_in),
        .I2(Q[0]),
        .I3(Q[9]),
        .O(lfsrNext[8]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[9]_i_1__0 
       (.I0(p_3_in),
        .I1(p_6_in),
        .I2(Q[1]),
        .I3(Q[10]),
        .O(lfsrNext[9]));
  FDSE \lfsr_reg[0] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(p_1_in),
        .Q(Q[0]),
        .S(SS));
  FDSE \lfsr_reg[10] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[10]),
        .Q(Q[8]),
        .S(SS));
  FDSE \lfsr_reg[11] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[11]),
        .Q(Q[9]),
        .S(SS));
  FDSE \lfsr_reg[12] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[12]),
        .Q(p_3_in),
        .S(SS));
  FDSE \lfsr_reg[13] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(Q[5]),
        .Q(p_6_in),
        .S(SS));
  FDSE \lfsr_reg[14] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(Q[6]),
        .Q(Q[10]),
        .S(SS));
  FDSE \lfsr_reg[15] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(Q[7]),
        .Q(Q[11]),
        .S(SS));
  FDSE \lfsr_reg[1] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(p_0_in),
        .Q(Q[1]),
        .S(SS));
  FDSE \lfsr_reg[2] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(Q[8]),
        .Q(Q[2]),
        .S(SS));
  FDSE \lfsr_reg[3] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[3]),
        .Q(Q[3]),
        .S(SS));
  FDSE \lfsr_reg[4] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[4]),
        .Q(Q[4]),
        .S(SS));
  FDSE \lfsr_reg[5] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[5]),
        .Q(Q[5]),
        .S(SS));
  FDSE \lfsr_reg[6] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[6]),
        .Q(Q[6]),
        .S(SS));
  FDSE \lfsr_reg[7] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[7]),
        .Q(Q[7]),
        .S(SS));
  FDSE \lfsr_reg[8] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[8]),
        .Q(p_1_in),
        .S(SS));
  FDSE \lfsr_reg[9] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[9]),
        .Q(p_0_in),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_scrambler" *) 
module aurora_8b10b_0_aurora_8b10b_0_scrambler_28
   (Q,
    DOUT,
    \DOUT_reg[7]_0 ,
    SS,
    \DOUT_reg[0]_0 ,
    user_clk,
    \DOUT_reg[15]_0 ,
    \DOUT_reg[14]_0 ,
    \DOUT_reg[13]_0 ,
    \DOUT_reg[12]_0 ,
    \DOUT_reg[11]_0 ,
    \DOUT_reg[10]_0 ,
    \DOUT_reg[9]_0 ,
    \DOUT_reg[8]_0 ,
    \DOUT_reg[5]_0 ,
    \DOUT_reg[4]_0 ,
    \DOUT_reg[1]_0 ,
    \DOUT_reg[0]_1 );
  output [11:0]Q;
  output [15:0]DOUT;
  input [3:0]\DOUT_reg[7]_0 ;
  input [0:0]SS;
  input \DOUT_reg[0]_0 ;
  input user_clk;
  input \DOUT_reg[15]_0 ;
  input \DOUT_reg[14]_0 ;
  input \DOUT_reg[13]_0 ;
  input \DOUT_reg[12]_0 ;
  input \DOUT_reg[11]_0 ;
  input \DOUT_reg[10]_0 ;
  input \DOUT_reg[9]_0 ;
  input \DOUT_reg[8]_0 ;
  input \DOUT_reg[5]_0 ;
  input \DOUT_reg[4]_0 ;
  input \DOUT_reg[1]_0 ;
  input \DOUT_reg[0]_1 ;

  wire [15:0]DOUT;
  wire \DOUT[2]_i_1__2_n_0 ;
  wire \DOUT[3]_i_1__2_n_0 ;
  wire \DOUT[6]_i_1__2_n_0 ;
  wire \DOUT[7]_i_1__2_n_0 ;
  wire \DOUT_reg[0]_0 ;
  wire \DOUT_reg[0]_1 ;
  wire \DOUT_reg[10]_0 ;
  wire \DOUT_reg[11]_0 ;
  wire \DOUT_reg[12]_0 ;
  wire \DOUT_reg[13]_0 ;
  wire \DOUT_reg[14]_0 ;
  wire \DOUT_reg[15]_0 ;
  wire \DOUT_reg[1]_0 ;
  wire \DOUT_reg[4]_0 ;
  wire \DOUT_reg[5]_0 ;
  wire [3:0]\DOUT_reg[7]_0 ;
  wire \DOUT_reg[8]_0 ;
  wire \DOUT_reg[9]_0 ;
  wire [11:0]Q;
  wire [0:0]SS;
  wire [12:3]lfsrNext;
  wire p_0_in;
  wire p_1_in;
  wire p_3_in;
  wire p_6_in;
  wire user_clk;

  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[2]_i_1__2 
       (.I0(p_6_in),
        .I1(\DOUT_reg[7]_0 [0]),
        .O(\DOUT[2]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[3]_i_1__2 
       (.I0(p_3_in),
        .I1(\DOUT_reg[7]_0 [1]),
        .O(\DOUT[3]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[6]_i_1__2 
       (.I0(p_0_in),
        .I1(\DOUT_reg[7]_0 [2]),
        .O(\DOUT[6]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[7]_i_1__2 
       (.I0(p_1_in),
        .I1(\DOUT_reg[7]_0 [3]),
        .O(\DOUT[7]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[0] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[0]_1 ),
        .Q(DOUT[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[10] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[10]_0 ),
        .Q(DOUT[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[11] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[11]_0 ),
        .Q(DOUT[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[12] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[12]_0 ),
        .Q(DOUT[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[13] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[13]_0 ),
        .Q(DOUT[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[14] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[14]_0 ),
        .Q(DOUT[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[15] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[15]_0 ),
        .Q(DOUT[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[1] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[1]_0 ),
        .Q(DOUT[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[2] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT[2]_i_1__2_n_0 ),
        .Q(DOUT[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[3] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT[3]_i_1__2_n_0 ),
        .Q(DOUT[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[4] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[4]_0 ),
        .Q(DOUT[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[5] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[5]_0 ),
        .Q(DOUT[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[6] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT[6]_i_1__2_n_0 ),
        .Q(DOUT[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[7] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT[7]_i_1__2_n_0 ),
        .Q(DOUT[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[8] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[8]_0 ),
        .Q(DOUT[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[9] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(\DOUT_reg[9]_0 ),
        .Q(DOUT[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[10]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(p_6_in),
        .O(lfsrNext[10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[11]_i_1__1 
       (.I0(Q[10]),
        .I1(Q[3]),
        .I2(Q[11]),
        .O(lfsrNext[11]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[12]_i_1__1 
       (.I0(Q[11]),
        .I1(Q[4]),
        .O(lfsrNext[12]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[3]_i_1__1 
       (.I0(p_1_in),
        .I1(Q[9]),
        .O(lfsrNext[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[4]_i_1__1 
       (.I0(p_3_in),
        .I1(p_1_in),
        .I2(p_0_in),
        .O(lfsrNext[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[5]_i_1__1 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(Q[8]),
        .I3(p_6_in),
        .O(lfsrNext[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[6]_i_1__1 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_0_in),
        .O(lfsrNext[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[7]_i_1__1 
       (.I0(Q[11]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_3_in),
        .O(lfsrNext[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[8]_i_1__1 
       (.I0(p_3_in),
        .I1(p_6_in),
        .I2(Q[0]),
        .I3(Q[9]),
        .O(lfsrNext[8]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[9]_i_1__1 
       (.I0(p_3_in),
        .I1(p_6_in),
        .I2(Q[1]),
        .I3(Q[10]),
        .O(lfsrNext[9]));
  FDSE \lfsr_reg[0] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(p_1_in),
        .Q(Q[0]),
        .S(SS));
  FDSE \lfsr_reg[10] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[10]),
        .Q(Q[8]),
        .S(SS));
  FDSE \lfsr_reg[11] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[11]),
        .Q(Q[9]),
        .S(SS));
  FDSE \lfsr_reg[12] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[12]),
        .Q(p_3_in),
        .S(SS));
  FDSE \lfsr_reg[13] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(Q[5]),
        .Q(p_6_in),
        .S(SS));
  FDSE \lfsr_reg[14] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(Q[6]),
        .Q(Q[10]),
        .S(SS));
  FDSE \lfsr_reg[15] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(Q[7]),
        .Q(Q[11]),
        .S(SS));
  FDSE \lfsr_reg[1] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(p_0_in),
        .Q(Q[1]),
        .S(SS));
  FDSE \lfsr_reg[2] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(Q[8]),
        .Q(Q[2]),
        .S(SS));
  FDSE \lfsr_reg[3] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[3]),
        .Q(Q[3]),
        .S(SS));
  FDSE \lfsr_reg[4] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[4]),
        .Q(Q[4]),
        .S(SS));
  FDSE \lfsr_reg[5] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[5]),
        .Q(Q[5]),
        .S(SS));
  FDSE \lfsr_reg[6] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[6]),
        .Q(Q[6]),
        .S(SS));
  FDSE \lfsr_reg[7] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[7]),
        .Q(Q[7]),
        .S(SS));
  FDSE \lfsr_reg[8] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[8]),
        .Q(p_1_in),
        .S(SS));
  FDSE \lfsr_reg[9] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_0 ),
        .D(lfsrNext[9]),
        .Q(p_0_in),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_scrambler" *) 
module aurora_8b10b_0_aurora_8b10b_0_scrambler_29
   (Q,
    \DOUT_reg[15]_0 ,
    \DOUT_reg[14]_0 ,
    \DOUT_reg[13]_0 ,
    \DOUT_reg[12]_0 ,
    \DOUT_reg[11]_0 ,
    \DOUT_reg[10]_0 ,
    \DOUT_reg[9]_0 ,
    \DOUT_reg[8]_0 ,
    \DOUT_reg[7]_0 ,
    \DOUT_reg[6]_0 ,
    \DOUT_reg[5]_0 ,
    \DOUT_reg[4]_0 ,
    \DOUT_reg[3]_0 ,
    \DOUT_reg[2]_0 ,
    \DOUT_reg[1]_0 ,
    \DOUT_reg[0]_0 ,
    \DOUT_reg[7]_1 ,
    SS,
    \DOUT_reg[0]_1 ,
    user_clk,
    \DOUT_reg[15]_1 ,
    \DOUT_reg[14]_1 ,
    \DOUT_reg[13]_1 ,
    \DOUT_reg[12]_1 ,
    \DOUT_reg[11]_1 ,
    \DOUT_reg[10]_1 ,
    \DOUT_reg[9]_1 ,
    \DOUT_reg[8]_1 ,
    \DOUT_reg[5]_1 ,
    \DOUT_reg[4]_1 ,
    \DOUT_reg[1]_1 ,
    \DOUT_reg[0]_2 );
  output [11:0]Q;
  output \DOUT_reg[15]_0 ;
  output \DOUT_reg[14]_0 ;
  output \DOUT_reg[13]_0 ;
  output \DOUT_reg[12]_0 ;
  output \DOUT_reg[11]_0 ;
  output \DOUT_reg[10]_0 ;
  output \DOUT_reg[9]_0 ;
  output \DOUT_reg[8]_0 ;
  output \DOUT_reg[7]_0 ;
  output \DOUT_reg[6]_0 ;
  output \DOUT_reg[5]_0 ;
  output \DOUT_reg[4]_0 ;
  output \DOUT_reg[3]_0 ;
  output \DOUT_reg[2]_0 ;
  output \DOUT_reg[1]_0 ;
  output \DOUT_reg[0]_0 ;
  input [3:0]\DOUT_reg[7]_1 ;
  input [0:0]SS;
  input \DOUT_reg[0]_1 ;
  input user_clk;
  input \DOUT_reg[15]_1 ;
  input \DOUT_reg[14]_1 ;
  input \DOUT_reg[13]_1 ;
  input \DOUT_reg[12]_1 ;
  input \DOUT_reg[11]_1 ;
  input \DOUT_reg[10]_1 ;
  input \DOUT_reg[9]_1 ;
  input \DOUT_reg[8]_1 ;
  input \DOUT_reg[5]_1 ;
  input \DOUT_reg[4]_1 ;
  input \DOUT_reg[1]_1 ;
  input \DOUT_reg[0]_2 ;

  wire \DOUT[2]_i_1__1_n_0 ;
  wire \DOUT[3]_i_1__1_n_0 ;
  wire \DOUT[6]_i_1__1_n_0 ;
  wire \DOUT[7]_i_1__1_n_0 ;
  wire \DOUT_reg[0]_0 ;
  wire \DOUT_reg[0]_1 ;
  wire \DOUT_reg[0]_2 ;
  wire \DOUT_reg[10]_0 ;
  wire \DOUT_reg[10]_1 ;
  wire \DOUT_reg[11]_0 ;
  wire \DOUT_reg[11]_1 ;
  wire \DOUT_reg[12]_0 ;
  wire \DOUT_reg[12]_1 ;
  wire \DOUT_reg[13]_0 ;
  wire \DOUT_reg[13]_1 ;
  wire \DOUT_reg[14]_0 ;
  wire \DOUT_reg[14]_1 ;
  wire \DOUT_reg[15]_0 ;
  wire \DOUT_reg[15]_1 ;
  wire \DOUT_reg[1]_0 ;
  wire \DOUT_reg[1]_1 ;
  wire \DOUT_reg[2]_0 ;
  wire \DOUT_reg[3]_0 ;
  wire \DOUT_reg[4]_0 ;
  wire \DOUT_reg[4]_1 ;
  wire \DOUT_reg[5]_0 ;
  wire \DOUT_reg[5]_1 ;
  wire \DOUT_reg[6]_0 ;
  wire \DOUT_reg[7]_0 ;
  wire [3:0]\DOUT_reg[7]_1 ;
  wire \DOUT_reg[8]_0 ;
  wire \DOUT_reg[8]_1 ;
  wire \DOUT_reg[9]_0 ;
  wire \DOUT_reg[9]_1 ;
  wire [11:0]Q;
  wire [0:0]SS;
  wire [12:3]lfsrNext;
  wire p_0_in;
  wire p_1_in;
  wire p_3_in;
  wire p_6_in;
  wire user_clk;

  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[2]_i_1__1 
       (.I0(p_6_in),
        .I1(\DOUT_reg[7]_1 [0]),
        .O(\DOUT[2]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[3]_i_1__1 
       (.I0(p_3_in),
        .I1(\DOUT_reg[7]_1 [1]),
        .O(\DOUT[3]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[6]_i_1__1 
       (.I0(p_0_in),
        .I1(\DOUT_reg[7]_1 [2]),
        .O(\DOUT[6]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DOUT[7]_i_1__1 
       (.I0(p_1_in),
        .I1(\DOUT_reg[7]_1 [3]),
        .O(\DOUT[7]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[0] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[0]_2 ),
        .Q(\DOUT_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[10] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[10]_1 ),
        .Q(\DOUT_reg[10]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[11] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[11]_1 ),
        .Q(\DOUT_reg[11]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[12] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[12]_1 ),
        .Q(\DOUT_reg[12]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[13] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[13]_1 ),
        .Q(\DOUT_reg[13]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[14] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[14]_1 ),
        .Q(\DOUT_reg[14]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[15] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[15]_1 ),
        .Q(\DOUT_reg[15]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[1] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[1]_1 ),
        .Q(\DOUT_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[2] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT[2]_i_1__1_n_0 ),
        .Q(\DOUT_reg[2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[3] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT[3]_i_1__1_n_0 ),
        .Q(\DOUT_reg[3]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[4] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[4]_1 ),
        .Q(\DOUT_reg[4]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[5] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[5]_1 ),
        .Q(\DOUT_reg[5]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[6] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT[6]_i_1__1_n_0 ),
        .Q(\DOUT_reg[6]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[7] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT[7]_i_1__1_n_0 ),
        .Q(\DOUT_reg[7]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[8] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[8]_1 ),
        .Q(\DOUT_reg[8]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_reg[9] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(\DOUT_reg[9]_1 ),
        .Q(\DOUT_reg[9]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[10]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(p_6_in),
        .O(lfsrNext[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[11]_i_1__2 
       (.I0(Q[10]),
        .I1(Q[3]),
        .I2(Q[11]),
        .O(lfsrNext[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[12]_i_1__2 
       (.I0(Q[11]),
        .I1(Q[4]),
        .O(lfsrNext[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr[3]_i_1__2 
       (.I0(p_1_in),
        .I1(Q[9]),
        .O(lfsrNext[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr[4]_i_1__2 
       (.I0(p_3_in),
        .I1(p_1_in),
        .I2(p_0_in),
        .O(lfsrNext[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[5]_i_1__2 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(Q[8]),
        .I3(p_6_in),
        .O(lfsrNext[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[6]_i_1__2 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_0_in),
        .O(lfsrNext[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[7]_i_1__2 
       (.I0(Q[11]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_3_in),
        .O(lfsrNext[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[8]_i_1__2 
       (.I0(p_3_in),
        .I1(p_6_in),
        .I2(Q[0]),
        .I3(Q[9]),
        .O(lfsrNext[8]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr[9]_i_1__2 
       (.I0(p_3_in),
        .I1(p_6_in),
        .I2(Q[1]),
        .I3(Q[10]),
        .O(lfsrNext[9]));
  FDSE \lfsr_reg[0] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(p_1_in),
        .Q(Q[0]),
        .S(SS));
  FDSE \lfsr_reg[10] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[10]),
        .Q(Q[8]),
        .S(SS));
  FDSE \lfsr_reg[11] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[11]),
        .Q(Q[9]),
        .S(SS));
  FDSE \lfsr_reg[12] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[12]),
        .Q(p_3_in),
        .S(SS));
  FDSE \lfsr_reg[13] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(Q[5]),
        .Q(p_6_in),
        .S(SS));
  FDSE \lfsr_reg[14] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(Q[6]),
        .Q(Q[10]),
        .S(SS));
  FDSE \lfsr_reg[15] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(Q[7]),
        .Q(Q[11]),
        .S(SS));
  FDSE \lfsr_reg[1] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(p_0_in),
        .Q(Q[1]),
        .S(SS));
  FDSE \lfsr_reg[2] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(Q[8]),
        .Q(Q[2]),
        .S(SS));
  FDSE \lfsr_reg[3] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[3]),
        .Q(Q[3]),
        .S(SS));
  FDSE \lfsr_reg[4] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[4]),
        .Q(Q[4]),
        .S(SS));
  FDSE \lfsr_reg[5] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[5]),
        .Q(Q[5]),
        .S(SS));
  FDSE \lfsr_reg[6] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[6]),
        .Q(Q[6]),
        .S(SS));
  FDSE \lfsr_reg[7] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[7]),
        .Q(Q[7]),
        .S(SS));
  FDSE \lfsr_reg[8] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[8]),
        .Q(p_1_in),
        .S(SS));
  FDSE \lfsr_reg[9] 
       (.C(user_clk),
        .CE(\DOUT_reg[0]_1 ),
        .D(lfsrNext[9]),
        .Q(p_0_in),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_scrambler_top" *) 
module aurora_8b10b_0_aurora_8b10b_0_scrambler_top
   (Q,
    \lfsr_reg[15] ,
    TXDATA,
    \CHAR_IS_K_OUT_reg[3]_0 ,
    gen_cc_r,
    user_clk,
    reset_lanes_i,
    \lfsr_reg[15]_0 ,
    gen_v_r2,
    D,
    \DOUT_reg[0] ,
    \DOUT_reg[0]_0 ,
    \bypass_r_reg[1]_0 ,
    \DOUT_reg[15] ,
    \DOUT_reg[14] ,
    \DOUT_reg[13] ,
    \DOUT_reg[12] ,
    \DOUT_reg[11] ,
    \DOUT_reg[10] ,
    \DOUT_reg[9] ,
    \DOUT_reg[8] ,
    \DOUT_reg[5] ,
    \DOUT_reg[4] ,
    \DOUT_reg[1] ,
    \DOUT_reg[0]_1 ,
    \DOUT_reg[15]_0 ,
    \DOUT_reg[14]_0 ,
    \DOUT_reg[13]_0 ,
    \DOUT_reg[12]_0 ,
    \DOUT_reg[11]_0 ,
    \DOUT_reg[10]_0 ,
    \DOUT_reg[9]_0 ,
    \DOUT_reg[8]_0 ,
    \DOUT_reg[5]_0 ,
    \DOUT_reg[4]_0 ,
    \DOUT_reg[1]_0 ,
    \DOUT_reg[0]_2 ,
    \CHAR_IS_K_OUT_reg[3]_1 );
  output [11:0]Q;
  output [11:0]\lfsr_reg[15] ;
  output [31:0]TXDATA;
  output [3:0]\CHAR_IS_K_OUT_reg[3]_0 ;
  input gen_cc_r;
  input user_clk;
  input reset_lanes_i;
  input \lfsr_reg[15]_0 ;
  input gen_v_r2;
  input [31:0]D;
  input \DOUT_reg[0] ;
  input \DOUT_reg[0]_0 ;
  input [1:0]\bypass_r_reg[1]_0 ;
  input \DOUT_reg[15] ;
  input \DOUT_reg[14] ;
  input \DOUT_reg[13] ;
  input \DOUT_reg[12] ;
  input \DOUT_reg[11] ;
  input \DOUT_reg[10] ;
  input \DOUT_reg[9] ;
  input \DOUT_reg[8] ;
  input \DOUT_reg[5] ;
  input \DOUT_reg[4] ;
  input \DOUT_reg[1] ;
  input \DOUT_reg[0]_1 ;
  input \DOUT_reg[15]_0 ;
  input \DOUT_reg[14]_0 ;
  input \DOUT_reg[13]_0 ;
  input \DOUT_reg[12]_0 ;
  input \DOUT_reg[11]_0 ;
  input \DOUT_reg[10]_0 ;
  input \DOUT_reg[9]_0 ;
  input \DOUT_reg[8]_0 ;
  input \DOUT_reg[5]_0 ;
  input \DOUT_reg[4]_0 ;
  input \DOUT_reg[1]_0 ;
  input \DOUT_reg[0]_2 ;
  input [3:0]\CHAR_IS_K_OUT_reg[3]_1 ;

  wire [3:0]\CHAR_IS_K_OUT_reg[3]_0 ;
  wire [3:0]\CHAR_IS_K_OUT_reg[3]_1 ;
  wire [31:0]D;
  wire [15:0]DOUT;
  wire \DOUT_reg[0] ;
  wire \DOUT_reg[0]_0 ;
  wire \DOUT_reg[0]_1 ;
  wire \DOUT_reg[0]_2 ;
  wire \DOUT_reg[10] ;
  wire \DOUT_reg[10]_0 ;
  wire \DOUT_reg[11] ;
  wire \DOUT_reg[11]_0 ;
  wire \DOUT_reg[12] ;
  wire \DOUT_reg[12]_0 ;
  wire \DOUT_reg[13] ;
  wire \DOUT_reg[13]_0 ;
  wire \DOUT_reg[14] ;
  wire \DOUT_reg[14]_0 ;
  wire \DOUT_reg[15] ;
  wire \DOUT_reg[15]_0 ;
  wire \DOUT_reg[1] ;
  wire \DOUT_reg[1]_0 ;
  wire \DOUT_reg[4] ;
  wire \DOUT_reg[4]_0 ;
  wire \DOUT_reg[5] ;
  wire \DOUT_reg[5]_0 ;
  wire \DOUT_reg[8] ;
  wire \DOUT_reg[8]_0 ;
  wire \DOUT_reg[9] ;
  wire \DOUT_reg[9]_0 ;
  wire [11:0]Q;
  wire [31:0]TXDATA;
  wire aurora_8b10b_0_scrambler0_i_n_0;
  wire aurora_8b10b_0_scrambler1_i_n_12;
  wire aurora_8b10b_0_scrambler1_i_n_13;
  wire aurora_8b10b_0_scrambler1_i_n_14;
  wire aurora_8b10b_0_scrambler1_i_n_15;
  wire aurora_8b10b_0_scrambler1_i_n_16;
  wire aurora_8b10b_0_scrambler1_i_n_17;
  wire aurora_8b10b_0_scrambler1_i_n_18;
  wire aurora_8b10b_0_scrambler1_i_n_19;
  wire aurora_8b10b_0_scrambler1_i_n_20;
  wire aurora_8b10b_0_scrambler1_i_n_21;
  wire aurora_8b10b_0_scrambler1_i_n_22;
  wire aurora_8b10b_0_scrambler1_i_n_23;
  wire aurora_8b10b_0_scrambler1_i_n_24;
  wire aurora_8b10b_0_scrambler1_i_n_25;
  wire aurora_8b10b_0_scrambler1_i_n_26;
  wire aurora_8b10b_0_scrambler1_i_n_27;
  wire [1:0]bypass_r;
  wire [1:0]\bypass_r_reg[1]_0 ;
  wire clear_nxt2;
  wire [31:0]data_nxt;
  wire gen_cc_r;
  wire gen_v_r2;
  wire [11:0]\lfsr_reg[15] ;
  wire \lfsr_reg[15]_0 ;
  wire reset_lanes_i;
  wire user_clk;

  FDRE \CHAR_IS_K_OUT_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\CHAR_IS_K_OUT_reg[3]_1 [0]),
        .Q(\CHAR_IS_K_OUT_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \CHAR_IS_K_OUT_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\CHAR_IS_K_OUT_reg[3]_1 [1]),
        .Q(\CHAR_IS_K_OUT_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \CHAR_IS_K_OUT_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\CHAR_IS_K_OUT_reg[3]_1 [2]),
        .Q(\CHAR_IS_K_OUT_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \CHAR_IS_K_OUT_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\CHAR_IS_K_OUT_reg[3]_1 [3]),
        .Q(\CHAR_IS_K_OUT_reg[3]_0 [3]),
        .R(1'b0));
  aurora_8b10b_0_aurora_8b10b_0_scrambler aurora_8b10b_0_scrambler0_i
       (.D({D[7:6],D[3:2]}),
        .DOUT(DOUT),
        .\DOUT_reg[0]_0 (\DOUT_reg[0] ),
        .\DOUT_reg[0]_1 (\DOUT_reg[0]_1 ),
        .\DOUT_reg[10]_0 (\DOUT_reg[10] ),
        .\DOUT_reg[11]_0 (\DOUT_reg[11] ),
        .\DOUT_reg[12]_0 (\DOUT_reg[12] ),
        .\DOUT_reg[13]_0 (\DOUT_reg[13] ),
        .\DOUT_reg[14]_0 (\DOUT_reg[14] ),
        .\DOUT_reg[15]_0 (\DOUT_reg[15] ),
        .\DOUT_reg[1]_0 (\DOUT_reg[1] ),
        .\DOUT_reg[4]_0 (\DOUT_reg[4] ),
        .\DOUT_reg[5]_0 (\DOUT_reg[5] ),
        .\DOUT_reg[8]_0 (\DOUT_reg[8] ),
        .\DOUT_reg[9]_0 (\DOUT_reg[9] ),
        .Q(Q),
        .SS(aurora_8b10b_0_scrambler0_i_n_0),
        .clear_nxt2(clear_nxt2),
        .gen_v_r2(gen_v_r2),
        .\lfsr_reg[15]_0 (\lfsr_reg[15]_0 ),
        .reset_lanes_i(reset_lanes_i),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_scrambler_26 aurora_8b10b_0_scrambler1_i
       (.D({D[23:22],D[19:18]}),
        .\DOUT_reg[0]_0 (aurora_8b10b_0_scrambler1_i_n_27),
        .\DOUT_reg[0]_1 (\DOUT_reg[0]_0 ),
        .\DOUT_reg[0]_2 (\DOUT_reg[0]_2 ),
        .\DOUT_reg[10]_0 (aurora_8b10b_0_scrambler1_i_n_17),
        .\DOUT_reg[10]_1 (\DOUT_reg[10]_0 ),
        .\DOUT_reg[11]_0 (aurora_8b10b_0_scrambler1_i_n_16),
        .\DOUT_reg[11]_1 (\DOUT_reg[11]_0 ),
        .\DOUT_reg[12]_0 (aurora_8b10b_0_scrambler1_i_n_15),
        .\DOUT_reg[12]_1 (\DOUT_reg[12]_0 ),
        .\DOUT_reg[13]_0 (aurora_8b10b_0_scrambler1_i_n_14),
        .\DOUT_reg[13]_1 (\DOUT_reg[13]_0 ),
        .\DOUT_reg[14]_0 (aurora_8b10b_0_scrambler1_i_n_13),
        .\DOUT_reg[14]_1 (\DOUT_reg[14]_0 ),
        .\DOUT_reg[15]_0 (aurora_8b10b_0_scrambler1_i_n_12),
        .\DOUT_reg[15]_1 (\DOUT_reg[15]_0 ),
        .\DOUT_reg[1]_0 (aurora_8b10b_0_scrambler1_i_n_26),
        .\DOUT_reg[1]_1 (\DOUT_reg[1]_0 ),
        .\DOUT_reg[2]_0 (aurora_8b10b_0_scrambler1_i_n_25),
        .\DOUT_reg[3]_0 (aurora_8b10b_0_scrambler1_i_n_24),
        .\DOUT_reg[4]_0 (aurora_8b10b_0_scrambler1_i_n_23),
        .\DOUT_reg[4]_1 (\DOUT_reg[4]_0 ),
        .\DOUT_reg[5]_0 (aurora_8b10b_0_scrambler1_i_n_22),
        .\DOUT_reg[5]_1 (\DOUT_reg[5]_0 ),
        .\DOUT_reg[6]_0 (aurora_8b10b_0_scrambler1_i_n_21),
        .\DOUT_reg[7]_0 (aurora_8b10b_0_scrambler1_i_n_20),
        .\DOUT_reg[8]_0 (aurora_8b10b_0_scrambler1_i_n_19),
        .\DOUT_reg[8]_1 (\DOUT_reg[8]_0 ),
        .\DOUT_reg[9]_0 (aurora_8b10b_0_scrambler1_i_n_18),
        .\DOUT_reg[9]_1 (\DOUT_reg[9]_0 ),
        .Q(\lfsr_reg[15] ),
        .SS(aurora_8b10b_0_scrambler0_i_n_0),
        .user_clk(user_clk));
  FDRE \bypass_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\bypass_r_reg[1]_0 [0]),
        .Q(bypass_r[0]),
        .R(1'b0));
  FDRE \bypass_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\bypass_r_reg[1]_0 [1]),
        .Q(bypass_r[1]),
        .R(1'b0));
  FDRE clear_nxt2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_cc_r),
        .Q(clear_nxt2),
        .R(1'b0));
  FDRE \data_nxt_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(data_nxt[0]),
        .R(1'b0));
  FDRE \data_nxt_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(data_nxt[10]),
        .R(1'b0));
  FDRE \data_nxt_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[11]),
        .Q(data_nxt[11]),
        .R(1'b0));
  FDRE \data_nxt_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[12]),
        .Q(data_nxt[12]),
        .R(1'b0));
  FDRE \data_nxt_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[13]),
        .Q(data_nxt[13]),
        .R(1'b0));
  FDRE \data_nxt_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[14]),
        .Q(data_nxt[14]),
        .R(1'b0));
  FDRE \data_nxt_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[15]),
        .Q(data_nxt[15]),
        .R(1'b0));
  FDRE \data_nxt_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[16]),
        .Q(data_nxt[16]),
        .R(1'b0));
  FDRE \data_nxt_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[17]),
        .Q(data_nxt[17]),
        .R(1'b0));
  FDRE \data_nxt_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[18]),
        .Q(data_nxt[18]),
        .R(1'b0));
  FDRE \data_nxt_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[19]),
        .Q(data_nxt[19]),
        .R(1'b0));
  FDRE \data_nxt_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(data_nxt[1]),
        .R(1'b0));
  FDRE \data_nxt_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[20]),
        .Q(data_nxt[20]),
        .R(1'b0));
  FDRE \data_nxt_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[21]),
        .Q(data_nxt[21]),
        .R(1'b0));
  FDRE \data_nxt_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[22]),
        .Q(data_nxt[22]),
        .R(1'b0));
  FDRE \data_nxt_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[23]),
        .Q(data_nxt[23]),
        .R(1'b0));
  FDRE \data_nxt_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[24]),
        .Q(data_nxt[24]),
        .R(1'b0));
  FDRE \data_nxt_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[25]),
        .Q(data_nxt[25]),
        .R(1'b0));
  FDRE \data_nxt_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[26]),
        .Q(data_nxt[26]),
        .R(1'b0));
  FDRE \data_nxt_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[27]),
        .Q(data_nxt[27]),
        .R(1'b0));
  FDRE \data_nxt_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[28]),
        .Q(data_nxt[28]),
        .R(1'b0));
  FDRE \data_nxt_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[29]),
        .Q(data_nxt[29]),
        .R(1'b0));
  FDRE \data_nxt_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(data_nxt[2]),
        .R(1'b0));
  FDRE \data_nxt_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[30]),
        .Q(data_nxt[30]),
        .R(1'b0));
  FDRE \data_nxt_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[31]),
        .Q(data_nxt[31]),
        .R(1'b0));
  FDRE \data_nxt_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(data_nxt[3]),
        .R(1'b0));
  FDRE \data_nxt_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(data_nxt[4]),
        .R(1'b0));
  FDRE \data_nxt_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(data_nxt[5]),
        .R(1'b0));
  FDRE \data_nxt_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(data_nxt[6]),
        .R(1'b0));
  FDRE \data_nxt_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(data_nxt[7]),
        .R(1'b0));
  FDRE \data_nxt_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(data_nxt[8]),
        .R(1'b0));
  FDRE \data_nxt_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(data_nxt[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_19
       (.I0(data_nxt[7]),
        .I1(bypass_r[0]),
        .I2(DOUT[7]),
        .O(TXDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_20
       (.I0(data_nxt[6]),
        .I1(bypass_r[0]),
        .I2(DOUT[6]),
        .O(TXDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_21
       (.I0(data_nxt[5]),
        .I1(bypass_r[0]),
        .I2(DOUT[5]),
        .O(TXDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_22
       (.I0(data_nxt[4]),
        .I1(bypass_r[0]),
        .I2(DOUT[4]),
        .O(TXDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_23
       (.I0(data_nxt[3]),
        .I1(bypass_r[0]),
        .I2(DOUT[3]),
        .O(TXDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_24
       (.I0(data_nxt[2]),
        .I1(bypass_r[0]),
        .I2(DOUT[2]),
        .O(TXDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_25
       (.I0(data_nxt[1]),
        .I1(bypass_r[0]),
        .I2(DOUT[1]),
        .O(TXDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_26
       (.I0(data_nxt[0]),
        .I1(bypass_r[0]),
        .I2(DOUT[0]),
        .O(TXDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_27
       (.I0(data_nxt[15]),
        .I1(bypass_r[0]),
        .I2(DOUT[15]),
        .O(TXDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_28
       (.I0(data_nxt[14]),
        .I1(bypass_r[0]),
        .I2(DOUT[14]),
        .O(TXDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_29
       (.I0(data_nxt[13]),
        .I1(bypass_r[0]),
        .I2(DOUT[13]),
        .O(TXDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_30
       (.I0(data_nxt[12]),
        .I1(bypass_r[0]),
        .I2(DOUT[12]),
        .O(TXDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_31
       (.I0(data_nxt[11]),
        .I1(bypass_r[0]),
        .I2(DOUT[11]),
        .O(TXDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_32
       (.I0(data_nxt[10]),
        .I1(bypass_r[0]),
        .I2(DOUT[10]),
        .O(TXDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_33
       (.I0(data_nxt[9]),
        .I1(bypass_r[0]),
        .I2(DOUT[9]),
        .O(TXDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_34
       (.I0(data_nxt[8]),
        .I1(bypass_r[0]),
        .I2(DOUT[8]),
        .O(TXDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_35
       (.I0(data_nxt[23]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_scrambler1_i_n_20),
        .O(TXDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_36
       (.I0(data_nxt[22]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_scrambler1_i_n_21),
        .O(TXDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_37
       (.I0(data_nxt[21]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_scrambler1_i_n_22),
        .O(TXDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_38
       (.I0(data_nxt[20]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_scrambler1_i_n_23),
        .O(TXDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_39
       (.I0(data_nxt[19]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_scrambler1_i_n_24),
        .O(TXDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_40
       (.I0(data_nxt[18]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_scrambler1_i_n_25),
        .O(TXDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_41
       (.I0(data_nxt[17]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_scrambler1_i_n_26),
        .O(TXDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_42
       (.I0(data_nxt[16]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_scrambler1_i_n_27),
        .O(TXDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_43
       (.I0(data_nxt[31]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_scrambler1_i_n_12),
        .O(TXDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_44
       (.I0(data_nxt[30]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_scrambler1_i_n_13),
        .O(TXDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_45
       (.I0(data_nxt[29]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_scrambler1_i_n_14),
        .O(TXDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_46
       (.I0(data_nxt[28]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_scrambler1_i_n_15),
        .O(TXDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_47
       (.I0(data_nxt[27]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_scrambler1_i_n_16),
        .O(TXDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_48
       (.I0(data_nxt[26]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_scrambler1_i_n_17),
        .O(TXDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_49
       (.I0(data_nxt[25]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_scrambler1_i_n_18),
        .O(TXDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gtpe2_i_i_50
       (.I0(data_nxt[24]),
        .I1(bypass_r[1]),
        .I2(aurora_8b10b_0_scrambler1_i_n_19),
        .O(TXDATA[0]));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_tx_startup_fsm" *) 
module aurora_8b10b_0_aurora_8b10b_0_tx_startup_fsm
   (tx_resetdone_out,
    gt_tx_reset_i,
    gt_common_reset_out,
    gt_txuserrdy_i,
    tx_lock,
    s_level_out_d3_reg,
    quad1_common_lock_in,
    init_clk_in,
    user_clk,
    txfsm_txresetdone_r,
    AR,
    pll_not_locked);
  output tx_resetdone_out;
  output gt_tx_reset_i;
  output gt_common_reset_out;
  output gt_txuserrdy_i;
  output tx_lock;
  output s_level_out_d3_reg;
  input quad1_common_lock_in;
  input init_clk_in;
  input user_clk;
  input txfsm_txresetdone_r;
  input [0:0]AR;
  input pll_not_locked;

  wire [0:0]AR;
  wire \FSM_sequential_tx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_11_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_12_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_9_n_0 ;
  wire MMCM_RESET_i_1_n_0;
  wire PLL0_RESET_i_1_n_0;
  wire TXUSERRDY_i_1_n_0;
  wire gt_common_reset_out;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gttxreset_i_i_1_n_0;
  wire init_clk_in;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1_n_0 ;
  wire \init_wait_count[6]_i_2_n_0 ;
  wire \init_wait_count[7]_i_3_n_0 ;
  wire \init_wait_count[7]_i_4_n_0 ;
  wire [7:0]init_wait_count_reg;
  wire init_wait_done_i_1_n_0;
  wire init_wait_done_i_2_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[9]_i_2_n_0 ;
  wire \mmcm_lock_count[9]_i_4_n_0 ;
  wire [9:0]mmcm_lock_count_reg;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_2_n_0;
  wire mmcm_reset_i;
  wire [7:1]p_0_in;
  wire [9:0]p_0_in__0;
  wire pll_not_locked;
  wire pll_reset_asserted_i_1_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire quad1_common_lock_in;
  wire reset_time_out;
  wire run_phase_alignment_int;
  wire run_phase_alignment_int_i_1_n_0;
  wire s_level_out_d3_reg;
  wire sel;
  wire sync_mmcm_lock_reclocked_cdc_sync_n_0;
  wire sync_mmcm_lock_reclocked_cdc_sync_n_1;
  wire sync_pll0lock_cdc_sync_n_0;
  wire sync_pll0lock_cdc_sync_n_1;
  wire time_out_2ms_i_1__0_n_0;
  wire time_out_2ms_i_2_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1_n_0;
  wire time_out_500us_i_2_n_0;
  wire time_out_500us_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3__0_n_0 ;
  wire \time_out_counter[0]_i_4_n_0 ;
  wire \time_out_counter[0]_i_5__0_n_0 ;
  wire \time_out_counter[0]_i_6_n_0 ;
  wire \time_out_counter[0]_i_7_n_0 ;
  wire [16:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2_n_0 ;
  wire \time_out_counter_reg[0]_i_2_n_1 ;
  wire \time_out_counter_reg[0]_i_2_n_2 ;
  wire \time_out_counter_reg[0]_i_2_n_3 ;
  wire \time_out_counter_reg[0]_i_2_n_4 ;
  wire \time_out_counter_reg[0]_i_2_n_5 ;
  wire \time_out_counter_reg[0]_i_2_n_6 ;
  wire \time_out_counter_reg[0]_i_2_n_7 ;
  wire \time_out_counter_reg[12]_i_1_n_0 ;
  wire \time_out_counter_reg[12]_i_1_n_1 ;
  wire \time_out_counter_reg[12]_i_1_n_2 ;
  wire \time_out_counter_reg[12]_i_1_n_3 ;
  wire \time_out_counter_reg[12]_i_1_n_4 ;
  wire \time_out_counter_reg[12]_i_1_n_5 ;
  wire \time_out_counter_reg[12]_i_1_n_6 ;
  wire \time_out_counter_reg[12]_i_1_n_7 ;
  wire \time_out_counter_reg[16]_i_1_n_7 ;
  wire \time_out_counter_reg[4]_i_1_n_0 ;
  wire \time_out_counter_reg[4]_i_1_n_1 ;
  wire \time_out_counter_reg[4]_i_1_n_2 ;
  wire \time_out_counter_reg[4]_i_1_n_3 ;
  wire \time_out_counter_reg[4]_i_1_n_4 ;
  wire \time_out_counter_reg[4]_i_1_n_5 ;
  wire \time_out_counter_reg[4]_i_1_n_6 ;
  wire \time_out_counter_reg[4]_i_1_n_7 ;
  wire \time_out_counter_reg[8]_i_1_n_0 ;
  wire \time_out_counter_reg[8]_i_1_n_1 ;
  wire \time_out_counter_reg[8]_i_1_n_2 ;
  wire \time_out_counter_reg[8]_i_1_n_3 ;
  wire \time_out_counter_reg[8]_i_1_n_4 ;
  wire \time_out_counter_reg[8]_i_1_n_5 ;
  wire \time_out_counter_reg[8]_i_1_n_6 ;
  wire \time_out_counter_reg[8]_i_1_n_7 ;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max_i_1__0_n_0;
  wire time_tlock_max_i_2__0_n_0;
  wire time_tlock_max_i_3__0_n_0;
  wire time_tlock_max_reg_n_0;
  wire tx_fsm_reset_done_int;
  wire tx_fsm_reset_done_int_i_1_n_0;
  wire tx_lock;
  wire tx_resetdone_out;
  wire [3:0]tx_state;
  wire txfsm_txresetdone_r;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire user_clk;
  wire \wait_time_cnt[0]_i_1__0_n_0 ;
  wire \wait_time_cnt[0]_i_4_n_0 ;
  wire \wait_time_cnt[0]_i_5_n_0 ;
  wire \wait_time_cnt[0]_i_6_n_0 ;
  wire \wait_time_cnt[0]_i_7_n_0 ;
  wire \wait_time_cnt[0]_i_8_n_0 ;
  wire \wait_time_cnt[0]_i_9_n_0 ;
  wire \wait_time_cnt[12]_i_2_n_0 ;
  wire \wait_time_cnt[12]_i_3_n_0 ;
  wire \wait_time_cnt[12]_i_4_n_0 ;
  wire \wait_time_cnt[12]_i_5_n_0 ;
  wire \wait_time_cnt[4]_i_2_n_0 ;
  wire \wait_time_cnt[4]_i_3_n_0 ;
  wire \wait_time_cnt[4]_i_4_n_0 ;
  wire \wait_time_cnt[4]_i_5_n_0 ;
  wire \wait_time_cnt[8]_i_2_n_0 ;
  wire \wait_time_cnt[8]_i_3_n_0 ;
  wire \wait_time_cnt[8]_i_4_n_0 ;
  wire \wait_time_cnt[8]_i_5_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1_n_7 ;
  wire [3:0]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hEFEFEFEFEFFFEFEF)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .I1(tx_state[3]),
        .I2(tx_state[0]),
        .I3(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I4(tx_state[2]),
        .I5(tx_state[1]),
        .O(\FSM_sequential_tx_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT5 #(
    .INIT(32'h2020F000)) 
    \FSM_sequential_tx_state[0]_i_2 
       (.I0(time_out_500us_reg_n_0),
        .I1(reset_time_out),
        .I2(tx_state[1]),
        .I3(time_out_2ms_reg_n_0),
        .I4(tx_state[2]),
        .O(\FSM_sequential_tx_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000F00D0)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[2]),
        .I1(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(tx_state[1]),
        .O(\FSM_sequential_tx_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003400F0000400F0)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(time_out_2ms_reg_n_0),
        .I1(tx_state[1]),
        .I2(tx_state[2]),
        .I3(tx_state[3]),
        .I4(tx_state[0]),
        .I5(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_tx_state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(time_tlock_max_reg_n_0),
        .I1(reset_time_out),
        .I2(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[3]_i_10 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .O(\FSM_sequential_tx_state[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_tx_state[3]_i_11 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_tx_state[3]_i_12 
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .O(\FSM_sequential_tx_state[3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hA2FFA2A2)) 
    \FSM_sequential_tx_state[3]_i_2 
       (.I0(\FSM_sequential_tx_state[3]_i_9_n_0 ),
        .I1(time_out_500us_reg_n_0),
        .I2(reset_time_out),
        .I3(time_out_wait_bypass_s3),
        .I4(tx_state[3]),
        .O(\FSM_sequential_tx_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FF030200000302)) 
    \FSM_sequential_tx_state[3]_i_3 
       (.I0(init_wait_done_reg_n_0),
        .I1(tx_state[2]),
        .I2(tx_state[1]),
        .I3(tx_state[3]),
        .I4(tx_state[0]),
        .I5(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .O(\FSM_sequential_tx_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_tx_state[3]_i_5 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[7]),
        .I2(wait_time_cnt_reg[4]),
        .I3(wait_time_cnt_reg[5]),
        .I4(wait_time_cnt_reg[9]),
        .I5(wait_time_cnt_reg[8]),
        .O(\FSM_sequential_tx_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_tx_state[3]_i_6 
       (.I0(wait_time_cnt_reg[12]),
        .I1(wait_time_cnt_reg[13]),
        .I2(wait_time_cnt_reg[10]),
        .I3(wait_time_cnt_reg[11]),
        .I4(wait_time_cnt_reg[15]),
        .I5(wait_time_cnt_reg[14]),
        .O(\FSM_sequential_tx_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \FSM_sequential_tx_state[3]_i_7 
       (.I0(\FSM_sequential_tx_state[3]_i_11_n_0 ),
        .I1(\FSM_sequential_tx_state[3]_i_12_n_0 ),
        .I2(wait_time_cnt_reg[2]),
        .I3(wait_time_cnt_reg[3]),
        .I4(wait_time_cnt_reg[0]),
        .I5(wait_time_cnt_reg[1]),
        .O(\FSM_sequential_tx_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0404040400040000)) 
    \FSM_sequential_tx_state[3]_i_8 
       (.I0(\FSM_sequential_tx_state[3]_i_10_n_0 ),
        .I1(tx_state[2]),
        .I2(tx_state[1]),
        .I3(reset_time_out),
        .I4(time_tlock_max_reg_n_0),
        .I5(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_sequential_tx_state[3]_i_9 
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .O(\FSM_sequential_tx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(init_clk_in),
        .CE(sync_pll0lock_cdc_sync_n_0),
        .D(\FSM_sequential_tx_state[0]_i_1_n_0 ),
        .Q(tx_state[0]),
        .R(AR));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(init_clk_in),
        .CE(sync_pll0lock_cdc_sync_n_0),
        .D(\FSM_sequential_tx_state[1]_i_1_n_0 ),
        .Q(tx_state[1]),
        .R(AR));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(init_clk_in),
        .CE(sync_pll0lock_cdc_sync_n_0),
        .D(\FSM_sequential_tx_state[2]_i_1_n_0 ),
        .Q(tx_state[2]),
        .R(AR));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[3] 
       (.C(init_clk_in),
        .CE(sync_pll0lock_cdc_sync_n_0),
        .D(\FSM_sequential_tx_state[3]_i_2_n_0 ),
        .Q(tx_state[3]),
        .R(AR));
  LUT5 #(
    .INIT(32'hFFF70004)) 
    MMCM_RESET_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[0]),
        .I2(tx_state[3]),
        .I3(tx_state[1]),
        .I4(mmcm_reset_i),
        .O(MMCM_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    MMCM_RESET_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(MMCM_RESET_i_1_n_0),
        .Q(mmcm_reset_i),
        .R(AR));
  LUT6 #(
    .INIT(64'hFFFFFFF700000004)) 
    PLL0_RESET_i_1
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(tx_state[0]),
        .I2(tx_state[3]),
        .I3(tx_state[2]),
        .I4(tx_state[1]),
        .I5(gt_common_reset_out),
        .O(PLL0_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    PLL0_RESET_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(PLL0_RESET_i_1_n_0),
        .Q(gt_common_reset_out),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT5 #(
    .INIT(32'hFEFF0800)) 
    TXUSERRDY_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(tx_state[0]),
        .I4(gt_txuserrdy_i),
        .O(TXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(TXUSERRDY_i_1_n_0),
        .Q(gt_txuserrdy_i),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT5 #(
    .INIT(32'hFFFB0100)) 
    gttxreset_i_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(tx_state[0]),
        .I4(gt_tx_reset_i),
        .O(gttxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gttxreset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gttxreset_i_i_1_n_0),
        .Q(gt_tx_reset_i),
        .R(AR));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \init_wait_count[6]_i_1 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[3]),
        .I2(\init_wait_count[6]_i_2_n_0 ),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[4]),
        .I5(init_wait_count_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \init_wait_count[6]_i_2 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(\init_wait_count[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \init_wait_count[7]_i_1 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[4]),
        .I2(\init_wait_count[7]_i_3_n_0 ),
        .I3(init_wait_count_reg[6]),
        .I4(init_wait_count_reg[7]),
        .I5(init_wait_count_reg[3]),
        .O(init_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \init_wait_count[7]_i_2 
       (.I0(init_wait_count_reg[6]),
        .I1(\init_wait_count[7]_i_4_n_0 ),
        .I2(init_wait_count_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \init_wait_count[7]_i_3 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[2]),
        .O(\init_wait_count[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \init_wait_count[7]_i_4 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[1]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[5]),
        .O(\init_wait_count[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(\init_wait_count[0]_i_1_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(init_clk_in),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in[7]),
        .Q(init_wait_count_reg[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    init_wait_done_i_1
       (.I0(\init_wait_count[7]_i_3_n_0 ),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[5]),
        .I3(init_wait_count_reg[4]),
        .I4(init_wait_done_i_2_n_0),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h1)) 
    init_wait_done_i_2
       (.I0(init_wait_count_reg[6]),
        .I1(init_wait_count_reg[7]),
        .O(init_wait_done_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(AR),
        .D(init_wait_done_i_1_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \mmcm_lock_count[6]_i_1 
       (.I0(\mmcm_lock_count[9]_i_4_n_0 ),
        .I1(mmcm_lock_count_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \mmcm_lock_count[7]_i_1 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(\mmcm_lock_count[9]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \mmcm_lock_count[8]_i_1 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(\mmcm_lock_count[9]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_count_reg[8]),
        .O(p_0_in__0[8]));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \mmcm_lock_count[9]_i_2 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(\mmcm_lock_count[9]_i_4_n_0 ),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_count_reg[8]),
        .I4(mmcm_lock_count_reg[9]),
        .O(\mmcm_lock_count[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \mmcm_lock_count[9]_i_3 
       (.I0(mmcm_lock_count_reg[8]),
        .I1(mmcm_lock_count_reg[6]),
        .I2(\mmcm_lock_count[9]_i_4_n_0 ),
        .I3(mmcm_lock_count_reg[7]),
        .I4(mmcm_lock_count_reg[9]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \mmcm_lock_count[9]_i_4 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(\mmcm_lock_count[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[8] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[8]),
        .Q(mmcm_lock_count_reg[8]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[9] 
       (.C(init_clk_in),
        .CE(\mmcm_lock_count[9]_i_2_n_0 ),
        .D(p_0_in__0[9]),
        .Q(mmcm_lock_count_reg[9]),
        .R(sync_mmcm_lock_reclocked_cdc_sync_n_0));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    mmcm_lock_reclocked_i_2
       (.I0(mmcm_lock_count_reg[9]),
        .I1(mmcm_lock_count_reg[8]),
        .I2(mmcm_lock_count_reg[6]),
        .I3(\mmcm_lock_count[9]_i_4_n_0 ),
        .I4(mmcm_lock_count_reg[7]),
        .O(mmcm_lock_reclocked_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(sync_mmcm_lock_reclocked_cdc_sync_n_1),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hCCCCCC5C)) 
    pll_reset_asserted_i_1
       (.I0(tx_state[1]),
        .I1(pll_reset_asserted_reg_n_0),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(tx_state[2]),
        .O(pll_reset_asserted_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(sync_pll0lock_cdc_sync_n_1),
        .Q(reset_time_out),
        .R(AR));
  LUT5 #(
    .INIT(32'hFEFF0010)) 
    run_phase_alignment_int_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(tx_state[0]),
        .I4(run_phase_alignment_int),
        .O(run_phase_alignment_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1_n_0),
        .Q(run_phase_alignment_int),
        .R(AR));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_2 sync_TXRESETDONE_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(txresetdone_s2),
        .txfsm_txresetdone_r(txfsm_txresetdone_r),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync_3 sync_mmcm_lock_reclocked_cdc_sync
       (.SR(sync_mmcm_lock_reclocked_cdc_sync_n_0),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(sync_mmcm_lock_reclocked_cdc_sync_n_1),
        .mmcm_lock_reclocked_reg_0(mmcm_lock_reclocked_i_2_n_0),
        .pll_not_locked(pll_not_locked));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync_4 sync_pll0lock_cdc_sync
       (.E(sync_pll0lock_cdc_sync_n_0),
        .\FSM_sequential_tx_state_reg[0] (sync_pll0lock_cdc_sync_n_1),
        .\FSM_sequential_tx_state_reg[0]_0 (\FSM_sequential_tx_state[3]_i_3_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_1 (\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_2 (\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_3 (\FSM_sequential_tx_state[3]_i_7_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_4 (\FSM_sequential_tx_state[3]_i_8_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_5 (pll_reset_asserted_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_6 (\FSM_sequential_tx_state[3]_i_10_n_0 ),
        .Q(tx_state),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .quad1_common_lock_in(quad1_common_lock_in),
        .reset_time_out(reset_time_out),
        .txresetdone_s3(txresetdone_s3));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync_5 sync_pll1lock_cdc_sync
       (.init_clk_in(init_clk_in));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_6 sync_run_phase_alignment_int_cdc_sync
       (.init_clk_in(init_clk_in),
        .run_phase_alignment_int(run_phase_alignment_int),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_7 sync_time_out_wait_bypass_cdc_sync
       (.init_clk_in(init_clk_in),
        .out(time_out_wait_bypass_s2),
        .user_clk(user_clk));
  aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_8 sync_tx_fsm_reset_done_int_cdc_sync
       (.init_clk_in(init_clk_in),
        .s_level_out_d3_reg_0(s_level_out_d3_reg),
        .tx_fsm_reset_done_int(tx_fsm_reset_done_int),
        .tx_resetdone_out(tx_resetdone_out),
        .user_clk(user_clk));
  LUT4 #(
    .INIT(16'h00AE)) 
    time_out_2ms_i_1__0
       (.I0(time_out_2ms_reg_n_0),
        .I1(time_out_2ms_i_2_n_0),
        .I2(\time_out_counter[0]_i_5__0_n_0 ),
        .I3(reset_time_out),
        .O(time_out_2ms_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    time_out_2ms_i_2
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[3]),
        .I5(\time_out_counter[0]_i_3__0_n_0 ),
        .O(time_out_2ms_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1__0_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAEAAA)) 
    time_out_500us_i_1
       (.I0(time_out_500us_reg_n_0),
        .I1(time_out_500us_i_2_n_0),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[8]),
        .I4(\time_out_counter[0]_i_5__0_n_0 ),
        .I5(reset_time_out),
        .O(time_out_500us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    time_out_500us_i_2
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[16]),
        .I5(time_out_counter_reg[15]),
        .O(time_out_500us_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_500us_i_1_n_0),
        .Q(time_out_500us_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \time_out_counter[0]_i_1__0 
       (.I0(time_out_counter_reg[3]),
        .I1(\time_out_counter[0]_i_3__0_n_0 ),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[10]),
        .I4(\time_out_counter[0]_i_4_n_0 ),
        .I5(\time_out_counter[0]_i_5__0_n_0 ),
        .O(time_out_counter));
  LUT3 #(
    .INIT(8'hEF)) 
    \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[9]),
        .O(\time_out_counter[0]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[16]),
        .O(\time_out_counter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \time_out_counter[0]_i_5__0 
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[0]),
        .I5(\time_out_counter[0]_i_7_n_0 ),
        .O(\time_out_counter[0]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_6 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \time_out_counter[0]_i_7 
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[4]),
        .O(\time_out_counter[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2_n_0 ,\time_out_counter_reg[0]_i_2_n_1 ,\time_out_counter_reg[0]_i_2_n_2 ,\time_out_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2_n_4 ,\time_out_counter_reg[0]_i_2_n_5 ,\time_out_counter_reg[0]_i_2_n_6 ,\time_out_counter_reg[0]_i_2_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\time_out_counter_reg[8]_i_1_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1_n_0 ,\time_out_counter_reg[12]_i_1_n_1 ,\time_out_counter_reg[12]_i_1_n_2 ,\time_out_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1_n_4 ,\time_out_counter_reg[12]_i_1_n_5 ,\time_out_counter_reg[12]_i_1_n_6 ,\time_out_counter_reg[12]_i_1_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\time_out_counter_reg[12]_i_1_n_0 ),
        .CO(\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,time_out_counter_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\time_out_counter_reg[0]_i_2_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1_n_0 ,\time_out_counter_reg[4]_i_1_n_1 ,\time_out_counter_reg[4]_i_1_n_2 ,\time_out_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1_n_4 ,\time_out_counter_reg[4]_i_1_n_5 ,\time_out_counter_reg[4]_i_1_n_6 ,\time_out_counter_reg[4]_i_1_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\time_out_counter_reg[4]_i_1_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1_n_0 ,\time_out_counter_reg[8]_i_1_n_1 ,\time_out_counter_reg[8]_i_1_n_2 ,\time_out_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1_n_4 ,\time_out_counter_reg[8]_i_1_n_5 ,\time_out_counter_reg[8]_i_1_n_6 ,\time_out_counter_reg[8]_i_1_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(init_clk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AABAAAAA)) 
    time_tlock_max_i_1__0
       (.I0(time_tlock_max_reg_n_0),
        .I1(time_tlock_max_i_2__0_n_0),
        .I2(time_out_counter_reg[3]),
        .I3(\time_out_counter[0]_i_3__0_n_0 ),
        .I4(time_tlock_max_i_3__0_n_0),
        .I5(reset_time_out),
        .O(time_tlock_max_i_1__0_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    time_tlock_max_i_2__0
       (.I0(\time_out_counter[0]_i_7_n_0 ),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[7]),
        .O(time_tlock_max_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    time_tlock_max_i_3__0
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_counter_reg[16]),
        .I5(time_out_counter_reg[15]),
        .O(time_tlock_max_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1__0_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    tx_fsm_reset_done_int_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(tx_fsm_reset_done_int),
        .O(tx_fsm_reset_done_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_i_1_n_0),
        .Q(tx_fsm_reset_done_int),
        .R(AR));
  LUT2 #(
    .INIT(4'h2)) 
    tx_lock_INST_0
       (.I0(quad1_common_lock_in),
        .I1(mmcm_reset_i),
        .O(tx_lock));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    txresetdone_s3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0070)) 
    \wait_time_cnt[0]_i_1__0 
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .O(\wait_time_cnt[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_2 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[3]),
        .I3(wait_time_cnt_reg[2]),
        .I4(\wait_time_cnt[0]_i_4_n_0 ),
        .I5(\wait_time_cnt[0]_i_5_n_0 ),
        .O(sel));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_4 
       (.I0(wait_time_cnt_reg[14]),
        .I1(wait_time_cnt_reg[15]),
        .I2(wait_time_cnt_reg[12]),
        .I3(wait_time_cnt_reg[13]),
        .I4(wait_time_cnt_reg[11]),
        .I5(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[0]_i_5 
       (.I0(wait_time_cnt_reg[8]),
        .I1(wait_time_cnt_reg[9]),
        .I2(wait_time_cnt_reg[6]),
        .I3(wait_time_cnt_reg[7]),
        .I4(wait_time_cnt_reg[5]),
        .I5(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_6 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_7 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  CARRY4 \wait_time_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3_n_0 ,\wait_time_cnt_reg[0]_i_3_n_1 ,\wait_time_cnt_reg[0]_i_3_n_2 ,\wait_time_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3_n_4 ,\wait_time_cnt_reg[0]_i_3_n_5 ,\wait_time_cnt_reg[0]_i_3_n_6 ,\wait_time_cnt_reg[0]_i_3_n_7 }),
        .S({\wait_time_cnt[0]_i_6_n_0 ,\wait_time_cnt[0]_i_7_n_0 ,\wait_time_cnt[0]_i_8_n_0 ,\wait_time_cnt[0]_i_9_n_0 }));
  FDRE \wait_time_cnt_reg[10] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[11] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[12] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  CARRY4 \wait_time_cnt_reg[12]_i_1 
       (.CI(\wait_time_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1_n_1 ,\wait_time_cnt_reg[12]_i_1_n_2 ,\wait_time_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1_n_4 ,\wait_time_cnt_reg[12]_i_1_n_5 ,\wait_time_cnt_reg[12]_i_1_n_6 ,\wait_time_cnt_reg[12]_i_1_n_7 }),
        .S({\wait_time_cnt[12]_i_2_n_0 ,\wait_time_cnt[12]_i_3_n_0 ,\wait_time_cnt[12]_i_4_n_0 ,\wait_time_cnt[12]_i_5_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[14] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[15] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[1] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDSE \wait_time_cnt_reg[2] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[3] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDSE \wait_time_cnt_reg[4] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  CARRY4 \wait_time_cnt_reg[4]_i_1 
       (.CI(\wait_time_cnt_reg[0]_i_3_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1_n_0 ,\wait_time_cnt_reg[4]_i_1_n_1 ,\wait_time_cnt_reg[4]_i_1_n_2 ,\wait_time_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1_n_4 ,\wait_time_cnt_reg[4]_i_1_n_5 ,\wait_time_cnt_reg[4]_i_1_n_6 ,\wait_time_cnt_reg[4]_i_1_n_7 }),
        .S({\wait_time_cnt[4]_i_2_n_0 ,\wait_time_cnt[4]_i_3_n_0 ,\wait_time_cnt[4]_i_4_n_0 ,\wait_time_cnt[4]_i_5_n_0 }));
  FDSE \wait_time_cnt_reg[5] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDSE \wait_time_cnt_reg[7] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDSE \wait_time_cnt_reg[8] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  CARRY4 \wait_time_cnt_reg[8]_i_1 
       (.CI(\wait_time_cnt_reg[4]_i_1_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1_n_0 ,\wait_time_cnt_reg[8]_i_1_n_1 ,\wait_time_cnt_reg[8]_i_1_n_2 ,\wait_time_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1_n_4 ,\wait_time_cnt_reg[8]_i_1_n_5 ,\wait_time_cnt_reg[8]_i_1_n_6 ,\wait_time_cnt_reg[8]_i_1_n_7 }),
        .S({\wait_time_cnt[8]_i_2_n_0 ,\wait_time_cnt[8]_i_3_n_0 ,\wait_time_cnt[8]_i_4_n_0 ,\wait_time_cnt[8]_i_5_n_0 }));
  FDRE \wait_time_cnt_reg[9] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
