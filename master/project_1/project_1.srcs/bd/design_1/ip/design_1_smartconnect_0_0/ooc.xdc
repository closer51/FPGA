# aclk {FREQ_HZ 100000000 CLK_DOMAIN design_1_mig_7series_0_1_ui_clk PHASE 0} aclk1 {FREQ_HZ 100000000 CLK_DOMAIN design_1_S00_ACLK_0 PHASE 0.000} aclk2 {FREQ_HZ 100000000 CLK_DOMAIN design_1_S01_ACLK_0 PHASE 0.000}
# Clock Domain: design_1_mig_7series_0_1_ui_clk
create_clock -name aclk -period 10.000 [get_ports aclk]
# Clock Domain: design_1_S00_ACLK_0
create_clock -name aclk1 -period 10.000 [get_ports aclk1]
# Clock Domain: design_1_S01_ACLK_0
create_clock -name aclk2 -period 10.000 [get_ports aclk2]
# Generated clocks
