-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
-- Date        : Tue Oct 18 17:00:03 2016
-- Host        : spikepig.dhcp.lbl.gov running 64-bit CentOS Linux release 7.2.1511 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/asautaux/yarr/project_pcie_3/project_pcie_3.srcs/sources_1/ip/axi_mm2s_mapper_0/axi_mm2s_mapper_0_sim_netlist.vhdl
-- Design      : axi_mm2s_mapper_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo is
  port (
    m_int_tdata : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_int_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC;
    \s_ready3__3\ : out STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    areset_r_reg : in STD_LOGIC;
    \fifo_index1__1\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo : entity is "axi_infrastructure_v1_1_0_axic_srl_fifo";
end axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo;

architecture STRUCTURE of axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo is
  signal fifo_index26_out : STD_LOGIC;
  signal \fifo_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_index[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \fifo_index[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \fifo_index[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \fifo_index[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \fifo_index_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_int_tvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_valid_i_1__1_n_0\ : STD_LOGIC;
  signal m_valid_i_2_n_0 : STD_LOGIC;
  signal push : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fifo_index[1]_i_1__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \fifo_index[2]_i_1__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \fifo_index[3]_i_2__1\ : label is "soft_lutpair6";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_data_bit[0].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_data_bit[0].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit ";
  attribute srl_name : string;
  attribute srl_name of \gen_data_bit[0].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[0].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[1].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[1].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit ";
  attribute srl_name of \gen_data_bit[1].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[1].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[2].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[2].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit ";
  attribute srl_name of \gen_data_bit[2].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[2].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[3].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[3].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit ";
  attribute srl_name of \gen_data_bit[3].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[3].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[4].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[4].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit ";
  attribute srl_name of \gen_data_bit[4].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[4].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[5].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[5].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit ";
  attribute srl_name of \gen_data_bit[5].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[5].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[6].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[6].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit ";
  attribute srl_name of \gen_data_bit[6].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[6].u_srl_fifo ";
  attribute SOFT_HLUTNM of s_ready_i_4 : label is "soft_lutpair6";
begin
  m_axi_bready <= \^m_axi_bready\;
  m_int_tvalid(0) <= \^m_int_tvalid\(0);
\fifo_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fifo_index_reg__0\(0),
      O => \fifo_index[0]_i_1_n_0\
    );
\fifo_index[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \fifo_index_reg__0\(0),
      I1 => fifo_index26_out,
      I2 => \fifo_index_reg__0\(1),
      O => \fifo_index[1]_i_1__1_n_0\
    );
\fifo_index[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => fifo_index26_out,
      I1 => \fifo_index_reg__0\(0),
      I2 => \fifo_index_reg__0\(2),
      I3 => \fifo_index_reg__0\(1),
      O => \fifo_index[2]_i_1__1_n_0\
    );
\fifo_index[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7888788878888888"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => \^m_axi_bready\,
      I2 => \^m_int_tvalid\(0),
      I3 => m_axis_tready,
      I4 => Q(0),
      I5 => arb_gnt_i(0),
      O => \fifo_index[3]_i_1__1_n_0\
    );
\fifo_index[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => \fifo_index_reg__0\(1),
      I1 => fifo_index26_out,
      I2 => \fifo_index_reg__0\(0),
      I3 => \fifo_index_reg__0\(3),
      I4 => \fifo_index_reg__0\(2),
      O => \fifo_index[3]_i_2__1_n_0\
    );
\fifo_index[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008888888888888"
    )
        port map (
      I0 => \^m_axi_bready\,
      I1 => m_axi_bvalid,
      I2 => arb_gnt_i(0),
      I3 => Q(0),
      I4 => m_axis_tready,
      I5 => \^m_int_tvalid\(0),
      O => fifo_index26_out
    );
\fifo_index_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1__1_n_0\,
      D => \fifo_index[0]_i_1_n_0\,
      Q => \fifo_index_reg__0\(0),
      S => SS(0)
    );
\fifo_index_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1__1_n_0\,
      D => \fifo_index[1]_i_1__1_n_0\,
      Q => \fifo_index_reg__0\(1),
      S => SS(0)
    );
\fifo_index_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1__1_n_0\,
      D => \fifo_index[2]_i_1__1_n_0\,
      Q => \fifo_index_reg__0\(2),
      S => SS(0)
    );
\fifo_index_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1__1_n_0\,
      D => \fifo_index[3]_i_2__1_n_0\,
      Q => \fifo_index_reg__0\(3),
      S => SS(0)
    );
\gen_data_bit[0].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push,
      CLK => aclk,
      D => m_axi_bresp(0),
      Q => m_int_tdata(0)
    );
\gen_data_bit[0].u_srl_fifo_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => \^m_axi_bready\,
      O => push
    );
\gen_data_bit[1].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push,
      CLK => aclk,
      D => m_axi_bresp(1),
      Q => m_int_tdata(1)
    );
\gen_data_bit[2].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push,
      CLK => aclk,
      D => m_axi_bid(0),
      Q => m_int_tdata(2)
    );
\gen_data_bit[3].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push,
      CLK => aclk,
      D => m_axi_buser(0),
      Q => m_int_tdata(3)
    );
\gen_data_bit[4].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push,
      CLK => aclk,
      D => m_axi_buser(1),
      Q => m_int_tdata(4)
    );
\gen_data_bit[5].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push,
      CLK => aclk,
      D => m_axi_buser(2),
      Q => m_int_tdata(5)
    );
\gen_data_bit[6].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push,
      CLK => aclk,
      D => m_axi_buser(3),
      Q => m_int_tdata(6)
    );
\m_valid_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => \^m_axi_bready\,
      I2 => \^m_int_tvalid\(0),
      I3 => m_valid_i_2_n_0,
      O => \m_valid_i_1__1_n_0\
    );
m_valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002FFFFFFFF"
    )
        port map (
      I0 => \fifo_index1__1\,
      I1 => \fifo_index_reg__0\(1),
      I2 => \fifo_index_reg__0\(0),
      I3 => \fifo_index_reg__0\(3),
      I4 => \fifo_index_reg__0\(2),
      I5 => aresetn,
      O => m_valid_i_2_n_0
    );
m_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_1__1_n_0\,
      Q => \^m_int_tvalid\(0),
      R => '0'
    );
s_ready_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \fifo_index_reg__0\(2),
      I1 => \fifo_index_reg__0\(3),
      I2 => \fifo_index_reg__0\(1),
      I3 => \fifo_index_reg__0\(0),
      I4 => fifo_index26_out,
      O => \s_ready3__3\
    );
s_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => areset_r_reg,
      Q => \^m_axi_bready\,
      R => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0\ is
  port (
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 61 downto 0 );
    aclk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_tready_from_decoded_slave0__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.decode_err_r_reg\ : in STD_LOGIC;
    push : in STD_LOGIC;
    \s_axis_tid_2__s_port_]\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aresetn : in STD_LOGIC;
    areset_r1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0\ : entity is "axi_infrastructure_v1_1_0_axic_srl_fifo";
end \axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0\;

architecture STRUCTURE of \axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0\ is
  signal fifo_index26_out : STD_LOGIC;
  signal \fifo_index[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_index[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_index[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_index[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_index[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \fifo_index_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal m_valid_i_1_n_0 : STD_LOGIC;
  signal \m_valid_i_2__0_n_0\ : STD_LOGIC;
  signal push_0 : STD_LOGIC;
  signal \s_axis_tid_2__s_net_1\ : STD_LOGIC;
  signal s_int_tready : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \s_ready_i_1__0_n_0\ : STD_LOGIC;
  signal s_ready_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fifo_index[0]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \fifo_index[1]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \fifo_index[3]_i_2__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \fifo_index[3]_i_3__0\ : label is "soft_lutpair3";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_data_bit[0].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_data_bit[0].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name : string;
  attribute srl_name of \gen_data_bit[0].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[0].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[10].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[10].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[10].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[10].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[11].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[11].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[11].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[11].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[12].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[12].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[12].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[12].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[13].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[13].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[13].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[13].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[14].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[14].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[14].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[14].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[15].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[15].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[15].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[15].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[16].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[16].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[16].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[16].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[17].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[17].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[17].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[17].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[18].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[18].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[18].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[18].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[19].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[19].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[19].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[19].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[1].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[1].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[1].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[1].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[20].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[20].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[20].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[20].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[21].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[21].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[21].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[21].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[22].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[22].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[22].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[22].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[23].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[23].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[23].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[23].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[24].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[24].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[24].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[24].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[25].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[25].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[25].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[25].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[26].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[26].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[26].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[26].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[27].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[27].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[27].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[27].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[28].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[28].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[28].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[28].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[29].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[29].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[29].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[29].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[2].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[2].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[2].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[2].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[30].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[30].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[30].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[30].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[31].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[31].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[31].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[31].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[32].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[32].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[32].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[32].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[33].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[33].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[33].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[33].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[34].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[34].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[34].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[34].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[35].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[35].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[35].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[35].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[36].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[36].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[36].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[36].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[37].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[37].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[37].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[37].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[38].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[38].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[38].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[38].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[39].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[39].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[39].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[39].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[3].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[3].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[3].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[3].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[40].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[40].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[40].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[40].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[41].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[41].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[41].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[41].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[42].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[42].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[42].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[42].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[43].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[43].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[43].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[43].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[44].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[44].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[44].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[44].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[45].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[45].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[45].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[45].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[46].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[46].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[46].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[46].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[47].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[47].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[47].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[47].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[48].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[48].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[48].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[48].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[49].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[49].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[49].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[49].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[4].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[4].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[4].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[4].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[50].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[50].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[50].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[50].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[51].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[51].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[51].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[51].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[52].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[52].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[52].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[52].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[53].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[53].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[53].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[53].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[54].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[54].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[54].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[54].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[55].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[55].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[55].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[55].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[56].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[56].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[56].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[56].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[57].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[57].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[57].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[57].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[58].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[58].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[58].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[58].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[59].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[59].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[59].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[59].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[5].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[5].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[5].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[5].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[60].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[60].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[60].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[60].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[61].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[61].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[61].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[61].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[6].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[6].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[6].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[6].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[7].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[7].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[7].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[7].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[8].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[8].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[8].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[8].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[9].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[9].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit ";
  attribute srl_name of \gen_data_bit[9].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[9].u_srl_fifo ";
  attribute SOFT_HLUTNM of \m_valid_i_2__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of s_ready_i_2 : label is "soft_lutpair4";
begin
  m_axi_awvalid <= \^m_axi_awvalid\;
  \s_axis_tid_2__s_net_1\ <= \s_axis_tid_2__s_port_]\;
\fifo_index[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fifo_index_reg__0\(0),
      O => \fifo_index[0]_i_1__0_n_0\
    );
\fifo_index[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6665999"
    )
        port map (
      I0 => \fifo_index_reg__0\(0),
      I1 => push_0,
      I2 => \^m_axi_awvalid\,
      I3 => m_axi_awready,
      I4 => \fifo_index_reg__0\(1),
      O => \fifo_index[1]_i_1__0_n_0\
    );
\fifo_index[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF7000FF70008F"
    )
        port map (
      I0 => m_axi_awready,
      I1 => \^m_axi_awvalid\,
      I2 => push_0,
      I3 => \fifo_index_reg__0\(0),
      I4 => \fifo_index_reg__0\(2),
      I5 => \fifo_index_reg__0\(1),
      O => \fifo_index[2]_i_1__0_n_0\
    );
\fifo_index[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => push_0,
      I1 => \^m_axi_awvalid\,
      I2 => m_axi_awready,
      O => \fifo_index[3]_i_1__0_n_0\
    );
\fifo_index[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => \fifo_index_reg__0\(1),
      I1 => fifo_index26_out,
      I2 => \fifo_index_reg__0\(0),
      I3 => \fifo_index_reg__0\(3),
      I4 => \fifo_index_reg__0\(2),
      O => \fifo_index[3]_i_2__0_n_0\
    );
\fifo_index[3]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => m_axi_awready,
      I1 => \^m_axi_awvalid\,
      I2 => push_0,
      O => fifo_index26_out
    );
\fifo_index_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1__0_n_0\,
      D => \fifo_index[0]_i_1__0_n_0\,
      Q => \fifo_index_reg__0\(0),
      S => SS(0)
    );
\fifo_index_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1__0_n_0\,
      D => \fifo_index[1]_i_1__0_n_0\,
      Q => \fifo_index_reg__0\(1),
      S => SS(0)
    );
\fifo_index_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1__0_n_0\,
      D => \fifo_index[2]_i_1__0_n_0\,
      Q => \fifo_index_reg__0\(2),
      S => SS(0)
    );
\fifo_index_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1__0_n_0\,
      D => \fifo_index[3]_i_2__0_n_0\,
      Q => \fifo_index_reg__0\(3),
      S => SS(0)
    );
\gen_data_bit[0].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(0),
      Q => m_axi_awaddr(0)
    );
\gen_data_bit[10].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(10),
      Q => m_axi_awaddr(10)
    );
\gen_data_bit[11].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(11),
      Q => m_axi_awaddr(11)
    );
\gen_data_bit[12].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(12),
      Q => m_axi_awaddr(12)
    );
\gen_data_bit[13].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(13),
      Q => m_axi_awaddr(13)
    );
\gen_data_bit[14].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(14),
      Q => m_axi_awaddr(14)
    );
\gen_data_bit[15].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(15),
      Q => m_axi_awaddr(15)
    );
\gen_data_bit[16].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(16),
      Q => m_axi_awaddr(16)
    );
\gen_data_bit[17].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(17),
      Q => m_axi_awaddr(17)
    );
\gen_data_bit[18].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(18),
      Q => m_axi_awaddr(18)
    );
\gen_data_bit[19].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(19),
      Q => m_axi_awaddr(19)
    );
\gen_data_bit[1].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(1),
      Q => m_axi_awaddr(1)
    );
\gen_data_bit[20].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(20),
      Q => m_axi_awaddr(20)
    );
\gen_data_bit[21].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(21),
      Q => m_axi_awaddr(21)
    );
\gen_data_bit[22].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(22),
      Q => m_axi_awaddr(22)
    );
\gen_data_bit[23].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(23),
      Q => m_axi_awaddr(23)
    );
\gen_data_bit[24].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(24),
      Q => m_axi_awaddr(24)
    );
\gen_data_bit[25].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(25),
      Q => m_axi_awaddr(25)
    );
\gen_data_bit[26].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(26),
      Q => m_axi_awaddr(26)
    );
\gen_data_bit[27].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(27),
      Q => m_axi_awaddr(27)
    );
\gen_data_bit[28].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(28),
      Q => m_axi_awaddr(28)
    );
\gen_data_bit[29].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(29),
      Q => m_axi_awaddr(29)
    );
\gen_data_bit[2].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(2),
      Q => m_axi_awaddr(2)
    );
\gen_data_bit[30].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(30),
      Q => m_axi_awaddr(30)
    );
\gen_data_bit[31].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(31),
      Q => m_axi_awaddr(31)
    );
\gen_data_bit[32].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(32),
      Q => m_axi_awprot(0)
    );
\gen_data_bit[33].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(33),
      Q => m_axi_awprot(1)
    );
\gen_data_bit[34].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(34),
      Q => m_axi_awprot(2)
    );
\gen_data_bit[35].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(35),
      Q => m_axi_awsize(0)
    );
\gen_data_bit[36].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(36),
      Q => m_axi_awsize(1)
    );
\gen_data_bit[37].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(37),
      Q => m_axi_awsize(2)
    );
\gen_data_bit[38].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(38),
      Q => m_axi_awburst(0)
    );
\gen_data_bit[39].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(39),
      Q => m_axi_awburst(1)
    );
\gen_data_bit[3].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(3),
      Q => m_axi_awaddr(3)
    );
\gen_data_bit[40].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(40),
      Q => m_axi_awcache(0)
    );
\gen_data_bit[41].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(41),
      Q => m_axi_awcache(1)
    );
\gen_data_bit[42].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(42),
      Q => m_axi_awcache(2)
    );
\gen_data_bit[43].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(43),
      Q => m_axi_awcache(3)
    );
\gen_data_bit[44].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(44),
      Q => m_axi_awlen(0)
    );
\gen_data_bit[45].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(45),
      Q => m_axi_awlen(1)
    );
\gen_data_bit[46].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(46),
      Q => m_axi_awlen(2)
    );
\gen_data_bit[47].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(47),
      Q => m_axi_awlen(3)
    );
\gen_data_bit[48].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(48),
      Q => m_axi_awlen(4)
    );
\gen_data_bit[49].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(49),
      Q => m_axi_awlen(5)
    );
\gen_data_bit[4].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(4),
      Q => m_axi_awaddr(4)
    );
\gen_data_bit[50].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(50),
      Q => m_axi_awlen(6)
    );
\gen_data_bit[51].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(51),
      Q => m_axi_awlen(7)
    );
\gen_data_bit[52].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(52),
      Q => m_axi_awlock(0)
    );
\gen_data_bit[53].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(53),
      Q => m_axi_awid(0)
    );
\gen_data_bit[53].u_srl_fifo_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => s_axis_tid(2),
      I2 => s_axis_tid(0),
      I3 => s_axis_tid(1),
      I4 => s_int_tready(1),
      O => push_0
    );
\gen_data_bit[54].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(54),
      Q => m_axi_awqos(0)
    );
\gen_data_bit[55].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(55),
      Q => m_axi_awqos(1)
    );
\gen_data_bit[56].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(56),
      Q => m_axi_awqos(2)
    );
\gen_data_bit[57].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(57),
      Q => m_axi_awqos(3)
    );
\gen_data_bit[58].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(58),
      Q => m_axi_awuser(0)
    );
\gen_data_bit[59].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(59),
      Q => m_axi_awuser(1)
    );
