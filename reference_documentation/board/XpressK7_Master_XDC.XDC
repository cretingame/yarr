############################################################################
#
# XpressK7 Master constraint file
#
############################################################################

# Clocks

set_property PACKAGE_PIN AB11 [get_ports clk_50MHz_FPGA]
set_property IOSTANDARD LVCMOS15 [get_ports {clk_50MHz_FPGA}]

set_property PACKAGE_PIN AA10 [get_ports ddr3_ref_clk_p]	#200MHz
set_property IOSTANDARD LVDS [get_ports {ddr3_ref_clk_p}]
set_property PACKAGE_PIN AB10 [get_ports ddr3_ref_clk_n]	#200MHz
set_property IOSTANDARD LVDS [get_ports {ddr3_ref_clk_n}]

set_property PACKAGE_PIN K5   [get_ports osc1_100MHz_n]
set_property IOSTANDARD LVDS [get_ports {osc1_100MHz_n}] 	
set_property PACKAGE_PIN K6   [get_ports osc1_100MHz_p] 
set_property IOSTANDARD LVDS [get_ports {osc1_100MHz_p}]	
set_property PACKAGE_PIN F5   [get_ports osc2_100MHz_n] 
set_property IOSTANDARD LVDS [get_ports {osc2_100MHz_n}]	
set_property PACKAGE_PIN F6   [get_ports osc2_100MHz_p] 
set_property IOSTANDARD LVDS [get_ports {osc2_100MHz_p}]	

# Resets
set_property PACKAGE_PIN U16 [get_ports mperst_b]
set_property IOSTANDARD LVCMOS25 [get_ports {mperst_b}]
set_property PACKAGE_PIN Y20 [get_ports user_reset]
set_property IOSTANDARD LVCMOS15 [get_ports {user_reset}]

# User Switches
set_property PACKAGE_PIN AA15 [get_ports usr_sw1]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_sw1}]		
set_property PACKAGE_PIN V8   [get_ports usr_sw2] 		
set_property IOSTANDARD LVCMOS15 [get_ports {usr_sw2}]
set_property PACKAGE_PIN Y8   [get_ports usr_sw3] 		
set_property IOSTANDARD LVCMOS15 [get_ports {usr_sw3}]
set_property PACKAGE_PIN Y7   [get_ports usr_sw4] 	
set_property IOSTANDARD LVCMOS15 [get_ports {usr_sw4}]

# LEDs

set_property PACKAGE_PIN T7 [get_ports led_g1_hp]
set_property IOSTANDARD LVCMOS15 [get_ports {led_g1_hp}]
set_property PACKAGE_PIN V7 [get_ports led_r1_hp]
set_property IOSTANDARD LVCMOS15 [get_ports {led_r1_hp}]
set_property PACKAGE_PIN U4 [get_ports led_g2_hp]
set_property IOSTANDARD LVCMOS15 [get_ports {led_g2_hp}]
set_property PACKAGE_PIN V2 [get_ports led_r2_hp]
set_property IOSTANDARD LVCMOS15 [get_ports {led_r2_hp}]
set_property PACKAGE_PIN W10 [get_ports led0_hp]
set_property IOSTANDARD LVCMOS15 [get_ports {led0_hp}]
set_property PACKAGE_PIN V11 [get_ports led1_hp]
set_property IOSTANDARD LVCMOS15 [get_ports {led1_hp}]
set_property PACKAGE_PIN Y10 [get_ports led2_hp]
set_property IOSTANDARD LVCMOS15 [get_ports {led2_hp}]
set_property PACKAGE_PIN W13 [get_ports led3_hp]
set_property IOSTANDARD LVCMOS15 [get_ports {led3_hp}]

## DDR3 SODIMM Constraints

# PadFunction: IO_L20N_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[0]}]
set_property SLEW FAST [get_ports {ddr3_dq[0]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[0]}]
set_property LOC V17 [get_ports {ddr3_dq[0]}]

# PadFunction: IO_L23N_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[1]}]
set_property SLEW FAST [get_ports {ddr3_dq[1]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[1]}]
set_property LOC V19 [get_ports {ddr3_dq[1]}]

# PadFunction: IO_L20P_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[2]}]
set_property SLEW FAST [get_ports {ddr3_dq[2]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[2]}]
set_property LOC V16 [get_ports {ddr3_dq[2]}]

# PadFunction: IO_L19P_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[3]}]
set_property SLEW FAST [get_ports {ddr3_dq[3]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[3]}]
set_property LOC Y17 [get_ports {ddr3_dq[3]}]

# PadFunction: IO_L22N_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[4]}]
set_property SLEW FAST [get_ports {ddr3_dq[4]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[4]}]
set_property LOC W16 [get_ports {ddr3_dq[4]}]

# PadFunction: IO_L22P_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[5]}]
set_property SLEW FAST [get_ports {ddr3_dq[5]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[5]}]
set_property LOC W15 [get_ports {ddr3_dq[5]}]

# PadFunction: IO_L24N_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[6]}]
set_property SLEW FAST [get_ports {ddr3_dq[6]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[6]}]
set_property LOC W14 [get_ports {ddr3_dq[6]}]

# PadFunction: IO_L24P_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[7]}]
set_property SLEW FAST [get_ports {ddr3_dq[7]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[7]}]
set_property LOC V14 [get_ports {ddr3_dq[7]}]

# PadFunction: IO_L16P_T2_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[8]}]
set_property SLEW FAST [get_ports {ddr3_dq[8]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[8]}]
set_property LOC AA19 [get_ports {ddr3_dq[8]}]

# PadFunction: IO_L16N_T2_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[9]}]
set_property SLEW FAST [get_ports {ddr3_dq[9]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[9]}]
set_property LOC AA20 [get_ports {ddr3_dq[9]}]

# PadFunction: IO_L17N_T2_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[10]}]
set_property SLEW FAST [get_ports {ddr3_dq[10]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[10]}]
set_property LOC AD19 [get_ports {ddr3_dq[10]}]

