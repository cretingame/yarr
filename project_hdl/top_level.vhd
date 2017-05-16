----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2016 04:46:45 PM
-- Design Name: 
-- Module Name: top_level - Behavioral
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

library UNISIM;
use UNISIM.VComponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_level is
    Port ( clock_n : in STD_LOGIC;
           clock_p : in STD_LOGIC;
           rst_i : in STD_LOGIC;
           usr_sw_i : in STD_LOGIC_VECTOR (2 downto 0);
           usr_led_o : out STD_LOGIC_VECTOR (3 downto 0);
           front_led_o : out STD_LOGIC_VECTOR (3 downto 0));
end top_level;

architecture Behavioral of top_level is

    component simple_counter is
        Port ( 
               rst_i : in STD_LOGIC;
               clk_i : in STD_LOGIC;
               count_o : out STD_LOGIC_VECTOR (28 downto 0)
                );
    end component;
    
    component test_bench is
        Port ( 
               --sys con
               clk_i : in STD_LOGIC;
               rst_i : in STD_LOGIC;
               
               -- Wishbone Master out
               wb_adr_o : out std_logic_vector(9 downto 0);
               wb_dat_o : out std_logic_vector(31 downto 0);
               wb_we_o : out std_logic;
               wb_stb_o: out std_logic;
               wb_cyc_o : out std_logic--;
               
               -- Wishbone Master in
               --wb_dat_i            : in std_logic_vector(31 downto 0);
               --wb_ack_i            : in std_logic
               );
    end component;

    component ram_ctrl is
        Port (
            --SYS CON
            rst_i : in STD_LOGIC;
            clk_i : in STD_LOGIC;
            
            -- Wishbone Slave in
            wb_adr_i : in std_logic_vector(9 downto 0);
            wb_dat_i : in std_logic_vector(31 downto 0);
            wb_we_i : in std_logic;
            wb_stb_i: in std_logic;
            wb_cyc_i : in std_logic; 
            wb_lock_i : in std_logic;
            
            --ram con
            addr_o : out STD_LOGIC_VECTOR (9 downto 0);
            di_o : out STD_LOGIC_VECTOR (31 downto 0);
            we_o : out STD_LOGIC_VECTOR (3 downto 0);
            en_o : out STD_LOGIC;
            
            -- Wishbone Slave out
            wb_dat_o            : out std_logic_vector(31 downto 0);
            wb_ack_o            : out std_logic
        );
    end component;

    component ram_interface is
    Port ( addr_i : in STD_LOGIC_VECTOR (9 downto 0);
           di_i : in STD_LOGIC_VECTOR (31 downto 0);
           do_o : out STD_LOGIC_VECTOR (31 downto 0);
           we_i : in STD_LOGIC_VECTOR (3 downto 0);
           en_i : in STD_LOGIC;
           rst_i : in STD_LOGIC;
           regce_i : in STD_LOGIC;
           clk_i : in STD_LOGIC);
    end component;
    
    COMPONENT ila_0
    
    PORT (
        clk : IN STD_LOGIC;
    
    
    
        probe0 : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
    END COMPONENT  ;

    signal sys_clk : STD_LOGIC;
    signal sys_clk_fb : STD_LOGIC;
    signal rst_s : STD_LOGIC;
    
    signal wb_adr_s  : STD_LOGIC_VECTOR (9 downto 0);
    signal wb_dat_s : STD_LOGIC_VECTOR (31 downto 0);
    signal wb_we_s,wb_stb_s,wb_cyc_s,wb_lock_s : STD_LOGIC;
    
    signal count_s : STD_LOGIC_VECTOR (28 downto 0);
    
    signal ram_addr_s : STD_LOGIC_VECTOR (9 downto 0);
    signal ram_di_s : STD_LOGIC_VECTOR (31 downto 0);
    signal ram_do_s : STD_LOGIC_VECTOR (31 downto 0);
    signal ram_we_s : STD_LOGIC_VECTOR (3 downto 0);
    signal ram_en_s : STD_LOGIC;
begin

-- LVDS input to internal single
  CLK_IBUFDS : IBUFDS
  generic map(
    IOSTANDARD => "DEFAULT"
  )
  port map(
    I  => clock_p,
    IB => clock_n,
    O  => sys_clk
  );
  
  u1:simple_counter
  port map(
    rst_i => rst_s,
    clk_i => sys_clk,
    count_o =>  count_s
  );
  
  u2:test_bench
    port map ( 
         --sys con
         clk_i => sys_clk,
         rst_i => rst_s,
         
         -- Wishbone Master out
         wb_adr_o => wb_adr_s,
         wb_dat_o => wb_dat_s,
         wb_we_o => wb_we_s,
         wb_stb_o => wb_stb_s,
         wb_cyc_o => wb_cyc_s
         
         -- Wishbone Master in
         --wb_dat_i            : in std_logic_vector(31 downto 0);
         --wb_ack_i            : in std_logic
       );
  
  u3:ram_ctrl
  port map(
    -- Wishbone Slave in
    wb_adr_i => wb_adr_s,
    wb_dat_i => wb_dat_s,
    wb_we_i => wb_we_s,
    wb_stb_i => wb_stb_s,
    wb_cyc_i => wb_cyc_s,
    wb_lock_i => wb_lock_s,
  
    addr_o => ram_addr_s,
    di_o => ram_di_s,
    we_o => ram_we_s,
    en_o => ram_en_s,
    rst_i => rst_s,
    clk_i => sys_clk
  );
  
  ram_en_s <= '1';
  
  u4:ram_interface
  port map(
    addr_i => ram_addr_s,
    di_i => ram_di_s,
    do_o => ram_do_s,
    we_i => ram_we_s,
    en_i => ram_en_s,
    rst_i => rst_s,
    regce_i => '0',
    clk_i => sys_clk
  );
  
  
  usr_led_o <= '1' & usr_sw_i;
  --usr_led_o <= ram_do_s(0) & usr_sw_i;
  rst_s <= not rst_i;
  
  --front_led_o <= count_s(28 downto 25);
    
  with ram_do_s select front_led_o <=
      "1010" when X"AAAA5555",
      count_s(28 downto 25) when others;
      
  u5 : ila_0
      PORT MAP (
          clk => sys_clk,
      
      
      
          probe0 => usr_sw_i
      );
  
end Behavioral;
