
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z045ffg900-2
#    set_property BOARD_PART xilinx.com:zc706:part0:1.2 [current_project]

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set led_4bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 led_4bits ]
  set pcie2_ext_pipe_ep [ create_bd_intf_port -mode Slave -vlnv xilinx.com:display_pcie_7x:pcie2_ext_pipe_rtl:1.0 pcie2_ext_pipe_ep ]
  set pcie_7x_mgt [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_7x_mgt ]

  # Create ports
  set sys_clk [ create_bd_port -dir I -type clk sys_clk ]
  set sys_rst_n [ create_bd_port -dir I -type rst sys_rst_n ]

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0 ]

  # Create instance: axi_bram_ctrl_0_bram, and set properties
  set axi_bram_ctrl_0_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 axi_bram_ctrl_0_bram ]
  set_property -dict [ list \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
 ] $axi_bram_ctrl_0_bram

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
CONFIG.GPIO_BOARD_INTERFACE {led_4bits} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_0

  # Create instance: pcie_7x_0, and set properties
  set pcie_7x_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pcie_7x:3.2 pcie_7x_0 ]
  set_property -dict [ list \
CONFIG.Bar0_Size {4} \
CONFIG.Bar1_Enabled {true} \
CONFIG.Bar1_Scale {Kilobytes} \
CONFIG.Bar1_Size {4} \
CONFIG.Bar1_Type {Memory} \
CONFIG.IntX_Generation {false} \
CONFIG.Legacy_Interrupt {NONE} \
CONFIG.MSI_Enabled {false} \
CONFIG.MSIx_PBA_BIR {BAR_0} \
CONFIG.MSIx_Table_BIR {BAR_0} \
CONFIG.PCIe_Debug_Ports {false} \
CONFIG.Pcie_fast_config {None} \
CONFIG.RBAR_Num {0} \
CONFIG.Ref_Clk_Freq {100_MHz} \
CONFIG.Xlnx_Ref_Board {ZC706} \
CONFIG.cfg_ctl_if {false} \
CONFIG.cfg_fc_if {false} \
CONFIG.cfg_mgmt_if {false} \
CONFIG.cfg_status_if {false} \
CONFIG.en_ext_clk {false} \
CONFIG.en_ext_pipe_interface {true} \
CONFIG.err_reporting_if {false} \
CONFIG.mode_selection {Advanced} \
CONFIG.pipe_mode_sim {None} \
CONFIG.pipe_sim {false} \
CONFIG.pl_interface {false} \
CONFIG.rcv_msg_if {false} \
 ] $pcie_7x_0

  # Create instance: pcie_axi_lite_v1_0_0, and set properties
  set pcie_axi_lite_v1_0_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:pcie_axi_lite_v1_0:1.0 pcie_axi_lite_v1_0_0 ]
  set_property -dict [ list \
CONFIG.AXI_BAR_0_ADDR {0x40000000} \
CONFIG.AXI_BAR_0_MASK {0xFFFFF000} \
CONFIG.AXI_BAR_1_ADDR {0x41200000} \
CONFIG.AXI_BAR_1_MASK {0xFFFFF000} \
CONFIG.C_DATA_WIDTH {64} \
 ] $pcie_axi_lite_v1_0_0

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
CONFIG.preset {ZC706} \
 ] $processing_system7_0

  # Create instance: processing_system7_0_axi_periph, and set properties
  set processing_system7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 processing_system7_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {2} \
CONFIG.NUM_SI {2} \
 ] $processing_system7_0_axi_periph

  # Create instance: rst_pcie_7x_0_62M, and set properties
  set rst_pcie_7x_0_62M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_pcie_7x_0_62M ]

  # Create instance: rst_processing_system7_0_50M, and set properties
  set rst_processing_system7_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_processing_system7_0_50M ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTB [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports led_4bits] [get_bd_intf_pins axi_gpio_0/GPIO]
  connect_bd_intf_net -intf_net pcie2_ext_pipe_ep_1 [get_bd_intf_ports pcie2_ext_pipe_ep] [get_bd_intf_pins pcie_7x_0/pcie2_ext_pipe_ep]
  connect_bd_intf_net -intf_net pcie_7x_0_m_axis_rx [get_bd_intf_pins pcie_7x_0/m_axis_rx] [get_bd_intf_pins pcie_axi_lite_v1_0_0/s_axis_rx]
  connect_bd_intf_net -intf_net pcie_7x_0_pcie_7x_mgt [get_bd_intf_ports pcie_7x_mgt] [get_bd_intf_pins pcie_7x_0/pcie_7x_mgt]
  connect_bd_intf_net -intf_net pcie_axi_lite_v1_0_0_M_AXI [get_bd_intf_pins pcie_axi_lite_v1_0_0/M_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/S01_AXI]
  connect_bd_intf_net -intf_net pcie_axi_lite_v1_0_0_m_axis_tx [get_bd_intf_pins pcie_7x_0/s_axis_tx] [get_bd_intf_pins pcie_axi_lite_v1_0_0/m_axis_tx]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins processing_system7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M01_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M01_AXI]

  # Create port connections
  connect_bd_net -net pcie_7x_0_user_clk_out [get_bd_pins pcie_7x_0/user_clk_out] [get_bd_pins pcie_axi_lite_v1_0_0/user_clk] [get_bd_pins processing_system7_0_axi_periph/S01_ACLK] [get_bd_pins rst_pcie_7x_0_62M/slowest_sync_clk]
  connect_bd_net -net pcie_7x_0_user_lnk_up [get_bd_pins pcie_7x_0/user_lnk_up] [get_bd_pins pcie_axi_lite_v1_0_0/user_lnk_up]
  connect_bd_net -net pcie_7x_0_user_reset_out [get_bd_pins pcie_7x_0/user_reset_out] [get_bd_pins rst_pcie_7x_0_62M/ext_reset_in]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0_axi_periph/ACLK] [get_bd_pins processing_system7_0_axi_periph/M00_ACLK] [get_bd_pins processing_system7_0_axi_periph/M01_ACLK] [get_bd_pins processing_system7_0_axi_periph/S00_ACLK] [get_bd_pins rst_processing_system7_0_50M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_processing_system7_0_50M/ext_reset_in]
  connect_bd_net -net rst_pcie_7x_0_62M_peripheral_aresetn [get_bd_pins pcie_axi_lite_v1_0_0/M_AXI_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S01_ARESETN] [get_bd_pins rst_pcie_7x_0_62M/peripheral_aresetn]
  connect_bd_net -net rst_processing_system7_0_50M_interconnect_aresetn [get_bd_pins processing_system7_0_axi_periph/ARESETN] [get_bd_pins rst_processing_system7_0_50M/interconnect_aresetn]
  connect_bd_net -net rst_processing_system7_0_50M_peripheral_aresetn [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins processing_system7_0_axi_periph/M00_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M01_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_processing_system7_0_50M/peripheral_aresetn]
  connect_bd_net -net sys_clk_1 [get_bd_ports sys_clk] [get_bd_pins pcie_7x_0/sys_clk]
  connect_bd_net -net sys_rst_n_1 [get_bd_ports sys_rst_n] [get_bd_pins pcie_7x_0/sys_rst_n]

  # Create address segments
  create_bd_addr_seg -range 0x2000 -offset 0x40000000 [get_bd_addr_spaces pcie_axi_lite_v1_0_0/M_AXI] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x10000 -offset 0x41200000 [get_bd_addr_spaces pcie_axi_lite_v1_0_0/M_AXI] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x2000 -offset 0x40000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x10000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port DDR -pg 1 -y 40 -defaultsOSRD
