######################################################
# Generated file to flash the program RAM
######################################################


#Run flash.py to generate this file

open_hw
connect_hw_server -url localhost:3121
current_hw_target [get_hw_targets */xilinx_tcf/Xilinx/000013b363cb01]
set_property PARAM.FREQUENCY 6000000 [get_hw_targets */xilinx_tcf/Xilinx/000013b363cb01]
open_hw_target
set_property PROGRAM.FILE {/home/asautaux/yarr/hdl/top_level.bit} [lindex [get_hw_devices] 1]
program_hw_devices [lindex [get_hw_devices] 1]
