set_property SRC_FILE_INFO {cfile:/home/asautaux/vhdl/quickpcie-expert_gen2_v156_b085_xilinx_eval/ref_design/synthesis/xilinx/plda_xpressk7_xc7k160tfbg676-2/x4_gen2/vlog/qpcie_ref_design.xdc rfile:../../../../vhdl/quickpcie-expert_gen2_v156_b085_xilinx_eval/ref_design/synthesis/xilinx/plda_xpressk7_xc7k160tfbg676-2/x4_gen2/vlog/qpcie_ref_design.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:11 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 -name sys_clk_p [get_ports sys_clk_p]
set_property src_info {type:XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 -name sys_clk   [get_pins * -hier -filter {NAME  =~ */refclk_ibuf/O}]
set_property src_info {type:XDC file:1 line:13 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 -name TXOUTCLK  [get_pins * -hier -filter {NAME  =~ */pipe_lane[0].gt_wrapper_i/gtx_channel.gtxe2_channel_i/TXOUTCLK}]
set_property src_info {type:XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name clk_125mhz_x0y0 [get_pins * -hier -filter {NAME  =~ */pipe_clock_i/mmcm_i/CLKOUT0}]
set_property src_info {type:XDC file:1 line:16 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name clk_250mhz_x0y0 [get_pins * -hier -filter {NAME  =~ */pipe_clock_i/mmcm_i/CLKOUT1}]
set_property src_info {type:XDC file:1 line:18 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name clk_125mhz_mux_x0y0 -source [get_pins * -hier -filter {NAME  =~ */pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/I0}] -divide_by 1 [get_pins  * -hier -filter {NAME  =~ */pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/O}]
set_property src_info {type:XDC file:1 line:22 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name clk_250mhz_mux_x0y0 -source [get_pins * -hier -filter {NAME  =~ */pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/I1}] -divide_by 1 -add -master_clock [get_clocks -of [get_pins * -hier -filter {NAME  =~ */pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/I1}]] [get_pins * -hier -filter {NAME  =~ */pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/O}]
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -to [get_pins * -hier -filter {NAME  =~ */pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/S0}]
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -to [get_pins * -hier -filter {NAME  =~ */pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/S1}]
set_property src_info {type:XDC file:1 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from    [get_ports sys_rst_n]
set_property src_info {type:XDC file:1 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -through [get_pins * -hier -filter {NAME  =~ */pcie_block_i/PLPHYLNKUPN}]
set_property src_info {type:XDC file:1 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -through [get_pins * -hier -filter {NAME  =~ */pcie_block_i/PLRECEIVEDHOTRST}]
set_property src_info {type:XDC file:1 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -through [get_pins -hier -filter {NAME =~ */RXELECIDLE}]
set_property src_info {type:XDC file:1 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -through [get_pins -hier -filter {NAME =~ */TXPHINITDONE}]
set_property src_info {type:XDC file:1 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -through [get_pins -hier -filter {NAME =~ */TXPHALIGNDONE}]
set_property src_info {type:XDC file:1 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -through [get_pins -hier -filter {NAME =~ */TXDLYSRESETDONE}]
set_property src_info {type:XDC file:1 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -through [get_pins -hier -filter {NAME =~ */RXDLYSRESETDONE}]
set_property src_info {type:XDC file:1 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -through [get_pins -hier -filter {NAME =~ */RXPHALIGNDONE}]
set_property src_info {type:XDC file:1 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -through [get_pins -hier -filter {NAME =~ */RXCDRLOCK}]
set_property src_info {type:XDC file:1 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -through [get_pins -hier -filter {NAME =~ */CFGMSGRECEIVEDPMETO}]
set_property src_info {type:XDC file:1 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -through [get_pins -hier -filter {NAME =~ */CPLLLOCK}]
set_property src_info {type:XDC file:1 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -through [get_pins -hier -filter {NAME =~ */QPLLLOCK}]
set_property src_info {type:XDC file:1 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC IBUFDS_GTE2_X0Y2 [get_cells * -hier -filter {NAME  =~ qpcie_ipcore/*/refclk_ibuf}]
set_property src_info {type:XDC file:1 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC PCIE_X0Y0 [get_cells * -hier -filter {NAME  =~ */pcie_top_i/pcie_7x_i/pcie_block_i}]
set_property src_info {type:XDC file:1 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTXE2_CHANNEL_X0Y7 [get_cells * -hier -filter {NAME  =~ */gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property src_info {type:XDC file:1 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTXE2_CHANNEL_X0Y6 [get_cells * -hier -filter {NAME  =~ */gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property src_info {type:XDC file:1 line:69 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTXE2_CHANNEL_X0Y5 [get_cells * -hier -filter {NAME  =~ */gt_top_i/pipe_wrapper_i/pipe_lane[2].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property src_info {type:XDC file:1 line:70 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTXE2_CHANNEL_X0Y4 [get_cells * -hier -filter {NAME  =~ */gt_top_i/pipe_wrapper_i/pipe_lane[3].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property src_info {type:XDC file:1 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC RAMB36_X4Y34 [get_cells * -hier -filter {NAME  =~ */pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[0].ram/use_tdp.ramb36/genblk*.bram36_tdp_bl.bram36_tdp_bl}]
set_property src_info {type:XDC file:1 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC RAMB36_X4Y33 [get_cells * -hier -filter {NAME  =~ */pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[1].ram/use_tdp.ramb36/genblk*.bram36_tdp_bl.bram36_tdp_bl}]
set_property src_info {type:XDC file:1 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC RAMB36_X4Y31 [get_cells * -hier -filter {NAME  =~ */pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_tx/brams[0].ram/use_tdp.ramb36/genblk*.bram36_tdp_bl.bram36_tdp_bl}]
set_property src_info {type:XDC file:1 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC RAMB36_X4Y30 [get_cells * -hier -filter {NAME  =~ */pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_tx/brams[1].ram/use_tdp.ramb36/genblk*.bram36_tdp_bl.bram36_tdp_bl}]
set_property src_info {type:XDC file:1 line:94 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS25 [get_ports sys_rst_n]
set_property src_info {type:XDC file:1 line:95 export:INPUT save:INPUT read:READ} [current_design]
set_property PULLUP TRUE         [get_ports sys_rst_n]
set_property src_info {type:XDC file:1 line:96 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U16     [get_ports sys_rst_n]
set_property src_info {type:XDC file:1 line:99 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D6      [get_ports sys_clk_p]
set_property src_info {type:XDC file:1 line:100 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D5      [get_ports sys_clk_n]
set_property src_info {type:XDC file:1 line:102 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN A3      [get_ports {pci_exp_txn[0]}]
set_property src_info {type:XDC file:1 line:103 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN B5      [get_ports {pci_exp_rxn[0]}]
set_property src_info {type:XDC file:1 line:104 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN B6      [get_ports {pci_exp_rxp[0]}]
set_property src_info {type:XDC file:1 line:105 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN A4      [get_ports {pci_exp_txp[0]}]
set_property src_info {type:XDC file:1 line:106 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN B1      [get_ports {pci_exp_txn[1]}]
set_property src_info {type:XDC file:1 line:107 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN C3      [get_ports {pci_exp_rxn[1]}]
set_property src_info {type:XDC file:1 line:108 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN C4      [get_ports {pci_exp_rxp[1]}]
set_property src_info {type:XDC file:1 line:109 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN B2      [get_ports {pci_exp_txp[1]}]
set_property src_info {type:XDC file:1 line:110 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D1      [get_ports {pci_exp_txn[2]}]
set_property src_info {type:XDC file:1 line:111 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E3      [get_ports {pci_exp_rxn[2]}]
set_property src_info {type:XDC file:1 line:112 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E4      [get_ports {pci_exp_rxp[2]}]
set_property src_info {type:XDC file:1 line:113 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D2      [get_ports {pci_exp_txp[2]}]
set_property src_info {type:XDC file:1 line:114 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F1      [get_ports {pci_exp_txn[3]}]
set_property src_info {type:XDC file:1 line:115 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G3      [get_ports {pci_exp_rxn[3]}]
set_property src_info {type:XDC file:1 line:116 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G4      [get_ports {pci_exp_rxp[3]}]
set_property src_info {type:XDC file:1 line:117 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F2      [get_ports {pci_exp_txp[3]}]
set_property src_info {type:XDC file:1 line:120 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W10     [get_ports {usr_led[0]}]
set_property src_info {type:XDC file:1 line:121 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V11     [get_ports {usr_led[1]}]
set_property src_info {type:XDC file:1 line:122 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y10     [get_ports {usr_led[2]}]
set_property src_info {type:XDC file:1 line:123 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W13     [get_ports {usr_led[3]}]
set_property src_info {type:XDC file:1 line:124 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_led[0]}]
set_property src_info {type:XDC file:1 line:125 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_led[1]}]
set_property src_info {type:XDC file:1 line:126 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_led[2]}]
set_property src_info {type:XDC file:1 line:127 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_led[3]}]
set_property src_info {type:XDC file:1 line:130 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA15    [get_ports {usr_sw[0]}]
set_property src_info {type:XDC file:1 line:131 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V8      [get_ports {usr_sw[1]}]
set_property src_info {type:XDC file:1 line:132 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y8      [get_ports {usr_sw[2]}]
set_property src_info {type:XDC file:1 line:133 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_sw[0]}]
set_property src_info {type:XDC file:1 line:134 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_sw[1]}]
set_property src_info {type:XDC file:1 line:135 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_sw[2]}]
set_property src_info {type:XDC file:1 line:138 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  AB19   [get_ports  prot0_out]
set_property src_info {type:XDC file:1 line:139 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  V13    [get_ports {prot2_in[0]}]
set_property src_info {type:XDC file:1 line:140 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  W9     [get_ports {prot2_in[1]}]
set_property src_info {type:XDC file:1 line:141 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN  W8     [get_ports  prot2_out]
set_property src_info {type:XDC file:1 line:142 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS15 [get_ports prot0_out]
set_property src_info {type:XDC file:1 line:143 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS15 [get_ports {prot2_in[0]}]
set_property src_info {type:XDC file:1 line:144 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS15 [get_ports {prot2_in[1]}]
set_property src_info {type:XDC file:1 line:145 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS15 [get_ports prot2_out]
