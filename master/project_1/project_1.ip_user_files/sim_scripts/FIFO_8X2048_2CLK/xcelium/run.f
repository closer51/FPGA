-makelib xcelium_lib/xilinx_vip -sv \
  "D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../project_1.srcs/sources_1/ip/FIFO_8X2048_2CLK/sim/FIFO_8X2048_2CLK.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

