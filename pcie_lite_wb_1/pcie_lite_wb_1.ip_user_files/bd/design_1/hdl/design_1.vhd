--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Tue Nov 15 18:42:16 2016
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
    led_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_txn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_7x_mgt_txp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=8,numReposBlks=8,numNonXlnxBlks=3,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_board_cnt=1,da_bram_cntlr_cnt=2,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_proc_sys_reset_0_0;
  component design_1_util_ds_buf_0_0 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_ds_buf_0_0;
  component design_1_pcie_7x_0_0 is
  port (
    pci_exp_txp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pci_exp_txn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pci_exp_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pci_exp_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    user_clk_out : out STD_LOGIC;
    user_reset_out : out STD_LOGIC;
    user_lnk_up : out STD_LOGIC;
    user_app_rdy : out STD_LOGIC;
    s_axis_tx_tready : out STD_LOGIC;
    s_axis_tx_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tx_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tx_tlast : in STD_LOGIC;
    s_axis_tx_tvalid : in STD_LOGIC;
    s_axis_tx_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_rx_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_rx_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_rx_tlast : out STD_LOGIC;
    m_axis_rx_tvalid : out STD_LOGIC;
    m_axis_rx_tready : in STD_LOGIC;
    m_axis_rx_tuser : out STD_LOGIC_VECTOR ( 21 downto 0 );
    cfg_interrupt : in STD_LOGIC;
    cfg_interrupt_rdy : out STD_LOGIC;
    cfg_interrupt_assert : in STD_LOGIC;
    cfg_interrupt_di : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cfg_interrupt_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cfg_interrupt_mmenable : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cfg_interrupt_msienable : out STD_LOGIC;
    cfg_interrupt_msixenable : out STD_LOGIC;
    cfg_interrupt_msixfm : out STD_LOGIC;
    cfg_interrupt_stat : in STD_LOGIC;
    cfg_pciecap_interrupt_msgnum : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC
  );
  end component design_1_pcie_7x_0_0;
  component design_1_simple_counter_0_0 is
  port (
    rst_i : in STD_LOGIC;
    clk_i : in STD_LOGIC;
    count_o : out STD_LOGIC_VECTOR ( 28 downto 0 );
    led_o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_simple_counter_0_0;
  component design_1_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_ila_0_0;
  component design_1_ila_0_1 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 21 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_ila_0_1;
  component design_1_bram_wbs_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    wb_adr_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wb_dat_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_we_i : in STD_LOGIC;
    wb_stb_i : in STD_LOGIC;
    wb_cyc_i : in STD_LOGIC;
    wb_lock_i : in STD_LOGIC;
    wb_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_ack_o : out STD_LOGIC
  );
  end component design_1_bram_wbs_0_0;
  component design_1_axis_rx_0_0 is
  port (
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    s_axis_rx_tdata_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_rx_tkeep_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_rx_tuser_i : in STD_LOGIC_VECTOR ( 21 downto 0 );
    s_axis_rx_tlast_i : in STD_LOGIC;
    s_axis_rx_tvalid_i : in STD_LOGIC;
    s_axis_rx_ready_o : out STD_LOGIC;
    m_axis_tx_tdata_o : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tx_tkeep_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tx_tuser_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tx_tlast_o : out STD_LOGIC;
    m_axis_tx_tvalid_o : out STD_LOGIC;
    m_axis_tx_ready_i : in STD_LOGIC;
    wb_adr_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wb_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_dat_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_cyc_o : out STD_LOGIC;
    wb_stb_o : out STD_LOGIC;
    wb_we_o : out STD_LOGIC;
    wb_ack_i : in STD_LOGIC
  );
  end component design_1_axis_rx_0_0;
  signal CLK_IN_D_1_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CLK_IN_D_1_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Net : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Net1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Net2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Net3 : STD_LOGIC;
  signal Net4 : STD_LOGIC;
  signal Net5 : STD_LOGIC;
  signal axis_rx_0_wb_adr_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_rx_0_wb_cyc_o : STD_LOGIC;
  signal axis_rx_0_wb_dat_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_rx_0_wb_stb_o : STD_LOGIC;
  signal axis_rx_0_wb_we_o : STD_LOGIC;
  signal bram_wbs_0_wb_ack_o : STD_LOGIC;
  signal bram_wbs_0_wb_dat_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal clk_wiz_clk_out1 : STD_LOGIC;
  signal pcie_7x_0_m_axis_rx_tdata : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal pcie_7x_0_m_axis_rx_tkeep : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pcie_7x_0_m_axis_rx_tlast : STD_LOGIC;
  signal pcie_7x_0_m_axis_rx_tuser : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal pcie_7x_0_m_axis_rx_tvalid : STD_LOGIC;
  signal pcie_7x_0_pcie_7x_mgt_rxn : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pcie_7x_0_pcie_7x_mgt_rxp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pcie_7x_0_pcie_7x_mgt_txn : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pcie_7x_0_pcie_7x_mgt_txp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pcie_7x_0_s_axis_tx_tready : STD_LOGIC;
  signal pcie_7x_0_user_reset_out : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_1 : STD_LOGIC;
  signal simple_counter_0_led_o : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sys_rst_n_1 : STD_LOGIC;
  signal util_ds_buf_0_IBUF_OUT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ila_0_probe2_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_pcie_7x_0_cfg_interrupt_msienable_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_interrupt_msixenable_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_interrupt_msixfm_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_interrupt_rdy_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_user_app_rdy_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_user_lnk_up_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_interrupt_do_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_pcie_7x_0_cfg_interrupt_mmenable_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_simple_counter_0_count_o_UNCONNECTED : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal NLW_util_ds_buf_0_IBUF_DS_ODIV2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  CLK_IN_D_1_CLK_N(0) <= CLK_IN_D_clk_n(0);
  CLK_IN_D_1_CLK_P(0) <= CLK_IN_D_clk_p(0);
  led_o(3 downto 0) <= simple_counter_0_led_o(3 downto 0);
  pcie_7x_0_pcie_7x_mgt_rxn(3 downto 0) <= pcie_7x_mgt_rxn(3 downto 0);
  pcie_7x_0_pcie_7x_mgt_rxp(3 downto 0) <= pcie_7x_mgt_rxp(3 downto 0);
  pcie_7x_mgt_txn(3 downto 0) <= pcie_7x_0_pcie_7x_mgt_txn(3 downto 0);
  pcie_7x_mgt_txp(3 downto 0) <= pcie_7x_0_pcie_7x_mgt_txp(3 downto 0);
  reset_1 <= reset;
  sys_rst_n_1 <= sys_rst_n;