preplace port sys_clk -pg 1 -y 700 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 60 -defaultsOSRD
preplace port sys_rst_n -pg 1 -y 720 -defaultsOSRD
preplace port pcie2_ext_pipe_ep -pg 1 -y 680 -defaultsOSRD
preplace port led_4bits -pg 1 -y 490 -defaultsOSRD
preplace port pcie_7x_mgt -pg 1 -y 650 -defaultsOSRD
preplace inst pcie_axi_lite_v1_0_0 -pg 1 -lvl 2 -y 500 -defaultsOSRD
preplace inst pcie_7x_0 -pg 1 -lvl 1 -y 680 -defaultsOSRD
preplace inst axi_bram_ctrl_0_bram -pg 1 -lvl 5 -y 370 -defaultsOSRD
preplace inst axi_gpio_0 -pg 1 -lvl 4 -y 490 -defaultsOSRD
preplace inst rst_processing_system7_0_50M -pg 1 -lvl 2 -y 350 -defaultsOSRD
preplace inst rst_pcie_7x_0_62M -pg 1 -lvl 1 -y 880 -defaultsOSRD
preplace inst axi_bram_ctrl_0 -pg 1 -lvl 4 -y 370 -defaultsOSRD
preplace inst processing_system7_0_axi_periph -pg 1 -lvl 3 -y 480 -defaultsOSRD
preplace inst processing_system7_0 -pg 1 -lvl 2 -y 120 -defaultsOSRD
preplace netloc processing_system7_0_DDR 1 2 4 NJ 40 NJ 40 NJ 40 NJ
preplace netloc pcie_axi_lite_v1_0_0_M_AXI 1 2 1 820
preplace netloc processing_system7_0_axi_periph_M00_AXI 1 3 1 N
preplace netloc rst_processing_system7_0_50M_interconnect_aresetn 1 2 1 830
preplace netloc pcie2_ext_pipe_ep_1 1 0 1 NJ
preplace netloc axi_bram_ctrl_0_BRAM_PORTA 1 4 1 N
preplace netloc processing_system7_0_M_AXI_GP0 1 2 1 850
preplace netloc rst_pcie_7x_0_62M_peripheral_aresetn 1 1 2 410 600 850
preplace netloc pcie_7x_0_pcie_7x_mgt 1 1 5 NJ 650 NJ 650 NJ 650 NJ 650 NJ
preplace netloc axi_bram_ctrl_0_BRAM_PORTB 1 4 1 N
preplace netloc pcie_7x_0_user_reset_out 1 0 2 20 560 370
preplace netloc processing_system7_0_FCLK_RESET0_N 1 1 2 410 260 810
preplace netloc sys_rst_n_1 1 0 1 NJ
preplace netloc sys_clk_1 1 0 1 NJ
preplace netloc rst_processing_system7_0_50M_peripheral_aresetn 1 2 2 810 310 1150
preplace netloc pcie_axi_lite_v1_0_0_m_axis_tx 1 0 3 30 580 NJ 580 790
preplace netloc processing_system7_0_FIXED_IO 1 2 4 NJ 60 NJ 60 NJ 60 NJ
preplace netloc pcie_7x_0_user_clk_out 1 0 3 10 550 400 590 800
preplace netloc axi_gpio_0_GPIO 1 4 2 NJ 490 NJ
preplace netloc pcie_7x_0_m_axis_rx 1 1 1 380
preplace netloc pcie_7x_0_user_lnk_up 1 1 1 390
preplace netloc processing_system7_0_FCLK_CLK0 1 1 3 370 250 840 290 1170
preplace netloc processing_system7_0_axi_periph_M01_AXI 1 3 1 1160
levelinfo -pg 1 -10 200 600 1000 1300 1540 1660 -top 0 -bot 970
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


