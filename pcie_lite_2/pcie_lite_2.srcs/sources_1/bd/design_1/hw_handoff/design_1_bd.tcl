
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k160tfbg676-2
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

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set CLK_IN_D [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 CLK_IN_D ]
  set pcie_7x_mgt [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_7x_mgt ]
  set usr_led_o_tri_o [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 usr_led_o_tri_o ]

  # Create ports
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset
  set sys_rst_n [ create_bd_port -dir I -type rst sys_rst_n ]

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0 ]

  # Create instance: axi_bram_ctrl_0_bram, and set properties
  set axi_bram_ctrl_0_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 axi_bram_ctrl_0_bram ]
  set_property -dict [ list \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $axi_bram_ctrl_0_bram

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.use_bram_block.VALUE_SRC {DEFAULT} \
 ] $axi_bram_ctrl_0_bram

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
CONFIG.GPIO_BOARD_INTERFACE {Custom} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_0

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
CONFIG.NUM_MI {2} \
 ] $axi_mem_intercon

  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.1 ila_0 ]
  set_property -dict [ list \
CONFIG.C_MONITOR_TYPE {AXI} \
 ] $ila_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.C_MONITOR_TYPE.VALUE_SRC {DEFAULT} \
 ] $ila_0

  # Create instance: ila_1, and set properties
  set ila_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.1 ila_1 ]
  set_property -dict [ list \
CONFIG.C_MONITOR_TYPE {AXI} \
CONFIG.C_NUM_OF_PROBES {9} \
CONFIG.C_SLOT_0_AXI_PROTOCOL {AXI4S} \
 ] $ila_1

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.C_MONITOR_TYPE.VALUE_SRC {DEFAULT} \
 ] $ila_1

  # Create instance: ila_2, and set properties
  set ila_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.1 ila_2 ]
  set_property -dict [ list \
CONFIG.C_MONITOR_TYPE {AXI} \
CONFIG.C_NUM_OF_PROBES {9} \
CONFIG.C_SLOT_0_AXI_PROTOCOL {AXI4S} \
 ] $ila_2

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.C_MONITOR_TYPE.VALUE_SRC {DEFAULT} \
 ] $ila_2

  # Create instance: ila_3, and set properties
  set ila_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.1 ila_3 ]
  set_property -dict [ list \
CONFIG.C_ENABLE_ILA_AXI_MON {false} \
CONFIG.C_MONITOR_TYPE {Native} \
CONFIG.C_NUM_OF_PROBES {4} \
 ] $ila_3

  # Create instance: pcie_7x_0, and set properties
  set pcie_7x_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pcie_7x:3.3 pcie_7x_0 ]
  set_property -dict [ list \
CONFIG.Bar0_Size {4} \
CONFIG.Bar1_Enabled {true} \
CONFIG.Bar1_Scale {Kilobytes} \
CONFIG.Bar1_Size {4} \
CONFIG.Bar1_Type {Memory} \
CONFIG.Bar2_Enabled {false} \
CONFIG.Bar2_Scale {Kilobytes} \
CONFIG.Bar2_Size {2} \
CONFIG.Bar2_Type {N/A} \
CONFIG.Bar3_Enabled {false} \
CONFIG.Bar3_Scale {Kilobytes} \
CONFIG.Bar3_Size {2} \
CONFIG.Bar3_Type {N/A} \
CONFIG.Bar4_Enabled {false} \
CONFIG.Bar4_Scale {Kilobytes} \
CONFIG.Bar4_Size {2} \
CONFIG.Bar4_Type {N/A} \
CONFIG.Bar5_Enabled {false} \
CONFIG.Bar5_Size {2} \
CONFIG.Bar5_Type {N/A} \
CONFIG.DSN_Enabled {true} \
CONFIG.De_emph {-3.5} \
CONFIG.Device_ID {7024} \
CONFIG.En_route_unlock {false} \
CONFIG.Enable_Slot_Clock_Cfg {true} \
CONFIG.Interface_Width {128_bit} \
CONFIG.Link_Speed {5.0_GT/s} \
CONFIG.MSIx_PBA_BIR {BAR_0} \
CONFIG.MSIx_Table_BIR {BAR_0} \
CONFIG.Max_Payload_Size {512_bytes} \
CONFIG.Maximum_Link_Width {X4} \
CONFIG.PCIe_Blk_Locn {X0Y0} \
CONFIG.PCIe_Debug_Ports {false} \
CONFIG.RBAR_Num {0} \
CONFIG.Ref_Clk_Freq {100_MHz} \
CONFIG.Silicon_Rev {GES_and_Production} \
CONFIG.Trans_Buf_Pipeline {None} \
CONFIG.Trgt_Link_Speed {4'h2} \
CONFIG.User_Clk_Freq {125} \
CONFIG.cfg_ctl_if {false} \
CONFIG.cfg_fc_if {false} \
CONFIG.cfg_mgmt_if {false} \
CONFIG.cfg_status_if {false} \
CONFIG.en_ext_clk {false} \
CONFIG.err_reporting_if {false} \
CONFIG.mode_selection {Advanced} \
CONFIG.pipe_mode_sim {None} \
CONFIG.pl_interface {false} \
CONFIG.rcv_msg_if {false} \
 ] $pcie_7x_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.De_emph.VALUE_SRC {DEFAULT} \
CONFIG.Silicon_Rev.VALUE_SRC {DEFAULT} \
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

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
CONFIG.C_BUF_TYPE {IBUFDSGTE} \
 ] $util_ds_buf_0

  # Create interface connections
  connect_bd_intf_net -intf_net CLK_IN_D_1 [get_bd_intf_ports CLK_IN_D] [get_bd_intf_pins util_ds_buf_0/CLK_IN_D]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTB [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports usr_led_o_tri_o] [get_bd_intf_pins axi_gpio_0/GPIO]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_mem_intercon/M00_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_M01_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_mem_intercon/M01_AXI]
  connect_bd_intf_net -intf_net pcie_7x_0_m_axis_rx [get_bd_intf_pins pcie_7x_0/m_axis_rx] [get_bd_intf_pins pcie_axi_lite_v1_0_0/s_axis_rx]
