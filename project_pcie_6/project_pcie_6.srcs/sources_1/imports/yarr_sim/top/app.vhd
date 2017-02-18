----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2016 01:10:56 PM
-- Design Name: 
-- Module Name: app - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity app is
    Generic(
        AXI_BUS_WIDTH : integer := 64;
        axis_data_width_c : integer := 64;
        axis_rx_tkeep_width_c : integer := 64/8;
        axis_rx_tuser_width_c : integer := 22;
        wb_address_width_c : integer := 32;
        wb_data_width_c : integer := 32;
        address_mask_c : STD_LOGIC_VECTOR(32-1 downto 0) := X"000FFFFF"
        );
    Port ( clk_i : in STD_LOGIC;
           rst_i : in STD_LOGIC;
           user_lnk_up_i : in STD_LOGIC;
           user_app_rdy_i : in STD_LOGIC;
           
           -- AXI-Stream bus
           m_axis_tx_tready_i : in STD_LOGIC;
           m_axis_tx_tdata_o : out STD_LOGIC_VECTOR(AXI_BUS_WIDTH-1 DOWNTO 0);
           m_axis_tx_tkeep_o : out STD_LOGIC_VECTOR(AXI_BUS_WIDTH/8-1 DOWNTO 0);
           m_axis_tx_tlast_o : out STD_LOGIC;
           m_axis_tx_tvalid_o : out STD_LOGIC;
           m_axis_tx_tuser_o : out STD_LOGIC_VECTOR(3 DOWNTO 0);
           s_axis_rx_tdata_i : in STD_LOGIC_VECTOR(AXI_BUS_WIDTH-1 DOWNTO 0);
           s_axis_rx_tkeep_i : in STD_LOGIC_VECTOR(AXI_BUS_WIDTH/8-1 DOWNTO 0);
           s_axis_rx_tlast_i : in STD_LOGIC;
           s_axis_rx_tvalid_i : in STD_LOGIC;
           s_axis_rx_tready_o : out STD_LOGIC;
           s_axis_rx_tuser_i : in STD_LOGIC_VECTOR(21 DOWNTO 0);
           
           -- PCIe interrupt config
           cfg_interrupt_o : out STD_LOGIC;
           cfg_interrupt_rdy_i : in STD_LOGIC;
           cfg_interrupt_assert_o : out STD_LOGIC;
           cfg_interrupt_di_o : out STD_LOGIC_VECTOR(7 DOWNTO 0);
           cfg_interrupt_do_i : in STD_LOGIC_VECTOR(7 DOWNTO 0);
           cfg_interrupt_mmenable_i : in STD_LOGIC_VECTOR(2 DOWNTO 0);
           cfg_interrupt_msienable_i : in STD_LOGIC;
           cfg_interrupt_msixenable_i : in STD_LOGIC;
           cfg_interrupt_msixfm_i : in STD_LOGIC;
           cfg_interrupt_stat_o : out STD_LOGIC;
           cfg_pciecap_interrupt_msgnum_o : out STD_LOGIC_VECTOR(4 DOWNTO 0);
           
           -- PCIe debug
           cfg_dstatus_i : in STD_LOGIC_VECTOR(15 DOWNTO 0);
           
           --I/O
           usr_sw_i : in STD_LOGIC_VECTOR (2 downto 0);
           usr_led_o : out STD_LOGIC_VECTOR (3 downto 0);
           front_led_o : out STD_LOGIC_VECTOR (3 downto 0)
           );
end app;

architecture Behavioral of app is
    
    constant DEBUG_C : std_logic_vector(4 downto 0) := "00011";
    
    component simple_counter is
        Port ( 
               rst_i : in STD_LOGIC;
               clk_i : in STD_LOGIC;
               count_o : out STD_LOGIC_VECTOR (28 downto 0)
                );
    end component;
    