# PadFunction: IO_L13N_T2_MRCC_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[11]}]
set_property SLEW FAST [get_ports {ddr3_dq[11]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[11]}]
set_property LOC AD18 [get_ports {ddr3_dq[11]}]

# PadFunction: IO_L18N_T2_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[12]}]
set_property SLEW FAST [get_ports {ddr3_dq[12]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[12]}]
set_property LOC AB20 [get_ports {ddr3_dq[12]}]

# PadFunction: IO_L17P_T2_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[13]}]
set_property SLEW FAST [get_ports {ddr3_dq[13]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[13]}]
set_property LOC AC19 [get_ports {ddr3_dq[13]}]

# PadFunction: IO_L14N_T2_SRCC_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[14]}]
set_property SLEW FAST [get_ports {ddr3_dq[14]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[14]}]
set_property LOC AC17 [get_ports {ddr3_dq[14]}]

# PadFunction: IO_L14P_T2_SRCC_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[15]}]
set_property SLEW FAST [get_ports {ddr3_dq[15]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[15]}]
set_property LOC AB17 [get_ports {ddr3_dq[15]}]

# PadFunction: IO_L11P_T1_SRCC_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[16]}]
set_property SLEW FAST [get_ports {ddr3_dq[16]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[16]}]
set_property LOC AA17 [get_ports {ddr3_dq[16]}]

# PadFunction: IO_L11N_T1_SRCC_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[17]}]
set_property SLEW FAST [get_ports {ddr3_dq[17]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[17]}]
set_property LOC AA18 [get_ports {ddr3_dq[17]}]

# PadFunction: IO_L8P_T1_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[18]}]
set_property SLEW FAST [get_ports {ddr3_dq[18]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[18]}]
set_property LOC AC14 [get_ports {ddr3_dq[18]}]

# PadFunction: IO_L10N_T1_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[19]}]
set_property SLEW FAST [get_ports {ddr3_dq[19]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[19]}]
set_property LOC AB15 [get_ports {ddr3_dq[19]}]

# PadFunction: IO_L12P_T1_MRCC_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[20]}]
set_property SLEW FAST [get_ports {ddr3_dq[20]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[20]}]
set_property LOC AB16 [get_ports {ddr3_dq[20]}]

# PadFunction: IO_L12N_T1_MRCC_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[21]}]
set_property SLEW FAST [get_ports {ddr3_dq[21]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[21]}]
set_property LOC AC16 [get_ports {ddr3_dq[21]}]

# PadFunction: IO_L10P_T1_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[22]}]
set_property SLEW FAST [get_ports {ddr3_dq[22]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[22]}]
set_property LOC AB14 [get_ports {ddr3_dq[22]}]

# PadFunction: IO_L7P_T1_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[23]}]
set_property SLEW FAST [get_ports {ddr3_dq[23]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[23]}]
set_property LOC AA14 [get_ports {ddr3_dq[23]}]

# PadFunction: IO_L5N_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[24]}]
set_property SLEW FAST [get_ports {ddr3_dq[24]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[24]}]
set_property LOC AF20 [get_ports {ddr3_dq[24]}]

# PadFunction: IO_L1P_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[25]}]
set_property SLEW FAST [get_ports {ddr3_dq[25]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[25]}]
set_property LOC AE17 [get_ports {ddr3_dq[25]}]

# PadFunction: IO_L1N_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[26]}]
set_property SLEW FAST [get_ports {ddr3_dq[26]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[26]}]
set_property LOC AF17 [get_ports {ddr3_dq[26]}]

# PadFunction: IO_L6P_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[27]}]
set_property SLEW FAST [get_ports {ddr3_dq[27]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[27]}]
set_property LOC AD16 [get_ports {ddr3_dq[27]}]

# PadFunction: IO_L2N_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[28]}]
set_property SLEW FAST [get_ports {ddr3_dq[28]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[28]}]
set_property LOC AF15 [get_ports {ddr3_dq[28]}]

# PadFunction: IO_L4N_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[29]}]
set_property SLEW FAST [get_ports {ddr3_dq[29]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[29]}]
set_property LOC AE15 [get_ports {ddr3_dq[29]}]

# PadFunction: IO_L4P_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[30]}]
set_property SLEW FAST [get_ports {ddr3_dq[30]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[30]}]
set_property LOC AD15 [get_ports {ddr3_dq[30]}]

# PadFunction: IO_L2P_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[31]}]
set_property SLEW FAST [get_ports {ddr3_dq[31]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[31]}]
set_property LOC AF14 [get_ports {ddr3_dq[31]}]

# PadFunction: IO_L23P_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[32]}]
set_property SLEW FAST [get_ports {ddr3_dq[32]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[32]}]
set_property LOC AE6 [get_ports {ddr3_dq[32]}]

# PadFunction: IO_L23N_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[33]}]
set_property SLEW FAST [get_ports {ddr3_dq[33]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[33]}]
set_property LOC AE5 [get_ports {ddr3_dq[33]}]

# PadFunction: IO_L22P_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[34]}]
set_property SLEW FAST [get_ports {ddr3_dq[34]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[34]}]
set_property LOC AE3 [get_ports {ddr3_dq[34]}]

# PadFunction: IO_L24N_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[35]}]
set_property SLEW FAST [get_ports {ddr3_dq[35]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[35]}]
set_property LOC AF2 [get_ports {ddr3_dq[35]}]

# PadFunction: IO_L19P_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[36]}]
set_property SLEW FAST [get_ports {ddr3_dq[36]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[36]}]
set_property LOC AD4 [get_ports {ddr3_dq[36]}]

# PadFunction: IO_L24P_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[37]}]
set_property SLEW FAST [get_ports {ddr3_dq[37]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[37]}]
set_property LOC AF3 [get_ports {ddr3_dq[37]}]

# PadFunction: IO_L20P_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[38]}]
set_property SLEW FAST [get_ports {ddr3_dq[38]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[38]}]
set_property LOC AD1 [get_ports {ddr3_dq[38]}]

