----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/29/2016 03:35:15 PM
-- Design Name: 
-- Module Name: ram_ctrl - Behavioral
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

entity ram_ctrl is
    Port (
    addr_o : out STD_LOGIC_VECTOR (9 downto 0);
    di_o : out STD_LOGIC_VECTOR (31 downto 0);
    we_o : out STD_LOGIC_VECTOR (3 downto 0);
    en_o : out STD_LOGIC;
    rst_i : in STD_LOGIC;
    clk_i : in STD_LOGIC
    );
end ram_ctrl;

architecture Behavioral of ram_ctrl is
	type state_t is (start,read_0,read_1,write_0,write_1);
    signal state : state_t;
begin

    process(clk_i,rst_i)
    
    begin
        if rst_i='1' then
            state <= start;
        elsif clk_i='1' and clk_i'event then
            case state is
                    when start =>
                        state <= read_0;
                    when read_0 =>
                         state <= read_1;
                    when read_1 =>
                         state <= write_0;
                    when write_0 =>
                         state <= write_1;
                    when write_1 =>
                         state <= read_0;
        
            end case;                        
        end if;
    end process;
    
	process (state)
    begin
        case state is
            when start =>
                addr_o <= (others => '0');
                di_o <= (others => '0');
                we_o <= (others => '0');
                en_o <= '0';
            when read_0 =>
                addr_o <= (others => '0');
                di_o <= (others => '0');
                we_o <= (others => '0');
                en_o <= '1';
            when read_1 =>
                addr_o <= (others => '0') ;
                addr_o(0) <= '1';
                di_o <= (others => '0');
                we_o <= (others => '0');
                en_o <= '1';
            when write_0 =>
                addr_o <= (others => '0');
                di_o <= X"AAAAAAAA";
                we_o <= (others => '1');
                en_o <= '1';
            when write_1 =>
                addr_o <= (others => '0');
                addr_o(0) <= '1';
                di_o <= X"55555555";
                we_o <= (others => '1');
                en_o <= '1';
        end case;
     end process;
end Behavioral;