--	Component wb_master64 is
--		Generic (
--			axis_data_width_c : integer := 64;
--			wb_address_width_c : integer := 64;
--			wb_data_width_c : integer := 32;
--			address_mask_c : STD_LOGIC_VECTOR(64-1 downto 0) := X"00000000" & X"000FFFFF" -- depends on pcie memory size
--		);
--		Port (
--			clk_i : in STD_LOGIC;
--			rst_i : in STD_LOGIC;
--			-- Slave AXI-Stream
--			s_axis_rx_tdata_i : in STD_LOGIC_VECTOR (axis_data_width_c - 1 downto 0);
--			s_axis_rx_tkeep_i : in STD_LOGIC_VECTOR (axis_data_width_c/8 - 1 downto 0);
--			s_axis_rx_tuser_i : in STD_LOGIC_VECTOR (21 downto 0);
--			s_axis_rx_tlast_i : in STD_LOGIC;
--			s_axis_rx_tvalid_i : in STD_LOGIC;
--			s_axis_rx_tready_o : out STD_LOGIC;
--			-- Master AXI-Stream
--			wbm_arb_tdata_o : out STD_LOGIC_VECTOR (axis_data_width_c - 1 downto 0);
--			wbm_arb_tkeep_o : out STD_LOGIC_VECTOR (axis_data_width_c/8 - 1 downto 0);
--			wbm_arb_tuser_o : out STD_LOGIC_VECTOR (3 downto 0);
--			wbm_arb_tlast_o : out STD_LOGIC;
--			wbm_arb_tvalid_o : out STD_LOGIC;
--			wbm_arb_tready_i : in STD_LOGIC;
--			wbm_arb_req_o    : out  std_logic;
--			-- L2P DMA
--			pd_pdm_data_valid_o  : out std_logic;                      -- Indicates Data is valid
--			pd_pdm_data_last_o   : out std_logic;                      -- Indicates end of the packet
--			pd_pdm_data_o        : out std_logic_vector(63 downto 0);  -- Data
--			pd_pdm_keep_o        : out std_logic_vector(7 downto 0);
--			-- Wishbone master
--			wb_adr_o : out STD_LOGIC_VECTOR (64 - 1 downto 0);
--			wb_dat_o : out STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
--			wb_dat_i : in STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
--			wb_cyc_o : out STD_LOGIC;
--			--wb_sel_o : out STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
--			wb_stb_o : out STD_LOGIC;
--			wb_we_o : out STD_LOGIC;
--			wb_ack_i : in STD_LOGIC;
--            --debug outputs
--            states_do : out STD_LOGIC_VECTOR(3 downto 0);
--            op_do : out STD_LOGIC_VECTOR(2 downto 0);
--            header_type_do : out STD_LOGIC;
--            payload_length_do : out STD_LOGIC_VECTOR(9 downto 0);
--            address_do : out STD_LOGIC_VECTOR(31 downto 0)
--		);
--	end component;

        Component p2l_decoder is
        Port (
            clk_i : in STD_LOGIC;
            rst_i : in STD_LOGIC;
            -- Slave AXI-Stream
            s_axis_rx_tdata_i : in STD_LOGIC_VECTOR (64 - 1 downto 0);
            s_axis_rx_tkeep_i : in STD_LOGIC_VECTOR (64/8 - 1 downto 0);
            s_axis_rx_tuser_i : in STD_LOGIC_VECTOR (21 downto 0);
            s_axis_rx_tlast_i : in STD_LOGIC;
            s_axis_rx_tvalid_i : in STD_LOGIC;
            s_axis_rx_tready_o : out STD_LOGIC;
            -- To the wishbone master
            pd_wbm_address_o : out STD_LOGIC_VECTOR(63 downto 0);
            pd_wbm_data_o : out STD_LOGIC_VECTOR(31 downto 0);
            pd_wbm_valid_o : out std_logic;
            wbm_pd_ready_i : in std_logic;
            pd_op_o : out STD_LOGIC_VECTOR(2 downto 0);
            pd_header_type_o : out STD_LOGIC;
            pd_payload_length_o : out STD_LOGIC_VECTOR(9 downto 0);
            -- L2P DMA
            pd_pdm_data_valid_o  : out std_logic;                      -- Indicates Data is valid
            pd_pdm_data_last_o   : out std_logic;                      -- Indicates end of the packet
            pd_pdm_keep_o        : out std_logic_vector(7 downto 0);
            pd_pdm_data_o        : out std_logic_vector(63 downto 0);  -- Data
 
            --debug outputs
            states_do : out STD_LOGIC_VECTOR(3 downto 0)
        );
        end component;
       
        component wb_master is
            Port (
                clk_i : in STD_LOGIC;
                rst_i : in STD_LOGIC;
                -- From packet decoder
                pd_wbm_address_i : in STD_LOGIC_VECTOR(63 downto 0);
                pd_wbm_data_i : in STD_LOGIC_VECTOR(31 downto 0);
                pd_wbm_valid_i : in std_logic;
                wbm_pd_ready_o : out std_logic;
                pd_op_i : in STD_LOGIC_VECTOR(2 downto 0);
                -- Master AXI-Stream
                wbm_arb_tdata_o : out STD_LOGIC_VECTOR (64 - 1 downto 0);
                wbm_arb_tkeep_o : out STD_LOGIC_VECTOR (64/8 - 1 downto 0);
                wbm_arb_tuser_o : out STD_LOGIC_VECTOR (3 downto 0);
                wbm_arb_tlast_o : out STD_LOGIC;
                wbm_arb_tvalid_o : out STD_LOGIC;
                wbm_arb_tready_i : in STD_LOGIC;
                wbm_arb_req_o    : out  std_logic;
       
                -- Wishbone master
                wb_adr_o : out STD_LOGIC_VECTOR (32 - 1 downto 0);
                wb_dat_o : out STD_LOGIC_VECTOR (32 - 1 downto 0);
                wb_dat_i : in STD_LOGIC_VECTOR (32 - 1 downto 0);
                wb_cyc_o : out STD_LOGIC;
                wb_stb_o : out STD_LOGIC;
                wb_we_o : out STD_LOGIC;
                wb_ack_i : in STD_LOGIC
            );
        end component;
 
	component dma_controller is
	  port
		(
		  ---------------------------------------------------------
		  -- GN4124 core clock and reset
		  clk_i   : in std_logic;
		  rst_n_i : in std_logic;

		  ---------------------------------------------------------
		  -- Interrupt request
		  dma_ctrl_irq_o : out std_logic_vector(1 downto 0);

		  ---------------------------------------------------------
		  -- To the L2P DMA master and P2L DMA master
		  dma_ctrl_carrier_addr_o : out std_logic_vector(31 downto 0);
		  dma_ctrl_host_addr_h_o  : out std_logic_vector(31 downto 0);
		  dma_ctrl_host_addr_l_o  : out std_logic_vector(31 downto 0);
		  dma_ctrl_len_o          : out std_logic_vector(31 downto 0);
		  dma_ctrl_start_l2p_o    : out std_logic;  -- To the L2P DMA master
		  dma_ctrl_start_p2l_o    : out std_logic;  -- To the P2L DMA master
		  dma_ctrl_start_next_o   : out std_logic;  -- To the P2L DMA master
		  dma_ctrl_byte_swap_o    : out std_logic_vector(1 downto 0);
		  dma_ctrl_abort_o        : out std_logic;
		  dma_ctrl_done_i         : in  std_logic;
		  dma_ctrl_error_i        : in  std_logic;

		  ---------------------------------------------------------
		  -- From P2L DMA master
		  next_item_carrier_addr_i : in std_logic_vector(31 downto 0);
		  next_item_host_addr_h_i  : in std_logic_vector(31 downto 0);
		  next_item_host_addr_l_i  : in std_logic_vector(31 downto 0);
		  next_item_len_i          : in std_logic_vector(31 downto 0);
		  next_item_next_l_i       : in std_logic_vector(31 downto 0);
		  next_item_next_h_i       : in std_logic_vector(31 downto 0);
		  next_item_attrib_i       : in std_logic_vector(31 downto 0);
		  next_item_valid_i        : in std_logic;

		  ---------------------------------------------------------
		  -- Wishbone slave interface
		  wb_clk_i : in  std_logic;                      -- Bus clock
		  wb_adr_i : in  std_logic_vector(3 downto 0);   -- Adress
		  wb_dat_o : out std_logic_vector(31 downto 0);  -- Data in
		  wb_dat_i : in  std_logic_vector(31 downto 0);  -- Data out
		  wb_sel_i : in  std_logic_vector(3 downto 0);   -- Byte select
		  wb_cyc_i : in  std_logic;                      -- Read or write cycle
		  wb_stb_i : in  std_logic;                      -- Read or write strobe
		  wb_we_i  : in  std_logic;                      -- Write
		  wb_ack_o : out std_logic;                       -- Acknowledge
		  
		  ---------------------------------------------------------
          -- debug outputs
          dma_ctrl_current_state_do : out std_logic_vector (2 downto 0);
          dma_ctrl_do    : out std_logic_vector(31 downto 0);
          dma_stat_do    : out std_logic_vector(31 downto 0);
          dma_attrib_do  : out std_logic_vector(31 downto 0)
		  );
	end component;
 
    component bram_wbs is
    generic (
        constant ADDR_WIDTH : integer := 16;
        constant DATA_WIDTH : integer := 64 
    );
    port (
        -- SYS CON
        clk            : in std_logic;
        rst            : in std_logic;
        
        -- Wishbone Slave in
        wb_adr_i            : in std_logic_vector(wb_address_width_c-1 downto 0);
        wb_dat_i            : in std_logic_vector(64-1 downto 0);
        wb_we_i            : in std_logic;
        wb_stb_i            : in std_logic;
        wb_cyc_i            : in std_logic; 
        wb_lock_i        : in std_logic; -- nyi
        
        -- Wishbone Slave out
        wb_dat_o            : out std_logic_vector(64-1 downto 0);
        wb_ack_o            : out std_logic        
    );
    end component;
    
    component bram_wbs32 is
        generic (
            constant ADDR_WIDTH : integer := 16;
            constant DATA_WIDTH : integer := 32 
        );
        port (
            -- SYS CON
            clk            : in std_logic;
            rst            : in std_logic;
            
            -- Wishbone Slave in
            wb_adr_i            : in std_logic_vector(5-1 downto 0);
            wb_dat_i            : in std_logic_vector(32-1 downto 0);
            wb_we_i            : in std_logic;
            wb_stb_i            : in std_logic;
            wb_cyc_i            : in std_logic; 
            wb_lock_i        : in std_logic; -- nyi
            
            -- Wishbone Slave out
            wb_dat_o            : out std_logic_vector(32-1 downto 0);
            wb_ack_o            : out std_logic        
        );
    end component;
    
    component k_bram is
      generic (
        constant ADDR_WIDTH : integer := 9+4;
        constant DATA_WIDTH : integer := 32 
      );
      Port ( 
          -- SYS CON
          clk            : in std_logic;
          rst            : in std_logic;
          
          -- Wishbone Slave in
          wb_adr_i            : in std_logic_vector(9+4-1 downto 0);
          wb_dat_i            : in std_logic_vector(64-1 downto 0);
          wb_we_i            : in std_logic;
          wb_stb_i            : in std_logic;
          wb_cyc_i            : in std_logic; 
          wb_lock_i        : in std_logic; -- nyi
          
          -- Wishbone Slave out
          wb_dat_o            : out std_logic_vector(64-1 downto 0);
          wb_ack_o            : out std_logic
      
      );
    end component;
    
    component k2_bram is
        generic (
          constant ADDR_WIDTH : integer := 11;
          constant DATA_WIDTH : integer := 64 
        );
        Port ( 
            -- SYS CON
            clk            : in std_logic;
            rst            : in std_logic;
            
            -- Wishbone Slave in
            wb_adr_i            : in std_logic_vector(ADDR_WIDTH-1 downto 0);
            wb_dat_i            : in std_logic_vector(DATA_WIDTH-1 downto 0);
            wb_we_i            : in std_logic;
            wb_stb_i            : in std_logic;
            wb_cyc_i            : in std_logic; 
            wb_lock_i        : in std_logic; -- nyi
            
            -- Wishbone Slave out
            wb_dat_o            : out std_logic_vector(DATA_WIDTH-1 downto 0);
            wb_ack_o            : out std_logic
        
        );
    end component;
	
	component l2p_arbiter is
	  generic(
		axis_data_width_c : integer := 64
	  );
	  port
		(
		  ---------------------------------------------------------
		  -- GN4124 core clock and reset
		  clk_i   : in std_logic;
		  rst_n_i : in std_logic;

		  ---------------------------------------------------------
		  -- From Wishbone master (wbm) to arbiter (arb)      
		  wbm_arb_tdata_i : in std_logic_vector (axis_data_width_c - 1 downto 0);
		  wbm_arb_tkeep_i : in std_logic_vector (axis_data_width_c/8 - 1 downto 0);
		  wbm_arb_tlast_i : in std_logic;
		  wbm_arb_tvalid_i : in std_logic;
		  wbm_arb_tready_o : out std_logic;
		  wbm_arb_req_i    : in  std_logic;
		  arb_wbm_gnt_o : out std_logic;

		  ---------------------------------------------------------
		  -- From P2L DMA master (pdm) to arbiter (arb)
		  pdm_arb_tdata_i : in std_logic_vector (axis_data_width_c - 1 downto 0);
		  pdm_arb_tkeep_i : in std_logic_vector (axis_data_width_c/8 - 1 downto 0);
		  pdm_arb_tlast_i : in std_logic;
		  pdm_arb_tvalid_i : in std_logic;
		  pdm_arb_tready_o : out std_logic;
		  pdm_arb_req_i    : in  std_logic;
		  arb_pdm_gnt_o : out std_logic;

		  ---------------------------------------------------------
		  -- From L2P DMA master (ldm) to arbiter (arb)
		  ldm_arb_tdata_i : in std_logic_vector (axis_data_width_c - 1 downto 0);
		  ldm_arb_tkeep_i : in std_logic_vector (axis_data_width_c/8 - 1 downto 0);
		  ldm_arb_tlast_i : in std_logic;
		  ldm_arb_tvalid_i : in std_logic;
		  ldm_arb_tready_o : out std_logic;
		  ldm_arb_req_i    : in  std_logic;
		  arb_ldm_gnt_o : out std_logic;

		  ---------------------------------------------------------
		  -- From arbiter (arb) to pcie_tx (tx)
		  axis_tx_tdata_o : out STD_LOGIC_VECTOR (axis_data_width_c - 1 downto 0);
		  axis_tx_tkeep_o : out STD_LOGIC_VECTOR (axis_data_width_c/8 - 1 downto 0);
		  axis_tx_tuser_o : out STD_LOGIC_VECTOR (3 downto 0);
		  axis_tx_tlast_o : out STD_LOGIC;
		  axis_tx_tvalid_o : out STD_LOGIC;
		  axis_tx_tready_i : in STD_LOGIC;
		  
		  ---------------------------------------------------------
		  -- Debug
		  eop_do : out std_logic
		  );
	end component;
    
	
	
	component p2l_dma_master is
	  generic (
		-- Enable byte swap module (if false, no swap)
		g_BYTE_SWAP : boolean := false
		);
	  port
		(
		  ---------------------------------------------------------
		  -- GN4124 core clock and reset
		  clk_i   : in std_logic;
		  rst_n_i : in std_logic;

		  ---------------------------------------------------------
		  -- From the DMA controller
		  dma_ctrl_carrier_addr_i : in  std_logic_vector(31 downto 0);
		  dma_ctrl_host_addr_h_i  : in  std_logic_vector(31 downto 0);
		  dma_ctrl_host_addr_l_i  : in  std_logic_vector(31 downto 0);
		  dma_ctrl_len_i          : in  std_logic_vector(31 downto 0);
		  dma_ctrl_start_p2l_i    : in  std_logic;
		  dma_ctrl_start_next_i   : in  std_logic;
		  dma_ctrl_done_o         : out std_logic;
		  dma_ctrl_error_o        : out std_logic;
		  dma_ctrl_byte_swap_i    : in  std_logic_vector(2 downto 0);
		  dma_ctrl_abort_i        : in  std_logic;

		  ---------------------------------------------------------
		  -- From P2L Decoder (receive the read completion)
		  --
		  -- Header
		  --pd_pdm_hdr_start_i   : in std_logic;                      -- Header strobe
		  --pd_pdm_hdr_length_i  : in std_logic_vector(9 downto 0);   -- Packet length in 32-bit words multiples
		  --pd_pdm_hdr_cid_i     : in std_logic_vector(1 downto 0);   -- Completion ID
		  --pd_pdm_op_i     : in std_logic_vector(2 downto 0);        
		  pd_pdm_master_cpld_i : in std_logic;                      -- Master read completion with data
		  pd_pdm_master_cpln_i : in std_logic;                      -- Master read completion without data
		  --
		  -- Data
		  pd_pdm_data_valid_i  : in std_logic;                      -- Indicates Data is valid
		  pd_pdm_data_last_i   : in std_logic;                      -- Indicates end of the packet
		  pd_pdm_data_i        : in std_logic_vector(63 downto 0);  -- Data
		  pd_pdm_be_i          : in std_logic_vector(7 downto 0);   -- Byte Enable for data

		  ---------------------------------------------------------
		  -- P2L control
		  p2l_rdy_o  : out std_logic;       -- De-asserted to pause transfer already in progress
		  rx_error_o : out std_logic;       -- Asserted when transfer is aborted

		  ---------------------------------------------------------
		  -- To the P2L Interface (send the DMA Master Read request)
		  pdm_arb_tvalid_o  : out std_logic;  -- Read completion signals
		  pdm_arb_tlast_o : out std_logic;  -- Toward the arbiter
		  pdm_arb_tdata_o   : out std_logic_vector(63 downto 0);
		  pdm_arb_tkeep_o   : out std_logic_vector(7 downto 0);
		  pdm_arb_req_o    : out std_logic;
		  arb_pdm_gnt_i    : in  std_logic;

		  ---------------------------------------------------------
		  -- DMA Interface (Pipelined Wishbone)
		  p2l_dma_clk_i   : in  std_logic;                      -- Bus clock
		  p2l_dma_adr_o   : out std_logic_vector(31 downto 0);  -- Adress
		  p2l_dma_dat_i   : in  std_logic_vector(63 downto 0);  -- Data in
		  p2l_dma_dat_o   : out std_logic_vector(63 downto 0);  -- Data out
		  p2l_dma_sel_o   : out std_logic_vector(7 downto 0);   -- Byte select
		  p2l_dma_cyc_o   : out std_logic;                      -- Read or write cycle
		  p2l_dma_stb_o   : out std_logic;                      -- Read or write strobe
		  p2l_dma_we_o    : out std_logic;                      -- Write
		  p2l_dma_ack_i   : in  std_logic;                      -- Acknowledge
		  p2l_dma_stall_i : in  std_logic;                      -- for pipelined Wishbone
		  l2p_dma_cyc_i   : in  std_logic;                      -- L2P dma wb cycle (for bus arbitration)

		  ---------------------------------------------------------
		  -- To the DMA controller
		  next_item_carrier_addr_o : out std_logic_vector(31 downto 0);
		  next_item_host_addr_h_o  : out std_logic_vector(31 downto 0);
		  next_item_host_addr_l_o  : out std_logic_vector(31 downto 0);
		  next_item_len_o          : out std_logic_vector(31 downto 0);
		  next_item_next_l_o       : out std_logic_vector(31 downto 0);
		  next_item_next_h_o       : out std_logic_vector(31 downto 0);
		  next_item_attrib_o       : out std_logic_vector(31 downto 0);
		  next_item_valid_o        : out std_logic
		  );
	end component;
	
	component l2p_dma_master is
		generic (
			g_BYTE_SWAP : boolean := false;
			axis_data_width_c : integer := 64;
			wb_address_width_c : integer := 64;
			wb_data_width_c : integer := 64
		);
		port (
			-- GN4124 core clk and reset
			clk_i   : in std_logic;
			rst_n_i : in std_logic;

			-- From the DMA controller
			dma_ctrl_target_addr_i : in  std_logic_vector(32-1 downto 0);
			dma_ctrl_host_addr_h_i : in  std_logic_vector(32-1 downto 0);
			dma_ctrl_host_addr_l_i : in  std_logic_vector(32-1 downto 0);
			dma_ctrl_len_i         : in  std_logic_vector(32-1 downto 0);
			dma_ctrl_start_l2p_i   : in  std_logic;
			dma_ctrl_done_o        : out std_logic;
			dma_ctrl_error_o       : out std_logic;
			dma_ctrl_byte_swap_i   : in  std_logic_vector(2 downto 0);
			dma_ctrl_abort_i       : in  std_logic;

			-- To the arbiter (L2P data)
			ldm_arb_tvalid_o  : out std_logic;
			--ldm_arb_dframe_o : out std_logic;
			ldm_arb_tlast_o   : out std_logic;
			ldm_arb_tdata_o   : out std_logic_vector(axis_data_width_c-1 downto 0);
			ldm_arb_tkeep_o   : out std_logic_vector(axis_data_width_c/8-1 downto 0);
			ldm_arb_tready_i : in  std_logic;
			ldm_arb_req_o    : out std_logic;
			arb_ldm_gnt_i    : in  std_logic;


			-- L2P channel control
			l2p_edb_o  : out std_logic;                    -- Asserted when transfer is aborted
			l2p_rdy_i  : in  std_logic;                    -- De-asserted to pause transdert already in progress
			--l2p_64b_address_i : in std_logic;
			tx_error_i : in  std_logic;                    -- Asserted when unexpected or malformed paket received

			-- DMA Interface (Pipelined Wishbone)
			l2p_dma_clk_i   : in  std_logic;
			l2p_dma_adr_o   : out std_logic_vector(wb_address_width_c-1 downto 0);
			l2p_dma_dat_i   : in  std_logic_vector(wb_data_width_c-1 downto 0);
			l2p_dma_dat_o   : out std_logic_vector(wb_data_width_c-1 downto 0);
			l2p_dma_sel_o   : out std_logic_vector(3 downto 0);
			l2p_dma_cyc_o   : out std_logic;
			l2p_dma_stb_o   : out std_logic;
			l2p_dma_we_o    : out std_logic;
			l2p_dma_ack_i   : in  std_logic;
			l2p_dma_stall_i : in  std_logic;
			p2l_dma_cyc_i   : in  std_logic; -- P2L dma WB cycle for bus arbitration
			
			--DMA Debug
            l2p_current_state_do : out std_logic_vector (2 downto 0);
            l2p_data_cnt_do : out unsigned(12 downto 0);
            l2p_len_cnt_do  : out unsigned(12 downto 0);
            l2p_timeout_cnt_do : out unsigned(12 downto 0);
            wb_timeout_cnt_do  : out unsigned(12 downto 0);
            
            -- Data FIFO
            data_fifo_rd_do    : out std_logic;
            data_fifo_wr_do    : out std_logic;
            data_fifo_empty_do : out std_logic;
            data_fifo_full_do  : out std_logic;
            data_fifo_dout_do  : out std_logic_vector(axis_data_width_c-1 downto 0);
            data_fifo_din_do   : out std_logic_vector(axis_data_width_c-1 downto 0);
            
            -- Addr FIFO
            addr_fifo_rd_do    : out std_logic;
            addr_fifo_wr_do    : out std_logic;
            addr_fifo_empty_do : out std_logic;
            addr_fifo_full_do  : out std_logic;
            addr_fifo_dout_do  : out std_logic_vector(axis_data_width_c-1 downto 0);
            addr_fifo_din_do   : out std_logic_vector(axis_data_width_c-1 downto 0)
		);
	end component;
	
