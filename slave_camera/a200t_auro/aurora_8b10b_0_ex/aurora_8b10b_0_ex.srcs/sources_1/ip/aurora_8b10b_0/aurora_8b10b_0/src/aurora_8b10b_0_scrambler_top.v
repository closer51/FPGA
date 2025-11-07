///////////////////////////////////////////////////////////////////////////////
// (c) Copyright 2012 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//
///////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
(* core_generation_info = "aurora_8b10b_0,aurora_8b10b_v11_1_7,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=None,c_gt_clock_1=GTPQ2,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=1,c_lane_width=4,c_line_rate=12500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=125000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}" *)

//***************************** Module Declaration ****************************

module aurora_8b10b_0_scrambler_top
(
  output wire [31:0] DATA_OUT,
  output reg  [3:0]  CHAR_IS_K_OUT,

  input  wire [31:0] DATA,
  input  wire [3:0]  CHAR_IS_K,
  input  wire        CLEAR,
  input  wire        RESET,
  input  wire        USER_CLK
   
);

`define DLY #1

    // wire declarations
    wire    [1:0]      bypass_w;
    wire               seed_lfsr;
    wire    [31:0]     user_data;
    wire    [31:0]     scrambled_data;

    // reg declarations
    reg                clear_nxt;
    reg                clear_nxt2;
    reg     [31:0]     data_nxt;
    reg    [1:0]       bypass_r;

//*********************************Main Body of Code*********************************

    // data pipeline
    always @(posedge USER_CLK)
      data_nxt       <= `DLY      DATA;

    always @(posedge USER_CLK)
      bypass_r       <= `DLY      bypass_w;	   

    //  register clear to reset scrambler when CC is being sent from SYM_GEN
    always @(posedge USER_CLK)
    begin	   
       clear_nxt          <= `DLY      CLEAR; 
       clear_nxt2         <= `DLY      clear_nxt; 
    end

    assign seed_lfsr = clear_nxt2;

    assign bypass_w[0]  = RESET ? 1'b1 : ((|CHAR_IS_K[1:0]) ? 1'b1 : 1'b0);

    assign bypass_w[1]  = RESET ? 1'b1 : ((|CHAR_IS_K[3:2]) ? 1'b1 : 1'b0);

    assign user_data[15:0] = bypass_w[0] ? 16'h00 : DATA[15:0];

    assign user_data[31:16] = bypass_w[1] ? 16'h00 : DATA[31:16];

    aurora_8b10b_0_scrambler #
    (
       .C_SEED    (16'hFFFF)
    )
    aurora_8b10b_0_scrambler0_i
    (
        .DOUT     (scrambled_data[15:0]),
        .DIN      (user_data[15:0]),
        .EN       (!bypass_w[0]),
        .BYPASS   (bypass_w[0]),
        .CLEAR    (seed_lfsr),
        .RESET    (RESET),
        .CLK      (USER_CLK)
    );

    aurora_8b10b_0_scrambler #
    (
       .C_SEED    (16'hFFFF)
    )
    aurora_8b10b_0_scrambler1_i
    (
        .DOUT     (scrambled_data[31:16]),
        .DIN      (user_data[31:16]),
        .EN       (!bypass_w[1]),
        .BYPASS   (bypass_w[1]),
        .CLEAR    (seed_lfsr),
        .RESET    (RESET),
        .CLK      (USER_CLK)
    );


    // outputs
    assign DATA_OUT[15:0] = bypass_r[0] ? data_nxt[15:0] : scrambled_data[15:0];
    assign DATA_OUT[31:16] = bypass_r[1] ? data_nxt[31:16] : scrambled_data[31:16];

    // CHAR_IS_K pipeline
    always @(posedge USER_CLK)
      CHAR_IS_K_OUT   <= `DLY      CHAR_IS_K;
   
endmodule
