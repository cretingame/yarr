----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2017 11:36:38 AM
-- Design Name: 
-- Module Name: ddr3_ctrl_wb_bench - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ddr3_ctrl_wb_bench is
--  Port ( );
end ddr3_ctrl_wb_bench;

architecture Behavioral of ddr3_ctrl_wb_bench is

  component ddr3_ctrl_wb
    generic(
      g_BYTE_ADDR_WIDTH : integer := 29;
      g_MASK_SIZE       : integer := 8;
      g_DATA_PORT_SIZE  : integer := 64
      );
    port(
        ----------------------------------------------------------------------------
        -- Reset input (active low)
        ----------------------------------------------------------------------------
        rst_n_i : in std_logic;
    
        ----------------------------------------------------------------------------
        -- Status
        ----------------------------------------------------------------------------
    
        ----------------------------------------------------------------------------
        -- DDR controller port
        ----------------------------------------------------------------------------
        
        ddr_addr_o                  : out    std_logic_vector(g_BYTE_ADDR_WIDTH-1 downto 0);
        ddr_cmd_o                   : out    std_logic_vector(2 downto 0);
        ddr_cmd_en_o                : out    std_logic;
        ddr_wdf_data_o              : out    std_logic_vector(511 downto 0);
        ddr_wdf_end_o               : out    std_logic;
        ddr_wdf_mask_o              : out    std_logic_vector(63 downto 0);
        ddr_wdf_wren_o              : out    std_logic;
        ddr_rd_data_i               : in   std_logic_vector(511 downto 0);
        ddr_rd_data_end_i           : in   std_logic;
        ddr_rd_data_valid_i         : in   std_logic;
        ddr_rdy_i                   : in   std_logic;
        ddr_wdf_rdy_i               : in   std_logic;
        ddr_sr_req_o                : out    std_logic;
        ddr_ref_req_o               : out    std_logic;
        ddr_zq_req_o                : out    std_logic;
        ddr_sr_active_i             : in   std_logic;
        ddr_ref_ack_i               : in   std_logic;
        ddr_zq_ack_i                : in   std_logic;
        ddr_ui_clk_i                  : in   std_logic;
        ddr_ui_clk_sync_rst_i           : in   std_logic;
        ddr_init_calib_complete_i       : in   std_logic;
    
        ----------------------------------------------------------------------------
        -- Wishbone bus port
        ----------------------------------------------------------------------------
        wb_clk_i   : in  std_logic;
        wb_sel_i   : in  std_logic_vector(g_MASK_SIZE - 1 downto 0);
        wb_cyc_i   : in  std_logic;
        wb_stb_i   : in  std_logic;
        wb_we_i    : in  std_logic;
        wb_addr_i  : in  std_logic_vector(31 downto 0);
        wb_data_i  : in  std_logic_vector(g_DATA_PORT_SIZE - 1 downto 0);
        wb_data_o  : out std_logic_vector(g_DATA_PORT_SIZE - 1 downto 0);
        wb_ack_o   : out std_logic;
        wb_stall_o : out std_logic
      );
  end component ddr3_ctrl_wb;
  
  component mig_7series_0
    port (
        ddr3_dq       : inout std_logic_vector(63 downto 0);
        ddr3_dqs_p    : inout std_logic_vector(7 downto 0);
        ddr3_dqs_n    : inout std_logic_vector(7 downto 0);
  
        ddr3_addr     : out   std_logic_vector(12 downto 0);
        ddr3_ba       : out   std_logic_vector(2 downto 0);
        ddr3_ras_n    : out   std_logic;
        ddr3_cas_n    : out   std_logic;
        ddr3_we_n     : out   std_logic;
        ddr3_reset_n  : out   std_logic;
        ddr3_ck_p     : out   std_logic_vector(0 downto 0);
        ddr3_ck_n     : out   std_logic_vector(0 downto 0);
        ddr3_cke      : out   std_logic_vector(0 downto 0);
        ddr3_cs_n     : out   std_logic_vector(0 downto 0);
        ddr3_dm       : out   std_logic_vector(7 downto 0);
        ddr3_odt      : out   std_logic_vector(0 downto 0);
        app_addr                  : in    std_logic_vector(26 downto 0);
        app_cmd                   : in    std_logic_vector(2 downto 0);
        app_en                    : in    std_logic;
        app_wdf_data              : in    std_logic_vector(255 downto 0);
        app_wdf_end               : in    std_logic;
        app_wdf_mask         : in    std_logic_vector(31 downto 0);
        app_wdf_wren              : in    std_logic;
        app_rd_data               : out   std_logic_vector(255 downto 0);
        app_rd_data_end           : out   std_logic;
        app_rd_data_valid         : out   std_logic;
        app_rdy                   : out   std_logic;
        app_wdf_rdy               : out   std_logic;
        app_sr_req                : in    std_logic;
        app_ref_req               : in    std_logic;
        app_zq_req                : in    std_logic;
        app_sr_active             : out   std_logic;
        app_ref_ack               : out   std_logic;
        app_zq_ack                : out   std_logic;
        ui_clk                    : out   std_logic;
        ui_clk_sync_rst           : out   std_logic;
        init_calib_complete       : out   std_logic;
        -- System Clock Ports
        sys_clk_i                      : in    std_logic;
        -- Reference Clock Ports
        clk_ref_i                                : in    std_logic;
      sys_rst                     : in    std_logic
    );
  end component mig_7series_0;
  
  constant period : time := 4 ns; -- 250MHz
  constant period_ddr : time := 15 ns; -- 533 Mhz/8
  constant g_BYTE_ADDR_WIDTH : integer := 29;
  constant g_MASK_SIZE       : integer := 8;
  constant g_DATA_PORT_SIZE  : integer := 64;
  
  constant c_outoforder : std_logic := '0';
  constant c_write : std_logic := '1';
  constant c_read : std_logic := '1';
  
  
  signal clk_tbs : STD_LOGIC;
  signal rst_tbs : STD_LOGIC;
  signal rst_n_tbs : std_logic;
  
  signal step : integer := 0;
  signal step_ddr : integer := 0;
  
  
  signal ddr3_dq_s       : std_logic_vector(63 downto 0);
  signal ddr3_dqs_p_s    : std_logic_vector(7 downto 0);
  signal ddr3_dqs_n_s    : std_logic_vector(7 downto 0);

  signal ddr3_addr_s     : std_logic_vector(12 downto 0);
  signal ddr3_ba_s       : std_logic_vector(2 downto 0);
  signal ddr3_ras_n_s    : std_logic;
  signal ddr3_cas_n_s    : std_logic;
  signal ddr3_we_n_s     : std_logic;
  signal ddr3_reset_n_s  : std_logic;
  signal ddr3_ck_p_s     : std_logic_vector(0 downto 0);
  signal ddr3_ck_n_s     : std_logic_vector(0 downto 0);
  signal ddr3_cke_s      : std_logic_vector(0 downto 0);
  signal ddr3_cs_n_s     : std_logic_vector(0 downto 0);
  signal ddr3_dm_s       : std_logic_vector(7 downto 0);
  signal ddr3_odt_s      : std_logic_vector(0 downto 0);
  
  signal ddr_app_addr_s                  :     std_logic_vector(g_BYTE_ADDR_WIDTH-1 downto 0);
  signal ddr_app_cmd_s                   :     std_logic_vector(2 downto 0);
  signal ddr_app_cmd_en_s                :     std_logic;
  signal ddr_app_wdf_data_s              :     std_logic_vector(511 downto 0);
  signal ddr_app_wdf_end_s               :     std_logic;
  signal ddr_app_wdf_mask_s              :     std_logic_vector(63 downto 0);
  signal ddr_app_wdf_wren_s              :     std_logic;
  signal ddr_app_rd_data_s               :     std_logic_vector(511 downto 0);
  signal ddr_app_rd_data_end_s           :     std_logic;
  signal ddr_app_rd_data_valid_s         :     std_logic;
  signal ddr_app_rdy_s                   :     std_logic;
  signal ddr_app_wdf_rdy_s               :     std_logic;
  signal ddr_app_ui_clk_s                :     std_logic;
  signal ddr_app_ui_clk_sync_rst_s       :     std_logic;
  
  signal wb_addr_tbs : STD_LOGIC_VECTOR (32 - 1 downto 0);
  signal wb_dat_m2s_tbs : STD_LOGIC_VECTOR (64 - 1 downto 0);
  signal wb_dat_s2m_s : STD_LOGIC_VECTOR (64 - 1 downto 0);
  signal wb_cyc_tbs : STD_LOGIC;
  signal wb_sel_tbs : STD_LOGIC_VECTOR (8 - 1 downto 0);
  signal wb_stb_tbs : STD_LOGIC;
  signal wb_we_tbs : STD_LOGIC;
  signal wb_ack_s : STD_LOGIC;
  signal wb_stall_s : STD_LOGIC;
  
  signal wb_dat_s2m_tbs : STD_LOGIC_VECTOR (64 - 1 downto 0);
  signal wb_s2m_msg_tbs : STRING(1 to 2);