COMPONENT ila_axis
    
    PORT (
        clk : IN STD_LOGIC;
    
    
    
        probe0 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
        probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe5 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe6 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
        probe7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe8 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe9 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe10 : IN STD_LOGIC_VECTOR(21 DOWNTO 0); 
        probe11 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe12 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe13 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe14 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe15 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe16 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe17 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe18 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe19 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe20 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe21 : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
        
    );
    END COMPONENT  ;
    
    COMPONENT ila_dma_ctrl_reg
    
    PORT (
        clk : IN STD_LOGIC;
    
    
    
	    probe0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe7 : IN STD_LOGIC_VECTOR(1 DOWNTO 0); 
        probe8 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe9 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe10 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe11 : IN STD_LOGIC_VECTOR(2 DOWNTO 0); 
        probe12 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe13 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe14 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe15 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe16 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe17 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe18 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        probe19 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe20 : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
    END COMPONENT  ;
    
    COMPONENT ila_wsh_pipe
    
    PORT (
        clk : IN STD_LOGIC;
    
    
    
        probe0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe1 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe2 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
        probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe8 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe9 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe10 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe11 : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
    END COMPONENT  ;
    
    COMPONENT ila_pd_pdm
    
    PORT (
        clk : IN STD_LOGIC;
    
    
    
        probe0 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe3 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe4 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
        probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe8 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        probe9 : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
    END COMPONENT  ;
    
COMPONENT ila_l2p_dma
    
    PORT (
        clk : IN STD_LOGIC;
    
    
    
        probe0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe8 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe9 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe10 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe11 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
        probe12 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe13 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe14 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe15 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe16 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe17 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe18 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe19 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe20 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe21 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe22 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe23 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe24 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe25 : IN STD_LOGIC_VECTOR(2 DOWNTO 0); 
        probe26 : IN STD_LOGIC_VECTOR(12 DOWNTO 0); 
        probe27 : IN STD_LOGIC_VECTOR(12 DOWNTO 0); 
        probe28 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe29 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe30 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe31 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe32 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe33 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe34 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe35 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe36 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe37 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe38 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe39 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe40 : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
        probe41 : IN STD_LOGIC_VECTOR(12 DOWNTO 0)
    );
    END COMPONENT  ;
    
    signal rst_n_s : std_logic;
    signal count_s : STD_LOGIC_VECTOR (28 downto 0);
    signal eop_s : std_logic; -- Arbiter end of operation
    signal cfg_interrupt_s : std_logic;
    
    ---------------------------------------------------------
    -- debug signals
    signal wbm_states_ds : STD_LOGIC_VECTOR(3 downto 0);
    signal wbm_op_ds : STD_LOGIC_VECTOR(2 downto 0);
    signal wbm_header_type_ds : STD_LOGIC;
    signal wbm_payload_length_ds : STD_LOGIC_VECTOR(9 downto 0);
    signal wbm_address_ds : STD_LOGIC_VECTOR(31 downto 0);
    signal dma_ctrl_current_state_ds : std_logic_vector (2 downto 0);
    signal dma_ctrl_ds    : std_logic_vector(31 downto 0);
    signal dma_stat_ds    : std_logic_vector(31 downto 0);
    signal dma_attrib_ds  : std_logic_vector(31 downto 0);
    
	---------------------------------------------------------
    -- CSR Wishbone bus
    signal wb_adr_s : STD_LOGIC_VECTOR (32 - 1 downto 0);
    signal wb_dat_o_s : STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
    signal wb_dat_i_s : STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
    signal wb_cyc_s : STD_LOGIC;
    signal wb_sel_s : STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
    signal wb_stb_s : STD_LOGIC;
    signal wb_we_s : STD_LOGIC;
    signal wb_ack_s : STD_LOGIC;
    
    signal wb_dma_ctrl_adr_s : STD_LOGIC_VECTOR (32 - 1 downto 0);
    signal wb_dma_ctrl_dat_m2s_s : STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
    signal wb_dma_ctrl_dat_s2m_s : STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
    signal wb_dma_ctrl_cyc_s : STD_LOGIC;
    signal wb_dma_ctrl_sel_s : STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
    signal wb_dma_ctrl_stb_s : STD_LOGIC;
    signal wb_dma_ctrl_we_s : STD_LOGIC;
    signal wb_dma_ctrl_ack_s : STD_LOGIC;    
    
    signal wb_mem_adr_s : STD_LOGIC_VECTOR (32 - 1 downto 0);
    signal wb_mem_dat_m2s_s : STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
    signal wb_mem_dat_s2m_s : STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
    signal wb_mem_cyc_s : STD_LOGIC;
    signal wb_mem_sel_s : STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
    signal wb_mem_stb_s : STD_LOGIC;
    signal wb_mem_we_s : STD_LOGIC;
    signal wb_mem_ack_s : STD_LOGIC;
    

    
	---------------------------------------------------------
    -- Slave AXI-Stream from arbiter to pcie_tx
    signal s_axis_rx_tdata_s : STD_LOGIC_VECTOR (axis_data_width_c - 1 downto 0);
    signal s_axis_rx_tkeep_s : STD_LOGIC_VECTOR (axis_data_width_c/8 - 1 downto 0);
    signal s_axis_rx_tuser_s : STD_LOGIC_VECTOR (21 downto 0);
    signal s_axis_rx_tlast_s : STD_LOGIC;
    signal s_axis_rx_tvalid_s :STD_LOGIC;
    signal s_axis_rx_tready_s : STD_LOGIC;
    
	---------------------------------------------------------
	-- Master AXI-Stream pcie_rx to wishbone master
    signal m_axis_tx_tdata_s : STD_LOGIC_VECTOR (axis_data_width_c - 1 downto 0);
    signal m_axis_tx_tkeep_s : STD_LOGIC_VECTOR (axis_data_width_c/8 - 1 downto 0);
    signal m_axis_tx_tuser_s : STD_LOGIC_VECTOR (3 downto 0);
    signal m_axis_tx_tlast_s : STD_LOGIC;
    signal m_axis_tx_tvalid_s : STD_LOGIC;
    signal m_axis_tx_tready_s : STD_LOGIC;
    
    ---------------------------------------------------------
    -- From Wishbone master (wbm) to L2P DMA    
    signal pd_wbm_address_s : STD_LOGIC_VECTOR(63 downto 0);
    signal pd_wbm_data_s : STD_LOGIC_VECTOR(31 downto 0);
    signal pd_wbm_valid_s : std_logic;
    signal wbm_pd_ready_s : std_logic;
    signal pd_op_s : STD_LOGIC_VECTOR(2 downto 0);
    signal pd_header_type_s : STD_LOGIC;
    signal pd_payload_length_s : STD_LOGIC_VECTOR(9 downto 0);
    
	---------------------------------------------------------
	-- From Wishbone master (wbm) to L2P DMA
	signal pd_pdm_data_valid_s : STD_LOGIC;
	signal pd_pdm_data_last_s : STD_LOGIC;
	signal pd_pdm_data_s : STD_LOGIC_VECTOR(axis_data_width_c - 1 downto 0);
	signal pd_pdm_keep_s : std_logic_vector(7 downto 0);
	
    ---------------------------------------------------------
    -- From Wishbone master (wbm) to arbiter (arb)      
    signal wbm_arb_tdata_s : std_logic_vector (axis_data_width_c - 1 downto 0);
    signal wbm_arb_tkeep_s : std_logic_vector (axis_data_width_c/8 - 1 downto 0);
    signal wbm_arb_tlast_s : std_logic;
    signal wbm_arb_tvalid_s : std_logic;
    signal wbm_arb_req_s    : std_logic;
    signal wbm_arb_tready_s : std_logic;
	
	signal dma_ctrl_irq_s : std_logic_vector(1 downto 0);
	
	---------------------------------------------------------
	-- To the L2P DMA master and P2L DMA master
	signal dma_ctrl_carrier_addr_s : std_logic_vector(31 downto 0);
	signal dma_ctrl_host_addr_h_s  : std_logic_vector(31 downto 0);
	signal dma_ctrl_host_addr_l_s  : std_logic_vector(31 downto 0);
	signal dma_ctrl_len_s          : std_logic_vector(31 downto 0);
	signal dma_ctrl_start_l2p_s    : std_logic;  -- To the L2P DMA master
	signal dma_ctrl_start_p2l_s    : std_logic;  -- To the P2L DMA master
	signal dma_ctrl_start_next_s   : std_logic;  -- To the P2L DMA master
	signal dma_ctrl_byte_swap_s    : std_logic_vector(1 downto 0);
	signal dma_ctrl_abort_s        : std_logic;
	signal dma_ctrl_done_s         : std_logic;
	signal dma_ctrl_error_s        : std_logic;
	signal dma_ctrl_l2p_done_s         : std_logic;
	signal dma_ctrl_l2p_error_s        : std_logic;
	signal dma_ctrl_p2l_done_s         : std_logic;
	signal dma_ctrl_p2l_error_s        : std_logic;
	
	---------------------------------------------------------
	-- From P2L DMA master
	signal next_item_carrier_addr_s : std_logic_vector(31 downto 0);
	signal next_item_host_addr_h_s  : std_logic_vector(31 downto 0);
	signal next_item_host_addr_l_s  : std_logic_vector(31 downto 0);
	signal next_item_len_s          : std_logic_vector(31 downto 0);
	signal next_item_next_l_s       : std_logic_vector(31 downto 0);
	signal next_item_next_h_s       : std_logic_vector(31 downto 0);
	signal next_item_attrib_s       : std_logic_vector(31 downto 0);
	signal next_item_valid_s        : std_logic;
	
	
	---------------------------------------------------------
	-- To the P2L Interface (send the DMA Master Read request)
	signal pdm_arb_tvalid_s  : std_logic;  -- Read completion signals
	signal pdm_arb_tlast_s : std_logic;  -- Toward the arbiter
	signal pdm_arb_tdata_s   : std_logic_vector(63 downto 0);
	signal pdm_arb_tkeep_s : std_logic_vector(7 downto 0);
	signal pdm_arb_req_s    : std_logic;
	signal pdm_arb_tready_s    : std_logic;
	
	---------------------------------------------------------
	-- DMA Interface (Pipelined Wishbone)
	signal p2l_dma_adr_s   :  std_logic_vector(31 downto 0);  -- Adress
	signal p2l_dma_dat_s2m_s   :  std_logic_vector(63 downto 0);  -- Data in
	signal p2l_dma_dat_m2s_s   :  std_logic_vector(63 downto 0);  -- Data out
	signal p2l_dma_sel_s   :  std_logic_vector(7 downto 0);   -- Byte select
	signal p2l_dma_cyc_s   :  std_logic;                      -- Read or write cycle
	signal p2l_dma_stb_s   :  std_logic;                      -- Read or write strobe
	signal p2l_dma_we_s    :  std_logic;                      -- Write
	signal p2l_dma_ack_s   :  std_logic;                      -- Acknowledge
	signal p2l_dma_stall_s :  std_logic;                      -- for pipelined Wishbone
	signal l2p_dma_adr_s   :  std_logic_vector(64-1 downto 0);
	signal l2p_dma_dat_s2m_s   :  std_logic_vector(64-1 downto 0);
	signal l2p_dma_dat_m2s_s   :  std_logic_vector(64-1 downto 0);
	signal l2p_dma_sel_s   :  std_logic_vector(3 downto 0);
	signal l2p_dma_cyc_s   :  std_logic;
	signal l2p_dma_stb_s   :  std_logic;
	signal l2p_dma_we_s    :  std_logic;
	signal l2p_dma_ack_s   :  std_logic;
	signal l2p_dma_stall_s :  std_logic;
	signal dma_adr_s   :  std_logic_vector(31 downto 0);  -- Adress
	signal dma_dat_s2m_s   :  std_logic_vector(63 downto 0);  -- Data in
	signal dma_dat_m2s_s   :  std_logic_vector(63 downto 0);  -- Data out
	signal dma_sel_s   :  std_logic_vector(7 downto 0);   -- Byte select
	signal dma_cyc_s   :  std_logic;                      -- Read or write cycle
	signal dma_stb_s   :  std_logic;                      -- Read or write strobe
	signal dma_we_s    :  std_logic;                      -- Write
	signal dma_ack_s   :  std_logic;                      -- Acknowledge
	signal dma_stall_s :  std_logic;                      -- for pipelined Wishbone	
	
	signal l2p_current_state_ds : std_logic_vector (2 downto 0);
    signal l2p_data_cnt_ds : unsigned(12 downto 0);
    signal l2p_len_cnt_ds  : unsigned(12 downto 0);
    signal l2p_timeout_cnt_ds : unsigned(12 downto 0);
    signal wb_timeout_cnt_ds  : unsigned(12 downto 0);
        -- Data FIFO
    signal data_fifo_rd_ds    : std_logic;
    signal data_fifo_wr_ds    : std_logic;
    signal data_fifo_empty_ds : std_logic;
    signal data_fifo_full_ds  : std_logic;
    signal data_fifo_dout_ds  : std_logic_vector(axis_data_width_c-1 downto 0);
    signal data_fifo_din_ds   : std_logic_vector(axis_data_width_c-1 downto 0);
    -- Addr FIFO
    signal addr_fifo_rd_ds    : std_logic;
    signal addr_fifo_wr_ds    : std_logic;
    signal addr_fifo_empty_ds : std_logic;
    signal addr_fifo_full_ds  : std_logic;
    signal addr_fifo_dout_ds  : std_logic_vector(64-1 downto 0);
    signal addr_fifo_din_ds   : std_logic_vector(axis_data_width_c-1 downto 0);
	
	constant cyc_nb_exp_c : integer := 2;
	constant cyc_nb_c : integer := 2**cyc_nb_exp_c;
	type ram_dma_data_bus is array (cyc_nb_c-1 downto 0) of std_logic_vector(64-1 downto 0);
	
    signal ram_dma_adr_s   :  std_logic_vector(32-1 downto 0);  -- Adress
    signal ram_dma_dat_s2m_s   :  ram_dma_data_bus;  -- Data in
    signal ram_dma_dat_m2s_s   :  std_logic_vector(64-1 downto 0);  -- Data out
    signal ram_dma_sel_s   :  std_logic_vector(8-1 downto 0);   -- Byte select
    signal ram_dma_cyc_s   :  std_logic_vector(cyc_nb_c-1 downto 0);  -- Read or write cycle
    signal ram_dma_stb_s   :  std_logic;                      -- Read or write strobe
    signal ram_dma_we_s    :  std_logic;                      -- Write
    signal ram_dma_ack_s   :  std_logic_vector(cyc_nb_c-1 downto 0); -- Acknowledge
    signal ram_dma_stall_s :  std_logic;                      -- for pipelined Wishbone    
	
	---------------------------------------------------------
	-- From L2P DMA master (ldm) to arbiter (arb)
	signal ldm_arb_tdata_s : std_logic_vector (axis_data_width_c - 1 downto 0);
	signal ldm_arb_tkeep_s : std_logic_vector (axis_data_width_c/8 - 1 downto 0);
	signal ldm_arb_tlast_s : std_logic;
	signal ldm_arb_tvalid_s : std_logic;
	signal ldm_arb_tready_s : std_logic;
	signal ldm_arb_req_s    : std_logic;
	--signal arb_ldm_gnt_s : std_logic;

begin
    
    rst_n_s <= not rst_i;
    

    
    s_axis_rx_tdata_s <= s_axis_rx_tdata_i;
    s_axis_rx_tkeep_s <= s_axis_rx_tkeep_i;
    s_axis_rx_tlast_s <= s_axis_rx_tlast_i;
    s_axis_rx_tready_o <= s_axis_rx_tready_s;
    s_axis_rx_tuser_s <= s_axis_rx_tuser_i;
    s_axis_rx_tvalid_s <= s_axis_rx_tvalid_i;
    -- Master AXI-Stream
    m_axis_tx_tdata_o <= m_axis_tx_tdata_s;
    m_axis_tx_tkeep_o <= m_axis_tx_tkeep_s;
    m_axis_tx_tuser_o <= m_axis_tx_tuser_s;
    m_axis_tx_tlast_o <= m_axis_tx_tlast_s;
    m_axis_tx_tvalid_o <= m_axis_tx_tvalid_s;
    m_axis_tx_tready_s <= m_axis_tx_tready_i;
    
    
    cfg_interrupt_assert_o <= '0';
    cfg_interrupt_di_o <= (others => '0');
    cfg_interrupt_stat_o <= '0';
    cfg_pciecap_interrupt_msgnum_o <= (others => '0');
    
    cfg_interrupt_o <= cfg_interrupt_s;
    
    interrupt_p : process(rst_i,clk_i)
    begin
        if (rst_i = '1') then
            cfg_interrupt_s <= '0';
        elsif(clk_i'event and clk_i = '1') then
            if (dma_ctrl_irq_s(1) = '1' or dma_ctrl_irq_s(0) = '1') then
                cfg_interrupt_s <= '1';
            elsif (cfg_interrupt_rdy_i = '1') then
                cfg_interrupt_s <= '0';
            else
                cfg_interrupt_s <= cfg_interrupt_s;
            end if;    
        end if;
    end process interrupt_p;

    cnt:simple_counter
    port map(
        rst_i => rst_i,
        clk_i => clk_i,
        count_o =>  count_s
    );
    

    p2l_dec_comp:p2l_decoder
    port map(
        clk_i => clk_i,
        rst_i => rst_i,
        -- Slave AXI-Stream
        s_axis_rx_tdata_i => s_axis_rx_tdata_s,
        s_axis_rx_tkeep_i => s_axis_rx_tkeep_s,
        s_axis_rx_tlast_i => s_axis_rx_tlast_s,
        s_axis_rx_tready_o => s_axis_rx_tready_s,
        s_axis_rx_tuser_i => s_axis_rx_tuser_s,
        s_axis_rx_tvalid_i => s_axis_rx_tvalid_s,
        -- To the wishbone master
        pd_wbm_address_o => pd_wbm_address_s,
        pd_wbm_data_o => pd_wbm_data_s,
        pd_wbm_valid_o => pd_wbm_valid_s,
        wbm_pd_ready_i => wbm_pd_ready_s,
        pd_op_o => pd_op_s,
        pd_header_type_o => pd_header_type_s,
        pd_payload_length_o => pd_payload_length_s,
 
        -- L2P DMA
        pd_pdm_data_valid_o => pd_pdm_data_valid_s,
        pd_pdm_data_last_o => pd_pdm_data_last_s,
        pd_pdm_keep_o => pd_pdm_keep_s,
        pd_pdm_data_o => pd_pdm_data_s
    );
   
    wb_master_comp:wb_master
    port map(
        clk_i => clk_i,
        rst_i => rst_i,
       
        -- From packet decoder
        pd_wbm_address_i => pd_wbm_address_s,
        pd_wbm_data_i => pd_wbm_data_s,
        pd_wbm_valid_i => pd_wbm_valid_s,
        wbm_pd_ready_o => wbm_pd_ready_s,
        pd_op_i => pd_op_s,
       
        -- Master AXI-Stream
        wbm_arb_tdata_o => wbm_arb_tdata_s,
        wbm_arb_tkeep_o => wbm_arb_tkeep_s,
        wbm_arb_tlast_o => wbm_arb_tlast_s,
        wbm_arb_tvalid_o => wbm_arb_tvalid_s,
        wbm_arb_tready_i => wbm_arb_tready_s,
        wbm_arb_req_o => wbm_arb_req_s,
 
        -- Wishbone Master
        wb_adr_o => wb_adr_s,
        wb_dat_o => wb_dat_o_s,
        wb_dat_i => wb_dat_i_s,
        wb_cyc_o => wb_cyc_s,
        wb_stb_o => wb_stb_s,
        wb_we_o => wb_we_s,
        wb_ack_i => wb_ack_s
    );
    
    wb_mem_adr_s <= wb_adr_s(31 downto 0);
    wb_mem_dat_m2s_s <= wb_dat_o_s;
    wb_mem_stb_s <= wb_stb_s;
    wb_mem_we_s <= wb_we_s;
    
    wb_dma_ctrl_adr_s <= wb_adr_s(31 downto 0);
    wb_dma_ctrl_dat_m2s_s <= wb_dat_o_s;
    wb_dma_ctrl_stb_s <= wb_stb_s;
    wb_dma_ctrl_we_s <= wb_we_s;   
    
    --wb_dma_ctrl_cyc_s <= wb_cyc_s when wb_adr_s(31 downto 4) = X"0000000" else '0';
    --wb_mem_cyc_s <= '0' when wb_adr_s(31 downto 4) = X"0000000"
    
	process(wb_adr_s,wb_cyc_s,wb_mem_cyc_s,wb_cyc_s,wb_dma_ctrl_dat_s2m_s,wb_dma_ctrl_ack_s,wb_mem_dat_s2m_s,wb_mem_ack_s)
    begin
        if wb_adr_s(31 downto 4) = X"0000000" then
            wb_dma_ctrl_cyc_s <= wb_cyc_s;
            wb_mem_cyc_s <= '0';
            wb_dat_i_s <= wb_dma_ctrl_dat_s2m_s;
            wb_ack_s <= wb_dma_ctrl_ack_s;
        else
            wb_dma_ctrl_cyc_s <= '0';
            wb_mem_cyc_s <= wb_cyc_s;
            wb_dat_i_s <= wb_mem_dat_s2m_s;
            wb_ack_s <= wb_mem_ack_s;
        end if;
    end process;
    
    csr_ram:bram_wbs32
    generic map (
      ADDR_WIDTH => 5,
      DATA_WIDTH => 32 
    )
    port map (
      -- SYS CON
      clk            => clk_i,
      rst            => rst_i,
      
      -- Wishbone Slave in
      wb_adr_i    => wb_mem_adr_s(5 - 1 downto 0),
      --wb_dat_i(63 downto 32)    => X"00000000",
      wb_dat_i    => wb_mem_dat_m2s_s,
      wb_we_i        => wb_mem_we_s,
      wb_stb_i    => wb_mem_stb_s,
      wb_cyc_i    => wb_mem_cyc_s,
      wb_lock_i    => wb_mem_stb_s,
      
      -- Wishbone Slave out
      --wb_dat_o(63 downto 32) => wb_null,--open,
      wb_dat_o    => wb_mem_dat_s2m_s,
      wb_ack_o    => wb_mem_ack_s
    );
	
	dma_ctrl:dma_controller
	  port map
		(
		  ---------------------------------------------------------
		  -- GN4124 core clock and reset
		  clk_i   => clk_i,
		  rst_n_i => rst_n_s,

		  ---------------------------------------------------------
		  -- Interrupt request
		  dma_ctrl_irq_o => dma_ctrl_irq_s,

		  ---------------------------------------------------------
		  -- To the L2P DMA master and P2L DMA master
		  dma_ctrl_carrier_addr_o => dma_ctrl_carrier_addr_s,
		  dma_ctrl_host_addr_h_o  => dma_ctrl_host_addr_h_s,
		  dma_ctrl_host_addr_l_o  => dma_ctrl_host_addr_l_s,
		  dma_ctrl_len_o          => dma_ctrl_len_s,
		  dma_ctrl_start_l2p_o    => dma_ctrl_start_l2p_s, -- To the L2P DMA master
		  dma_ctrl_start_p2l_o    => dma_ctrl_start_p2l_s, -- To the P2L DMA master
		  dma_ctrl_start_next_o   => dma_ctrl_start_next_s, -- To the P2L DMA master
		  dma_ctrl_byte_swap_o    => dma_ctrl_byte_swap_s,
		  dma_ctrl_abort_o        => dma_ctrl_abort_s,
		  dma_ctrl_done_i         => dma_ctrl_done_s,
		  dma_ctrl_error_i        => dma_ctrl_error_s,

		  ---------------------------------------------------------
		  -- From P2L DMA master
		  next_item_carrier_addr_i => next_item_carrier_addr_s,
		  next_item_host_addr_h_i  => next_item_host_addr_h_s,
		  next_item_host_addr_l_i  => next_item_host_addr_l_s,
		  next_item_len_i          => next_item_len_s,
		  next_item_next_l_i       => next_item_next_l_s,
		  next_item_next_h_i       => next_item_next_h_s,
		  next_item_attrib_i       => next_item_attrib_s,
		  next_item_valid_i        => next_item_valid_s,

		  ---------------------------------------------------------
		  -- Wishbone slave interface
		  wb_clk_i => clk_i,                     -- Bus clock
		  wb_adr_i => wb_dma_ctrl_adr_s(3 downto 0),   -- Adress
		  wb_dat_o => wb_dma_ctrl_dat_s2m_s,  -- Data in
		  wb_dat_i => wb_dma_ctrl_dat_m2s_s,  -- Data out
		  wb_sel_i => "1111",   -- Byte select
		  wb_cyc_i => wb_dma_ctrl_cyc_s,                      -- Read or write cycle
		  wb_stb_i => wb_dma_ctrl_stb_s,                      -- Read or write strobe
		  wb_we_i  => wb_dma_ctrl_we_s,                      -- Write
		  wb_ack_o => wb_dma_ctrl_ack_s,                       -- Acknowledge
		  
		  dma_ctrl_current_state_do => dma_ctrl_current_state_ds,
          dma_ctrl_do => dma_ctrl_ds,
          dma_stat_do => dma_stat_ds,
          dma_attrib_do => dma_attrib_ds
		  );

	  -- Status signals from DMA masters
	dma_ctrl_done_s  <= dma_ctrl_l2p_done_s or dma_ctrl_p2l_done_s;
	dma_ctrl_error_s <= dma_ctrl_l2p_error_s or dma_ctrl_p2l_error_s;
    
	
	p2l_dma:p2l_dma_master
	  generic map (
		-- Enable byte swap module (if false, no swap)
		g_BYTE_SWAP => false
		)
	  port map
		(
		  ---------------------------------------------------------
		  -- GN4124 core clock and reset
		  clk_i   => clk_i,
		  rst_n_i => rst_n_s,

		  ---------------------------------------------------------
		  -- From the DMA controller
		  dma_ctrl_carrier_addr_i => dma_ctrl_carrier_addr_s,
		  dma_ctrl_host_addr_h_i  => dma_ctrl_host_addr_h_s,
		  dma_ctrl_host_addr_l_i  => dma_ctrl_host_addr_l_s,
		  dma_ctrl_len_i          => dma_ctrl_len_s,
		  dma_ctrl_start_p2l_i    => dma_ctrl_start_p2l_s,
		  dma_ctrl_start_next_i   => dma_ctrl_start_next_s,
		  dma_ctrl_done_o         => dma_ctrl_p2l_done_s,
		  dma_ctrl_error_o        => dma_ctrl_p2l_error_s,
		  dma_ctrl_byte_swap_i    => "111",
		  dma_ctrl_abort_i        => dma_ctrl_abort_s,

		  ---------------------------------------------------------
		  -- From P2L Decoder (receive the read completion)
		  --
		  -- Header
		  --pd_pdm_hdr_start_i   : in std_logic;                      -- Header strobe
		  --pd_pdm_hdr_length_i  : in std_logic_vector(9 downto 0);   -- Packet length in 32-bit words multiples
		  --pd_pdm_hdr_cid_i     : in std_logic_vector(1 downto 0);   -- Completion ID
		  --pd_pdm_op_i     => pd_op_s,
		  pd_pdm_master_cpld_i => '1',                      -- Master read completion with data
		  pd_pdm_master_cpln_i => '0',                      -- Master read completion without data
		  --
		  -- Data
		  pd_pdm_data_valid_i  => pd_pdm_data_valid_s,                      -- Indicates Data is valid
		  pd_pdm_data_last_i   => pd_pdm_data_last_s,                      -- Indicates end of the packet
		  pd_pdm_data_i        => pd_pdm_data_s,  -- Data
		  pd_pdm_be_i          => pd_pdm_keep_s,   -- Byte Enable for data

		  ---------------------------------------------------------
		  -- P2L control
		  p2l_rdy_o  => open,      -- De-asserted to pause transfer already in progress
		  rx_error_o => open,       -- Asserted when transfer is aborted

		  ---------------------------------------------------------
		  -- To the P2L Interface (send the DMA Master Read request)
		  pdm_arb_tvalid_o  => pdm_arb_tvalid_s,  -- Read completion signals
		  pdm_arb_tlast_o => pdm_arb_tlast_s,  -- Toward the arbiter
		  pdm_arb_tdata_o   => pdm_arb_tdata_s,
		  pdm_arb_tkeep_o   => pdm_arb_tkeep_s,
		  pdm_arb_req_o    => pdm_arb_req_s,
		  arb_pdm_gnt_i    => pdm_arb_tready_s,

		  ---------------------------------------------------------
		  -- DMA Interface (Pipelined Wishbone)
		  p2l_dma_clk_i   => clk_i,                      -- Bus clock
		  p2l_dma_adr_o   => p2l_dma_adr_s,  -- Adress
		  p2l_dma_dat_i   => p2l_dma_dat_s2m_s,  -- Data in
		  p2l_dma_dat_o   => p2l_dma_dat_m2s_s,  -- Data out
		  p2l_dma_sel_o   => p2l_dma_sel_s,   -- Byte select
		  p2l_dma_cyc_o   => p2l_dma_cyc_s,                      -- Read or write cycle
		  p2l_dma_stb_o   => p2l_dma_stb_s,                      -- Read or write strobe
		  p2l_dma_we_o    => p2l_dma_we_s,                      -- Write
		  p2l_dma_ack_i   => p2l_dma_ack_s,                      -- Acknowledge
		  p2l_dma_stall_i => p2l_dma_stall_s,                      -- for pipelined Wishbone
		  l2p_dma_cyc_i   => l2p_dma_cyc_s,                      -- L2P dma wb cycle (for bus arbitration)

		  ---------------------------------------------------------
		  -- To the DMA controller
		  next_item_carrier_addr_o => next_item_carrier_addr_s,
		  next_item_host_addr_h_o  => next_item_host_addr_h_s,
		  next_item_host_addr_l_o  => next_item_host_addr_l_s,
		  next_item_len_o          => next_item_len_s,
		  next_item_next_l_o       => next_item_next_l_s,
		  next_item_next_h_o       => next_item_next_h_s,
		  next_item_attrib_o       => next_item_attrib_s,
		  next_item_valid_o        => next_item_valid_s
		  );
		  
		  
	-----------------------------------------------------------------------------
	-- L2P DMA master
	-----------------------------------------------------------------------------
	--l2p_dma_stall_s <= '0';
	
	l2p_dma : l2p_dma_master
	port map
	(
		clk_i   => clk_i,
		rst_n_i => rst_n_s,

		dma_ctrl_target_addr_i => dma_ctrl_carrier_addr_s,
		dma_ctrl_host_addr_h_i => dma_ctrl_host_addr_h_s,
		dma_ctrl_host_addr_l_i => dma_ctrl_host_addr_l_s,
		dma_ctrl_len_i         => dma_ctrl_len_s,
		dma_ctrl_start_l2p_i   => dma_ctrl_start_l2p_s,
		dma_ctrl_done_o        => dma_ctrl_l2p_done_s,
		dma_ctrl_error_o       => dma_ctrl_l2p_error_s,
		dma_ctrl_byte_swap_i   => "000", --TODO
		dma_ctrl_abort_i       => dma_ctrl_abort_s,

		ldm_arb_tvalid_o  => ldm_arb_tvalid_s,
		ldm_arb_tlast_o => ldm_arb_tlast_s,
		ldm_arb_tdata_o   => ldm_arb_tdata_s,
		ldm_arb_tkeep_o   => ldm_arb_tkeep_s,
		ldm_arb_req_o    => ldm_arb_req_s,
		arb_ldm_gnt_i    => ldm_arb_tready_s,

		l2p_edb_o  => open,
		ldm_arb_tready_i => ldm_arb_tready_s,
		l2p_rdy_i  => '1',
		--l2p_64b_address_i => '0',
		tx_error_i => '0',

		l2p_dma_clk_i   => clk_i,
		l2p_dma_adr_o   => l2p_dma_adr_s,
		l2p_dma_dat_i   => l2p_dma_dat_s2m_s,
		l2p_dma_dat_o   => l2p_dma_dat_m2s_s,
		l2p_dma_sel_o   => l2p_dma_sel_s,
		l2p_dma_cyc_o   => l2p_dma_cyc_s,
		l2p_dma_stb_o   => l2p_dma_stb_s,
		l2p_dma_we_o    => l2p_dma_we_s,
		l2p_dma_ack_i   => l2p_dma_ack_s,
		l2p_dma_stall_i => l2p_dma_stall_s,
		p2l_dma_cyc_i   => p2l_dma_cyc_s,
		
		--DMA Debug
        l2p_current_state_do => l2p_current_state_ds,
        l2p_data_cnt_do => l2p_data_cnt_ds,
        l2p_len_cnt_do  => l2p_len_cnt_ds,
        l2p_timeout_cnt_do => l2p_timeout_cnt_ds,
        wb_timeout_cnt_do => wb_timeout_cnt_ds,
        
                -- Data FIFO
        data_fifo_rd_do    => data_fifo_rd_ds,
        data_fifo_wr_do    => data_fifo_wr_ds,
        data_fifo_empty_do => data_fifo_empty_ds,
        data_fifo_full_do  => data_fifo_full_ds,
        data_fifo_dout_do  => data_fifo_dout_ds,
        data_fifo_din_do   => data_fifo_din_ds,
        
        -- Addr FIFO
        addr_fifo_rd_do    => addr_fifo_rd_ds,
        addr_fifo_wr_do    => addr_fifo_wr_ds,
        addr_fifo_empty_do => addr_fifo_empty_ds,
        addr_fifo_full_do  => addr_fifo_full_ds,
        addr_fifo_dout_do  => addr_fifo_dout_ds,
        addr_fifo_din_do   => addr_fifo_din_ds
	);
	
	
	arbiter:l2p_arbiter
	generic map(
		axis_data_width_c => axis_data_width_c
	)
	port map(
		---------------------------------------------------------
		-- GN4124 core clock and reset
		clk_i   => clk_i,
		rst_n_i => rst_n_s,
		
		---------------------------------------------------------
		-- From Wishbone master (wbm) to arbiter (arb)      
		wbm_arb_tdata_i => wbm_arb_tdata_s,
		wbm_arb_tkeep_i => wbm_arb_tkeep_s,
		wbm_arb_tlast_i => wbm_arb_tlast_s,
		wbm_arb_tvalid_i => wbm_arb_tvalid_s,
		wbm_arb_req_i => wbm_arb_req_s,
		wbm_arb_tready_o => wbm_arb_tready_s,
		
		---------------------------------------------------------
		-- From P2L DMA master (pdm) to arbiter (arb)
		pdm_arb_tdata_i => pdm_arb_tdata_s,
		pdm_arb_tkeep_i => pdm_arb_tkeep_s,
		pdm_arb_tlast_i => pdm_arb_tlast_s,
		pdm_arb_tvalid_i => pdm_arb_tvalid_s,
		pdm_arb_req_i => pdm_arb_req_s,
		pdm_arb_tready_o => pdm_arb_tready_s,
		arb_pdm_gnt_o => open,
		
		---------------------------------------------------------
		-- From L2P DMA master (ldm) to arbiter (arb)
		ldm_arb_tdata_i => ldm_arb_tdata_s,
		ldm_arb_tkeep_i => ldm_arb_tkeep_s,
		ldm_arb_tlast_i => ldm_arb_tlast_s,
		ldm_arb_tvalid_i => ldm_arb_tvalid_s,
		ldm_arb_req_i    => ldm_arb_req_s,
		ldm_arb_tready_o => ldm_arb_tready_s,
		arb_ldm_gnt_o => open,
		
		---------------------------------------------------------
		-- From arbiter (arb) to pcie_tx (tx)
		axis_tx_tdata_o => m_axis_tx_tdata_s,
		axis_tx_tkeep_o => m_axis_tx_tkeep_s,
		axis_tx_tuser_o => m_axis_tx_tuser_s,
		axis_tx_tlast_o => m_axis_tx_tlast_s,
		axis_tx_tvalid_o => m_axis_tx_tvalid_s,
		axis_tx_tready_i => m_axis_tx_tready_s,
		
		eop_do => eop_s
	);
  

     dma_ram:k_bram
     generic map (
         ADDR_WIDTH => 9+4,
         DATA_WIDTH => 64 
     )
     port map (
         -- SYS CON
         clk            => clk_i,
         rst            => rst_i,
         
         -- Wishbone Slave in
         wb_adr_i    => dma_adr_s(9+4 - 1 downto 0),
         wb_dat_i    => dma_dat_m2s_s,
         wb_we_i        => dma_we_s,
         wb_stb_i    => dma_stb_s,
         wb_cyc_i    => dma_cyc_s,
         wb_lock_i    => dma_stb_s,
         
         -- Wishbone Slave out
         wb_dat_o    => dma_dat_s2m_s,
         wb_ack_o    => dma_ack_s
     );

  
  dma_mux: process(
  l2p_dma_adr_s,l2p_dma_dat_m2s_s,l2p_dma_sel_s,l2p_dma_cyc_s,l2p_dma_stb_s,l2p_dma_we_s,
  p2l_dma_adr_s,p2l_dma_dat_m2s_s,p2l_dma_sel_s,p2l_dma_cyc_s,p2l_dma_stb_s,p2l_dma_we_s)
  begin
	if l2p_dma_cyc_s = '1' then
		dma_adr_s      <= l2p_dma_adr_s(31 downto 0); --TODO
		dma_dat_m2s_s  <= l2p_dma_dat_m2s_s;
		dma_sel_s      <= l2p_dma_sel_s & l2p_dma_sel_s;
		dma_cyc_s      <= l2p_dma_cyc_s;
		dma_stb_s      <= l2p_dma_stb_s;
		dma_we_s       <= l2p_dma_we_s;
	elsif p2l_dma_cyc_s = '1' then
		dma_adr_s      <= p2l_dma_adr_s;
		dma_dat_m2s_s  <= p2l_dma_dat_m2s_s;
		dma_sel_s      <= p2l_dma_sel_s;
		dma_cyc_s      <= p2l_dma_cyc_s;
		dma_stb_s      <= p2l_dma_stb_s;
		dma_we_s       <= p2l_dma_we_s;
	else
		dma_adr_s      <= (others => '0');
		dma_dat_m2s_s  <= (others => '0');
		dma_sel_s      <= (others => '0');
		dma_cyc_s      <= '0';
		dma_stb_s      <= '0';
		dma_we_s       <= '0';
	end if;
  end process dma_mux;
  
  l2p_dma_dat_s2m_s <= dma_dat_s2m_s;
  p2l_dma_dat_s2m_s <= dma_dat_s2m_s;
  l2p_dma_ack_s     <= dma_ack_s;
  p2l_dma_ack_s     <= dma_ack_s;
  l2p_dma_stall_s   <= dma_stall_s;
  p2l_dma_stall_s   <= dma_stall_s;
  dma_stall_s <= '0';
  
  front_led_o <= count_s(28 downto 25);
  usr_led_o <= '1' & usr_sw_i;
  
  dbg_0 : if DEBUG_C(0) = '1' generate
      axis_debug : ila_axis
      PORT MAP (
          clk => clk_i,
      
      
      
          probe0 => s_axis_rx_tdata_s, 
          probe1 => s_axis_rx_tkeep_s, 
          probe2(0) => s_axis_rx_tlast_s, 
          probe3(0) => s_axis_rx_tvalid_s, 
          probe4(0) => s_axis_rx_tready_s, 
          probe5 => m_axis_tx_tdata_s, 
          probe6 => m_axis_tx_tkeep_s, 
          probe7(0) => m_axis_tx_tlast_s, 
          probe8(0) => m_axis_tx_tvalid_s,
          probe9(0) => m_axis_tx_tready_s,
          probe10 => s_axis_rx_tuser_i, 
          probe11(0) => dma_ctrl_start_l2p_s, 
          probe12(0) => dma_ctrl_start_p2l_s, 
          probe13(0) => dma_ctrl_start_next_s,
          probe14(0) => dma_ctrl_abort_s, 
          probe15(0) => dma_ctrl_done_s,
          probe16(0) => dma_ctrl_error_s,
          probe17(0) => user_lnk_up_i,
          probe18(0) => cfg_interrupt_s,
          probe19(0) => cfg_interrupt_rdy_i,
          probe20(0) => dma_ctrl_done_s,
          probe21 => dma_ctrl_current_state_ds
      );
  end generate dbg_0;
  
  dbg_1 : if DEBUG_C(1) = '1' generate
      dma_ctrl_debug : ila_dma_ctrl_reg
      PORT MAP (
          clk => clk_i,
      
      
      
          probe0 => dma_ctrl_carrier_addr_s, 
          probe1 => dma_ctrl_host_addr_h_s, 
          probe2 => dma_ctrl_host_addr_l_s, 
          probe3 => dma_ctrl_len_s, 
          probe4(0) => dma_ctrl_start_l2p_s, 
          probe5(0) => dma_ctrl_start_p2l_s, 
          probe6(0) => dma_ctrl_start_next_s, 
          probe7 => dma_ctrl_byte_swap_s, 
          probe8(0) => dma_ctrl_abort_s, 
          probe9(0) => dma_ctrl_done_s, 
          probe10(0) => dma_ctrl_error_s,
          probe11 => dma_ctrl_current_state_ds,
          probe12 => next_item_carrier_addr_s,
          probe13  => next_item_host_addr_h_s,
          probe14  => next_item_host_addr_l_s,
          probe15          => next_item_len_s,
          probe16       => next_item_next_l_s,
          probe17       => next_item_next_h_s,
          probe18       => next_item_attrib_s,
          probe19(0)        => next_item_valid_s,
          probe20 => dma_ctrl_irq_s
      );
  end generate dbg_1;
  
  
  dbg_2 : if DEBUG_C(2) = '1' generate
      pipelined_wishbone_debug : ila_wsh_pipe
      PORT MAP (
          clk => clk_i,
      
      
      
          probe0 => dma_adr_s, 
          probe1 => dma_dat_s2m_s, 
          probe2 => dma_dat_m2s_s, 
          probe3 => dma_sel_s, 
          probe4(0) => dma_cyc_s, 
          probe5(0) => dma_stb_s, 
          probe6(0) => dma_we_s, 
          probe7(0) => dma_ack_s,
          probe8(0) => dma_stall_s, 
          probe9(0) => l2p_dma_cyc_s,
          probe10(0) => p2l_dma_cyc_s,
          probe11 => (others => '0')--ram_dma_cyc_s--(15 downto 0) -- DO NOT FORGET FOR THE OTHER VERSION OF RAM
      );
  end generate dbg_2;
  
  dbg_3 : if DEBUG_C(3) = '1' generate
      wbm_to_p2l_debug : ila_pd_pdm
      PORT MAP (
          clk => clk_i,
      
      
      
          probe0 => pd_pdm_data_s, 
          probe1(0) => pd_pdm_data_last_s,
          probe2(0) => pd_pdm_data_valid_s,
          probe3 => s_axis_rx_tdata_s,  
          probe4 => s_axis_rx_tkeep_s,
          probe5(0) => s_axis_rx_tlast_s, 
          probe6(0) => s_axis_rx_tvalid_s,
          probe7(0) => ldm_arb_tready_s, 
          probe8 => l2p_current_state_ds, 
          probe9 => dma_ctrl_current_state_ds
 
      );
  end generate dbg_3;
  
  dbg_4 : if DEBUG_C(4) = '1' generate
      l2p_debug : ila_l2p_dma
      PORT MAP (
          clk => clk_i,
      
      
      
          probe0 => dma_ctrl_carrier_addr_s, 
          probe1 => dma_ctrl_host_addr_h_s, 
          probe2 => dma_ctrl_host_addr_l_s, 
          probe3 => dma_ctrl_len_s, 
          probe4(0) => dma_ctrl_start_l2p_s, 
          probe5(0) => dma_ctrl_done_s , 
          probe6(0) => dma_ctrl_l2p_error_s , 
          probe7(0) => dma_ctrl_abort_s, 
          probe8(0) => ldm_arb_tvalid_s, 
          probe9(0) => ldm_arb_tlast_s, 
          probe10 => ldm_arb_tdata_s, 
          probe11 => ldm_arb_tkeep_s, 
          probe12(0) => ldm_arb_tready_s, 
          probe13(0) => ldm_arb_req_s, 
          probe14(0) => pdm_arb_tready_s, 
          probe15(0) => '0', 
          probe16 => l2p_dma_adr_s(31 downto 0), 
          probe17 => l2p_dma_dat_m2s_s, 
          probe18 => l2p_dma_dat_s2m_s, 
          probe19(0) => l2p_dma_cyc_s, 
          probe20(0) => l2p_dma_stb_s, 
          probe21(0) => l2p_dma_we_s, 
          probe22(0) => l2p_dma_ack_s, 
          probe23(0) => l2p_dma_stall_s, 
          probe24(0) => p2l_dma_cyc_s, 
          probe25 => l2p_current_state_ds, 
          probe26 => std_logic_vector(l2p_data_cnt_ds), 
          probe27 => std_logic_vector(l2p_len_cnt_ds), 
          probe28(0) => data_fifo_rd_ds, 
          probe29(0) => data_fifo_wr_ds, 
          probe30(0) => data_fifo_empty_ds, 
          probe31(0) => data_fifo_full_ds, 
          probe32 => data_fifo_dout_ds, 
          probe33 => data_fifo_din_ds, 
          probe34(0) => addr_fifo_rd_ds, 
          probe35(0) => addr_fifo_wr_ds, 
          probe36(0) => addr_fifo_empty_ds, 
          probe37(0) => addr_fifo_full_ds, 
          probe38 => addr_fifo_dout_ds, 
          probe39 => addr_fifo_din_ds,
          probe40 => std_logic_vector(wb_timeout_cnt_ds),
          probe41 => std_logic_vector(l2p_timeout_cnt_ds)
      );
  end generate dbg_4;
  
end Behavioral;
