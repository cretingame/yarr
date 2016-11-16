-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:module_ref:axis_rx:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_axis_rx_0_0 IS
  PORT (
    clk_i : IN STD_LOGIC;
    rst_i : IN STD_LOGIC;
    s_axis_rx_tdata_i : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_axis_rx_tkeep_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_rx_tuser_i : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    s_axis_rx_tlast_i : IN STD_LOGIC;
    s_axis_rx_tvalid_i : IN STD_LOGIC;
    s_axis_rx_ready_o : OUT STD_LOGIC;
    m_axis_tx_tdata_o : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axis_tx_tkeep_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_tx_tuser_o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axis_tx_tlast_o : OUT STD_LOGIC;
    m_axis_tx_tvalid_o : OUT STD_LOGIC;
    m_axis_tx_ready_i : IN STD_LOGIC;
    wb_adr_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    wb_dat_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wb_dat_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wb_cyc_o : OUT STD_LOGIC;
    wb_stb_o : OUT STD_LOGIC;
    wb_we_o : OUT STD_LOGIC;
    wb_ack_i : IN STD_LOGIC
  );
END design_1_axis_rx_0_0;

ARCHITECTURE design_1_axis_rx_0_0_arch OF design_1_axis_rx_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_axis_rx_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT axis_rx IS
    GENERIC (
      axis_data_width_c : INTEGER;
      wb_address_width_c : INTEGER;
      wb_data_width_c : INTEGER;
      address_mask_c : STD_LOGIC_VECTOR((32 - 1) DOWNTO 0)
    );
    PORT (
      clk_i : IN STD_LOGIC;
      rst_i : IN STD_LOGIC;
      s_axis_rx_tdata_i : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      s_axis_rx_tkeep_i : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axis_rx_tuser_i : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      s_axis_rx_tlast_i : IN STD_LOGIC;
      s_axis_rx_tvalid_i : IN STD_LOGIC;
      s_axis_rx_ready_o : OUT STD_LOGIC;
      m_axis_tx_tdata_o : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axis_tx_tkeep_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axis_tx_tuser_o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axis_tx_tlast_o : OUT STD_LOGIC;
      m_axis_tx_tvalid_o : OUT STD_LOGIC;
      m_axis_tx_ready_i : IN STD_LOGIC;
      wb_adr_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      wb_dat_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      wb_dat_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      wb_cyc_o : OUT STD_LOGIC;
      wb_stb_o : OUT STD_LOGIC;
      wb_we_o : OUT STD_LOGIC;
      wb_ack_i : IN STD_LOGIC
    );
  END COMPONENT axis_rx;
BEGIN
  U0 : axis_rx
    GENERIC MAP (
      axis_data_width_c => 64,
      wb_address_width_c => 8,
      wb_data_width_c => 32,
      address_mask_c => X"000000FF"
    )
    PORT MAP (
      clk_i => clk_i,
      rst_i => rst_i,
      s_axis_rx_tdata_i => s_axis_rx_tdata_i,
      s_axis_rx_tkeep_i => s_axis_rx_tkeep_i,
      s_axis_rx_tuser_i => s_axis_rx_tuser_i,
      s_axis_rx_tlast_i => s_axis_rx_tlast_i,
      s_axis_rx_tvalid_i => s_axis_rx_tvalid_i,
      s_axis_rx_ready_o => s_axis_rx_ready_o,
      m_axis_tx_tdata_o => m_axis_tx_tdata_o,
      m_axis_tx_tkeep_o => m_axis_tx_tkeep_o,
      m_axis_tx_tuser_o => m_axis_tx_tuser_o,
      m_axis_tx_tlast_o => m_axis_tx_tlast_o,
      m_axis_tx_tvalid_o => m_axis_tx_tvalid_o,
      m_axis_tx_ready_i => m_axis_tx_ready_i,
      wb_adr_o => wb_adr_o,
      wb_dat_o => wb_dat_o,
      wb_dat_i => wb_dat_i,
      wb_cyc_o => wb_cyc_o,
      wb_stb_o => wb_stb_o,
      wb_we_o => wb_we_o,
      wb_ack_i => wb_ack_i
    );
END design_1_axis_rx_0_0_arch;
