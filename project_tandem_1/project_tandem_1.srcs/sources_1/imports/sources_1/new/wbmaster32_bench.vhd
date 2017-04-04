----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/24/2017 11:44:42 AM
-- Design Name: 
-- Module Name: wbmaster32_bench - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity wbmaster32_bench is
--  Port ( );
end wbmaster32_bench;

architecture Behavioral of wbmaster32_bench is

    component wbmaster32 is
      generic (
        g_ACK_TIMEOUT : positive := 100     -- Wishbone ACK timeout (in wb_clk cycles)
        );
      port
        (
          ---------------------------------------------------------
          -- GN4124 core clock and reset
          clk_i   : in std_logic;
          rst_n_i : in std_logic;
    
          ---------------------------------------------------------
          -- From P2L packet decoder
          --
          -- Header
          pd_wbm_hdr_start_i  : in std_logic;                      -- Header strobe
          --pd_wbm_hdr_length_i : in std_logic_vector(9 downto 0);   -- Packet length in 32-bit words multiples
          pd_wbm_hdr_rid_i    : in std_logic_vector(15 downto 0);  -- Requester ID
          pd_wbm_hdr_cid_i    : in std_logic_vector(15 downto 0);  -- Completer ID
          pd_wbm_hdr_tag_i    : in std_logic_vector(7 downto 0);   -- Completion ID
          pd_wbm_target_mrd_i : in std_logic;                      -- Target memory read
          pd_wbm_target_mwr_i : in std_logic;                      -- Target memory write
          --
          -- Address
          pd_wbm_addr_start_i : in std_logic;                      -- Address strobe
          pd_wbm_addr_i       : in std_logic_vector(31 downto 0);  -- Target address (in byte) that will increment with data
                                                                   -- increment = 4 bytes
          --
          -- Data
          pd_wbm_data_valid_i : in std_logic;                      -- Indicates Data is valid
          --pd_wbm_data_last_i  : in std_logic;                      -- Indicates end of the packet
          pd_wbm_data_i       : in std_logic_vector(31 downto 0);  -- Data
          --pd_wbm_be_i         : in std_logic_vector(3 downto 0);   -- Byte Enable for data
    
          ---------------------------------------------------------
          -- P2L channel control
          p_wr_rdy_o   : out std_logic_vector(1 downto 0);  -- Ready to accept target write
          p2l_rdy_o    : out std_logic;                     -- De-asserted to pause transfer already in progress
          p_rd_d_rdy_i : in  std_logic_vector(1 downto 0);  -- Asserted when GN4124 ready to accept read completion with data
    
          ---------------------------------------------------------
          -- To the arbiter (L2P data)
          --wbm_arb_valid_o  : out std_logic;  -- Read completion signals
          --wbm_arb_dframe_o : out std_logic;  -- Toward the arbiter
          --wbm_arb_data_o   : out std_logic_vector(31 downto 0);
          --wbm_arb_req_o    : out std_logic;
          --arb_wbm_gnt_i    : in  std_logic;
          
          wbm_arb_tdata_o : out STD_LOGIC_VECTOR (64 - 1 downto 0);
          wbm_arb_tkeep_o : out STD_LOGIC_VECTOR (64/8 - 1 downto 0);
          wbm_arb_tuser_o : out STD_LOGIC_VECTOR (3 downto 0);
          wbm_arb_tlast_o : out STD_LOGIC;
          wbm_arb_tvalid_o : out STD_LOGIC;
          wbm_arb_tready_i : in STD_LOGIC;
          wbm_arb_req_o    : out  std_logic;
    
          ---------------------------------------------------------
          -- CSR wishbone interface
          wb_clk_i   : in  std_logic;                      -- Wishbone bus clock
          wb_adr_o   : out std_logic_vector(30 downto 0);  -- Address
          wb_dat_o   : out std_logic_vector(31 downto 0);  -- Data out
          wb_sel_o   : out std_logic_vector(3 downto 0);   -- Byte select
          wb_stb_o   : out std_logic;                      -- Strobe
          wb_we_o    : out std_logic;                      -- Write
          wb_cyc_o   : out std_logic;                      -- Cycle
          wb_dat_i   : in  std_logic_vector(31 downto 0);  -- Data in
          wb_ack_i   : in  std_logic;                      -- Acknowledge
          wb_stall_i : in  std_logic;                      -- Stall
          wb_err_i   : in  std_logic;                      -- Error
          wb_rty_i   : in  std_logic;                      -- Retry
          wb_int_i   : in  std_logic                       -- Interrupt
          );
    end component;
    
    component bram_wbs is
    generic (
        constant ADDR_WIDTH : integer := 32;
        constant DATA_WIDTH : integer := 15 
    );
    port (
        -- SYS CON
        clk            : in std_logic;
        rst            : in std_logic;
        
        -- Wishbone Slave in
        wb_adr_i            : in std_logic_vector(6-1 downto 0);
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
    
    constant period : time := 100 ns;
    
    ---------------------------------------------------------
    -- GN4124 core clock and reset
    signal clk_tbs   : std_logic;
    signal rst_tbs : std_logic;
    signal rst_n_tbs : std_logic;

    ---------------------------------------------------------
    -- From P2L packet decoder
    --
    -- Header
    signal pd_wbm_hdr_start_tbs  : std_logic;                      -- Header strobe
    --pd_wbm_hdr_length_i : in std_logic_vector(9 downto 0);   -- Packet length in 32-bit words multiples
    signal pd_wbm_hdr_rid_tbs      : std_logic_vector(15 downto 0);  -- Requester ID
    signal pd_wbm_hdr_cid_tbs      : std_logic_vector(15 downto 0);  -- Completer ID
    signal pd_wbm_hdr_tag_tbs      : std_logic_vector(7 downto 0);
    signal pd_wbm_target_mrd_tbs : std_logic;                      -- Target memory read
    signal pd_wbm_target_mwr_tbs : std_logic;                      -- Target memory write
    --
    -- Address
    signal pd_wbm_addr_start_tbs : std_logic;                      -- Address strobe
    signal pd_wbm_addr_tbs       : std_logic_vector(31 downto 0);  -- Target address (in byte) that will increment with data
                                                             -- increment = 4 bytes
    --
    -- Data
    signal pd_wbm_data_valid_tbs : std_logic;                      -- Indicates Data is valid
    --pd_wbm_data_last_i  : in std_logic;                      -- Indicates end of the packet
    signal pd_wbm_data_tbs       : std_logic_vector(31 downto 0);  -- Data
    --pd_wbm_be_i         : in std_logic_vector(3 downto 0);   -- Byte Enable for data

    ---------------------------------------------------------
    -- P2L channel control
    signal p_wr_rdy_s   : std_logic_vector(1 downto 0);  -- Ready to accept target write
    signal p2l_rdy_s    : std_logic;                     -- De-asserted to pause transfer already in progress
    signal p_rd_d_rdy_tbs : std_logic_vector(1 downto 0);  -- Asserted when GN4124 ready to accept read completion with data

    ---------------------------------------------------------
    -- To the arbiter (L2P data)
    signal wbm_arb_tdata_s : STD_LOGIC_VECTOR (64 - 1 downto 0);
    signal wbm_arb_tkeep_s : STD_LOGIC_VECTOR (64/8 - 1 downto 0);
    signal wbm_arb_tuser_s : STD_LOGIC_VECTOR (3 downto 0);
    signal wbm_arb_tlast_s : STD_LOGIC;
    signal wbm_arb_tvalid_s : STD_LOGIC;
    signal wbm_arb_tready_tbs : STD_LOGIC;
    signal wbm_arb_req_s    : std_logic;

    ---------------------------------------------------------
    -- CSR wishbone interface
    --signal wb_clk_tbs   : std_logic;                      -- Wishbone bus clock
    signal wb_adr_s   : std_logic_vector(30 downto 0);  -- Address
    signal wb_dat_ms_s   : std_logic_vector(31 downto 0);  -- Data out
    signal wb_sel_s   : std_logic_vector(3 downto 0);   -- Byte select
    signal wb_stb_s   : std_logic;                      -- Strobe
    signal wb_we_s    : std_logic;                      -- Write
    signal wb_cyc_s   : std_logic;                      -- Cycle
    signal wb_dat_sm_s   : std_logic_vector(31 downto 0);  -- Data in
    signal wb_ack_s   : std_logic;                      -- Acknowledge
    signal wb_stall_tbs : std_logic;                      -- Stall
    signal wb_err_tbs   : std_logic;                      -- Error
    signal wb_rty_tbs   : std_logic;                      -- Retry
    signal wb_int_tbs   : std_logic;                       -- Interrupt
    
    -- Test bench specific signals
    signal step : integer;
begin
    clk_p: process
    begin
        clk_tbs <= '1';
        wait for period/2;
        clk_tbs <= '0';
        wait for period/2;
    end process clk_p;
    
    reset_p: process
    begin
       rst_tbs <= '1';
       wait for period;
       rst_tbs <= '0';
       wait;
    end process reset_p;
    
    rst_n_tbs <= not rst_tbs;
    
    dut1:wbmaster32
      generic map (
        g_ACK_TIMEOUT => 100     -- Wishbone ACK timeout (in wb_clk cycles)
        )
      port map
        (
          ---------------------------------------------------------
          -- GN4124 core clock and reset
          clk_i   => clk_tbs,
          rst_n_i => rst_n_tbs,
    
          ---------------------------------------------------------
          -- From P2L packet decoder
          --
          -- Header
          pd_wbm_hdr_start_i  => pd_wbm_hdr_start_tbs,                     -- Header strobe
          --pd_wbm_hdr_length_i : in std_logic_vector(9 downto 0);   -- Packet length in 32-bit words multiples
          pd_wbm_hdr_rid_i => pd_wbm_hdr_rid_tbs,  -- Requester ID
          pd_wbm_hdr_cid_i => pd_wbm_hdr_cid_tbs,  -- Completer ID
          pd_wbm_hdr_tag_i => pd_wbm_hdr_tag_tbs,
          pd_wbm_target_mrd_i => pd_wbm_target_mrd_tbs,                     -- Target memory read
          pd_wbm_target_mwr_i => pd_wbm_target_mwr_tbs,                     -- Target memory write
          --
          -- Address
          pd_wbm_addr_start_i =>  pd_wbm_addr_start_tbs,                    -- Address strobe
          pd_wbm_addr_i       =>  pd_wbm_addr_tbs,-- Target address (in byte) that will increment with data
                                                                   -- increment = 4 bytes
          --
          -- Data
          pd_wbm_data_valid_i => pd_wbm_data_valid_tbs,                     -- Indicates Data is valid
          --pd_wbm_data_last_i  : in std_logic;                      -- Indicates end of the packet
          pd_wbm_data_i       => pd_wbm_data_tbs, -- Data
          --pd_wbm_be_i         : in std_logic_vector(3 downto 0);   -- Byte Enable for data
    
          ---------------------------------------------------------
          -- P2L channel control
          p_wr_rdy_o   =>  p_wr_rdy_s,-- Ready to accept target write
          p2l_rdy_o    =>  p2l_rdy_s,                   -- De-asserted to pause transfer already in progress
          p_rd_d_rdy_i =>  p_rd_d_rdy_tbs,-- Asserted when GN4124 ready to accept read completion with data
    
          ---------------------------------------------------------
          -- To the arbiter (L2P data)
          wbm_arb_tdata_o => wbm_arb_tdata_s,
          wbm_arb_tkeep_o => wbm_arb_tkeep_s,
          wbm_arb_tuser_o => wbm_arb_tuser_s,
          wbm_arb_tlast_o => wbm_arb_tlast_s,
          wbm_arb_tvalid_o => wbm_arb_tvalid_s,
          wbm_arb_tready_i => wbm_arb_tready_tbs,
          wbm_arb_req_o    => wbm_arb_req_s,
    
          ---------------------------------------------------------
          -- CSR wishbone interface
          wb_clk_i   =>  clk_tbs,                     -- Wishbone bus clock
          wb_adr_o   =>  wb_adr_s,-- Address
          wb_dat_o   =>  wb_dat_ms_s,-- Data out
          wb_sel_o   =>  wb_sel_s, -- Byte select
          wb_stb_o   =>  wb_stb_s,                    -- Strobe
          wb_we_o    =>  wb_we_s,                    -- Write
          wb_cyc_o   =>  wb_cyc_s,                    -- Cycle
          wb_dat_i   =>  wb_dat_sm_s,-- Data in
          wb_ack_i   =>  wb_ack_s,                    -- Acknowledge
          wb_stall_i =>  wb_stall_tbs,                    -- Stall
          wb_err_i   =>  wb_err_tbs,                    -- Error
          wb_rty_i   =>  wb_rty_tbs,                    -- Retry
          wb_int_i   =>  wb_int_tbs                     -- Interrupt
          );
          
          
        dut2:bram_wbs
          generic map (
              ADDR_WIDTH => 6,
              DATA_WIDTH => 32 
          )
          port map (
              -- SYS CON
              clk            => clk_tbs,
              rst            => rst_tbs,
              
              -- Wishbone Slave in
              wb_adr_i    => wb_adr_s(5 downto 0),
              wb_dat_i    => wb_dat_ms_s,
              wb_we_i        => wb_we_s,
              wb_stb_i    => wb_stb_s,
              wb_cyc_i    => wb_cyc_s,
              wb_lock_i    => wb_stb_s,
              
              -- Wishbone Slave out
              wb_dat_o    => wb_dat_sm_s,
              wb_ack_o    => wb_ack_s
          );
    
    stimuli_p:process
    begin
        step <= 0;
        pd_wbm_hdr_start_tbs  <= '0';                     -- Header strobe
        pd_wbm_hdr_cid_tbs    <= X"0100";  -- Completion ID
        pd_wbm_hdr_rid_tbs    <= X"0000";  -- Requester ID
        pd_wbm_hdr_tag_tbs    <= X"00";
        pd_wbm_target_mrd_tbs <= '0';                      -- Target memory read
        pd_wbm_target_mwr_tbs <= '0';                      -- Target memory write

        pd_wbm_addr_start_tbs <= '0';                       -- Address strobe
        pd_wbm_addr_tbs       <= X"00000000";   -- Target address (in byte) that will increment with data
                                                                 -- increment = 4 bytes

        pd_wbm_data_valid_tbs <= '0';                       -- Indicates Data is valid
        pd_wbm_data_tbs       <= X"00000000";  -- Data
        
        p_rd_d_rdy_tbs <= "11";
        
        wbm_arb_tready_tbs <= '1';
        
        wb_stall_tbs <= '0';
        wb_err_tbs <= '0';
        wb_rty_tbs <= '0';
        wb_int_tbs <= '0';
        
        wait for 5*period;
        
        step <= 1;
        
        pd_wbm_hdr_start_tbs <= '1';
        
        pd_wbm_target_mrd_tbs <= '0';                      -- Target memory read
        pd_wbm_target_mwr_tbs <= '1';                      -- Target memory write

        pd_wbm_addr_start_tbs <= '1';                       -- Address strobe
        pd_wbm_addr_tbs       <= X"5555AAAA";   -- Target address (in byte) that will increment with data
                                                                 -- increment = 4 bytes

        pd_wbm_data_valid_tbs <= '1';                       -- Indicates Data is valid
        pd_wbm_data_tbs       <= X"5000FDAD";  -- Data
        
        

        
        wait for period;
        
        step <= 3;
        
        pd_wbm_hdr_start_tbs <= '0';
        pd_wbm_target_mwr_tbs <= '0';
        pd_wbm_data_valid_tbs <= '0'; 
        pd_wbm_addr_start_tbs <= '0';
        
        wait for period;
        
        
        step <= 4;
        pd_wbm_hdr_start_tbs <= '1';
        
        pd_wbm_target_mrd_tbs <= '1';                      -- Target memory read
        pd_wbm_target_mwr_tbs <= '0';                      -- Target memory write

        pd_wbm_addr_start_tbs <= '1';                       -- Address strobe
        pd_wbm_addr_tbs       <= X"5555AAAA";   -- Target address (in byte) that will increment with data
                                                                 -- increment = 4 bytes

        pd_wbm_data_valid_tbs <= '1';                       -- Indicates Data is valid
        pd_wbm_data_tbs       <= X"5000FDAD";  -- Data
        
        
        
        
        wait for period;
        
        step <= 5;
        pd_wbm_hdr_start_tbs <= '0';
        pd_wbm_target_mrd_tbs <= '0';
        pd_wbm_data_valid_tbs <= '0';
        pd_wbm_addr_start_tbs <= '0'; 
        wait for period;
        
        wait;
    end process stimuli_p;
    
end Behavioral;
