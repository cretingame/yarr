
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
#    create_project project_1 myproj -part xc7a200tfbg676-2
#    set_property BOARD_PART xilinx.com:ac701:part0:1.2 [current_project]

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
  set led_4bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 led_4bits ]
  set pcie2_ext_pipe_ep [ create_bd_intf_port -mode Slave -vlnv xilinx.com:display_pcie_7x:pcie2_ext_pipe_rtl:1.0 pcie2_ext_pipe_ep ]
  set pcie_7x_mgt [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_7x_mgt ]

  # Create ports
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
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

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
CONFIG.NUM_MI {2} \
 ] $axi_mem_intercon

  # Create instance: pcie_7x_0, and set properties
  set pcie_7x_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pcie_7x:3.2 pcie_7x_0 ]
  set_property -dict [ list \
CONFIG.Bar0_Size {4} \
CONFIG.Bar1_Enabled {true} \
CONFIG.Bar1_Scale {Kilobytes} \
CONFIG.Bar1_Size {4} \
CONFIG.Bar1_Type {Memory} \
CONFIG.Device_ID {7024} \
CONFIG.Interface_Width {128_bit} \
CONFIG.Link_Speed {5.0_GT/s} \
CONFIG.MSI_Enabled {false} \
CONFIG.MSIx_PBA_BIR {BAR_0} \
CONFIG.MSIx_Table_BIR {BAR_0} \
CONFIG.Max_Payload_Size {512_bytes} \
CONFIG.Maximum_Link_Width {X4} \
CONFIG.PCIe_Blk_Locn {X0Y0} \
CONFIG.PCIe_Debug_Ports {false} \
CONFIG.Pcie_fast_config {None} \
CONFIG.RBAR_Num {0} \
CONFIG.Ref_Clk_Freq {100_MHz} \
CONFIG.Trans_Buf_Pipeline {None} \
CONFIG.Trgt_Link_Speed {4'h2} \
CONFIG.User_Clk_Freq {125} \
CONFIG.Xlnx_Ref_Board {AC701} \
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
CONFIG.AXI_BAR_0_ADDR {0x00000000} \
CONFIG.AXI_BAR_0_MASK {0xFFFFF000} \
CONFIG.AXI_BAR_1_MASK {0xFFFFF000} \
CONFIG.BIG_ENDIAN {"1"} \
 ] $pcie_axi_lite_v1_0_0

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]
  set_property -dict [ list \
CONFIG.RESET_BOARD_INTERFACE {reset} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $proc_sys_reset_0

  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTB [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports led_4bits] [get_bd_intf_pins axi_gpio_0/GPIO]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_mem_intercon/M00_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_M01_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_mem_intercon/M01_AXI]
  connect_bd_intf_net -intf_net pcie2_ext_pipe_ep_1 [get_bd_intf_ports pcie2_ext_pipe_ep] [get_bd_intf_pins pcie_7x_0/pcie2_ext_pipe_ep]
  connect_bd_intf_net -intf_net pcie_7x_0_m_axis_rx [get_bd_intf_pins pcie_7x_0/m_axis_rx] [get_bd_intf_pins pcie_axi_lite_v1_0_0/s_axis_rx]
  connect_bd_intf_net -intf_net pcie_7x_0_pcie_7x_mgt [get_bd_intf_ports pcie_7x_mgt] [get_bd_intf_pins pcie_7x_0/pcie_7x_mgt]
  connect_bd_intf_net -intf_net pcie_axi_lite_v1_0_0_M_AXI [get_bd_intf_pins axi_mem_intercon/S00_AXI] [get_bd_intf_pins pcie_axi_lite_v1_0_0/M_AXI]
  connect_bd_intf_net -intf_net pcie_axi_lite_v1_0_0_m_axis_tx [get_bd_intf_pins pcie_7x_0/s_axis_tx] [get_bd_intf_pins pcie_axi_lite_v1_0_0/m_axis_tx]

  # Create port connections
  connect_bd_net -net clk_wiz_clk_out1 [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/M01_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins pcie_7x_0/user_clk_out] [get_bd_pins pcie_axi_lite_v1_0_0/user_clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
  connect_bd_net -net pcie_7x_0_user_lnk_up [get_bd_pins pcie_7x_0/user_lnk_up] [get_bd_pins pcie_axi_lite_v1_0_0/user_lnk_up]
  connect_bd_net -net pcie_7x_0_user_reset_out [get_bd_pins pcie_7x_0/user_reset_out] [get_bd_pins proc_sys_reset_0/aux_reset_in]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins proc_sys_reset_0/interconnect_aresetn]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins proc_sys_reset_0/ext_reset_in]
  connect_bd_net -net rst_clk_wiz_100M_peripheral_aresetn [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/M01_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins pcie_axi_lite_v1_0_0/M_AXI_ARESETN] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net sys_clk_1 [get_bd_ports sys_clk] [get_bd_pins pcie_7x_0/sys_clk]
  connect_bd_net -net sys_rst_n_1 [get_bd_ports sys_rst_n] [get_bd_pins pcie_7x_0/sys_rst_n]

  # Create address segments
  create_bd_addr_seg -range 0x2000 -offset 0x0 [get_bd_addr_spaces pcie_axi_lite_v1_0_0/M_AXI] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x10000 -offset 0x20000000 [get_bd_addr_spaces pcie_axi_lite_v1_0_0/M_AXI] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port sys_clk -pg 1 -y 420 -defaultsOSRD
