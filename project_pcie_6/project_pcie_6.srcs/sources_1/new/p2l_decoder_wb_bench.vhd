library IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_STD.all;
use IEEE.std_logic_unsigned.all; 

use work.gn4124_core_pkg.all;

entity p2l_decoder_wb_bench is
    generic (
		constant period : time := 100 ns;
		constant axis_data_width_c : integer := 64;
		constant axis_rx_tkeep_width_c : integer := 64/8;
		constant axis_rx_tuser_width_c : integer := 22;
		constant wb_address_width_c : integer := 64;
		constant wb_data_width_c : integer := 32
	);
	--port ();
end p2l_decoder_wb_bench;

architecture Behavioral of p2l_decoder_wb_bench is
		signal clk_tbs : STD_LOGIC;
		signal rst_tbs : STD_LOGIC;
		-- Slave AXI-Stream
		signal s_axis_rx_tdata_tbs : STD_LOGIC_VECTOR (axis_data_width_c - 1 downto 0);
		signal s_axis_rx_tkeep_tbs : STD_LOGIC_VECTOR (axis_rx_tkeep_width_c - 1 downto 0);
		signal s_axis_rx_tlast_tbs : STD_LOGIC;
		signal s_axis_rx_ready_s : STD_LOGIC;
		signal s_axis_rx_tuser_tbs : STD_LOGIC_VECTOR (axis_rx_tuser_width_c - 1 downto 0);
		signal s_axis_rx_tvalid_tbs : STD_LOGIC;
        -- Master AXI-Stream
        signal m_axis_tx_tdata_s : STD_LOGIC_VECTOR (axis_data_width_c - 1 downto 0);
        signal m_axis_tx_tkeep_s : STD_LOGIC_VECTOR (axis_data_width_c/8 - 1 downto 0);
        signal m_axis_tx_tuser_s : STD_LOGIC_VECTOR (3 downto 0);
        signal m_axis_tx_tlast_s : STD_LOGIC;
        signal m_axis_tx_tvalid_s : STD_LOGIC;
        signal m_axis_tx_ready_tbs : STD_LOGIC;
        -- Wishbone Master
        signal wb_adr_s : STD_LOGIC_VECTOR (32 - 1 downto 0);
        signal wb_dat_o_s : STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
        signal wb_dat_i_s : STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
        signal wb_cyc_s : STD_LOGIC;
        signal wb_sel_s : STD_LOGIC_VECTOR (wb_data_width_c - 1 downto 0);
        signal wb_stb_s : STD_LOGIC;
        signal wb_we_s : STD_LOGIC;
        signal wb_ack_s : STD_LOGIC;
        signal wb_ack_tbs : STD_LOGIC;
        -- To the wishbone master
        signal pd_wbm_address_s : STD_LOGIC_VECTOR(63 downto 0);
        signal pd_wbm_data_s : STD_LOGIC_VECTOR(31 downto 0);
        signal pd_wbm_valid_s : std_logic;
        signal wbm_pd_ready_s : std_logic;
        signal wbm_pd_done_s : std_logic;
        signal pd_op_s : STD_LOGIC_VECTOR(2 downto 0);
        signal pd_header_type_s : STD_LOGIC;
        signal pd_payload_length_s : STD_LOGIC_VECTOR(9 downto 0);
		-- L2P DMA
		signal pd_pdm_data_valid_s  : std_logic;                      -- Indicates Data is valid
        signal pd_pdm_data_last_s   : std_logic;                      -- Indicates end of the packet
        signal pd_pdm_data_s        : std_logic_vector(63 downto 0);  -- Data
        signal pd_pdm_keep_s	    : std_logic_vector(7 downto 0);

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
				rx_data_1(31 downto 0)	:= address_i(31 downto 0);  --H2 Adress	
				rx_data_2 := (others => '0');
			else
				rx_data_1(63 downto 32) := address_i(31 downto 0); --H3 Adress L (Last 4 bit must always pull at zero, byte to 8 byte)
				rx_data_1(31 downto 0)	:= address_i(63 downto 32);  --H2 Adress H
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
			wbm_pd_ready_i : in std_logic;
			wbm_pd_done_i : in std_logic;
            pd_op_o : out STD_LOGIC_VECTOR(2 downto 0);
            pd_header_type_o : out STD_LOGIC;
            pd_payload_length_o : out STD_LOGIC_VECTOR(9 downto 0);
			-- L2P DMA
			pd_pdm_data_valid_o  : out std_logic;                      -- Indicates Data is valid
			pd_pdm_data_last_o   : out std_logic;                      -- Indicates end of the packet
			pd_pdm_keep_o		 : out std_logic_vector(7 downto 0);
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
                wbm_pd_done_o : out std_logic;
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
            wb_dat_i            : in std_logic_vector(wb_data_width_c-1 downto 0);
            wb_we_i            : in std_logic;
            wb_stb_i            : in std_logic;
            wb_cyc_i            : in std_logic; 
            wb_lock_i        : in std_logic; -- nyi
            
            -- Wishbone Slave out
            wb_dat_o            : out std_logic_vector(wb_data_width_c-1 downto 0);
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
		m_axis_tx_ready_tbs <= '1';
		--wbm_pd_ready_tbs <= '1';
		wb_ack_tbs <= '0';
		wait for period;
		
		wait for period;
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
        wb_ack_tbs <= '1';
		wait for period;
		wb_ack_tbs <= '0';
		wait for 5*period;
		--wbm_pd_ready_tbs <= '1';
		step <= 6;
		axis_data_p (MRd,H3DW,X"0000000000000000",X"00000000" & X"5A5AEFBE","00" & X"00",data_0,data_1,data_2);
		s_axis_rx_tdata_tbs <= data_0;
		s_axis_rx_tkeep_tbs <= X"FF";
		s_axis_rx_tlast_tbs <= '0';
		s_axis_rx_tuser_tbs <= "00" & X"e4004";
		s_axis_rx_tvalid_tbs <= '1';
		wait for period;
		
		step <= 106;
        s_axis_rx_tdata_tbs <= X"000F000000A00001";
        s_axis_rx_tkeep_tbs <= X"FF";
        s_axis_rx_tlast_tbs <= '0';
        s_axis_rx_tuser_tbs <= "11" & X"60000";
        s_axis_rx_tvalid_tbs <= '0';
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
		wb_ack_tbs <= '1';
		wait for period;
		wb_ack_tbs <= '0';
		wait for period;

		wait for period;

		step <= 9;
		wait for period;
		-- wait for period;
		-- wait for period;
		-- step <= 10;
		-- axis_data_p (MWr,H4DW,X"0000000000000010",X"CACA5A5A" & X"BEEF5A5A","00" & X"02",data_0,data_1,data_2);
		-- s_axis_rx_tdata_tbs <= data_0;
		-- s_axis_rx_tkeep_tbs <= X"FF";
		-- s_axis_rx_tlast_tbs <= '0';
		-- s_axis_rx_tuser_tbs <= "11" & X"60004";
		-- s_axis_rx_tvalid_tbs <= '1';
		-- m_axis_tx_ready_tbs <= '1';
		-- wait for period;
		-- step <= 11;
		-- s_axis_rx_tdata_tbs <= data_1;
		-- s_axis_rx_tkeep_tbs <= X"FF";
		-- s_axis_rx_tlast_tbs <= '0';
		-- s_axis_rx_tuser_tbs <= "11" & X"60004";
		-- s_axis_rx_tvalid_tbs <= '1';
		-- m_axis_tx_ready_tbs <= '1';
		-- wait for period;
		-- step <= 12;
		-- s_axis_rx_tdata_tbs <= data_2;
		-- s_axis_rx_tkeep_tbs <= X"FF";
		-- s_axis_rx_tlast_tbs <= '1';
		-- s_axis_rx_tuser_tbs <= "11" & X"60004";
		-- s_axis_rx_tvalid_tbs <= '1';
		-- m_axis_tx_ready_tbs <= '1';
		-- wait for period;
		-- step <= 12;
		-- s_axis_rx_tdata_tbs <= X"0000000000A00001";
		-- s_axis_rx_tkeep_tbs <= X"FF";
		-- s_axis_rx_tlast_tbs <= '0';
		-- s_axis_rx_tuser_tbs <= "11" & X"60000";
		-- s_axis_rx_tvalid_tbs <= '0';
		-- m_axis_tx_ready_tbs <= '1';
		-- wait for period;
		-- step <= 13;
		-- wait for period;
		-- wait for period;
		-- step <= 14;
		-- axis_data_p (MRd,H4DW,X"0000000000000010",X"BEEF5A5A" & X"CACA5A5A","00" & X"00",data_0,data_1,data_2);
		-- s_axis_rx_tdata_tbs <= data_0;
		-- s_axis_rx_tkeep_tbs <= X"FF";
		-- s_axis_rx_tlast_tbs <= '0';
		-- s_axis_rx_tuser_tbs <= "11" & X"60004";
		-- s_axis_rx_tvalid_tbs <= '1';
		-- m_axis_tx_ready_tbs <= '1';
		-- wait for period;
		-- step <= 15;
		-- s_axis_rx_tdata_tbs <= data_1;
		-- s_axis_rx_tkeep_tbs <= X"FF";
		-- s_axis_rx_tlast_tbs <= '1';
		-- s_axis_rx_tuser_tbs <= "11" & X"60004";
		-- s_axis_rx_tvalid_tbs <= '1';
		-- m_axis_tx_ready_tbs <= '1';
		-- wait for period;
		-- step <= 16;
		-- s_axis_rx_tdata_tbs <= X"0000000000A00001";
		-- s_axis_rx_tkeep_tbs <= X"FF";
		-- s_axis_rx_tlast_tbs <= '0';
		-- s_axis_rx_tuser_tbs <= "11" & X"60000";
		-- s_axis_rx_tvalid_tbs <= '0';
		-- m_axis_tx_ready_tbs <= '1';
		-- wait for period;
		-- wait for period;
		-- wait for period;
		-- wait for period;
		-- wait for period;
	    wait for period;
		step <= 17;
		axis_data_p (CplD,H3DW,X"0000000000000010",X"5A5AEFBE" & X"0000EFBE","00" & X"04",data_0,data_1,data_2);
		s_axis_rx_tdata_tbs <= data_0;
		s_axis_rx_tkeep_tbs <= X"FF";
		s_axis_rx_tlast_tbs <= '0';
		s_axis_rx_tuser_tbs <= "11" & X"60004";
		s_axis_rx_tvalid_tbs <= '1';
		wait for period;
		step <= 18;
		s_axis_rx_tdata_tbs <= data_1;
		wait for period;
		s_axis_rx_tdata_tbs <=  X"0200EFBE" & X"0100EFBE";
		wait for period;
		s_axis_rx_tdata_tbs <=  X"0400CACA" & X"0300EFBE";
		s_axis_rx_tkeep_tbs <= X"0F";
		s_axis_rx_tlast_tbs <= '1';
		wait for period;
        
        
