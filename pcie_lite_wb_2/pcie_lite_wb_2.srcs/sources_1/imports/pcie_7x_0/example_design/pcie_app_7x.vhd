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
-- File       : pcie_app_7x.vhd
-- Version    : 3.3
--
-- Description:  PCI Express Endpoint Core sample application design.
--
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library work;

entity pcie_app_7x is
generic (
  C_DATA_WIDTH : integer range 64 to 128 := 64;
  TCQ          : time                    := 1 ps;
  axis_data_width_c : integer := 64;
  axis_rx_tkeep_width_c : integer := 64/8;
  axis_rx_tuser_width_c : integer := 22;
  wb_address_width_c : integer := 8;
  wb_data_width_c : integer := 32;
  address_mask_c : STD_LOGIC_VECTOR(32-1 downto 0) := X"000000FF"
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
  cfg_pciecap_interrupt_msgnum   : out std_logic_vector( 4 downto 0);
  
  led_o : out STD_LOGIC_VECTOR (3 downto 0)

);
end pcie_app_7x;

architecture pcie_app of pcie_app_7x is

  --constant PCI_EXP_EP_OUI      : std_logic_vector(23 downto 0) := x"000A35";
  --constant PCI_EXP_EP_DSN_1    : std_logic_vector(31 downto 0) := x"01" & PCI_EXP_EP_OUI;
  --constant PCI_EXP_EP_DSN_2    : std_logic_vector(31 downto 0) := x"00000001";


  --signal cfg_completer_id       : std_logic_vector(15 downto 0);
  --signal s_axis_tx_tready_i     : std_logic;
  		-- Wishbone Master
  signal wb_adr_s : STD_LOGIC_VECTOR (wb_address_width_c - 1 downto 0);
  signal wb_dat_o_s : STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
  signal wb_dat_i_s : STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
  signal wb_cyc_s : STD_LOGIC;
  signal wb_sel_s : STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
  signal wb_stb_s : STD_LOGIC;
  signal wb_we_s : STD_LOGIC;
  signal wb_ack_s : STD_LOGIC;

--component PIO
--generic (
--  C_DATA_WIDTH           : integer range 64 to 128 := 64;
--  TCQ                    : time                    := 1 ps
--);
--port (
--  user_clk               : in  std_logic;
--  user_reset             : in  std_logic;
--  user_lnk_up            : in  std_logic;

--  -- AXIS TX
--  s_axis_tx_tdata        : out std_logic_vector((C_DATA_WIDTH - 1) downto 0);
--  s_axis_tx_tkeep        : out std_logic_vector((C_DATA_WIDTH/8)-1 downto 0);
--  s_axis_tx_tready       : in  std_logic;
--  s_axis_tx_tlast        : out std_logic;
--  s_axis_tx_tvalid       : out std_logic;
--  tx_src_dsc             : out std_logic;

--  -- AXIS RX
--  m_axis_rx_tdata        : in std_logic_vector((C_DATA_WIDTH - 1) downto 0);
--  m_axis_rx_tkeep        : in std_logic_vector((C_DATA_WIDTH/8)-1 downto 0);
--  m_axis_rx_tlast        : in std_logic;
--  m_axis_rx_tvalid       : in std_logic;
--  m_axis_rx_tready       : out std_logic;
--  m_axis_rx_tuser        : in std_logic_vector(21 downto 0);

--  cfg_to_turnoff         : in std_logic;
--  cfg_turnoff_ok         : out std_logic;

--  cfg_completer_id       : in std_logic_vector(15 downto 0)
--  );

--end component;

