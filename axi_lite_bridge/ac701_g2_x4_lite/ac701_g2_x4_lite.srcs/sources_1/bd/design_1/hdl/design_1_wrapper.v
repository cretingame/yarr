//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
//Date        : Mon Apr  4 17:32:31 2016
//Host        : xcordevl38 running 64-bit Red Hat Enterprise Linux Workstation release 6.5 (Santiago)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (led_4bits_tri_o,
    pcie2_ext_pipe_ep_rp_commands_in,
    pcie2_ext_pipe_ep_rp_commands_out,
    pcie2_ext_pipe_ep_rp_rx_0_sigs,
    pcie2_ext_pipe_ep_rp_rx_1_sigs,
    pcie2_ext_pipe_ep_rp_rx_2_sigs,
    pcie2_ext_pipe_ep_rp_rx_3_sigs,
    pcie2_ext_pipe_ep_rp_rx_4_sigs,
    pcie2_ext_pipe_ep_rp_rx_5_sigs,
    pcie2_ext_pipe_ep_rp_rx_6_sigs,
    pcie2_ext_pipe_ep_rp_rx_7_sigs,
    pcie2_ext_pipe_ep_rp_tx_0_sigs,
    pcie2_ext_pipe_ep_rp_tx_1_sigs,
    pcie2_ext_pipe_ep_rp_tx_2_sigs,
    pcie2_ext_pipe_ep_rp_tx_3_sigs,
    pcie2_ext_pipe_ep_rp_tx_4_sigs,
    pcie2_ext_pipe_ep_rp_tx_5_sigs,
    pcie2_ext_pipe_ep_rp_tx_6_sigs,
    pcie2_ext_pipe_ep_rp_tx_7_sigs,
    pcie_7x_mgt_rxn,
    pcie_7x_mgt_rxp,
    pcie_7x_mgt_txn,
    pcie_7x_mgt_txp,
    reset,
    sys_clk,
    sys_rst_n);
  output [3:0]led_4bits_tri_o;
  input [3:0]pcie2_ext_pipe_ep_rp_commands_in;
  output [11:0]pcie2_ext_pipe_ep_rp_commands_out;
  input [24:0]pcie2_ext_pipe_ep_rp_rx_0_sigs;
  input [24:0]pcie2_ext_pipe_ep_rp_rx_1_sigs;
  input [24:0]pcie2_ext_pipe_ep_rp_rx_2_sigs;
  input [24:0]pcie2_ext_pipe_ep_rp_rx_3_sigs;
  input [24:0]pcie2_ext_pipe_ep_rp_rx_4_sigs;
  input [24:0]pcie2_ext_pipe_ep_rp_rx_5_sigs;
  input [24:0]pcie2_ext_pipe_ep_rp_rx_6_sigs;
  input [24:0]pcie2_ext_pipe_ep_rp_rx_7_sigs;
  output [22:0]pcie2_ext_pipe_ep_rp_tx_0_sigs;
  output [22:0]pcie2_ext_pipe_ep_rp_tx_1_sigs;
  output [22:0]pcie2_ext_pipe_ep_rp_tx_2_sigs;
  output [22:0]pcie2_ext_pipe_ep_rp_tx_3_sigs;
  output [22:0]pcie2_ext_pipe_ep_rp_tx_4_sigs;
  output [22:0]pcie2_ext_pipe_ep_rp_tx_5_sigs;
  output [22:0]pcie2_ext_pipe_ep_rp_tx_6_sigs;
  output [22:0]pcie2_ext_pipe_ep_rp_tx_7_sigs;
  input [3:0]pcie_7x_mgt_rxn;
  input [3:0]pcie_7x_mgt_rxp;
  output [3:0]pcie_7x_mgt_txn;
  output [3:0]pcie_7x_mgt_txp;
  input reset;
  input sys_clk;
  input sys_rst_n;

  wire [3:0]led_4bits_tri_o;
  wire [3:0]pcie2_ext_pipe_ep_rp_commands_in;
  wire [11:0]pcie2_ext_pipe_ep_rp_commands_out;
  wire [24:0]pcie2_ext_pipe_ep_rp_rx_0_sigs;
  wire [24:0]pcie2_ext_pipe_ep_rp_rx_1_sigs;
  wire [24:0]pcie2_ext_pipe_ep_rp_rx_2_sigs;
  wire [24:0]pcie2_ext_pipe_ep_rp_rx_3_sigs;
  wire [24:0]pcie2_ext_pipe_ep_rp_rx_4_sigs;
  wire [24:0]pcie2_ext_pipe_ep_rp_rx_5_sigs;
  wire [24:0]pcie2_ext_pipe_ep_rp_rx_6_sigs;
  wire [24:0]pcie2_ext_pipe_ep_rp_rx_7_sigs;
  wire [22:0]pcie2_ext_pipe_ep_rp_tx_0_sigs;
  wire [22:0]pcie2_ext_pipe_ep_rp_tx_1_sigs;
  wire [22:0]pcie2_ext_pipe_ep_rp_tx_2_sigs;
  wire [22:0]pcie2_ext_pipe_ep_rp_tx_3_sigs;
  wire [22:0]pcie2_ext_pipe_ep_rp_tx_4_sigs;
  wire [22:0]pcie2_ext_pipe_ep_rp_tx_5_sigs;
  wire [22:0]pcie2_ext_pipe_ep_rp_tx_6_sigs;
  wire [22:0]pcie2_ext_pipe_ep_rp_tx_7_sigs;
  wire [3:0]pcie_7x_mgt_rxn;
  wire [3:0]pcie_7x_mgt_rxp;
  wire [3:0]pcie_7x_mgt_txn;
  wire [3:0]pcie_7x_mgt_txp;
  wire reset;
  wire sys_clk;
  wire sys_rst_n;

  design_1 design_1_i
       (.led_4bits_tri_o(led_4bits_tri_o),
        .pcie2_ext_pipe_ep_rp_commands_in(pcie2_ext_pipe_ep_rp_commands_in),
        .pcie2_ext_pipe_ep_rp_commands_out(pcie2_ext_pipe_ep_rp_commands_out),
        .pcie2_ext_pipe_ep_rp_rx_0_sigs(pcie2_ext_pipe_ep_rp_rx_0_sigs),
        .pcie2_ext_pipe_ep_rp_rx_1_sigs(pcie2_ext_pipe_ep_rp_rx_1_sigs),
        .pcie2_ext_pipe_ep_rp_rx_2_sigs(pcie2_ext_pipe_ep_rp_rx_2_sigs),
        .pcie2_ext_pipe_ep_rp_rx_3_sigs(pcie2_ext_pipe_ep_rp_rx_3_sigs),
        .pcie2_ext_pipe_ep_rp_rx_4_sigs(pcie2_ext_pipe_ep_rp_rx_4_sigs),
        .pcie2_ext_pipe_ep_rp_rx_5_sigs(pcie2_ext_pipe_ep_rp_rx_5_sigs),
        .pcie2_ext_pipe_ep_rp_rx_6_sigs(pcie2_ext_pipe_ep_rp_rx_6_sigs),
        .pcie2_ext_pipe_ep_rp_rx_7_sigs(pcie2_ext_pipe_ep_rp_rx_7_sigs),
        .pcie2_ext_pipe_ep_rp_tx_0_sigs(pcie2_ext_pipe_ep_rp_tx_0_sigs),
        .pcie2_ext_pipe_ep_rp_tx_1_sigs(pcie2_ext_pipe_ep_rp_tx_1_sigs),
        .pcie2_ext_pipe_ep_rp_tx_2_sigs(pcie2_ext_pipe_ep_rp_tx_2_sigs),
        .pcie2_ext_pipe_ep_rp_tx_3_sigs(pcie2_ext_pipe_ep_rp_tx_3_sigs),
        .pcie2_ext_pipe_ep_rp_tx_4_sigs(pcie2_ext_pipe_ep_rp_tx_4_sigs),
        .pcie2_ext_pipe_ep_rp_tx_5_sigs(pcie2_ext_pipe_ep_rp_tx_5_sigs),
        .pcie2_ext_pipe_ep_rp_tx_6_sigs(pcie2_ext_pipe_ep_rp_tx_6_sigs),
        .pcie2_ext_pipe_ep_rp_tx_7_sigs(pcie2_ext_pipe_ep_rp_tx_7_sigs),
        .pcie_7x_mgt_rxn(pcie_7x_mgt_rxn),
        .pcie_7x_mgt_rxp(pcie_7x_mgt_rxp),
        .pcie_7x_mgt_txn(pcie_7x_mgt_txn),
        .pcie_7x_mgt_txp(pcie_7x_mgt_txp),
        .reset(reset),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n));
endmodule
