----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/29/2017 10:01:38 AM
-- Design Name: 
-- Module Name: p2l_decoder_wb32_bench - Behavioral
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

entity p2l_decoder_wb32_bench is
--  Port ( );
end p2l_decoder_wb32_bench;

architecture Behavioral of p2l_decoder_wb32_bench is
		constant period : time := 100 ns;
        constant axis_data_width_c : integer := 64;
        constant axis_rx_tkeep_width_c : integer := 64/8;
        constant axis_rx_tuser_width_c : integer := 22;
        constant wb_address_width_c : integer := 64;
        constant wb_data_width_c : integer := 32;
		
		signal clk_tbs : STD_LOGIC;
        signal rst_tbs : STD_LOGIC;
        signal rst_n_tbs : std_logic;
        -- Slave AXI-Stream
        signal s_axis_rx_tdata_tbs : STD_LOGIC_VECTOR (axis_data_width_c - 1 downto 0);
        signal s_axis_rx_tkeep_tbs : STD_LOGIC_VECTOR (axis_rx_tkeep_width_c - 1 downto 0);
        signal s_axis_rx_tlast_tbs : STD_LOGIC;
        signal s_axis_rx_ready_s : STD_LOGIC;
        signal s_axis_rx_tuser_tbs : STD_LOGIC_VECTOR (axis_rx_tuser_width_c - 1 downto 0);
        signal s_axis_rx_tvalid_tbs : STD_LOGIC;
        -- To the wishbone master
        signal pd_wbm_address_s : STD_LOGIC_VECTOR(63 downto 0);
        signal pd_wbm_data_s : STD_LOGIC_VECTOR(31 downto 0);
        signal pd_wbm_valid_s : std_logic;
        signal wbm_pd_ready_s : std_logic;
        signal pd_op_s : STD_LOGIC_VECTOR(2 downto 0);
        signal pd_header_type_s : STD_LOGIC;
        signal pd_payload_length_s : STD_LOGIC_VECTOR(9 downto 0);
        --signal pd_wbm_hdr_start_s  : std_logic;                      -- Header strobe ==> valid
        signal pd_wbm_hdr_rid_s      : std_logic_vector(15 downto 0);  -- Requester ID
        --signal pd_wbm_hdr_cid_s      : std_logic_vector(15 downto 0);  -- Completer ID
        signal pd_wbm_hdr_tag_s      : std_logic_vector(7 downto 0);
        signal pd_wbm_target_mrd_s : std_logic;                      -- Target memory read
        signal pd_wbm_target_mwr_s : std_logic;          
        -- L2P DMA
        signal pd_pdm_data_valid_s  : std_logic;                      -- Indicates Data is valid
        signal pd_pdm_data_last_s   : std_logic;                      -- Indicates end of the packet
        signal pd_pdm_data_s        : std_logic_vector(63 downto 0);  -- Data
        signal pd_pdm_keep_s        : std_logic_vector(7 downto 0);
        
        ---------------------------------------------------------
        -- To the arbiter (L2P data)
        signal wbm_arb_tdata_s : STD_LOGIC_VECTOR (64 - 1 downto 0);
        signal wbm_arb_tkeep_s : STD_LOGIC_VECTOR (64/8 - 1 downto 0);
        --signal wbm_arb_tuser_s : STD_LOGIC_VECTOR (3 downto 0);
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
        
        type tlp_type_t is (MRd,MRdLk,MWr,IORd,IOWr,CfgRd0,CfgWr0,CfgRd1,CfgWr1,TCfgRd,TCfgWr,Msg,MsgD,Cpl,CplD,CplLk,CplDLk,LPrfx,unknown);
        type header_t is (H3DW,H4DW);
        signal byte_swap_c : STD_LOGIC_VECTOR (1 downto 0);
        type bool_t is (false,true);
        -- Test bench specific signals
        signal step : integer;
        
        procedure axis_data_p (
            tlp_type_i : in tlp_type_t;
            header_type_i : in header_t;
            address_i : in STD_LOGIC_VECTOR(wb_address_width_c-1 downto 0); 
            data_i : in STD_LOGIC_VECTOR(64-1 downto 0);
            length_i : in STD_LOGIC_VECTOR(10-1 downto 0); 
            rx_data_0 : out STD_LOGIC_VECTOR (axis_data_width_c - 1 downto 0);
            rx_data_1 : out STD_LOGIC_VECTOR (axis_data_width_c - 1 downto 0);
            rx_data_2 : out STD_LOGIC_VECTOR (axis_data_width_c - 1 downto 0)
            ) is
        begin
            rx_data_0(63 downto 48) := X"0000"; --H1 Requester ID
            rx_data_0(47 downto 40) := X"00"; --H1 Tag 
            
            if length_i = "00" & X"01" then
                rx_data_0(39 downto 32) := X"0f"; --H1 Tag and Last DW BE and 1st DW BE see ch. 2.2.5 pcie spec
            else
                rx_data_0(39 downto 32) := X"ff";
            end if;
            
            case tlp_type_i is
                when MRd =>
                    if header_type_i = H3DW then
                        rx_data_0(31 downto 29) := "000"; -- H0 FMT
                    else
                        rx_data_0(31 downto 29) := "001"; -- H0 FMT
                    end if;
                    rx_data_0(28 downto 24) := "00000"; -- H0 type Memory request
                when MWr =>
                    if header_type_i = H3DW then
                        rx_data_0(31 downto 29) := "010"; -- H0 FMT
                    else
                        rx_data_0(31 downto 29) := "011"; -- H0 FMT
                    end if;
                    rx_data_0(28 downto 24) := "00000"; -- H0 type Memory request
                when CplD =>
                    rx_data_0(31 downto 29) := "010"; -- H0 FMT
                    rx_data_0(28 downto 24) := "01010"; -- H0 type Memory request
                when others =>
                
                
            end case;
            
            
            
            
            rx_data_0(23 downto 16) := X"00";   -- some unused bits
            rx_data_0(15 downto 10) := "000000"; --H0 unused bits 
            rx_data_0(9 downto 0) := length_i;  --H0 length H & length L
            
            if header_type_i = H3DW then
                rx_data_1(63 downto 32) := data_i(31 downto 0); --D0 Data 
                rx_data_1(31 downto 0)  := address_i(31 downto 0);  --H2 Adress    
                rx_data_2 := (others => '0');
            else
                rx_data_1(63 downto 32) := address_i(31 downto 0); --H3 Adress L (Last 4 bit must always pull at zero, byte to 8 byte)
                rx_data_1(31 downto 0)  := address_i(63 downto 32);  --H2 Adress H
                rx_data_2 := data_i;
            end if;
            
        
            
        
            
        end axis_data_p;
        
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
            pd_wbm_hdr_rid_o    : out std_logic_vector(15 downto 0);  -- Requester ID
            --pd_wbm_hdr_cid_o    : out std_logic_vector(15 downto 0);  -- Completer ID
            pd_wbm_hdr_tag_o    : out std_logic_vector(7 downto 0);
            pd_wbm_target_mrd_o : out std_logic;                      -- Target memory read
            pd_wbm_target_mwr_o : out std_logic;                      -- Target memory write
            
            wbm_pd_ready_i : in std_logic;
            --wbm_pd_done_i : in std_logic;
            pd_op_o : out STD_LOGIC_VECTOR(2 downto 0);
            pd_header_type_o : out STD_LOGIC;
            pd_payload_length_o : out STD_LOGIC_VECTOR(9 downto 0);
            -- L2P DMA
            pd_pdm_data_valid_o  : out std_logic;                      -- Indicates Data is valid
            pd_pdm_data_valid_w_o  : out std_logic_vector(1 downto 0);
            pd_pdm_data_last_o   : out std_logic;                      -- Indicates end of the packet
            pd_pdm_keep_o         : out std_logic_vector(7 downto 0);
            pd_pdm_data_o        : out std_logic_vector(63 downto 0);  -- Data
            --debug outputs
            states_do : out STD_LOGIC_VECTOR(3 downto 0)
        );
        end component;
        
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
              --wbm_arb_tuser_o : out STD_LOGIC_VECTOR (3 downto 0);
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
begin

    byte_swap_c <= "11";
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
	
	stimuli_p: process
		variable data_0 : STD_LOGIC_VECTOR (axis_data_width_c - 1 downto 0);
		variable data_1 : STD_LOGIC_VECTOR (axis_data_width_c - 1 downto 0);
		variable data_2 : STD_LOGIC_VECTOR (axis_data_width_c - 1 downto 0);
	begin
		step <= 1;
		s_axis_rx_tdata_tbs <= (others => '0');
		s_axis_rx_tkeep_tbs <= (others => '0');
		s_axis_rx_tlast_tbs <= '0';
		s_axis_rx_tuser_tbs <= (others => '0');
		s_axis_rx_tvalid_tbs <= '0';
		--wbm_pd_ready_tbs <= '1';
		wbm_arb_tready_tbs <= '1';
        
        wb_stall_tbs <= '0';
        wb_err_tbs <= '0';
        wb_rty_tbs <= '0';
        wb_int_tbs <= '0';
		
		
		wait for 5*period;
		
		step <= 2;
		axis_data_p (MWr,H3DW,X"0000000000000000",X"00000000" & X"BEEF5A5A","00" & X"01",data_0,data_1,data_2);
		s_axis_rx_tdata_tbs <= data_0;

		s_axis_rx_tkeep_tbs <= X"FF";
		s_axis_rx_tlast_tbs <= '0';
		s_axis_rx_tuser_tbs <= "11" & X"e4004";
		s_axis_rx_tvalid_tbs <= '1';

		wait for period;
		step <= 3;
		s_axis_rx_tdata_tbs <= data_1;
		s_axis_rx_tkeep_tbs <= X"FF";
		s_axis_rx_tlast_tbs <= '1';
		s_axis_rx_tuser_tbs <= "10" & X"e4004";
		s_axis_rx_tvalid_tbs <= '1';
		
		
		wait for period;
		step <= 4;
		s_axis_rx_tdata_tbs <= X"0000000000000001";
		s_axis_rx_tkeep_tbs <= X"FF";
		s_axis_rx_tlast_tbs <= '0';
		s_axis_rx_tuser_tbs <= "11" & X"60000";
		s_axis_rx_tvalid_tbs <= '0';
		--wbm_pd_ready_tbs <= '0';

		wait for period;
		step <= 5;
		s_axis_rx_tdata_tbs <= X"0000000000000001";
		s_axis_rx_tkeep_tbs <= X"FF";
		s_axis_rx_tlast_tbs <= '0';
		s_axis_rx_tuser_tbs <= "11" & X"60000";
		s_axis_rx_tvalid_tbs <= '0';

		wait for period;
		wait for period;
		--wbm_pd_ready_tbs <= '1';
		wait for period;
		step <= 6;
		axis_data_p (MRd,H3DW,X"0000000000000000",X"00000000" & X"5A5AEFBE","00" & X"00",data_0,data_1,data_2);
		s_axis_rx_tdata_tbs <= data_0;
		s_axis_rx_tkeep_tbs <= X"FF";
		s_axis_rx_tlast_tbs <= '0';
		s_axis_rx_tuser_tbs <= "00" & X"e4004";
		s_axis_rx_tvalid_tbs <= '1';
		wait for period;
		step <= 7;
		
		s_axis_rx_tdata_tbs <= data_1;
		s_axis_rx_tkeep_tbs <= X"FF";
		s_axis_rx_tlast_tbs <= '1';
		s_axis_rx_tuser_tbs <= "11" & X"60004";
		s_axis_rx_tvalid_tbs <= '1';
		wait for period;
		s_axis_rx_tdata_tbs <= X"0000000000A00001";
		s_axis_rx_tkeep_tbs <= X"FF";
		s_axis_rx_tlast_tbs <= '0';
		s_axis_rx_tuser_tbs <= "11" & X"60000";
		s_axis_rx_tvalid_tbs <= '0';
		wait for period;
		wait for period;
		step <= 8;
		wait for period;
		wait for period;

		wait for period;

		step <= 9;
		--wbm_pd_ready_tbs <= '0';
		wait for period;
		
		step <= 10;
        axis_data_p (MWr,H3DW,X"0000000000000000",X"00000000" & X"BEEF5A5A","00" & X"01",data_0,data_1,data_2);
        s_axis_rx_tdata_tbs <= data_0;

        s_axis_rx_tkeep_tbs <= X"FF";
        s_axis_rx_tlast_tbs <= '0';
        s_axis_rx_tuser_tbs <= "11" & X"e4004";
        s_axis_rx_tvalid_tbs <= '1';
        
        wait for period;
        wait for period;
        --wbm_pd_ready_tbs <= '1';
        wait for period;
        step <= 11;
        s_axis_rx_tdata_tbs <= data_1;
        s_axis_rx_tkeep_tbs <= X"FF";
        s_axis_rx_tlast_tbs <= '1';
        s_axis_rx_tvalid_tbs <= '1';
        s_axis_rx_tuser_tbs <= "10" & X"e4004";
        
        
        
        wait for period;
        step <= 12;
        s_axis_rx_tdata_tbs <= X"0000000000000001";
        s_axis_rx_tkeep_tbs <= X"FF";
        s_axis_rx_tlast_tbs <= '0';
        s_axis_rx_tuser_tbs <= "11" & X"60000";
        s_axis_rx_tvalid_tbs <= '0';
        --wbm_pd_ready_tbs <= '0';

        wait for period;
        step <= 13;
        s_axis_rx_tdata_tbs <= X"0000000000000001";
        s_axis_rx_tkeep_tbs <= X"FF";
        s_axis_rx_tlast_tbs <= '0';
        s_axis_rx_tuser_tbs <= "11" & X"60000";
        s_axis_rx_tvalid_tbs <= '0';

        wait for period;
        
        wait for period;
        --wbm_pd_ready_tbs <= '1';
        wait for period;
		
		
		step <= 100;
		s_axis_rx_tdata_tbs <= X"000F000000A00001";
		s_axis_rx_tkeep_tbs <= X"FF";
		s_axis_rx_tlast_tbs <= '0';
		s_axis_rx_tuser_tbs <= "11" & X"60000";
		s_axis_rx_tvalid_tbs <= '0';
		wait;
		
	end process stimuli_p;
	
	dut1:p2l_decoder
	port map(
		clk_i => clk_tbs,
		rst_i => rst_tbs,
		-- Slave AXI-Stream
		s_axis_rx_tdata_i => s_axis_rx_tdata_tbs,
		s_axis_rx_tkeep_i => s_axis_rx_tkeep_tbs,
		s_axis_rx_tlast_i => s_axis_rx_tlast_tbs,
		s_axis_rx_tready_o => s_axis_rx_ready_s,
		s_axis_rx_tuser_i => s_axis_rx_tuser_tbs,
		s_axis_rx_tvalid_i => s_axis_rx_tvalid_tbs,
		-- To the wishbone master
        pd_wbm_address_o => pd_wbm_address_s,
        pd_wbm_data_o => pd_wbm_data_s,
        pd_pdm_keep_o => pd_pdm_keep_s,
        pd_wbm_valid_o => pd_wbm_valid_s,
        pd_wbm_hdr_rid_o    => pd_wbm_hdr_rid_s,
        pd_wbm_hdr_tag_o    => pd_wbm_hdr_tag_s,
        pd_wbm_target_mrd_o => pd_wbm_target_mrd_s,
        pd_wbm_target_mwr_o => pd_wbm_target_mwr_s,
        wbm_pd_ready_i => wbm_pd_ready_s,
        pd_op_o => pd_op_s,
        pd_header_type_o => pd_header_type_s,
        pd_payload_length_o => pd_payload_length_s,

		-- L2P DMA
		pd_pdm_data_valid_o => pd_pdm_data_valid_s,
        pd_pdm_data_last_o => pd_pdm_data_last_s,
        pd_pdm_data_o => pd_pdm_data_s
	);
	
    rst_n_tbs <= not rst_tbs;
    dut2:wbmaster32
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
        pd_wbm_hdr_start_i  => pd_wbm_valid_s,                     -- Header strobe
        --pd_wbm_hdr_length_i : in std_logic_vector(9 downto 0);   -- Packet length in 32-bit words multiples
        pd_wbm_hdr_rid_i => pd_wbm_hdr_rid_s,  -- Requester ID
        pd_wbm_hdr_cid_i => X"0100",  -- Completer ID
        pd_wbm_hdr_tag_i => pd_wbm_hdr_tag_s,
        pd_wbm_target_mrd_i => pd_wbm_target_mrd_s,                     -- Target memory read
        pd_wbm_target_mwr_i => pd_wbm_target_mwr_s,                     -- Target memory write
        --
        -- Address
        pd_wbm_addr_start_i =>  pd_wbm_valid_s,                    -- Address strobe
        pd_wbm_addr_i       =>  pd_wbm_address_s(31 downto 0),-- Target address (in byte) that will increment with data
                                                               -- increment = 4 bytes
        --
        -- Data
        pd_wbm_data_valid_i => pd_wbm_valid_s,                     -- Indicates Data is valid
        --pd_wbm_data_last_i  : in std_logic;                      -- Indicates end of the packet
        pd_wbm_data_i       => pd_wbm_data_s, -- Data
        --pd_wbm_be_i         : in std_logic_vector(3 downto 0);   -- Byte Enable for data
        
        ---------------------------------------------------------
        -- P2L channel control
        p_wr_rdy_o   =>  open,-- Ready to accept target write
        p2l_rdy_o    =>  wbm_pd_ready_s,                   -- De-asserted to pause transfer already in progress
        p_rd_d_rdy_i =>  "11",-- Asserted when GN4124 ready to accept read completion with data
        
        ---------------------------------------------------------
        -- To the arbiter (L2P data)
        wbm_arb_tdata_o => wbm_arb_tdata_s,
        wbm_arb_tkeep_o => wbm_arb_tkeep_s,
        --wbm_arb_tuser_o => wbm_arb_tuser_s,
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
    
    dut3:bram_wbs
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
    
end Behavioral;