\gen_data_bit[5].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(5),
      Q => m_axi_awaddr(5)
    );
\gen_data_bit[60].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(60),
      Q => m_axi_awuser(2)
    );
\gen_data_bit[61].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(61),
      Q => m_axi_awuser(3)
    );
\gen_data_bit[6].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(6),
      Q => m_axi_awaddr(6)
    );
\gen_data_bit[7].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(7),
      Q => m_axi_awaddr(7)
    );
\gen_data_bit[8].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(8),
      Q => m_axi_awaddr(8)
    );
\gen_data_bit[9].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => push_0,
      CLK => aclk,
      D => s_axis_tdata(9),
      Q => m_axi_awaddr(9)
    );
m_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A0AAA0"
    )
        port map (
      I0 => aresetn,
      I1 => \m_valid_i_2__0_n_0\,
      I2 => push_0,
      I3 => \^m_axi_awvalid\,
      I4 => m_axi_awready,
      O => m_valid_i_1_n_0
    );
\m_valid_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \fifo_index_reg__0\(1),
      I1 => \fifo_index_reg__0\(0),
      I2 => \fifo_index_reg__0\(3),
      I3 => \fifo_index_reg__0\(2),
      O => \m_valid_i_2__0_n_0\
    );
m_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_valid_i_1_n_0,
      Q => \^m_axi_awvalid\,
      R => '0'
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \m_tready_from_decoded_slave0__1\(0),
      I1 => push_0,
      I2 => \gen_tdest_routing.decode_err_r_reg\,
      I3 => push,
      I4 => \s_axis_tid_2__s_net_1\,
      O => s_axis_tready
    );
\s_ready_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFFFFFAAEAAAEA"
    )
        port map (
      I0 => areset_r1,
      I1 => m_axi_awready,
      I2 => \^m_axi_awvalid\,
      I3 => push_0,
      I4 => s_ready_i_2_n_0,
      I5 => s_int_tready(1),
      O => \s_ready_i_1__0_n_0\
    );
s_ready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \fifo_index_reg__0\(0),
      I1 => \fifo_index_reg__0\(1),
      I2 => \fifo_index_reg__0\(3),
      I3 => \fifo_index_reg__0\(2),
      O => s_ready_i_2_n_0
    );
s_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_1__0_n_0\,
      Q => s_int_tready(1),
      R => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized1\ is
  port (
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    push : out STD_LOGIC;
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 61 downto 0 );
    aclk : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aresetn : in STD_LOGIC;
    areset_r1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized1\ : entity is "axi_infrastructure_v1_1_0_axic_srl_fifo";
end \axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized1\;

architecture STRUCTURE of \axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized1\ is
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fifo_index26_out : STD_LOGIC;
  signal \fifo_index[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \fifo_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_index[3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_index[3]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_index_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \m_valid_i_1__0_n_0\ : STD_LOGIC;
  signal \m_valid_i_2__1_n_0\ : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal s_int_tready : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \s_ready_i_1__1_n_0\ : STD_LOGIC;
  signal \s_ready_i_2__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fifo_index[0]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \fifo_index[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fifo_index[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \fifo_index[3]_i_3\ : label is "soft_lutpair0";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_data_bit[0].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_data_bit[0].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name : string;
  attribute srl_name of \gen_data_bit[0].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[0].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[10].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[10].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[10].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[10].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[11].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[11].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[11].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[11].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[12].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[12].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[12].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[12].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[13].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[13].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[13].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[13].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[14].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[14].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[14].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[14].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[15].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[15].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[15].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[15].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[16].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[16].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[16].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[16].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[17].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[17].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[17].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[17].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[18].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[18].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[18].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[18].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[19].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[19].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[19].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[19].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[1].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[1].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[1].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[1].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[20].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[20].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[20].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[20].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[21].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[21].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[21].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[21].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[22].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[22].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[22].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[22].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[23].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[23].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[23].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[23].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[24].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[24].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[24].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[24].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[25].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[25].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[25].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[25].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[26].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[26].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[26].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[26].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[27].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[27].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[27].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[27].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[28].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[28].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[28].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[28].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[29].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[29].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[29].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[29].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[2].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[2].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[2].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[2].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[30].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[30].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[30].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[30].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[31].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[31].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[31].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[31].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[32].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[32].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[32].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[32].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[33].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[33].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[33].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[33].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[34].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[34].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[34].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[34].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[35].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[35].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[35].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[35].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[36].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[36].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[36].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[36].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[37].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[37].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[37].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[37].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[38].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[38].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[38].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[38].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[39].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[39].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[39].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[39].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[3].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[3].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[3].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[3].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[40].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[40].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[40].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[40].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[41].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[41].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[41].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[41].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[42].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[42].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[42].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[42].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[43].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[43].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[43].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[43].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[44].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[44].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[44].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[44].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[45].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[45].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[45].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[45].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[46].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[46].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[46].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[46].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[47].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[47].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[47].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[47].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[48].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[48].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[48].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[48].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[49].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[49].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[49].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[49].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[4].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[4].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[4].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[4].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[50].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[50].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[50].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[50].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[51].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[51].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[51].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[51].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[52].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[52].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[52].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[52].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[53].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[53].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[53].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[53].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[54].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[54].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[54].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[54].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[55].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[55].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[55].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[55].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[56].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[56].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[56].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[56].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[57].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[57].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[57].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[57].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[58].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[58].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[58].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[58].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[59].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[59].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[59].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[59].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[5].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[5].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[5].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[5].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[60].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[60].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[60].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[60].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[61].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[61].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[61].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[61].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[6].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[6].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[6].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[6].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[7].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[7].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[7].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[7].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[8].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[8].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[8].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[8].u_srl_fifo ";
  attribute BOX_TYPE of \gen_data_bit[9].u_srl_fifo\ : label is "PRIMITIVE";
  attribute srl_bus_name of \gen_data_bit[9].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit ";
  attribute srl_name of \gen_data_bit[9].u_srl_fifo\ : label is "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[9].u_srl_fifo ";
  attribute SOFT_HLUTNM of \m_valid_i_2__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_ready_i_2__0\ : label is "soft_lutpair1";
begin
  SS(0) <= \^ss\(0);
  m_axi_arvalid <= \^m_axi_arvalid\;
  push <= \^push\;
\fifo_index[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fifo_index_reg__0\(0),
      O => \fifo_index[0]_i_1__1_n_0\
    );
\fifo_index[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6665999"
    )
        port map (
      I0 => \fifo_index_reg__0\(0),
      I1 => \^push\,
      I2 => \^m_axi_arvalid\,
      I3 => m_axi_arready,
      I4 => \fifo_index_reg__0\(1),
      O => \fifo_index[1]_i_1_n_0\
    );
\fifo_index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF7000FF70008F"
    )
        port map (
      I0 => m_axi_arready,
      I1 => \^m_axi_arvalid\,
      I2 => \^push\,
      I3 => \fifo_index_reg__0\(0),
      I4 => \fifo_index_reg__0\(2),
      I5 => \fifo_index_reg__0\(1),
      O => \fifo_index[2]_i_1_n_0\
    );
\fifo_index[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^push\,
      I1 => \^m_axi_arvalid\,
      I2 => m_axi_arready,
      O => \fifo_index[3]_i_1_n_0\
    );
\fifo_index[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => \fifo_index_reg__0\(1),
      I1 => fifo_index26_out,
      I2 => \fifo_index_reg__0\(0),
      I3 => \fifo_index_reg__0\(3),
      I4 => \fifo_index_reg__0\(2),
      O => \fifo_index[3]_i_2_n_0\
    );
\fifo_index[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => m_axi_arready,
      I1 => \^m_axi_arvalid\,
      I2 => \^push\,
      O => fifo_index26_out
    );
\fifo_index_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1_n_0\,
      D => \fifo_index[0]_i_1__1_n_0\,
      Q => \fifo_index_reg__0\(0),
      S => \^ss\(0)
    );
\fifo_index_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1_n_0\,
      D => \fifo_index[1]_i_1_n_0\,
      Q => \fifo_index_reg__0\(1),
      S => \^ss\(0)
    );
\fifo_index_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1_n_0\,
      D => \fifo_index[2]_i_1_n_0\,
      Q => \fifo_index_reg__0\(2),
      S => \^ss\(0)
    );
\fifo_index_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \fifo_index[3]_i_1_n_0\,
      D => \fifo_index[3]_i_2_n_0\,
      Q => \fifo_index_reg__0\(3),
      S => \^ss\(0)
    );
\gen_data_bit[0].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(0),
      Q => m_axi_araddr(0)
    );
\gen_data_bit[10].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(10),
      Q => m_axi_araddr(10)
    );
\gen_data_bit[11].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(11),
      Q => m_axi_araddr(11)
    );
\gen_data_bit[12].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(12),
      Q => m_axi_araddr(12)
    );
\gen_data_bit[13].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(13),
      Q => m_axi_araddr(13)
    );
\gen_data_bit[14].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(14),
      Q => m_axi_araddr(14)
    );
\gen_data_bit[15].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(15),
      Q => m_axi_araddr(15)
    );
\gen_data_bit[16].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(16),
      Q => m_axi_araddr(16)
    );
\gen_data_bit[17].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(17),
      Q => m_axi_araddr(17)
    );
\gen_data_bit[18].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(18),
      Q => m_axi_araddr(18)
    );
\gen_data_bit[19].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(19),
      Q => m_axi_araddr(19)
    );
\gen_data_bit[1].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(1),
      Q => m_axi_araddr(1)
    );
\gen_data_bit[20].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(20),
      Q => m_axi_araddr(20)
    );
\gen_data_bit[21].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(21),
      Q => m_axi_araddr(21)
    );
\gen_data_bit[22].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(22),
      Q => m_axi_araddr(22)
    );
\gen_data_bit[23].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(23),
      Q => m_axi_araddr(23)
    );
\gen_data_bit[24].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(24),
      Q => m_axi_araddr(24)
    );
\gen_data_bit[25].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(25),
      Q => m_axi_araddr(25)
    );
\gen_data_bit[26].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(26),
      Q => m_axi_araddr(26)
    );
\gen_data_bit[27].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(27),
      Q => m_axi_araddr(27)
    );
\gen_data_bit[28].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(28),
      Q => m_axi_araddr(28)
    );
\gen_data_bit[29].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(29),
      Q => m_axi_araddr(29)
    );
\gen_data_bit[2].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(2),
      Q => m_axi_araddr(2)
    );
\gen_data_bit[30].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(30),
      Q => m_axi_araddr(30)
    );
\gen_data_bit[31].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(31),
      Q => m_axi_araddr(31)
    );
\gen_data_bit[32].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(32),
      Q => m_axi_arprot(0)
    );
\gen_data_bit[33].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(33),
      Q => m_axi_arprot(1)
    );
\gen_data_bit[34].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(34),
      Q => m_axi_arprot(2)
    );
\gen_data_bit[35].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(35),
      Q => m_axi_arsize(0)
    );
\gen_data_bit[36].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(36),
      Q => m_axi_arsize(1)
    );
\gen_data_bit[37].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(37),
      Q => m_axi_arsize(2)
    );
\gen_data_bit[38].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(38),
      Q => m_axi_arburst(0)
    );
\gen_data_bit[39].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(39),
      Q => m_axi_arburst(1)
    );
\gen_data_bit[3].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(3),
      Q => m_axi_araddr(3)
    );
\gen_data_bit[40].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(40),
      Q => m_axi_arcache(0)
    );
\gen_data_bit[41].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(41),
      Q => m_axi_arcache(1)
    );
\gen_data_bit[42].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(42),
      Q => m_axi_arcache(2)
    );
\gen_data_bit[43].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(43),
      Q => m_axi_arcache(3)
    );
\gen_data_bit[44].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(44),
      Q => m_axi_arlen(0)
    );
\gen_data_bit[45].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(45),
      Q => m_axi_arlen(1)
    );
\gen_data_bit[46].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(46),
      Q => m_axi_arlen(2)
    );
\gen_data_bit[47].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(47),
      Q => m_axi_arlen(3)
    );
\gen_data_bit[48].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(48),
      Q => m_axi_arlen(4)
    );
\gen_data_bit[49].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(49),
      Q => m_axi_arlen(5)
    );
\gen_data_bit[4].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(4),
      Q => m_axi_araddr(4)
    );
\gen_data_bit[50].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(50),
      Q => m_axi_arlen(6)
    );
\gen_data_bit[51].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(51),
      Q => m_axi_arlen(7)
    );
\gen_data_bit[52].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(52),
      Q => m_axi_arlock(0)
    );
\gen_data_bit[53].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(53),
      Q => m_axi_arid(0)
    );
\gen_data_bit[53].u_srl_fifo_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => s_axis_tid(2),
      I2 => s_axis_tid(1),
      I3 => s_axis_tid(0),
      I4 => s_int_tready(2),
      O => \^push\
    );
\gen_data_bit[54].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(54),
      Q => m_axi_arqos(0)
    );
\gen_data_bit[55].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(55),
      Q => m_axi_arqos(1)
    );
\gen_data_bit[56].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(56),
      Q => m_axi_arqos(2)
    );
\gen_data_bit[57].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(57),
      Q => m_axi_arqos(3)
    );
\gen_data_bit[58].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(58),
      Q => m_axi_aruser(0)
    );
\gen_data_bit[59].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(59),
      Q => m_axi_aruser(1)
    );
\gen_data_bit[5].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(5),
      Q => m_axi_araddr(5)
    );
\gen_data_bit[60].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(60),
      Q => m_axi_aruser(2)
    );
\gen_data_bit[61].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(61),
      Q => m_axi_aruser(3)
    );
\gen_data_bit[6].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(6),
      Q => m_axi_araddr(6)
    );
\gen_data_bit[7].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(7),
      Q => m_axi_araddr(7)
    );
\gen_data_bit[8].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(8),
      Q => m_axi_araddr(8)
    );
\gen_data_bit[9].u_srl_fifo\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \fifo_index_reg__0\(0),
      A1 => \fifo_index_reg__0\(1),
      A2 => \fifo_index_reg__0\(2),
      A3 => \fifo_index_reg__0\(3),
      CE => \^push\,
      CLK => aclk,
      D => s_axis_tdata(9),
      Q => m_axi_araddr(9)
    );
\m_valid_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A0AAA0"
    )
        port map (
      I0 => aresetn,
      I1 => \m_valid_i_2__1_n_0\,
      I2 => \^push\,
      I3 => \^m_axi_arvalid\,
      I4 => m_axi_arready,
      O => \m_valid_i_1__0_n_0\
    );
\m_valid_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \fifo_index_reg__0\(1),
      I1 => \fifo_index_reg__0\(0),
      I2 => \fifo_index_reg__0\(3),
      I3 => \fifo_index_reg__0\(2),
      O => \m_valid_i_2__1_n_0\
    );
m_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_1__0_n_0\,
      Q => \^m_axi_arvalid\,
      R => '0'
    );
s_ready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^ss\(0)
    );
\s_ready_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFFFFFAAEAAAEA"
    )
        port map (
      I0 => areset_r1,
      I1 => m_axi_arready,
      I2 => \^m_axi_arvalid\,
      I3 => \^push\,
      I4 => \s_ready_i_2__0_n_0\,
      I5 => s_int_tready(2),
      O => \s_ready_i_1__1_n_0\
    );
\s_ready_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \fifo_index_reg__0\(0),
      I1 => \fifo_index_reg__0\(1),
      I2 => \fifo_index_reg__0\(3),
      I3 => \fifo_index_reg__0\(2),
      O => \s_ready_i_2__0_n_0\
    );
s_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_1__1_n_0\,
      Q => s_int_tready(2),
      R => \^ss\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter is
  port (
    count_is_max_reg_0 : out STD_LOGIC;
    decr_trans0 : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    \arb_gnt_r_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \count_is_max1__1\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    count_is_max_reg_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter : entity is "axi_mm2s_mapper_v1_1_8_transaction_counter";
end axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter;

architecture STRUCTURE of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter is
  signal \count_is_max_i_1__0_n_0\ : STD_LOGIC;
  signal \count_is_max_i_2__0_n_0\ : STD_LOGIC;
  signal \^count_is_max_reg_0\ : STD_LOGIC;
  signal \num_active_trans[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \num_active_trans[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \num_active_trans[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \num_active_trans[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \num_active_trans_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_is_max_i_2__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \num_active_trans[1]_i_1__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \num_active_trans[2]_i_1__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \num_active_trans[3]_i_2__1\ : label is "soft_lutpair19";
begin
  count_is_max_reg_0 <= \^count_is_max_reg_0\;
  s_axi_rvalid <= \^s_axi_rvalid\;
\count_is_max_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FFFFFFF00002AAA"
    )
        port map (
      I0 => \count_is_max_i_2__0_n_0\,
      I1 => s_axi_rready,
      I2 => s_axis_tdata(0),
      I3 => \^s_axi_rvalid\,
      I4 => count_is_max_reg_1,
      I5 => \^count_is_max_reg_0\,
      O => \count_is_max_i_1__0_n_0\
    );
\count_is_max_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \num_active_trans_reg__0\(1),
      I1 => \num_active_trans_reg__0\(0),
      I2 => \num_active_trans_reg__0\(3),
      I3 => \num_active_trans_reg__0\(2),
      O => \count_is_max_i_2__0_n_0\
    );
count_is_max_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \count_is_max_i_1__0_n_0\,
      Q => \^count_is_max_reg_0\,
      R => SS(0)
    );
\gen_fpga.gen_mux_5_8[0].mux_s2_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^count_is_max_reg_0\,
      O => \arb_gnt_r_reg[0]\(0)
    );
\num_active_trans[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \num_active_trans_reg__0\(0),
      O => \num_active_trans[0]_i_1__1_n_0\
    );
\num_active_trans[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \num_active_trans_reg__0\(0),
      I1 => \num_active_trans_reg__0\(1),
      I2 => \count_is_max1__1\,
      O => \num_active_trans[1]_i_1__1_n_0\
    );
\num_active_trans[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B4D2"
    )
        port map (
      I0 => \count_is_max1__1\,
      I1 => \num_active_trans_reg__0\(0),
      I2 => \num_active_trans_reg__0\(2),
      I3 => \num_active_trans_reg__0\(1),
      O => \num_active_trans[2]_i_1__1_n_0\
    );
\num_active_trans[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF40FD02"
    )
        port map (
      I0 => \count_is_max1__1\,
      I1 => \num_active_trans_reg__0\(1),
      I2 => \num_active_trans_reg__0\(0),
      I3 => \num_active_trans_reg__0\(3),
      I4 => \num_active_trans_reg__0\(2),
      O => \num_active_trans[3]_i_2__1_n_0\
    );
\num_active_trans[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => s_axis_tdata(0),
      I2 => s_axis_tvalid,
      I3 => s_axis_tid(2),
      I4 => s_axis_tid(0),
      I5 => s_axis_tid(1),
      O => decr_trans0
    );
\num_active_trans_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[0]_i_1__1_n_0\,
      Q => \num_active_trans_reg__0\(0),
      R => SS(0)
    );
