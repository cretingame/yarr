//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
//Date        : Tue Sep 27 10:47:09 2016
//Host        : spikepig.dhcp.lbl.gov running 64-bit CentOS Linux release 7.2.1511 (Core)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_s,
    count_o,
    rst_i);
  input clk_s;
  output [10:0]count_o;
  input rst_i;

  wire clk_s_1;
  wire rst_i_1;
  wire [10:0]simple_counter_0_upgraded_ipi_count_o;

  assign clk_s_1 = clk_s;
  assign count_o[10:0] = simple_counter_0_upgraded_ipi_count_o;
  assign rst_i_1 = rst_i;
  design_1_simple_counter_0_upgraded_ipi_0 simple_counter_0_upgraded_ipi
       (.clk_i(clk_s_1),
        .count_o(simple_counter_0_upgraded_ipi_count_o),
        .rst_i(rst_i_1));
endmodule
