--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Wed Oct 19 11:34:41 2016
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
    led_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie2_ext_pipe_ep_commands_in : out STD_LOGIC_VECTOR ( 11 downto 0 );
    pcie2_ext_pipe_ep_commands_out : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pcie2_ext_pipe_ep_rx_0_sigs : out STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_rx_1_sigs : out STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_rx_2_sigs : out STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_rx_3_sigs : out STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_rx_4_sigs : out STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_rx_5_sigs : out STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_rx_6_sigs : out STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_rx_7_sigs : out STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_tx_0_sigs : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_tx_1_sigs : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_tx_2_sigs : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_tx_3_sigs : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_tx_4_sigs : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_tx_5_sigs : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_tx_6_sigs : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_tx_7_sigs : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie_7x_mgt_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_txn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_txp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    led_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_txn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_txp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie2_ext_pipe_ep_commands_in : out STD_LOGIC_VECTOR ( 11 downto 0 );
    pcie2_ext_pipe_ep_commands_out : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pcie2_ext_pipe_ep_rx_0_sigs : out STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_rx_1_sigs : out STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_rx_2_sigs : out STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_rx_3_sigs : out STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_rx_4_sigs : out STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_rx_5_sigs : out STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_rx_6_sigs : out STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_rx_7_sigs : out STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_tx_0_sigs : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_tx_1_sigs : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_tx_2_sigs : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_tx_3_sigs : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_tx_4_sigs : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_tx_5_sigs : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_tx_6_sigs : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcie2_ext_pipe_ep_tx_7_sigs : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      led_4bits_tri_o(3 downto 0) => led_4bits_tri_o(3 downto 0),
      pcie2_ext_pipe_ep_commands_in(11 downto 0) => pcie2_ext_pipe_ep_commands_in(11 downto 0),
      pcie2_ext_pipe_ep_commands_out(11 downto 0) => pcie2_ext_pipe_ep_commands_out(11 downto 0),
      pcie2_ext_pipe_ep_rx_0_sigs(24 downto 0) => pcie2_ext_pipe_ep_rx_0_sigs(24 downto 0),
      pcie2_ext_pipe_ep_rx_1_sigs(24 downto 0) => pcie2_ext_pipe_ep_rx_1_sigs(24 downto 0),
      pcie2_ext_pipe_ep_rx_2_sigs(24 downto 0) => pcie2_ext_pipe_ep_rx_2_sigs(24 downto 0),
      pcie2_ext_pipe_ep_rx_3_sigs(24 downto 0) => pcie2_ext_pipe_ep_rx_3_sigs(24 downto 0),
      pcie2_ext_pipe_ep_rx_4_sigs(24 downto 0) => pcie2_ext_pipe_ep_rx_4_sigs(24 downto 0),
      pcie2_ext_pipe_ep_rx_5_sigs(24 downto 0) => pcie2_ext_pipe_ep_rx_5_sigs(24 downto 0),
      pcie2_ext_pipe_ep_rx_6_sigs(24 downto 0) => pcie2_ext_pipe_ep_rx_6_sigs(24 downto 0),
      pcie2_ext_pipe_ep_rx_7_sigs(24 downto 0) => pcie2_ext_pipe_ep_rx_7_sigs(24 downto 0),
      pcie2_ext_pipe_ep_tx_0_sigs(24 downto 0) => pcie2_ext_pipe_ep_tx_0_sigs(24 downto 0),
      pcie2_ext_pipe_ep_tx_1_sigs(24 downto 0) => pcie2_ext_pipe_ep_tx_1_sigs(24 downto 0),
      pcie2_ext_pipe_ep_tx_2_sigs(24 downto 0) => pcie2_ext_pipe_ep_tx_2_sigs(24 downto 0),
      pcie2_ext_pipe_ep_tx_3_sigs(24 downto 0) => pcie2_ext_pipe_ep_tx_3_sigs(24 downto 0),
      pcie2_ext_pipe_ep_tx_4_sigs(24 downto 0) => pcie2_ext_pipe_ep_tx_4_sigs(24 downto 0),
      pcie2_ext_pipe_ep_tx_5_sigs(24 downto 0) => pcie2_ext_pipe_ep_tx_5_sigs(24 downto 0),
      pcie2_ext_pipe_ep_tx_6_sigs(24 downto 0) => pcie2_ext_pipe_ep_tx_6_sigs(24 downto 0),
      pcie2_ext_pipe_ep_tx_7_sigs(24 downto 0) => pcie2_ext_pipe_ep_tx_7_sigs(24 downto 0),
      pcie_7x_mgt_rxn(3 downto 0) => pcie_7x_mgt_rxn(3 downto 0),
      pcie_7x_mgt_rxp(3 downto 0) => pcie_7x_mgt_rxp(3 downto 0),
      pcie_7x_mgt_txn(3 downto 0) => pcie_7x_mgt_txn(3 downto 0),
      pcie_7x_mgt_txp(3 downto 0) => pcie_7x_mgt_txp(3 downto 0),
      reset => reset,
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n
    );
end STRUCTURE;