component axis_rx is
	Generic (
		axis_data_width_c : integer := 64;
		--address_width_c : integer := 256;
		wb_address_width_c : integer := 15; -- 32k
		wb_data_width_c : integer := 32;
		address_mask_c : STD_LOGIC_VECTOR(32-1 downto 0) := X"000000FF"
		);
	Port (
		clk_i : in STD_LOGIC;
		rst_i : in STD_LOGIC;
		-- Slave AXI-Stream
		s_axis_rx_tdata_i : in STD_LOGIC_VECTOR (axis_data_width_c - 1 downto 0);
		s_axis_rx_tkeep_i : in STD_LOGIC_VECTOR (axis_data_width_c/8 - 1 downto 0);
		s_axis_rx_tuser_i : in STD_LOGIC_VECTOR (21 downto 0);
		s_axis_rx_tlast_i : in STD_LOGIC;
		s_axis_rx_tvalid_i : in STD_LOGIC;
		s_axis_rx_ready_o : out STD_LOGIC;
		-- Master AXI-Stream
		m_axis_tx_tdata_o : out STD_LOGIC_VECTOR (axis_data_width_c - 1 downto 0);
		m_axis_tx_tkeep_o : out STD_LOGIC_VECTOR (axis_data_width_c/8 - 1 downto 0);
		m_axis_tx_tuser_o : out STD_LOGIC_VECTOR (3 downto 0);
		m_axis_tx_tlast_o : out STD_LOGIC;
		m_axis_tx_tvalid_o : out STD_LOGIC;
		m_axis_tx_ready_i : in STD_LOGIC;
		-- Wishbone master
		wb_adr_o : out STD_LOGIC_VECTOR (wb_address_width_c - 1 downto 0);
		wb_dat_o : out STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
		wb_dat_i : in STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
		wb_cyc_o : out STD_LOGIC;
		--wb_sel_o : out STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
		wb_stb_o : out STD_LOGIC;
		wb_we_o : out STD_LOGIC;
		wb_ack_i : in STD_LOGIC
	);
end component;

component bram_wbs is
generic (
    constant ADDR_WIDTH : integer := 16;
    constant DATA_WIDTH : integer := 32 
);
port (
    -- SYS CON
    clk			: in std_logic;
    rst			: in std_logic;
    
    -- Wishbone Slave in
    wb_adr_i			: in std_logic_vector(wb_address_width_c-1 downto 0);
    wb_dat_i			: in std_logic_vector(wb_data_width_c-1 downto 0);
    wb_we_i			: in std_logic;
    wb_stb_i			: in std_logic;
    wb_cyc_i			: in std_logic; 
    wb_lock_i		: in std_logic; -- nyi
    
    -- Wishbone Slave out
    wb_dat_o			: out std_logic_vector(wb_data_width_c-1 downto 0);
    wb_ack_o			: out std_logic		
);
end component;

component simple_counter is
    Port ( 
           rst_i : in STD_LOGIC;
           clk_i : in STD_LOGIC;
           count_o : out STD_LOGIC_VECTOR (28 downto 0);
           led_o : out STD_LOGIC_VECTOR (3 downto 0)
            );
end component;

begin

  ------------------------------------------------------------------------------------------------------------------//
  -- PCIe Block EP Tieoffs - Example PIO doesn't support the following inputs                                       //
  ------------------------------------------------------------------------------------------------------------------//


