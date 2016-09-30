--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Tue Sep 27 14:22:43 2016
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
    usr_led_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    usr_sw_i : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_simple_counter_0_1 is
  port (
    usr_sw_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    usr_led_o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_simple_counter_0_1;
  signal simple_counter_0_usr_led_o : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal usr_sw_i_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  usr_led_o(3 downto 0) <= simple_counter_0_usr_led_o(3 downto 0);
  usr_sw_i_1(2 downto 0) <= usr_sw_i(2 downto 0);
simple_counter_0: component design_1_simple_counter_0_1
     port map (
      usr_led_o(3 downto 0) => simple_counter_0_usr_led_o(3 downto 0),
      usr_sw_i(2 downto 0) => usr_sw_i_1(2 downto 0)
    );
end STRUCTURE;