# PadFunction: IO_L20N_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[39]}]
set_property SLEW FAST [get_ports {ddr3_dq[39]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[39]}]
set_property LOC AE1 [get_ports {ddr3_dq[39]}]

# PadFunction: IO_L18P_T2_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[40]}]
set_property SLEW FAST [get_ports {ddr3_dq[40]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[40]}]
set_property LOC AD6 [get_ports {ddr3_dq[40]}]

# PadFunction: IO_L17P_T2_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[41]}]
set_property SLEW FAST [get_ports {ddr3_dq[41]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[41]}]
set_property LOC Y6 [get_ports {ddr3_dq[41]}]

# PadFunction: IO_L17N_T2_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[42]}]
set_property SLEW FAST [get_ports {ddr3_dq[42]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[42]}]
set_property LOC Y5 [get_ports {ddr3_dq[42]}]

# PadFunction: IO_L13P_T2_MRCC_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[43]}]
set_property SLEW FAST [get_ports {ddr3_dq[43]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[43]}]
set_property LOC AA4 [get_ports {ddr3_dq[43]}]

# PadFunction: IO_L16P_T2_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[44]}]
set_property SLEW FAST [get_ports {ddr3_dq[44]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[44]}]
set_property LOC AB6 [get_ports {ddr3_dq[44]}]

# PadFunction: IO_L16N_T2_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[45]}]
set_property SLEW FAST [get_ports {ddr3_dq[45]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[45]}]
set_property LOC AC6 [get_ports {ddr3_dq[45]}]

# PadFunction: IO_L13N_T2_MRCC_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[46]}]
set_property SLEW FAST [get_ports {ddr3_dq[46]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[46]}]
set_property LOC AB4 [get_ports {ddr3_dq[46]}]

# PadFunction: IO_L14N_T2_SRCC_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[47]}]
set_property SLEW FAST [get_ports {ddr3_dq[47]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[47]}]
set_property LOC AC3 [get_ports {ddr3_dq[47]}]

# PadFunction: IO_L11N_T1_SRCC_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[48]}]
set_property SLEW FAST [get_ports {ddr3_dq[48]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[48]}]
set_property LOC AC2 [get_ports {ddr3_dq[48]}]

# PadFunction: IO_L12N_T1_MRCC_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[49]}]
set_property SLEW FAST [get_ports {ddr3_dq[49]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[49]}]
set_property LOC AA2 [get_ports {ddr3_dq[49]}]

# PadFunction: IO_L7P_T1_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[50]}]
set_property SLEW FAST [get_ports {ddr3_dq[50]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[50]}]
set_property LOC Y3 [get_ports {ddr3_dq[50]}]

# PadFunction: IO_L10N_T1_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[51]}]
set_property SLEW FAST [get_ports {ddr3_dq[51]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[51]}]
set_property LOC Y1 [get_ports {ddr3_dq[51]}]

# PadFunction: IO_L12P_T1_MRCC_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[52]}]
set_property SLEW FAST [get_ports {ddr3_dq[52]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[52]}]
set_property LOC AA3 [get_ports {ddr3_dq[52]}]

# PadFunction: IO_L11P_T1_SRCC_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[53]}]
set_property SLEW FAST [get_ports {ddr3_dq[53]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[53]}]
set_property LOC AB2 [get_ports {ddr3_dq[53]}]

# PadFunction: IO_L8N_T1_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[54]}]
set_property SLEW FAST [get_ports {ddr3_dq[54]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[54]}]
set_property LOC V1 [get_ports {ddr3_dq[54]}]

# PadFunction: IO_L10P_T1_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[55]}]
set_property SLEW FAST [get_ports {ddr3_dq[55]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[55]}]
set_property LOC W1 [get_ports {ddr3_dq[55]}]

# PadFunction: IO_L4P_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[56]}]
set_property SLEW FAST [get_ports {ddr3_dq[56]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[56]}]
set_property LOC V3 [get_ports {ddr3_dq[56]}]

# PadFunction: IO_L4N_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[57]}]
set_property SLEW FAST [get_ports {ddr3_dq[57]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[57]}]
set_property LOC W3 [get_ports {ddr3_dq[57]}]

# PadFunction: IO_L2N_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[58]}]
set_property SLEW FAST [get_ports {ddr3_dq[58]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[58]}]
set_property LOC U1 [get_ports {ddr3_dq[58]}]

# PadFunction: IO_L2P_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[59]}]
set_property SLEW FAST [get_ports {ddr3_dq[59]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[59]}]
set_property LOC U2 [get_ports {ddr3_dq[59]}]

# PadFunction: IO_L5P_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[60]}]
set_property SLEW FAST [get_ports {ddr3_dq[60]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[60]}]
set_property LOC U7 [get_ports {ddr3_dq[60]}]

# PadFunction: IO_L5N_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[61]}]
set_property SLEW FAST [get_ports {ddr3_dq[61]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[61]}]
set_property LOC V6 [get_ports {ddr3_dq[61]}]

# PadFunction: IO_L1P_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[62]}]
set_property SLEW FAST [get_ports {ddr3_dq[62]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[62]}]
set_property LOC U6 [get_ports {ddr3_dq[62]}]

# PadFunction: IO_L6P_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dq[63]}]
set_property SLEW FAST [get_ports {ddr3_dq[63]}]
set_property IOSTANDARD SSTL15_T_DCI [get_ports {ddr3_dq[63]}]
set_property LOC V4 [get_ports {ddr3_dq[63]}]

# PadFunction: IO_L24N_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[15]}]
set_property SLEW FAST [get_ports {ddr3_addr[15]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[15]}]
set_property LOC AF9 [get_ports {ddr3_addr[15]}]

# PadFunction: IO_L20P_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[14]}]
set_property SLEW FAST [get_ports {ddr3_addr[14]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[14]}]
set_property LOC AD10 [get_ports {ddr3_addr[14]}]

