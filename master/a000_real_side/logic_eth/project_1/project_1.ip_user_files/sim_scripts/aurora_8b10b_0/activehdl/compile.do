vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/include" \
"D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/include" \
"D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+D:/FPGA_SOFT/vivado_19_1/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_reset_logic.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0_core.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_aurora_lane.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_axi_to_ll.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_channel_err_detect.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_channel_init_sm.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_chbond_count_dec.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_descrambler_top.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_err_detect.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_global_logic.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_hotplug.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_idle_and_ver_gen.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_lane_init_sm.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_ll_to_axi.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_rx_ll.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_rx_ll_pdu_datapath.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_scrambler.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_scrambler_top.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_standard_cc_module.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_sym_dec.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_sym_gen.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_cdc_sync.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/gt/aurora_8b10b_0_tx_startup_fsm.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/gt/aurora_8b10b_0_rx_startup_fsm.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/gt/aurora_8b10b_0_gtrxreset_seq.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/gt/aurora_8b10b_0_gt.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/gt/aurora_8b10b_0_multi_gt.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/gt/aurora_8b10b_0_transceiver_wrapper.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_tx_ll.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_tx_ll_control.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_tx_ll_datapath.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

