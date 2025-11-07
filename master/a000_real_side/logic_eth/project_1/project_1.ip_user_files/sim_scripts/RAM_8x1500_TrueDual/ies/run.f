-makelib ies_lib/xil_defaultlib -sv \
  "D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_3 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../project_1.srcs/sources_1/ip/udp/RAM_8x1500_TrueDual/sim/RAM_8x1500_TrueDual.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

