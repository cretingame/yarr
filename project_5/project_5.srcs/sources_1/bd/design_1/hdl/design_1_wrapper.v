//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
//Date        : Tue Sep 27 10:47:09 2016
//Host        : spikepig.dhcp.lbl.gov running 64-bit CentOS Linux release 7.2.1511 (Core)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_s,
    count_o,
    rst_i);
  input clk_s;
  output [10:0]count_o;
  input rst_i;

  wire clk_s;
  wire [10:0]count_o;
  wire rst_i;

  design_1 design_1_i
       (.clk_s(clk_s),
        .count_o(count_o),
        .rst_i(rst_i));
endmodule