\num_active_trans_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[1]_i_1__1_n_0\,
      Q => \num_active_trans_reg__0\(1),
      R => SS(0)
    );
\num_active_trans_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[2]_i_1__1_n_0\,
      Q => \num_active_trans_reg__0\(2),
      R => SS(0)
    );
\num_active_trans_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[3]_i_2__1_n_0\,
      Q => \num_active_trans_reg__0\(3),
      R => SS(0)
    );
s_axi_rvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axis_tid(1),
      I1 => s_axis_tid(0),
      I2 => s_axis_tid(2),
      I3 => s_axis_tvalid,
      O => \^s_axi_rvalid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter_0 is
  port (
    count_is_max : out STD_LOGIC;
    \m_tready_from_decoded_slave0__1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_gnt_r_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    incr_trans05_out : in STD_LOGIC;
    \count_is_max1__1\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter_0 : entity is "axi_mm2s_mapper_v1_1_8_transaction_counter";
end axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter_0;

architecture STRUCTURE of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter_0 is
  signal \^count_is_max\ : STD_LOGIC;
  signal count_is_max0 : STD_LOGIC;
  signal count_is_max_i_1_n_0 : STD_LOGIC;
  signal \^m_tready_from_decoded_slave0__1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \num_active_trans[0]_i_1_n_0\ : STD_LOGIC;
  signal \num_active_trans[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \num_active_trans[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \num_active_trans[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \num_active_trans_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of count_is_max_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gen_fpga.gen_mux_5_8[0].mux_s2_inst_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \num_active_trans[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \num_active_trans[1]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \num_active_trans[2]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \num_active_trans[3]_i_2__0\ : label is "soft_lutpair21";
begin
  count_is_max <= \^count_is_max\;
  \m_tready_from_decoded_slave0__1\(0) <= \^m_tready_from_decoded_slave0__1\(0);
count_is_max_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => count_is_max0,
      I1 => \count_is_max1__1\,
      I2 => \^count_is_max\,
      O => count_is_max_i_1_n_0
    );
count_is_max_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \^m_tready_from_decoded_slave0__1\(0),
      I1 => \num_active_trans_reg__0\(1),
      I2 => \num_active_trans_reg__0\(0),
      I3 => \num_active_trans_reg__0\(3),
      I4 => \num_active_trans_reg__0\(2),
      I5 => incr_trans05_out,
      O => count_is_max0
    );
count_is_max_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => count_is_max_i_1_n_0,
      Q => \^count_is_max\,
      R => SS(0)
    );
\gen_fpga.gen_mux_5_8[0].mux_s2_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^count_is_max\,
      O => \arb_gnt_r_reg[0]\(0)
    );
\num_active_trans[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \num_active_trans_reg__0\(0),
      O => \num_active_trans[0]_i_1_n_0\
    );
\num_active_trans[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \num_active_trans_reg__0\(0),
      I1 => \num_active_trans_reg__0\(1),
      I2 => \count_is_max1__1\,
      O => \num_active_trans[1]_i_1__0_n_0\
    );
\num_active_trans[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B4D2"
    )
        port map (
      I0 => \count_is_max1__1\,
      I1 => \num_active_trans_reg__0\(0),
      I2 => \num_active_trans_reg__0\(2),
      I3 => \num_active_trans_reg__0\(1),
      O => \num_active_trans[2]_i_1__0_n_0\
    );
\num_active_trans[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF40FD02"
    )
        port map (
      I0 => \count_is_max1__1\,
      I1 => \num_active_trans_reg__0\(1),
      I2 => \num_active_trans_reg__0\(0),
      I3 => \num_active_trans_reg__0\(3),
      I4 => \num_active_trans_reg__0\(2),
      O => \num_active_trans[3]_i_2__0_n_0\
    );
\num_active_trans_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[0]_i_1_n_0\,
      Q => \num_active_trans_reg__0\(0),
      R => SS(0)
    );
\num_active_trans_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[1]_i_1__0_n_0\,
      Q => \num_active_trans_reg__0\(1),
      R => SS(0)
    );
\num_active_trans_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[2]_i_1__0_n_0\,
      Q => \num_active_trans_reg__0\(2),
      R => SS(0)
    );
\num_active_trans_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[3]_i_2__0_n_0\,
      Q => \num_active_trans_reg__0\(3),
      R => SS(0)
    );
s_axis_tready_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => s_axis_tid(2),
      I2 => s_axis_tid(0),
      I3 => s_axis_tid(1),
      I4 => s_axi_bready,
      O => \^m_tready_from_decoded_slave0__1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter_1 is
  port (
    count_is_zero : out STD_LOGIC;
    m_int_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \count_is_max1__1\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    incr_trans05_out : in STD_LOGIC;
    decr_trans02_out : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter_1 : entity is "axi_mm2s_mapper_v1_1_8_transaction_counter";
end axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter_1;

architecture STRUCTURE of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter_1 is
  signal \^count_is_zero\ : STD_LOGIC;
  signal count_is_zero_i_1_n_0 : STD_LOGIC;
  signal count_is_zero_i_2_n_0 : STD_LOGIC;
  signal \num_active_trans[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \num_active_trans[1]_i_1_n_0\ : STD_LOGIC;
  signal \num_active_trans[2]_i_1_n_0\ : STD_LOGIC;
  signal \num_active_trans[3]_i_2_n_0\ : STD_LOGIC;
  signal \num_active_trans_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of count_is_zero_i_2 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \num_active_trans[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \num_active_trans[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \num_active_trans[3]_i_2\ : label is "soft_lutpair24";
begin
  count_is_zero <= \^count_is_zero\;
count_is_zero_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBFB33BB"
    )
        port map (
      I0 => \^count_is_zero\,
      I1 => aresetn,
      I2 => count_is_zero_i_2_n_0,
      I3 => incr_trans05_out,
      I4 => decr_trans02_out,
      O => count_is_zero_i_1_n_0
    );
count_is_zero_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \num_active_trans_reg__0\(1),
      I1 => \num_active_trans_reg__0\(0),
      I2 => \num_active_trans_reg__0\(3),
      I3 => \num_active_trans_reg__0\(2),
      O => count_is_zero_i_2_n_0
    );
count_is_zero_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => count_is_zero_i_1_n_0,
      Q => \^count_is_zero\,
      R => '0'
    );
\gen_fpga.gen_mux_5_8[0].mux_s2_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^count_is_zero\,
      O => m_int_tvalid(0)
    );
\num_active_trans[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \num_active_trans_reg__0\(0),
      O => \num_active_trans[0]_i_1__0_n_0\
    );
\num_active_trans[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \num_active_trans_reg__0\(0),
      I1 => \num_active_trans_reg__0\(1),
      I2 => \count_is_max1__1\,
      O => \num_active_trans[1]_i_1_n_0\
    );
\num_active_trans[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B4D2"
    )
        port map (
      I0 => \count_is_max1__1\,
      I1 => \num_active_trans_reg__0\(0),
      I2 => \num_active_trans_reg__0\(2),
      I3 => \num_active_trans_reg__0\(1),
      O => \num_active_trans[2]_i_1_n_0\
    );
\num_active_trans[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF40FD02"
    )
        port map (
      I0 => \count_is_max1__1\,
      I1 => \num_active_trans_reg__0\(1),
      I2 => \num_active_trans_reg__0\(0),
      I3 => \num_active_trans_reg__0\(3),
      I4 => \num_active_trans_reg__0\(2),
      O => \num_active_trans[3]_i_2_n_0\
    );
\num_active_trans_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[0]_i_1__0_n_0\,
      Q => \num_active_trans_reg__0\(0),
      R => SS(0)
    );
\num_active_trans_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[1]_i_1_n_0\,
      Q => \num_active_trans_reg__0\(1),
      R => SS(0)
    );
\num_active_trans_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[2]_i_1_n_0\,
      Q => \num_active_trans_reg__0\(2),
      R => SS(0)
    );
\num_active_trans_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \num_active_trans[3]_i_2_n_0\,
      Q => \num_active_trans_reg__0\(3),
      R => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_mm2s_mapper_0_axis_infrastructure_v1_1_0_mux_enc is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_sel_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \arb_sel_r_reg[1]\ : in STD_LOGIC;
    \arb_sel_r_reg[1]_0\ : in STD_LOGIC;
    \arb_sel_r_reg[1]_1\ : in STD_LOGIC;
    \arb_sel_r_reg[1]_2\ : in STD_LOGIC;
    \arb_sel_r_reg[1]_3\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_mm2s_mapper_0_axis_infrastructure_v1_1_0_mux_enc : entity is "axis_infrastructure_v1_1_0_mux_enc";
end axi_mm2s_mapper_0_axis_infrastructure_v1_1_0_mux_enc;

architecture STRUCTURE of axi_mm2s_mapper_0_axis_infrastructure_v1_1_0_mux_enc is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[0].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[10].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[11].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[12].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[13].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[14].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[15].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[16].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[17].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[18].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[19].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[1].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[20].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[21].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[22].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[23].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[24].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[25].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[26].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[27].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[28].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[29].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[2].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[30].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[31].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[32].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[33].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[34].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[35].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[36].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[37].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[38].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[39].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[3].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[40].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[41].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[42].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[43].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[44].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[45].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[46].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[47].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[48].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[49].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[4].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[50].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[51].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[52].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[53].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[54].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[55].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[56].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[57].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[58].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[59].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[5].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[60].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[61].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[62].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[63].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[64].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[65].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[66].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[67].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[68].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[69].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[6].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[70].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[71].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[72].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[73].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[74].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[75].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[7].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[8].mux_s2_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[9].mux_s2_inst\ : label is "PRIMITIVE";
begin
\gen_fpga.gen_mux_5_8[0].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(0),
      I1 => s_axi_wdata(0),
      O => m_axis_tdata(0),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[10].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(10),
      I1 => s_axi_wdata(10),
      O => m_axis_tdata(10),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[11].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(11),
      I1 => s_axi_wdata(11),
      O => m_axis_tdata(11),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[12].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(12),
      I1 => s_axi_wdata(12),
      O => m_axis_tdata(12),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[13].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(13),
      I1 => s_axi_wdata(13),
      O => m_axis_tdata(13),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[14].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(14),
      I1 => s_axi_wdata(14),
      O => m_axis_tdata(14),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[15].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(15),
      I1 => s_axi_wdata(15),
      O => m_axis_tdata(15),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[16].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(16),
      I1 => s_axi_wdata(16),
      O => m_axis_tdata(16),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[17].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(17),
      I1 => s_axi_wdata(17),
      O => m_axis_tdata(17),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[18].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(18),
      I1 => s_axi_wdata(18),
      O => m_axis_tdata(18),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[19].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(19),
      I1 => s_axi_wdata(19),
      O => m_axis_tdata(19),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[1].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(1),
      I1 => s_axi_wdata(1),
      O => m_axis_tdata(1),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[20].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(20),
      I1 => s_axi_wdata(20),
      O => m_axis_tdata(20),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[21].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(21),
      I1 => s_axi_wdata(21),
      O => m_axis_tdata(21),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[22].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(22),
      I1 => s_axi_wdata(22),
      O => m_axis_tdata(22),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[23].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(23),
      I1 => s_axi_wdata(23),
      O => m_axis_tdata(23),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[24].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(24),
      I1 => s_axi_wdata(24),
      O => m_axis_tdata(24),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[25].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(25),
      I1 => s_axi_wdata(25),
      O => m_axis_tdata(25),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[26].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(26),
      I1 => s_axi_wdata(26),
      O => m_axis_tdata(26),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[27].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(27),
      I1 => s_axi_wdata(27),
      O => m_axis_tdata(27),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[28].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(28),
      I1 => s_axi_wdata(28),
      O => m_axis_tdata(28),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[29].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(29),
      I1 => s_axi_wdata(29),
      O => m_axis_tdata(29),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[2].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(2),
      I1 => s_axi_wdata(2),
      O => m_axis_tdata(2),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[30].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(30),
      I1 => s_axi_wdata(30),
      O => m_axis_tdata(30),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[31].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(31),
      I1 => s_axi_wdata(31),
      O => m_axis_tdata(31),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[32].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(32),
      I1 => s_axi_wstrb(0),
      O => m_axis_tdata(32),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[33].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(33),
      I1 => s_axi_wstrb(1),
      O => m_axis_tdata(33),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[34].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(34),
      I1 => s_axi_wstrb(2),
      O => m_axis_tdata(34),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[35].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(35),
      I1 => s_axi_wstrb(3),
      O => m_axis_tdata(35),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[36].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(36),
      I1 => s_axi_wlast,
      O => m_axis_tdata(36),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[37].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(37),
      I1 => s_axi_wuser(0),
      O => m_axis_tdata(37),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[38].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(38),
      I1 => s_axi_wuser(1),
      O => m_axis_tdata(38),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[39].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(39),
      I1 => s_axi_wuser(2),
      O => m_axis_tdata(39),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[3].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(3),
      I1 => s_axi_wdata(3),
      O => m_axis_tdata(3),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[40].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(40),
      I1 => s_axi_wuser(3),
      O => m_axis_tdata(40),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[41].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(41),
      I1 => '0',
      O => m_axis_tdata(41),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[42].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(42),
      I1 => '0',
      O => m_axis_tdata(42),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[43].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(43),
      I1 => '0',
      O => m_axis_tdata(43),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[44].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(44),
      I1 => '0',
      O => m_axis_tdata(44),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[45].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(45),
      I1 => '0',
      O => m_axis_tdata(45),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[46].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(46),
      I1 => '0',
      O => m_axis_tdata(46),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[47].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(47),
      I1 => '0',
      O => m_axis_tdata(47),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[48].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(48),
      I1 => '0',
      O => m_axis_tdata(48),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[49].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(49),
      I1 => '0',
      O => m_axis_tdata(49),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[4].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(4),
      I1 => s_axi_wdata(4),
      O => m_axis_tdata(4),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[50].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(50),
      I1 => '0',
      O => m_axis_tdata(50),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[51].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(51),
      I1 => '0',
      O => m_axis_tdata(51),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[52].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(52),
      I1 => '0',
      O => m_axis_tdata(52),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[53].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(53),
      I1 => '0',
      O => m_axis_tdata(53),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[54].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(54),
      I1 => '0',
      O => m_axis_tdata(54),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[55].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(55),
      I1 => '0',
      O => m_axis_tdata(55),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[56].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(56),
      I1 => '0',
      O => m_axis_tdata(56),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[57].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(57),
      I1 => '0',
      O => m_axis_tdata(57),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[58].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(58),
      I1 => '0',
      O => m_axis_tdata(58),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[59].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(59),
      I1 => '0',
      O => m_axis_tdata(59),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[5].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(5),
      I1 => s_axi_wdata(5),
      O => m_axis_tdata(5),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[60].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(60),
      I1 => '0',
      O => m_axis_tdata(60),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[61].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(61),
      I1 => '0',
      O => m_axis_tdata(61),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[62].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => '0',
      I1 => '0',
      O => m_axis_tdata(62),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[63].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => '0',
      I1 => '0',
      O => m_axis_tdata(63),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[64].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => '1',
      I1 => '1',
      O => m_axis_tkeep(0),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[65].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \arb_sel_r_reg[1]\,
      I1 => '1',
      O => m_axis_tkeep(1),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[66].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \arb_sel_r_reg[1]_0\,
      I1 => '1',
      O => m_axis_tkeep(2),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[67].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \arb_sel_r_reg[1]_1\,
      I1 => '1',
      O => m_axis_tkeep(3),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[68].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(62),
      I1 => '1',
      O => m_axis_tkeep(4),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[69].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \arb_sel_r_reg[1]_2\,
      I1 => '1',
      O => m_axis_tkeep(5),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[6].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(6),
      I1 => s_axi_wdata(6),
      O => m_axis_tdata(6),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[70].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => \arb_sel_r_reg[1]_3\,
      I1 => '0',
      O => m_axis_tkeep(6),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[71].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(63),
      I1 => '0',
      O => m_axis_tkeep(7),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[72].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => '1',
      I1 => '1',
      O => m_axis_tlast,
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[73].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => arb_sel_i(0),
      I1 => '0',
      O => m_axis_tid(0),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[74].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => arb_sel_i(1),
      I1 => '0',
      O => m_axis_tid(1),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[75].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => '0',
      I1 => '1',
      O => m_axis_tid(2),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[7].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(7),
      I1 => s_axi_wdata(7),
      O => m_axis_tdata(7),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[8].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(8),
      I1 => s_axi_wdata(8),
      O => m_axis_tdata(8),
      S => arb_sel_i(2)
    );
