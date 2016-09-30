--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Mon Sep 26 18:35:39 2016
--Host        : spikepig.dhcp.lbl.gov running 64-bit CentOS Linux release 7.2.1511 (Core)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    count_o : in STD_LOGIC_VECTOR ( 10 downto 0 );
    rst : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    ud : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    sys_clk : in STD_LOGIC;
    ud : in STD_LOGIC;
    rst : in STD_LOGIC;
    count_o : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      count_o(10 downto 0) => count_o(10 downto 0),
      rst => rst,
      sys_clk => sys_clk,
      ud => ud
    );
end STRUCTURE;
