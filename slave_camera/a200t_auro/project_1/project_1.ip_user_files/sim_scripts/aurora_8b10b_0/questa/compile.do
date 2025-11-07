vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_reset_logic.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0_core.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_aurora_lane_4byte.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_axi_to_ll.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_channel_err_detect.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_channel_init_sm.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_chbond_count_dec_4byte.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_descrambler_top.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_err_detect_4byte.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_global_logic.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_hotplug.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_idle_and_ver_gen.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_lane_init_sm_4byte.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_left_align_control.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_left_align_mux.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_ll_to_axi.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_output_mux.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_output_switch_control.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_rx_ll.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_rx_ll_deframer.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_rx_ll_pdu_datapath.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_scrambler.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_scrambler_top.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_sideband_output.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_standard_cc_module.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_storage_ce_control.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_storage_count_control.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_storage_mux.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_storage_switch_control.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_sym_dec_4byte.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_sym_gen_4byte.v" \
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
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0/src/aurora_8b10b_0_valid_data_counter.v" \
"../../../../project_1.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