\gen_fpga.gen_mux_5_8[9].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in(9),
      I1 => s_axi_wdata(9),
      O => m_axis_tdata(9),
      S => arb_sel_i(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_mm2s_mapper_0_axis_infrastructure_v1_1_0_mux_enc__parameterized0\ is
  port (
    o_i : out STD_LOGIC;
    arb_sel_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in_0 : in STD_LOGIC;
    m_int_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_mm2s_mapper_0_axis_infrastructure_v1_1_0_mux_enc__parameterized0\ : entity is "axis_infrastructure_v1_1_0_mux_enc";
end \axi_mm2s_mapper_0_axis_infrastructure_v1_1_0_mux_enc__parameterized0\;

architecture STRUCTURE of \axi_mm2s_mapper_0_axis_infrastructure_v1_1_0_mux_enc__parameterized0\ is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_fpga.gen_mux_5_8[0].mux_s2_inst\ : label is "PRIMITIVE";
begin
\gen_fpga.gen_mux_5_8[0].mux_s2_inst\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_in_0,
      I1 => m_int_tvalid(0),
      O => o_i,
      S => arb_sel_i(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_mm2s_mapper_0_axis_switch_v1_1_9_arb_rr is
  port (
    \arb_gnt_r_reg[0]_0\ : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    \arb_sel_r_reg[1]_0\ : out STD_LOGIC;
    \arb_sel_r_reg[0]_0\ : out STD_LOGIC;
    \busy_r_reg[3]\ : out STD_LOGIC;
    \busy_r_reg[1]\ : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]\ : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    busy_ns : out STD_LOGIC;
    \busy_r_reg[4]\ : out STD_LOGIC;
    busy_ns_0 : out STD_LOGIC;
    busy_ns_1 : out STD_LOGIC;
    \busy_r_reg[2]\ : out STD_LOGIC;
    busy_ns_2 : out STD_LOGIC;
    busy_ns_3 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \arb_gnt_r_reg[0]_1\ : out STD_LOGIC;
    \count_is_max1__1_1\ : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    \fifo_index1__1\ : out STD_LOGIC;
    p_0_in_4 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \m_axis_tkeep[1]\ : out STD_LOGIC;
    \m_axis_tkeep[2]\ : out STD_LOGIC;
    \m_axis_tkeep[3]\ : out STD_LOGIC;
    \m_axis_tkeep[5]\ : out STD_LOGIC;
    \m_axis_tkeep[6]\ : out STD_LOGIC;
    s_ready_reg : out STD_LOGIC;
    arb_sel_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    areset_r_reg : in STD_LOGIC;
    aclk : in STD_LOGIC;
    count_is_max_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_int_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_busy_r_reg_0 : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_0\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_1\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_2\ : in STD_LOGIC;
    count_is_max : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_tready : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_3\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_4\ : in STD_LOGIC;
    o_i : in STD_LOGIC;
    m_axis_tlast : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    count_is_max_reg_0 : in STD_LOGIC;
    decr_trans0 : in STD_LOGIC;
    count_is_zero : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_bready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_int_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_ruser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_ready3__3\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_mm2s_mapper_0_axis_switch_v1_1_9_arb_rr : entity is "axis_switch_v1_1_9_arb_rr";
end axi_mm2s_mapper_0_axis_switch_v1_1_9_arb_rr;

architecture STRUCTURE of axi_mm2s_mapper_0_axis_switch_v1_1_9_arb_rr is
  signal \^d\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal arb_busy_ns : STD_LOGIC;
  signal arb_busy_r_i_3_n_0 : STD_LOGIC;
  signal \arb_gnt_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[0]_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[0]_1\ : STD_LOGIC;
  signal \arb_req_i__9\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^arb_sel_i\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \arb_sel_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \arb_sel_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \arb_sel_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \^arb_sel_r_reg[0]_0\ : STD_LOGIC;
  signal \^arb_sel_r_reg[1]_0\ : STD_LOGIC;
  signal \^busy_r_reg[1]\ : STD_LOGIC;
  signal \^busy_r_reg[2]\ : STD_LOGIC;
  signal \^busy_r_reg[3]\ : STD_LOGIC;
  signal \^busy_r_reg[4]\ : STD_LOGIC;
  signal \dynamic_priority_encoder_0/valid_lsb\ : STD_LOGIC;
  signal \^fifo_index1__1\ : STD_LOGIC;
  signal \^gen_tdest_routing.busy_r_reg[0]\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal sel_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal valid_i : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of arb_busy_r_i_4 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \arb_gnt_r[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \arb_gnt_r[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \arb_gnt_r[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \arb_gnt_r[3]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \arb_gnt_r[4]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \arb_gnt_r[4]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \arb_gnt_r[4]_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \arb_sel_r[0]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \busy_r[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \busy_r[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \busy_r[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \busy_r[4]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[0]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[0]_i_1__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[0]_i_1__2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[0]_i_1__3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of s_axi_awready_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s_ready_i_2__1\ : label is "soft_lutpair12";
begin
  D(4 downto 0) <= \^d\(4 downto 0);
  \arb_gnt_r_reg[0]_0\ <= \^arb_gnt_r_reg[0]_0\;
  \arb_gnt_r_reg[0]_1\ <= \^arb_gnt_r_reg[0]_1\;
  arb_sel_i(0) <= \^arb_sel_i\(0);
  \arb_sel_r_reg[0]_0\ <= \^arb_sel_r_reg[0]_0\;
  \arb_sel_r_reg[1]_0\ <= \^arb_sel_r_reg[1]_0\;
  \busy_r_reg[1]\ <= \^busy_r_reg[1]\;
  \busy_r_reg[2]\ <= \^busy_r_reg[2]\;
  \busy_r_reg[3]\ <= \^busy_r_reg[3]\;
  \busy_r_reg[4]\ <= \^busy_r_reg[4]\;
  \fifo_index1__1\ <= \^fifo_index1__1\;
  \gen_tdest_routing.busy_r_reg[0]\ <= \^gen_tdest_routing.busy_r_reg[0]\;
arb_busy_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFFFE"
    )
        port map (
      I0 => \dynamic_priority_encoder_0/valid_lsb\,
      I1 => arb_busy_r_i_3_n_0,
      I2 => \arb_req_i__9\(4),
      I3 => \^arb_gnt_r_reg[0]_0\,
      I4 => p_0_out,
      O => arb_busy_ns
    );
arb_busy_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010FF10101010"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r_reg[0]_1\,
      I1 => \^busy_r_reg[1]\,
      I2 => count_is_max_reg(0),
      I3 => \gen_tdest_routing.busy_r_reg[0]_2\,
      I4 => \^gen_tdest_routing.busy_r_reg[0]\,
      I5 => m_int_tvalid(0),
      O => \dynamic_priority_encoder_0/valid_lsb\
    );
arb_busy_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010FF10101010"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r_reg[0]_0\,
      I1 => \^busy_r_reg[3]\,
      I2 => m_axi_rvalid,
      I3 => \gen_tdest_routing.busy_r_reg[0]_4\,
      I4 => \^busy_r_reg[2]\,
      I5 => count_is_max_reg(1),
      O => arb_busy_r_i_3_n_0
    );
arb_busy_r_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => count_is_zero,
      I1 => s_axi_wvalid,
      I2 => \^busy_r_reg[4]\,
      I3 => \gen_tdest_routing.busy_r_reg[0]_3\,
      O => \arb_req_i__9\(4)
    );
arb_busy_r_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080808000"
    )
        port map (
      I0 => o_i,
      I1 => m_axis_tlast,
      I2 => m_axis_tready,
      I3 => \^d\(3),
      I4 => \^d\(2),
      I5 => \^arb_gnt_r_reg[0]_1\,
      O => p_0_out
    );
arb_busy_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => arb_busy_ns,
      Q => \^arb_gnt_r_reg[0]_0\,
      R => areset_r_reg
    );
\arb_gnt_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => sel_i(0),
      I1 => \dynamic_priority_encoder_0/valid_lsb\,
      I2 => arb_busy_r_i_3_n_0,
      O => \arb_gnt_r[0]_i_1_n_0\
    );
\arb_gnt_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => sel_i(0),
      I1 => \dynamic_priority_encoder_0/valid_lsb\,
      I2 => arb_busy_r_i_3_n_0,
      O => \arb_gnt_r[1]_i_1_n_0\
    );
\arb_gnt_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \dynamic_priority_encoder_0/valid_lsb\,
      I1 => arb_busy_r_i_3_n_0,
      I2 => sel_i(0),
      O => \arb_gnt_r[2]_i_1_n_0\
    );
\arb_gnt_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEAEFF"
    )
        port map (
      I0 => areset_r_reg,
      I1 => \^arb_gnt_r_reg[0]_0\,
      I2 => p_0_out,
      I3 => \dynamic_priority_encoder_0/valid_lsb\,
      I4 => arb_busy_r_i_3_n_0,
      O => \arb_gnt_r[3]_i_1_n_0\
    );
\arb_gnt_r[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => sel_i(0),
      I1 => \dynamic_priority_encoder_0/valid_lsb\,
      I2 => arb_busy_r_i_3_n_0,
      O => \arb_gnt_r[3]_i_2_n_0\
    );
\arb_gnt_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => sel_i(0),
      I1 => areset_r_reg,
      I2 => arb_busy_r_reg_0,
      I3 => \dynamic_priority_encoder_0/valid_lsb\,
      I4 => arb_busy_r_i_3_n_0,
      I5 => \arb_req_i__9\(4),
      O => \arb_gnt_r[4]_i_1_n_0\
    );
\arb_gnt_r[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222222232222"
    )
        port map (
      I0 => \arb_req_i__9\(1),
      I1 => \arb_req_i__9\(0),
      I2 => \gen_tdest_routing.busy_r_reg[0]_0\,
      I3 => \^busy_r_reg[3]\,
      I4 => m_axi_rvalid,
      I5 => \arb_req_i__9\(2),
      O => sel_i(0)
    );
\arb_gnt_r[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => count_is_max,
      I1 => s_axi_awvalid,
      I2 => \^busy_r_reg[1]\,
      I3 => \gen_tdest_routing.busy_r_reg[0]_1\,
      O => \arb_req_i__9\(1)
    );
\arb_gnt_r[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => m_int_tvalid(0),
      I1 => \^gen_tdest_routing.busy_r_reg[0]\,
      I2 => \gen_tdest_routing.busy_r_reg[0]_2\,
      O => \arb_req_i__9\(0)
    );
\arb_gnt_r[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => count_is_max_reg_0,
      I1 => s_axi_arvalid,
      I2 => \^busy_r_reg[2]\,
      I3 => \gen_tdest_routing.busy_r_reg[0]_4\,
      O => \arb_req_i__9\(2)
    );
\arb_gnt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[0]_i_1_n_0\,
      Q => \^gen_tdest_routing.busy_r_reg[0]\,
      R => \arb_gnt_r[3]_i_1_n_0\
    );
\arb_gnt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[1]_i_1_n_0\,
      Q => \^busy_r_reg[1]\,
      R => \arb_gnt_r[3]_i_1_n_0\
    );
\arb_gnt_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[2]_i_1_n_0\,
      Q => \^busy_r_reg[2]\,
      R => \arb_gnt_r[3]_i_1_n_0\
    );
\arb_gnt_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[3]_i_2_n_0\,
      Q => \^busy_r_reg[3]\,
      R => \arb_gnt_r[3]_i_1_n_0\
    );
\arb_gnt_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[4]_i_1_n_0\,
      Q => \^busy_r_reg[4]\,
      R => '0'
    );
\arb_sel_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFA200"
    )
        port map (
      I0 => sel_i(0),
      I1 => \^arb_gnt_r_reg[0]_0\,
      I2 => p_0_out,
      I3 => valid_i,
      I4 => \^arb_sel_r_reg[0]_0\,
      O => \arb_sel_r[0]_i_1_n_0\
    );
\arb_sel_r[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \arb_req_i__9\(4),
      I1 => \arb_req_i__9\(3),
      I2 => \arb_req_i__9\(2),
      I3 => \arb_req_i__9\(0),
      I4 => \arb_req_i__9\(1),
      O => valid_i
    );
\arb_sel_r[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => \^busy_r_reg[3]\,
      I2 => \gen_tdest_routing.busy_r_reg[0]_0\,
      O => \arb_req_i__9\(3)
    );
\arb_sel_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F222F2F0D000D00"
    )
        port map (
      I0 => \^arb_gnt_r_reg[0]_0\,
      I1 => p_0_out,
      I2 => \dynamic_priority_encoder_0/valid_lsb\,
      I3 => arb_busy_r_i_3_n_0,
      I4 => \arb_req_i__9\(4),
      I5 => \^arb_sel_r_reg[1]_0\,
      O => \arb_sel_r[1]_i_1_n_0\
    );
\arb_sel_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222F222F000D0000"
    )
        port map (
      I0 => \^arb_gnt_r_reg[0]_0\,
      I1 => p_0_out,
      I2 => \dynamic_priority_encoder_0/valid_lsb\,
      I3 => arb_busy_r_i_3_n_0,
      I4 => \arb_req_i__9\(4),
      I5 => \^arb_sel_i\(0),
      O => \arb_sel_r[2]_i_1_n_0\
    );
\arb_sel_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[0]_i_1_n_0\,
      Q => \^arb_sel_r_reg[0]_0\,
      R => areset_r_reg
    );
\arb_sel_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[1]_i_1_n_0\,
      Q => \^arb_sel_r_reg[1]_0\,
      R => areset_r_reg
    );
\arb_sel_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[2]_i_1_n_0\,
      Q => \^arb_sel_i\(0),
      R => areset_r_reg
    );
\busy_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_tdest_routing.busy_r_reg[0]\,
      I1 => Q(0),
      O => \^d\(0)
    );
\busy_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^busy_r_reg[1]\,
      I1 => Q(1),
      O => \^d\(1)
    );
\busy_r[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^busy_r_reg[2]\,
      I1 => Q(2),
      O => \^d\(2)
    );
\busy_r[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^busy_r_reg[3]\,
      I1 => Q(3),
      O => \^d\(3)
    );
\busy_r[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => areset_r_reg,
      I1 => p_0_out,
      O => SR(0)
    );
\busy_r[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^busy_r_reg[4]\,
      I1 => Q(4),
      O => \^d\(4)
    );
\gen_fpga.gen_mux_5_8[0].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFAFA0C0C0AFA0"
    )
        port map (
      I0 => count_is_max_reg(1),
      I1 => m_axi_rvalid,
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => m_int_tvalid(0),
      I4 => \^arb_sel_r_reg[0]_0\,
      I5 => count_is_max_reg(0),
      O => p_0_in
    );
\gen_fpga.gen_mux_5_8[0].mux_s2_inst_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => m_int_tdata(0),
      I2 => \^arb_sel_r_reg[0]_0\,
      I3 => \^arb_sel_r_reg[1]_0\,
      I4 => s_axi_araddr(0),
      I5 => s_axi_awaddr(0),
      O => p_0_in_4(0)
    );
\gen_fpga.gen_mux_5_8[10].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => s_axi_awaddr(10),
      I2 => m_axi_rdata(10),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(10)
    );
\gen_fpga.gen_mux_5_8[11].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(11),
      I1 => s_axi_awaddr(11),
      I2 => m_axi_rdata(11),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(11)
    );
\gen_fpga.gen_mux_5_8[12].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(12),
      I1 => s_axi_awaddr(12),
      I2 => m_axi_rdata(12),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(12)
    );
\gen_fpga.gen_mux_5_8[13].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(13),
      I1 => s_axi_awaddr(13),
      I2 => m_axi_rdata(13),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(13)
    );
\gen_fpga.gen_mux_5_8[14].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(14),
      I1 => s_axi_awaddr(14),
      I2 => m_axi_rdata(14),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(14)
    );
\gen_fpga.gen_mux_5_8[15].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(15),
      I1 => s_axi_awaddr(15),
      I2 => m_axi_rdata(15),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(15)
    );
\gen_fpga.gen_mux_5_8[16].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(16),
      I1 => s_axi_awaddr(16),
      I2 => m_axi_rdata(16),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(16)
    );
\gen_fpga.gen_mux_5_8[17].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(17),
      I1 => s_axi_awaddr(17),
      I2 => m_axi_rdata(17),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(17)
    );
\gen_fpga.gen_mux_5_8[18].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(18),
      I1 => s_axi_awaddr(18),
      I2 => m_axi_rdata(18),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(18)
    );
\gen_fpga.gen_mux_5_8[19].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(19),
      I1 => s_axi_awaddr(19),
      I2 => m_axi_rdata(19),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(19)
    );
\gen_fpga.gen_mux_5_8[1].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => m_int_tdata(1),
      I2 => \^arb_sel_r_reg[0]_0\,
      I3 => \^arb_sel_r_reg[1]_0\,
      I4 => s_axi_araddr(1),
      I5 => s_axi_awaddr(1),
      O => p_0_in_4(1)
    );
\gen_fpga.gen_mux_5_8[20].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(20),
      I1 => s_axi_awaddr(20),
      I2 => m_axi_rdata(20),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(20)
    );
\gen_fpga.gen_mux_5_8[21].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(21),
      I1 => s_axi_awaddr(21),
      I2 => m_axi_rdata(21),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(21)
    );
\gen_fpga.gen_mux_5_8[22].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(22),
      I1 => s_axi_awaddr(22),
      I2 => m_axi_rdata(22),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(22)
    );
\gen_fpga.gen_mux_5_8[23].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(23),
      I1 => s_axi_awaddr(23),
      I2 => m_axi_rdata(23),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(23)
    );
