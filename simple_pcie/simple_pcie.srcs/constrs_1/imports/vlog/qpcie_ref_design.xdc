#====================================================
#                  CONSTRAINTS FILE
#     FOR PLDA XpressK7 xc7k160tfbg676-2 BOARD
#====================================================

# ----------------------------------------------------
#  TIMING CONSTRAINTS
# ----------------------------------------------------

# Frequency Constraints
create_clock -period 10.000 -name sys_clk_p [get_ports sys_clk_p]
create_clock -period 10.000 -name sys_clk   [get_pins * -hier -filter {NAME  =~ */refclk_ibuf/O}]
create_clock -period 10.000 -name TXOUTCLK  [get_pins * -hier -filter {NAME  =~ */pipe_lane[0].gt_wrapper_i/gtx_channel.gtxe2_channel_i/TXOUTCLK}]

create_generated_clock -name clk_125mhz_x0y0 [get_pins * -hier -filter {NAME  =~ */pipe_clock_i/mmcm_i/CLKOUT0}]
create_generated_clock -name clk_250mhz_x0y0 [get_pins * -hier -filter {NAME  =~ */pipe_clock_i/mmcm_i/CLKOUT1}]

create_generated_clock -name clk_125mhz_mux_x0y0 \
                        -source [get_pins * -hier -filter {NAME  =~ */pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/I0}] \
                        -divide_by 1 \
                        [get_pins  * -hier -filter {NAME  =~ */pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/O}]
create_generated_clock -name clk_250mhz_mux_x0y0 \
                        -source [get_pins * -hier -filter {NAME  =~ */pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/I1}] \
                        -divide_by 1 -add -master_clock [get_clocks -of [get_pins * -hier -filter {NAME  =~ */pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/I1}]] \
                        [get_pins * -hier -filter {NAME  =~ */pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/O}]

set_clock_groups -name pcieclkmux_x0y0 -physically_exclusive -group clk_125mhz_mux_x0y0 -group clk_250mhz_mux_x0y0

set_false_path -to [get_pins * -hier -filter {NAME  =~ */pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/S0}]
set_false_path -to [get_pins * -hier -filter {NAME  =~ */pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/S1}]

# False pathes
set_false_path -from    [get_ports sys_rst_n]
# False path on asynchronous reset
# Reference design example design and QuickPCIe IP reset scheme is based on synchronous reset
# Uncomment this line if you intent to use asynchronous reset scheme instead
#set_false_path -quiet -through [get_pins -quiet -of_objects [get_cells * -hier -filter {NAME == qpcie_ipcore}] -filter {REF_PIN_NAME == aresetn}]

set_false_path -through [get_pins * -hier -filter {NAME  =~ */pcie_block_i/PLPHYLNKUPN}]
set_false_path -through [get_pins * -hier -filter {NAME  =~ */pcie_block_i/PLRECEIVEDHOTRST}]

# Asynchronous Pins
# These pins are not associated with any clock domain
set_false_path -through [get_pins -hier -filter {NAME =~ */RXELECIDLE}]
set_false_path -through [get_pins -hier -filter {NAME =~ */TXPHINITDONE}]
set_false_path -through [get_pins -hier -filter {NAME =~ */TXPHALIGNDONE}]
set_false_path -through [get_pins -hier -filter {NAME =~ */TXDLYSRESETDONE}]
set_false_path -through [get_pins -hier -filter {NAME =~ */RXDLYSRESETDONE}]
set_false_path -through [get_pins -hier -filter {NAME =~ */RXPHALIGNDONE}]
set_false_path -through [get_pins -hier -filter {NAME =~ */RXCDRLOCK}]
set_false_path -through [get_pins -hier -filter {NAME =~ */CFGMSGRECEIVEDPMETO}]
set_false_path -through [get_pins -hier -filter {NAME =~ */CPLLLOCK}]
set_false_path -through [get_pins -hier -filter {NAME =~ */QPLLLOCK}]


# ----------------------------------------------------
#  PCIE HARD IP PHYSICAL CONSTRAINTS
# ----------------------------------------------------

# PCI Express reference clock IBUFDS placement
set_property LOC IBUFDS_GTE2_X0Y2 [get_cells * -hier -filter {NAME  =~ qpcie_ipcore/*/refclk_ibuf}]

# PCI Express Block placement
set_property LOC PCIE_X0Y0 [get_cells * -hier -filter {NAME  =~ */pcie_top_i/pcie_7x_i/pcie_block_i}]

