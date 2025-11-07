vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_reset_logic.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core_core.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_support.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_gt_common_wrapper.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_support_reset_logic.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_clock_module.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_aurora_lane_4byte.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_axi_to_ll.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_channel_err_detect.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_channel_init_sm.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_chbond_count_dec_4byte.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_descrambler_top.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_err_detect_4byte.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_global_logic.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_hotplug.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_idle_and_ver_gen.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_lane_init_sm_4byte.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_left_align_control.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_left_align_mux.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_ll_to_axi.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_output_mux.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_output_switch_control.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_rx_ll.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_rx_ll_deframer.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_rx_ll_pdu_datapath.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_scrambler.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_scrambler_top.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_sideband_output.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_standard_cc_module.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_storage_ce_control.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_storage_count_control.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_storage_mux.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_storage_switch_control.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_sym_dec_4byte.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_sym_gen_4byte.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_cdc_sync.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/gt/aurora_8b10b_in_core_tx_startup_fsm.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/gt/aurora_8b10b_in_core_rx_startup_fsm.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/gt/aurora_8b10b_in_core_gtrxreset_seq.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/gt/aurora_8b10b_in_core_gt.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/gt/aurora_8b10b_in_core_multi_gt.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/gt/aurora_8b10b_in_core_transceiver_wrapper.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_tx_ll.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_tx_ll_control.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_tx_ll_datapath.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core/src/aurora_8b10b_in_core_valid_data_counter.v" \
"../../../../aurora_8b10b_in_core_ex.srcs/sources_1/ip/aurora_8b10b_in_core/aurora_8b10b_in_core.v" \


vlog -work xil_defaultlib \
"glbl.v"