# PadFunction: IO_L8N_T1_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[13]}]
set_property SLEW FAST [get_ports {ddr3_addr[13]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[13]}]
set_property LOC AA7 [get_ports {ddr3_addr[13]}]

# PadFunction: IO_L24P_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[12]}]
set_property SLEW FAST [get_ports {ddr3_addr[12]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[12]}]
set_property LOC AF10 [get_ports {ddr3_addr[12]}]

# PadFunction: IO_L12P_T1_MRCC_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[11]}]
set_property SLEW FAST [get_ports {ddr3_addr[11]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[11]}]
set_property LOC AC9 [get_ports {ddr3_addr[11]}]

# PadFunction: IO_L10P_T1_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[10]}]
set_property SLEW FAST [get_ports {ddr3_addr[10]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[10]}]
set_property LOC AB7 [get_ports {ddr3_addr[10]}]

# PadFunction: IO_L20N_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[9]}]
set_property SLEW FAST [get_ports {ddr3_addr[9]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[9]}]
set_property LOC AE10 [get_ports {ddr3_addr[9]}]

# PadFunction: IO_L11P_T1_SRCC_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[8]}]
set_property SLEW FAST [get_ports {ddr3_addr[8]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[8]}]
set_property LOC AA9 [get_ports {ddr3_addr[8]}]

# PadFunction: IO_L22P_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[7]}]
set_property SLEW FAST [get_ports {ddr3_addr[7]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[7]}]
set_property LOC AE8 [get_ports {ddr3_addr[7]}]

# PadFunction: IO_L22N_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[6]}]
set_property SLEW FAST [get_ports {ddr3_addr[6]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[6]}]
set_property LOC AF8 [get_ports {ddr3_addr[6]}]

# PadFunction: IO_L11N_T1_SRCC_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[5]}]
set_property SLEW FAST [get_ports {ddr3_addr[5]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[5]}]
set_property LOC AB9 [get_ports {ddr3_addr[5]}]

# PadFunction: IO_L9N_T1_DQS_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[4]}]
set_property SLEW FAST [get_ports {ddr3_addr[4]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[4]}]
set_property LOC AD8 [get_ports {ddr3_addr[4]}]

# PadFunction: IO_L12N_T1_MRCC_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[3]}]
set_property SLEW FAST [get_ports {ddr3_addr[3]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[3]}]
set_property LOC AD9 [get_ports {ddr3_addr[3]}]

# PadFunction: IO_L7N_T1_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[2]}]
set_property SLEW FAST [get_ports {ddr3_addr[2]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[2]}]
set_property LOC AF7 [get_ports {ddr3_addr[2]}]

