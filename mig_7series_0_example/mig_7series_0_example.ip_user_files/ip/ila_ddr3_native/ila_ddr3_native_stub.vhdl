-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
-- Date        : Tue May  2 16:24:00 2017
-- Host        : spikepig.dhcp.lbl.gov running 64-bit CentOS Linux release 7.2.1511 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/asautaux/yarr/mig_7series_0_example/mig_7series_0_example.srcs/sources_1/ip/ila_ddr3_native/ila_ddr3_native_stub.vhdl
-- Design      : ila_ddr3_native
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_ddr3_native is
  Port ( 
    clk : in STD_LOGIC;
    trig_out : out STD_LOGIC;
    trig_out_ack : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe25 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe27 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe28 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe30 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe33 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe34 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe35 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe36 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe39 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe40 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe41 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe42 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe43 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe44 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe45 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe46 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe47 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe48 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe49 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe50 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe51 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe52 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe53 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe54 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe55 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe56 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe57 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe58 : in STD_LOGIC_VECTOR ( 53 downto 0 );
    probe59 : in STD_LOGIC_VECTOR ( 26 downto 0 );
    probe60 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe61 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe62 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe63 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe64 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe65 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe66 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe67 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe68 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe69 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe70 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe71 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe72 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe73 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe74 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe75 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe76 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe77 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe78 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe79 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe80 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe81 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe82 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe83 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe84 : in STD_LOGIC_VECTOR ( 107 downto 0 );
    probe85 : in STD_LOGIC_VECTOR ( 107 downto 0 );
    probe86 : in STD_LOGIC_VECTOR ( 107 downto 0 );
    probe87 : in STD_LOGIC_VECTOR ( 89 downto 0 );
    probe88 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    probe89 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe90 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    probe91 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe92 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe93 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe94 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe95 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe96 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe97 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe98 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe99 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe100 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe101 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe102 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe103 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe104 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe105 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe106 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe107 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe108 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe109 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe110 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe111 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe112 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe113 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe114 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe115 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe116 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe117 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe118 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe119 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe120 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe121 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe122 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe123 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe124 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe125 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe126 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe127 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe128 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe129 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe130 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe131 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe132 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe133 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe134 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe135 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe136 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe137 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe138 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe139 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe140 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe141 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe142 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe143 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe144 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe145 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe146 : in STD_LOGIC_VECTOR ( 107 downto 0 );
    probe147 : in STD_LOGIC_VECTOR ( 107 downto 0 );
    probe148 : in STD_LOGIC_VECTOR ( 107 downto 0 );
    probe149 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe150 : in STD_LOGIC_VECTOR ( 53 downto 0 );
    probe151 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe152 : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end ila_ddr3_native;

architecture stub of ila_ddr3_native is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,trig_out,trig_out_ack,probe0[0:0],probe1[0:0],probe2[0:0],probe3[0:0],probe4[0:0],probe5[0:0],probe6[0:0],probe7[0:0],probe8[0:0],probe9[0:0],probe10[1:0],probe11[1:0],probe12[1:0],probe13[0:0],probe14[0:0],probe15[0:0],probe16[0:0],probe17[0:0],probe18[5:0],probe19[0:0],probe20[63:0],probe21[0:0],probe22[0:0],probe23[0:0],probe24[0:0],probe25[0:0],probe26[0:0],probe27[0:0],probe28[63:0],probe29[7:0],probe30[7:0],probe31[31:0],probe32[5:0],probe33[0:0],probe34[0:0],probe35[0:0],probe36[1:0],probe37[4:0],probe38[3:0],probe39[0:0],probe40[0:0],probe41[5:0],probe42[2:0],probe43[3:0],probe44[5:0],probe45[5:0],probe46[5:0],probe47[5:0],probe48[2:0],probe49[0:0],probe50[0:0],probe51[0:0],probe52[3:0],probe53[4:0],probe54[4:0],probe55[0:0],probe56[0:0],probe57[3:0],probe58[53:0],probe59[26:0],probe60[11:0],probe61[11:0],probe62[11:0],probe63[5:0],probe64[3:0],probe65[7:0],probe66[7:0],probe67[7:0],probe68[7:0],probe69[7:0],probe70[7:0],probe71[7:0],probe72[7:0],probe73[0:0],probe74[0:0],probe75[5:0],probe76[5:0],probe77[5:0],probe78[4:0],probe79[11:0],probe80[11:0],probe81[5:0],probe82[5:0],probe83[5:0],probe84[107:0],probe85[107:0],probe86[107:0],probe87[89:0],probe88[47:0],probe89[15:0],probe90[47:0],probe91[15:0],probe92[5:0],probe93[5:0],probe94[0:0],probe95[0:0],probe96[0:0],probe97[0:0],probe98[0:0],probe99[0:0],probe100[4:0],probe101[5:0],probe102[5:0],probe103[2:0],probe104[0:0],probe105[5:0],probe106[2:0],probe107[5:0],probe108[0:0],probe109[0:0],probe110[0:0],probe111[0:0],probe112[0:0],probe113[0:0],probe114[0:0],probe115[0:0],probe116[0:0],probe117[7:0],probe118[7:0],probe119[5:0],probe120[5:0],probe121[7:0],probe122[0:0],probe123[7:0],probe124[5:0],probe125[4:0],probe126[1:0],probe127[0:0],probe128[0:0],probe129[0:0],probe130[0:0],probe131[0:0],probe132[5:0],probe133[5:0],probe134[0:0],probe135[7:0],probe136[7:0],probe137[7:0],probe138[7:0],probe139[7:0],probe140[7:0],probe141[7:0],probe142[7:0],probe143[0:0],probe144[0:0],probe145[0:0],probe146[107:0],probe147[107:0],probe148[107:0],probe149[0:0],probe150[53:0],probe151[5:0],probe152[11:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ila,Vivado 2016.2";
begin
end;
