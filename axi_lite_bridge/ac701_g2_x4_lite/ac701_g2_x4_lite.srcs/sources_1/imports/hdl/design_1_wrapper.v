//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
//Date        : Tue Mar  1 12:17:18 2016
//Host        : xcordevl38 running 64-bit Red Hat Enterprise Linux Workstation release 6.5 (Santiago)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ns / 1 ps

module design_1_wrapper # (

    parameter EXT_PIPE_SIM        = "FALSE"  // This Parameter has effect on selecting Enable External PIPE Interface in GUI.	

) (
    
    led_4bits_tri_o,
    
    // synthesis translate_off
    //----------------------------------------------------------------------------------------------------------------//
    // PIPE PORTS to TOP Level For PIPE SIMULATION with 3rd Party IP/BFM/Xilinx BFM
    //----------------------------------------------------------------------------------------------------------------//
    common_commands_in,
    common_commands_out,
    pipe_rx_0_sigs,
    pipe_rx_1_sigs,
    pipe_rx_2_sigs,
    pipe_rx_3_sigs,
    pipe_rx_4_sigs,
    pipe_rx_5_sigs,
    pipe_rx_6_sigs,
    pipe_rx_7_sigs,
    pipe_tx_0_sigs,
    pipe_tx_1_sigs,
    pipe_tx_2_sigs,
    pipe_tx_3_sigs,
    pipe_tx_4_sigs,
    pipe_tx_5_sigs,
    pipe_tx_6_sigs,
    pipe_tx_7_sigs,
    // synthesis translate_on
    
    pcie_7x_mgt_rxn,
    pcie_7x_mgt_rxp,
    pcie_7x_mgt_txn,
    pcie_7x_mgt_txp,
    
    reset,
    sys_clk_p,
    sys_clk_n,
    sys_rst_n);
    
  output [3:0]led_4bits_tri_o;
  // synthesis translate_off
  //----------------------------------------------------------------------------------------------------------------//
  // PIPE PORTS to TOP Level For PIPE SIMULATION with 3rd Party IP/BFM/Xilinx BFM
  //----------------------------------------------------------------------------------------------------------------//
  input [3:0]common_commands_in;
  output [11:0]common_commands_out;
  input [24:0]pipe_rx_0_sigs;
  input [24:0]pipe_rx_1_sigs;
  input [24:0]pipe_rx_2_sigs;
  input [24:0]pipe_rx_3_sigs;
  input [24:0]pipe_rx_4_sigs;
  input [24:0]pipe_rx_5_sigs;
  input [24:0]pipe_rx_6_sigs;
  input [24:0]pipe_rx_7_sigs;
  output [22:0]pipe_tx_0_sigs;
  output [22:0]pipe_tx_1_sigs;
  output [22:0]pipe_tx_2_sigs;
  output [22:0]pipe_tx_3_sigs;
  output [22:0]pipe_tx_4_sigs;
  output [22:0]pipe_tx_5_sigs;
  output [22:0]pipe_tx_6_sigs;
  output [22:0]pipe_tx_7_sigs;
  // synthesis translate_on
  
  input [3:0]pcie_7x_mgt_rxn;
  input [3:0]pcie_7x_mgt_rxp;
  output [3:0]pcie_7x_mgt_txn;
  output [3:0]pcie_7x_mgt_txp;
  
  input reset;
  input sys_clk_p;
  input sys_clk_n;
  input sys_rst_n;

  wire [3:0]led_4bits_tri_o;
  
  wire [3:0]pcie_7x_mgt_rxn;
  wire [3:0]pcie_7x_mgt_rxp;
  wire [3:0]pcie_7x_mgt_txn;
  wire [3:0]pcie_7x_mgt_txp;
  
  wire reset;
  wire sys_clk;
  wire sys_rst_n;