# Channel primitive location constraint
set_property LOC GTXE2_CHANNEL_X0Y7 [get_cells * -hier -filter {NAME  =~ */gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property LOC GTXE2_CHANNEL_X0Y6 [get_cells * -hier -filter {NAME  =~ */gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property LOC GTXE2_CHANNEL_X0Y5 [get_cells * -hier -filter {NAME  =~ */gt_top_i/pipe_wrapper_i/pipe_lane[2].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property LOC GTXE2_CHANNEL_X0Y4 [get_cells * -hier -filter {NAME  =~ */gt_top_i/pipe_wrapper_i/pipe_lane[3].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]

# BlockRAM placement
set_property LOC RAMB36_X4Y34 [get_cells * -hier -filter {NAME  =~ */pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[0].ram/use_tdp.ramb36/genblk*.bram36_tdp_bl.bram36_tdp_bl}]
set_property LOC RAMB36_X4Y33 [get_cells * -hier -filter {NAME  =~ */pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_rx/brams[1].ram/use_tdp.ramb36/genblk*.bram36_tdp_bl.bram36_tdp_bl}]
set_property LOC RAMB36_X4Y31 [get_cells * -hier -filter {NAME  =~ */pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_tx/brams[0].ram/use_tdp.ramb36/genblk*.bram36_tdp_bl.bram36_tdp_bl}]
set_property LOC RAMB36_X4Y30 [get_cells * -hier -filter {NAME  =~ */pcie_top_i/pcie_7x_i/pcie_bram_top/pcie_brams_tx/brams[1].ram/use_tdp.ramb36/genblk*.bram36_tdp_bl.bram36_tdp_bl}]


# ----------------------------------------------------
#  PIN PROPERTIES
# ----------------------------------------------------

#The Configuration Bank Voltage Selection (CFGBVS) pin is driven by an external switch (GND/VCC)
#By default, it is driven to GND to support bank 12,13,14,15,16 operation at 1.8V
set_property CONFIG_VOLTAGE 1.8  [current_design]
set_property CFGBVS GND          [current_design]
#If you intend to plug an FMC daughterboard, you may need to change the voltage of these bank 12,13,14,15,16.
# in this case, the following signals located in these banks must be updated accordingly.
# - sys_rst_n signal
# - user_reset[0] signal
# - flash memory signals

# System Reset
set_property IOSTANDARD LVCMOS25 [get_ports sys_rst_n]
set_property PULLUP TRUE         [get_ports sys_rst_n]
set_property PACKAGE_PIN U16     [get_ports sys_rst_n]

#PCIe signals
set_property PACKAGE_PIN D6      [get_ports sys_clk_p]
set_property PACKAGE_PIN D5      [get_ports sys_clk_n]

set_property PACKAGE_PIN A3      [get_ports {pci_exp_txn[0]}]
set_property PACKAGE_PIN B5      [get_ports {pci_exp_rxn[0]}]
set_property PACKAGE_PIN B6      [get_ports {pci_exp_rxp[0]}]
set_property PACKAGE_PIN A4      [get_ports {pci_exp_txp[0]}]
set_property PACKAGE_PIN B1      [get_ports {pci_exp_txn[1]}]
set_property PACKAGE_PIN C3      [get_ports {pci_exp_rxn[1]}]
set_property PACKAGE_PIN C4      [get_ports {pci_exp_rxp[1]}]
set_property PACKAGE_PIN B2      [get_ports {pci_exp_txp[1]}]
set_property PACKAGE_PIN D1      [get_ports {pci_exp_txn[2]}]
set_property PACKAGE_PIN E3      [get_ports {pci_exp_rxn[2]}]
set_property PACKAGE_PIN E4      [get_ports {pci_exp_rxp[2]}]
set_property PACKAGE_PIN D2      [get_ports {pci_exp_txp[2]}]
set_property PACKAGE_PIN F1      [get_ports {pci_exp_txn[3]}]
set_property PACKAGE_PIN G3      [get_ports {pci_exp_rxn[3]}]
set_property PACKAGE_PIN G4      [get_ports {pci_exp_rxp[3]}]
set_property PACKAGE_PIN F2      [get_ports {pci_exp_txp[3]}]

# On-board LEDs
set_property PACKAGE_PIN W10     [get_ports {usr_led[0]}]
set_property PACKAGE_PIN V11     [get_ports {usr_led[1]}]
set_property PACKAGE_PIN Y10     [get_ports {usr_led[2]}]
set_property PACKAGE_PIN W13     [get_ports {usr_led[3]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_led[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_led[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_led[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_led[3]}]

# On-board Switches
set_property PACKAGE_PIN AA15    [get_ports {usr_sw[0]}]
set_property PACKAGE_PIN V8      [get_ports {usr_sw[1]}]
set_property PACKAGE_PIN Y8      [get_ports {usr_sw[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_sw[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_sw[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {usr_sw[2]}]

# Protocore Signals
set_property PACKAGE_PIN  AB19   [get_ports  prot0_out]
set_property PACKAGE_PIN  V13    [get_ports {prot2_in[0]}]
set_property PACKAGE_PIN  W9     [get_ports {prot2_in[1]}]
set_property PACKAGE_PIN  W8     [get_ports  prot2_out]
set_property IOSTANDARD LVCMOS15 [get_ports prot0_out]
set_property IOSTANDARD LVCMOS15 [get_ports {prot2_in[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {prot2_in[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports prot2_out]


# ----------------------------------------------------
#  BITSTREAM OPTIONS
# ----------------------------------------------------

set_property BITSTREAM.GENERAL.COMPRESS TRUE         [current_design]
set_property BITSTREAM.STARTUP.STARTUPCLK Cclk       [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50          [current_design]
set_property BITSTREAM.CONFIG.BPI_SYNC_MODE Type2    [current_design]
set_property BITSTREAM.CONFIG.BPI_PAGE_SIZE 1        [current_design]
set_property BITSTREAM.CONFIG.BPI_1ST_READ_CYCLE 1   [current_design]