--  s_axis_tx_tuser(0)           <= '0';      -- Unused for V6
--  s_axis_tx_tuser(1)           <= '0';      -- Error forward packet
--  s_axis_tx_tuser(2)           <= '0';      -- Stream packet


  cfg_interrupt_stat           <= '0';      -- Never set the Interrupt Status bit
  cfg_pciecap_interrupt_msgnum <= "00000";  -- Zero out Interrupt Message Number
  cfg_interrupt_assert         <= '0';      -- Always drive interrupt de-assert
  cfg_interrupt                <= '0';      -- Never drive interrupt by qualifying cfg_interrupt_assert
  cfg_interrupt_di             <= x"00";    -- Do not set interrupt fields


  	u1:axis_rx
	generic map(
            axis_data_width_c => axis_data_width_c,
            --address_width_c : integer := 256;
            wb_address_width_c => wb_address_width_c, -- 32k
            wb_data_width_c => wb_data_width_c,
            address_mask_c => address_mask_c
            
	)
	port map(
		clk_i => user_clk,
		rst_i => user_reset,
		-- Slave AXI-Stream
		s_axis_rx_tdata_i => m_axis_rx_tdata,
		s_axis_rx_tkeep_i => m_axis_rx_tkeep,
		s_axis_rx_tlast_i => m_axis_rx_tlast,
		s_axis_rx_ready_o => m_axis_rx_tready,
		s_axis_rx_tuser_i => m_axis_rx_tuser,
		s_axis_rx_tvalid_i => m_axis_rx_tvalid,
		-- Master AXI-Stream
		m_axis_tx_tdata_o => s_axis_tx_tdata,
		m_axis_tx_tkeep_o => s_axis_tx_tkeep,
		m_axis_tx_tuser_o => s_axis_tx_tuser,
		m_axis_tx_tlast_o => s_axis_tx_tlast,
		m_axis_tx_tvalid_o => s_axis_tx_tvalid,
		m_axis_tx_ready_i => s_axis_tx_tready,
		-- Wishbone Master
		wb_adr_o => wb_adr_s,
		wb_dat_o => wb_dat_o_s,
		wb_dat_i => wb_dat_i_s,
		wb_cyc_o => wb_cyc_s,
		--wb_sel_o => wb_sel_s,
		wb_stb_o => wb_stb_s,
		wb_we_o => wb_we_s,
		wb_ack_i => wb_ack_s
	);
	
    u2:bram_wbs
    generic map (
        ADDR_WIDTH => wb_address_width_c,
        DATA_WIDTH => wb_data_width_c 
    )
    port map (
        -- SYS CON
        clk            => user_clk,
        rst            => user_reset,
        
        -- Wishbone Slave in
        wb_adr_i    => wb_adr_s,
        wb_dat_i    => wb_dat_o_s,
        wb_we_i        => wb_we_s,
        wb_stb_i    => wb_stb_s,
        wb_cyc_i    => wb_cyc_s,
        wb_lock_i    => wb_stb_s,
        
        -- Wishbone Slave out
        wb_dat_o    => wb_dat_i_s,
        wb_ack_o    => wb_ack_s
    );
    
    u3 : simple_counter 
        Port map ( 
               rst_i => user_reset,
               clk_i => user_clk,
               count_o => open,
               led_o => led_o
                );
  ------------------------------------------------------------------------------------------------------------------//
  -- Programmable I/O Module                                                                                        //
  ------------------------------------------------------------------------------------------------------------------//

--  cfg_completer_id     <= (others => '0');

--  process (user_clk,user_reset)
--  begin
--   if (user_reset = '1') then
--       s_axis_tx_tready_i <= '0' after TCQ;
--   elsif (user_clk'event and user_clk = '1') then
--       s_axis_tx_tready_i <= s_axis_tx_tready after TCQ;
--   end if;
--  end process;
--       s_axis_tx_tready_i <= s_axis_tx_tready;
  ------------------------------------------------------------------------------------------------------------------//
-- Programmable I/O Module

--PIO_interface : PIO
--  generic map (
--    C_DATA_WIDTH        => C_DATA_WIDTH,
--    TCQ                 => TCQ 
--  )
--  port map (
--    user_clk            => user_clk,           -- I
--    user_reset          => user_reset,         -- I
--    user_lnk_up         => user_lnk_up,        -- I

--    cfg_to_turnoff      => '0',     -- I
--    cfg_completer_id    => (others => '0'),    -- I (15:0)
--    cfg_turnoff_ok      => open,     -- O

--    s_axis_tx_tready    => s_axis_tx_tready_i,   -- I
--    s_axis_tx_tdata     => s_axis_tx_tdata,    -- O
--    s_axis_tx_tkeep     => s_axis_tx_tkeep,    -- O
--    s_axis_tx_tlast     => s_axis_tx_tlast,    -- O
--    s_axis_tx_tvalid    => s_axis_tx_tvalid,   -- O
--    tx_src_dsc          => s_axis_tx_tuser(3), -- O

--    m_axis_rx_tdata     => m_axis_rx_tdata,    -- I
--    m_axis_rx_tkeep     => m_axis_rx_tkeep,    -- I
--    m_axis_rx_tlast     => m_axis_rx_tlast,    -- I
--    m_axis_rx_tvalid    => m_axis_rx_tvalid,   -- I
--    m_axis_rx_tready    => m_axis_rx_tready,   -- O
--    m_axis_rx_tuser     => m_axis_rx_tuser     -- I
--  );

end; -- pcie_app
