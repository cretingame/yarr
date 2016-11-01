
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


# The design that will be created by this Tcl script contains the following 
# module references:
# simple_counter

# Please add the sources of those modules before sourcing this Tcl script.

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

  # Create ports
  set led_o [ create_bd_port -dir O -from 3 -to 0 led_o ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset
  set sys_rst_n [ create_bd_port -dir I -type rst sys_rst_n ]

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0 ]
  set_property -dict [ list \
CONFIG.ECC_TYPE {0} \
CONFIG.PROTOCOL {AXI4LITE} \
 ] $axi_bram_ctrl_0

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

  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.1 ila_0 ]
  set_property -dict [ list \
CONFIG.C_MONITOR_TYPE {AXI} \
CONFIG.C_NUM_OF_PROBES {9} \
CONFIG.C_SLOT_0_AXI_PROTOCOL {AXI4S} \
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

  # Create instance: pcie_7x_0, and set properties
  set pcie_7x_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:pcie_7x:3.3 pcie_7x_0 ]
  set_property -dict [ list \
CONFIG.Bar0_64bit {false} \
CONFIG.Bar0_Scale {Kilobytes} \
CONFIG.Bar0_Size {32} \
CONFIG.Bar1_Enabled {true} \
CONFIG.Bar1_Scale {Kilobytes} \
CONFIG.Bar1_Size {4} \
CONFIG.Bar1_Type {Memory} \
CONFIG.Bar2_64bit {false} \
CONFIG.Bar2_Enabled {true} \
CONFIG.Bar2_Scale {Kilobytes} \
CONFIG.Bar2_Size {32} \
CONFIG.Bar2_Type {Memory} \
CONFIG.Bar3_Enabled {true} \
CONFIG.Bar3_Scale {Kilobytes} \
CONFIG.Bar3_Size {2} \
CONFIG.Bar3_Type {Memory} \
CONFIG.Bar4_Enabled {true} \
CONFIG.Bar4_Scale {Kilobytes} \
CONFIG.Bar4_Size {2} \
CONFIG.Bar4_Type {Memory} \
CONFIG.Bar5_Enabled {false} \
CONFIG.Bar5_Size {2} \
CONFIG.Bar5_Type {N/A} \
CONFIG.DSN_Enabled {true} \
CONFIG.De_emph {-3.5} \
CONFIG.Device_ID {7024} \
CONFIG.En_route_unlock {false} \
CONFIG.Enable_Slot_Clock_Cfg {true} \
CONFIG.Interface_Width {64_bit} \
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
CONFIG.User_Clk_Freq {250} \
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
CONFIG.C_DATA_WIDTH {64} \
 ] $pcie_axi_lite_v1_0_0

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: simple_counter_0, and set properties
  set block_name simple_counter
  set block_cell_name simple_counter_0
  if { [catch {set simple_counter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $simple_counter_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
CONFIG.C_BUF_TYPE {IBUFDSGTE} \
 ] $util_ds_buf_0

  # Create interface connections
  connect_bd_intf_net -intf_net CLK_IN_D_1 [get_bd_intf_ports CLK_IN_D] [get_bd_intf_pins util_ds_buf_0/CLK_IN_D]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTB [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net pcie_7x_0_m_axis_rx [get_bd_intf_pins pcie_7x_0/m_axis_rx] [get_bd_intf_pins pcie_axi_lite_v1_0_0/s_axis_rx]
connect_bd_intf_net -intf_net [get_bd_intf_nets pcie_7x_0_m_axis_rx] [get_bd_intf_pins ila_1/SLOT_0_AXIS] [get_bd_intf_pins pcie_7x_0/m_axis_rx]
  connect_bd_intf_net -intf_net pcie_7x_0_pcie_7x_mgt [get_bd_intf_ports pcie_7x_mgt] [get_bd_intf_pins pcie_7x_0/pcie_7x_mgt]
  connect_bd_intf_net -intf_net pcie_axi_lite_v1_0_0_M_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins pcie_axi_lite_v1_0_0/M_AXI]
  connect_bd_intf_net -intf_net pcie_axi_lite_v1_0_0_m_axis_tx [get_bd_intf_pins pcie_7x_0/s_axis_tx] [get_bd_intf_pins pcie_axi_lite_v1_0_0/m_axis_tx]
connect_bd_intf_net -intf_net [get_bd_intf_nets pcie_axi_lite_v1_0_0_m_axis_tx] [get_bd_intf_pins ila_0/SLOT_0_AXIS] [get_bd_intf_pins pcie_axi_lite_v1_0_0/m_axis_tx]

  # Create port connections
  connect_bd_net -net clk_wiz_clk_out1 [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins ila_0/clk] [get_bd_pins ila_1/clk] [get_bd_pins pcie_7x_0/user_clk_out] [get_bd_pins pcie_axi_lite_v1_0_0/user_clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins simple_counter_0/clk_i]
  connect_bd_net -net pcie_7x_0_user_lnk_up [get_bd_pins pcie_7x_0/user_lnk_up] [get_bd_pins pcie_axi_lite_v1_0_0/user_lnk_up]
  connect_bd_net -net pcie_7x_0_user_reset_out [get_bd_pins pcie_7x_0/user_reset_out] [get_bd_pins proc_sys_reset_0/aux_reset_in]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins proc_sys_reset_0/peripheral_reset] [get_bd_pins simple_counter_0/rst_i]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins proc_sys_reset_0/ext_reset_in]
  connect_bd_net -net rst_clk_wiz_100M_peripheral_aresetn [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins pcie_axi_lite_v1_0_0/M_AXI_ARESETN] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net simple_counter_0_led_o [get_bd_ports led_o] [get_bd_pins simple_counter_0/led_o]
  connect_bd_net -net sys_rst_n_1 [get_bd_ports sys_rst_n] [get_bd_pins pcie_7x_0/sys_rst_n]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins pcie_7x_0/sys_clk] [get_bd_pins util_ds_buf_0/IBUF_OUT]

  # Create address segments
  create_bd_addr_seg -range 0x00002000 -offset 0x00000000 [get_bd_addr_spaces pcie_axi_lite_v1_0_0/M_AXI] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.12  2016-01-29 bk=1.3547 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port CLK_IN_D -pg 1 -y 380 -defaultsOSRD