begin
    
	clk_p: process
	begin
		clk_tbs <= '1';
		wait for period/2;
		clk_tbs <= '0';
		wait for period/2;
	end process clk_p;
    
    ui_clk_p: process
    begin
        ddr_app_ui_clk_s <= '1';
        wait for period_ddr/2;
        ddr_app_ui_clk_s <= '0';
        wait for period_ddr/2;
    end process ui_clk_p;
    	
	
	
	reset_p: process
	begin
	   rst_tbs <= '1';
	   wait for period;
	   rst_tbs <= '0';
	   wait;
	end process reset_p;
    
    rst_n_tbs <= not rst_tbs;
    
    wb_stimuli_p: process
    begin
        step <= 1;



        
        wb_addr_tbs <= (others => '0');
        wb_dat_m2s_tbs <= (others => '0');
        wb_cyc_tbs <= '0';
        wb_sel_tbs <= (others => '0');
        wb_stb_tbs <= '0';
        wb_we_tbs <= '0';

        
        wait for 5*period;
        
        ---------------------------
        -- WRITE
        ---------------------------
        if c_write = '1' then
        
        if c_outoforder = '1' then
        
        
        
        for J in 0 to 3 loop
            for I in 0 to J loop
            
                step <= 100 + J*10 + I;
                wb_addr_tbs <= std_logic_vector(to_unsigned(I,32)+J*16);
                wb_dat_m2s_tbs <= X"DEADBEEF" & std_logic_vector(to_unsigned(I,32)+J*16);
                wb_cyc_tbs <= '1';
                wb_sel_tbs <= "11111111";
                wb_stb_tbs <= '1';
                wb_we_tbs <= '1';
                wait for period;
            
            end loop;
            
            step <= 200 + J*10;
            wb_addr_tbs <= X"00000000";
            wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
            wb_cyc_tbs <= '1';
            wb_sel_tbs <= "11111111";
            wb_stb_tbs <= '0';
            wb_we_tbs <= '1';
            wait for 10*period;
            
        end loop;
        
        step <= 2;
        wb_addr_tbs <= X"00000000";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '0';
        wait for 10*period;
        
        
        
        for J in 0 to 2 loop
            
            for I in 0 to 2-J loop
        
                step <= 800 + J*10 + I;
                wb_addr_tbs <= std_logic_vector(to_unsigned(I,32)+ (J+1)*16);
                wb_dat_m2s_tbs <= X"DEADBEEF" & std_logic_vector(to_unsigned(I,32)+(J+1)*16);
                wb_cyc_tbs <= '1';
                wb_sel_tbs <= "11111111";
                wb_stb_tbs <= '1';
                wb_we_tbs <= '1';
                wait for period;
        
            end loop;            
            
            for I in 0 to J loop
            
                step <= 300 + J*10 + I;
                wb_addr_tbs <= std_logic_vector(to_unsigned(I,32)+ J*16);
                wb_dat_m2s_tbs <= X"DEADBEEF" & std_logic_vector(to_unsigned(I,32)+J*16);
                wb_cyc_tbs <= '1';
                wb_sel_tbs <= "11111111";
                wb_stb_tbs <= '1';
                wb_we_tbs <= '1';
                wait for period;
            
            end loop;
            
            step <= 400 + J*10;
            wb_addr_tbs <= X"00000000";
            wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
            wb_cyc_tbs <= '1';
            wb_sel_tbs <= "11111111";
            wb_stb_tbs <= '0';
            wb_we_tbs <= '1';
            wait for 10*period;
            
        end loop;
        
        step <= 3;
        wb_addr_tbs <= X"00000000";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '0';
        wait for 10*period;
        
        end if;
        
        for I in 0 to 31 loop
            step <= 63+I;
    
            wb_addr_tbs <= std_logic_vector(to_unsigned(I,32));
            wb_dat_m2s_tbs <= X"DEADBEEF" & std_logic_vector(to_unsigned(I,32));
            wb_cyc_tbs <= '1';
            wb_sel_tbs <= "11111111";
            wb_stb_tbs <= '1';
            wb_we_tbs <= '1';
            wait for period;
        
        end loop;
        
        
        step <= 6;
        wb_addr_tbs <= X"00000000";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '0';
        wait for period;        
        
        end if;
        
        wait for 5*period;
        
        ---------------------------
        -- READ
        ---------------------------
        if c_read = '1' then
        
        if c_outoforder = '1' then
        
        -- First loop
        for J in 0 to 3 loop
            for I in 0 to J loop
            
                step <= 100 + J*10 + I;
                wb_addr_tbs <= std_logic_vector(to_unsigned(I,32));
                wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
                wb_cyc_tbs <= '1';
                wb_sel_tbs <= "11111111";
                wb_stb_tbs <= '1';
                wb_we_tbs <= '0';
                wait for period;
            
            end loop;
            
            step <= 200 + J*10;
            wb_addr_tbs <= X"00000000";
            wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
            wb_cyc_tbs <= '1';
            wb_sel_tbs <= "11111111";
            wb_stb_tbs <= '0';
            wb_we_tbs <= '0';
            wait for 8*period;
            
        end loop;
        step <= 8;
        wb_addr_tbs <= X"000000FA";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '0';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '0';
        wait for 10*period;        
        
        end if;
        
        for I in 0 to 64 loop
        
            step <= 300+I;
            wb_addr_tbs <= std_logic_vector(to_unsigned(I,32));
            wb_dat_m2s_tbs <= X"DEADBEEFDEADBEE0";
            wb_cyc_tbs <= '1';
            wb_sel_tbs <= "11111111";
            wb_stb_tbs <= '1';
            wb_we_tbs <= '0';
            wait for period;
        
        end loop;
        
        step <= 100;
        wb_addr_tbs <= X"000000FA";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '0';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '0';
        wait for period;
        
        end if;
        
        wait;
        
    end process wb_stimuli_p;
    
    s2m_wb_check_p : process
        variable counter_v : unsigned (31 downto 0);
    begin
    
    wb_dat_s2m_tbs <= (others => '0');
    counter_v := (others => '1'); --to_unsigned(0,32);
    wb_s2m_msg_tbs <= "NO";
    --wait for period;
    wait until wb_ack_s = '1';
        
    loop
        if(wb_ack_s = '1') then
            counter_v := counter_v + 1;
            if (wb_dat_s2m_tbs = wb_dat_s2m_s) then
                wb_s2m_msg_tbs <= "OK";
            else
                wb_s2m_msg_tbs <= "KO";
            end if;
        end if;
        
        wb_dat_s2m_tbs <= X"deadbeef" & std_logic_vector(counter_v);
        
    
    
    
    wait for period;
    
    end loop;
    
    wait;
    
    end process s2m_wb_check_p;
    
    ddr_step_p : process
    begin
    
    wait for period_ddr;
    
    step_ddr <= step_ddr + 1;
    
    end process ddr_step_p;
    
    with step_ddr select ddr_app_rdy_s <=
        --'0' when 19 to 30 | 47 to 60,
        '1' when others;
    
    with step_ddr select ddr_app_wdf_rdy_s <= 
        --'0' when 150,
        '1' when others;
    
    ddr_stimuli_p : process
        variable counter : unsigned (31 downto 0);
        variable data_end : std_logic;
    begin
    
    
    counter := to_unsigned(0,32);
    data_end := '0';
    
    ddr_app_rd_data_s <= (others => '0');
    ddr_app_rd_data_end_s <= '0';
    ddr_app_rd_data_valid_s <= '0';
    
    --wait until ddr_app_cmd_en_s = '1' and ddr_app_cmd_s = "000";
    
    --step_ddr <= 1;
    
    --wait for period_ddr;
    loop
    if ddr_app_cmd_en_s = '1' and ddr_app_cmd_s = "001" then
        
        --step_ddr <= 3;

        ddr_app_rd_data_s               <= X"deadbeef" & std_logic_vector(counter+0) &
                                           X"deadbeef" & std_logic_vector(counter+1) &
                                           X"deadbeef" & std_logic_vector(counter+2) &
                                           X"deadbeef" & std_logic_vector(counter+3) &
                                           X"deadbeef" & std_logic_vector(counter+4) & 
                                           X"deadbeef" & std_logic_vector(counter+5) & 
                                           X"deadbeef" & std_logic_vector(counter+6) & 
                                           X"deadbeef" & std_logic_vector(counter+7);
        ddr_app_rd_data_end_s           <= '1';
        ddr_app_rd_data_valid_s         <= '1';
        counter := counter + 8;
        data_end := not data_end;
        wait for period_ddr;
    else
        
        --step_ddr <= 5;
        
        ddr_app_rd_data_s               <= (others => '0');
        ddr_app_rd_data_end_s           <= '0';
        ddr_app_rd_data_valid_s         <= '0';
        
        wait for period_ddr;
    end if;
    end loop;
    
    wait;
    
    
    end process ddr_stimuli_p;

  cmp_ddr3_ctrl_wb : ddr3_ctrl_wb
    generic map(
      g_BYTE_ADDR_WIDTH => g_BYTE_ADDR_WIDTH,
      g_MASK_SIZE       => g_MASK_SIZE,
      g_DATA_PORT_SIZE  => g_DATA_PORT_SIZE
      )
    port map(
      rst_n_i             => rst_n_tbs,
      
      ddr_addr_o          => ddr_app_addr_s,
      ddr_cmd_o           => ddr_app_cmd_s,
      ddr_cmd_en_o        => ddr_app_cmd_en_s,
      ddr_wdf_data_o      => ddr_app_wdf_data_s,
      ddr_wdf_end_o       => ddr_app_wdf_end_s,
      ddr_wdf_mask_o      => ddr_app_wdf_mask_s,
      ddr_wdf_wren_o      => ddr_app_wdf_wren_s,
      ddr_rd_data_i       => ddr_app_rd_data_s,
      ddr_rd_data_end_i   => ddr_app_rd_data_end_s,
      ddr_rd_data_valid_i => ddr_app_rd_data_valid_s,
      ddr_rdy_i           => ddr_app_rdy_s,
      ddr_wdf_rdy_i       => ddr_app_wdf_rdy_s,
      ddr_ui_clk_i        => ddr_app_ui_clk_s,
      ddr_ui_clk_sync_rst_i => ddr_app_ui_clk_sync_rst_s,
      ddr_sr_req_o        => open,
      ddr_ref_req_o       => open,
      ddr_zq_req_o        => open,
      ddr_sr_active_i     => '1',
      ddr_ref_ack_i       => '1',
      ddr_zq_ack_i        => '1',
      ddr_init_calib_complete_i => '1',
      
      wb_clk_i            => clk_tbs,
      wb_sel_i            => wb_sel_tbs,
      wb_cyc_i            => wb_cyc_tbs,
      wb_stb_i            => wb_stb_tbs,
      wb_we_i             => wb_we_tbs,
      wb_addr_i           => wb_addr_tbs,
      wb_data_i           => wb_dat_m2s_tbs,
      wb_data_o           => wb_dat_s2m_s,
      wb_ack_o            => wb_ack_s,
      wb_stall_o          => wb_stall_s
      );
      
