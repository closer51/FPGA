//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Thu Oct  9 19:54:59 2025
//Host        : PC-1000-times running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR3_0_addr,
    DDR3_0_ba,
    DDR3_0_cas_n,
    DDR3_0_ck_n,
    DDR3_0_ck_p,
    DDR3_0_cke,
    DDR3_0_cs_n,
    DDR3_0_dm,
    DDR3_0_dq,
    DDR3_0_dqs_n,
    DDR3_0_dqs_p,
    DDR3_0_odt,
    DDR3_0_ras_n,
    DDR3_0_reset_n,
    DDR3_0_we_n,
    S00_ACLK_0,
    S00_AXI_0_araddr,
    S00_AXI_0_arburst,
    S00_AXI_0_arcache,
    S00_AXI_0_arlen,
    S00_AXI_0_arlock,
    S00_AXI_0_arprot,
    S00_AXI_0_arqos,
    S00_AXI_0_arready,
    S00_AXI_0_arsize,
    S00_AXI_0_arvalid,
    S00_AXI_0_awaddr,
    S00_AXI_0_awburst,
    S00_AXI_0_awcache,
    S00_AXI_0_awlen,
    S00_AXI_0_awlock,
    S00_AXI_0_awprot,
    S00_AXI_0_awqos,
    S00_AXI_0_awready,
    S00_AXI_0_awsize,
    S00_AXI_0_awvalid,
    S00_AXI_0_bready,
    S00_AXI_0_bresp,
    S00_AXI_0_bvalid,
    S00_AXI_0_rdata,
    S00_AXI_0_rlast,
    S00_AXI_0_rready,
    S00_AXI_0_rresp,
    S00_AXI_0_rvalid,
    S00_AXI_0_wdata,
    S00_AXI_0_wlast,
    S00_AXI_0_wready,
    S00_AXI_0_wstrb,
    S00_AXI_0_wvalid,
    S01_ACLK_0,
    S01_AXI_0_araddr,
    S01_AXI_0_arburst,
    S01_AXI_0_arcache,
    S01_AXI_0_arlen,
    S01_AXI_0_arlock,
    S01_AXI_0_arprot,
    S01_AXI_0_arqos,
    S01_AXI_0_arready,
    S01_AXI_0_arsize,
    S01_AXI_0_arvalid,
    S01_AXI_0_awaddr,
    S01_AXI_0_awburst,
    S01_AXI_0_awcache,
    S01_AXI_0_awlen,
    S01_AXI_0_awlock,
    S01_AXI_0_awprot,
    S01_AXI_0_awqos,
    S01_AXI_0_awready,
    S01_AXI_0_awsize,
    S01_AXI_0_awvalid,
    S01_AXI_0_bready,
    S01_AXI_0_bresp,
    S01_AXI_0_bvalid,
    S01_AXI_0_rdata,
    S01_AXI_0_rlast,
    S01_AXI_0_rready,
    S01_AXI_0_rresp,
    S01_AXI_0_rvalid,
    S01_AXI_0_wdata,
    S01_AXI_0_wlast,
    S01_AXI_0_wready,
    S01_AXI_0_wstrb,
    S01_AXI_0_wvalid,
    init_calib_complete_0,
    sys_clk_i_0,
    sys_rst_0,
    ui_clk_0,
    ui_clk_sync_rst_0);
  output [13:0]DDR3_0_addr;
  output [2:0]DDR3_0_ba;
  output DDR3_0_cas_n;
  output [0:0]DDR3_0_ck_n;
  output [0:0]DDR3_0_ck_p;
  output [0:0]DDR3_0_cke;
  output [0:0]DDR3_0_cs_n;
  output [3:0]DDR3_0_dm;
  inout [31:0]DDR3_0_dq;
  inout [3:0]DDR3_0_dqs_n;
  inout [3:0]DDR3_0_dqs_p;
  output [0:0]DDR3_0_odt;
  output DDR3_0_ras_n;
  output DDR3_0_reset_n;
  output DDR3_0_we_n;
  input S00_ACLK_0;
  input [31:0]S00_AXI_0_araddr;
  input [1:0]S00_AXI_0_arburst;
  input [3:0]S00_AXI_0_arcache;
  input [7:0]S00_AXI_0_arlen;
  input [0:0]S00_AXI_0_arlock;
  input [2:0]S00_AXI_0_arprot;
  input [3:0]S00_AXI_0_arqos;
  output S00_AXI_0_arready;
  input [2:0]S00_AXI_0_arsize;
  input S00_AXI_0_arvalid;
  input [31:0]S00_AXI_0_awaddr;
  input [1:0]S00_AXI_0_awburst;
  input [3:0]S00_AXI_0_awcache;
  input [7:0]S00_AXI_0_awlen;
  input [0:0]S00_AXI_0_awlock;
  input [2:0]S00_AXI_0_awprot;
  input [3:0]S00_AXI_0_awqos;
  output S00_AXI_0_awready;
  input [2:0]S00_AXI_0_awsize;
  input S00_AXI_0_awvalid;
  input S00_AXI_0_bready;
  output [1:0]S00_AXI_0_bresp;
  output S00_AXI_0_bvalid;
  output [31:0]S00_AXI_0_rdata;
  output S00_AXI_0_rlast;
  input S00_AXI_0_rready;
  output [1:0]S00_AXI_0_rresp;
  output S00_AXI_0_rvalid;
  input [31:0]S00_AXI_0_wdata;
  input S00_AXI_0_wlast;
  output S00_AXI_0_wready;
  input [3:0]S00_AXI_0_wstrb;
  input S00_AXI_0_wvalid;
  input S01_ACLK_0;
  input [31:0]S01_AXI_0_araddr;
  input [1:0]S01_AXI_0_arburst;
  input [3:0]S01_AXI_0_arcache;
  input [7:0]S01_AXI_0_arlen;
  input [0:0]S01_AXI_0_arlock;
  input [2:0]S01_AXI_0_arprot;
  input [3:0]S01_AXI_0_arqos;
  output S01_AXI_0_arready;
  input [2:0]S01_AXI_0_arsize;
  input S01_AXI_0_arvalid;
  input [31:0]S01_AXI_0_awaddr;
  input [1:0]S01_AXI_0_awburst;
  input [3:0]S01_AXI_0_awcache;
  input [7:0]S01_AXI_0_awlen;
  input [0:0]S01_AXI_0_awlock;
  input [2:0]S01_AXI_0_awprot;
  input [3:0]S01_AXI_0_awqos;
  output S01_AXI_0_awready;
  input [2:0]S01_AXI_0_awsize;
  input S01_AXI_0_awvalid;
  input S01_AXI_0_bready;
  output [1:0]S01_AXI_0_bresp;
  output S01_AXI_0_bvalid;
  output [31:0]S01_AXI_0_rdata;
  output S01_AXI_0_rlast;
  input S01_AXI_0_rready;
  output [1:0]S01_AXI_0_rresp;
  output S01_AXI_0_rvalid;
  input [31:0]S01_AXI_0_wdata;
  input S01_AXI_0_wlast;
  output S01_AXI_0_wready;
  input [3:0]S01_AXI_0_wstrb;
  input S01_AXI_0_wvalid;
  output init_calib_complete_0;
  input sys_clk_i_0;
  input sys_rst_0;
  output ui_clk_0;
  output ui_clk_sync_rst_0;

  wire [13:0]DDR3_0_addr;
  wire [2:0]DDR3_0_ba;
  wire DDR3_0_cas_n;
  wire [0:0]DDR3_0_ck_n;
  wire [0:0]DDR3_0_ck_p;
  wire [0:0]DDR3_0_cke;
  wire [0:0]DDR3_0_cs_n;
  wire [3:0]DDR3_0_dm;
  wire [31:0]DDR3_0_dq;
  wire [3:0]DDR3_0_dqs_n;
  wire [3:0]DDR3_0_dqs_p;
  wire [0:0]DDR3_0_odt;
  wire DDR3_0_ras_n;
  wire DDR3_0_reset_n;
  wire DDR3_0_we_n;
  wire S00_ACLK_0;
  wire [31:0]S00_AXI_0_araddr;
  wire [1:0]S00_AXI_0_arburst;
  wire [3:0]S00_AXI_0_arcache;
  wire [7:0]S00_AXI_0_arlen;
  wire [0:0]S00_AXI_0_arlock;
  wire [2:0]S00_AXI_0_arprot;
  wire [3:0]S00_AXI_0_arqos;
  wire S00_AXI_0_arready;
  wire [2:0]S00_AXI_0_arsize;
  wire S00_AXI_0_arvalid;
  wire [31:0]S00_AXI_0_awaddr;
  wire [1:0]S00_AXI_0_awburst;
  wire [3:0]S00_AXI_0_awcache;
  wire [7:0]S00_AXI_0_awlen;
  wire [0:0]S00_AXI_0_awlock;
  wire [2:0]S00_AXI_0_awprot;
  wire [3:0]S00_AXI_0_awqos;
  wire S00_AXI_0_awready;
  wire [2:0]S00_AXI_0_awsize;
  wire S00_AXI_0_awvalid;
  wire S00_AXI_0_bready;
  wire [1:0]S00_AXI_0_bresp;
  wire S00_AXI_0_bvalid;
  wire [31:0]S00_AXI_0_rdata;
  wire S00_AXI_0_rlast;
  wire S00_AXI_0_rready;
  wire [1:0]S00_AXI_0_rresp;
  wire S00_AXI_0_rvalid;
  wire [31:0]S00_AXI_0_wdata;
  wire S00_AXI_0_wlast;
  wire S00_AXI_0_wready;
  wire [3:0]S00_AXI_0_wstrb;
  wire S00_AXI_0_wvalid;
  wire S01_ACLK_0;
  wire [31:0]S01_AXI_0_araddr;
  wire [1:0]S01_AXI_0_arburst;
  wire [3:0]S01_AXI_0_arcache;
  wire [7:0]S01_AXI_0_arlen;
  wire [0:0]S01_AXI_0_arlock;
  wire [2:0]S01_AXI_0_arprot;
  wire [3:0]S01_AXI_0_arqos;
  wire S01_AXI_0_arready;
  wire [2:0]S01_AXI_0_arsize;
  wire S01_AXI_0_arvalid;
  wire [31:0]S01_AXI_0_awaddr;
  wire [1:0]S01_AXI_0_awburst;
  wire [3:0]S01_AXI_0_awcache;
  wire [7:0]S01_AXI_0_awlen;
  wire [0:0]S01_AXI_0_awlock;
  wire [2:0]S01_AXI_0_awprot;
  wire [3:0]S01_AXI_0_awqos;
  wire S01_AXI_0_awready;
  wire [2:0]S01_AXI_0_awsize;
  wire S01_AXI_0_awvalid;
  wire S01_AXI_0_bready;
  wire [1:0]S01_AXI_0_bresp;
  wire S01_AXI_0_bvalid;
  wire [31:0]S01_AXI_0_rdata;
  wire S01_AXI_0_rlast;
  wire S01_AXI_0_rready;
  wire [1:0]S01_AXI_0_rresp;
  wire S01_AXI_0_rvalid;
  wire [31:0]S01_AXI_0_wdata;
  wire S01_AXI_0_wlast;
  wire S01_AXI_0_wready;
  wire [3:0]S01_AXI_0_wstrb;
  wire S01_AXI_0_wvalid;
  wire init_calib_complete_0;
  wire sys_clk_i_0;
  wire sys_rst_0;
  wire ui_clk_0;
  wire ui_clk_sync_rst_0;

  design_1 design_1_i
       (.DDR3_0_addr(DDR3_0_addr),
        .DDR3_0_ba(DDR3_0_ba),
        .DDR3_0_cas_n(DDR3_0_cas_n),
        .DDR3_0_ck_n(DDR3_0_ck_n),
        .DDR3_0_ck_p(DDR3_0_ck_p),
        .DDR3_0_cke(DDR3_0_cke),
        .DDR3_0_cs_n(DDR3_0_cs_n),
        .DDR3_0_dm(DDR3_0_dm),
        .DDR3_0_dq(DDR3_0_dq),
        .DDR3_0_dqs_n(DDR3_0_dqs_n),
        .DDR3_0_dqs_p(DDR3_0_dqs_p),
        .DDR3_0_odt(DDR3_0_odt),
        .DDR3_0_ras_n(DDR3_0_ras_n),
        .DDR3_0_reset_n(DDR3_0_reset_n),
        .DDR3_0_we_n(DDR3_0_we_n),
        .S00_ACLK_0(S00_ACLK_0),
        .S00_AXI_0_araddr(S00_AXI_0_araddr),
        .S00_AXI_0_arburst(S00_AXI_0_arburst),
        .S00_AXI_0_arcache(S00_AXI_0_arcache),
        .S00_AXI_0_arlen(S00_AXI_0_arlen),
        .S00_AXI_0_arlock(S00_AXI_0_arlock),
        .S00_AXI_0_arprot(S00_AXI_0_arprot),
        .S00_AXI_0_arqos(S00_AXI_0_arqos),
        .S00_AXI_0_arready(S00_AXI_0_arready),
        .S00_AXI_0_arsize(S00_AXI_0_arsize),
        .S00_AXI_0_arvalid(S00_AXI_0_arvalid),
        .S00_AXI_0_awaddr(S00_AXI_0_awaddr),
        .S00_AXI_0_awburst(S00_AXI_0_awburst),
        .S00_AXI_0_awcache(S00_AXI_0_awcache),
        .S00_AXI_0_awlen(S00_AXI_0_awlen),
        .S00_AXI_0_awlock(S00_AXI_0_awlock),
        .S00_AXI_0_awprot(S00_AXI_0_awprot),
        .S00_AXI_0_awqos(S00_AXI_0_awqos),
        .S00_AXI_0_awready(S00_AXI_0_awready),
        .S00_AXI_0_awsize(S00_AXI_0_awsize),
        .S00_AXI_0_awvalid(S00_AXI_0_awvalid),
        .S00_AXI_0_bready(S00_AXI_0_bready),
        .S00_AXI_0_bresp(S00_AXI_0_bresp),
        .S00_AXI_0_bvalid(S00_AXI_0_bvalid),
        .S00_AXI_0_rdata(S00_AXI_0_rdata),
        .S00_AXI_0_rlast(S00_AXI_0_rlast),
        .S00_AXI_0_rready(S00_AXI_0_rready),
        .S00_AXI_0_rresp(S00_AXI_0_rresp),
        .S00_AXI_0_rvalid(S00_AXI_0_rvalid),
        .S00_AXI_0_wdata(S00_AXI_0_wdata),
        .S00_AXI_0_wlast(S00_AXI_0_wlast),
        .S00_AXI_0_wready(S00_AXI_0_wready),
        .S00_AXI_0_wstrb(S00_AXI_0_wstrb),
        .S00_AXI_0_wvalid(S00_AXI_0_wvalid),
        .S01_ACLK_0(S01_ACLK_0),
        .S01_AXI_0_araddr(S01_AXI_0_araddr),
        .S01_AXI_0_arburst(S01_AXI_0_arburst),
        .S01_AXI_0_arcache(S01_AXI_0_arcache),
        .S01_AXI_0_arlen(S01_AXI_0_arlen),
        .S01_AXI_0_arlock(S01_AXI_0_arlock),
        .S01_AXI_0_arprot(S01_AXI_0_arprot),
        .S01_AXI_0_arqos(S01_AXI_0_arqos),
        .S01_AXI_0_arready(S01_AXI_0_arready),
        .S01_AXI_0_arsize(S01_AXI_0_arsize),
        .S01_AXI_0_arvalid(S01_AXI_0_arvalid),
        .S01_AXI_0_awaddr(S01_AXI_0_awaddr),
        .S01_AXI_0_awburst(S01_AXI_0_awburst),
        .S01_AXI_0_awcache(S01_AXI_0_awcache),
        .S01_AXI_0_awlen(S01_AXI_0_awlen),
        .S01_AXI_0_awlock(S01_AXI_0_awlock),
        .S01_AXI_0_awprot(S01_AXI_0_awprot),
        .S01_AXI_0_awqos(S01_AXI_0_awqos),
        .S01_AXI_0_awready(S01_AXI_0_awready),
        .S01_AXI_0_awsize(S01_AXI_0_awsize),
        .S01_AXI_0_awvalid(S01_AXI_0_awvalid),
        .S01_AXI_0_bready(S01_AXI_0_bready),
        .S01_AXI_0_bresp(S01_AXI_0_bresp),
        .S01_AXI_0_bvalid(S01_AXI_0_bvalid),
        .S01_AXI_0_rdata(S01_AXI_0_rdata),
        .S01_AXI_0_rlast(S01_AXI_0_rlast),
        .S01_AXI_0_rready(S01_AXI_0_rready),
        .S01_AXI_0_rresp(S01_AXI_0_rresp),
        .S01_AXI_0_rvalid(S01_AXI_0_rvalid),
        .S01_AXI_0_wdata(S01_AXI_0_wdata),
        .S01_AXI_0_wlast(S01_AXI_0_wlast),
        .S01_AXI_0_wready(S01_AXI_0_wready),
        .S01_AXI_0_wstrb(S01_AXI_0_wstrb),
        .S01_AXI_0_wvalid(S01_AXI_0_wvalid),
        .init_calib_complete_0(init_calib_complete_0),
        .sys_clk_i_0(sys_clk_i_0),
        .sys_rst_0(sys_rst_0),
        .ui_clk_0(ui_clk_0),
        .ui_clk_sync_rst_0(ui_clk_sync_rst_0));
endmodule
