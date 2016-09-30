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
           count_o : out STD_LOGIC_VECTOR (10 downto 0));
end top_level;

architecture Behavioral of top_level is

    component simple_counter is
        Port ( 
               rst_i : in STD_LOGIC;
               clk_i : in STD_LOGIC;
               count_o : out STD_LOGIC_VECTOR (10 downto 0)
                );
    end component;

    signal sys_clk : STD_LOGIC;
    signal sys_clk_fb : STD_LOGIC;
    --signal clk_1000 : STD_LOGIC;
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
    rst_i => not rst_i,
    clk_i => sys_clk,
    count_o =>  count_o
  );
  
--    cmp_sys_clk_pll : PLL_BASE
--    generic map (
--      BANDWIDTH          => "OPTIMIZED",
--      CLK_FEEDBACK       => "CLKFBOUT",
--      COMPENSATION       => "INTERNAL",
--      DIVCLK_DIVIDE      => 1,
--      CLKFBOUT_MULT      => 4,
--      CLKFBOUT_PHASE     => 0.000,
--      CLKOUT0_DIVIDE     => 1,
--      CLKOUT0_PHASE      => 0.000,
--      CLKOUT0_DUTY_CYCLE => 0.500,
--      CLKOUT1_DIVIDE     => 2,
--      CLKOUT1_PHASE      => 0.000,
--      CLKOUT1_DUTY_CYCLE => 0.500,
--      CLKOUT2_DIVIDE     => 3,
--      CLKOUT2_PHASE      => 0.000,
--      CLKOUT2_DUTY_CYCLE => 0.500,
--      CLKIN_PERIOD       => 50.0,
--      REF_JITTER         => 0.016)
--    port map (
--      CLKFBOUT => sys_clk_fb,
--      CLKOUT0  => clk_1000,
--      CLKOUT1  => open,
--      CLKOUT2  => open,
--      CLKOUT3  => open,
--      CLKOUT4  => open,
--      CLKOUT5  => open,
--      LOCKED   => open,
--      RST      => '0',
--      CLKFBIN  => sys_clk_fb,
--      CLKIN    => sys_clk);
  
  usr_led_o <= '1' & usr_sw_i;
  --clk_1000_o <= clk_1000;

end Behavioral;
