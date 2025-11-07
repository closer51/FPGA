// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Nov  2 21:13:02 2025
// Host        : PC-1000-times running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/vivado_Music/vivado_Music/vivado_Music.srcs/sources_1/ip/udp/FIFO_ASYNC_11_64/FIFO_ASYNC_11_64_stub.v
// Design      : FIFO_ASYNC_11_64
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_4,Vivado 2019.1" *)
module FIFO_ASYNC_11_64(wr_clk, rd_clk, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="wr_clk,rd_clk,din[10:0],wr_en,rd_en,dout[10:0],full,empty" */;
  input wr_clk;
  input rd_clk;
  input [10:0]din;
  input wr_en;
  input rd_en;
  output [10:0]dout;
  output full;
  output empty;
endmodule