--    u_mig_7series_0 : mig_7series_0
--    port map (
--        -- Memory interface ports
--        ddr3_addr                      => ddr3_addr_s,
--        ddr3_ba                        => ddr3_ba_s,
--        ddr3_cas_n                     => ddr3_cas_n_s,
--        ddr3_ck_n                      => ddr3_ck_n_s,
--        ddr3_ck_p                      => ddr3_ck_p_s,
--        ddr3_cke                       => ddr3_cke_s,
--        ddr3_ras_n                     => ddr3_ras_n_s,
--        ddr3_reset_n                   => ddr3_reset_n_s,
--        ddr3_we_n                      => ddr3_we_n_s,
--        ddr3_dq                        => ddr3_dq_s,
--        ddr3_dqs_n                     => ddr3_dqs_n_s,
--        ddr3_dqs_p                     => ddr3_dqs_p_s,
--        init_calib_complete            => open,
--        ddr3_cs_n                      => ddr3_cs_n_s,
--        ddr3_dm                        => ddr3_dm_s,
--        ddr3_odt                       => ddr3_odt_s,
--        -- Application interface ports
--        app_addr                       => ddr_app_addr_s,
--        app_cmd                        => ddr_app_cmd_s,
--        app_en                         => ddr_app_cmd_en_s,
--        app_wdf_data                   => ddr_app_wdf_data_s,
--        app_wdf_end                    => ddr_app_wdf_end_s,
--        app_wdf_wren                   => ddr_app_wdf_wren_s,
--        app_rd_data                    => ddr_app_rd_data_s,
--        app_rd_data_end                => ddr_app_rd_data_end_s,
--        app_rd_data_valid              => ddr_app_rd_data_valid_s,
--        app_rdy                        => ddr_app_rdy_s,
--        app_wdf_rdy                    => ddr_app_wdf_rdy_s,
--        app_sr_req                     => '0',
--        app_ref_req                    => '0',
--        app_zq_req                     => '0',
--        app_sr_active                  => open,
--        app_ref_ack                    => open,
--        app_zq_ack                     => open,
--        ui_clk                         => ddr_app_ui_clk_s,
--        ui_clk_sync_rst                => ddr_app_ui_clk_sync_rst_s,
--        app_wdf_mask                   => ddr_app_wdf_mask_s,
--        -- System Clock Ports
--        sys_clk_i                       => clk_tbs,
--        -- Reference Clock Ports
--        clk_ref_i                      => clk_tbs,
--        sys_rst                        => rst_n_tbs
--    );

end Behavioral;