preplace port sys_rst_n -pg 1 -y 440 -defaultsOSRD
preplace port reset -pg 1 -y 80 -defaultsOSRD
preplace port pcie_7x_mgt -pg 1 -y 370 -defaultsOSRD
preplace portBus led_o -pg 1 -y 40 -defaultsOSRD
preplace inst pcie_axi_lite_v1_0_0 -pg 1 -lvl 3 -y 700 -defaultsOSRD
preplace inst pcie_7x_0 -pg 1 -lvl 2 -y 730 -defaultsOSRD
preplace inst axi_bram_ctrl_0_bram -pg 1 -lvl 5 -y 630 -defaultsOSRD
preplace inst proc_sys_reset_0 -pg 1 -lvl 2 -y 300 -defaultsOSRD
preplace inst ila_0 -pg 1 -lvl 2 -y 950 -defaultsOSRD
preplace inst ila_1 -pg 1 -lvl 3 -y 900 -defaultsOSRD
preplace inst simple_counter_0 -pg 1 -lvl 5 -y 30 -defaultsOSRD
preplace inst axi_bram_ctrl_0 -pg 1 -lvl 4 -y 650 -defaultsOSRD
preplace inst util_ds_buf_0 -pg 1 -lvl 1 -y 370 -defaultsOSRD
preplace netloc pcie_axi_lite_v1_0_0_M_AXI 1 3 1 640
preplace netloc axi_bram_ctrl_0_BRAM_PORTA 1 4 1 NJ
preplace netloc CLK_IN_D_1 1 0 1 -780
preplace netloc pcie_7x_0_pcie_7x_mgt 1 2 4 90 370 NJ 370 NJ 370 NJ
preplace netloc axi_bram_ctrl_0_BRAM_PORTB 1 4 1 NJ
preplace netloc sys_rst_n_1 1 0 2 NJ 440 -500
preplace netloc pcie_7x_0_user_reset_out 1 1 2 -470 390 70
preplace netloc pcie_axi_lite_v1_0_0_m_axis_tx 1 1 3 NJ 620 NJ 620 620
preplace netloc simple_counter_0_led_o 1 5 1 NJ
preplace netloc util_ds_buf_0_IBUF_OUT 1 1 1 -490
preplace netloc pcie_7x_0_m_axis_rx 1 2 1 120
preplace netloc proc_sys_reset_0_peripheral_reset 1 2 3 70 20 NJ 20 NJ
preplace netloc pcie_7x_0_user_lnk_up 1 2 1 110
preplace netloc reset_1 1 0 2 NJ 80 -490
preplace netloc rst_clk_wiz_100M_peripheral_aresetn 1 2 2 100 580 NJ
preplace netloc clk_wiz_clk_out1 1 1 4 -480 600 80 600 NJ 40 NJ
levelinfo -pg 1 -800 -640 -100 490 1050 1330 1460 -top -40 -bot 1010
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