preplace port sys_rst_n -pg 1 -y 440 -defaultsOSRD
preplace port pcie2_ext_pipe_ep -pg 1 -y 400 -defaultsOSRD
preplace port led_4bits -pg 1 -y 250 -defaultsOSRD
preplace port reset -pg 1 -y 80 -defaultsOSRD
preplace port pcie_7x_mgt -pg 1 -y 370 -defaultsOSRD
preplace inst pcie_axi_lite_v1_0_0 -pg 1 -lvl 2 -y 220 -defaultsOSRD
preplace inst pcie_7x_0 -pg 1 -lvl 1 -y 400 -defaultsOSRD
preplace inst axi_bram_ctrl_0_bram -pg 1 -lvl 5 -y 130 -defaultsOSRD
preplace inst proc_sys_reset_0 -pg 1 -lvl 1 -y 100 -defaultsOSRD
preplace inst axi_gpio_0 -pg 1 -lvl 4 -y 250 -defaultsOSRD
preplace inst axi_mem_intercon -pg 1 -lvl 3 -y 220 -defaultsOSRD
preplace inst axi_bram_ctrl_0 -pg 1 -lvl 4 -y 130 -defaultsOSRD
preplace netloc pcie_axi_lite_v1_0_0_M_AXI 1 2 1 690
preplace netloc axi_mem_intercon_M01_AXI 1 3 1 N
preplace netloc pcie2_ext_pipe_ep_1 1 0 1 NJ
preplace netloc axi_bram_ctrl_0_BRAM_PORTA 1 4 1 N
preplace netloc pcie_7x_0_pcie_7x_mgt 1 1 5 NJ 370 NJ 370 NJ 370 NJ 370 NJ
preplace netloc axi_bram_ctrl_0_BRAM_PORTB 1 4 1 N
preplace netloc pcie_7x_0_user_reset_out 1 0 2 10 200 360
preplace netloc sys_rst_n_1 1 0 1 NJ
preplace netloc sys_clk_1 1 0 1 NJ
preplace netloc axi_mem_intercon_M00_AXI 1 3 1 1000
preplace netloc pcie_axi_lite_v1_0_0_m_axis_tx 1 0 3 20 190 NJ 140 650
preplace netloc proc_sys_reset_0_interconnect_aresetn 1 1 2 NJ 110 660
preplace netloc axi_gpio_0_GPIO 1 4 2 NJ 250 NJ
preplace netloc pcie_7x_0_m_axis_rx 1 1 1 400
preplace netloc pcie_7x_0_user_lnk_up 1 1 1 410
preplace netloc reset_1 1 0 1 NJ
preplace netloc rst_clk_wiz_100M_peripheral_aresetn 1 1 3 380 130 680 80 990
preplace netloc clk_wiz_clk_out1 1 0 4 10 10 370 70 670 70 1010
levelinfo -pg 1 -10 190 530 840 1140 1380 1500 -top 0 -bot 500
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


