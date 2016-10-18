----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/30/2016 10:28:53 AM
-- Design Name: 
-- Module Name: test_bench - Behavioral
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

entity test_bench is
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
end test_bench;

architecture Behavioral of test_bench is
	type state_t is (start,read_0,read_1,pause_0,write_0,write_1,final);
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
                         state <= pause_0;
                    when pause_0 =>
                         state <= write_0;
                    when write_0 =>
                         state <= write_1;
                    when write_1 =>
                         state <= final;
                    when final =>
                         state <= read_0;
        
            end case;                        
        end if;
    end process;
    
	process (state)
    begin
        case state is
            when start =>
                wb_adr_o <= (others => '0');
                wb_dat_o <= (others => '0');
                wb_we_o <= '0';
                wb_stb_o <= '0';
                wb_cyc_o <= '0';
            when read_0 =>
                wb_adr_o <= (others => '0');
                wb_dat_o <= X"AAAAAAAA";
                wb_we_o <= '0';
                wb_stb_o <= '1';
                wb_cyc_o <= '1';
            when read_1 =>
                wb_adr_o <= (others => '0');
                wb_dat_o <= X"AAAAAAAA";
                wb_we_o <= '0';
                wb_stb_o <= '1';
                wb_cyc_o <= '1';
            when pause_0 =>
                wb_adr_o <= (others => '0');
                wb_dat_o <= X"0AAAAAAA";
                wb_we_o <= '0';
                wb_stb_o <= '0';
                wb_cyc_o <= '1';
            when write_0 =>
                wb_adr_o <= (others => '0');
                wb_dat_o <= X"AAAA5555";
                wb_we_o <= '1';
                wb_stb_o <= '1';
                wb_cyc_o <= '1';
            when write_1 =>
                wb_adr_o <= (others => '0');
                wb_dat_o <= X"AAAA5555";
                wb_we_o <= '1';
                wb_stb_o <= '1';
                wb_cyc_o <= '1';
            when final =>
                wb_adr_o <= (others => '0');
                wb_dat_o <= X"A0AAAAAA";
                wb_we_o <= '0';
                wb_stb_o <= '0';
                wb_cyc_o <= '0';
        end case;
     end process;

end Behavioral;
