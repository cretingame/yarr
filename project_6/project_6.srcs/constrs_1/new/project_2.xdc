#set_property PACKAGE_PIN AB11 [get_ports clk_i]
set_property PACKAGE_PIN Y20 [get_ports rst_i]

set_property IOSTANDARD LVCMOS15 [get_ports rst_i]
#set_property IOSTANDARD LVCMOS15 [get_ports clk_i]



# On-board LEDs
set_property PACKAGE_PIN W10 [get_ports {usr_led_o[0]}]
set_property PACKAGE_PIN V11 [get_ports {usr_led_o[1]}]
set_property PACKAGE_PIN Y10 [get_ports {usr_led_o[2]}]
set_property PACKAGE_PIN W13 [get_ports {usr_led_o[3]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_led_o[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_led_o[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_led_o[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_led_o[3]}]

# On-board Switches
set_property PACKAGE_PIN AA15 [get_ports {usr_sw_i[0]}]
set_property PACKAGE_PIN V8 [get_ports {usr_sw_i[1]}]
set_property PACKAGE_PIN Y8 [get_ports {usr_sw_i[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_sw_i[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_sw_i[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_sw_i[2]}]

set_property IOSTANDARD LVDS [get_ports clock_n]
set_property IOSTANDARD LVDS [get_ports clock_p]
set_property PACKAGE_PIN AA10 [get_ports clock_p]


create_clock -period 5.000 -name clk_p -waveform {0.000 2.500} [list [get_ports clock_p] [get_nets {clk_out clk_out_OBUF}]]


set_property IOSTANDARD LVCMOS15 [get_ports {front_led_o[3]}]
set_property IOSTANDARD LVCMOS15 [get_ports {front_led_o[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {front_led_o[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {front_led_o[0]}]
set_property PACKAGE_PIN T7 [get_ports {front_led_o[3]}]
set_property PACKAGE_PIN V7 [get_ports {front_led_o[2]}]
set_property PACKAGE_PIN U4 [get_ports {front_led_o[1]}]
set_property PACKAGE_PIN V2 [get_ports {front_led_o[0]}]


create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_i_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 4 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {front_led_o_OBUF[0]} {front_led_o_OBUF[1]} {front_led_o_OBUF[2]} {front_led_o_OBUF[3]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_i_BUFG]
