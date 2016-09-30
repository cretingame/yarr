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

    signal clk_s : STD_LOGIC;
begin

-- LVDS input to internal single
  CLK_IBUFDS : IBUFDS
  generic map(
    IOSTANDARD => "DEFAULT"
  )
  port map(
    I  => clock_p,
    IB => clock_n,
    O  => clk_s
  );
  
  u1:simple_counter
  port map(
    rst_i => rst_i,
    clk_i => clk_s,
    count_o =>  count_o
  );
  
  usr_led_o <= '1' & usr_sw_i;

end Behavioral;