--        s_axis_rx_tdata_tbs <= X"000F000000A00001";
--        s_axis_rx_tkeep_tbs <= X"FF";
--        s_axis_rx_tlast_tbs <= '0';
--        s_axis_rx_tuser_tbs <= "11" & X"60000";
--        s_axis_rx_tvalid_tbs <= '0';
--        wait for period;
        
        step <= 19;
        axis_data_p (CplD,H3DW,X"0000000000000010",X"5A5AEFBE" & X"0000EFBE","00" & X"02",data_0,data_1,data_2);
        s_axis_rx_tdata_tbs <= data_0;
        s_axis_rx_tkeep_tbs <= X"FF";
        s_axis_rx_tlast_tbs <= '0';
        s_axis_rx_tuser_tbs <= "11" & X"60004";
        s_axis_rx_tvalid_tbs <= '1';
        wait for period;
        step <= 20;
        s_axis_rx_tdata_tbs <= data_1;
        --wait for period;
        --s_axis_rx_tdata_tbs <=  X"0200EFBE" & X"0100EFBE";
        wait for period;
        s_axis_rx_tdata_tbs <=  X"0400CACA" & X"0300EFBE";
        s_axis_rx_tkeep_tbs <= X"0F";
        s_axis_rx_tlast_tbs <= '1';
		wait for period;
		
        step <= 30;
        axis_data_p (CplD,H3DW,X"0000000000000010",X"5A5AEFBE" & X"0000EFBE","00" & X"01",data_0,data_1,data_2);
        s_axis_rx_tdata_tbs <= data_0;
        s_axis_rx_tkeep_tbs <= X"FF";
        s_axis_rx_tlast_tbs <= '0';
        s_axis_rx_tuser_tbs <= "11" & X"60004";
        s_axis_rx_tvalid_tbs <= '1';
        wait for period;
        
        step <= 31;
        s_axis_rx_tdata_tbs <= data_1;
        --wait for period;
        --s_axis_rx_tdata_tbs <=  X"0200EFBE" & X"0100EFBE";
        s_axis_rx_tlast_tbs <= '1';
		wait for period;
        step <= 40;
        axis_data_p (CplD,H3DW,X"0000000000000010",X"5A5AEFBE" & X"0000EFBE","00" & X"05",data_0,data_1,data_2);
        s_axis_rx_tdata_tbs <= data_0;
        s_axis_rx_tkeep_tbs <= X"FF";
        s_axis_rx_tlast_tbs <= '0';
        s_axis_rx_tuser_tbs <= "11" & X"60004";
        s_axis_rx_tvalid_tbs <= '1';
        wait for period;
        step <= 41;
        s_axis_rx_tdata_tbs <= data_1;
        wait for period;
        s_axis_rx_tdata_tbs <=  X"0200EFBE" & X"0100EFBE";
        wait for period;
        s_axis_rx_tdata_tbs <=  X"0400EFBE" & X"0300EFBE";
        s_axis_rx_tkeep_tbs <= X"FF";
        s_axis_rx_tlast_tbs <= '1';
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
        wbm_pd_done_i => wbm_pd_done_s,
        wbm_pd_ready_i => wbm_pd_ready_s,
        pd_op_o => pd_op_s,
        pd_header_type_o => pd_header_type_s,
        pd_payload_length_o => pd_payload_length_s,

		-- L2P DMA
		pd_pdm_data_valid_o => pd_pdm_data_valid_s,
        pd_pdm_data_last_o => pd_pdm_data_last_s,
        pd_pdm_data_o => pd_pdm_data_s
	);
	
	dut2:wb_master
    port map(
        clk_i => clk_tbs,
        rst_i => rst_tbs,
        
        -- From packet decoder
        pd_wbm_address_i => pd_wbm_address_s,
        pd_wbm_data_i => pd_wbm_data_s,
        pd_wbm_valid_i => pd_wbm_valid_s,
        wbm_pd_ready_o => wbm_pd_ready_s,
        wbm_pd_done_o => wbm_pd_done_s,
        pd_op_i => pd_op_s,
        
        -- Master AXI-Stream
        wbm_arb_tdata_o => m_axis_tx_tdata_s,
        wbm_arb_tkeep_o => m_axis_tx_tkeep_s,
        wbm_arb_tuser_o => m_axis_tx_tuser_s,
        wbm_arb_tlast_o => m_axis_tx_tlast_s,
        wbm_arb_tvalid_o => m_axis_tx_tvalid_s,
        wbm_arb_tready_i => m_axis_tx_ready_tbs,

        -- Wishbone Master
        wb_adr_o => wb_adr_s,
        wb_dat_o => wb_dat_o_s,
        wb_dat_i => wb_dat_i_s,
        wb_cyc_o => wb_cyc_s,
        wb_stb_o => wb_stb_s,
        wb_we_o => wb_we_s,
        wb_ack_i => wb_ack_s
    );
    
    dut3:bram_wbs
    generic map (
        ADDR_WIDTH => 6,
        DATA_WIDTH => wb_data_width_c 
    )
    port map (
        -- SYS CON
        clk            => clk_tbs,
        rst            => rst_tbs,
        
        -- Wishbone Slave in
        wb_adr_i    => wb_adr_s(9 downto 4),
        wb_dat_i    => wb_dat_o_s,
        wb_we_i        => wb_we_s,
        wb_stb_i    => wb_stb_s,
        wb_cyc_i    => wb_cyc_s,
        wb_lock_i    => wb_stb_s,
        
        -- Wishbone Slave out
        wb_dat_o    => wb_dat_i_s,
        wb_ack_o    => wb_ack_s
    );
	
	
	
end Behavioral;