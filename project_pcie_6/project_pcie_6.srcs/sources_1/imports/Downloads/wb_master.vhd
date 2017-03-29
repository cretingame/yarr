library IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_STD.all;

use work.gn4124_core_pkg.all;

entity wb_master is
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
end wb_master;

architecture Behavioral of wb_master is
	
	type state_t is (idle,  wb_write,  wb_read, hd0_tx, hd1_tx);
	signal state_s : state_t;
	signal previous_state_s : state_t;
	--signal wb_dat_o_s : STD_LOGIC_VECTOR (32 - 1 downto 0);
	--signal wb_we_s : STD_LOGIC;
	constant payload_length_c : STD_LOGIC_VECTOR(9 downto 0) := "0000000001";
	type header_t is (H3DW,H4DW);
	signal header_type_s : header_t;
	type bool_t is (false,true);
	signal address_s : STD_LOGIC_VECTOR(64-1 downto 0); 
	signal data_s : STD_LOGIC_VECTOR(32-1 downto 0);
	signal op_s : STD_LOGIC_VECTOR(2 downto 0);
	signal done_s : std_logic;
	signal wb_ack_s : std_logic;
	
	signal m_axis_tx_tdata_s : STD_LOGIC_VECTOR (64 - 1 downto 0);
	--signal wb_dat_i_s : STD_LOGIC_VECTOR (32 - 1 downto 0);

            
    constant MRd_c : STD_LOGIC_VECTOR(2 downto 0) := "001";
    constant MWr_c : STD_LOGIC_VECTOR(2 downto 0):= "010";
    constant CplD_c : STD_LOGIC_VECTOR(2 downto 0):= "011";
    constant unknown_c : STD_LOGIC_VECTOR(2 downto 0):= "000";

	
	signal byte_swap_c : STD_LOGIC_VECTOR (1 downto 0);
begin
    byte_swap_c <= "11";

	state_p:process(rst_i,clk_i) 
	begin
		if rst_i = '1' then
			state_s <= idle;
			previous_state_s <= idle;
		elsif clk_i = '1' and clk_i'event then
		    previous_state_s <= state_s;
			case state_s is
				when idle =>
                    if pd_wbm_valid_i = '1' and (pd_op_i = MRd_c or pd_op_i = MWr_c) then
                        state_s <= wb_write;
                    end if;
				when wb_write =>
					state_s <= wb_read;

				when wb_read =>
					if wb_ack_s = '1' then
						if op_s = MWr_c then
							state_s <= idle;
						--elsif wb_we_s = '0' then
							--state_s <= wb_read;
						else
							state_s <= hd0_tx;
						end if;
					end if;
				when hd0_tx => 
					if wbm_arb_tready_i = '1' then
						state_s <= hd1_tx;
					end if;
				when hd1_tx =>

                     state_s <= idle;


			end case;
		end if;		
	end process state_p;
	
--	delay_p: process(clk_i)
--	begin
--		if clk_i = '1' and clk_i'event then

--			wb_dat_i_s <= wb_dat_i;
--		end if;
--	end process delay_p;
	
	reg_p: process(rst_i,clk_i)
	begin
		if rst_i = '1' then
		    wb_ack_s <= '0';
			wb_dat_o <= (others => '0');
			address_s <= (others => '0');
			op_s <= (others => '0');
			header_type_s <= H3DW;
		elsif clk_i = '1' and clk_i'event then
			wb_ack_s <= wb_ack_i;
			case state_s is
                when idle => 
                    wb_dat_o <= pd_wbm_data_i;
                    address_s <= pd_wbm_address_i;
                    op_s <= pd_op_i;
				when wb_write =>

				when wb_read =>
					data_s <= wb_dat_i;
				when others =>

			end case;
		end if;
	end process reg_p;
	
	wb_adr_o <= address_s(33 downto 2);
	
	wbm_pd_ready_o <= '1' when state_s = idle else '0';
	
	
	wb_output_p:process (state_s,op_s)
	begin
		case state_s is
			when wb_write|wb_read =>
				wb_cyc_o <= '1';
				wb_stb_o <= '1';
				if op_s = MWr_c then
				    wb_we_o <= '1';
				else
				    wb_we_o <= '0';
				end if;
			when others =>
				wb_cyc_o <= '0';
				wb_stb_o <= '0';
				wb_we_o <= '0';					
		end case;
	end process wb_output_p;
	
	done_p:process (rst_i,clk_i)
    begin
        if rst_i = '1' then
            done_s <= '0';
        elsif clk_i = '1' and clk_i'event then
            if state_s = idle and previous_state_s /= idle then
                done_s <= '1';
            else
                done_s <= '0';
            end if;
        end if;
    end process done_p;
    
    wbm_pd_done_o <= done_s;	


	
	axis_output_p:process (state_s,header_type_s,data_s,address_s)
	begin
		case state_s is
				when idle =>
					wbm_arb_tvalid_o <= '0';
					wbm_arb_tlast_o <= '0';
					wbm_arb_tdata_o <= (others => '0');
					wbm_arb_req_o <= '0';



				when wb_write =>

					wbm_arb_tvalid_o <= '0';
					wbm_arb_tlast_o <= '0';
					wbm_arb_tdata_o <= (others => '0');
					wbm_arb_req_o <= '0';

				when wb_read =>

					wbm_arb_tvalid_o <= '0';
					wbm_arb_tlast_o <= '0';
					wbm_arb_tdata_o <= (others => '0');
					wbm_arb_req_o <= '0';
				when hd0_tx => 

					wbm_arb_tvalid_o <= '1';
					wbm_arb_tlast_o <= '0';
					wbm_arb_tdata_o(63 downto 32) <= X"00000004";
					
					if header_type_s = H3DW then
						wbm_arb_tdata_o(31 downto 0) <= "010" & "01010" & X"00" &  -- H0 FMT & type & some unused bits
							"000000" & payload_length_c; --H0 unused bits & length H & length L
					else
						wbm_arb_tdata_o(31 downto 0) <= "011" & "01010" & X"00" &  -- H0 FMT & type & some unused bits
							"000000" & payload_length_c; --H0 unused bits & length H & length L
					end if;

					wbm_arb_req_o <= '1';
				when hd1_tx =>
					wbm_arb_tvalid_o <= '1';
					if header_type_s = H3DW then
						wbm_arb_tlast_o <= '1';
						wbm_arb_tdata_o <= f_byte_swap(true, data_s(32-1 downto 0), byte_swap_c) & address_s(32-1 downto 0);
					else
						wbm_arb_tlast_o <= '0';
						wbm_arb_tdata_o <= address_s(31 downto 0) & address_s(63 downto 32);
					end if;
					
					wbm_arb_req_o <= '1';

			end case;
	end process axis_output_p;
	
	
	

	
	wbm_arb_tkeep_o <= X"FF";
	wbm_arb_tuser_o <= "0000";
	

end;