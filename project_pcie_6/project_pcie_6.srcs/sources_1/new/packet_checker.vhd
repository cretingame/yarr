----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/12/2017 01:38:01 PM
-- Design Name: 
-- Module Name: packet_checker - Behavioral
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

entity packet_checker is
    Port ( rst_i : in STD_LOGIC;
           clk_i : in STD_LOGIC;
           tdata_i : in STD_LOGIC_VECTOR (63 downto 0);
           tvalid_i : in STD_LOGIC;
           tlast_i : in STD_LOGIC;
           tkeep_i : in STD_LOGIC_VECTOR (7 downto 0);
           error_o : out STD_LOGIC;
           ok_o : out STD_LOGIC);
end packet_checker;

architecture Behavioral of packet_checker is

    signal size_counter_s : unsigned (9 downto 0);
    signal packet_size_s : unsigned (9 downto 0);
	type tlp_type_t is (MRd,MRdLk,MWr,IORd,IOWr,CfgRd0,CfgWr0,CfgRd1,CfgWr1,TCfgRd,TCfgWr,Msg,MsgD,Cpl,CplD,CplLk,CplDLk,LPrfx,unknown);
    signal tlp_type_s : tlp_type_t;
    type header_t is (H3DW,H4DW);
    signal header_type_s : header_t;
    signal ok_s : boolean;
    signal error_s : boolean;
    signal tlast_s : std_logic;
    
begin

process(rst_i,clk_i)

begin
    if rst_i = '1' then
        size_counter_s <= to_unsigned(0,16);
        packet_size_s <= to_unsigned(0,16);
        ok_s <= false;
        error_s <= false;
        tlast_s <= '0';
    elsif clk_i = '1' and clk_i'event then
        tlast_s <= tlast_i;
        if tvalid_i = '1' then
            if tkeep_i = X"0F" then
                size_counter_s <= size_counter_s + 1;
            elsif tkeep_i = X"FF" then
                size_counter_s <= size_counter_s + 2;
            end if;
            
            if size_counter_s = to_unsigned(0,16) then
                packet_size_s <= unsigned(tdata_i(9 downto 0));
					case tdata_i(31 downto 24) is
                    when "00000000" =>
                        tlp_type_s <= MRd;
                        header_type_s <= H3DW;
                        --pd_wbm_target_mrd_s <= '1';
                        
                    when "00100000" =>
                        tlp_type_s <= MRd;
                        header_type_s <= H4DW;

                    when "00000001" =>
                        tlp_type_s <= MRdLk;
                        header_type_s <= H3DW;

                    when "00100001" =>
                        tlp_type_s <= MRdLk;
                        header_type_s <= H4DW;

                    when "01000000" =>
                        tlp_type_s <= MWr;
                        header_type_s <= H3DW;
                        --pd_wbm_target_mwr_s <= '1';

                    when "01100000" =>
                        tlp_type_s <= MWr;    
                        header_type_s <= H4DW;

                    when "00000010" =>
                        tlp_type_s <= IORd;
                        header_type_s <= H3DW;

                    when "01000010" =>
                        tlp_type_s <= IOWr;
                        header_type_s <= H3DW;

                    when "00000100" =>
                        tlp_type_s <= CfgRd0;
                        header_type_s <= H3DW;

                    when "01000100" =>
                        tlp_type_s <= CfgWr0;
                        header_type_s <= H3DW;

                    when "00000101" =>
                        tlp_type_s <= CfgRd1;
                        header_type_s <= H3DW;

                    when "01000101" =>
                        tlp_type_s <= CfgWr1;
                        header_type_s <= H3DW;
                    when "00011011" =>
                        tlp_type_s <= TCfgRd;
                        header_type_s <= H3DW;

                    when "01011011" =>
                        tlp_type_s <= TCfgWr;
                        header_type_s <= H3DW;

                    when "00001010" =>
                        tlp_type_s <= Cpl;
                        header_type_s <= H3DW;

                    when "01001010" =>
                        tlp_type_s <= CplD;
                        header_type_s <= H3DW;

                    when "00001011" =>
                        tlp_type_s <= CplLk;
                        header_type_s <= H3DW;

                    when "01001011" =>
                        tlp_type_s <= CplDLk;
                        header_type_s <= H3DW;

                    when others =>
                        if tdata_i(31 downto 27) = "00110" then
                            tlp_type_s <= Msg;
                            header_type_s <= H4DW;
                        elsif tdata_i(31 downto 27) = "01110" then
                            tlp_type_s <= MsgD;
                            header_type_s <= H4DW;
                        elsif tdata_i(31 downto 28) = "1000" then
                            tlp_type_s <= LPrfx;
                            header_type_s <= H3DW;
                        else
                            tlp_type_s <= unknown;
                            header_type_s <= H4DW;
                        end if;
                end case;
            end if;
            
        end if;
            
        if tlast_i = '1' then
            size_counter_s <= to_unsigned(0,16);
            ok_s <= false;
            error_s <= false;
            if(header_type_s = H3DW) then
                if tkeep_i = X"0F" then
                    ok_s <= packet_size_s + 3 = size_counter_s + 1;
                    --error_s <= packet_size_s + 3 /= size_counter_s + 1;
                elsif tkeep_i = X"FF" then
                    ok_s <= packet_size_s + 3 = size_counter_s + 2;
                    --error_s <= packet_size_s + 3 /= size_counter_s + 2;
                end if;
            else
                if tkeep_i = X"0F" then
                    ok_s <= packet_size_s + 4 = size_counter_s + 1;
                    --error_s <= packet_size_s + 3 /= size_counter_s + 1;
                elsif tkeep_i = X"FF" then
                    ok_s <= packet_size_s + 4 = size_counter_s + 2;
                    --error_s <= packet_size_s + 3 /= size_counter_s + 2;
                end if;
            end if;
            
        end if;
        
        if tlp_type_s /= MRd or tlp_type_s /= MWr or tlp_type_s /= CplD then
            error_s <= true;
        end if;
        
        
        if tlast_s = '1' and not ok_s then
            error_s <= true;
        end if;
        
    end if;
end process;

error_o <= '1' when error_s  else '0';
ok_o    <= '1' when ok_s  else '0';

end Behavioral;
