vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_reset_logic.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0_core.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_aurora_lane_4byte.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_axi_to_ll.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_channel_err_detect.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_channel_init_sm.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_chbond_count_dec_4byte.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_descrambler_top.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_err_detect_4byte.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_global_logic.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_hotplug.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_idle_and_ver_gen.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_lane_init_sm_4byte.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_left_align_control.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_left_align_mux.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_ll_to_axi.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_output_mux.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_output_switch_control.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_rx_ll.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_rx_ll_deframer.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_rx_ll_pdu_datapath.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_scrambler.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_scrambler_top.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_sideband_output.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_standard_cc_module.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_storage_ce_control.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_storage_count_control.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_storage_mux.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_storage_switch_control.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_sym_dec_4byte.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_sym_gen_4byte.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_cdc_sync.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/gt/aurora_8b10b_0_tx_startup_fsm.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/gt/aurora_8b10b_0_rx_startup_fsm.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/gt/aurora_8b10b_0_gtrxreset_seq.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/gt/aurora_8b10b_0_gt.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/gt/aurora_8b10b_0_multi_gt.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/gt/aurora_8b10b_0_transceiver_wrapper.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_tx_ll.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_tx_ll_control.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_tx_ll_datapath.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_valid_data_counter.v" \
"../../../../aurora_8b10b_0_ex.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