\gen_fpga.gen_mux_5_8[24].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(24),
      I1 => s_axi_awaddr(24),
      I2 => m_axi_rdata(24),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(24)
    );
\gen_fpga.gen_mux_5_8[25].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(25),
      I1 => s_axi_awaddr(25),
      I2 => m_axi_rdata(25),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(25)
    );
\gen_fpga.gen_mux_5_8[26].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(26),
      I1 => s_axi_awaddr(26),
      I2 => m_axi_rdata(26),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(26)
    );
\gen_fpga.gen_mux_5_8[27].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(27),
      I1 => s_axi_awaddr(27),
      I2 => m_axi_rdata(27),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(27)
    );
\gen_fpga.gen_mux_5_8[28].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(28),
      I1 => s_axi_awaddr(28),
      I2 => m_axi_rdata(28),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(28)
    );
\gen_fpga.gen_mux_5_8[29].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(29),
      I1 => s_axi_awaddr(29),
      I2 => m_axi_rdata(29),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(29)
    );
\gen_fpga.gen_mux_5_8[2].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => m_int_tdata(2),
      I2 => \^arb_sel_r_reg[0]_0\,
      I3 => \^arb_sel_r_reg[1]_0\,
      I4 => s_axi_araddr(2),
      I5 => s_axi_awaddr(2),
      O => p_0_in_4(2)
    );
\gen_fpga.gen_mux_5_8[30].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(30),
      I1 => s_axi_awaddr(30),
      I2 => m_axi_rdata(30),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(30)
    );
\gen_fpga.gen_mux_5_8[31].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(31),
      I1 => s_axi_awaddr(31),
      I2 => m_axi_rdata(31),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(31)
    );
\gen_fpga.gen_mux_5_8[32].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_arprot(0),
      I1 => s_axi_awprot(0),
      I2 => m_axi_rresp(0),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(32)
    );
\gen_fpga.gen_mux_5_8[33].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_arprot(1),
      I1 => s_axi_awprot(1),
      I2 => m_axi_rresp(1),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(33)
    );
\gen_fpga.gen_mux_5_8[34].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_arprot(2),
      I1 => s_axi_awprot(2),
      I2 => m_axi_rlast,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(34)
    );
\gen_fpga.gen_mux_5_8[35].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_awsize(0),
      I2 => m_axi_rid(0),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(35)
    );
\gen_fpga.gen_mux_5_8[36].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_awsize(1),
      I2 => m_axi_ruser(0),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(36)
    );
\gen_fpga.gen_mux_5_8[37].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_awsize(2),
      I2 => m_axi_ruser(1),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(37)
    );
\gen_fpga.gen_mux_5_8[38].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => s_axi_awburst(0),
      I2 => m_axi_ruser(2),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(38)
    );
\gen_fpga.gen_mux_5_8[39].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_awburst(1),
      I2 => m_axi_ruser(3),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(39)
    );
\gen_fpga.gen_mux_5_8[3].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => m_int_tdata(3),
      I2 => \^arb_sel_r_reg[0]_0\,
      I3 => \^arb_sel_r_reg[1]_0\,
      I4 => s_axi_araddr(3),
      I5 => s_axi_awaddr(3),
      O => p_0_in_4(3)
    );
\gen_fpga.gen_mux_5_8[40].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awcache(0),
      I1 => s_axi_arcache(0),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(40)
    );
\gen_fpga.gen_mux_5_8[41].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awcache(1),
      I1 => s_axi_arcache(1),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(41)
    );
\gen_fpga.gen_mux_5_8[42].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awcache(2),
      I1 => s_axi_arcache(2),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(42)
    );
\gen_fpga.gen_mux_5_8[43].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awcache(3),
      I1 => s_axi_arcache(3),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(43)
    );
\gen_fpga.gen_mux_5_8[44].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_arlen(0),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(44)
    );
\gen_fpga.gen_mux_5_8[45].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_arlen(1),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(45)
    );
\gen_fpga.gen_mux_5_8[46].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_arlen(2),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(46)
    );
\gen_fpga.gen_mux_5_8[47].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_arlen(3),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(47)
    );
\gen_fpga.gen_mux_5_8[48].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => s_axi_arlen(4),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(48)
    );
\gen_fpga.gen_mux_5_8[49].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awlen(5),
      I1 => s_axi_arlen(5),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(49)
    );
\gen_fpga.gen_mux_5_8[4].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => m_int_tdata(4),
      I2 => \^arb_sel_r_reg[0]_0\,
      I3 => \^arb_sel_r_reg[1]_0\,
      I4 => s_axi_araddr(4),
      I5 => s_axi_awaddr(4),
      O => p_0_in_4(4)
    );
\gen_fpga.gen_mux_5_8[50].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awlen(6),
      I1 => s_axi_arlen(6),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(50)
    );
\gen_fpga.gen_mux_5_8[51].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awlen(7),
      I1 => s_axi_arlen(7),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(51)
    );
\gen_fpga.gen_mux_5_8[52].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awlock(0),
      I1 => s_axi_arlock(0),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(52)
    );
\gen_fpga.gen_mux_5_8[53].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awid(0),
      I1 => s_axi_arid(0),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(53)
    );
\gen_fpga.gen_mux_5_8[54].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awqos(0),
      I1 => s_axi_arqos(0),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(54)
    );
\gen_fpga.gen_mux_5_8[55].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awqos(1),
      I1 => s_axi_arqos(1),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(55)
    );
\gen_fpga.gen_mux_5_8[56].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awqos(2),
      I1 => s_axi_arqos(2),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(56)
    );
\gen_fpga.gen_mux_5_8[57].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awqos(3),
      I1 => s_axi_arqos(3),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(57)
    );
\gen_fpga.gen_mux_5_8[58].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awuser(0),
      I1 => s_axi_aruser(0),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(58)
    );
\gen_fpga.gen_mux_5_8[59].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awuser(1),
      I1 => s_axi_aruser(1),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(59)
    );
\gen_fpga.gen_mux_5_8[5].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => m_int_tdata(5),
      I2 => \^arb_sel_r_reg[0]_0\,
      I3 => \^arb_sel_r_reg[1]_0\,
      I4 => s_axi_araddr(5),
      I5 => s_axi_awaddr(5),
      O => p_0_in_4(5)
    );
\gen_fpga.gen_mux_5_8[60].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awuser(2),
      I1 => s_axi_aruser(2),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(60)
    );
\gen_fpga.gen_mux_5_8[61].mux_s2_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => s_axi_awuser(3),
      I1 => s_axi_aruser(3),
      I2 => \^arb_sel_r_reg[1]_0\,
      I3 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(61)
    );
\gen_fpga.gen_mux_5_8[65].mux_s2_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^arb_sel_r_reg[1]_0\,
      I1 => \^arb_sel_r_reg[0]_0\,
      O => \m_axis_tkeep[1]\
    );
\gen_fpga.gen_mux_5_8[66].mux_s2_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^arb_sel_r_reg[1]_0\,
      I1 => \^arb_sel_r_reg[0]_0\,
      O => \m_axis_tkeep[2]\
    );
\gen_fpga.gen_mux_5_8[67].mux_s2_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^arb_sel_r_reg[1]_0\,
      I1 => \^arb_sel_r_reg[0]_0\,
      O => \m_axis_tkeep[3]\
    );
\gen_fpga.gen_mux_5_8[68].mux_s2_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^arb_sel_r_reg[1]_0\,
      I1 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(62)
    );
\gen_fpga.gen_mux_5_8[69].mux_s2_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^arb_sel_r_reg[1]_0\,
      I1 => \^arb_sel_r_reg[0]_0\,
      O => \m_axis_tkeep[5]\
    );
\gen_fpga.gen_mux_5_8[6].mux_s2_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => m_int_tdata(6),
      I2 => \^arb_sel_r_reg[0]_0\,
      I3 => \^arb_sel_r_reg[1]_0\,
      I4 => s_axi_araddr(6),
      I5 => s_axi_awaddr(6),
      O => p_0_in_4(6)
    );
\gen_fpga.gen_mux_5_8[70].mux_s2_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^arb_sel_r_reg[1]_0\,
      I1 => \^arb_sel_r_reg[0]_0\,
      O => \m_axis_tkeep[6]\
    );
\gen_fpga.gen_mux_5_8[71].mux_s2_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^arb_sel_r_reg[1]_0\,
      I1 => \^arb_sel_r_reg[0]_0\,
      O => p_0_in_4(63)
    );
\gen_fpga.gen_mux_5_8[7].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_awaddr(7),
      I2 => m_axi_rdata(7),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(7)
    );
\gen_fpga.gen_mux_5_8[8].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => s_axi_awaddr(8),
      I2 => m_axi_rdata(8),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(8)
    );
\gen_fpga.gen_mux_5_8[9].mux_s2_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => s_axi_araddr(9),
      I1 => s_axi_awaddr(9),
      I2 => m_axi_rdata(9),
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => p_0_in_4(9)
    );
\gen_tdest_routing.busy_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^busy_r_reg[4]\,
      I1 => \gen_tdest_routing.busy_r_reg[0]_3\,
      I2 => p_0_out,
      O => busy_ns
    );
\gen_tdest_routing.busy_r[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^busy_r_reg[3]\,
      I1 => \gen_tdest_routing.busy_r_reg[0]_0\,
      I2 => p_0_out,
      O => busy_ns_0
    );
\gen_tdest_routing.busy_r[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^busy_r_reg[2]\,
      I1 => \gen_tdest_routing.busy_r_reg[0]_4\,
      I2 => p_0_out,
      O => busy_ns_1
    );
\gen_tdest_routing.busy_r[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^busy_r_reg[1]\,
      I1 => \gen_tdest_routing.busy_r_reg[0]_1\,
      I2 => p_0_out,
      O => busy_ns_2
    );
\gen_tdest_routing.busy_r[0]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^gen_tdest_routing.busy_r_reg[0]\,
      I1 => \gen_tdest_routing.busy_r_reg[0]_2\,
      I2 => p_0_out,
      O => busy_ns_3
    );
m_axis_tvalid_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^busy_r_reg[1]\,
      I1 => Q(1),
      I2 => \^gen_tdest_routing.busy_r_reg[0]\,
      I3 => Q(0),
      I4 => Q(4),
      I5 => \^busy_r_reg[4]\,
      O => \^arb_gnt_r_reg[0]_1\
    );
\num_active_trans[3]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF57FF00000000"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^busy_r_reg[2]\,
      I2 => Q(2),
      I3 => m_axis_tready,
      I4 => count_is_max_reg_0,
      I5 => decr_trans0,
      O => \count_is_max1__1_1\
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E00000"
    )
        port map (
      I0 => \^busy_r_reg[2]\,
      I1 => Q(2),
      I2 => m_axis_tready,
      I3 => count_is_max_reg_0,
      I4 => s_axi_arvalid,
      O => s_axi_arready
    );
s_axi_awready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E00000"
    )
        port map (
      I0 => \^busy_r_reg[1]\,
      I1 => Q(1),
      I2 => m_axis_tready,
      I3 => count_is_max,
      I4 => s_axi_awvalid,
      O => s_axi_awready
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E00000"
    )
        port map (
      I0 => \^busy_r_reg[4]\,
      I1 => Q(4),
      I2 => m_axis_tready,
      I3 => count_is_zero,
      I4 => s_axi_wvalid,
      O => s_axi_wready
    );
\s_ready_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFAE"
    )
        port map (
      I0 => areset_r_reg,
      I1 => \^fifo_index1__1\,
      I2 => \s_ready3__3\,
      I3 => m_axi_bready,
      O => s_ready_reg
    );
s_ready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E000E000E000"
    )
        port map (
      I0 => \^gen_tdest_routing.busy_r_reg[0]\,
      I1 => Q(0),
      I2 => m_axis_tready,
      I3 => m_int_tvalid(0),
      I4 => m_axi_bready,
      I5 => m_axi_bvalid,
      O => \^fifo_index1__1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_arb_responder is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    decr_trans02_out : out STD_LOGIC;
    \count_is_max1__1\ : out STD_LOGIC;
    \num_active_trans_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    incr_trans05_out : out STD_LOGIC;
    \count_is_max1__1_0\ : out STD_LOGIC;
    \arb_gnt_r_reg[4]\ : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    \num_active_trans_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    count_is_max_reg : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    count_is_max : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    arb_gnt_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC;
    \arb_gnt_r_reg[1]\ : in STD_LOGIC;
    m_axis_tlast : in STD_LOGIC;
    o_i : in STD_LOGIC;
    arb_busy_r : in STD_LOGIC;
    decr_trans0 : in STD_LOGIC;
    count_is_max_reg_0 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    count_is_zero : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_arb_responder : entity is "axis_switch_v1_1_9_axisc_arb_responder";
end axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_arb_responder;

architecture STRUCTURE of axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_arb_responder is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \arb_gnt_r[4]_i_7_n_0\ : STD_LOGIC;
  signal \^decr_trans02_out\ : STD_LOGIC;
  signal \^incr_trans05_out\ : STD_LOGIC;
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  decr_trans02_out <= \^decr_trans02_out\;
  incr_trans05_out <= \^incr_trans05_out\;
\arb_gnt_r[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0000000FFFFFFFF"
    )
        port map (
      I0 => \arb_gnt_r_reg[1]\,
      I1 => \arb_gnt_r[4]_i_7_n_0\,
      I2 => m_axis_tready,
      I3 => m_axis_tlast,
      I4 => o_i,
      I5 => arb_busy_r,
      O => \arb_gnt_r_reg[4]\
    );
\arb_gnt_r[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(3),
      I1 => arb_gnt_i(2),
      I2 => \^q\(2),
      I3 => arb_gnt_i(1),
      O => \arb_gnt_r[4]_i_7_n_0\
    );
\busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
\busy_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => SR(0)
    );
\busy_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => SR(0)
    );
\busy_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => SR(0)
    );
\busy_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(4),
      Q => \^q\(4),
      R => SR(0)
    );
count_is_max_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBFFFFF"
    )
        port map (
      I0 => count_is_max_reg_0,
      I1 => m_axis_tready,
      I2 => \^q\(2),
      I3 => arb_gnt_i(1),
      I4 => s_axi_arvalid,
      O => count_is_max_reg
    );
m_axi_rready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => m_axis_tready,
      I2 => \^q\(3),
      I3 => arb_gnt_i(2),
      O => m_axi_rready
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => o_i,
      I1 => \^q\(3),
      I2 => arb_gnt_i(2),
      I3 => \^q\(2),
      I4 => arb_gnt_i(1),
      I5 => \arb_gnt_r_reg[1]\,
      O => m_axis_tvalid
    );
\num_active_trans[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFFF20202000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => count_is_max,
      I2 => m_axis_tready,
      I3 => \^q\(1),
      I4 => arb_gnt_i(0),
      I5 => \^decr_trans02_out\,
      O => E(0)
    );
\num_active_trans[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA6AAAAAAAA"
    )
        port map (
      I0 => \^incr_trans05_out\,
      I1 => s_axis_tvalid,
      I2 => s_axis_tid(2),
      I3 => s_axis_tid(0),
      I4 => s_axis_tid(1),
      I5 => s_axi_bready,
      O => \num_active_trans_reg[0]\(0)
    );
\num_active_trans[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A9A9AAAAAAAAAAA"
    )
        port map (
      I0 => decr_trans0,
      I1 => count_is_max_reg_0,
      I2 => m_axis_tready,
      I3 => \^q\(2),
      I4 => arb_gnt_i(1),
      I5 => s_axi_arvalid,
      O => \num_active_trans_reg[0]_0\(0)
    );
\num_active_trans[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => count_is_max,
      I2 => m_axis_tready,
      I3 => \^q\(1),
      I4 => arb_gnt_i(0),
      O => \^incr_trans05_out\
    );
\num_active_trans[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080008000000"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => s_axi_wvalid,
      I2 => count_is_zero,
      I3 => m_axis_tready,
      I4 => \^q\(4),
      I5 => arb_gnt_i(3),
      O => \^decr_trans02_out\
    );
\num_active_trans[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA02AAAAAAAAAA"
    )
        port map (
      I0 => \^decr_trans02_out\,
      I1 => arb_gnt_i(0),
      I2 => \^q\(1),
      I3 => m_axis_tready,
      I4 => count_is_max,
      I5 => s_axi_awvalid,
      O => \count_is_max1__1\
    );