axis_rx_0: component design_1_axis_rx_0_0
     port map (
      clk_i => clk_wiz_clk_out1,
      m_axis_tx_ready_i => pcie_7x_0_s_axis_tx_tready,
      m_axis_tx_tdata_o(63 downto 0) => Net(63 downto 0),
      m_axis_tx_tkeep_o(7 downto 0) => Net1(7 downto 0),
      m_axis_tx_tlast_o => Net3,
      m_axis_tx_tuser_o(3 downto 0) => Net2(3 downto 0),
      m_axis_tx_tvalid_o => Net4,
      rst_i => proc_sys_reset_0_peripheral_reset(0),
      s_axis_rx_ready_o => Net5,
      s_axis_rx_tdata_i(63 downto 0) => pcie_7x_0_m_axis_rx_tdata(63 downto 0),
      s_axis_rx_tkeep_i(7 downto 0) => pcie_7x_0_m_axis_rx_tkeep(7 downto 0),
      s_axis_rx_tlast_i => pcie_7x_0_m_axis_rx_tlast,
      s_axis_rx_tuser_i(21 downto 0) => pcie_7x_0_m_axis_rx_tuser(21 downto 0),
      s_axis_rx_tvalid_i => pcie_7x_0_m_axis_rx_tvalid,
      wb_ack_i => bram_wbs_0_wb_ack_o,
      wb_adr_o(7 downto 0) => axis_rx_0_wb_adr_o(7 downto 0),
      wb_cyc_o => axis_rx_0_wb_cyc_o,
      wb_dat_i(31 downto 0) => bram_wbs_0_wb_dat_o(31 downto 0),
      wb_dat_o(31 downto 0) => axis_rx_0_wb_dat_o(31 downto 0),
      wb_stb_o => axis_rx_0_wb_stb_o,
      wb_we_o => axis_rx_0_wb_we_o
    );
bram_wbs_0: component design_1_bram_wbs_0_0
     port map (
      clk => clk_wiz_clk_out1,
      rst => proc_sys_reset_0_peripheral_reset(0),
      wb_ack_o => bram_wbs_0_wb_ack_o,
      wb_adr_i(7 downto 0) => axis_rx_0_wb_adr_o(7 downto 0),
      wb_cyc_i => axis_rx_0_wb_cyc_o,
      wb_dat_i(31 downto 0) => axis_rx_0_wb_dat_o(31 downto 0),
      wb_dat_o(31 downto 0) => bram_wbs_0_wb_dat_o(31 downto 0),
      wb_lock_i => axis_rx_0_wb_stb_o,
      wb_stb_i => axis_rx_0_wb_stb_o,
      wb_we_i => axis_rx_0_wb_we_o
    );
ila_0: component design_1_ila_0_0
     port map (
      clk => clk_wiz_clk_out1,
      probe0(0) => '0',
      probe1(63 downto 0) => Net(63 downto 0),
      probe2(7 downto 4) => NLW_ila_0_probe2_UNCONNECTED(7 downto 4),
      probe2(3 downto 0) => Net2(3 downto 0),
      probe3(0) => '0',
      probe4(0) => pcie_7x_0_s_axis_tx_tready,
      probe5(3 downto 0) => B"0000",
      probe6(7 downto 0) => Net1(7 downto 0),
      probe7(0) => Net4,
      probe8(0) => Net3
    );
