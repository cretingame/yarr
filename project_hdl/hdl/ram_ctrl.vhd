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
end ram_ctrl;

architecture Behavioral of ram_ctrl is
    signal en_s: std_logic;
begin
    
    en_s <= wb_stb_i and wb_cyc_i;
    en_o <= en_s;
    wb_ack_o <= en_s;
    addr_o <= wb_adr_i;
    di_o <= wb_dat_i;
    we_o <= (others => wb_we_i);
    
end Behavioral;