\num_active_trans[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => s_axi_bready,
      I1 => s_axis_tid(1),
      I2 => s_axis_tid(0),
      I3 => s_axis_tid(2),
      I4 => s_axis_tvalid,
      I5 => \^incr_trans05_out\,
      O => \count_is_max1__1_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder is
  port (
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    areset_r_reg : in STD_LOGIC;
    busy_ns : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder : entity is "axis_switch_v1_1_9_axisc_decoder";
end axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder;

architecture STRUCTURE of axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder is
begin
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => busy_ns,
      Q => \gen_tdest_routing.busy_r_reg[0]_0\,
      R => areset_r_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_2 is
  port (
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    areset_r_reg : in STD_LOGIC;
    busy_ns : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_2 : entity is "axis_switch_v1_1_9_axisc_decoder";
end axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_2;

architecture STRUCTURE of axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_2 is
begin
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => busy_ns,
      Q => \gen_tdest_routing.busy_r_reg[0]_0\,
      R => areset_r_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_3 is
  port (
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    areset_r_reg : in STD_LOGIC;
    busy_ns : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_3 : entity is "axis_switch_v1_1_9_axisc_decoder";
end axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_3;

architecture STRUCTURE of axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_3 is
begin
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => busy_ns,
      Q => \gen_tdest_routing.busy_r_reg[0]_0\,
      R => areset_r_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_4 is
  port (
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    areset_r_reg : in STD_LOGIC;
    busy_ns : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_4 : entity is "axis_switch_v1_1_9_axisc_decoder";
end axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_4;

architecture STRUCTURE of axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_4 is
begin
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => busy_ns,
      Q => \gen_tdest_routing.busy_r_reg[0]_0\,
      R => areset_r_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_5 is
  port (
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    areset_r_reg : in STD_LOGIC;
    busy_ns : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_5 : entity is "axis_switch_v1_1_9_axisc_decoder";
end axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_5;

architecture STRUCTURE of axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_5 is
begin
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => busy_ns,
      Q => \gen_tdest_routing.busy_r_reg[0]_0\,
      R => areset_r_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder__parameterized0\ is
  port (
    \gen_tdest_routing.decode_err_r_reg_0\ : out STD_LOGIC;
    areset_r1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder__parameterized0\ : entity is "axis_switch_v1_1_9_axisc_decoder";
end \axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder__parameterized0\;

architecture STRUCTURE of \axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder__parameterized0\ is
  signal decode_err_r0 : STD_LOGIC;
  signal \^gen_tdest_routing.decode_err_r_reg_0\ : STD_LOGIC;
begin
  \gen_tdest_routing.decode_err_r_reg_0\ <= \^gen_tdest_routing.decode_err_r_reg_0\;
\gen_tdest_routing.decode_err_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E000"
    )
        port map (
      I0 => s_axis_tid(1),
      I1 => s_axis_tid(0),
      I2 => s_axis_tid(2),
      I3 => s_axis_tvalid,
      I4 => \^gen_tdest_routing.decode_err_r_reg_0\,
      O => decode_err_r0
    );
\gen_tdest_routing.decode_err_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => decode_err_r0,
      Q => \^gen_tdest_routing.decode_err_r_reg_0\,
      R => areset_r1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch__parameterized0\ is
  port (
    \gen_tdest_routing.decode_err_r_reg\ : out STD_LOGIC;
    areset_r1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch__parameterized0\ : entity is "axis_switch_v1_1_9_axis_switch";
end \axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch__parameterized0\;

architecture STRUCTURE of \axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch__parameterized0\ is
begin
\gen_decoder[0].axisc_decoder_0\: entity work.\axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder__parameterized0\
     port map (
      aclk => aclk,
      areset_r1 => areset_r1,
      \gen_tdest_routing.decode_err_r_reg_0\ => \gen_tdest_routing.decode_err_r_reg\,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch_arbiter is
  port (
    arb_busy_r : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    arb_sel_i : out STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_gnt_i : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_tdest_routing.busy_r_reg[0]\ : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    busy_ns : out STD_LOGIC;
    busy_ns_0 : out STD_LOGIC;
    busy_ns_1 : out STD_LOGIC;
    busy_ns_2 : out STD_LOGIC;
    busy_ns_3 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \arb_gnt_r_reg[0]\ : out STD_LOGIC;
    \count_is_max1__1_1\ : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    \fifo_index1__1\ : out STD_LOGIC;
    p_0_in_4 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \m_axis_tkeep[1]\ : out STD_LOGIC;
    \m_axis_tkeep[2]\ : out STD_LOGIC;
    \m_axis_tkeep[3]\ : out STD_LOGIC;
    \m_axis_tkeep[5]\ : out STD_LOGIC;
    \m_axis_tkeep[6]\ : out STD_LOGIC;
    s_ready_reg : out STD_LOGIC;
    areset_r_reg : in STD_LOGIC;
    aclk : in STD_LOGIC;
    count_is_max_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_int_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_busy_r_reg : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_0\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_1\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_2\ : in STD_LOGIC;
    count_is_max : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_tready : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_3\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_4\ : in STD_LOGIC;
    o_i : in STD_LOGIC;
    m_axis_tlast : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    count_is_max_reg_0 : in STD_LOGIC;
    decr_trans0 : in STD_LOGIC;
    count_is_zero : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_bready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_int_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_ruser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_ready3__3\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch_arbiter : entity is "axis_switch_v1_1_9_axis_switch_arbiter";
end axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch_arbiter;

architecture STRUCTURE of axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch_arbiter is
begin
\gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1\: entity work.axi_mm2s_mapper_0_axis_switch_v1_1_9_arb_rr
     port map (
      D(4 downto 0) => D(4 downto 0),
      Q(4 downto 0) => Q(4 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      arb_busy_r_reg_0 => arb_busy_r_reg,
      \arb_gnt_r_reg[0]_0\ => arb_busy_r,
      \arb_gnt_r_reg[0]_1\ => \arb_gnt_r_reg[0]\,
      arb_sel_i(0) => arb_sel_i(2),
      \arb_sel_r_reg[0]_0\ => arb_sel_i(0),
      \arb_sel_r_reg[1]_0\ => arb_sel_i(1),
      areset_r_reg => areset_r_reg,
      busy_ns => busy_ns,
      busy_ns_0 => busy_ns_0,
      busy_ns_1 => busy_ns_1,
      busy_ns_2 => busy_ns_2,
      busy_ns_3 => busy_ns_3,
      \busy_r_reg[1]\ => arb_gnt_i(0),
      \busy_r_reg[2]\ => arb_gnt_i(1),
      \busy_r_reg[3]\ => arb_gnt_i(2),
      \busy_r_reg[4]\ => arb_gnt_i(3),
      count_is_max => count_is_max,
      \count_is_max1__1_1\ => \count_is_max1__1_1\,
      count_is_max_reg(1 downto 0) => count_is_max_reg(1 downto 0),
      count_is_max_reg_0 => count_is_max_reg_0,
      count_is_zero => count_is_zero,
      decr_trans0 => decr_trans0,
      \fifo_index1__1\ => \fifo_index1__1\,
      \gen_tdest_routing.busy_r_reg[0]\ => \gen_tdest_routing.busy_r_reg[0]\,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_tdest_routing.busy_r_reg[0]_0\,
      \gen_tdest_routing.busy_r_reg[0]_1\ => \gen_tdest_routing.busy_r_reg[0]_1\,
      \gen_tdest_routing.busy_r_reg[0]_2\ => \gen_tdest_routing.busy_r_reg[0]_2\,
      \gen_tdest_routing.busy_r_reg[0]_3\ => \gen_tdest_routing.busy_r_reg[0]_3\,
      \gen_tdest_routing.busy_r_reg[0]_4\ => \gen_tdest_routing.busy_r_reg[0]_4\,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(3 downto 0) => m_axi_ruser(3 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      \m_axis_tkeep[1]\ => \m_axis_tkeep[1]\,
      \m_axis_tkeep[2]\ => \m_axis_tkeep[2]\,
      \m_axis_tkeep[3]\ => \m_axis_tkeep[3]\,
      \m_axis_tkeep[5]\ => \m_axis_tkeep[5]\,
      \m_axis_tkeep[6]\ => \m_axis_tkeep[6]\,
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_int_tdata(6 downto 0) => m_int_tdata(6 downto 0),
      m_int_tvalid(0) => m_int_tvalid(0),
      o_i => o_i,
      p_0_in => p_0_in,
      p_0_in_4(63 downto 0) => p_0_in_4(63 downto 0),
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(3 downto 0) => s_axi_aruser(3 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awuser(3 downto 0) => s_axi_awuser(3 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      \s_ready3__3\ => \s_ready3__3\,
      s_ready_reg => s_ready_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_transfer_mux is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_i : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    decr_trans02_out : out STD_LOGIC;
    \count_is_max1__1\ : out STD_LOGIC;
    \num_active_trans_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    incr_trans05_out : out STD_LOGIC;
    \count_is_max1__1_0\ : out STD_LOGIC;
    \arb_gnt_r_reg[4]\ : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    \num_active_trans_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    count_is_max_reg : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    arb_sel_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \arb_sel_r_reg[1]\ : in STD_LOGIC;
    \arb_sel_r_reg[1]_0\ : in STD_LOGIC;
    \arb_sel_r_reg[1]_1\ : in STD_LOGIC;
    \arb_sel_r_reg[1]_2\ : in STD_LOGIC;
    \arb_sel_r_reg[1]_3\ : in STD_LOGIC;
    p_0_in_0 : in STD_LOGIC;
    m_int_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    count_is_max : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    arb_gnt_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC;
    \arb_gnt_r_reg[1]\ : in STD_LOGIC;
    arb_busy_r : in STD_LOGIC;
    decr_trans0 : in STD_LOGIC;
    count_is_max_reg_0 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    count_is_zero : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_transfer_mux : entity is "axis_switch_v1_1_9_axisc_transfer_mux";
end axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_transfer_mux;

architecture STRUCTURE of axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_transfer_mux is
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal \^o_i\ : STD_LOGIC;
begin
  m_axis_tlast <= \^m_axis_tlast\;
  o_i <= \^o_i\;
\gen_tdest_router.axisc_arb_responder\: entity work.axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_arb_responder
     port map (
      D(4 downto 0) => D(4 downto 0),
      E(0) => E(0),
      Q(4 downto 0) => Q(4 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      arb_busy_r => arb_busy_r,
      arb_gnt_i(3 downto 0) => arb_gnt_i(3 downto 0),
      \arb_gnt_r_reg[1]\ => \arb_gnt_r_reg[1]\,
      \arb_gnt_r_reg[4]\ => \arb_gnt_r_reg[4]\,
      count_is_max => count_is_max,
      \count_is_max1__1\ => \count_is_max1__1\,
      \count_is_max1__1_0\ => \count_is_max1__1_0\,
      count_is_max_reg => count_is_max_reg,
      count_is_max_reg_0 => count_is_max_reg_0,
      count_is_zero => count_is_zero,
      decr_trans0 => decr_trans0,
      decr_trans02_out => decr_trans02_out,
      incr_trans05_out => incr_trans05_out,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      m_axis_tlast => \^m_axis_tlast\,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      \num_active_trans_reg[0]\(0) => \num_active_trans_reg[0]\(0),
      \num_active_trans_reg[0]_0\(0) => \num_active_trans_reg[0]_0\(0),
      o_i => \^o_i\,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_wlast => s_axi_wlast,
      s_axi_wvalid => s_axi_wvalid,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
\gen_tdest_router.mux_enc_0\: entity work.axi_mm2s_mapper_0_axis_infrastructure_v1_1_0_mux_enc
     port map (
      arb_sel_i(2 downto 0) => arb_sel_i(2 downto 0),
      \arb_sel_r_reg[1]\ => \arb_sel_r_reg[1]\,
      \arb_sel_r_reg[1]_0\ => \arb_sel_r_reg[1]_0\,
      \arb_sel_r_reg[1]_1\ => \arb_sel_r_reg[1]_1\,
      \arb_sel_r_reg[1]_2\ => \arb_sel_r_reg[1]_2\,
      \arb_sel_r_reg[1]_3\ => \arb_sel_r_reg[1]_3\,
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tid(2 downto 0) => m_axis_tid(2 downto 0),
      m_axis_tkeep(7 downto 0) => m_axis_tkeep(7 downto 0),
      m_axis_tlast => \^m_axis_tlast\,
      p_0_in(63 downto 0) => p_0_in(63 downto 0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wuser(3 downto 0) => s_axi_wuser(3 downto 0)
    );
\gen_tdest_router.mux_enc_1\: entity work.\axi_mm2s_mapper_0_axis_infrastructure_v1_1_0_mux_enc__parameterized0\
     port map (
      arb_sel_i(0) => arb_sel_i(2),
      m_int_tvalid(0) => m_int_tvalid(0),
      o_i => \^o_i\,
      p_0_in_0 => p_0_in_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    areset_r1 : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    decr_trans02_out : out STD_LOGIC;
    \count_is_max1__1\ : out STD_LOGIC;
    \num_active_trans_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    incr_trans05_out : out STD_LOGIC;
    \count_is_max1__1_0\ : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    \num_active_trans_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_is_max1__1_1\ : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    count_is_max_reg : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    \fifo_index1__1\ : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_ready_reg : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_int_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    count_is_max_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    count_is_max : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC;
    decr_trans0 : in STD_LOGIC;
    count_is_max_reg_1 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    count_is_zero : in STD_LOGIC;
    m_axi_bready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_int_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_ruser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_ready3__3\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch : entity is "axis_switch_v1_1_9_axis_switch";
end axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch;

architecture STRUCTURE of axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal arb_gnt_i : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal arb_sel_i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^areset_r1\ : STD_LOGIC;
  signal busy_ns : STD_LOGIC;
  signal busy_ns_0 : STD_LOGIC;
  signal busy_ns_1 : STD_LOGIC;
  signal busy_ns_2 : STD_LOGIC;
  signal busy_ns_3 : STD_LOGIC;
  signal busy_r : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \gen_decoder[0].axisc_decoder_0_n_0\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_0\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_0\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_0\ : STD_LOGIC;
  signal \gen_decoder[4].axisc_decoder_0_n_0\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_16\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_17\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_18\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_19\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_20\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_21\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_22\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_91\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_92\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_93\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_94\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_95\ : STD_LOGIC;
  signal \gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1/arb_busy_r\ : STD_LOGIC;
  signal \gen_tdest_router.mux_enc_0/p_0_in\ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal \gen_tdest_router.mux_enc_1/o_i\ : STD_LOGIC;
  signal \gen_tdest_router.mux_enc_1/p_0_in\ : STD_LOGIC;
  signal \gen_transfer_mux[0].axisc_transfer_mux_0_n_88\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
  areset_r1 <= \^areset_r1\;
  m_axis_tlast <= \^m_axis_tlast\;
areset_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => SR(0),
      Q => \^areset_r1\,
      R => '0'
    );
\gen_decoder[0].axisc_decoder_0\: entity work.axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder
     port map (
      aclk => aclk,
      areset_r_reg => \^areset_r1\,
      busy_ns => busy_ns,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[0].axisc_decoder_0_n_0\
    );
\gen_decoder[1].axisc_decoder_0\: entity work.axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_2
     port map (
      aclk => aclk,
      areset_r_reg => \^areset_r1\,
      busy_ns => busy_ns_0,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[1].axisc_decoder_0_n_0\
    );
\gen_decoder[2].axisc_decoder_0\: entity work.axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_3
     port map (
      aclk => aclk,
      areset_r_reg => \^areset_r1\,
      busy_ns => busy_ns_1,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[2].axisc_decoder_0_n_0\
    );
\gen_decoder[3].axisc_decoder_0\: entity work.axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_4
     port map (
      aclk => aclk,
      areset_r_reg => \^areset_r1\,
      busy_ns => busy_ns_2,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[3].axisc_decoder_0_n_0\
    );
\gen_decoder[4].axisc_decoder_0\: entity work.axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_5
     port map (
      aclk => aclk,
      areset_r_reg => \^areset_r1\,
      busy_ns => busy_ns_3,
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[4].axisc_decoder_0_n_0\
    );
\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter\: entity work.axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch_arbiter
     port map (
      D(4) => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_17\,
      D(3) => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_18\,
      D(2) => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_19\,
      D(1) => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_20\,
      D(0) => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_21\,
      Q(4 downto 1) => busy_r(4 downto 1),
      Q(0) => \^q\(0),
      SR(0) => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_16\,
      aclk => aclk,
      arb_busy_r => \gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1/arb_busy_r\,
      arb_busy_r_reg => \gen_transfer_mux[0].axisc_transfer_mux_0_n_88\,
      arb_gnt_i(3 downto 0) => arb_gnt_i(4 downto 1),
      \arb_gnt_r_reg[0]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_22\,
      arb_sel_i(2 downto 0) => arb_sel_i(2 downto 0),
      areset_r_reg => \^areset_r1\,
      busy_ns => busy_ns_3,
      busy_ns_0 => busy_ns_2,
      busy_ns_1 => busy_ns_1,
      busy_ns_2 => busy_ns_0,
      busy_ns_3 => busy_ns,
      count_is_max => count_is_max,
      \count_is_max1__1_1\ => \count_is_max1__1_1\,
      count_is_max_reg(1 downto 0) => count_is_max_reg_0(1 downto 0),
      count_is_max_reg_0 => count_is_max_reg_1,
      count_is_zero => count_is_zero,
      decr_trans0 => decr_trans0,
      \fifo_index1__1\ => \fifo_index1__1\,
      \gen_tdest_routing.busy_r_reg[0]\ => \gen_tdest_routing.busy_r_reg[0]\(0),
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[3].axisc_decoder_0_n_0\,
      \gen_tdest_routing.busy_r_reg[0]_1\ => \gen_decoder[1].axisc_decoder_0_n_0\,
      \gen_tdest_routing.busy_r_reg[0]_2\ => \gen_decoder[0].axisc_decoder_0_n_0\,
      \gen_tdest_routing.busy_r_reg[0]_3\ => \gen_decoder[4].axisc_decoder_0_n_0\,
      \gen_tdest_routing.busy_r_reg[0]_4\ => \gen_decoder[2].axisc_decoder_0_n_0\,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(3 downto 0) => m_axi_ruser(3 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      \m_axis_tkeep[1]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_91\,
      \m_axis_tkeep[2]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_92\,
      \m_axis_tkeep[3]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_93\,
      \m_axis_tkeep[5]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_94\,
      \m_axis_tkeep[6]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_95\,
      m_axis_tlast => \^m_axis_tlast\,
      m_axis_tready => m_axis_tready,
      m_int_tdata(6 downto 0) => m_int_tdata(6 downto 0),
      m_int_tvalid(0) => m_int_tvalid(0),
      o_i => \gen_tdest_router.mux_enc_1/o_i\,
      p_0_in => \gen_tdest_router.mux_enc_1/p_0_in\,
      p_0_in_4(63) => \gen_tdest_router.mux_enc_0/p_0_in\(71),
      p_0_in_4(62) => \gen_tdest_router.mux_enc_0/p_0_in\(68),
      p_0_in_4(61 downto 0) => \gen_tdest_router.mux_enc_0/p_0_in\(61 downto 0),
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(3 downto 0) => s_axi_aruser(3 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awuser(3 downto 0) => s_axi_awuser(3 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      \s_ready3__3\ => \s_ready3__3\,
      s_ready_reg => s_ready_reg
    );
\gen_transfer_mux[0].axisc_transfer_mux_0\: entity work.axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_transfer_mux
     port map (
      D(4) => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_17\,
      D(3) => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_18\,
      D(2) => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_19\,
      D(1) => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_20\,
      D(0) => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_21\,
      E(0) => E(0),
      Q(4 downto 1) => busy_r(4 downto 1),
      Q(0) => \^q\(0),
      SR(0) => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_16\,
      aclk => aclk,
      arb_busy_r => \gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1/arb_busy_r\,
      arb_gnt_i(3 downto 0) => arb_gnt_i(4 downto 1),
      \arb_gnt_r_reg[1]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_22\,
      \arb_gnt_r_reg[4]\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_88\,
      arb_sel_i(2 downto 0) => arb_sel_i(2 downto 0),
      \arb_sel_r_reg[1]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_91\,
      \arb_sel_r_reg[1]_0\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_92\,
      \arb_sel_r_reg[1]_1\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_93\,
      \arb_sel_r_reg[1]_2\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_94\,
      \arb_sel_r_reg[1]_3\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_95\,
      count_is_max => count_is_max,
      \count_is_max1__1\ => \count_is_max1__1\,
      \count_is_max1__1_0\ => \count_is_max1__1_0\,
      count_is_max_reg => count_is_max_reg,
      count_is_max_reg_0 => count_is_max_reg_1,
      count_is_zero => count_is_zero,
      decr_trans0 => decr_trans0,
      decr_trans02_out => decr_trans02_out,
      incr_trans05_out => incr_trans05_out,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tid(2 downto 0) => m_axis_tid(2 downto 0),
      m_axis_tkeep(7 downto 0) => m_axis_tkeep(7 downto 0),
      m_axis_tlast => \^m_axis_tlast\,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      m_int_tvalid(0) => m_int_tvalid(1),
      \num_active_trans_reg[0]\(0) => \num_active_trans_reg[0]\(0),
      \num_active_trans_reg[0]_0\(0) => \num_active_trans_reg[0]_0\(0),
      o_i => \gen_tdest_router.mux_enc_1/o_i\,
      p_0_in(63) => \gen_tdest_router.mux_enc_0/p_0_in\(71),
      p_0_in(62) => \gen_tdest_router.mux_enc_0/p_0_in\(68),
      p_0_in(61 downto 0) => \gen_tdest_router.mux_enc_0/p_0_in\(61 downto 0),
      p_0_in_0 => \gen_tdest_router.mux_enc_1/p_0_in\,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wuser(3 downto 0) => s_axi_wuser(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 64;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 3;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 4;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 4;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 4;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 4;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 0;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 4;
  attribute C_FAMILY : string;
  attribute C_FAMILY of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is "kintex7";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is "yes";
  attribute G_AXI_ARADDR_INDEX : integer;
  attribute G_AXI_ARADDR_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 0;
  attribute G_AXI_ARADDR_WIDTH : integer;
  attribute G_AXI_ARADDR_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 32;
  attribute G_AXI_ARBURST_INDEX : integer;
  attribute G_AXI_ARBURST_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 38;
  attribute G_AXI_ARBURST_WIDTH : integer;
  attribute G_AXI_ARBURST_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 2;
  attribute G_AXI_ARCACHE_INDEX : integer;
  attribute G_AXI_ARCACHE_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 40;
  attribute G_AXI_ARCACHE_WIDTH : integer;
  attribute G_AXI_ARCACHE_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 4;
  attribute G_AXI_ARID_INDEX : integer;
  attribute G_AXI_ARID_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 53;
  attribute G_AXI_ARID_WIDTH : integer;
  attribute G_AXI_ARID_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 1;
  attribute G_AXI_ARLEN_INDEX : integer;
  attribute G_AXI_ARLEN_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 44;
  attribute G_AXI_ARLEN_WIDTH : integer;
  attribute G_AXI_ARLEN_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 8;
  attribute G_AXI_ARLOCK_INDEX : integer;
  attribute G_AXI_ARLOCK_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 52;
  attribute G_AXI_ARLOCK_WIDTH : integer;
  attribute G_AXI_ARLOCK_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 1;
  attribute G_AXI_ARPAYLOAD_WIDTH : integer;
  attribute G_AXI_ARPAYLOAD_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 62;
  attribute G_AXI_ARPROT_INDEX : integer;
  attribute G_AXI_ARPROT_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 32;
  attribute G_AXI_ARPROT_WIDTH : integer;
  attribute G_AXI_ARPROT_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 3;
  attribute G_AXI_ARQOS_INDEX : integer;
  attribute G_AXI_ARQOS_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 54;
  attribute G_AXI_ARQOS_WIDTH : integer;
  attribute G_AXI_ARQOS_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 4;
  attribute G_AXI_ARREGION_INDEX : integer;
  attribute G_AXI_ARREGION_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 58;
  attribute G_AXI_ARREGION_WIDTH : integer;
  attribute G_AXI_ARREGION_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 0;
  attribute G_AXI_ARSIZE_INDEX : integer;
  attribute G_AXI_ARSIZE_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 35;
  attribute G_AXI_ARSIZE_WIDTH : integer;
  attribute G_AXI_ARSIZE_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 3;
  attribute G_AXI_ARUSER_INDEX : integer;
  attribute G_AXI_ARUSER_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 58;
  attribute G_AXI_ARUSER_WIDTH : integer;
  attribute G_AXI_ARUSER_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 4;
  attribute G_AXI_AWADDR_INDEX : integer;
  attribute G_AXI_AWADDR_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 0;
  attribute G_AXI_AWADDR_WIDTH : integer;
  attribute G_AXI_AWADDR_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 32;
  attribute G_AXI_AWBURST_INDEX : integer;
  attribute G_AXI_AWBURST_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 38;
  attribute G_AXI_AWBURST_WIDTH : integer;
  attribute G_AXI_AWBURST_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 2;
  attribute G_AXI_AWCACHE_INDEX : integer;
  attribute G_AXI_AWCACHE_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 40;
  attribute G_AXI_AWCACHE_WIDTH : integer;
  attribute G_AXI_AWCACHE_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 4;
  attribute G_AXI_AWID_INDEX : integer;
  attribute G_AXI_AWID_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 53;
  attribute G_AXI_AWID_WIDTH : integer;
  attribute G_AXI_AWID_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 1;
  attribute G_AXI_AWLEN_INDEX : integer;
  attribute G_AXI_AWLEN_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 44;
  attribute G_AXI_AWLEN_WIDTH : integer;
  attribute G_AXI_AWLEN_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 8;
  attribute G_AXI_AWLOCK_INDEX : integer;
  attribute G_AXI_AWLOCK_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 52;
  attribute G_AXI_AWLOCK_WIDTH : integer;
  attribute G_AXI_AWLOCK_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 1;
  attribute G_AXI_AWPAYLOAD_WIDTH : integer;
  attribute G_AXI_AWPAYLOAD_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 62;
  attribute G_AXI_AWPROT_INDEX : integer;
  attribute G_AXI_AWPROT_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 32;
  attribute G_AXI_AWPROT_WIDTH : integer;
  attribute G_AXI_AWPROT_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 3;
  attribute G_AXI_AWQOS_INDEX : integer;
  attribute G_AXI_AWQOS_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 54;
  attribute G_AXI_AWQOS_WIDTH : integer;
  attribute G_AXI_AWQOS_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 4;
  attribute G_AXI_AWREGION_INDEX : integer;
  attribute G_AXI_AWREGION_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 58;
  attribute G_AXI_AWREGION_WIDTH : integer;
  attribute G_AXI_AWREGION_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 0;
  attribute G_AXI_AWSIZE_INDEX : integer;
  attribute G_AXI_AWSIZE_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 35;
  attribute G_AXI_AWSIZE_WIDTH : integer;
  attribute G_AXI_AWSIZE_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 3;
  attribute G_AXI_AWUSER_INDEX : integer;
  attribute G_AXI_AWUSER_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 58;
  attribute G_AXI_AWUSER_WIDTH : integer;
  attribute G_AXI_AWUSER_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 4;
  attribute G_AXI_BID_INDEX : integer;
  attribute G_AXI_BID_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 2;
  attribute G_AXI_BID_WIDTH : integer;
  attribute G_AXI_BID_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 1;
  attribute G_AXI_BPAYLOAD_WIDTH : integer;
  attribute G_AXI_BPAYLOAD_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 7;
  attribute G_AXI_BRESP_INDEX : integer;
  attribute G_AXI_BRESP_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 0;
  attribute G_AXI_BRESP_WIDTH : integer;
  attribute G_AXI_BRESP_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 2;
  attribute G_AXI_BUSER_INDEX : integer;
  attribute G_AXI_BUSER_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 3;
  attribute G_AXI_BUSER_WIDTH : integer;
  attribute G_AXI_BUSER_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 4;
  attribute G_AXI_RDATA_INDEX : integer;
  attribute G_AXI_RDATA_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 0;
  attribute G_AXI_RDATA_WIDTH : integer;
  attribute G_AXI_RDATA_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 32;
  attribute G_AXI_RID_INDEX : integer;
  attribute G_AXI_RID_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 35;
  attribute G_AXI_RID_WIDTH : integer;
  attribute G_AXI_RID_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 1;
  attribute G_AXI_RLAST_INDEX : integer;
  attribute G_AXI_RLAST_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 34;
  attribute G_AXI_RLAST_WIDTH : integer;
  attribute G_AXI_RLAST_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 1;
  attribute G_AXI_RPAYLOAD_WIDTH : integer;
  attribute G_AXI_RPAYLOAD_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 40;
  attribute G_AXI_RRESP_INDEX : integer;
  attribute G_AXI_RRESP_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 32;
  attribute G_AXI_RRESP_WIDTH : integer;
  attribute G_AXI_RRESP_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 2;
  attribute G_AXI_RUSER_INDEX : integer;
  attribute G_AXI_RUSER_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 36;
  attribute G_AXI_RUSER_WIDTH : integer;
  attribute G_AXI_RUSER_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 4;
  attribute G_AXI_WDATA_INDEX : integer;
  attribute G_AXI_WDATA_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 0;
  attribute G_AXI_WDATA_WIDTH : integer;
  attribute G_AXI_WDATA_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 32;
  attribute G_AXI_WID_INDEX : integer;
  attribute G_AXI_WID_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 37;
  attribute G_AXI_WID_WIDTH : integer;
  attribute G_AXI_WID_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 0;
  attribute G_AXI_WLAST_INDEX : integer;
  attribute G_AXI_WLAST_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 36;
  attribute G_AXI_WLAST_WIDTH : integer;
  attribute G_AXI_WLAST_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 1;
  attribute G_AXI_WPAYLOAD_WIDTH : integer;
  attribute G_AXI_WPAYLOAD_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 41;
  attribute G_AXI_WSTRB_INDEX : integer;
  attribute G_AXI_WSTRB_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 32;
  attribute G_AXI_WSTRB_WIDTH : integer;
  attribute G_AXI_WSTRB_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 4;
  attribute G_AXI_WUSER_INDEX : integer;
  attribute G_AXI_WUSER_INDEX of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 37;
  attribute G_AXI_WUSER_WIDTH : integer;
  attribute G_AXI_WUSER_WIDTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 4;
  attribute LP_AR_TDEST : string;
  attribute LP_AR_TDEST of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is "3'b010";
  attribute LP_AW_TDEST : string;
  attribute LP_AW_TDEST of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is "3'b001";
  attribute LP_B_TDEST : string;
  attribute LP_B_TDEST of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is "3'b000";
  attribute LP_LOG_M_AX_FIFO_DEPTH : integer;
  attribute LP_LOG_M_AX_FIFO_DEPTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 4;
  attribute LP_M_AX_FIFO_DEPTH : integer;
  attribute LP_M_AX_FIFO_DEPTH of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is 16;
  attribute LP_R_TDEST : string;
  attribute LP_R_TDEST of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is "3'b011";
  attribute LP_W_TDEST : string;
  attribute LP_W_TDEST of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is "3'b100";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top : entity is "axi_mm2s_mapper_v1_1_8_top";
end axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top;

architecture STRUCTURE of axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top is
  signal \<const0>\ : STD_LOGIC;
  signal arb_gnt_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal areset_r1 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal count_is_max : STD_LOGIC;
  signal \count_is_max1__1\ : STD_LOGIC;
  signal \count_is_max1__1_0\ : STD_LOGIC;
  signal \count_is_max1__1_1\ : STD_LOGIC;
  signal count_is_zero : STD_LOGIC;
  signal decr_trans0 : STD_LOGIC;
  signal decr_trans02_out : STD_LOGIC;
  signal \fifo_index1__1\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0/m_tready_from_decoded_slave0__1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_transfer_mux[0].axisc_transfer_mux_0/busy_r\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal incr_trans05_out : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal m_int_tdata : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m_int_tvalid : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \m_int_tvalid__0\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal push : STD_LOGIC;
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s_axis_tready_INST_0_i_2_n_0 : STD_LOGIC;
  signal \s_ready3__3\ : STD_LOGIC;
  signal u_axis_switch_v1_1_9_axis_switch_1x5_n_0 : STD_LOGIC;
  signal u_axis_switch_v1_1_9_axis_switch_5x1_n_78 : STD_LOGIC;
  signal u_axis_switch_v1_1_9_axis_switch_5x1_n_82 : STD_LOGIC;
  signal u_axis_switch_v1_1_9_axis_switch_5x1_n_87 : STD_LOGIC;
  signal u_axis_switch_v1_1_9_axis_switch_5x1_n_90 : STD_LOGIC;
  signal u_axis_switch_v1_1_9_axis_switch_5x1_n_94 : STD_LOGIC;
  signal u_transaction_counter_ar_to_r_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m_axi_wvalid_INST_0 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of s_axi_bvalid_INST_0 : label is "soft_lutpair26";
begin
  \^s_axis_tdata\(61 downto 0) <= s_axis_tdata(61 downto 0);
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_bready <= \^m_axi_bready\;
  m_axi_wdata(31 downto 0) <= \^s_axis_tdata\(31 downto 0);
  m_axi_wlast <= \^s_axis_tdata\(36);
  m_axi_wstrb(3 downto 0) <= \^s_axis_tdata\(35 downto 32);
  m_axi_wuser(3 downto 0) <= \^s_axis_tdata\(40 downto 37);
  s_axi_bid(0) <= \^s_axis_tdata\(2);
  s_axi_bresp(1 downto 0) <= \^s_axis_tdata\(1 downto 0);
  s_axi_buser(3 downto 0) <= \^s_axis_tdata\(6 downto 3);
  s_axi_rdata(31 downto 0) <= \^s_axis_tdata\(31 downto 0);
  s_axi_rid(0) <= \^s_axis_tdata\(35);
  s_axi_rlast <= \^s_axis_tdata\(34);
  s_axi_rresp(1 downto 0) <= \^s_axis_tdata\(33 downto 32);
  s_axi_ruser(3 downto 0) <= \^s_axis_tdata\(39 downto 36);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
m_axi_wvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => s_axis_tid(1),
      I1 => s_axis_tid(0),
      I2 => s_axis_tvalid,
      I3 => s_axis_tid(2),
      O => m_axi_wvalid
    );
s_axi_bvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axis_tid(1),
      I1 => s_axis_tid(0),
      I2 => s_axis_tid(2),
      I3 => s_axis_tvalid,
      O => s_axi_bvalid
    );
s_axis_tready_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0000A0000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => m_axi_wready,
      I2 => s_axis_tid(1),
      I3 => s_axis_tid(0),
      I4 => s_axis_tvalid,
      I5 => s_axis_tid(2),
      O => s_axis_tready_INST_0_i_2_n_0
    );
u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar: entity work.\axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized1\
     port map (
      SS(0) => clear,
      aclk => aclk,
      areset_r1 => areset_r1,
      aresetn => aresetn,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arid(0) => m_axi_arid(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_aruser(3 downto 0) => m_axi_aruser(3 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      push => push,
      s_axis_tdata(61 downto 0) => \^s_axis_tdata\(61 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw: entity work.\axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0\
     port map (
      SS(0) => clear,
      aclk => aclk,
      areset_r1 => areset_r1,
      aresetn => aresetn,
      \gen_tdest_routing.decode_err_r_reg\ => u_axis_switch_v1_1_9_axis_switch_1x5_n_0,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(0) => m_axi_awid(0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awuser(3 downto 0) => m_axi_awuser(3 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      \m_tready_from_decoded_slave0__1\(0) => \gen_decoder[0].axisc_decoder_0/m_tready_from_decoded_slave0__1\(0),
      push => push,
      s_axis_tdata(61 downto 0) => \^s_axis_tdata\(61 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      \s_axis_tid_2__s_port_]\ => s_axis_tready_INST_0_i_2_n_0,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
u_axi_infrastructure_v1_1_0_axic_srl_fifo_b: entity work.axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo
     port map (
      Q(0) => \gen_transfer_mux[0].axisc_transfer_mux_0/busy_r\(0),
      SS(0) => clear,
      aclk => aclk,
      arb_gnt_i(0) => arb_gnt_i(0),
      areset_r_reg => u_axis_switch_v1_1_9_axis_switch_5x1_n_94,
      aresetn => aresetn,
      \fifo_index1__1\ => \fifo_index1__1\,
      m_axi_bid(0) => m_axi_bid(0),
      m_axi_bready => \^m_axi_bready\,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(3 downto 0) => m_axi_buser(3 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axis_tready => m_axis_tready,
      m_int_tdata(6 downto 0) => m_int_tdata(6 downto 0),
      m_int_tvalid(0) => m_int_tvalid(0),
      \s_ready3__3\ => \s_ready3__3\
    );
u_axis_switch_v1_1_9_axis_switch_1x5: entity work.\axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch__parameterized0\
     port map (
      aclk => aclk,
      areset_r1 => areset_r1,
      \gen_tdest_routing.decode_err_r_reg\ => u_axis_switch_v1_1_9_axis_switch_1x5_n_0,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
u_axis_switch_v1_1_9_axis_switch_5x1: entity work.axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch
     port map (
      E(0) => u_axis_switch_v1_1_9_axis_switch_5x1_n_78,
      Q(0) => \gen_transfer_mux[0].axisc_transfer_mux_0/busy_r\(0),
      SR(0) => clear,
      aclk => aclk,
      areset_r1 => areset_r1,
      count_is_max => count_is_max,
      \count_is_max1__1\ => \count_is_max1__1_1\,
      \count_is_max1__1_0\ => \count_is_max1__1_0\,
      \count_is_max1__1_1\ => \count_is_max1__1\,
      count_is_max_reg => u_axis_switch_v1_1_9_axis_switch_5x1_n_90,
      count_is_max_reg_0(1 downto 0) => \m_int_tvalid__0\(2 downto 1),
      count_is_max_reg_1 => u_transaction_counter_ar_to_r_n_0,
      count_is_zero => count_is_zero,
      decr_trans0 => decr_trans0,
      decr_trans02_out => decr_trans02_out,
      \fifo_index1__1\ => \fifo_index1__1\,
      \gen_tdest_routing.busy_r_reg[0]\(0) => arb_gnt_i(0),
      incr_trans05_out => incr_trans05_out,
      m_axi_bready => \^m_axi_bready\,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(3 downto 0) => m_axi_ruser(3 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tid(2 downto 0) => m_axis_tid(2 downto 0),
      m_axis_tkeep(7 downto 0) => m_axis_tkeep(7 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      m_int_tdata(6 downto 0) => m_int_tdata(6 downto 0),
      m_int_tvalid(1) => m_int_tvalid(4),
      m_int_tvalid(0) => m_int_tvalid(0),
      \num_active_trans_reg[0]\(0) => u_axis_switch_v1_1_9_axis_switch_5x1_n_82,
      \num_active_trans_reg[0]_0\(0) => u_axis_switch_v1_1_9_axis_switch_5x1_n_87,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(3 downto 0) => s_axi_aruser(3 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awuser(3 downto 0) => s_axi_awuser(3 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wuser(3 downto 0) => s_axi_wuser(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tvalid => s_axis_tvalid,
      \s_ready3__3\ => \s_ready3__3\,
      s_ready_reg => u_axis_switch_v1_1_9_axis_switch_5x1_n_94
    );
u_transaction_counter_ar_to_r: entity work.axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter
     port map (
      E(0) => u_axis_switch_v1_1_9_axis_switch_5x1_n_87,
      SS(0) => clear,
      aclk => aclk,
      \arb_gnt_r_reg[0]\(0) => \m_int_tvalid__0\(2),
      \count_is_max1__1\ => \count_is_max1__1\,
      count_is_max_reg_0 => u_transaction_counter_ar_to_r_n_0,
      count_is_max_reg_1 => u_axis_switch_v1_1_9_axis_switch_5x1_n_90,
      decr_trans0 => decr_trans0,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axis_tdata(0) => \^s_axis_tdata\(34),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
u_transaction_counter_aw_to_b: entity work.axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter_0
     port map (
      E(0) => u_axis_switch_v1_1_9_axis_switch_5x1_n_82,
      SS(0) => clear,
      aclk => aclk,
      \arb_gnt_r_reg[0]\(0) => \m_int_tvalid__0\(1),
      count_is_max => count_is_max,
      \count_is_max1__1\ => \count_is_max1__1_0\,
      incr_trans05_out => incr_trans05_out,
      \m_tready_from_decoded_slave0__1\(0) => \gen_decoder[0].axisc_decoder_0/m_tready_from_decoded_slave0__1\(0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
u_transaction_counter_aw_to_w: entity work.axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter_1
     port map (
      E(0) => u_axis_switch_v1_1_9_axis_switch_5x1_n_78,
      SS(0) => clear,
      aclk => aclk,
      aresetn => aresetn,
      \count_is_max1__1\ => \count_is_max1__1_1\,
      count_is_zero => count_is_zero,
      decr_trans02_out => decr_trans02_out,
      incr_trans05_out => incr_trans05_out,
      m_int_tvalid(0) => m_int_tvalid(4),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_mm2s_mapper_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axi_mm2s_mapper_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_mm2s_mapper_0 : entity is "axi_mm2s_mapper_0,axi_mm2s_mapper_v1_1_8_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axi_mm2s_mapper_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_mm2s_mapper_0 : entity is "axi_mm2s_mapper_v1_1_8_top,Vivado 2016.2";
end axi_mm2s_mapper_0;

architecture STRUCTURE of axi_mm2s_mapper_0 is
  signal NLW_inst_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of inst : label is 64;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 3;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 4;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 4;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 4;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 4;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_REGION_SIGNALS of inst : label is 0;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 4;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "kintex7";
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_AXI_ARADDR_INDEX : integer;
  attribute G_AXI_ARADDR_INDEX of inst : label is 0;
  attribute G_AXI_ARADDR_WIDTH : integer;
  attribute G_AXI_ARADDR_WIDTH of inst : label is 32;
  attribute G_AXI_ARBURST_INDEX : integer;
  attribute G_AXI_ARBURST_INDEX of inst : label is 38;
  attribute G_AXI_ARBURST_WIDTH : integer;
  attribute G_AXI_ARBURST_WIDTH of inst : label is 2;
  attribute G_AXI_ARCACHE_INDEX : integer;
  attribute G_AXI_ARCACHE_INDEX of inst : label is 40;
  attribute G_AXI_ARCACHE_WIDTH : integer;
  attribute G_AXI_ARCACHE_WIDTH of inst : label is 4;
  attribute G_AXI_ARID_INDEX : integer;
  attribute G_AXI_ARID_INDEX of inst : label is 53;
  attribute G_AXI_ARID_WIDTH : integer;
  attribute G_AXI_ARID_WIDTH of inst : label is 1;
  attribute G_AXI_ARLEN_INDEX : integer;
  attribute G_AXI_ARLEN_INDEX of inst : label is 44;
  attribute G_AXI_ARLEN_WIDTH : integer;
  attribute G_AXI_ARLEN_WIDTH of inst : label is 8;
  attribute G_AXI_ARLOCK_INDEX : integer;
  attribute G_AXI_ARLOCK_INDEX of inst : label is 52;
  attribute G_AXI_ARLOCK_WIDTH : integer;
  attribute G_AXI_ARLOCK_WIDTH of inst : label is 1;
  attribute G_AXI_ARPAYLOAD_WIDTH : integer;
  attribute G_AXI_ARPAYLOAD_WIDTH of inst : label is 62;
  attribute G_AXI_ARPROT_INDEX : integer;
  attribute G_AXI_ARPROT_INDEX of inst : label is 32;
  attribute G_AXI_ARPROT_WIDTH : integer;
  attribute G_AXI_ARPROT_WIDTH of inst : label is 3;
  attribute G_AXI_ARQOS_INDEX : integer;
  attribute G_AXI_ARQOS_INDEX of inst : label is 54;
  attribute G_AXI_ARQOS_WIDTH : integer;
  attribute G_AXI_ARQOS_WIDTH of inst : label is 4;
  attribute G_AXI_ARREGION_INDEX : integer;
  attribute G_AXI_ARREGION_INDEX of inst : label is 58;
  attribute G_AXI_ARREGION_WIDTH : integer;
  attribute G_AXI_ARREGION_WIDTH of inst : label is 0;
  attribute G_AXI_ARSIZE_INDEX : integer;
  attribute G_AXI_ARSIZE_INDEX of inst : label is 35;
  attribute G_AXI_ARSIZE_WIDTH : integer;
  attribute G_AXI_ARSIZE_WIDTH of inst : label is 3;
  attribute G_AXI_ARUSER_INDEX : integer;
  attribute G_AXI_ARUSER_INDEX of inst : label is 58;
  attribute G_AXI_ARUSER_WIDTH : integer;
  attribute G_AXI_ARUSER_WIDTH of inst : label is 4;
  attribute G_AXI_AWADDR_INDEX : integer;
  attribute G_AXI_AWADDR_INDEX of inst : label is 0;
  attribute G_AXI_AWADDR_WIDTH : integer;
  attribute G_AXI_AWADDR_WIDTH of inst : label is 32;
  attribute G_AXI_AWBURST_INDEX : integer;
  attribute G_AXI_AWBURST_INDEX of inst : label is 38;
  attribute G_AXI_AWBURST_WIDTH : integer;
  attribute G_AXI_AWBURST_WIDTH of inst : label is 2;
  attribute G_AXI_AWCACHE_INDEX : integer;
  attribute G_AXI_AWCACHE_INDEX of inst : label is 40;
  attribute G_AXI_AWCACHE_WIDTH : integer;
  attribute G_AXI_AWCACHE_WIDTH of inst : label is 4;
  attribute G_AXI_AWID_INDEX : integer;
  attribute G_AXI_AWID_INDEX of inst : label is 53;
  attribute G_AXI_AWID_WIDTH : integer;
  attribute G_AXI_AWID_WIDTH of inst : label is 1;
  attribute G_AXI_AWLEN_INDEX : integer;
  attribute G_AXI_AWLEN_INDEX of inst : label is 44;
  attribute G_AXI_AWLEN_WIDTH : integer;
  attribute G_AXI_AWLEN_WIDTH of inst : label is 8;
  attribute G_AXI_AWLOCK_INDEX : integer;
  attribute G_AXI_AWLOCK_INDEX of inst : label is 52;
  attribute G_AXI_AWLOCK_WIDTH : integer;
  attribute G_AXI_AWLOCK_WIDTH of inst : label is 1;
  attribute G_AXI_AWPAYLOAD_WIDTH : integer;
  attribute G_AXI_AWPAYLOAD_WIDTH of inst : label is 62;
  attribute G_AXI_AWPROT_INDEX : integer;
  attribute G_AXI_AWPROT_INDEX of inst : label is 32;
  attribute G_AXI_AWPROT_WIDTH : integer;
  attribute G_AXI_AWPROT_WIDTH of inst : label is 3;
  attribute G_AXI_AWQOS_INDEX : integer;
  attribute G_AXI_AWQOS_INDEX of inst : label is 54;
  attribute G_AXI_AWQOS_WIDTH : integer;
  attribute G_AXI_AWQOS_WIDTH of inst : label is 4;
  attribute G_AXI_AWREGION_INDEX : integer;
  attribute G_AXI_AWREGION_INDEX of inst : label is 58;
  attribute G_AXI_AWREGION_WIDTH : integer;
  attribute G_AXI_AWREGION_WIDTH of inst : label is 0;
  attribute G_AXI_AWSIZE_INDEX : integer;
  attribute G_AXI_AWSIZE_INDEX of inst : label is 35;
  attribute G_AXI_AWSIZE_WIDTH : integer;
  attribute G_AXI_AWSIZE_WIDTH of inst : label is 3;
  attribute G_AXI_AWUSER_INDEX : integer;
  attribute G_AXI_AWUSER_INDEX of inst : label is 58;
  attribute G_AXI_AWUSER_WIDTH : integer;
  attribute G_AXI_AWUSER_WIDTH of inst : label is 4;
  attribute G_AXI_BID_INDEX : integer;
  attribute G_AXI_BID_INDEX of inst : label is 2;
  attribute G_AXI_BID_WIDTH : integer;
  attribute G_AXI_BID_WIDTH of inst : label is 1;
  attribute G_AXI_BPAYLOAD_WIDTH : integer;
  attribute G_AXI_BPAYLOAD_WIDTH of inst : label is 7;
  attribute G_AXI_BRESP_INDEX : integer;
  attribute G_AXI_BRESP_INDEX of inst : label is 0;
  attribute G_AXI_BRESP_WIDTH : integer;
  attribute G_AXI_BRESP_WIDTH of inst : label is 2;
  attribute G_AXI_BUSER_INDEX : integer;
  attribute G_AXI_BUSER_INDEX of inst : label is 3;
  attribute G_AXI_BUSER_WIDTH : integer;
  attribute G_AXI_BUSER_WIDTH of inst : label is 4;
  attribute G_AXI_RDATA_INDEX : integer;
  attribute G_AXI_RDATA_INDEX of inst : label is 0;
  attribute G_AXI_RDATA_WIDTH : integer;
  attribute G_AXI_RDATA_WIDTH of inst : label is 32;
  attribute G_AXI_RID_INDEX : integer;
  attribute G_AXI_RID_INDEX of inst : label is 35;
  attribute G_AXI_RID_WIDTH : integer;
  attribute G_AXI_RID_WIDTH of inst : label is 1;
  attribute G_AXI_RLAST_INDEX : integer;
  attribute G_AXI_RLAST_INDEX of inst : label is 34;
  attribute G_AXI_RLAST_WIDTH : integer;
  attribute G_AXI_RLAST_WIDTH of inst : label is 1;
  attribute G_AXI_RPAYLOAD_WIDTH : integer;
  attribute G_AXI_RPAYLOAD_WIDTH of inst : label is 40;
  attribute G_AXI_RRESP_INDEX : integer;
  attribute G_AXI_RRESP_INDEX of inst : label is 32;
  attribute G_AXI_RRESP_WIDTH : integer;
  attribute G_AXI_RRESP_WIDTH of inst : label is 2;
  attribute G_AXI_RUSER_INDEX : integer;
  attribute G_AXI_RUSER_INDEX of inst : label is 36;
  attribute G_AXI_RUSER_WIDTH : integer;
  attribute G_AXI_RUSER_WIDTH of inst : label is 4;
  attribute G_AXI_WDATA_INDEX : integer;
  attribute G_AXI_WDATA_INDEX of inst : label is 0;
  attribute G_AXI_WDATA_WIDTH : integer;
  attribute G_AXI_WDATA_WIDTH of inst : label is 32;
  attribute G_AXI_WID_INDEX : integer;
  attribute G_AXI_WID_INDEX of inst : label is 37;
  attribute G_AXI_WID_WIDTH : integer;
  attribute G_AXI_WID_WIDTH of inst : label is 0;
  attribute G_AXI_WLAST_INDEX : integer;
  attribute G_AXI_WLAST_INDEX of inst : label is 36;
  attribute G_AXI_WLAST_WIDTH : integer;
  attribute G_AXI_WLAST_WIDTH of inst : label is 1;
  attribute G_AXI_WPAYLOAD_WIDTH : integer;
  attribute G_AXI_WPAYLOAD_WIDTH of inst : label is 41;
  attribute G_AXI_WSTRB_INDEX : integer;
  attribute G_AXI_WSTRB_INDEX of inst : label is 32;
  attribute G_AXI_WSTRB_WIDTH : integer;
  attribute G_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute G_AXI_WUSER_INDEX : integer;
  attribute G_AXI_WUSER_INDEX of inst : label is 37;
  attribute G_AXI_WUSER_WIDTH : integer;
  attribute G_AXI_WUSER_WIDTH of inst : label is 4;
  attribute LP_AR_TDEST : string;
  attribute LP_AR_TDEST of inst : label is "3'b010";
  attribute LP_AW_TDEST : string;
  attribute LP_AW_TDEST of inst : label is "3'b001";
  attribute LP_B_TDEST : string;
  attribute LP_B_TDEST of inst : label is "3'b000";
  attribute LP_LOG_M_AX_FIFO_DEPTH : integer;
  attribute LP_LOG_M_AX_FIFO_DEPTH of inst : label is 4;
  attribute LP_M_AX_FIFO_DEPTH : integer;
  attribute LP_M_AX_FIFO_DEPTH of inst : label is 16;
  attribute LP_R_TDEST : string;
  attribute LP_R_TDEST of inst : label is "3'b011";
  attribute LP_W_TDEST : string;
  attribute LP_W_TDEST of inst : label is "3'b100";
begin
inst: entity work.axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arid(0) => NLW_inst_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_aruser(3 downto 0) => m_axi_aruser(3 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(0) => NLW_inst_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awuser(3 downto 0) => m_axi_awuser(3 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => '0',
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(3 downto 0) => m_axi_buser(3 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => '0',
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(3 downto 0) => m_axi_ruser(3 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wuser(3 downto 0) => m_axi_wuser(3 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tid(2 downto 0) => m_axis_tid(2 downto 0),
      m_axis_tkeep(7 downto 0) => m_axis_tkeep(7 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_inst_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(3 downto 0) => B"0000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_inst_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(3 downto 0) => B"0000",
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(3 downto 0) => NLW_inst_s_axi_buser_UNCONNECTED(3 downto 0),
      s_axi_bvalid => NLW_inst_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => NLW_inst_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(3 downto 0) => NLW_inst_s_axi_ruser_UNCONNECTED(3 downto 0),
      s_axi_rvalid => NLW_inst_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wlast => '1',
      s_axi_wready => NLW_inst_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(3 downto 0) => B"1111",
      s_axi_wuser(3 downto 0) => B"0000",
      s_axi_wvalid => '0',
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0),
      s_axis_tid(2 downto 0) => s_axis_tid(2 downto 0),
      s_axis_tkeep(7 downto 0) => s_axis_tkeep(7 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
