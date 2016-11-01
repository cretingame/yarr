--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Tue Nov  1 14:05:17 2016
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
    CLK_IN_D_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IN_D_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    led_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_txn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_txp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    pcie_7x_mgt_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_txn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_txp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK_IN_D_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IN_D_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    led_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sys_rst_n : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      CLK_IN_D_clk_n(0) => CLK_IN_D_clk_n(0),
      CLK_IN_D_clk_p(0) => CLK_IN_D_clk_p(0),
      led_o(3 downto 0) => led_o(3 downto 0),
      pcie_7x_mgt_rxn(3 downto 0) => pcie_7x_mgt_rxn(3 downto 0),
      pcie_7x_mgt_rxp(3 downto 0) => pcie_7x_mgt_rxp(3 downto 0),
      pcie_7x_mgt_txn(3 downto 0) => pcie_7x_mgt_txn(3 downto 0),
      pcie_7x_mgt_txp(3 downto 0) => pcie_7x_mgt_txp(3 downto 0),
      reset => reset,
      sys_rst_n => sys_rst_n
    );
end STRUCTURE;