ila_1: component design_1_ila_0_1
     port map (
      clk => clk_wiz_clk_out1,
      probe0(0) => '0',
      probe1(63 downto 0) => pcie_7x_0_m_axis_rx_tdata(63 downto 0),
      probe2(7 downto 0) => B"00000000",
      probe3(0) => '0',
      probe4(0) => pcie_7x_0_m_axis_rx_tvalid,
      probe5(21 downto 0) => pcie_7x_0_m_axis_rx_tuser(21 downto 0),
      probe6(7 downto 0) => pcie_7x_0_m_axis_rx_tkeep(7 downto 0),
      probe7(0) => Net5,
      probe8(0) => pcie_7x_0_m_axis_rx_tlast
    );
pcie_7x_0: component design_1_pcie_7x_0_0
     port map (
      cfg_interrupt => '0',
      cfg_interrupt_assert => '0',
      cfg_interrupt_di(7 downto 0) => B"00000000",
      cfg_interrupt_do(7 downto 0) => NLW_pcie_7x_0_cfg_interrupt_do_UNCONNECTED(7 downto 0),
      cfg_interrupt_mmenable(2 downto 0) => NLW_pcie_7x_0_cfg_interrupt_mmenable_UNCONNECTED(2 downto 0),
      cfg_interrupt_msienable => NLW_pcie_7x_0_cfg_interrupt_msienable_UNCONNECTED,
      cfg_interrupt_msixenable => NLW_pcie_7x_0_cfg_interrupt_msixenable_UNCONNECTED,
      cfg_interrupt_msixfm => NLW_pcie_7x_0_cfg_interrupt_msixfm_UNCONNECTED,
      cfg_interrupt_rdy => NLW_pcie_7x_0_cfg_interrupt_rdy_UNCONNECTED,
      cfg_interrupt_stat => '0',
      cfg_pciecap_interrupt_msgnum(4 downto 0) => B"00000",
      m_axis_rx_tdata(63 downto 0) => pcie_7x_0_m_axis_rx_tdata(63 downto 0),
      m_axis_rx_tkeep(7 downto 0) => pcie_7x_0_m_axis_rx_tkeep(7 downto 0),
      m_axis_rx_tlast => pcie_7x_0_m_axis_rx_tlast,
      m_axis_rx_tready => Net5,
      m_axis_rx_tuser(21 downto 0) => pcie_7x_0_m_axis_rx_tuser(21 downto 0),
      m_axis_rx_tvalid => pcie_7x_0_m_axis_rx_tvalid,
      pci_exp_rxn(3 downto 0) => pcie_7x_0_pcie_7x_mgt_rxn(3 downto 0),
      pci_exp_rxp(3 downto 0) => pcie_7x_0_pcie_7x_mgt_rxp(3 downto 0),
      pci_exp_txn(3 downto 0) => pcie_7x_0_pcie_7x_mgt_txn(3 downto 0),
      pci_exp_txp(3 downto 0) => pcie_7x_0_pcie_7x_mgt_txp(3 downto 0),
      s_axis_tx_tdata(63 downto 0) => Net(63 downto 0),
      s_axis_tx_tkeep(7 downto 0) => Net1(7 downto 0),
      s_axis_tx_tlast => Net3,
      s_axis_tx_tready => pcie_7x_0_s_axis_tx_tready,
      s_axis_tx_tuser(3 downto 0) => Net2(3 downto 0),
      s_axis_tx_tvalid => Net4,
      sys_clk => util_ds_buf_0_IBUF_OUT(0),
      sys_rst_n => sys_rst_n_1,
      user_app_rdy => NLW_pcie_7x_0_user_app_rdy_UNCONNECTED,
      user_clk_out => clk_wiz_clk_out1,
      user_lnk_up => NLW_pcie_7x_0_user_lnk_up_UNCONNECTED,
      user_reset_out => pcie_7x_0_user_reset_out
    );
proc_sys_reset_0: component design_1_proc_sys_reset_0_0
     port map (
      aux_reset_in => pcie_7x_0_user_reset_out,
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => reset_1,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_proc_sys_reset_0_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => proc_sys_reset_0_peripheral_reset(0),
      slowest_sync_clk => clk_wiz_clk_out1
    );
simple_counter_0: component design_1_simple_counter_0_0
     port map (
      clk_i => clk_wiz_clk_out1,
      count_o(28 downto 0) => NLW_simple_counter_0_count_o_UNCONNECTED(28 downto 0),
      led_o(3 downto 0) => simple_counter_0_led_o(3 downto 0),
      rst_i => proc_sys_reset_0_peripheral_reset(0)
    );
util_ds_buf_0: component design_1_util_ds_buf_0_0
     port map (
      IBUF_DS_N(0) => CLK_IN_D_1_CLK_N(0),
      IBUF_DS_ODIV2(0) => NLW_util_ds_buf_0_IBUF_DS_ODIV2_UNCONNECTED(0),
      IBUF_DS_P(0) => CLK_IN_D_1_CLK_P(0),
      IBUF_OUT(0) => util_ds_buf_0_IBUF_OUT(0)
    );
end STRUCTURE;
