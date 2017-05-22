// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
// Date        : Mon May 22 11:52:59 2017
// Host        : spikepig.dhcp.lbl.gov running 64-bit CentOS Linux release 7.2.1511 (Core)
// Command     : write_verilog -force -mode synth_stub /home/asautaux/yarr/hdl/ip_cores/ila_ddr/ila_ddr_stub.v
// Design      : ila_ddr
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ila,Vivado 2016.2" *)
module ila_ddr(clk, probe0, probe1, probe2, probe3, probe4, probe5, probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[28:0],probe1[2:0],probe2[0:0],probe3[511:0],probe4[0:0],probe5[63:0],probe6[0:0],probe7[511:0],probe8[0:0],probe9[0:0],probe10[0:0],probe11[0:0],probe12[0:0],probe13[0:0]" */;
  input clk;
  input [28:0]probe0;
  input [2:0]probe1;
  input [0:0]probe2;
  input [511:0]probe3;
  input [0:0]probe4;
  input [63:0]probe5;
  input [0:0]probe6;
  input [511:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
  input [0:0]probe10;
  input [0:0]probe11;
  input [0:0]probe12;
  input [0:0]probe13;
endmodule
