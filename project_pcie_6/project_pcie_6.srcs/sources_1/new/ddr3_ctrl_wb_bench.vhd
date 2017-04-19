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
--use IEEE.NUMERIC_STD.ALL;

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
      g_BYTE_ADDR_WIDTH : integer := 27;
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
        
        ddr_addr_o                  : out    std_logic_vector(26 downto 0);
        ddr_cmd_o                   : out    std_logic_vector(2 downto 0);
        ddr_cmd_en_o                : out    std_logic;
        ddr_wdf_data_o              : out    std_logic_vector(255 downto 0);
        ddr_wdf_end_o               : out    std_logic;
        ddr_wdf_mask_o              : out    std_logic_vector(31 downto 0);
        ddr_wdf_wren_o              : out    std_logic;
        ddr_rd_data_i               : in   std_logic_vector(255 downto 0);
        ddr_rd_data_end_i           : in   std_logic;
        ddr_rd_data_valid_i         : in   std_logic;
        ddr_rdy_i                   : in   std_logic;
        ddr_wdf_rdy_i               : in   std_logic;
        --ddr_sr_req_o                : out    std_logic;
        --ddr_ref_req_o               : out    std_logic;
        --ddr_zq_req_o                : out    std_logic;
        --ddr_sr_active_i             : in   std_logic;
        --ddr_ref_ack_i               : in   std_logic;
        --ddr_zq_ack_i                : in   std_logic;
        ddr_ui_clk_i                  : in   std_logic;
        ddr_ui_clk_sync_rst           : in   std_logic;
        --ddr_init_calib_complete       : in   std_logic;
    
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
  
  constant period : time := 100 ns;
  constant period_ddr : time := 200 ns;
  constant g_BYTE_ADDR_WIDTH : integer := 27;
  constant g_MASK_SIZE       : integer := 8;
  constant g_DATA_PORT_SIZE  : integer := 64;
  
  constant c_pause : std_logic := '0';
  
  signal clk_tbs : STD_LOGIC;
  signal rst_tbs : STD_LOGIC;
  signal rst_n_tbs : std_logic;
  
  signal step : integer;
  signal step_ddr : integer;
  
  
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
  
  signal ddr_app_addr_s                  :     std_logic_vector(26 downto 0);
  signal ddr_app_cmd_s                   :     std_logic_vector(2 downto 0);
  signal ddr_app_cmd_en_s                :     std_logic;
  signal ddr_app_wdf_data_s              :     std_logic_vector(255 downto 0);
  signal ddr_app_wdf_end_s               :     std_logic;
  signal ddr_app_wdf_mask_s              :     std_logic_vector(31 downto 0);
  signal ddr_app_wdf_wren_s              :     std_logic;
  signal ddr_app_rd_data_s               :     std_logic_vector(255 downto 0);
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
        
        step <= 2;
        wb_addr_tbs <= X"00000000";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEE0";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '1';
        wait for period;
        
        step <= 3;
        wb_addr_tbs <= X"00000000";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '1';
        wait for period;
        
        step <= 2;
        wb_addr_tbs <= X"00000001";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEE1";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '1';
        wait for period;
        
        step <= 3;
        wb_addr_tbs <= X"00000001";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '1';
        wait for period;      

        step <= 4;
        wb_addr_tbs <= X"00000002";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEE2";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '1';
        wait for period;
        
        step <= 5;
        wb_addr_tbs <= X"00000002";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '1';
        wait for period;
        
        step <= 6;
        wb_addr_tbs <= X"00000003";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEE3";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '1';
        wait for period;
        
        step <= 7;
        wb_addr_tbs <= X"00000003";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '1';
        wait for period;
        
        step <= 10;
        wb_addr_tbs <= X"00000004";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBE10";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '1';
        wait for period;
        
        step <= 11;
        wb_addr_tbs <= X"00000005";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBE11";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '1';
        wait for period;
        
        step <= 12;
        wb_addr_tbs <= X"00000006";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBE12";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '1';
        wait for period;
        
        step <= 13;
        wb_addr_tbs <= X"00000007";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBE13";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '1';
        wait for period;        
        
        step <= 14;
        wb_addr_tbs <= X"00000000";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '1';
        wait for period;
        
        
        step <= 20;
        wb_addr_tbs <= X"00000008";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBE14";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '1';
        wait for period;
        
        step <= 21;
        wb_addr_tbs <= X"00000000";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '1';
        wait for 10*period;
        
        step <= 22;
        wb_addr_tbs <= X"00000009";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBE15";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '1';
        wait for period; 
        
        step <= 23;
        wb_addr_tbs <= X"0000000A";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBE16";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '1';
        wait for period;         
        
        step <= 30;
        wb_addr_tbs <= X"000000FA";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '0';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '1';
        
        wait for 5*period;
        
        for I in 0 to 3 loop
        
        step <= 50;
        wb_addr_tbs <= X"000000F0";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEE0";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '0';
        wait for period;
        
        
        if c_pause = '1' then
        step <= 51;
        wb_addr_tbs <= X"000000E0";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '0';
        wait for period;
        end if;
        
        step <= 52;
        wb_addr_tbs <= X"000000F1";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEE1";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '0';
        wait for period;
        
        if c_pause = '1' then
        step <= 53;
        wb_addr_tbs <= X"000000E1";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '0';
        wait for period;
        end if;    

        step <= 54;
        wb_addr_tbs <= X"000000F2";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEE2";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '0';
        wait for period;
        
        if c_pause = '1' then
