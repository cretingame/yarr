-------------------------------------------------------------------------------
--
-- (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
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
-------------------------------------------------------------------------------
-- Project    : Series-7 Integrated Block for PCI Express
-- File       : xilinx_pcie_2_1_ep_7x.vhd
-- Version    : 3.3
--
-- Description:  PCI Express Endpoint example FPGA design
--
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library unisim;
use unisim.vcomponents.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity xilinx_pcie_2_1_ep_7x is
  generic (
  INIT_PATTERN_WIDTH            : integer := 8;
  INIT_PATTERN1                 : std_logic_vector(7 downto 0) := X"12";
  INIT_PATTERN2                 : std_logic_vector(7 downto 0) := X"9a";
  PCIE_EXT_CLK                  : string := "FALSE";  -- Use External Clocking Module
  PCIE_EXT_GT_COMMON            : string := "FALSE";
  PL_FAST_TRAIN                 : string := "FALSE";
  C_DATA_WIDTH                  : integer range 64 to 128 := 128
  );
  port (
  pci_exp_txp                   : out std_logic_vector(3 downto 0);
  pci_exp_txn                   : out std_logic_vector(3 downto 0);
  pci_exp_rxp                   : in  std_logic_vector(3 downto 0);
  pci_exp_rxn                   : in  std_logic_vector(3 downto 0);

  sys_clk_p                     : in std_logic;
  sys_clk_n                     : in std_logic;
  sys_rst_n                     : in std_logic;
  
  led_o : out STD_LOGIC_VECTOR (3 downto 0)

);
end xilinx_pcie_2_1_ep_7x;

architecture rtl of xilinx_pcie_2_1_ep_7x is
   attribute DowngradeIPIdentifiedWarnings: string;
   attribute DowngradeIPIdentifiedWarnings of rtl : architecture is "yes";



  component pcie_7x_0
    port (
     -------------------------------------------------------------------------------------------------------------------
     -- PCI Express (pci_exp) Interface                                                                               --
     -------------------------------------------------------------------------------------------------------------------
      pci_exp_txp                                : out std_logic_vector(3 downto 0);
      pci_exp_txn                                : out std_logic_vector(3 downto 0);
      pci_exp_rxp                                : in  std_logic_vector(3 downto 0);
      pci_exp_rxn                                : in  std_logic_vector(3 downto 0);

     -------------------------------------------------------------------------------------------------------------------
     -- Clocking Interface                                                                                            --
     -------------------------------------------------------------------------------------------------------------------

     -------------------------------------------------------------------------------------------------------------------
     -- AXI-S Interface                                                                                               --
     -------------------------------------------------------------------------------------------------------------------
      -- Common
      user_clk_out                               : out std_logic;
      user_reset_out                             : out std_logic;
      user_lnk_up                                : out std_logic;
      user_app_rdy                               : out std_logic;

      -- TX
      s_axis_tx_tready                           : out std_logic;
      s_axis_tx_tdata                            : in std_logic_vector((C_DATA_WIDTH - 1) downto 0);
      s_axis_tx_tkeep                            : in std_logic_vector((C_DATA_WIDTH / 8 - 1) downto 0);
      s_axis_tx_tlast                            : in std_logic;
      s_axis_tx_tvalid                           : in std_logic;
      s_axis_tx_tuser                            : in std_logic_vector(3 downto 0);

      -- RX
      m_axis_rx_tdata                            : out std_logic_vector((C_DATA_WIDTH - 1) downto 0);
      m_axis_rx_tkeep                            : out std_logic_vector((C_DATA_WIDTH / 8 - 1) downto 0);
      m_axis_rx_tlast                            : out std_logic;
      m_axis_rx_tvalid                           : out std_logic;
      m_axis_rx_tready                           : in std_logic;
      m_axis_rx_tuser                            : out std_logic_vector(21 downto 0);





     ---------------------------------------------------------------------
      -- EP Only                                                        --
     ---------------------------------------------------------------------
      cfg_interrupt                              : in std_logic;
      cfg_interrupt_rdy                          : out std_logic;
      cfg_interrupt_assert                       : in std_logic;
      cfg_interrupt_di                           : in std_logic_vector(7 downto 0);
      cfg_interrupt_do                           : out std_logic_vector(7 downto 0);
      cfg_interrupt_mmenable                     : out std_logic_vector(2 downto 0);
      cfg_interrupt_msienable                    : out std_logic;
      cfg_interrupt_msixenable                   : out std_logic;
      cfg_interrupt_msixfm                       : out std_logic;
      cfg_interrupt_stat                         : in std_logic;
      cfg_pciecap_interrupt_msgnum               : in std_logic_vector(4 downto 0);







     --------------------------------------------------------------------------------------------------------------------
     -- System(SYS) Interface                                                                                         --
     -------------------------------------------------------------------------------------------------------------------
     sys_clk                       : in std_logic;
     sys_rst_n                     : in std_logic);

  end component;


  component pcie_app_7x
    generic (
      C_DATA_WIDTH : integer range 64 to 128 := 64;
  --    KEEP_WIDTH   : integer range 8 to 16   := C_DATA_WIDTH / 8
      TCQ          : time                    := 1 ps
    );
    port  (
  user_clk                       : in  std_logic;
  user_reset                     : in  std_logic;
  user_lnk_up                    : in  std_logic;

  s_axis_tx_tready               : in  std_logic;
  s_axis_tx_tdata                : out std_logic_vector((C_DATA_WIDTH - 1) downto 0);
  s_axis_tx_tkeep                : out std_logic_vector((C_DATA_WIDTH/8)-1 downto 0);
  s_axis_tx_tuser                : out std_logic_vector(3 downto 0);
  s_axis_tx_tlast                : out std_logic;
  s_axis_tx_tvalid               : out std_logic;

  -- RX
  m_axis_rx_tdata                : in std_logic_vector((C_DATA_WIDTH - 1) downto 0);
  m_axis_rx_tkeep                : in std_logic_vector((C_DATA_WIDTH/8)-1 downto 0);
  m_axis_rx_tlast                : in  std_logic;
  m_axis_rx_tvalid               : in  std_logic;
  m_axis_rx_tready               : out std_logic;
  m_axis_rx_tuser                : in std_logic_vector(21 downto 0);







  cfg_interrupt                  : out std_logic;
  cfg_interrupt_assert           : out std_logic;
  cfg_interrupt_di               : out std_logic_vector( 7 downto 0);
  cfg_interrupt_stat             : out std_logic;
  cfg_pciecap_interrupt_msgnum   : out std_logic_vector( 4 downto 0));
  end component;

  constant TCQ                  : time           := 1 ps;

   function get_userClk2 (
    DIV2   : string;
    UC_FREQ  : integer)
    return integer is
  begin  -- wr_mode
    if (DIV2 = "TRUE") then
      if (UC_FREQ = 4) then
        return 3;
      elsif (UC_FREQ = 3) then
        return 2;
      else
        return UC_FREQ;
      end if;
    else
      return UC_FREQ;
    end if;
  end get_userClk2;

   -- purpose: Determine Link Speed Configuration for GT
   function get_gt_lnk_spd_cfg (
     constant simulation : string)
     return integer is
   begin  -- get_gt_lnk_spd_cfg
     if (simulation = "TRUE") then
       return 2;
     else
       return 3;
     end if;
   end get_gt_lnk_spd_cfg;
   
   component simple_counter is
       Port ( 
              rst_i : in STD_LOGIC;
              clk_i : in STD_LOGIC;
              count_o : out STD_LOGIC_VECTOR (28 downto 0);
              led_o : out STD_LOGIC_VECTOR (3 downto 0)
               );
   end component;

  -- PCI Express Fast Config Initialization pattern
  signal init_pattern_bus_pre2  : std_logic_vector(INIT_PATTERN_WIDTH-1 downto 0);
  signal init_pattern_bus_pre1  : std_logic_vector(INIT_PATTERN_WIDTH-1 downto 0);
  signal sys_rst_c              : std_logic;


  constant USER_CLK_FREQ        : integer := 3;
  constant USER_CLK2_DIV2       : string  := "TRUE";
  constant USERCLK2_FREQ        : integer := get_userClk2(USER_CLK2_DIV2,USER_CLK_FREQ);
  constant LNK_SPD              : integer := get_gt_lnk_spd_cfg(PL_FAST_TRAIN);

  -- Common
  signal user_lnk_up            : std_logic;
  signal user_lnk_up_q          : std_logic;
  signal user_clk               : std_logic;
  signal user_reset             : std_logic;
  signal user_reset_i           : std_logic;
  signal user_reset_q           : std_logic;

  -- Tx
  signal s_axis_tx_tready       : std_logic;
  signal s_axis_tx_tuser        : std_logic_vector (3 downto 0);
  signal s_axis_tx_tdata        : std_logic_vector((C_DATA_WIDTH - 1) downto 0);
  signal s_axis_tx_tkeep        : std_logic_vector((C_DATA_WIDTH/8 - 1) downto 0);
  signal s_axis_tx_tlast        : std_logic;
  signal s_axis_tx_tvalid       : std_logic;

  -- Rx
  signal m_axis_rx_tdata        : std_logic_vector((C_DATA_WIDTH - 1) downto 0);
  signal m_axis_rx_tkeep        : std_logic_vector((C_DATA_WIDTH/8- 1) downto 0);
  signal m_axis_rx_tlast        : std_logic;
  signal m_axis_rx_tvalid       : std_logic;
  signal m_axis_rx_tready       : std_logic;
  signal m_axis_rx_tuser        : std_logic_vector (21 downto 0);




  signal cfg_interrupt                 : std_logic;
  signal cfg_interrupt_assert          : std_logic;
  signal cfg_interrupt_di              : std_logic_vector(7 downto 0);
  signal cfg_interrupt_stat            : std_logic;
  signal cfg_pciecap_interrupt_msgnum  : std_logic_vector(4 downto 0);




  signal sys_clk                        : std_logic;
  signal sys_rst_n_c                    : std_logic;
  signal sys_rst                        : std_logic;

  -------------------------------------------------------

begin

  process(user_clk)
  begin
    if (user_clk'event and user_clk='1') then
     if (user_reset = '1') then
       user_reset_q  <= '1' after TCQ;
       user_lnk_up_q <= '0' after TCQ;
     else
       user_reset_q  <= user_reset after TCQ;
       user_lnk_up_q <= user_lnk_up after TCQ;
     end if;
    end if;
  end process;

  refclk_ibuf : IBUFDS_GTE2
     port map(
       O       => sys_clk,
       ODIV2   => open,
       I       => sys_clk_p,
       IB      => sys_clk_n,
       CEB     => '0');

  sys_reset_n_ibuf : IBUF
     port map(
       O       => sys_rst_n_c,
       I       => sys_rst_n);

  -- Convert sys_rst to active high to adhere to AXI requirements
  -- sys_reset_c              <= not sys_rst_n_c;
--  user_reset_i             <= not user_reset;






  pcie_7x_0_i : pcie_7x_0
  port map(
  --------------------------------------------------------------------------------------------
  -- PCI Express (pci_exp) Interface                                                        --
  --------------------------------------------------------------------------------------------
  -- TX
  pci_exp_txp                               => pci_exp_txp,
  pci_exp_txn                               => pci_exp_txn,
  -- RX
  pci_exp_rxp                               => pci_exp_rxp,
  pci_exp_rxn                               => pci_exp_rxn,


  -------------------------------------------------------------------------------------------------------------------
  -- AXI-S Interface                                                                                            --
  -------------------------------------------------------------------------------------------------------------------
  -- Common
  user_clk_out                               => user_clk ,
  user_reset_out                             => user_reset,
  user_lnk_up                                => user_lnk_up,
  user_app_rdy                               => open,

  -- TX
  s_axis_tx_tready                           => s_axis_tx_tready ,
  s_axis_tx_tdata                            => s_axis_tx_tdata ,
  s_axis_tx_tkeep                            => s_axis_tx_tkeep ,
  s_axis_tx_tlast                            => s_axis_tx_tlast ,
  s_axis_tx_tvalid                           => s_axis_tx_tvalid ,
  s_axis_tx_tuser                            => s_axis_tx_tuser,

  -- RX
  m_axis_rx_tdata                            => m_axis_rx_tdata ,
  m_axis_rx_tkeep                            => m_axis_rx_tkeep ,
  m_axis_rx_tlast                            => m_axis_rx_tlast ,
  m_axis_rx_tvalid                           => m_axis_rx_tvalid ,
  m_axis_rx_tready                           => m_axis_rx_tready ,
  m_axis_rx_tuser                            => m_axis_rx_tuser,







  ---------------------------------------------------------------------
   -- EP Only                                                        --
  ---------------------------------------------------------------------
  cfg_interrupt                              => cfg_interrupt ,
  cfg_interrupt_rdy                          => open ,  
  cfg_interrupt_assert                       => cfg_interrupt_assert ,
  cfg_interrupt_di                           => cfg_interrupt_di ,
  cfg_interrupt_do                           => open , 
  cfg_interrupt_mmenable                     => open ,
  cfg_interrupt_msienable                    => open ,
  cfg_interrupt_msixenable                   => open ,
  cfg_interrupt_msixfm                       => open , 
  cfg_interrupt_stat                         => cfg_interrupt_stat ,
  cfg_pciecap_interrupt_msgnum               => cfg_pciecap_interrupt_msgnum ,


  -------------------------------------------------------------------------------------------------------------------
  -- AER interface                                                                                              --
  -------------------------------------------------------------------------------------------------------------------

  -------------------------------------------------------------------------------------------------------------------
  -- VC interface                                                                                               --
  -------------------------------------------------------------------------------------------------------------------





  ----------------------------------------------------------------------------------------------------------------
  -- System(SYS) Interface                                                                                      --
  ----------------------------------------------------------------------------------------------------------------
  sys_clk                                    => sys_clk ,
  sys_rst_n                                  => sys_rst_n_c

);



app : pcie_app_7x
  generic map
  (
    C_DATA_WIDTH => C_DATA_WIDTH,
    TCQ          => TCQ
  )
  port map(

  -------------------------------------------------------------------------------------------------------
  -- AXI-S Interface                                                                                   --
  -------------------------------------------------------------------------------------------------------
  -- Common
  user_clk                       => user_clk ,
  user_reset                     => user_reset_q ,
  user_lnk_up                    => user_lnk_up_q ,

  s_axis_tx_tready               => s_axis_tx_tready ,
  s_axis_tx_tdata                => s_axis_tx_tdata ,
  s_axis_tx_tkeep                => s_axis_tx_tkeep ,
  s_axis_tx_tlast                => s_axis_tx_tlast ,
  s_axis_tx_tvalid               => s_axis_tx_tvalid ,
  s_axis_tx_tuser                => s_axis_tx_tuser,

  -- RX
  m_axis_rx_tdata                => m_axis_rx_tdata ,
  m_axis_rx_tkeep                => m_axis_rx_tkeep ,
  m_axis_rx_tlast                => m_axis_rx_tlast ,
  m_axis_rx_tvalid               => m_axis_rx_tvalid ,
  m_axis_rx_tuser                => m_axis_rx_tuser,
  m_axis_rx_tready               => m_axis_rx_tready ,







  cfg_interrupt                  => cfg_interrupt ,
  cfg_interrupt_assert           => cfg_interrupt_assert ,
  cfg_interrupt_di               => cfg_interrupt_di ,
  cfg_interrupt_stat             => cfg_interrupt_stat ,
  cfg_pciecap_interrupt_msgnum   => cfg_pciecap_interrupt_msgnum 
  );
  
  count: simple_counter
      Port map( 
             rst_i => sys_rst_c,
             clk_i => user_clk,
             count_o => open,
             led_o => led_o
              );

end rtl;
