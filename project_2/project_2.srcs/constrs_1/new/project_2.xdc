
#set_property PACKAGE_PIN AB11 [get_ports clk_i]
#set_property PACKAGE_PIN Y20 [get_ports rst_i]

#set_property IOSTANDARD LVCMOS15 [get_ports rst_i]
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