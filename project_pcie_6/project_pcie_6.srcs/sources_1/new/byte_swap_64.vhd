----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/09/2017 04:04:31 PM
-- Design Name: 
-- Module Name: byte_swap_64 - Behavioral
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

entity byte_swap_64 is
    Port ( byte_swap : in STD_LOGIC_VECTOR (3 downto 0);
           din : in STD_LOGIC_VECTOR (63 downto 0);
           dout : out STD_LOGIC_VECTOR (63 downto 0));
end byte_swap_64;

architecture Behavioral of byte_swap_64 is
    type data_array is array (0 to 7) of std_logic_vector(7 downto 0);
    signal data : data_array;
begin

    input_g: for i in 0 to 7 generate
       data(i) <= din(7 + i*8 downto 0 + i*8);
    end generate input_g;

    -----------------------------------------------------------------------------
    -- byte swap function
    --
    -- enable | byte_swap  | din      | dout
    -- false  | XXX        | ABCDEFGH | ABCDEFGH
    -- true   | 000        | ABCDEFGH | ABCDEFGH
    -- true   | 001        | ABCDEFGH | BADCFEHG
    -- true   | 010        | ABCDEFGH | CDABGHEF
    -- true   | 011        | ABCDEFGH | DCBAHGFE
    -- true   | 100        | ABCDEFGH | EFGHABCD
    -- true   | 101        | ABCDEFGH | FEHGBADC
    -- true   | 110        | ABCDEFGH | GHEFCDAB
    -- true   | 111        | ABCDEFGH | HGFEDCBA
    -----------------------------------------------------------------------------
    
    with byte_swap select dout <=
        data(7) & data(6) & data(5) & data(4) & data(3) & data(2) & data(1) & data(0) when "000",
        data(6) & data(7) & data(4) & data(5) & data(2) & data(3) & data(0) & data(1) when "001",
        data(5) & data(4) & data(7) & data(6) & data(1) & data(0) & data(3) & data(2) when "010",
        data(4) & data(5) & data(6) & data(7) & data(0) & data(1) & data(2) & data(3) when "011",
        data(3) & data(2) & data(1) & data(0) & data(7) & data(6) & data(5) & data(4) when "100",
        data(2) & data(3) & data(0) & data(1) & data(6) & data(7) & data(4) & data(5) when "101",
        data(1) & data(0) & data(3) & data(2) & data(5) & data(4) & data(7) & data(6) when "110",
        data(0) & data(1) & data(2) & data(3) & data(4) & data(5) & data(6) & data(7) when "111",
        (others => '0') when others;

end Behavioral;
