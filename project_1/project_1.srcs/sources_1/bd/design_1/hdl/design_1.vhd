--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Mon Sep 26 18:35:39 2016
--Host        : spikepig.dhcp.lbl.gov running 64-bit CentOS Linux release 7.2.1511 (Core)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    count_o : in STD_LOGIC_VECTOR ( 10 downto 0 );
    rst : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    ud : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_simple_counter_0_0 is
  port (
    ud_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    clk_i : in STD_LOGIC;
    count_o : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component design_1_simple_counter_0_0;
  signal count_o_1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal rst_1 : STD_LOGIC;
  signal sys_clk_1 : STD_LOGIC;
  signal ud_1 : STD_LOGIC;
begin
  count_o_1(10 downto 0) <= count_o(10 downto 0);
  rst_1 <= rst;
  sys_clk_1 <= sys_clk;
  ud_1 <= ud;
simple_counter_0: component design_1_simple_counter_0_0
     port map (
      clk_i => sys_clk_1,
      count_o(10 downto 0) => count_o_1(10 downto 0),
      rst_i => rst_1,
      ud_i => ud_1
    );
end STRUCTURE;