connect_bd_intf_net -intf_net [get_bd_intf_nets pcie_7x_0_m_axis_rx] [get_bd_intf_pins ila_1/SLOT_0_AXIS] [get_bd_intf_pins pcie_7x_0/m_axis_rx]
  connect_bd_intf_net -intf_net pcie_7x_0_pcie_7x_mgt [get_bd_intf_ports pcie_7x_mgt] [get_bd_intf_pins pcie_7x_0/pcie_7x_mgt]
  connect_bd_intf_net -intf_net pcie_axi_lite_v1_0_0_M_AXI [get_bd_intf_pins axi_mem_intercon/S00_AXI] [get_bd_intf_pins pcie_axi_lite_v1_0_0/M_AXI]
connect_bd_intf_net -intf_net [get_bd_intf_nets pcie_axi_lite_v1_0_0_M_AXI] [get_bd_intf_pins ila_0/SLOT_0_AXI] [get_bd_intf_pins pcie_axi_lite_v1_0_0/M_AXI]
  connect_bd_intf_net -intf_net pcie_axi_lite_v1_0_0_m_axis_tx [get_bd_intf_pins pcie_7x_0/s_axis_tx] [get_bd_intf_pins pcie_axi_lite_v1_0_0/m_axis_tx]
connect_bd_intf_net -intf_net [get_bd_intf_nets pcie_axi_lite_v1_0_0_m_axis_tx] [get_bd_intf_pins ila_2/SLOT_0_AXIS] [get_bd_intf_pins pcie_axi_lite_v1_0_0/m_axis_tx]

  # Create port connections
  connect_bd_net -net clk_wiz_clk_out1 [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/M01_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins ila_0/clk] [get_bd_pins ila_1/clk] [get_bd_pins ila_2/clk] [get_bd_pins ila_3/clk] [get_bd_pins pcie_7x_0/user_clk_out] [get_bd_pins pcie_axi_lite_v1_0_0/user_clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
  connect_bd_net -net pcie_7x_0_user_lnk_up [get_bd_pins pcie_7x_0/user_lnk_up] [get_bd_pins pcie_axi_lite_v1_0_0/user_lnk_up]
  connect_bd_net -net pcie_7x_0_user_reset_out [get_bd_pins ila_3/probe1] [get_bd_pins pcie_7x_0/user_reset_out] [get_bd_pins proc_sys_reset_0/aux_reset_in]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins ila_3/probe2] [get_bd_pins proc_sys_reset_0/interconnect_aresetn]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins ila_3/probe0] [get_bd_pins proc_sys_reset_0/ext_reset_in]
  connect_bd_net -net rst_clk_wiz_100M_peripheral_aresetn [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/M01_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins ila_3/probe3] [get_bd_pins pcie_axi_lite_v1_0_0/M_AXI_ARESETN] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net sys_rst_n_1 [get_bd_ports sys_rst_n] [get_bd_pins pcie_7x_0/sys_rst_n]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins pcie_7x_0/sys_clk] [get_bd_pins util_ds_buf_0/IBUF_OUT]

  # Create address segments
  create_bd_addr_seg -range 0x00002000 -offset 0x00000000 [get_bd_addr_spaces pcie_axi_lite_v1_0_0/M_AXI] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x20000000 [get_bd_addr_spaces pcie_axi_lite_v1_0_0/M_AXI] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.12  2016-01-29 bk=1.3547 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port CLK_IN_D -pg 1 -y 380 -defaultsOSRD