--        step <= 55;
--        wb_addr_tbs <= X"000000F2";
--        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
--        wb_cyc_tbs <= '1';
--        wb_sel_tbs <= "11111111";
--        wb_stb_tbs <= '0';
--        wb_we_tbs <= '0';
--        wait for period;
        end if;
        
        step <= 56;
        wb_addr_tbs <= X"000000F3";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEE3";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '0';
        wait for period;
        
        if c_pause = '1' then
        step <= 57;
        wb_addr_tbs <= X"000000F3";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '0';
        wait for period;
        end if; 
                
        step <= 60;
        wb_addr_tbs <= X"000000A0";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEE0";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '0';
        wait for period;
        


        
        step <= 62;
        wb_addr_tbs <= X"000000A1";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEE1";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '0';
        wait for period;
        
        --        step <= 53;
        --        wb_addr_tbs <= X"000000E1";
        --        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        --        wb_cyc_tbs <= '1';
        --        wb_sel_tbs <= "11111111";
        --        wb_stb_tbs <= '0';
        --        wb_we_tbs <= '0';
        --        wait for period;      
        
        step <= 64;
        wb_addr_tbs <= X"000000A2";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEE2";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '0';
        wait for period;
        
        --        step <= 55;
        --        wb_addr_tbs <= X"000000F2";
        --        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        --        wb_cyc_tbs <= '1';
        --        wb_sel_tbs <= "11111111";
        --        wb_stb_tbs <= '0';
        --        wb_we_tbs <= '0';
        --        wait for period;
        
        step <= 66;
        wb_addr_tbs <= X"000000A3";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEE3";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '0';
        wait for period;
        
        --        step <= 57;
        --        wb_addr_tbs <= X"000000F3";
        --        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        --        wb_cyc_tbs <= '1';
        --        wb_sel_tbs <= "11111111";
        --        wb_stb_tbs <= '0';
        --        wb_we_tbs <= '0';
        --        wait for period;
        
        end loop;
        
        step <= 100;
        wb_addr_tbs <= X"000000FA";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '0';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '0';
        wait for period;
        
        wait until wb_ack_s = '0' and wb_ack_s'event;
        
        step <= 101;
        wb_addr_tbs <= X"000000FA";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '0';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '0';
        wait for period;
        
        
        
        step <= 102;
        wb_addr_tbs <= X"000000FB";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBE10";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '0';
        wait for period;
        

        
        step <= 103;
        wb_addr_tbs <= X"000000FC";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBE11";
        wb_cyc_tbs <= '1';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '1';
        wb_we_tbs <= '0';
        wait for period;
        
        step <= 200;
        wb_addr_tbs <= X"000000FA";
        wb_dat_m2s_tbs <= X"DEADBEEFDEADBEEF";
        wb_cyc_tbs <= '0';
        wb_sel_tbs <= "11111111";
        wb_stb_tbs <= '0';
        wb_we_tbs <= '0';
        wait for period;
        
        wait;
        
    end process wb_stimuli_p;
    
    ddr_stimuli_p : process
    begin
    
    step_ddr <= 0;
    ddr_app_rdy_s <= '1';
    ddr_app_wdf_rdy_s <= '1';
    
    ddr_app_rd_data_s <= (others => '0');
    ddr_app_rd_data_end_s <= '0';
    ddr_app_rd_data_valid_s <= '0';
    
    --wait until ddr_app_cmd_en_s = '1' and ddr_app_cmd_s = "000";
    
    step_ddr <= 1;
    
    --wait for period_ddr;
    loop
    
    if ddr_app_cmd_en_s = '1' and ddr_app_cmd_s = "000" then
        step_ddr <= 2;
        
        ddr_app_rd_data_s               <= X"deadbeefdeadbee3deadbeefdeadbee2deadbeefdeadbee1deadbeefdeadbee0";
        ddr_app_rd_data_end_s           <= '1';
        ddr_app_rd_data_valid_s         <= '1';
        
        wait for period_ddr;
    else
        
        step_ddr <= 3;
        
        ddr_app_rd_data_s               <= X"0000000000000000000000000000000000000000000000000000000000000000";
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
      ddr_ui_clk_sync_rst => ddr_app_ui_clk_sync_rst_s,
      
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
