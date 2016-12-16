--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Thu Dec 15 15:01:10 2016
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
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=8,numReposBlks=8,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_board_cnt=1,da_bram_cntlr_cnt=2,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_axi_bram_ctrl_0_0;
  component design_1_axi_bram_ctrl_0_bram_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_axi_bram_ctrl_0_bram_0;
  component design_1_pcie_axi_lite_v1_0_0_1 is
  port (
    user_lnk_up : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    m_axis_tx_tready : in STD_LOGIC;
    m_axis_tx_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tx_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tx_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tx_tlast : out STD_LOGIC;
    m_axis_tx_tvalid : out STD_LOGIC;
    s_axis_rx_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_rx_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_rx_tlast : in STD_LOGIC;
    s_axis_rx_tvalid : in STD_LOGIC;
    s_axis_rx_tready : out STD_LOGIC;
    s_axis_rx_tuser : in STD_LOGIC_VECTOR ( 21 downto 0 );
    M_AXI_ARESETN : in STD_LOGIC;
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC
  );
  end component design_1_pcie_axi_lite_v1_0_0_1;
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
    probe0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 21 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_ila_0_0;
  signal CLK_IN_D_1_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CLK_IN_D_1_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
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
  signal pcie_7x_0_user_lnk_up : STD_LOGIC;
  signal pcie_7x_0_user_reset_out : STD_LOGIC;
  signal pcie_axi_lite_v1_0_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pcie_axi_lite_v1_0_0_M_AXI_ARREADY : STD_LOGIC;
  signal pcie_axi_lite_v1_0_0_M_AXI_ARVALID : STD_LOGIC;
  signal pcie_axi_lite_v1_0_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pcie_axi_lite_v1_0_0_M_AXI_AWREADY : STD_LOGIC;
  signal pcie_axi_lite_v1_0_0_M_AXI_AWVALID : STD_LOGIC;
  signal pcie_axi_lite_v1_0_0_M_AXI_BREADY : STD_LOGIC;
  signal pcie_axi_lite_v1_0_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pcie_axi_lite_v1_0_0_M_AXI_BVALID : STD_LOGIC;
  signal pcie_axi_lite_v1_0_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pcie_axi_lite_v1_0_0_M_AXI_RREADY : STD_LOGIC;
  signal pcie_axi_lite_v1_0_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pcie_axi_lite_v1_0_0_M_AXI_RVALID : STD_LOGIC;
  signal pcie_axi_lite_v1_0_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pcie_axi_lite_v1_0_0_M_AXI_WREADY : STD_LOGIC;
  signal pcie_axi_lite_v1_0_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pcie_axi_lite_v1_0_0_M_AXI_WVALID : STD_LOGIC;
  signal pcie_axi_lite_v1_0_0_m_axis_tx_tdata : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal pcie_axi_lite_v1_0_0_m_axis_tx_tkeep : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pcie_axi_lite_v1_0_0_m_axis_tx_tlast : STD_LOGIC;
  signal pcie_axi_lite_v1_0_0_m_axis_tx_tuser : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pcie_axi_lite_v1_0_0_m_axis_tx_tvalid : STD_LOGIC;
  signal pcie_axi_lite_v1_0_0_s_axis_rx_tready : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_1 : STD_LOGIC;
  signal rst_clk_wiz_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal simple_counter_0_led_o : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sys_rst_n_1 : STD_LOGIC;
  signal util_ds_buf_0_IBUF_OUT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_pcie_7x_0_cfg_interrupt_msienable_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_interrupt_msixenable_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_interrupt_msixfm_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_interrupt_rdy_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_user_app_rdy_UNCONNECTED : STD_LOGIC;
  signal NLW_pcie_7x_0_cfg_interrupt_do_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_pcie_7x_0_cfg_interrupt_mmenable_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
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
axi_bram_ctrl_0: component design_1_axi_bram_ctrl_0_0
     port map (
      bram_addr_a(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      bram_addr_b(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_ADDR(12 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_clk_b => axi_bram_ctrl_0_BRAM_PORTB_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_en_b => axi_bram_ctrl_0_BRAM_PORTB_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      bram_rddata_b(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_rst_b => axi_bram_ctrl_0_BRAM_PORTB_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      bram_we_b(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      bram_wrdata_b(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DIN(31 downto 0),
      s_axi_aclk => clk_wiz_clk_out1,
      s_axi_araddr(12 downto 0) => pcie_axi_lite_v1_0_0_M_AXI_ARADDR(12 downto 0),
      s_axi_aresetn => rst_clk_wiz_100M_peripheral_aresetn(0),
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arready => pcie_axi_lite_v1_0_0_M_AXI_ARREADY,
      s_axi_arvalid => pcie_axi_lite_v1_0_0_M_AXI_ARVALID,
      s_axi_awaddr(12 downto 0) => pcie_axi_lite_v1_0_0_M_AXI_AWADDR(12 downto 0),
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awready => pcie_axi_lite_v1_0_0_M_AXI_AWREADY,
      s_axi_awvalid => pcie_axi_lite_v1_0_0_M_AXI_AWVALID,
      s_axi_bready => pcie_axi_lite_v1_0_0_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => pcie_axi_lite_v1_0_0_M_AXI_BRESP(1 downto 0),
      s_axi_bvalid => pcie_axi_lite_v1_0_0_M_AXI_BVALID,
      s_axi_rdata(31 downto 0) => pcie_axi_lite_v1_0_0_M_AXI_RDATA(31 downto 0),
      s_axi_rready => pcie_axi_lite_v1_0_0_M_AXI_RREADY,
      s_axi_rresp(1 downto 0) => pcie_axi_lite_v1_0_0_M_AXI_RRESP(1 downto 0),
      s_axi_rvalid => pcie_axi_lite_v1_0_0_M_AXI_RVALID,
      s_axi_wdata(31 downto 0) => pcie_axi_lite_v1_0_0_M_AXI_WDATA(31 downto 0),
      s_axi_wready => pcie_axi_lite_v1_0_0_M_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => pcie_axi_lite_v1_0_0_M_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => pcie_axi_lite_v1_0_0_M_AXI_WVALID
    );
axi_bram_ctrl_0_bram: component design_1_axi_bram_ctrl_0_bram_0
     port map (
      addra(31 downto 13) => B"0000000000000000000",
      addra(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      addrb(31 downto 13) => B"0000000000000000000",
      addrb(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_ADDR(12 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      clkb => axi_bram_ctrl_0_BRAM_PORTB_CLK,
      dina(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      dinb(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DIN(31 downto 0),
      douta(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      doutb(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DOUT(31 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      enb => axi_bram_ctrl_0_BRAM_PORTB_EN,
      rsta => axi_bram_ctrl_0_BRAM_PORTA_RST,
      rstb => axi_bram_ctrl_0_BRAM_PORTB_RST,
      wea(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      web(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_WE(3 downto 0)
    );
ila_0: component design_1_ila_0_0
     port map (
      clk => clk_wiz_clk_out1,
      probe0(63 downto 0) => pcie_axi_lite_v1_0_0_m_axis_tx_tdata(63 downto 0),
      probe1(7 downto 0) => pcie_axi_lite_v1_0_0_m_axis_tx_tkeep(7 downto 0),
      probe10(21 downto 0) => pcie_7x_0_m_axis_rx_tuser(21 downto 0),
      probe11(0) => pcie_axi_lite_v1_0_0_s_axis_rx_tready,
      probe2(0) => pcie_axi_lite_v1_0_0_m_axis_tx_tlast,
      probe3(0) => pcie_7x_0_s_axis_tx_tready,
      probe4(3 downto 0) => pcie_axi_lite_v1_0_0_m_axis_tx_tuser(3 downto 0),
      probe5(0) => pcie_axi_lite_v1_0_0_m_axis_tx_tvalid,
      probe6(63 downto 0) => pcie_7x_0_m_axis_rx_tdata(63 downto 0),
      probe7(7 downto 0) => pcie_7x_0_m_axis_rx_tkeep(7 downto 0),
      probe8(0) => pcie_7x_0_m_axis_rx_tlast,
      probe9(0) => pcie_7x_0_m_axis_rx_tvalid
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
      m_axis_rx_tready => pcie_axi_lite_v1_0_0_s_axis_rx_tready,
      m_axis_rx_tuser(21 downto 0) => pcie_7x_0_m_axis_rx_tuser(21 downto 0),
      m_axis_rx_tvalid => pcie_7x_0_m_axis_rx_tvalid,
      pci_exp_rxn(3 downto 0) => pcie_7x_0_pcie_7x_mgt_rxn(3 downto 0),
      pci_exp_rxp(3 downto 0) => pcie_7x_0_pcie_7x_mgt_rxp(3 downto 0),
      pci_exp_txn(3 downto 0) => pcie_7x_0_pcie_7x_mgt_txn(3 downto 0),
      pci_exp_txp(3 downto 0) => pcie_7x_0_pcie_7x_mgt_txp(3 downto 0),
      s_axis_tx_tdata(63 downto 0) => pcie_axi_lite_v1_0_0_m_axis_tx_tdata(63 downto 0),
      s_axis_tx_tkeep(7 downto 0) => pcie_axi_lite_v1_0_0_m_axis_tx_tkeep(7 downto 0),
      s_axis_tx_tlast => pcie_axi_lite_v1_0_0_m_axis_tx_tlast,
      s_axis_tx_tready => pcie_7x_0_s_axis_tx_tready,
      s_axis_tx_tuser(3 downto 0) => pcie_axi_lite_v1_0_0_m_axis_tx_tuser(3 downto 0),
      s_axis_tx_tvalid => pcie_axi_lite_v1_0_0_m_axis_tx_tvalid,
      sys_clk => util_ds_buf_0_IBUF_OUT(0),
      sys_rst_n => sys_rst_n_1,
      user_app_rdy => NLW_pcie_7x_0_user_app_rdy_UNCONNECTED,
      user_clk_out => clk_wiz_clk_out1,
      user_lnk_up => pcie_7x_0_user_lnk_up,
      user_reset_out => pcie_7x_0_user_reset_out
    );
pcie_axi_lite_v1_0_0: component design_1_pcie_axi_lite_v1_0_0_1
     port map (
      M_AXI_ARADDR(31 downto 0) => pcie_axi_lite_v1_0_0_M_AXI_ARADDR(31 downto 0),
      M_AXI_ARESETN => rst_clk_wiz_100M_peripheral_aresetn(0),
      M_AXI_ARREADY => pcie_axi_lite_v1_0_0_M_AXI_ARREADY,
      M_AXI_ARVALID => pcie_axi_lite_v1_0_0_M_AXI_ARVALID,
      M_AXI_AWADDR(31 downto 0) => pcie_axi_lite_v1_0_0_M_AXI_AWADDR(31 downto 0),
      M_AXI_AWREADY => pcie_axi_lite_v1_0_0_M_AXI_AWREADY,
      M_AXI_AWVALID => pcie_axi_lite_v1_0_0_M_AXI_AWVALID,
      M_AXI_BREADY => pcie_axi_lite_v1_0_0_M_AXI_BREADY,
      M_AXI_BRESP(1 downto 0) => pcie_axi_lite_v1_0_0_M_AXI_BRESP(1 downto 0),
      M_AXI_BVALID => pcie_axi_lite_v1_0_0_M_AXI_BVALID,
      M_AXI_RDATA(31 downto 0) => pcie_axi_lite_v1_0_0_M_AXI_RDATA(31 downto 0),
      M_AXI_RREADY => pcie_axi_lite_v1_0_0_M_AXI_RREADY,
      M_AXI_RRESP(1 downto 0) => pcie_axi_lite_v1_0_0_M_AXI_RRESP(1 downto 0),
      M_AXI_RVALID => pcie_axi_lite_v1_0_0_M_AXI_RVALID,
      M_AXI_WDATA(31 downto 0) => pcie_axi_lite_v1_0_0_M_AXI_WDATA(31 downto 0),
      M_AXI_WREADY => pcie_axi_lite_v1_0_0_M_AXI_WREADY,
      M_AXI_WSTRB(3 downto 0) => pcie_axi_lite_v1_0_0_M_AXI_WSTRB(3 downto 0),
      M_AXI_WVALID => pcie_axi_lite_v1_0_0_M_AXI_WVALID,
      m_axis_tx_tdata(63 downto 0) => pcie_axi_lite_v1_0_0_m_axis_tx_tdata(63 downto 0),
      m_axis_tx_tkeep(7 downto 0) => pcie_axi_lite_v1_0_0_m_axis_tx_tkeep(7 downto 0),
      m_axis_tx_tlast => pcie_axi_lite_v1_0_0_m_axis_tx_tlast,
      m_axis_tx_tready => pcie_7x_0_s_axis_tx_tready,
      m_axis_tx_tuser(3 downto 0) => pcie_axi_lite_v1_0_0_m_axis_tx_tuser(3 downto 0),
      m_axis_tx_tvalid => pcie_axi_lite_v1_0_0_m_axis_tx_tvalid,
      s_axis_rx_tdata(63 downto 0) => pcie_7x_0_m_axis_rx_tdata(63 downto 0),
      s_axis_rx_tkeep(7 downto 0) => pcie_7x_0_m_axis_rx_tkeep(7 downto 0),
      s_axis_rx_tlast => pcie_7x_0_m_axis_rx_tlast,
      s_axis_rx_tready => pcie_axi_lite_v1_0_0_s_axis_rx_tready,
      s_axis_rx_tuser(21 downto 0) => pcie_7x_0_m_axis_rx_tuser(21 downto 0),
      s_axis_rx_tvalid => pcie_7x_0_m_axis_rx_tvalid,
      user_clk => clk_wiz_clk_out1,
      user_lnk_up => pcie_7x_0_user_lnk_up
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
      peripheral_aresetn(0) => rst_clk_wiz_100M_peripheral_aresetn(0),
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
