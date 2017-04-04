//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
//Date        : Mon Apr  4 17:41:08 2016
//Host        : xcordevl38 running 64-bit Red Hat Enterprise Linux Workstation release 6.5 (Santiago)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    led_4bits_tri_o,
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
    sys_clk,
    sys_rst_n);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
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
  input [0:0]pcie_7x_mgt_rxn;
  input [0:0]pcie_7x_mgt_rxp;
  output [0:0]pcie_7x_mgt_txn;
  output [0:0]pcie_7x_mgt_txp;
  input sys_clk;
  input sys_rst_n;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
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
  wire [0:0]pcie_7x_mgt_rxn;
  wire [0:0]pcie_7x_mgt_rxp;
  wire [0:0]pcie_7x_mgt_txn;
  wire [0:0]pcie_7x_mgt_txp;
  wire sys_clk;
  wire sys_rst_n;

  design_1 design_1_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .led_4bits_tri_o(led_4bits_tri_o),
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
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n));
endmodule