# PadFunction: IO_L7P_T1_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[1]}]
set_property SLEW FAST [get_ports {ddr3_addr[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[1]}]
set_property LOC AE7 [get_ports {ddr3_addr[1]}]

# PadFunction: IO_L10N_T1_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_addr[0]}]
set_property SLEW FAST [get_ports {ddr3_addr[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[0]}]
set_property LOC AC7 [get_ports {ddr3_addr[0]}]

# PadFunction: IO_L17N_T2_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ba[2]}]
set_property SLEW FAST [get_ports {ddr3_ba[2]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[2]}]
set_property LOC AD13 [get_ports {ddr3_ba[2]}]

# PadFunction: IO_L15N_T2_DQS_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ba[1]}]
set_property SLEW FAST [get_ports {ddr3_ba[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[1]}]
set_property LOC AC12 [get_ports {ddr3_ba[1]}]

# PadFunction: IO_L15P_T2_DQS_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ba[0]}]
set_property SLEW FAST [get_ports {ddr3_ba[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[0]}]
set_property LOC AB12 [get_ports {ddr3_ba[0]}]

# PadFunction: IO_L19N_T3_VREF_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ras_n}]
set_property SLEW FAST [get_ports {ddr3_ras_n}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ras_n}]
set_property LOC AE11 [get_ports {ddr3_ras_n}]

# PadFunction: IO_L18N_T2_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_cas_n}]
set_property SLEW FAST [get_ports {ddr3_cas_n}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cas_n}]
set_property LOC Y12 [get_ports {ddr3_cas_n}]

# PadFunction: IO_L13N_T2_MRCC_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_we_n}]
set_property SLEW FAST [get_ports {ddr3_we_n}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_we_n}]
set_property LOC AC11 [get_ports {ddr3_we_n}]

# PadFunction: IO_L16P_T2_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_reset_n}]
set_property SLEW FAST [get_ports {ddr3_reset_n}]
set_property IOSTANDARD LVCMOS15 [get_ports {ddr3_reset_n}]
set_property LOC AA13 [get_ports {ddr3_reset_n}]

# PadFunction: IO_L16N_T2_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_cke[0]}]
set_property SLEW FAST [get_ports {ddr3_cke[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cke[0]}]
set_property LOC AA12 [get_ports {ddr3_cke[0]}]

# PadFunction: IO_L9P_T1_DQS_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_odt[0]}]
set_property SLEW FAST [get_ports {ddr3_odt[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_odt[0]}]
set_property LOC AC8 [get_ports {ddr3_odt[0]}]

# PadFunction: IO_L19P_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_cs_n[0]}]
set_property SLEW FAST [get_ports {ddr3_cs_n[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cs_n[0]}]
set_property LOC AD11 [get_ports {ddr3_cs_n[0]}]

# PadFunction: IO_L23P_T3_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[0]}]
set_property SLEW FAST [get_ports {ddr3_dm[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[0]}]
set_property LOC V18 [get_ports {ddr3_dm[0]}]

# PadFunction: IO_L13P_T2_MRCC_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[1]}]
set_property SLEW FAST [get_ports {ddr3_dm[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[1]}]
set_property LOC AC18 [get_ports {ddr3_dm[1]}]

# PadFunction: IO_L8N_T1_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[2]}]
set_property SLEW FAST [get_ports {ddr3_dm[2]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[2]}]
set_property LOC AD14 [get_ports {ddr3_dm[2]}]

# PadFunction: IO_L5P_T0_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[3]}]
set_property SLEW FAST [get_ports {ddr3_dm[3]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[3]}]
set_property LOC AF19 [get_ports {ddr3_dm[3]}]

# PadFunction: IO_L22N_T3_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[4]}]
set_property SLEW FAST [get_ports {ddr3_dm[4]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[4]}]
set_property LOC AE2 [get_ports {ddr3_dm[4]}]

# PadFunction: IO_L14P_T2_SRCC_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[5]}]
set_property SLEW FAST [get_ports {ddr3_dm[5]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[5]}]
set_property LOC AC4 [get_ports {ddr3_dm[5]}]

# PadFunction: IO_L7N_T1_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[6]}]
set_property SLEW FAST [get_ports {ddr3_dm[6]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[6]}]
set_property LOC Y2 [get_ports {ddr3_dm[6]}]

# PadFunction: IO_L1N_T0_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dm[7]}]
set_property SLEW FAST [get_ports {ddr3_dm[7]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[7]}]
set_property LOC U5 [get_ports {ddr3_dm[7]}]

# PadFunction: IO_L14P_T2_SRCC_33 
set_property VCCAUX_IO DONTCARE [get_ports {sys_clk_p}]
set_property IOSTANDARD LVDS [get_ports {sys_clk_p}]
set_property LOC AA10 [get_ports {sys_clk_p}]

# PadFunction: IO_L14N_T2_SRCC_33 
set_property VCCAUX_IO DONTCARE [get_ports {sys_clk_n}]
set_property IOSTANDARD LVDS [get_ports {sys_clk_n}]
set_property LOC AB10 [get_ports {sys_clk_n}]

# PadFunction: IO_L19P_T3_12 
set_property IOSTANDARD LVCMOS25 [get_ports {sys_rst}]
set_property LOC Y20 [get_ports {sys_rst}]

# PadFunction: IO_L23P_T3_12 
set_property IOSTANDARD LVCMOS15 [get_ports {init_calib_complete}]
set_property LOC W10 [get_ports {init_calib_complete}]

# PadFunction: IO_L23N_T3_12 
set_property IOSTANDARD LVCMOS15 [get_ports {tg_compare_error}]
set_property LOC V11 [get_ports {tg_compare_error}]

# PadFunction: IO_L21P_T3_DQS_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[0]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[0]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[0]}]
set_property LOC W18 [get_ports {ddr3_dqs_p[0]}]

# PadFunction: IO_L21N_T3_DQS_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[0]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[0]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[0]}]
set_property LOC W19 [get_ports {ddr3_dqs_n[0]}]

# PadFunction: IO_L15P_T2_DQS_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[1]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[1]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[1]}]
set_property LOC AD20 [get_ports {ddr3_dqs_p[1]}]

# PadFunction: IO_L15N_T2_DQS_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[1]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[1]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[1]}]
set_property LOC AE20 [get_ports {ddr3_dqs_n[1]}]

# PadFunction: IO_L9P_T1_DQS_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[2]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[2]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[2]}]
set_property LOC Y15 [get_ports {ddr3_dqs_p[2]}]

# PadFunction: IO_L9N_T1_DQS_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[2]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[2]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[2]}]
set_property LOC Y16 [get_ports {ddr3_dqs_n[2]}]

# PadFunction: IO_L3P_T0_DQS_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[3]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[3]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[3]}]
set_property LOC AE18 [get_ports {ddr3_dqs_p[3]}]

# PadFunction: IO_L3N_T0_DQS_32 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[3]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[3]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[3]}]
set_property LOC AF18 [get_ports {ddr3_dqs_n[3]}]

# PadFunction: IO_L21P_T3_DQS_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[4]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[4]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[4]}]
set_property LOC AF5 [get_ports {ddr3_dqs_p[4]}]

# PadFunction: IO_L21N_T3_DQS_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[4]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[4]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[4]}]
set_property LOC AF4 [get_ports {ddr3_dqs_n[4]}]

# PadFunction: IO_L15P_T2_DQS_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[5]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[5]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[5]}]
set_property LOC AA5 [get_ports {ddr3_dqs_p[5]}]

# PadFunction: IO_L15N_T2_DQS_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[5]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[5]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[5]}]
set_property LOC AB5 [get_ports {ddr3_dqs_n[5]}]

# PadFunction: IO_L9P_T1_DQS_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[6]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[6]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[6]}]
set_property LOC AB1 [get_ports {ddr3_dqs_p[6]}]

# PadFunction: IO_L9N_T1_DQS_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[6]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[6]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[6]}]
set_property LOC AC1 [get_ports {ddr3_dqs_n[6]}]

# PadFunction: IO_L3P_T0_DQS_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_p[7]}]
set_property SLEW FAST [get_ports {ddr3_dqs_p[7]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_p[7]}]
set_property LOC W6 [get_ports {ddr3_dqs_p[7]}]

# PadFunction: IO_L3N_T0_DQS_34 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_dqs_n[7]}]
set_property SLEW FAST [get_ports {ddr3_dqs_n[7]}]
set_property IOSTANDARD DIFF_SSTL15_T_DCI [get_ports {ddr3_dqs_n[7]}]
set_property LOC W5 [get_ports {ddr3_dqs_n[7]}]

# PadFunction: IO_L23P_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ck_p[0]}]
set_property SLEW FAST [get_ports {ddr3_ck_p[0]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_ck_p[0]}]
set_property LOC AE13 [get_ports {ddr3_ck_p[0]}]

# PadFunction: IO_L23N_T3_33 
set_property VCCAUX_IO NORMAL [get_ports {ddr3_ck_n[0]}]
set_property SLEW FAST [get_ports {ddr3_ck_n[0]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_ck_n[0]}]
set_property LOC AF13 [get_ports {ddr3_ck_n[0]}]

# Dual Rank
set_property VCCAUX_IO NORMAL [get_ports {ddr3_cs_n[1]}]
set_property SLEW FAST [get_ports {ddr3_cs_n[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cs_n[1]}]
set_property LOC Y11 [get_ports {ddr3_cs_n[1]}]

set_property VCCAUX_IO NORMAL [get_ports {ddr3_odt[1]}]
set_property SLEW FAST [get_ports {ddr3_odt[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_odt[1]}]
set_property LOC AA8 [get_ports {ddr3_odt[1]}]

# FlashPROM 
# set_property IOSTANDARD LVCMOS18 or 25 or 33 [get_ports {flash_xx_[yy]}] => default is LVCMOS25
set_property LOC J23 [get_ports {flash_ad00}] 		
set_property LOC K23 [get_ports {flash_ad01}] 		
set_property LOC K22 [get_ports {flash_ad02}] 		
set_property LOC L22 [get_ports {flash_ad03}] 		
set_property LOC J25 [get_ports {flash_ad04}] 		
set_property LOC J24 [get_ports {flash_ad05}] 		
set_property LOC H22 [get_ports {flash_ad06}] 		
set_property LOC H24 [get_ports {flash_ad07}] 		
set_property LOC H23 [get_ports {flash_ad08}] 		
set_property LOC G21 [get_ports {flash_ad09}] 		
set_property LOC H21 [get_ports {flash_ad10}] 		
set_property LOC H26 [get_ports {flash_ad11}] 		
set_property LOC J26 [get_ports {flash_ad12}] 		
set_property LOC E26 [get_ports {flash_ad13}] 		
set_property LOC F25 [get_ports {flash_ad14}] 		
set_property LOC G26 [get_ports {flash_ad15}] 		
set_property LOC K17 [get_ports {flash_ad16}] 		
set_property LOC K16 [get_ports {flash_ad17}] 		
set_property LOC L20 [get_ports {flash_ad18}] 		
set_property LOC J19 [get_ports {flash_ad19}] 		
set_property LOC J18 [get_ports {flash_ad20}] 		
set_property LOC J20 [get_ports {flash_ad21}] 		
set_property LOC K20 [get_ports {flash_ad22}] 		
set_property LOC G20 [get_ports {flash_ad23}] 		
set_property LOC H19 [get_ports {flash_ad24}] 		
set_property LOC E20 [get_ports {flash_ad25}] 		

set_property LOC F19 [get_ports {flash_ad26}] 		
		
set_property LOC D20 [get_ports {flash_adv#}]		
set_property LOC C23 [get_ports {flash_ce#}] 		
set_property LOC C8 [get_ports {flash_clk}] 		
set_property LOC B24 [get_ports {flash_data00}] 	
set_property LOC A25 [get_ports {flash_data01}] 	
set_property LOC B22 [get_ports {flash_data02}] 	
set_property LOC A22 [get_ports {flash_data03}] 	
set_property LOC A23 [get_ports {flash_data04}] 	
set_property LOC A24 [get_ports {flash_data05}] 	
set_property LOC D26 [get_ports {flash_data06}] 	
set_property LOC C26 [get_ports {flash_data07}] 	
set_property LOC C24 [get_ports {flash_data08}] 	
set_property LOC D21 [get_ports {flash_data09}] 	
set_property LOC C22 [get_ports {flash_data10}] 	
set_property LOC B20 [get_ports {flash_data11}] 	
set_property LOC A20 [get_ports {flash_data12}] 	
set_property LOC E22 [get_ports {flash_data13}] 	
set_property LOC C21 [get_ports {flash_data14}] 	
set_property LOC B21 [get_ports {flash_data15}] 	
set_property LOC M17 [get_ports {flash_oe#}] 		
set_property LOC G7 [get_ports {flash_rst#}] 		
set_property LOC E25 [get_ports {flash_wait}] 		
set_property LOC L18 [get_ports {flash_we#}] 	

#FMC HPC partial interface

set_property LOC [get_ports {N22 clk0_c2m_n}] 		
set_property LOC [get_ports {N21 clk0_c2m_p}] 		
set_property LOC [get_ports {P21 clk0_m2c_n}] 		
set_property LOC [get_ports {R21 clk0_m2c_p}] 		
set_property LOC [get_ports {AA22 clk1_c2m_n}] 		
set_property LOC [get_ports {Y22 clk1_c2m_p}] 		
set_property LOC [get_ports {AA24 clk1_m2c_n}] 		
set_property LOC [get_ports {Y23 clk1_m2c_p}] 		

set_property LOC H1 [get_ports {dp0_c2m_n}] 		
set_property LOC H2 [get_ports {dp0_c2m_p}] 		
set_property LOC J3 [get_ports {dp0_m2c_n}] 		
set_property LOC J4 [get_ports {dp0_m2c_p}] 		
set_property LOC K1 [get_ports {dp1_c2m_n}] 		
set_property LOC K2 [get_ports {dp1_c2m_p}] 		
set_property LOC L3 [get_ports {dp1_m2c_n}] 		
set_property LOC L4 [get_ports {dp1_m2c_p}] 		
set_property LOC M1 [get_ports {dp2_c2m_n}] 		
set_property LOC M2 [get_ports {dp2_c2m_p}] 		
set_property LOC N3 [get_ports {dp2_m2c_n}] 		
set_property LOC N4 [get_ports {dp2_m2c_p}] 		
set_property LOC P1 [get_ports {dp3_c2m_n}] 		
set_property LOC P2 [get_ports {dp3_c2m_p}] 		
set_property LOC R3 [get_ports {dp3_m2c_n}] 		
set_property LOC R4 [get_ports {dp3_m2c_p}] 		

set_property LOC H5 [get_ports {gbtclk0_m2c_n}] 	
set_property LOC H6 [get_ports {gbtclk0_m2c_p}] 	

set_property LOC AB24 [get_ports {ha00_cc_n}] 		
set_property LOC AA23 [get_ports {ha00_cc_p}] 		
set_property LOC AC24 [get_ports {ha01_cc_n}] 		
set_property LOC AC23 [get_ports {ha01_cc_p}] 		
set_property LOC P26  [get_ports {ha02_n}] 			
set_property LOC R26  [get_ports {ha02_p}] 			
set_property LOC AD24 [get_ports {ha03_n}] 			
set_property LOC AD23 [get_ports {ha03_p}] 			
set_property LOC AC22 [get_ports {ha04_n}] 			
set_property LOC AB22 [get_ports {ha04_p}] 			
set_property LOC AC21 [get_ports {ha05_n}] 			
set_property LOC AB21 [get_ports {ha05_p}] 			
set_property LOC L25  [get_ports {ha06_n}] 			
set_property LOC M25  [get_ports {ha06_p}] 			
set_property LOC AB25 [get_ports {ha07_n}] 			
set_property LOC AA25 [get_ports {ha07_p}] 			
set_property LOC W24  [get_ports {ha08_n}] 			
set_property LOC W23  [get_ports {ha08_p}] 			
set_property LOC Y26  [get_ports {ha09_n}] 			
set_property LOC Y25  [get_ports {ha09_p}] 			
set_property LOC F24  [get_ports {ha10_n}] 			
set_property LOC G24  [get_ports {ha10_p}] 			
set_property LOC V26  [get_ports {ha11_n}] 			
set_property LOC U26  [get_ports {ha11_p}] 			
set_property LOC U25  [get_ports {ha12_n}] 			
set_property LOC U24  [get_ports {ha12_p}] 			
set_property LOC W21  [get_ports {ha13_n}] 			
set_property LOC V21  [get_ports {ha13_p}] 			
set_property LOC M22  [get_ports {ha14_n}] 			
set_property LOC M21  [get_ports {ha14_p}] 			
set_property LOC U20  [get_ports {ha15_n}] 			
set_property LOC U19  [get_ports {ha15_p}] 			
set_property LOC P25  [get_ports {ha16_n}] 			
set_property LOC R25  [get_ports {ha16_p}] 			
set_property LOC E23  [get_ports {ha17_cc_n}] 		
set_property LOC F22  [get_ports {ha17_cc_p}] 		
set_property LOC N24  [get_ports {ha18_n}] 			
set_property LOC P24  [get_ports {ha18_p}] 			
set_property LOC N17  [get_ports {ha19_n}] 			
set_property LOC P16  [get_ports {ha19_p}] 			
set_property LOC T23  [get_ports {ha20_n}] 			
set_property LOC T22  [get_ports {ha20_p}] 			
set_property LOC P20  [get_ports {ha21_n}] 			
set_property LOC P19  [get_ports {ha21_p}] 			
set_property LOC B16  [get_ports {ha22_n}] 			
set_property LOC C16  [get_ports {ha22_p}] 			
set_property LOC B19  [get_ports {ha23_n}] 			
set_property LOC C19  [get_ports {ha23_p}] 			
set_property LOC H18  [get_ports {hb00_cc_n}] 		
set_property LOC H17  [get_ports {hb00_cc_p}] 		
set_property LOC A19  [get_ports {hb01_n}] 			
set_property LOC A18  [get_ports {hb01_p}] 			
set_property LOC R17  [get_ports {hb02_n}] 			
set_property LOC R16  [get_ports {hb02_p}] 			
set_property LOC T17  [get_ports {hb03_n}] 			
set_property LOC U17  [get_ports {hb03_p}] 			
set_property LOC G16  [get_ports {hb04_n}] 			
set_property LOC H16  [get_ports {hb04_p}] 			
set_property LOC E16  [get_ports {hb05_n}] 			
set_property LOC E15  [get_ports {hb05_p}] 			
set_property LOC C11  [get_ports {hb06_cc_n}] 		
set_property LOC C12  [get_ports {hb06_cc_p}] 		
set_property LOC J16  [get_ports {hb07_n}] 			
set_property LOC J15  [get_ports {hb07_p}] 			
set_property LOC F15  [get_ports {hb08_n}] 			
set_property LOC G15  [get_ports {hb08_p}] 			
set_property LOC A14  [get_ports {hb09_n}] 			
set_property LOC B14  [get_ports {hb09_p}] 			
set_property LOC D10  [get_ports {hb10_n}] 			
set_property LOC E10  [get_ports {hb10_p}] 			
set_property LOC C13  [get_ports {hb11_n}] 			
set_property LOC C14  [get_ports {hb11_p}] 			
set_property LOC F13  [get_ports {hb12_n}] 			
set_property LOC F14  [get_ports {hb12_p}] 			
set_property LOC G14  [get_ports {hb13_n}] 			
set_property LOC H14  [get_ports {hb13_p}] 			
set_property LOC A12  [get_ports {hb14_n}] 			
set_property LOC A13  [get_ports {hb14_p}] 			
set_property LOC B9   [get_ports {hb15_n}] 			
set_property LOC C9   [get_ports {hb15_p}] 			
set_property LOC J10  [get_ports {hb16_n}] 			
set_property LOC J11  [get_ports {hb16_p}] 			
set_property LOC F10  [get_ports {hb17_cc_n}] 		
set_property LOC G11  [get_ports {hb17_cc_p}] 		
set_property LOC H8   [get_ports {hb18_n}] 			
set_property LOC H9   [get_ports {hb18_p}] 			
set_property LOC B11  [get_ports {hb19_n}] 			
set_property LOC B12  [get_ports {hb19_p}] 			
set_property LOC A10  [get_ports {hb20_n}] 			
set_property LOC B10  [get_ports {hb20_p}] 			
set_property LOC G9   [get_ports {hb21_n}] 			
set_property LOC G10  [get_ports {hb21_p}] 			

set_property LOC R23  [get_ports {la00_cc_n}] 		
set_property LOC R22  [get_ports {la00_cc_p}] 		
set_property LOC N23  [get_ports {la01_cc_n}] 		
set_property LOC P23  [get_ports {la01_cc_p}] 		
set_property LOC AC26 [get_ports {la02_n}] 			
set_property LOC AB26 [get_ports {la02_p}] 			
set_property LOC M26  [get_ports {la03_n}] 			
set_property LOC N26  [get_ports {la03_p}] 			
set_property LOC W26  [get_ports {la04_n}] 			
set_property LOC W25  [get_ports {la04_p}] 			
set_property LOC L24  [get_ports {la05_n}] 			
set_property LOC M24  [get_ports {la05_p}] 			
set_property LOC Y21  [get_ports {la06_n}] 			
set_property LOC W20  [get_ports {la06_p}] 			
set_property LOC V24  [get_ports {la07_n}] 			
set_property LOC V23  [get_ports {la07_p}] 			
set_property LOC K26  [get_ports {la08_n}] 			
set_property LOC K25  [get_ports {la08_p}] 			
set_property LOC F23  [get_ports {la09_n}] 			
set_property LOC G22  [get_ports {la09_p}] 			
set_property LOC V22  [get_ports {la10_n}] 			
set_property LOC U22  [get_ports {la10_p}] 			
set_property LOC T25  [get_ports {la11_n}] 			
set_property LOC T24  [get_ports {la11_p}] 			
set_property LOC D24  [get_ports {la12_n}] 			
set_property LOC D23  [get_ports {la12_p}] 			
set_property LOC R20  [get_ports {la13_n}] 			
set_property LOC T20  [get_ports {la13_p}] 			
set_property LOC T19  [get_ports {la14_n}] 			
set_property LOC T18  [get_ports {la14_p}] 			
set_property LOC P18  [get_ports {la15_n}] 			
set_property LOC R18  [get_ports {la15_p}] 			
set_property LOC M20  [get_ports {la16_n}] 			
set_property LOC N19  [get_ports {la16_p}] 			
set_property LOC D18  [get_ports {la17_cc_n}] 		
set_property LOC E18  [get_ports {la17_cc_p}] 		
set_property LOC E17  [get_ports {la18_cc_n}] 		
set_property LOC F17  [get_ports {la18_cc_p}] 		
set_property LOC A17  [get_ports {la19_n}]			
set_property LOC B17  [get_ports {la19_p}]			
set_property LOC M19  [get_ports {la20_n}]			
set_property LOC N18  [get_ports {la20_p}]			
set_property LOC D16  [get_ports {la21_n}]			
set_property LOC D15  [get_ports {la21_p}]			
set_property LOC C18  [get_ports {la22_n}]			
set_property LOC C17  [get_ports {la22_p}]			
set_property LOC F18  [get_ports {la23_n}]			
set_property LOC G17  [get_ports {la23_p}]			
set_property LOC D13  [get_ports {la24_n}]			
set_property LOC D14  [get_ports {la24_p}]			
set_property LOC E12  [get_ports {la25_n}]			
set_property LOC E13  [get_ports {la25_p}]			
set_property LOC H13  [get_ports {la26_n}]			
set_property LOC J13  [get_ports {la26_p}]			
set_property LOC A15  [get_ports {la27_n}]			
set_property LOC B15  [get_ports {la27_p}]			
set_property LOC F12  [get_ports {la28_n}]			
set_property LOC G12  [get_ports {la28_p}]			
set_property LOC D11  [get_ports {la29_n}]			
set_property LOC E11  [get_ports {la29_p}]			
set_property LOC H11  [get_ports {la30_n}]			
set_property LOC H12  [get_ports {la30_p}]			
set_property LOC A8   [get_ports {la31_n}]			
set_property LOC A9   [get_ports {la31_p}]			
set_property LOC F8   [get_ports {la32_n}]			
set_property LOC F9   [get_ports {la32_p}]			
set_property LOC D8   [get_ports {la33_n}]			
set_property LOC D9   [get_ports {la33_p}]			
set_property LOC U21  [get_ports {pg_m2c}]	

# PCIe 4X GEN2

set_property LOC B5   [get_ports {mper0_n}] 		
set_property LOC B6   [get_ports {mper0_p}] 		
set_property LOC C3   [get_ports {mper1_n}] 		
set_property LOC C4   [get_ports {mper1_p}] 		
set_property LOC E3   [get_ports {mper2_n}] 		
set_property LOC E4   [get_ports {mper2_p}] 		
set_property LOC G3   [get_ports {mper3_n}] 		
set_property LOC G4   [get_ports {mper3_p}] 		
set_property LOC U16  [get_ports {mperst#_b}] 		
set_property LOC A3   [get_ports {mpet0_n}] 		
set_property LOC A4   [get_ports {mpet0_p}] 		
set_property LOC B1   [get_ports {mpet1_n}] 		
set_property LOC B2   [get_ports {mpet1_p}] 		
set_property LOC D1   [get_ports {mpet2_n}] 		
set_property LOC D2   [get_ports {mpet2_p}] 		
set_property LOC F1   [get_ports {mpet3_n}] 		
set_property LOC F2   [get_ports {mpet3_p}] 		
set_property LOC D5   [get_ports {mrefclka_n}] 		
set_property LOC D6   [get_ports {mrefclka_p}] 		
set_property LOC J14  [get_ports {scl}] 			
set_property LOC N16  [get_ports {sda}] 

#MISC


# set_property IOSTANDARD LVCMOS15 [get_ports {ipx_[yy]}]

set_property LOC AB19 [get_ports {ip_reset}] 		
set_property LOC V13  [get_ports {ip2_data}] 		
set_property LOC W9   [get_ports {ip2_done}] 		
set_property LOC W8   [get_ports {ip2_start}] 		
set_property LOC Y13  [get_ports {ip3_data}] 		
set_property LOC W11  [get_ports {ip3_done}] 		
set_property LOC V9   [get_ports {ip3_start}] 	

set_property LOC R11  [get_ports {xadc_dxn}] 		
set_property LOC R12  [get_ports {xadc_dxp}] 		
set_property LOC P11  [get_ports {xadc_vn}]		
set_property LOC N12  [get_ports {xadc_vp}]		
set_property LOC P12  [get_ports {xadc_vrefp}] 		
