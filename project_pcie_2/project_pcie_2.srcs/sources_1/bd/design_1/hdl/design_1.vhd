--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Mon Oct 17 11:31:17 2016
--Host        : spikepig.dhcp.lbl.gov running 64-bit CentOS Linux release 7.2.1511 (Core)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    CLK_IN_D_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IN_D_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
  attribute core_generation_info : string;
  attribute core_generation_info of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=Global}";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_util_ds_buf_0_0 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_ds_buf_0_0;
  signal CLK_IN_D_1_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CLK_IN_D_1_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_0_IBUF_OUT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_util_ds_buf_0_IBUF_DS_ODIV2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  CLK_IN_D_1_CLK_N(0) <= CLK_IN_D_clk_n(0);
  CLK_IN_D_1_CLK_P(0) <= CLK_IN_D_clk_p(0);
  IBUF_OUT(0) <= util_ds_buf_0_IBUF_OUT(0);
util_ds_buf_0: component design_1_util_ds_buf_0_0
     port map (
      IBUF_DS_N(0) => CLK_IN_D_1_CLK_N(0),
      IBUF_DS_ODIV2(0) => NLW_util_ds_buf_0_IBUF_DS_ODIV2_UNCONNECTED(0),
      IBUF_DS_P(0) => CLK_IN_D_1_CLK_P(0),
      IBUF_OUT(0) => util_ds_buf_0_IBUF_OUT(0)
    );
end STRUCTURE;