IBUFDS_GTE2 refclk_ibuf (.O(sys_clk), .ODIV2(), .I(sys_clk_p), .CEB(1'b0), .IB(sys_clk_n));


  wire  [ 3:0]  common_commands_in_i;
  wire  [24:0]  pipe_rx_0_sigs_i;
  wire  [24:0]  pipe_rx_1_sigs_i;
  wire  [24:0]  pipe_rx_2_sigs_i;
  wire  [24:0]  pipe_rx_3_sigs_i;
  wire  [24:0]  pipe_rx_4_sigs_i;
  wire  [24:0]  pipe_rx_5_sigs_i;
  wire  [24:0]  pipe_rx_6_sigs_i;
  wire  [24:0]  pipe_rx_7_sigs_i;
  wire  [11:0]  common_commands_out_i;
  wire  [22:0]  pipe_tx_0_sigs_i;
  wire  [22:0]  pipe_tx_1_sigs_i;
  wire  [22:0]  pipe_tx_2_sigs_i;
  wire  [22:0]  pipe_tx_3_sigs_i;
  wire  [22:0]  pipe_tx_4_sigs_i;
  wire  [22:0]  pipe_tx_5_sigs_i;
  wire  [22:0]  pipe_tx_6_sigs_i;
  wire  [22:0]  pipe_tx_7_sigs_i;

// synthesis translate_off
generate if (EXT_PIPE_SIM == "TRUE") 
begin
  assign common_commands_in_i = common_commands_in;  
  assign pipe_rx_0_sigs_i     = pipe_rx_0_sigs;   
  assign pipe_rx_1_sigs_i     = pipe_rx_1_sigs;   
  assign pipe_rx_2_sigs_i     = pipe_rx_2_sigs;   
  assign pipe_rx_3_sigs_i     = pipe_rx_3_sigs;   
  assign pipe_rx_4_sigs_i     = pipe_rx_4_sigs;   
  assign pipe_rx_5_sigs_i     = pipe_rx_5_sigs;   
  assign pipe_rx_6_sigs_i     = pipe_rx_6_sigs;   
  assign pipe_rx_7_sigs_i     = pipe_rx_7_sigs;   
  assign common_commands_out  = common_commands_out_i; 
  assign pipe_tx_0_sigs       = pipe_tx_0_sigs_i;      
  assign pipe_tx_1_sigs       = pipe_tx_1_sigs_i;      
  assign pipe_tx_2_sigs       = pipe_tx_2_sigs_i;      
  assign pipe_tx_3_sigs       = pipe_tx_3_sigs_i;      
  assign pipe_tx_4_sigs       = pipe_tx_4_sigs_i;      
  assign pipe_tx_5_sigs       = pipe_tx_5_sigs_i;      
  assign pipe_tx_6_sigs       = pipe_tx_6_sigs_i;      
  assign pipe_tx_7_sigs       = pipe_tx_7_sigs_i;      
 end
endgenerate
// synthesis translate_on   
  
generate if (EXT_PIPE_SIM == "FALSE") 
begin
  assign common_commands_in_i =  4'h0;  
  assign pipe_rx_0_sigs_i     = 25'h0;
  assign pipe_rx_1_sigs_i     = 25'h0;
  assign pipe_rx_2_sigs_i     = 25'h0;
  assign pipe_rx_3_sigs_i     = 25'h0;
  assign pipe_rx_4_sigs_i     = 25'h0;
  assign pipe_rx_5_sigs_i     = 25'h0;
  assign pipe_rx_6_sigs_i     = 25'h0;
  assign pipe_rx_7_sigs_i     = 25'h0;
 end
endgenerate

  design_1 design_1_i
       (.led_4bits_tri_o(led_4bits_tri_o),
        .pcie2_ext_pipe_ep_rp_commands_in(common_commands_in),
        .pcie2_ext_pipe_ep_rp_commands_out(common_commands_out),
        .pcie2_ext_pipe_ep_rp_rx_0_sigs(pipe_rx_0_sigs),
        .pcie2_ext_pipe_ep_rp_rx_1_sigs(pipe_rx_1_sigs),
        .pcie2_ext_pipe_ep_rp_rx_2_sigs(pipe_rx_2_sigs),
        .pcie2_ext_pipe_ep_rp_rx_3_sigs(pipe_rx_3_sigs),
        .pcie2_ext_pipe_ep_rp_rx_4_sigs(pipe_rx_4_sigs),
        .pcie2_ext_pipe_ep_rp_rx_5_sigs(pipe_rx_5_sigs),
        .pcie2_ext_pipe_ep_rp_rx_6_sigs(pipe_rx_6_sigs),
        .pcie2_ext_pipe_ep_rp_rx_7_sigs(pipe_rx_7_sigs),
        .pcie2_ext_pipe_ep_rp_tx_0_sigs(pipe_tx_0_sigs),
        .pcie2_ext_pipe_ep_rp_tx_1_sigs(pipe_tx_1_sigs),
        .pcie2_ext_pipe_ep_rp_tx_2_sigs(pipe_tx_2_sigs),
        .pcie2_ext_pipe_ep_rp_tx_3_sigs(pipe_tx_3_sigs),
        .pcie2_ext_pipe_ep_rp_tx_4_sigs(pipe_tx_4_sigs),
        .pcie2_ext_pipe_ep_rp_tx_5_sigs(pipe_tx_5_sigs),
        .pcie2_ext_pipe_ep_rp_tx_6_sigs(pipe_tx_6_sigs),
        .pcie2_ext_pipe_ep_rp_tx_7_sigs(pipe_tx_7_sigs),
        .pcie_7x_mgt_rxn(pcie_7x_mgt_rxn),
        .pcie_7x_mgt_rxp(pcie_7x_mgt_rxp),
        .pcie_7x_mgt_txn(pcie_7x_mgt_txn),
        .pcie_7x_mgt_txp(pcie_7x_mgt_txp),
        .reset(reset),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n));
endmodule