preplace port usr_led_o_tri_o -pg 1 -y 250 -defaultsOSRD
preplace port sys_rst_n -pg 1 -y 440 -defaultsOSRD
preplace port reset -pg 1 -y 80 -defaultsOSRD
preplace port pcie_7x_mgt -pg 1 -y 370 -defaultsOSRD
preplace inst pcie_axi_lite_v1_0_0 -pg 1 -lvl 3 -y 260 -defaultsOSRD
preplace inst axi_mem_intercon|s00_couplers -pg 1 -lvl 1 -y 234 -defaultsOSRD
preplace inst pcie_7x_0 -pg 1 -lvl 2 -y 490 -defaultsOSRD
preplace inst axi_bram_ctrl_0_bram -pg 1 -lvl 6 -y 130 -defaultsOSRD
preplace inst axi_mem_intercon|m01_couplers -pg 1 -lvl 3 -y 454 -defaultsOSRD
preplace inst proc_sys_reset_0 -pg 1 -lvl 2 -y 240 -defaultsOSRD
preplace inst axi_gpio_0 -pg 1 -lvl 5 -y 250 -defaultsOSRD
preplace inst ila_0 -pg 1 -lvl 4 -y 768 -defaultsOSRD
preplace inst ila_1 -pg 1 -lvl 3 -y 530 -defaultsOSRD
preplace inst axi_mem_intercon|m00_couplers -pg 1 -lvl 3 -y 284 -defaultsOSRD
preplace inst axi_mem_intercon|xbar -pg 1 -lvl 2 -y 254 -defaultsOSRD
preplace inst ila_2 -pg 1 -lvl 4 -y 658 -defaultsOSRD
preplace inst ila_3 -pg 1 -lvl 2 -y -60 -defaultsOSRD
preplace inst axi_mem_intercon -pg 1 -lvl 4 -y 234 -defaultsOSRD
preplace inst axi_bram_ctrl_0 -pg 1 -lvl 5 -y 120 -defaultsOSRD
preplace inst util_ds_buf_0 -pg 1 -lvl 1 -y 380 -defaultsOSRD
preplace netloc pcie_axi_lite_v1_0_0_M_AXI 1 3 1 740
preplace netloc axi_mem_intercon_M01_AXI 1 4 1 1960
preplace netloc axi_mem_intercon|xbar_to_m00_couplers 1 2 1 N
preplace netloc axi_mem_intercon|S00_ARESETN_1 1 0 1 N
preplace netloc axi_bram_ctrl_0_BRAM_PORTA 1 5 1 2230
preplace netloc axi_mem_intercon|M01_ARESETN_1 1 0 3 NJ 454 NJ 454 N
preplace netloc axi_mem_intercon|M00_ACLK_1 1 0 3 NJ 344 NJ 324 1530
preplace netloc axi_mem_intercon|axi_mem_intercon_ACLK_net 1 0 3 970 134 1220 154 1560
preplace netloc pcie_7x_0_pcie_7x_mgt 1 2 5 390 470 NJ 580 NJ 370 NJ 370 NJ
preplace netloc CLK_IN_D_1 1 0 1 N
preplace netloc axi_bram_ctrl_0_BRAM_PORTB 1 5 1 2230
preplace netloc sys_rst_n_1 1 0 2 NJ 440 -80
preplace netloc pcie_7x_0_user_reset_out 1 1 2 -60 330 360
preplace netloc axi_mem_intercon_M00_AXI 1 4 1 1930
preplace netloc pcie_axi_lite_v1_0_0_m_axis_tx 1 1 3 -40 140 NJ 140 760
preplace netloc util_ds_buf_0_IBUF_OUT 1 1 1 -60
preplace netloc proc_sys_reset_0_interconnect_aresetn 1 1 3 -50 130 NJ 130 NJ
preplace netloc axi_mem_intercon|m01_couplers_to_axi_mem_intercon 1 3 1 N
preplace netloc axi_mem_intercon|xbar_to_m01_couplers 1 2 1 1520
preplace netloc axi_mem_intercon|S00_ACLK_1 1 0 1 N
preplace netloc pcie_7x_0_m_axis_rx 1 2 1 400
preplace netloc axi_gpio_0_GPIO 1 5 2 NJ 250 NJ
preplace netloc pcie_7x_0_user_lnk_up 1 2 1 380
preplace netloc axi_mem_intercon|m00_couplers_to_axi_mem_intercon 1 3 1 N
preplace netloc axi_mem_intercon|axi_mem_intercon_to_s00_couplers 1 0 1 N
preplace netloc axi_mem_intercon|M00_ARESETN_1 1 0 3 NJ 364 NJ 184 1550
preplace netloc axi_mem_intercon|axi_mem_intercon_ARESETN_net 1 0 3 970 324 1210 164 1540
preplace netloc axi_mem_intercon|s00_couplers_to_xbar 1 1 1 N
preplace netloc reset_1 1 0 2 NJ 80 -80
preplace netloc axi_mem_intercon|M01_ACLK_1 1 0 3 NJ 434 NJ 434 N
preplace netloc rst_clk_wiz_100M_peripheral_aresetn 1 1 4 -40 100 390 100 790 70 1950
preplace netloc clk_wiz_clk_out1 1 1 4 -70 120 370 120 770 90 1940
levelinfo -pg 1 -460 -220 160 570 1100 2100 2340 2470 -top -160 -bot 830
levelinfo -hier axi_mem_intercon * 1090 1390 1700 *
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


