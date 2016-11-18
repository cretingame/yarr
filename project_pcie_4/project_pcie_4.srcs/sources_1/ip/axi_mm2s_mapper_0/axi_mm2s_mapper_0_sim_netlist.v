// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
// Date        : Tue Oct 18 17:00:03 2016
// Host        : spikepig.dhcp.lbl.gov running 64-bit CentOS Linux release 7.2.1511 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/asautaux/yarr/project_pcie_3/project_pcie_3.srcs/sources_1/ip/axi_mm2s_mapper_0/axi_mm2s_mapper_0_sim_netlist.v
// Design      : axi_mm2s_mapper_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi_mm2s_mapper_0,axi_mm2s_mapper_v1_1_8_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_mm2s_mapper_v1_1_8_top,Vivado 2016.2" *) 
(* NotValidForBitStream *)
module axi_mm2s_mapper_0
   (aclk,
    aresetn,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [0:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWUSER" *) output [3:0]m_axi_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WUSER" *) output [3:0]m_axi_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BUSER" *) input [3:0]m_axi_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [0:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARUSER" *) output [3:0]m_axi_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RUSER" *) input [3:0]m_axi_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) output m_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [63:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input [7:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TID" *) input [2:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [63:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [7:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TID" *) output [2:0]m_axis_tid;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire [3:0]m_axi_aruser;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire [3:0]m_axi_awuser;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [3:0]m_axi_buser;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire [3:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire [3:0]m_axi_wuser;
  wire m_axi_wvalid;
  wire [63:0]m_axis_tdata;
  wire [2:0]m_axis_tid;
  wire [7:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [63:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire NLW_inst_s_axi_arready_UNCONNECTED;
  wire NLW_inst_s_axi_awready_UNCONNECTED;
  wire NLW_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_inst_s_axi_wready_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;
  wire [3:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TID_WIDTH = "3" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "4" *) 
  (* C_AXI_AWUSER_WIDTH = "4" *) 
  (* C_AXI_BUSER_WIDTH = "4" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_RUSER_WIDTH = "4" *) 
  (* C_AXI_SUPPORTS_REGION_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "1" *) 
  (* C_AXI_WUSER_WIDTH = "4" *) 
  (* C_FAMILY = "kintex7" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_AXI_ARADDR_INDEX = "0" *) 
  (* G_AXI_ARADDR_WIDTH = "32" *) 
  (* G_AXI_ARBURST_INDEX = "38" *) 
  (* G_AXI_ARBURST_WIDTH = "2" *) 
  (* G_AXI_ARCACHE_INDEX = "40" *) 
  (* G_AXI_ARCACHE_WIDTH = "4" *) 
  (* G_AXI_ARID_INDEX = "53" *) 
  (* G_AXI_ARID_WIDTH = "1" *) 
  (* G_AXI_ARLEN_INDEX = "44" *) 
  (* G_AXI_ARLEN_WIDTH = "8" *) 
  (* G_AXI_ARLOCK_INDEX = "52" *) 
  (* G_AXI_ARLOCK_WIDTH = "1" *) 
  (* G_AXI_ARPAYLOAD_WIDTH = "62" *) 
  (* G_AXI_ARPROT_INDEX = "32" *) 
  (* G_AXI_ARPROT_WIDTH = "3" *) 
  (* G_AXI_ARQOS_INDEX = "54" *) 
  (* G_AXI_ARQOS_WIDTH = "4" *) 
  (* G_AXI_ARREGION_INDEX = "58" *) 
  (* G_AXI_ARREGION_WIDTH = "0" *) 
  (* G_AXI_ARSIZE_INDEX = "35" *) 
  (* G_AXI_ARSIZE_WIDTH = "3" *) 
  (* G_AXI_ARUSER_INDEX = "58" *) 
  (* G_AXI_ARUSER_WIDTH = "4" *) 
  (* G_AXI_AWADDR_INDEX = "0" *) 
  (* G_AXI_AWADDR_WIDTH = "32" *) 
  (* G_AXI_AWBURST_INDEX = "38" *) 
  (* G_AXI_AWBURST_WIDTH = "2" *) 
  (* G_AXI_AWCACHE_INDEX = "40" *) 
  (* G_AXI_AWCACHE_WIDTH = "4" *) 
  (* G_AXI_AWID_INDEX = "53" *) 
  (* G_AXI_AWID_WIDTH = "1" *) 
  (* G_AXI_AWLEN_INDEX = "44" *) 
  (* G_AXI_AWLEN_WIDTH = "8" *) 
  (* G_AXI_AWLOCK_INDEX = "52" *) 
  (* G_AXI_AWLOCK_WIDTH = "1" *) 
  (* G_AXI_AWPAYLOAD_WIDTH = "62" *) 
  (* G_AXI_AWPROT_INDEX = "32" *) 
  (* G_AXI_AWPROT_WIDTH = "3" *) 
  (* G_AXI_AWQOS_INDEX = "54" *) 
  (* G_AXI_AWQOS_WIDTH = "4" *) 
  (* G_AXI_AWREGION_INDEX = "58" *) 
  (* G_AXI_AWREGION_WIDTH = "0" *) 
  (* G_AXI_AWSIZE_INDEX = "35" *) 
  (* G_AXI_AWSIZE_WIDTH = "3" *) 
  (* G_AXI_AWUSER_INDEX = "58" *) 
  (* G_AXI_AWUSER_WIDTH = "4" *) 
  (* G_AXI_BID_INDEX = "2" *) 
  (* G_AXI_BID_WIDTH = "1" *) 
  (* G_AXI_BPAYLOAD_WIDTH = "7" *) 
  (* G_AXI_BRESP_INDEX = "0" *) 
  (* G_AXI_BRESP_WIDTH = "2" *) 
  (* G_AXI_BUSER_INDEX = "3" *) 
  (* G_AXI_BUSER_WIDTH = "4" *) 
  (* G_AXI_RDATA_INDEX = "0" *) 
  (* G_AXI_RDATA_WIDTH = "32" *) 
  (* G_AXI_RID_INDEX = "35" *) 
  (* G_AXI_RID_WIDTH = "1" *) 
  (* G_AXI_RLAST_INDEX = "34" *) 
  (* G_AXI_RLAST_WIDTH = "1" *) 
  (* G_AXI_RPAYLOAD_WIDTH = "40" *) 
  (* G_AXI_RRESP_INDEX = "32" *) 
  (* G_AXI_RRESP_WIDTH = "2" *) 
  (* G_AXI_RUSER_INDEX = "36" *) 
  (* G_AXI_RUSER_WIDTH = "4" *) 
  (* G_AXI_WDATA_INDEX = "0" *) 
  (* G_AXI_WDATA_WIDTH = "32" *) 
  (* G_AXI_WID_INDEX = "37" *) 
  (* G_AXI_WID_WIDTH = "0" *) 
  (* G_AXI_WLAST_INDEX = "36" *) 
  (* G_AXI_WLAST_WIDTH = "1" *) 
  (* G_AXI_WPAYLOAD_WIDTH = "41" *) 
  (* G_AXI_WSTRB_INDEX = "32" *) 
  (* G_AXI_WSTRB_WIDTH = "4" *) 
  (* G_AXI_WUSER_INDEX = "37" *) 
  (* G_AXI_WUSER_WIDTH = "4" *) 
  (* LP_AR_TDEST = "3'b010" *) 
  (* LP_AW_TDEST = "3'b001" *) 
  (* LP_B_TDEST = "3'b000" *) 
  (* LP_LOG_M_AX_FIFO_DEPTH = "4" *) 
  (* LP_M_AX_FIFO_DEPTH = "16" *) 
  (* LP_R_TDEST = "3'b011" *) 
  (* LP_W_TDEST = "3'b100" *) 
  axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(m_axi_aruser),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(m_axi_awuser),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(m_axi_buser),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(m_axi_ruser),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(m_axi_wuser),
        .m_axi_wvalid(m_axi_wvalid),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[3:0]),
        .s_axi_bvalid(NLW_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_inst_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[3:0]),
        .s_axi_rvalid(NLW_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b1),
        .s_axi_wready(NLW_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axi_infrastructure_v1_1_0_axic_srl_fifo" *) 
module axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo
   (m_int_tdata,
    m_int_tvalid,
    m_axi_bready,
    s_ready3__3,
    m_axi_bresp,
    aclk,
    m_axi_bid,
    m_axi_buser,
    SS,
    areset_r_reg,
    fifo_index1__1,
    aresetn,
    m_axi_bvalid,
    m_axis_tready,
    Q,
    arb_gnt_i);
  output [6:0]m_int_tdata;
  output [0:0]m_int_tvalid;
  output m_axi_bready;
  output s_ready3__3;
  input [1:0]m_axi_bresp;
  input aclk;
  input [0:0]m_axi_bid;
  input [3:0]m_axi_buser;
  input [0:0]SS;
  input areset_r_reg;
  input fifo_index1__1;
  input aresetn;
  input m_axi_bvalid;
  input m_axis_tready;
  input [0:0]Q;
  input [0:0]arb_gnt_i;

  wire [0:0]Q;
  wire [0:0]SS;
  wire aclk;
  wire [0:0]arb_gnt_i;
  wire areset_r_reg;
  wire aresetn;
  wire fifo_index1__1;
  wire fifo_index26_out;
  wire \fifo_index[0]_i_1_n_0 ;
  wire \fifo_index[1]_i_1__1_n_0 ;
  wire \fifo_index[2]_i_1__1_n_0 ;
  wire \fifo_index[3]_i_1__1_n_0 ;
  wire \fifo_index[3]_i_2__1_n_0 ;
  wire [3:0]fifo_index_reg__0;
  wire [0:0]m_axi_bid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [3:0]m_axi_buser;
  wire m_axi_bvalid;
  wire m_axis_tready;
  wire [6:0]m_int_tdata;
  wire [0:0]m_int_tvalid;
  wire m_valid_i_1__1_n_0;
  wire m_valid_i_2_n_0;
  wire push;
  wire s_ready3__3;

  LUT1 #(
    .INIT(2'h1)) 
    \fifo_index[0]_i_1 
       (.I0(fifo_index_reg__0[0]),
        .O(\fifo_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \fifo_index[1]_i_1__1 
       (.I0(fifo_index_reg__0[0]),
        .I1(fifo_index26_out),
        .I2(fifo_index_reg__0[1]),
        .O(\fifo_index[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \fifo_index[2]_i_1__1 
       (.I0(fifo_index26_out),
        .I1(fifo_index_reg__0[0]),
        .I2(fifo_index_reg__0[2]),
        .I3(fifo_index_reg__0[1]),
        .O(\fifo_index[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7888788878888888)) 
    \fifo_index[3]_i_1__1 
       (.I0(m_axi_bvalid),
        .I1(m_axi_bready),
        .I2(m_int_tvalid),
        .I3(m_axis_tready),
        .I4(Q),
        .I5(arb_gnt_i),
        .O(\fifo_index[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \fifo_index[3]_i_2__1 
       (.I0(fifo_index_reg__0[1]),
        .I1(fifo_index26_out),
        .I2(fifo_index_reg__0[0]),
        .I3(fifo_index_reg__0[3]),
        .I4(fifo_index_reg__0[2]),
        .O(\fifo_index[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0008888888888888)) 
    \fifo_index[3]_i_3__1 
       (.I0(m_axi_bready),
        .I1(m_axi_bvalid),
        .I2(arb_gnt_i),
        .I3(Q),
        .I4(m_axis_tready),
        .I5(m_int_tvalid),
        .O(fifo_index26_out));
  FDSE \fifo_index_reg[0] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1__1_n_0 ),
        .D(\fifo_index[0]_i_1_n_0 ),
        .Q(fifo_index_reg__0[0]),
        .S(SS));
  FDSE \fifo_index_reg[1] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1__1_n_0 ),
        .D(\fifo_index[1]_i_1__1_n_0 ),
        .Q(fifo_index_reg__0[1]),
        .S(SS));
  FDSE \fifo_index_reg[2] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1__1_n_0 ),
        .D(\fifo_index[2]_i_1__1_n_0 ),
        .Q(fifo_index_reg__0[2]),
        .S(SS));
  FDSE \fifo_index_reg[3] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1__1_n_0 ),
        .D(\fifo_index[3]_i_2__1_n_0 ),
        .Q(fifo_index_reg__0[3]),
        .S(SS));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[0].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[0].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_axi_bresp[0]),
        .Q(m_int_tdata[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_data_bit[0].u_srl_fifo_i_1 
       (.I0(m_axi_bvalid),
        .I1(m_axi_bready),
        .O(push));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[1].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[1].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_axi_bresp[1]),
        .Q(m_int_tdata[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[2].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[2].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_axi_bid),
        .Q(m_int_tdata[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[3].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[3].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_axi_buser[0]),
        .Q(m_int_tdata[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[4].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[4].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_axi_buser[1]),
        .Q(m_int_tdata[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[5].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[5].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_axi_buser[2]),
        .Q(m_int_tdata[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[6].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[6].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_axi_buser[3]),
        .Q(m_int_tdata[6]));
  LUT4 #(
    .INIT(16'h00F8)) 
    m_valid_i_1__1
       (.I0(m_axi_bvalid),
        .I1(m_axi_bready),
        .I2(m_int_tvalid),
        .I3(m_valid_i_2_n_0),
        .O(m_valid_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h00000002FFFFFFFF)) 
    m_valid_i_2
       (.I0(fifo_index1__1),
        .I1(fifo_index_reg__0[1]),
        .I2(fifo_index_reg__0[0]),
        .I3(fifo_index_reg__0[3]),
        .I4(fifo_index_reg__0[2]),
        .I5(aresetn),
        .O(m_valid_i_2_n_0));
  FDRE m_valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_1__1_n_0),
        .Q(m_int_tvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    s_ready_i_4
       (.I0(fifo_index_reg__0[2]),
        .I1(fifo_index_reg__0[3]),
        .I2(fifo_index_reg__0[1]),
        .I3(fifo_index_reg__0[0]),
        .I4(fifo_index26_out),
        .O(s_ready3__3));
  FDRE s_ready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(areset_r_reg),
        .Q(m_axi_bready),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "axi_infrastructure_v1_1_0_axic_srl_fifo" *) 
module axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0
   (m_axi_awaddr,
    m_axi_awprot,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awlen,
    m_axi_awlock,
    m_axi_awid,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    s_axis_tready,
    s_axis_tdata,
    aclk,
    SS,
    m_tready_from_decoded_slave0__1,
    \gen_tdest_routing.decode_err_r_reg ,
    push,
    \s_axis_tid_2__s_port_] ,
    m_axi_awready,
    s_axis_tvalid,
    s_axis_tid,
    aresetn,
    areset_r1);
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [7:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [0:0]m_axi_awid;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awuser;
  output m_axi_awvalid;
  output s_axis_tready;
  input [61:0]s_axis_tdata;
  input aclk;
  input [0:0]SS;
  input [0:0]m_tready_from_decoded_slave0__1;
  input \gen_tdest_routing.decode_err_r_reg ;
  input push;
  input \s_axis_tid_2__s_port_] ;
  input m_axi_awready;
  input s_axis_tvalid;
  input [2:0]s_axis_tid;
  input aresetn;
  input areset_r1;

  wire [0:0]SS;
  wire aclk;
  wire areset_r1;
  wire aresetn;
  wire fifo_index26_out;
  wire \fifo_index[0]_i_1__0_n_0 ;
  wire \fifo_index[1]_i_1__0_n_0 ;
  wire \fifo_index[2]_i_1__0_n_0 ;
  wire \fifo_index[3]_i_1__0_n_0 ;
  wire \fifo_index[3]_i_2__0_n_0 ;
  wire [3:0]fifo_index_reg__0;
  wire \gen_tdest_routing.decode_err_r_reg ;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [0:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire [3:0]m_axi_awuser;
  wire m_axi_awvalid;
  wire [0:0]m_tready_from_decoded_slave0__1;
  wire m_valid_i_1_n_0;
  wire m_valid_i_2__0_n_0;
  wire push;
  wire push_0;
  wire [61:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tid_2__s_net_1;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [1:1]s_int_tready;
  wire s_ready_i_1__0_n_0;
  wire s_ready_i_2_n_0;

  assign s_axis_tid_2__s_net_1 = \s_axis_tid_2__s_port_] ;
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_index[0]_i_1__0 
       (.I0(fifo_index_reg__0[0]),
        .O(\fifo_index[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA6665999)) 
    \fifo_index[1]_i_1__0 
       (.I0(fifo_index_reg__0[0]),
        .I1(push_0),
        .I2(m_axi_awvalid),
        .I3(m_axi_awready),
        .I4(fifo_index_reg__0[1]),
        .O(\fifo_index[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF7000FF70008F)) 
    \fifo_index[2]_i_1__0 
       (.I0(m_axi_awready),
        .I1(m_axi_awvalid),
        .I2(push_0),
        .I3(fifo_index_reg__0[0]),
        .I4(fifo_index_reg__0[2]),
        .I5(fifo_index_reg__0[1]),
        .O(\fifo_index[2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \fifo_index[3]_i_1__0 
       (.I0(push_0),
        .I1(m_axi_awvalid),
        .I2(m_axi_awready),
        .O(\fifo_index[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \fifo_index[3]_i_2__0 
       (.I0(fifo_index_reg__0[1]),
        .I1(fifo_index26_out),
        .I2(fifo_index_reg__0[0]),
        .I3(fifo_index_reg__0[3]),
        .I4(fifo_index_reg__0[2]),
        .O(\fifo_index[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \fifo_index[3]_i_3__0 
       (.I0(m_axi_awready),
        .I1(m_axi_awvalid),
        .I2(push_0),
        .O(fifo_index26_out));
  FDSE \fifo_index_reg[0] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1__0_n_0 ),
        .D(\fifo_index[0]_i_1__0_n_0 ),
        .Q(fifo_index_reg__0[0]),
        .S(SS));
  FDSE \fifo_index_reg[1] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1__0_n_0 ),
        .D(\fifo_index[1]_i_1__0_n_0 ),
        .Q(fifo_index_reg__0[1]),
        .S(SS));
  FDSE \fifo_index_reg[2] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1__0_n_0 ),
        .D(\fifo_index[2]_i_1__0_n_0 ),
        .Q(fifo_index_reg__0[2]),
        .S(SS));
  FDSE \fifo_index_reg[3] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1__0_n_0 ),
        .D(\fifo_index[3]_i_2__0_n_0 ),
        .Q(fifo_index_reg__0[3]),
        .S(SS));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[0].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[0].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[0]),
        .Q(m_axi_awaddr[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[10].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[10].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[10]),
        .Q(m_axi_awaddr[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[11].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[11].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[11]),
        .Q(m_axi_awaddr[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[12].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[12].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[12]),
        .Q(m_axi_awaddr[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[13].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[13].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[13]),
        .Q(m_axi_awaddr[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[14].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[14].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[14]),
        .Q(m_axi_awaddr[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[15].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[15].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[15]),
        .Q(m_axi_awaddr[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[16].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[16].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[16]),
        .Q(m_axi_awaddr[16]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[17].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[17].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[17]),
        .Q(m_axi_awaddr[17]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[18].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[18].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[18]),
        .Q(m_axi_awaddr[18]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[19].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[19].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[19]),
        .Q(m_axi_awaddr[19]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[1].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[1].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[1]),
        .Q(m_axi_awaddr[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[20].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[20].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[20]),
        .Q(m_axi_awaddr[20]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[21].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[21].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[21]),
        .Q(m_axi_awaddr[21]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[22].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[22].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[22]),
        .Q(m_axi_awaddr[22]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[23].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[23].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[23]),
        .Q(m_axi_awaddr[23]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[24].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[24].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[24]),
        .Q(m_axi_awaddr[24]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[25].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[25].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[25]),
        .Q(m_axi_awaddr[25]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[26].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[26].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[26]),
        .Q(m_axi_awaddr[26]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[27].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[27].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[27]),
        .Q(m_axi_awaddr[27]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[28].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[28].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[28]),
        .Q(m_axi_awaddr[28]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[29].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[29].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[29]),
        .Q(m_axi_awaddr[29]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[2].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[2].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[2]),
        .Q(m_axi_awaddr[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[30].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[30].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[30]),
        .Q(m_axi_awaddr[30]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[31].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[31].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[31]),
        .Q(m_axi_awaddr[31]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[32].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[32].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[32]),
        .Q(m_axi_awprot[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[33].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[33].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[33]),
        .Q(m_axi_awprot[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[34].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[34].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[34]),
        .Q(m_axi_awprot[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[35].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[35].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[35]),
        .Q(m_axi_awsize[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[36].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[36].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[36]),
        .Q(m_axi_awsize[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[37].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[37].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[37]),
        .Q(m_axi_awsize[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[38].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[38].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[38]),
        .Q(m_axi_awburst[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[39].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[39].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[39]),
        .Q(m_axi_awburst[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[3].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[3].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[3]),
        .Q(m_axi_awaddr[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[40].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[40].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[40]),
        .Q(m_axi_awcache[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[41].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[41].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[41]),
        .Q(m_axi_awcache[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[42].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[42].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[42]),
        .Q(m_axi_awcache[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[43].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[43].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[43]),
        .Q(m_axi_awcache[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[44].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[44].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[44]),
        .Q(m_axi_awlen[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[45].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[45].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[45]),
        .Q(m_axi_awlen[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[46].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[46].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[46]),
        .Q(m_axi_awlen[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[47].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[47].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[47]),
        .Q(m_axi_awlen[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[48].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[48].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[48]),
        .Q(m_axi_awlen[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[49].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[49].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[49]),
        .Q(m_axi_awlen[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[4].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[4].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[4]),
        .Q(m_axi_awaddr[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[50].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[50].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[50]),
        .Q(m_axi_awlen[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[51].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[51].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[51]),
        .Q(m_axi_awlen[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[52].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[52].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[52]),
        .Q(m_axi_awlock));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[53].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[53].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[53]),
        .Q(m_axi_awid));
  LUT5 #(
    .INIT(32'h00200000)) 
    \gen_data_bit[53].u_srl_fifo_i_1__0 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tid[2]),
        .I2(s_axis_tid[0]),
        .I3(s_axis_tid[1]),
        .I4(s_int_tready),
        .O(push_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[54].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[54].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[54]),
        .Q(m_axi_awqos[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[55].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[55].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[55]),
        .Q(m_axi_awqos[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[56].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[56].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[56]),
        .Q(m_axi_awqos[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[57].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[57].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[57]),
        .Q(m_axi_awqos[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[58].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[58].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[58]),
        .Q(m_axi_awuser[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[59].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[59].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[59]),
        .Q(m_axi_awuser[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[5].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[5].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[5]),
        .Q(m_axi_awaddr[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[60].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[60].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[60]),
        .Q(m_axi_awuser[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[61].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[61].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[61]),
        .Q(m_axi_awuser[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[6].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[6].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[6]),
        .Q(m_axi_awaddr[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[7].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[7].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[7]),
        .Q(m_axi_awaddr[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[8].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[8].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[8]),
        .Q(m_axi_awaddr[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[9].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[9].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push_0),
        .CLK(aclk),
        .D(s_axis_tdata[9]),
        .Q(m_axi_awaddr[9]));
  LUT5 #(
    .INIT(32'hA2A0AAA0)) 
    m_valid_i_1
       (.I0(aresetn),
        .I1(m_valid_i_2__0_n_0),
        .I2(push_0),
        .I3(m_axi_awvalid),
        .I4(m_axi_awready),
        .O(m_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    m_valid_i_2__0
       (.I0(fifo_index_reg__0[1]),
        .I1(fifo_index_reg__0[0]),
        .I2(fifo_index_reg__0[3]),
        .I3(fifo_index_reg__0[2]),
        .O(m_valid_i_2__0_n_0));
  FDRE m_valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_1_n_0),
        .Q(m_axi_awvalid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    s_axis_tready_INST_0
       (.I0(m_tready_from_decoded_slave0__1),
        .I1(push_0),
        .I2(\gen_tdest_routing.decode_err_r_reg ),
        .I3(push),
        .I4(s_axis_tid_2__s_net_1),
        .O(s_axis_tready));
  LUT6 #(
    .INIT(64'hEAFFFFFFAAEAAAEA)) 
    s_ready_i_1__0
       (.I0(areset_r1),
        .I1(m_axi_awready),
        .I2(m_axi_awvalid),
        .I3(push_0),
        .I4(s_ready_i_2_n_0),
        .I5(s_int_tready),
        .O(s_ready_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    s_ready_i_2
       (.I0(fifo_index_reg__0[0]),
        .I1(fifo_index_reg__0[1]),
        .I2(fifo_index_reg__0[3]),
        .I3(fifo_index_reg__0[2]),
        .O(s_ready_i_2_n_0));
  FDRE s_ready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_1__0_n_0),
        .Q(s_int_tready),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "axi_infrastructure_v1_1_0_axic_srl_fifo" *) 
module axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized1
   (m_axi_araddr,
    push,
    m_axi_arprot,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arcache,
    m_axi_arlen,
    m_axi_arlock,
    m_axi_arid,
    m_axi_arqos,
    m_axi_aruser,
    SS,
    m_axi_arvalid,
    s_axis_tdata,
    aclk,
    m_axi_arready,
    s_axis_tvalid,
    s_axis_tid,
    aresetn,
    areset_r1);
  output [31:0]m_axi_araddr;
  output push;
  output [2:0]m_axi_arprot;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [3:0]m_axi_arcache;
  output [7:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  output [0:0]m_axi_arid;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_aruser;
  output [0:0]SS;
  output m_axi_arvalid;
  input [61:0]s_axis_tdata;
  input aclk;
  input m_axi_arready;
  input s_axis_tvalid;
  input [2:0]s_axis_tid;
  input aresetn;
  input areset_r1;

  wire [0:0]SS;
  wire aclk;
  wire areset_r1;
  wire aresetn;
  wire fifo_index26_out;
  wire \fifo_index[0]_i_1__1_n_0 ;
  wire \fifo_index[1]_i_1_n_0 ;
  wire \fifo_index[2]_i_1_n_0 ;
  wire \fifo_index[3]_i_1_n_0 ;
  wire \fifo_index[3]_i_2_n_0 ;
  wire [3:0]fifo_index_reg__0;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [0:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire [3:0]m_axi_aruser;
  wire m_axi_arvalid;
  wire m_valid_i_1__0_n_0;
  wire m_valid_i_2__1_n_0;
  wire push;
  wire [61:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tvalid;
  wire [2:2]s_int_tready;
  wire s_ready_i_1__1_n_0;
  wire s_ready_i_2__0_n_0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_index[0]_i_1__1 
       (.I0(fifo_index_reg__0[0]),
        .O(\fifo_index[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA6665999)) 
    \fifo_index[1]_i_1 
       (.I0(fifo_index_reg__0[0]),
        .I1(push),
        .I2(m_axi_arvalid),
        .I3(m_axi_arready),
        .I4(fifo_index_reg__0[1]),
        .O(\fifo_index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF7000FF70008F)) 
    \fifo_index[2]_i_1 
       (.I0(m_axi_arready),
        .I1(m_axi_arvalid),
        .I2(push),
        .I3(fifo_index_reg__0[0]),
        .I4(fifo_index_reg__0[2]),
        .I5(fifo_index_reg__0[1]),
        .O(\fifo_index[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \fifo_index[3]_i_1 
       (.I0(push),
        .I1(m_axi_arvalid),
        .I2(m_axi_arready),
        .O(\fifo_index[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \fifo_index[3]_i_2 
       (.I0(fifo_index_reg__0[1]),
        .I1(fifo_index26_out),
        .I2(fifo_index_reg__0[0]),
        .I3(fifo_index_reg__0[3]),
        .I4(fifo_index_reg__0[2]),
        .O(\fifo_index[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \fifo_index[3]_i_3 
       (.I0(m_axi_arready),
        .I1(m_axi_arvalid),
        .I2(push),
        .O(fifo_index26_out));
  FDSE \fifo_index_reg[0] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1_n_0 ),
        .D(\fifo_index[0]_i_1__1_n_0 ),
        .Q(fifo_index_reg__0[0]),
        .S(SS));
  FDSE \fifo_index_reg[1] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1_n_0 ),
        .D(\fifo_index[1]_i_1_n_0 ),
        .Q(fifo_index_reg__0[1]),
        .S(SS));
  FDSE \fifo_index_reg[2] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1_n_0 ),
        .D(\fifo_index[2]_i_1_n_0 ),
        .Q(fifo_index_reg__0[2]),
        .S(SS));
  FDSE \fifo_index_reg[3] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1_n_0 ),
        .D(\fifo_index[3]_i_2_n_0 ),
        .Q(fifo_index_reg__0[3]),
        .S(SS));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[0].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[0].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[0]),
        .Q(m_axi_araddr[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[10].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[10].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[10]),
        .Q(m_axi_araddr[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[11].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[11].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[11]),
        .Q(m_axi_araddr[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[12].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[12].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[12]),
        .Q(m_axi_araddr[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[13].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[13].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[13]),
        .Q(m_axi_araddr[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[14].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[14].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[14]),
        .Q(m_axi_araddr[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[15].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[15].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[15]),
        .Q(m_axi_araddr[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[16].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[16].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[16]),
        .Q(m_axi_araddr[16]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[17].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[17].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[17]),
        .Q(m_axi_araddr[17]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[18].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[18].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[18]),
        .Q(m_axi_araddr[18]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[19].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[19].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[19]),
        .Q(m_axi_araddr[19]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[1].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[1].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[1]),
        .Q(m_axi_araddr[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[20].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[20].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[20]),
        .Q(m_axi_araddr[20]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[21].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[21].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[21]),
        .Q(m_axi_araddr[21]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[22].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[22].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[22]),
        .Q(m_axi_araddr[22]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[23].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[23].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[23]),
        .Q(m_axi_araddr[23]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[24].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[24].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[24]),
        .Q(m_axi_araddr[24]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[25].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[25].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[25]),
        .Q(m_axi_araddr[25]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[26].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[26].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[26]),
        .Q(m_axi_araddr[26]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[27].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[27].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[27]),
        .Q(m_axi_araddr[27]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[28].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[28].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[28]),
        .Q(m_axi_araddr[28]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[29].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[29].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[29]),
        .Q(m_axi_araddr[29]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[2].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[2].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[2]),
        .Q(m_axi_araddr[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[30].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[30].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[30]),
        .Q(m_axi_araddr[30]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[31].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[31].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[31]),
        .Q(m_axi_araddr[31]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[32].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[32].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[32]),
        .Q(m_axi_arprot[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[33].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[33].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[33]),
        .Q(m_axi_arprot[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[34].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[34].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[34]),
        .Q(m_axi_arprot[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[35].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[35].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[35]),
        .Q(m_axi_arsize[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[36].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[36].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[36]),
        .Q(m_axi_arsize[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[37].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[37].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[37]),
        .Q(m_axi_arsize[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[38].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[38].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[38]),
        .Q(m_axi_arburst[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[39].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[39].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[39]),
        .Q(m_axi_arburst[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[3].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[3].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[3]),
        .Q(m_axi_araddr[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[40].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[40].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[40]),
        .Q(m_axi_arcache[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[41].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[41].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[41]),
        .Q(m_axi_arcache[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[42].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[42].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[42]),
        .Q(m_axi_arcache[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[43].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[43].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[43]),
        .Q(m_axi_arcache[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[44].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[44].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[44]),
        .Q(m_axi_arlen[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[45].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[45].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[45]),
        .Q(m_axi_arlen[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[46].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[46].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[46]),
        .Q(m_axi_arlen[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[47].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[47].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[47]),
        .Q(m_axi_arlen[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[48].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[48].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[48]),
        .Q(m_axi_arlen[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[49].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[49].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[49]),
        .Q(m_axi_arlen[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[4].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[4].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[4]),
        .Q(m_axi_araddr[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[50].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[50].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[50]),
        .Q(m_axi_arlen[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[51].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[51].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[51]),
        .Q(m_axi_arlen[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[52].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[52].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[52]),
        .Q(m_axi_arlock));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[53].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[53].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[53]),
        .Q(m_axi_arid));
  LUT5 #(
    .INIT(32'h00200000)) 
    \gen_data_bit[53].u_srl_fifo_i_1 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tid[2]),
        .I2(s_axis_tid[1]),
        .I3(s_axis_tid[0]),
        .I4(s_int_tready),
        .O(push));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[54].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[54].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[54]),
        .Q(m_axi_arqos[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[55].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[55].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[55]),
        .Q(m_axi_arqos[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[56].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[56].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[56]),
        .Q(m_axi_arqos[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[57].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[57].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[57]),
        .Q(m_axi_arqos[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[58].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[58].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[58]),
        .Q(m_axi_aruser[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[59].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[59].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[59]),
        .Q(m_axi_aruser[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[5].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[5].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[5]),
        .Q(m_axi_araddr[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[60].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[60].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[60]),
        .Q(m_axi_aruser[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[61].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[61].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[61]),
        .Q(m_axi_aruser[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[6].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[6].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[6]),
        .Q(m_axi_araddr[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[7].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[7].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[7]),
        .Q(m_axi_araddr[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[8].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[8].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[8]),
        .Q(m_axi_araddr[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[9].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[9].u_srl_fifo 
       (.A0(fifo_index_reg__0[0]),
        .A1(fifo_index_reg__0[1]),
        .A2(fifo_index_reg__0[2]),
        .A3(fifo_index_reg__0[3]),
        .CE(push),
        .CLK(aclk),
        .D(s_axis_tdata[9]),
        .Q(m_axi_araddr[9]));
  LUT5 #(
    .INIT(32'hA2A0AAA0)) 
    m_valid_i_1__0
       (.I0(aresetn),
        .I1(m_valid_i_2__1_n_0),
        .I2(push),
        .I3(m_axi_arvalid),
        .I4(m_axi_arready),
        .O(m_valid_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    m_valid_i_2__1
       (.I0(fifo_index_reg__0[1]),
        .I1(fifo_index_reg__0[0]),
        .I2(fifo_index_reg__0[3]),
        .I3(fifo_index_reg__0[2]),
        .O(m_valid_i_2__1_n_0));
  FDRE m_valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_1__0_n_0),
        .Q(m_axi_arvalid),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    s_ready_i_1
       (.I0(aresetn),
        .O(SS));
  LUT6 #(
    .INIT(64'hEAFFFFFFAAEAAAEA)) 
    s_ready_i_1__1
       (.I0(areset_r1),
        .I1(m_axi_arready),
        .I2(m_axi_arvalid),
        .I3(push),
        .I4(s_ready_i_2__0_n_0),
        .I5(s_int_tready),
        .O(s_ready_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    s_ready_i_2__0
       (.I0(fifo_index_reg__0[0]),
        .I1(fifo_index_reg__0[1]),
        .I2(fifo_index_reg__0[3]),
        .I3(fifo_index_reg__0[2]),
        .O(s_ready_i_2__0_n_0));
  FDRE s_ready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_1__1_n_0),
        .Q(s_int_tready),
        .R(SS));
endmodule

(* C_AXIS_TDATA_WIDTH = "64" *) (* C_AXIS_TID_WIDTH = "3" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "4" *) (* C_AXI_AWUSER_WIDTH = "4" *) (* C_AXI_BUSER_WIDTH = "4" *) 
(* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_PROTOCOL = "0" *) 
(* C_AXI_RUSER_WIDTH = "4" *) (* C_AXI_SUPPORTS_REGION_SIGNALS = "0" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "1" *) 
(* C_AXI_WUSER_WIDTH = "4" *) (* C_FAMILY = "kintex7" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_AXI_ARADDR_INDEX = "0" *) (* G_AXI_ARADDR_WIDTH = "32" *) (* G_AXI_ARBURST_INDEX = "38" *) 
(* G_AXI_ARBURST_WIDTH = "2" *) (* G_AXI_ARCACHE_INDEX = "40" *) (* G_AXI_ARCACHE_WIDTH = "4" *) 
(* G_AXI_ARID_INDEX = "53" *) (* G_AXI_ARID_WIDTH = "1" *) (* G_AXI_ARLEN_INDEX = "44" *) 
(* G_AXI_ARLEN_WIDTH = "8" *) (* G_AXI_ARLOCK_INDEX = "52" *) (* G_AXI_ARLOCK_WIDTH = "1" *) 
(* G_AXI_ARPAYLOAD_WIDTH = "62" *) (* G_AXI_ARPROT_INDEX = "32" *) (* G_AXI_ARPROT_WIDTH = "3" *) 
(* G_AXI_ARQOS_INDEX = "54" *) (* G_AXI_ARQOS_WIDTH = "4" *) (* G_AXI_ARREGION_INDEX = "58" *) 
(* G_AXI_ARREGION_WIDTH = "0" *) (* G_AXI_ARSIZE_INDEX = "35" *) (* G_AXI_ARSIZE_WIDTH = "3" *) 
(* G_AXI_ARUSER_INDEX = "58" *) (* G_AXI_ARUSER_WIDTH = "4" *) (* G_AXI_AWADDR_INDEX = "0" *) 
(* G_AXI_AWADDR_WIDTH = "32" *) (* G_AXI_AWBURST_INDEX = "38" *) (* G_AXI_AWBURST_WIDTH = "2" *) 
(* G_AXI_AWCACHE_INDEX = "40" *) (* G_AXI_AWCACHE_WIDTH = "4" *) (* G_AXI_AWID_INDEX = "53" *) 
(* G_AXI_AWID_WIDTH = "1" *) (* G_AXI_AWLEN_INDEX = "44" *) (* G_AXI_AWLEN_WIDTH = "8" *) 
(* G_AXI_AWLOCK_INDEX = "52" *) (* G_AXI_AWLOCK_WIDTH = "1" *) (* G_AXI_AWPAYLOAD_WIDTH = "62" *) 
(* G_AXI_AWPROT_INDEX = "32" *) (* G_AXI_AWPROT_WIDTH = "3" *) (* G_AXI_AWQOS_INDEX = "54" *) 
(* G_AXI_AWQOS_WIDTH = "4" *) (* G_AXI_AWREGION_INDEX = "58" *) (* G_AXI_AWREGION_WIDTH = "0" *) 
(* G_AXI_AWSIZE_INDEX = "35" *) (* G_AXI_AWSIZE_WIDTH = "3" *) (* G_AXI_AWUSER_INDEX = "58" *) 
(* G_AXI_AWUSER_WIDTH = "4" *) (* G_AXI_BID_INDEX = "2" *) (* G_AXI_BID_WIDTH = "1" *) 
(* G_AXI_BPAYLOAD_WIDTH = "7" *) (* G_AXI_BRESP_INDEX = "0" *) (* G_AXI_BRESP_WIDTH = "2" *) 
(* G_AXI_BUSER_INDEX = "3" *) (* G_AXI_BUSER_WIDTH = "4" *) (* G_AXI_RDATA_INDEX = "0" *) 
(* G_AXI_RDATA_WIDTH = "32" *) (* G_AXI_RID_INDEX = "35" *) (* G_AXI_RID_WIDTH = "1" *) 
(* G_AXI_RLAST_INDEX = "34" *) (* G_AXI_RLAST_WIDTH = "1" *) (* G_AXI_RPAYLOAD_WIDTH = "40" *) 
(* G_AXI_RRESP_INDEX = "32" *) (* G_AXI_RRESP_WIDTH = "2" *) (* G_AXI_RUSER_INDEX = "36" *) 
(* G_AXI_RUSER_WIDTH = "4" *) (* G_AXI_WDATA_INDEX = "0" *) (* G_AXI_WDATA_WIDTH = "32" *) 
(* G_AXI_WID_INDEX = "37" *) (* G_AXI_WID_WIDTH = "0" *) (* G_AXI_WLAST_INDEX = "36" *) 
(* G_AXI_WLAST_WIDTH = "1" *) (* G_AXI_WPAYLOAD_WIDTH = "41" *) (* G_AXI_WSTRB_INDEX = "32" *) 
(* G_AXI_WSTRB_WIDTH = "4" *) (* G_AXI_WUSER_INDEX = "37" *) (* G_AXI_WUSER_WIDTH = "4" *) 
(* LP_AR_TDEST = "3'b010" *) (* LP_AW_TDEST = "3'b001" *) (* LP_B_TDEST = "3'b000" *) 
(* LP_LOG_M_AX_FIFO_DEPTH = "4" *) (* LP_M_AX_FIFO_DEPTH = "16" *) (* LP_R_TDEST = "3'b011" *) 
(* LP_W_TDEST = "3'b100" *) (* ORIG_REF_NAME = "axi_mm2s_mapper_v1_1_8_top" *) 
module axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_top
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [3:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [3:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [3:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [3:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [3:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [3:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  input [2:0]s_axis_tid;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tkeep;
  output m_axis_tlast;
  output [2:0]m_axis_tid;

  wire \<const0> ;
  wire aclk;
  wire [0:0]arb_gnt_i;
  wire areset_r1;
  wire aresetn;
  wire clear;
  wire count_is_max;
  wire count_is_max1__1;
  wire count_is_max1__1_0;
  wire count_is_max1__1_1;
  wire count_is_zero;
  wire decr_trans0;
  wire decr_trans02_out;
  wire fifo_index1__1;
  wire [0:0]\gen_decoder[0].axisc_decoder_0/m_tready_from_decoded_slave0__1 ;
  wire [0:0]\gen_transfer_mux[0].axisc_transfer_mux_0/busy_r ;
  wire incr_trans05_out;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [0:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire [3:0]m_axi_aruser;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [0:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire [3:0]m_axi_awuser;
  wire m_axi_awvalid;
  wire [0:0]m_axi_bid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [3:0]m_axi_buser;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire [3:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [63:0]m_axis_tdata;
  wire [2:0]m_axis_tid;
  wire [7:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [6:0]m_int_tdata;
  wire [4:0]m_int_tvalid;
  wire [2:1]m_int_tvalid__0;
  wire push;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire [3:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire [3:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire [3:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire [63:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tready;
  wire s_axis_tready_INST_0_i_2_n_0;
  wire s_axis_tvalid;
  wire s_ready3__3;
  wire u_axis_switch_v1_1_9_axis_switch_1x5_n_0;
  wire u_axis_switch_v1_1_9_axis_switch_5x1_n_78;
  wire u_axis_switch_v1_1_9_axis_switch_5x1_n_82;
  wire u_axis_switch_v1_1_9_axis_switch_5x1_n_87;
  wire u_axis_switch_v1_1_9_axis_switch_5x1_n_90;
  wire u_axis_switch_v1_1_9_axis_switch_5x1_n_94;
  wire u_transaction_counter_ar_to_r_n_0;

  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_wdata[31:0] = s_axis_tdata[31:0];
  assign m_axi_wlast = s_axis_tdata[36];
  assign m_axi_wstrb[3:0] = s_axis_tdata[35:32];
  assign m_axi_wuser[3:0] = s_axis_tdata[40:37];
  assign s_axi_bid[0] = s_axis_tdata[2];
  assign s_axi_bresp[1:0] = s_axis_tdata[1:0];
  assign s_axi_buser[3:0] = s_axis_tdata[6:3];
  assign s_axi_rdata[31:0] = s_axis_tdata[31:0];
  assign s_axi_rid[0] = s_axis_tdata[35];
  assign s_axi_rlast = s_axis_tdata[34];
  assign s_axi_rresp[1:0] = s_axis_tdata[33:32];
  assign s_axi_ruser[3:0] = s_axis_tdata[39:36];
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    m_axi_wvalid_INST_0
       (.I0(s_axis_tid[1]),
        .I1(s_axis_tid[0]),
        .I2(s_axis_tvalid),
        .I3(s_axis_tid[2]),
        .O(m_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    s_axi_bvalid_INST_0
       (.I0(s_axis_tid[1]),
        .I1(s_axis_tid[0]),
        .I2(s_axis_tid[2]),
        .I3(s_axis_tvalid),
        .O(s_axi_bvalid));
  LUT6 #(
    .INIT(64'h000C0000A0000000)) 
    s_axis_tready_INST_0_i_2
       (.I0(s_axi_rready),
        .I1(m_axi_wready),
        .I2(s_axis_tid[1]),
        .I3(s_axis_tid[0]),
        .I4(s_axis_tvalid),
        .I5(s_axis_tid[2]),
        .O(s_axis_tready_INST_0_i_2_n_0));
  axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized1 u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar
       (.SS(clear),
        .aclk(aclk),
        .areset_r1(areset_r1),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(m_axi_arid),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(m_axi_aruser),
        .m_axi_arvalid(m_axi_arvalid),
        .push(push),
        .s_axis_tdata(s_axis_tdata[61:0]),
        .s_axis_tid(s_axis_tid),
        .s_axis_tvalid(s_axis_tvalid));
  axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0 u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw
       (.SS(clear),
        .aclk(aclk),
        .areset_r1(areset_r1),
        .aresetn(aresetn),
        .\gen_tdest_routing.decode_err_r_reg (u_axis_switch_v1_1_9_axis_switch_1x5_n_0),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(m_axi_awid),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(m_axi_awuser),
        .m_axi_awvalid(m_axi_awvalid),
        .m_tready_from_decoded_slave0__1(\gen_decoder[0].axisc_decoder_0/m_tready_from_decoded_slave0__1 ),
        .push(push),
        .s_axis_tdata(s_axis_tdata[61:0]),
        .s_axis_tid(s_axis_tid),
        .\s_axis_tid_2__s_port_] (s_axis_tready_INST_0_i_2_n_0),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
  axi_mm2s_mapper_0_axi_infrastructure_v1_1_0_axic_srl_fifo u_axi_infrastructure_v1_1_0_axic_srl_fifo_b
       (.Q(\gen_transfer_mux[0].axisc_transfer_mux_0/busy_r ),
        .SS(clear),
        .aclk(aclk),
        .arb_gnt_i(arb_gnt_i),
        .areset_r_reg(u_axis_switch_v1_1_9_axis_switch_5x1_n_94),
        .aresetn(aresetn),
        .fifo_index1__1(fifo_index1__1),
        .m_axi_bid(m_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(m_axi_buser),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axis_tready(m_axis_tready),
        .m_int_tdata(m_int_tdata),
        .m_int_tvalid(m_int_tvalid[0]),
        .s_ready3__3(s_ready3__3));
  axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch__parameterized0 u_axis_switch_v1_1_9_axis_switch_1x5
       (.aclk(aclk),
        .areset_r1(areset_r1),
        .\gen_tdest_routing.decode_err_r_reg (u_axis_switch_v1_1_9_axis_switch_1x5_n_0),
        .s_axis_tid(s_axis_tid),
        .s_axis_tvalid(s_axis_tvalid));
  axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch u_axis_switch_v1_1_9_axis_switch_5x1
       (.E(u_axis_switch_v1_1_9_axis_switch_5x1_n_78),
        .Q(\gen_transfer_mux[0].axisc_transfer_mux_0/busy_r ),
        .SR(clear),
        .aclk(aclk),
        .areset_r1(areset_r1),
        .count_is_max(count_is_max),
        .count_is_max1__1(count_is_max1__1_1),
        .count_is_max1__1_0(count_is_max1__1_0),
        .count_is_max1__1_1(count_is_max1__1),
        .count_is_max_reg(u_axis_switch_v1_1_9_axis_switch_5x1_n_90),
        .count_is_max_reg_0(m_int_tvalid__0),
        .count_is_max_reg_1(u_transaction_counter_ar_to_r_n_0),
        .count_is_zero(count_is_zero),
        .decr_trans0(decr_trans0),
        .decr_trans02_out(decr_trans02_out),
        .fifo_index1__1(fifo_index1__1),
        .\gen_tdest_routing.busy_r_reg[0] (arb_gnt_i),
        .incr_trans05_out(incr_trans05_out),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(m_axi_ruser),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .m_int_tdata(m_int_tdata),
        .m_int_tvalid({m_int_tvalid[4],m_int_tvalid[0]}),
        .\num_active_trans_reg[0] (u_axis_switch_v1_1_9_axis_switch_5x1_n_82),
        .\num_active_trans_reg[0]_0 (u_axis_switch_v1_1_9_axis_switch_5x1_n_87),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(s_axi_aruser),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(s_axi_awuser),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(s_axi_wuser),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_tid(s_axis_tid),
        .s_axis_tvalid(s_axis_tvalid),
        .s_ready3__3(s_ready3__3),
        .s_ready_reg(u_axis_switch_v1_1_9_axis_switch_5x1_n_94));
  axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter u_transaction_counter_ar_to_r
       (.E(u_axis_switch_v1_1_9_axis_switch_5x1_n_87),
        .SS(clear),
        .aclk(aclk),
        .\arb_gnt_r_reg[0] (m_int_tvalid__0[2]),
        .count_is_max1__1(count_is_max1__1),
        .count_is_max_reg_0(u_transaction_counter_ar_to_r_n_0),
        .count_is_max_reg_1(u_axis_switch_v1_1_9_axis_switch_5x1_n_90),
        .decr_trans0(decr_trans0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axis_tdata(s_axis_tdata[34]),
        .s_axis_tid(s_axis_tid),
        .s_axis_tvalid(s_axis_tvalid));
  axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter_0 u_transaction_counter_aw_to_b
       (.E(u_axis_switch_v1_1_9_axis_switch_5x1_n_82),
        .SS(clear),
        .aclk(aclk),
        .\arb_gnt_r_reg[0] (m_int_tvalid__0[1]),
        .count_is_max(count_is_max),
        .count_is_max1__1(count_is_max1__1_0),
        .incr_trans05_out(incr_trans05_out),
        .m_tready_from_decoded_slave0__1(\gen_decoder[0].axisc_decoder_0/m_tready_from_decoded_slave0__1 ),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axis_tid(s_axis_tid),
        .s_axis_tvalid(s_axis_tvalid));
  axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter_1 u_transaction_counter_aw_to_w
       (.E(u_axis_switch_v1_1_9_axis_switch_5x1_n_78),
        .SS(clear),
        .aclk(aclk),
        .aresetn(aresetn),
        .count_is_max1__1(count_is_max1__1_1),
        .count_is_zero(count_is_zero),
        .decr_trans02_out(decr_trans02_out),
        .incr_trans05_out(incr_trans05_out),
        .m_int_tvalid(m_int_tvalid[4]),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_mm2s_mapper_v1_1_8_transaction_counter" *) 
module axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter
   (count_is_max_reg_0,
    decr_trans0,
    s_axi_rvalid,
    \arb_gnt_r_reg[0] ,
    SS,
    aclk,
    count_is_max1__1,
    s_axi_rready,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tid,
    s_axi_arvalid,
    count_is_max_reg_1,
    E);
  output count_is_max_reg_0;
  output decr_trans0;
  output s_axi_rvalid;
  output [0:0]\arb_gnt_r_reg[0] ;
  input [0:0]SS;
  input aclk;
  input count_is_max1__1;
  input s_axi_rready;
  input [0:0]s_axis_tdata;
  input s_axis_tvalid;
  input [2:0]s_axis_tid;
  input s_axi_arvalid;
  input count_is_max_reg_1;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]SS;
  wire aclk;
  wire [0:0]\arb_gnt_r_reg[0] ;
  wire count_is_max1__1;
  wire count_is_max_i_1__0_n_0;
  wire count_is_max_i_2__0_n_0;
  wire count_is_max_reg_0;
  wire count_is_max_reg_1;
  wire decr_trans0;
  wire \num_active_trans[0]_i_1__1_n_0 ;
  wire \num_active_trans[1]_i_1__1_n_0 ;
  wire \num_active_trans[2]_i_1__1_n_0 ;
  wire \num_active_trans[3]_i_2__1_n_0 ;
  wire [3:0]num_active_trans_reg__0;
  wire s_axi_arvalid;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [0:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tvalid;

  LUT6 #(
    .INIT(64'h3FFFFFFF00002AAA)) 
    count_is_max_i_1__0
       (.I0(count_is_max_i_2__0_n_0),
        .I1(s_axi_rready),
        .I2(s_axis_tdata),
        .I3(s_axi_rvalid),
        .I4(count_is_max_reg_1),
        .I5(count_is_max_reg_0),
        .O(count_is_max_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    count_is_max_i_2__0
       (.I0(num_active_trans_reg__0[1]),
        .I1(num_active_trans_reg__0[0]),
        .I2(num_active_trans_reg__0[3]),
        .I3(num_active_trans_reg__0[2]),
        .O(count_is_max_i_2__0_n_0));
  FDRE count_is_max_reg
       (.C(aclk),
        .CE(1'b1),
        .D(count_is_max_i_1__0_n_0),
        .Q(count_is_max_reg_0),
        .R(SS));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.gen_mux_5_8[0].mux_s2_inst_i_3 
       (.I0(s_axi_arvalid),
        .I1(count_is_max_reg_0),
        .O(\arb_gnt_r_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_active_trans[0]_i_1__1 
       (.I0(num_active_trans_reg__0[0]),
        .O(\num_active_trans[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \num_active_trans[1]_i_1__1 
       (.I0(num_active_trans_reg__0[0]),
        .I1(num_active_trans_reg__0[1]),
        .I2(count_is_max1__1),
        .O(\num_active_trans[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hB4D2)) 
    \num_active_trans[2]_i_1__1 
       (.I0(count_is_max1__1),
        .I1(num_active_trans_reg__0[0]),
        .I2(num_active_trans_reg__0[2]),
        .I3(num_active_trans_reg__0[1]),
        .O(\num_active_trans[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hBF40FD02)) 
    \num_active_trans[3]_i_2__1 
       (.I0(count_is_max1__1),
        .I1(num_active_trans_reg__0[1]),
        .I2(num_active_trans_reg__0[0]),
        .I3(num_active_trans_reg__0[3]),
        .I4(num_active_trans_reg__0[2]),
        .O(\num_active_trans[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \num_active_trans[3]_i_3__0 
       (.I0(s_axi_rready),
        .I1(s_axis_tdata),
        .I2(s_axis_tvalid),
        .I3(s_axis_tid[2]),
        .I4(s_axis_tid[0]),
        .I5(s_axis_tid[1]),
        .O(decr_trans0));
  FDRE \num_active_trans_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[0]_i_1__1_n_0 ),
        .Q(num_active_trans_reg__0[0]),
        .R(SS));
  FDRE \num_active_trans_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[1]_i_1__1_n_0 ),
        .Q(num_active_trans_reg__0[1]),
        .R(SS));
  FDRE \num_active_trans_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[2]_i_1__1_n_0 ),
        .Q(num_active_trans_reg__0[2]),
        .R(SS));
  FDRE \num_active_trans_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[3]_i_2__1_n_0 ),
        .Q(num_active_trans_reg__0[3]),
        .R(SS));
  LUT4 #(
    .INIT(16'h0800)) 
    s_axi_rvalid_INST_0
       (.I0(s_axis_tid[1]),
        .I1(s_axis_tid[0]),
        .I2(s_axis_tid[2]),
        .I3(s_axis_tvalid),
        .O(s_axi_rvalid));
endmodule

(* ORIG_REF_NAME = "axi_mm2s_mapper_v1_1_8_transaction_counter" *) 
module axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter_0
   (count_is_max,
    m_tready_from_decoded_slave0__1,
    \arb_gnt_r_reg[0] ,
    SS,
    aclk,
    incr_trans05_out,
    count_is_max1__1,
    s_axi_awvalid,
    s_axis_tvalid,
    s_axis_tid,
    s_axi_bready,
    E);
  output count_is_max;
  output [0:0]m_tready_from_decoded_slave0__1;
  output [0:0]\arb_gnt_r_reg[0] ;
  input [0:0]SS;
  input aclk;
  input incr_trans05_out;
  input count_is_max1__1;
  input s_axi_awvalid;
  input s_axis_tvalid;
  input [2:0]s_axis_tid;
  input s_axi_bready;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]SS;
  wire aclk;
  wire [0:0]\arb_gnt_r_reg[0] ;
  wire count_is_max;
  wire count_is_max0;
  wire count_is_max1__1;
  wire count_is_max_i_1_n_0;
  wire incr_trans05_out;
  wire [0:0]m_tready_from_decoded_slave0__1;
  wire \num_active_trans[0]_i_1_n_0 ;
  wire \num_active_trans[1]_i_1__0_n_0 ;
  wire \num_active_trans[2]_i_1__0_n_0 ;
  wire \num_active_trans[3]_i_2__0_n_0 ;
  wire [3:0]num_active_trans_reg__0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [2:0]s_axis_tid;
  wire s_axis_tvalid;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    count_is_max_i_1
       (.I0(count_is_max0),
        .I1(count_is_max1__1),
        .I2(count_is_max),
        .O(count_is_max_i_1_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    count_is_max_i_2
       (.I0(m_tready_from_decoded_slave0__1),
        .I1(num_active_trans_reg__0[1]),
        .I2(num_active_trans_reg__0[0]),
        .I3(num_active_trans_reg__0[3]),
        .I4(num_active_trans_reg__0[2]),
        .I5(incr_trans05_out),
        .O(count_is_max0));
  FDRE count_is_max_reg
       (.C(aclk),
        .CE(1'b1),
        .D(count_is_max_i_1_n_0),
        .Q(count_is_max),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.gen_mux_5_8[0].mux_s2_inst_i_4 
       (.I0(s_axi_awvalid),
        .I1(count_is_max),
        .O(\arb_gnt_r_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \num_active_trans[0]_i_1 
       (.I0(num_active_trans_reg__0[0]),
        .O(\num_active_trans[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \num_active_trans[1]_i_1__0 
       (.I0(num_active_trans_reg__0[0]),
        .I1(num_active_trans_reg__0[1]),
        .I2(count_is_max1__1),
        .O(\num_active_trans[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hB4D2)) 
    \num_active_trans[2]_i_1__0 
       (.I0(count_is_max1__1),
        .I1(num_active_trans_reg__0[0]),
        .I2(num_active_trans_reg__0[2]),
        .I3(num_active_trans_reg__0[1]),
        .O(\num_active_trans[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hBF40FD02)) 
    \num_active_trans[3]_i_2__0 
       (.I0(count_is_max1__1),
        .I1(num_active_trans_reg__0[1]),
        .I2(num_active_trans_reg__0[0]),
        .I3(num_active_trans_reg__0[3]),
        .I4(num_active_trans_reg__0[2]),
        .O(\num_active_trans[3]_i_2__0_n_0 ));
  FDRE \num_active_trans_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[0]_i_1_n_0 ),
        .Q(num_active_trans_reg__0[0]),
        .R(SS));
  FDRE \num_active_trans_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[1]_i_1__0_n_0 ),
        .Q(num_active_trans_reg__0[1]),
        .R(SS));
  FDRE \num_active_trans_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[2]_i_1__0_n_0 ),
        .Q(num_active_trans_reg__0[2]),
        .R(SS));
  FDRE \num_active_trans_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[3]_i_2__0_n_0 ),
        .Q(num_active_trans_reg__0[3]),
        .R(SS));
  LUT5 #(
    .INIT(32'h00020000)) 
    s_axis_tready_INST_0_i_1
       (.I0(s_axis_tvalid),
        .I1(s_axis_tid[2]),
        .I2(s_axis_tid[0]),
        .I3(s_axis_tid[1]),
        .I4(s_axi_bready),
        .O(m_tready_from_decoded_slave0__1));
endmodule

(* ORIG_REF_NAME = "axi_mm2s_mapper_v1_1_8_transaction_counter" *) 
module axi_mm2s_mapper_0_axi_mm2s_mapper_v1_1_8_transaction_counter_1
   (count_is_zero,
    m_int_tvalid,
    aclk,
    count_is_max1__1,
    s_axi_wvalid,
    aresetn,
    incr_trans05_out,
    decr_trans02_out,
    SS,
    E);
  output count_is_zero;
  output [0:0]m_int_tvalid;
  input aclk;
  input count_is_max1__1;
  input s_axi_wvalid;
  input aresetn;
  input incr_trans05_out;
  input decr_trans02_out;
  input [0:0]SS;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]SS;
  wire aclk;
  wire aresetn;
  wire count_is_max1__1;
  wire count_is_zero;
  wire count_is_zero_i_1_n_0;
  wire count_is_zero_i_2_n_0;
  wire decr_trans02_out;
  wire incr_trans05_out;
  wire [0:0]m_int_tvalid;
  wire \num_active_trans[0]_i_1__0_n_0 ;
  wire \num_active_trans[1]_i_1_n_0 ;
  wire \num_active_trans[2]_i_1_n_0 ;
  wire \num_active_trans[3]_i_2_n_0 ;
  wire [3:0]num_active_trans_reg__0;
  wire s_axi_wvalid;

  LUT5 #(
    .INIT(32'hBBFB33BB)) 
    count_is_zero_i_1
       (.I0(count_is_zero),
        .I1(aresetn),
        .I2(count_is_zero_i_2_n_0),
        .I3(incr_trans05_out),
        .I4(decr_trans02_out),
        .O(count_is_zero_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    count_is_zero_i_2
       (.I0(num_active_trans_reg__0[1]),
        .I1(num_active_trans_reg__0[0]),
        .I2(num_active_trans_reg__0[3]),
        .I3(num_active_trans_reg__0[2]),
        .O(count_is_zero_i_2_n_0));
  FDRE count_is_zero_reg
       (.C(aclk),
        .CE(1'b1),
        .D(count_is_zero_i_1_n_0),
        .Q(count_is_zero),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.gen_mux_5_8[0].mux_s2_inst_i_2 
       (.I0(s_axi_wvalid),
        .I1(count_is_zero),
        .O(m_int_tvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \num_active_trans[0]_i_1__0 
       (.I0(num_active_trans_reg__0[0]),
        .O(\num_active_trans[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \num_active_trans[1]_i_1 
       (.I0(num_active_trans_reg__0[0]),
        .I1(num_active_trans_reg__0[1]),
        .I2(count_is_max1__1),
        .O(\num_active_trans[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hB4D2)) 
    \num_active_trans[2]_i_1 
       (.I0(count_is_max1__1),
        .I1(num_active_trans_reg__0[0]),
        .I2(num_active_trans_reg__0[2]),
        .I3(num_active_trans_reg__0[1]),
        .O(\num_active_trans[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hBF40FD02)) 
    \num_active_trans[3]_i_2 
       (.I0(count_is_max1__1),
        .I1(num_active_trans_reg__0[1]),
        .I2(num_active_trans_reg__0[0]),
        .I3(num_active_trans_reg__0[3]),
        .I4(num_active_trans_reg__0[2]),
        .O(\num_active_trans[3]_i_2_n_0 ));
  FDRE \num_active_trans_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[0]_i_1__0_n_0 ),
        .Q(num_active_trans_reg__0[0]),
        .R(SS));
  FDRE \num_active_trans_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[1]_i_1_n_0 ),
        .Q(num_active_trans_reg__0[1]),
        .R(SS));
  FDRE \num_active_trans_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[2]_i_1_n_0 ),
        .Q(num_active_trans_reg__0[2]),
        .R(SS));
  FDRE \num_active_trans_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[3]_i_2_n_0 ),
        .Q(num_active_trans_reg__0[3]),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "axis_infrastructure_v1_1_0_mux_enc" *) 
module axi_mm2s_mapper_0_axis_infrastructure_v1_1_0_mux_enc
   (m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    arb_sel_i,
    p_0_in,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    \arb_sel_r_reg[1] ,
    \arb_sel_r_reg[1]_0 ,
    \arb_sel_r_reg[1]_1 ,
    \arb_sel_r_reg[1]_2 ,
    \arb_sel_r_reg[1]_3 );
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tkeep;
  output m_axis_tlast;
  output [2:0]m_axis_tid;
  input [2:0]arb_sel_i;
  input [63:0]p_0_in;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [3:0]s_axi_wuser;
  input \arb_sel_r_reg[1] ;
  input \arb_sel_r_reg[1]_0 ;
  input \arb_sel_r_reg[1]_1 ;
  input \arb_sel_r_reg[1]_2 ;
  input \arb_sel_r_reg[1]_3 ;

  wire [2:0]arb_sel_i;
  wire \arb_sel_r_reg[1] ;
  wire \arb_sel_r_reg[1]_0 ;
  wire \arb_sel_r_reg[1]_1 ;
  wire \arb_sel_r_reg[1]_2 ;
  wire \arb_sel_r_reg[1]_3 ;
  wire [63:0]m_axis_tdata;
  wire [2:0]m_axis_tid;
  wire [7:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire [63:0]p_0_in;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire [3:0]s_axi_wstrb;
  wire [3:0]s_axi_wuser;

  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[0].mux_s2_inst 
       (.I0(p_0_in[0]),
        .I1(s_axi_wdata[0]),
        .O(m_axis_tdata[0]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[10].mux_s2_inst 
       (.I0(p_0_in[10]),
        .I1(s_axi_wdata[10]),
        .O(m_axis_tdata[10]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[11].mux_s2_inst 
       (.I0(p_0_in[11]),
        .I1(s_axi_wdata[11]),
        .O(m_axis_tdata[11]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[12].mux_s2_inst 
       (.I0(p_0_in[12]),
        .I1(s_axi_wdata[12]),
        .O(m_axis_tdata[12]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[13].mux_s2_inst 
       (.I0(p_0_in[13]),
        .I1(s_axi_wdata[13]),
        .O(m_axis_tdata[13]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[14].mux_s2_inst 
       (.I0(p_0_in[14]),
        .I1(s_axi_wdata[14]),
        .O(m_axis_tdata[14]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[15].mux_s2_inst 
       (.I0(p_0_in[15]),
        .I1(s_axi_wdata[15]),
        .O(m_axis_tdata[15]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[16].mux_s2_inst 
       (.I0(p_0_in[16]),
        .I1(s_axi_wdata[16]),
        .O(m_axis_tdata[16]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[17].mux_s2_inst 
       (.I0(p_0_in[17]),
        .I1(s_axi_wdata[17]),
        .O(m_axis_tdata[17]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[18].mux_s2_inst 
       (.I0(p_0_in[18]),
        .I1(s_axi_wdata[18]),
        .O(m_axis_tdata[18]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[19].mux_s2_inst 
       (.I0(p_0_in[19]),
        .I1(s_axi_wdata[19]),
        .O(m_axis_tdata[19]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[1].mux_s2_inst 
       (.I0(p_0_in[1]),
        .I1(s_axi_wdata[1]),
        .O(m_axis_tdata[1]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[20].mux_s2_inst 
       (.I0(p_0_in[20]),
        .I1(s_axi_wdata[20]),
        .O(m_axis_tdata[20]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[21].mux_s2_inst 
       (.I0(p_0_in[21]),
        .I1(s_axi_wdata[21]),
        .O(m_axis_tdata[21]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[22].mux_s2_inst 
       (.I0(p_0_in[22]),
        .I1(s_axi_wdata[22]),
        .O(m_axis_tdata[22]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[23].mux_s2_inst 
       (.I0(p_0_in[23]),
        .I1(s_axi_wdata[23]),
        .O(m_axis_tdata[23]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[24].mux_s2_inst 
       (.I0(p_0_in[24]),
        .I1(s_axi_wdata[24]),
        .O(m_axis_tdata[24]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[25].mux_s2_inst 
       (.I0(p_0_in[25]),
        .I1(s_axi_wdata[25]),
        .O(m_axis_tdata[25]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[26].mux_s2_inst 
       (.I0(p_0_in[26]),
        .I1(s_axi_wdata[26]),
        .O(m_axis_tdata[26]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[27].mux_s2_inst 
       (.I0(p_0_in[27]),
        .I1(s_axi_wdata[27]),
        .O(m_axis_tdata[27]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[28].mux_s2_inst 
       (.I0(p_0_in[28]),
        .I1(s_axi_wdata[28]),
        .O(m_axis_tdata[28]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[29].mux_s2_inst 
       (.I0(p_0_in[29]),
        .I1(s_axi_wdata[29]),
        .O(m_axis_tdata[29]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[2].mux_s2_inst 
       (.I0(p_0_in[2]),
        .I1(s_axi_wdata[2]),
        .O(m_axis_tdata[2]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[30].mux_s2_inst 
       (.I0(p_0_in[30]),
        .I1(s_axi_wdata[30]),
        .O(m_axis_tdata[30]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[31].mux_s2_inst 
       (.I0(p_0_in[31]),
        .I1(s_axi_wdata[31]),
        .O(m_axis_tdata[31]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[32].mux_s2_inst 
       (.I0(p_0_in[32]),
        .I1(s_axi_wstrb[0]),
        .O(m_axis_tdata[32]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[33].mux_s2_inst 
       (.I0(p_0_in[33]),
        .I1(s_axi_wstrb[1]),
        .O(m_axis_tdata[33]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[34].mux_s2_inst 
       (.I0(p_0_in[34]),
        .I1(s_axi_wstrb[2]),
        .O(m_axis_tdata[34]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[35].mux_s2_inst 
       (.I0(p_0_in[35]),
        .I1(s_axi_wstrb[3]),
        .O(m_axis_tdata[35]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[36].mux_s2_inst 
       (.I0(p_0_in[36]),
        .I1(s_axi_wlast),
        .O(m_axis_tdata[36]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[37].mux_s2_inst 
       (.I0(p_0_in[37]),
        .I1(s_axi_wuser[0]),
        .O(m_axis_tdata[37]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[38].mux_s2_inst 
       (.I0(p_0_in[38]),
        .I1(s_axi_wuser[1]),
        .O(m_axis_tdata[38]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[39].mux_s2_inst 
       (.I0(p_0_in[39]),
        .I1(s_axi_wuser[2]),
        .O(m_axis_tdata[39]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[3].mux_s2_inst 
       (.I0(p_0_in[3]),
        .I1(s_axi_wdata[3]),
        .O(m_axis_tdata[3]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[40].mux_s2_inst 
       (.I0(p_0_in[40]),
        .I1(s_axi_wuser[3]),
        .O(m_axis_tdata[40]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[41].mux_s2_inst 
       (.I0(p_0_in[41]),
        .I1(1'b0),
        .O(m_axis_tdata[41]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[42].mux_s2_inst 
       (.I0(p_0_in[42]),
        .I1(1'b0),
        .O(m_axis_tdata[42]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[43].mux_s2_inst 
       (.I0(p_0_in[43]),
        .I1(1'b0),
        .O(m_axis_tdata[43]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[44].mux_s2_inst 
       (.I0(p_0_in[44]),
        .I1(1'b0),
        .O(m_axis_tdata[44]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[45].mux_s2_inst 
       (.I0(p_0_in[45]),
        .I1(1'b0),
        .O(m_axis_tdata[45]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[46].mux_s2_inst 
       (.I0(p_0_in[46]),
        .I1(1'b0),
        .O(m_axis_tdata[46]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[47].mux_s2_inst 
       (.I0(p_0_in[47]),
        .I1(1'b0),
        .O(m_axis_tdata[47]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[48].mux_s2_inst 
       (.I0(p_0_in[48]),
        .I1(1'b0),
        .O(m_axis_tdata[48]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[49].mux_s2_inst 
       (.I0(p_0_in[49]),
        .I1(1'b0),
        .O(m_axis_tdata[49]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[4].mux_s2_inst 
       (.I0(p_0_in[4]),
        .I1(s_axi_wdata[4]),
        .O(m_axis_tdata[4]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[50].mux_s2_inst 
       (.I0(p_0_in[50]),
        .I1(1'b0),
        .O(m_axis_tdata[50]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[51].mux_s2_inst 
       (.I0(p_0_in[51]),
        .I1(1'b0),
        .O(m_axis_tdata[51]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[52].mux_s2_inst 
       (.I0(p_0_in[52]),
        .I1(1'b0),
        .O(m_axis_tdata[52]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[53].mux_s2_inst 
       (.I0(p_0_in[53]),
        .I1(1'b0),
        .O(m_axis_tdata[53]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[54].mux_s2_inst 
       (.I0(p_0_in[54]),
        .I1(1'b0),
        .O(m_axis_tdata[54]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[55].mux_s2_inst 
       (.I0(p_0_in[55]),
        .I1(1'b0),
        .O(m_axis_tdata[55]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[56].mux_s2_inst 
       (.I0(p_0_in[56]),
        .I1(1'b0),
        .O(m_axis_tdata[56]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[57].mux_s2_inst 
       (.I0(p_0_in[57]),
        .I1(1'b0),
        .O(m_axis_tdata[57]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[58].mux_s2_inst 
       (.I0(p_0_in[58]),
        .I1(1'b0),
        .O(m_axis_tdata[58]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[59].mux_s2_inst 
       (.I0(p_0_in[59]),
        .I1(1'b0),
        .O(m_axis_tdata[59]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[5].mux_s2_inst 
       (.I0(p_0_in[5]),
        .I1(s_axi_wdata[5]),
        .O(m_axis_tdata[5]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[60].mux_s2_inst 
       (.I0(p_0_in[60]),
        .I1(1'b0),
        .O(m_axis_tdata[60]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[61].mux_s2_inst 
       (.I0(p_0_in[61]),
        .I1(1'b0),
        .O(m_axis_tdata[61]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[62].mux_s2_inst 
       (.I0(1'b0),
        .I1(1'b0),
        .O(m_axis_tdata[62]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[63].mux_s2_inst 
       (.I0(1'b0),
        .I1(1'b0),
        .O(m_axis_tdata[63]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[64].mux_s2_inst 
       (.I0(1'b1),
        .I1(1'b1),
        .O(m_axis_tkeep[0]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[65].mux_s2_inst 
       (.I0(\arb_sel_r_reg[1] ),
        .I1(1'b1),
        .O(m_axis_tkeep[1]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[66].mux_s2_inst 
       (.I0(\arb_sel_r_reg[1]_0 ),
        .I1(1'b1),
        .O(m_axis_tkeep[2]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[67].mux_s2_inst 
       (.I0(\arb_sel_r_reg[1]_1 ),
        .I1(1'b1),
        .O(m_axis_tkeep[3]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[68].mux_s2_inst 
       (.I0(p_0_in[62]),
        .I1(1'b1),
        .O(m_axis_tkeep[4]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[69].mux_s2_inst 
       (.I0(\arb_sel_r_reg[1]_2 ),
        .I1(1'b1),
        .O(m_axis_tkeep[5]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[6].mux_s2_inst 
       (.I0(p_0_in[6]),
        .I1(s_axi_wdata[6]),
        .O(m_axis_tdata[6]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[70].mux_s2_inst 
       (.I0(\arb_sel_r_reg[1]_3 ),
        .I1(1'b0),
        .O(m_axis_tkeep[6]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[71].mux_s2_inst 
       (.I0(p_0_in[63]),
        .I1(1'b0),
        .O(m_axis_tkeep[7]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[72].mux_s2_inst 
       (.I0(1'b1),
        .I1(1'b1),
        .O(m_axis_tlast),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[73].mux_s2_inst 
       (.I0(arb_sel_i[0]),
        .I1(1'b0),
        .O(m_axis_tid[0]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[74].mux_s2_inst 
       (.I0(arb_sel_i[1]),
        .I1(1'b0),
        .O(m_axis_tid[1]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[75].mux_s2_inst 
       (.I0(1'b0),
        .I1(1'b1),
        .O(m_axis_tid[2]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[7].mux_s2_inst 
       (.I0(p_0_in[7]),
        .I1(s_axi_wdata[7]),
        .O(m_axis_tdata[7]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[8].mux_s2_inst 
       (.I0(p_0_in[8]),
        .I1(s_axi_wdata[8]),
        .O(m_axis_tdata[8]),
        .S(arb_sel_i[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[9].mux_s2_inst 
       (.I0(p_0_in[9]),
        .I1(s_axi_wdata[9]),
        .O(m_axis_tdata[9]),
        .S(arb_sel_i[2]));
endmodule

(* ORIG_REF_NAME = "axis_infrastructure_v1_1_0_mux_enc" *) 
module axi_mm2s_mapper_0_axis_infrastructure_v1_1_0_mux_enc__parameterized0
   (o_i,
    arb_sel_i,
    p_0_in_0,
    m_int_tvalid);
  output o_i;
  input [0:0]arb_sel_i;
  input p_0_in_0;
  input [0:0]m_int_tvalid;

  wire [0:0]arb_sel_i;
  wire [0:0]m_int_tvalid;
  wire o_i;
  wire p_0_in_0;

  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.gen_mux_5_8[0].mux_s2_inst 
       (.I0(p_0_in_0),
        .I1(m_int_tvalid),
        .O(o_i),
        .S(arb_sel_i));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_9_arb_rr" *) 
module axi_mm2s_mapper_0_axis_switch_v1_1_9_arb_rr
   (\arb_gnt_r_reg[0]_0 ,
    p_0_in,
    \arb_sel_r_reg[1]_0 ,
    \arb_sel_r_reg[0]_0 ,
    \busy_r_reg[3] ,
    \busy_r_reg[1] ,
    \gen_tdest_routing.busy_r_reg[0] ,
    s_axi_awready,
    busy_ns,
    \busy_r_reg[4] ,
    busy_ns_0,
    busy_ns_1,
    \busy_r_reg[2] ,
    busy_ns_2,
    busy_ns_3,
    SR,
    D,
    \arb_gnt_r_reg[0]_1 ,
    count_is_max1__1_1,
    s_axi_wready,
    s_axi_arready,
    fifo_index1__1,
    p_0_in_4,
    \m_axis_tkeep[1] ,
    \m_axis_tkeep[2] ,
    \m_axis_tkeep[3] ,
    \m_axis_tkeep[5] ,
    \m_axis_tkeep[6] ,
    s_ready_reg,
    arb_sel_i,
    areset_r_reg,
    aclk,
    count_is_max_reg,
    m_axi_rvalid,
    m_int_tvalid,
    arb_busy_r_reg_0,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    \gen_tdest_routing.busy_r_reg[0]_1 ,
    \gen_tdest_routing.busy_r_reg[0]_2 ,
    count_is_max,
    s_axi_awvalid,
    Q,
    m_axis_tready,
    \gen_tdest_routing.busy_r_reg[0]_3 ,
    \gen_tdest_routing.busy_r_reg[0]_4 ,
    o_i,
    m_axis_tlast,
    s_axi_arvalid,
    count_is_max_reg_0,
    decr_trans0,
    count_is_zero,
    s_axi_wvalid,
    m_axi_bready,
    m_axi_bvalid,
    m_axi_rdata,
    m_int_tdata,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_arprot,
    s_axi_awprot,
    m_axi_rresp,
    m_axi_rlast,
    s_axi_arsize,
    s_axi_awsize,
    m_axi_rid,
    m_axi_ruser,
    s_axi_arburst,
    s_axi_awburst,
    s_axi_awuser,
    s_axi_aruser,
    s_axi_awqos,
    s_axi_arqos,
    s_axi_awid,
    s_axi_arid,
    s_axi_awlock,
    s_axi_arlock,
    s_axi_awlen,
    s_axi_arlen,
    s_axi_awcache,
    s_axi_arcache,
    s_ready3__3);
  output \arb_gnt_r_reg[0]_0 ;
  output p_0_in;
  output \arb_sel_r_reg[1]_0 ;
  output \arb_sel_r_reg[0]_0 ;
  output \busy_r_reg[3] ;
  output \busy_r_reg[1] ;
  output \gen_tdest_routing.busy_r_reg[0] ;
  output s_axi_awready;
  output busy_ns;
  output \busy_r_reg[4] ;
  output busy_ns_0;
  output busy_ns_1;
  output \busy_r_reg[2] ;
  output busy_ns_2;
  output busy_ns_3;
  output [0:0]SR;
  output [4:0]D;
  output \arb_gnt_r_reg[0]_1 ;
  output count_is_max1__1_1;
  output s_axi_wready;
  output s_axi_arready;
  output fifo_index1__1;
  output [63:0]p_0_in_4;
  output \m_axis_tkeep[1] ;
  output \m_axis_tkeep[2] ;
  output \m_axis_tkeep[3] ;
  output \m_axis_tkeep[5] ;
  output \m_axis_tkeep[6] ;
  output s_ready_reg;
  output [0:0]arb_sel_i;
  input areset_r_reg;
  input aclk;
  input [1:0]count_is_max_reg;
  input m_axi_rvalid;
  input [0:0]m_int_tvalid;
  input arb_busy_r_reg_0;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input \gen_tdest_routing.busy_r_reg[0]_1 ;
  input \gen_tdest_routing.busy_r_reg[0]_2 ;
  input count_is_max;
  input s_axi_awvalid;
  input [4:0]Q;
  input m_axis_tready;
  input \gen_tdest_routing.busy_r_reg[0]_3 ;
  input \gen_tdest_routing.busy_r_reg[0]_4 ;
  input o_i;
  input m_axis_tlast;
  input s_axi_arvalid;
  input count_is_max_reg_0;
  input decr_trans0;
  input count_is_zero;
  input s_axi_wvalid;
  input m_axi_bready;
  input m_axi_bvalid;
  input [31:0]m_axi_rdata;
  input [6:0]m_int_tdata;
  input [31:0]s_axi_araddr;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_arprot;
  input [2:0]s_axi_awprot;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [2:0]s_axi_arsize;
  input [2:0]s_axi_awsize;
  input [0:0]m_axi_rid;
  input [3:0]m_axi_ruser;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awuser;
  input [3:0]s_axi_aruser;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_awid;
  input [0:0]s_axi_arid;
  input [0:0]s_axi_awlock;
  input [0:0]s_axi_arlock;
  input [7:0]s_axi_awlen;
  input [7:0]s_axi_arlen;
  input [3:0]s_axi_awcache;
  input [3:0]s_axi_arcache;
  input s_ready3__3;

  wire [4:0]D;
  wire [4:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r_i_3_n_0;
  wire arb_busy_r_reg_0;
  wire \arb_gnt_r[0]_i_1_n_0 ;
  wire \arb_gnt_r[1]_i_1_n_0 ;
  wire \arb_gnt_r[2]_i_1_n_0 ;
  wire \arb_gnt_r[3]_i_1_n_0 ;
  wire \arb_gnt_r[3]_i_2_n_0 ;
  wire \arb_gnt_r[4]_i_1_n_0 ;
  wire \arb_gnt_r_reg[0]_0 ;
  wire \arb_gnt_r_reg[0]_1 ;
  wire [4:0]arb_req_i__9;
  wire [0:0]arb_sel_i;
  wire \arb_sel_r[0]_i_1_n_0 ;
  wire \arb_sel_r[1]_i_1_n_0 ;
  wire \arb_sel_r[2]_i_1_n_0 ;
  wire \arb_sel_r_reg[0]_0 ;
  wire \arb_sel_r_reg[1]_0 ;
  wire areset_r_reg;
  wire busy_ns;
  wire busy_ns_0;
  wire busy_ns_1;
  wire busy_ns_2;
  wire busy_ns_3;
  wire \busy_r_reg[1] ;
  wire \busy_r_reg[2] ;
  wire \busy_r_reg[3] ;
  wire \busy_r_reg[4] ;
  wire count_is_max;
  wire count_is_max1__1_1;
  wire [1:0]count_is_max_reg;
  wire count_is_max_reg_0;
  wire count_is_zero;
  wire decr_trans0;
  wire \dynamic_priority_encoder_0/valid_lsb ;
  wire fifo_index1__1;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.busy_r_reg[0]_1 ;
  wire \gen_tdest_routing.busy_r_reg[0]_2 ;
  wire \gen_tdest_routing.busy_r_reg[0]_3 ;
  wire \gen_tdest_routing.busy_r_reg[0]_4 ;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [3:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire \m_axis_tkeep[1] ;
  wire \m_axis_tkeep[2] ;
  wire \m_axis_tkeep[3] ;
  wire \m_axis_tkeep[5] ;
  wire \m_axis_tkeep[6] ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [6:0]m_int_tdata;
  wire [0:0]m_int_tvalid;
  wire o_i;
  wire p_0_in;
  wire [63:0]p_0_in_4;
  wire p_0_out;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire [3:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire [3:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire s_ready3__3;
  wire s_ready_reg;
  wire [0:0]sel_i;
  wire valid_i;

  LUT5 #(
    .INIT(32'hFEFEFFFE)) 
    arb_busy_r_i_1
       (.I0(\dynamic_priority_encoder_0/valid_lsb ),
        .I1(arb_busy_r_i_3_n_0),
        .I2(arb_req_i__9[4]),
        .I3(\arb_gnt_r_reg[0]_0 ),
        .I4(p_0_out),
        .O(arb_busy_ns));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    arb_busy_r_i_2
       (.I0(\gen_tdest_routing.busy_r_reg[0]_1 ),
        .I1(\busy_r_reg[1] ),
        .I2(count_is_max_reg[0]),
        .I3(\gen_tdest_routing.busy_r_reg[0]_2 ),
        .I4(\gen_tdest_routing.busy_r_reg[0] ),
        .I5(m_int_tvalid),
        .O(\dynamic_priority_encoder_0/valid_lsb ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    arb_busy_r_i_3
       (.I0(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I1(\busy_r_reg[3] ),
        .I2(m_axi_rvalid),
        .I3(\gen_tdest_routing.busy_r_reg[0]_4 ),
        .I4(\busy_r_reg[2] ),
        .I5(count_is_max_reg[1]),
        .O(arb_busy_r_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    arb_busy_r_i_4
       (.I0(count_is_zero),
        .I1(s_axi_wvalid),
        .I2(\busy_r_reg[4] ),
        .I3(\gen_tdest_routing.busy_r_reg[0]_3 ),
        .O(arb_req_i__9[4]));
  LUT6 #(
    .INIT(64'h8080808080808000)) 
    arb_busy_r_i_5
       (.I0(o_i),
        .I1(m_axis_tlast),
        .I2(m_axis_tready),
        .I3(D[3]),
        .I4(D[2]),
        .I5(\arb_gnt_r_reg[0]_1 ),
        .O(p_0_out));
  FDRE arb_busy_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(arb_busy_ns),
        .Q(\arb_gnt_r_reg[0]_0 ),
        .R(areset_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \arb_gnt_r[0]_i_1 
       (.I0(sel_i),
        .I1(\dynamic_priority_encoder_0/valid_lsb ),
        .I2(arb_busy_r_i_3_n_0),
        .O(\arb_gnt_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \arb_gnt_r[1]_i_1 
       (.I0(sel_i),
        .I1(\dynamic_priority_encoder_0/valid_lsb ),
        .I2(arb_busy_r_i_3_n_0),
        .O(\arb_gnt_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \arb_gnt_r[2]_i_1 
       (.I0(\dynamic_priority_encoder_0/valid_lsb ),
        .I1(arb_busy_r_i_3_n_0),
        .I2(sel_i),
        .O(\arb_gnt_r[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEAEFF)) 
    \arb_gnt_r[3]_i_1 
       (.I0(areset_r_reg),
        .I1(\arb_gnt_r_reg[0]_0 ),
        .I2(p_0_out),
        .I3(\dynamic_priority_encoder_0/valid_lsb ),
        .I4(arb_busy_r_i_3_n_0),
        .O(\arb_gnt_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \arb_gnt_r[3]_i_2 
       (.I0(sel_i),
        .I1(\dynamic_priority_encoder_0/valid_lsb ),
        .I2(arb_busy_r_i_3_n_0),
        .O(\arb_gnt_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \arb_gnt_r[4]_i_1 
       (.I0(sel_i),
        .I1(areset_r_reg),
        .I2(arb_busy_r_reg_0),
        .I3(\dynamic_priority_encoder_0/valid_lsb ),
        .I4(arb_busy_r_i_3_n_0),
        .I5(arb_req_i__9[4]),
        .O(\arb_gnt_r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2222222222232222)) 
    \arb_gnt_r[4]_i_2 
       (.I0(arb_req_i__9[1]),
        .I1(arb_req_i__9[0]),
        .I2(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I3(\busy_r_reg[3] ),
        .I4(m_axi_rvalid),
        .I5(arb_req_i__9[2]),
        .O(sel_i));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \arb_gnt_r[4]_i_4 
       (.I0(count_is_max),
        .I1(s_axi_awvalid),
        .I2(\busy_r_reg[1] ),
        .I3(\gen_tdest_routing.busy_r_reg[0]_1 ),
        .O(arb_req_i__9[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \arb_gnt_r[4]_i_5 
       (.I0(m_int_tvalid),
        .I1(\gen_tdest_routing.busy_r_reg[0] ),
        .I2(\gen_tdest_routing.busy_r_reg[0]_2 ),
        .O(arb_req_i__9[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \arb_gnt_r[4]_i_6 
       (.I0(count_is_max_reg_0),
        .I1(s_axi_arvalid),
        .I2(\busy_r_reg[2] ),
        .I3(\gen_tdest_routing.busy_r_reg[0]_4 ),
        .O(arb_req_i__9[2]));
  FDRE \arb_gnt_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[0]_i_1_n_0 ),
        .Q(\gen_tdest_routing.busy_r_reg[0] ),
        .R(\arb_gnt_r[3]_i_1_n_0 ));
  FDRE \arb_gnt_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[1]_i_1_n_0 ),
        .Q(\busy_r_reg[1] ),
        .R(\arb_gnt_r[3]_i_1_n_0 ));
  FDRE \arb_gnt_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[2]_i_1_n_0 ),
        .Q(\busy_r_reg[2] ),
        .R(\arb_gnt_r[3]_i_1_n_0 ));
  FDRE \arb_gnt_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[3]_i_2_n_0 ),
        .Q(\busy_r_reg[3] ),
        .R(\arb_gnt_r[3]_i_1_n_0 ));
  FDRE \arb_gnt_r_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[4]_i_1_n_0 ),
        .Q(\busy_r_reg[4] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \arb_sel_r[0]_i_1 
       (.I0(sel_i),
        .I1(\arb_gnt_r_reg[0]_0 ),
        .I2(p_0_out),
        .I3(valid_i),
        .I4(\arb_sel_r_reg[0]_0 ),
        .O(\arb_sel_r[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \arb_sel_r[0]_i_2 
       (.I0(arb_req_i__9[4]),
        .I1(arb_req_i__9[3]),
        .I2(arb_req_i__9[2]),
        .I3(arb_req_i__9[0]),
        .I4(arb_req_i__9[1]),
        .O(valid_i));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \arb_sel_r[0]_i_3 
       (.I0(m_axi_rvalid),
        .I1(\busy_r_reg[3] ),
        .I2(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .O(arb_req_i__9[3]));
  LUT6 #(
    .INIT(64'h2F222F2F0D000D00)) 
    \arb_sel_r[1]_i_1 
       (.I0(\arb_gnt_r_reg[0]_0 ),
        .I1(p_0_out),
        .I2(\dynamic_priority_encoder_0/valid_lsb ),
        .I3(arb_busy_r_i_3_n_0),
        .I4(arb_req_i__9[4]),
        .I5(\arb_sel_r_reg[1]_0 ),
        .O(\arb_sel_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h222F222F000D0000)) 
    \arb_sel_r[2]_i_1 
       (.I0(\arb_gnt_r_reg[0]_0 ),
        .I1(p_0_out),
        .I2(\dynamic_priority_encoder_0/valid_lsb ),
        .I3(arb_busy_r_i_3_n_0),
        .I4(arb_req_i__9[4]),
        .I5(arb_sel_i),
        .O(\arb_sel_r[2]_i_1_n_0 ));
  FDRE \arb_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[0]_i_1_n_0 ),
        .Q(\arb_sel_r_reg[0]_0 ),
        .R(areset_r_reg));
  FDRE \arb_sel_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[1]_i_1_n_0 ),
        .Q(\arb_sel_r_reg[1]_0 ),
        .R(areset_r_reg));
  FDRE \arb_sel_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[2]_i_1_n_0 ),
        .Q(arb_sel_i),
        .R(areset_r_reg));
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[0]_i_1 
       (.I0(\gen_tdest_routing.busy_r_reg[0] ),
        .I1(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[1]_i_1 
       (.I0(\busy_r_reg[1] ),
        .I1(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[2]_i_1 
       (.I0(\busy_r_reg[2] ),
        .I1(Q[2]),
        .O(D[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[3]_i_1 
       (.I0(\busy_r_reg[3] ),
        .I1(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[4]_i_1 
       (.I0(areset_r_reg),
        .I1(p_0_out),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[4]_i_2 
       (.I0(\busy_r_reg[4] ),
        .I1(Q[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hCFCFAFA0C0C0AFA0)) 
    \gen_fpga.gen_mux_5_8[0].mux_s2_inst_i_1 
       (.I0(count_is_max_reg[1]),
        .I1(m_axi_rvalid),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(m_int_tvalid),
        .I4(\arb_sel_r_reg[0]_0 ),
        .I5(count_is_max_reg[0]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_fpga.gen_mux_5_8[0].mux_s2_inst_i_1__0 
       (.I0(m_axi_rdata[0]),
        .I1(m_int_tdata[0]),
        .I2(\arb_sel_r_reg[0]_0 ),
        .I3(\arb_sel_r_reg[1]_0 ),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_awaddr[0]),
        .O(p_0_in_4[0]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[10].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[10]),
        .I1(s_axi_awaddr[10]),
        .I2(m_axi_rdata[10]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[10]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[11].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[11]),
        .I1(s_axi_awaddr[11]),
        .I2(m_axi_rdata[11]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[11]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[12].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[12]),
        .I1(s_axi_awaddr[12]),
        .I2(m_axi_rdata[12]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[12]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[13].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[13]),
        .I1(s_axi_awaddr[13]),
        .I2(m_axi_rdata[13]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[13]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[14].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[14]),
        .I1(s_axi_awaddr[14]),
        .I2(m_axi_rdata[14]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[14]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[15].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[15]),
        .I1(s_axi_awaddr[15]),
        .I2(m_axi_rdata[15]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[15]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[16].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[16]),
        .I1(s_axi_awaddr[16]),
        .I2(m_axi_rdata[16]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[16]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[17].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[17]),
        .I1(s_axi_awaddr[17]),
        .I2(m_axi_rdata[17]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[17]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[18].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[18]),
        .I1(s_axi_awaddr[18]),
        .I2(m_axi_rdata[18]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[18]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[19].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[19]),
        .I1(s_axi_awaddr[19]),
        .I2(m_axi_rdata[19]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[19]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_fpga.gen_mux_5_8[1].mux_s2_inst_i_1 
       (.I0(m_axi_rdata[1]),
        .I1(m_int_tdata[1]),
        .I2(\arb_sel_r_reg[0]_0 ),
        .I3(\arb_sel_r_reg[1]_0 ),
        .I4(s_axi_araddr[1]),
        .I5(s_axi_awaddr[1]),
        .O(p_0_in_4[1]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[20].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[20]),
        .I1(s_axi_awaddr[20]),
        .I2(m_axi_rdata[20]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[20]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[21].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[21]),
        .I1(s_axi_awaddr[21]),
        .I2(m_axi_rdata[21]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[21]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[22].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[22]),
        .I1(s_axi_awaddr[22]),
        .I2(m_axi_rdata[22]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[22]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[23].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[23]),
        .I1(s_axi_awaddr[23]),
        .I2(m_axi_rdata[23]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[23]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[24].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[24]),
        .I1(s_axi_awaddr[24]),
        .I2(m_axi_rdata[24]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[24]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[25].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[25]),
        .I1(s_axi_awaddr[25]),
        .I2(m_axi_rdata[25]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[25]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[26].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[26]),
        .I1(s_axi_awaddr[26]),
        .I2(m_axi_rdata[26]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[26]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[27].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[27]),
        .I1(s_axi_awaddr[27]),
        .I2(m_axi_rdata[27]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[27]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[28].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[28]),
        .I1(s_axi_awaddr[28]),
        .I2(m_axi_rdata[28]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[28]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[29].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[29]),
        .I1(s_axi_awaddr[29]),
        .I2(m_axi_rdata[29]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[29]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_fpga.gen_mux_5_8[2].mux_s2_inst_i_1 
       (.I0(m_axi_rdata[2]),
        .I1(m_int_tdata[2]),
        .I2(\arb_sel_r_reg[0]_0 ),
        .I3(\arb_sel_r_reg[1]_0 ),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_awaddr[2]),
        .O(p_0_in_4[2]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[30].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[30]),
        .I1(s_axi_awaddr[30]),
        .I2(m_axi_rdata[30]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[30]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[31].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[31]),
        .I1(s_axi_awaddr[31]),
        .I2(m_axi_rdata[31]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[31]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[32].mux_s2_inst_i_1 
       (.I0(s_axi_arprot[0]),
        .I1(s_axi_awprot[0]),
        .I2(m_axi_rresp[0]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[32]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[33].mux_s2_inst_i_1 
       (.I0(s_axi_arprot[1]),
        .I1(s_axi_awprot[1]),
        .I2(m_axi_rresp[1]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[33]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[34].mux_s2_inst_i_1 
       (.I0(s_axi_arprot[2]),
        .I1(s_axi_awprot[2]),
        .I2(m_axi_rlast),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[34]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[35].mux_s2_inst_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_awsize[0]),
        .I2(m_axi_rid),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[35]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[36].mux_s2_inst_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_awsize[1]),
        .I2(m_axi_ruser[0]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[36]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[37].mux_s2_inst_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_awsize[2]),
        .I2(m_axi_ruser[1]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[37]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[38].mux_s2_inst_i_1 
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_awburst[0]),
        .I2(m_axi_ruser[2]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[38]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[39].mux_s2_inst_i_1 
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_awburst[1]),
        .I2(m_axi_ruser[3]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[39]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_fpga.gen_mux_5_8[3].mux_s2_inst_i_1 
       (.I0(m_axi_rdata[3]),
        .I1(m_int_tdata[3]),
        .I2(\arb_sel_r_reg[0]_0 ),
        .I3(\arb_sel_r_reg[1]_0 ),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_awaddr[3]),
        .O(p_0_in_4[3]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[40].mux_s2_inst_i_1 
       (.I0(s_axi_awcache[0]),
        .I1(s_axi_arcache[0]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[40]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[41].mux_s2_inst_i_1 
       (.I0(s_axi_awcache[1]),
        .I1(s_axi_arcache[1]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[41]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[42].mux_s2_inst_i_1 
       (.I0(s_axi_awcache[2]),
        .I1(s_axi_arcache[2]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[42]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[43].mux_s2_inst_i_1 
       (.I0(s_axi_awcache[3]),
        .I1(s_axi_arcache[3]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[43]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[44].mux_s2_inst_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_arlen[0]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[44]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[45].mux_s2_inst_i_1 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_arlen[1]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[45]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[46].mux_s2_inst_i_1 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_arlen[2]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[46]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[47].mux_s2_inst_i_1 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_arlen[3]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[47]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[48].mux_s2_inst_i_1 
       (.I0(s_axi_awlen[4]),
        .I1(s_axi_arlen[4]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[48]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[49].mux_s2_inst_i_1 
       (.I0(s_axi_awlen[5]),
        .I1(s_axi_arlen[5]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[49]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_fpga.gen_mux_5_8[4].mux_s2_inst_i_1 
       (.I0(m_axi_rdata[4]),
        .I1(m_int_tdata[4]),
        .I2(\arb_sel_r_reg[0]_0 ),
        .I3(\arb_sel_r_reg[1]_0 ),
        .I4(s_axi_araddr[4]),
        .I5(s_axi_awaddr[4]),
        .O(p_0_in_4[4]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[50].mux_s2_inst_i_1 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_arlen[6]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[50]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[51].mux_s2_inst_i_1 
       (.I0(s_axi_awlen[7]),
        .I1(s_axi_arlen[7]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[51]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[52].mux_s2_inst_i_1 
       (.I0(s_axi_awlock),
        .I1(s_axi_arlock),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[52]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[53].mux_s2_inst_i_1 
       (.I0(s_axi_awid),
        .I1(s_axi_arid),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[53]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[54].mux_s2_inst_i_1 
       (.I0(s_axi_awqos[0]),
        .I1(s_axi_arqos[0]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[54]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[55].mux_s2_inst_i_1 
       (.I0(s_axi_awqos[1]),
        .I1(s_axi_arqos[1]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[55]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[56].mux_s2_inst_i_1 
       (.I0(s_axi_awqos[2]),
        .I1(s_axi_arqos[2]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[56]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[57].mux_s2_inst_i_1 
       (.I0(s_axi_awqos[3]),
        .I1(s_axi_arqos[3]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[57]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[58].mux_s2_inst_i_1 
       (.I0(s_axi_awuser[0]),
        .I1(s_axi_aruser[0]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[58]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[59].mux_s2_inst_i_1 
       (.I0(s_axi_awuser[1]),
        .I1(s_axi_aruser[1]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[59]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_fpga.gen_mux_5_8[5].mux_s2_inst_i_1 
       (.I0(m_axi_rdata[5]),
        .I1(m_int_tdata[5]),
        .I2(\arb_sel_r_reg[0]_0 ),
        .I3(\arb_sel_r_reg[1]_0 ),
        .I4(s_axi_araddr[5]),
        .I5(s_axi_awaddr[5]),
        .O(p_0_in_4[5]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[60].mux_s2_inst_i_1 
       (.I0(s_axi_awuser[2]),
        .I1(s_axi_aruser[2]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[60]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.gen_mux_5_8[61].mux_s2_inst_i_1 
       (.I0(s_axi_awuser[3]),
        .I1(s_axi_aruser[3]),
        .I2(\arb_sel_r_reg[1]_0 ),
        .I3(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[61]));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_fpga.gen_mux_5_8[65].mux_s2_inst_i_1 
       (.I0(\arb_sel_r_reg[1]_0 ),
        .I1(\arb_sel_r_reg[0]_0 ),
        .O(\m_axis_tkeep[1] ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_fpga.gen_mux_5_8[66].mux_s2_inst_i_1 
       (.I0(\arb_sel_r_reg[1]_0 ),
        .I1(\arb_sel_r_reg[0]_0 ),
        .O(\m_axis_tkeep[2] ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_fpga.gen_mux_5_8[67].mux_s2_inst_i_1 
       (.I0(\arb_sel_r_reg[1]_0 ),
        .I1(\arb_sel_r_reg[0]_0 ),
        .O(\m_axis_tkeep[3] ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_fpga.gen_mux_5_8[68].mux_s2_inst_i_1 
       (.I0(\arb_sel_r_reg[1]_0 ),
        .I1(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[62]));
  LUT2 #(
    .INIT(4'h6)) 
    \gen_fpga.gen_mux_5_8[69].mux_s2_inst_i_1 
       (.I0(\arb_sel_r_reg[1]_0 ),
        .I1(\arb_sel_r_reg[0]_0 ),
        .O(\m_axis_tkeep[5] ));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_fpga.gen_mux_5_8[6].mux_s2_inst_i_1 
       (.I0(m_axi_rdata[6]),
        .I1(m_int_tdata[6]),
        .I2(\arb_sel_r_reg[0]_0 ),
        .I3(\arb_sel_r_reg[1]_0 ),
        .I4(s_axi_araddr[6]),
        .I5(s_axi_awaddr[6]),
        .O(p_0_in_4[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \gen_fpga.gen_mux_5_8[70].mux_s2_inst_i_1 
       (.I0(\arb_sel_r_reg[1]_0 ),
        .I1(\arb_sel_r_reg[0]_0 ),
        .O(\m_axis_tkeep[6] ));
  LUT2 #(
    .INIT(4'h6)) 
    \gen_fpga.gen_mux_5_8[71].mux_s2_inst_i_1 
       (.I0(\arb_sel_r_reg[1]_0 ),
        .I1(\arb_sel_r_reg[0]_0 ),
        .O(p_0_in_4[63]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[7].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[7]),
        .I1(s_axi_awaddr[7]),
        .I2(m_axi_rdata[7]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[7]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[8].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_awaddr[8]),
        .I2(m_axi_rdata[8]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[8]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \gen_fpga.gen_mux_5_8[9].mux_s2_inst_i_1 
       (.I0(s_axi_araddr[9]),
        .I1(s_axi_awaddr[9]),
        .I2(m_axi_rdata[9]),
        .I3(\arb_sel_r_reg[0]_0 ),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(p_0_in_4[9]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[0]_i_1 
       (.I0(\busy_r_reg[4] ),
        .I1(\gen_tdest_routing.busy_r_reg[0]_3 ),
        .I2(p_0_out),
        .O(busy_ns));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[0]_i_1__0 
       (.I0(\busy_r_reg[3] ),
        .I1(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I2(p_0_out),
        .O(busy_ns_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[0]_i_1__1 
       (.I0(\busy_r_reg[2] ),
        .I1(\gen_tdest_routing.busy_r_reg[0]_4 ),
        .I2(p_0_out),
        .O(busy_ns_1));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[0]_i_1__2 
       (.I0(\busy_r_reg[1] ),
        .I1(\gen_tdest_routing.busy_r_reg[0]_1 ),
        .I2(p_0_out),
        .O(busy_ns_2));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[0]_i_1__3 
       (.I0(\gen_tdest_routing.busy_r_reg[0] ),
        .I1(\gen_tdest_routing.busy_r_reg[0]_2 ),
        .I2(p_0_out),
        .O(busy_ns_3));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    m_axis_tvalid_INST_0_i_1
       (.I0(\busy_r_reg[1] ),
        .I1(Q[1]),
        .I2(\gen_tdest_routing.busy_r_reg[0] ),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(\busy_r_reg[4] ),
        .O(\arb_gnt_r_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFF57FF00000000)) 
    \num_active_trans[3]_i_4__1 
       (.I0(s_axi_arvalid),
        .I1(\busy_r_reg[2] ),
        .I2(Q[2]),
        .I3(m_axis_tready),
        .I4(count_is_max_reg_0),
        .I5(decr_trans0),
        .O(count_is_max1__1_1));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00E00000)) 
    s_axi_arready_INST_0
       (.I0(\busy_r_reg[2] ),
        .I1(Q[2]),
        .I2(m_axis_tready),
        .I3(count_is_max_reg_0),
        .I4(s_axi_arvalid),
        .O(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00E00000)) 
    s_axi_awready_INST_0
       (.I0(\busy_r_reg[1] ),
        .I1(Q[1]),
        .I2(m_axis_tready),
        .I3(count_is_max),
        .I4(s_axi_awvalid),
        .O(s_axi_awready));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00E00000)) 
    s_axi_wready_INST_0
       (.I0(\busy_r_reg[4] ),
        .I1(Q[4]),
        .I2(m_axis_tready),
        .I3(count_is_zero),
        .I4(s_axi_wvalid),
        .O(s_axi_wready));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAFAE)) 
    s_ready_i_2__1
       (.I0(areset_r_reg),
        .I1(fifo_index1__1),
        .I2(s_ready3__3),
        .I3(m_axi_bready),
        .O(s_ready_reg));
  LUT6 #(
    .INIT(64'h0000E000E000E000)) 
    s_ready_i_3
       (.I0(\gen_tdest_routing.busy_r_reg[0] ),
        .I1(Q[0]),
        .I2(m_axis_tready),
        .I3(m_int_tvalid),
        .I4(m_axi_bready),
        .I5(m_axi_bvalid),
        .O(fifo_index1__1));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_9_axis_switch" *) 
module axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch
   (m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    areset_r1,
    \gen_tdest_routing.busy_r_reg[0] ,
    E,
    Q,
    decr_trans02_out,
    count_is_max1__1,
    \num_active_trans_reg[0] ,
    incr_trans05_out,
    count_is_max1__1_0,
    s_axi_awready,
    m_axis_tvalid,
    \num_active_trans_reg[0]_0 ,
    count_is_max1__1_1,
    s_axi_wready,
    count_is_max_reg,
    s_axi_arready,
    fifo_index1__1,
    m_axi_rready,
    s_ready_reg,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    m_int_tvalid,
    SR,
    aclk,
    count_is_max_reg_0,
    m_axi_rvalid,
    count_is_max,
    s_axi_awvalid,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tid,
    s_axi_bready,
    decr_trans0,
    count_is_max_reg_1,
    s_axi_arvalid,
    s_axi_wvalid,
    count_is_zero,
    m_axi_bready,
    m_axi_bvalid,
    m_axi_rdata,
    m_int_tdata,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_arprot,
    s_axi_awprot,
    m_axi_rresp,
    m_axi_rlast,
    s_axi_arsize,
    s_axi_awsize,
    m_axi_rid,
    m_axi_ruser,
    s_axi_arburst,
    s_axi_awburst,
    s_axi_awuser,
    s_axi_aruser,
    s_axi_awqos,
    s_axi_arqos,
    s_axi_awid,
    s_axi_arid,
    s_axi_awlock,
    s_axi_arlock,
    s_axi_awlen,
    s_axi_arlen,
    s_axi_awcache,
    s_axi_arcache,
    s_ready3__3);
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tkeep;
  output m_axis_tlast;
  output [2:0]m_axis_tid;
  output areset_r1;
  output [0:0]\gen_tdest_routing.busy_r_reg[0] ;
  output [0:0]E;
  output [0:0]Q;
  output decr_trans02_out;
  output count_is_max1__1;
  output [0:0]\num_active_trans_reg[0] ;
  output incr_trans05_out;
  output count_is_max1__1_0;
  output s_axi_awready;
  output m_axis_tvalid;
  output [0:0]\num_active_trans_reg[0]_0 ;
  output count_is_max1__1_1;
  output s_axi_wready;
  output count_is_max_reg;
  output s_axi_arready;
  output fifo_index1__1;
  output m_axi_rready;
  output s_ready_reg;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [3:0]s_axi_wuser;
  input [1:0]m_int_tvalid;
  input [0:0]SR;
  input aclk;
  input [1:0]count_is_max_reg_0;
  input m_axi_rvalid;
  input count_is_max;
  input s_axi_awvalid;
  input m_axis_tready;
  input s_axis_tvalid;
  input [2:0]s_axis_tid;
  input s_axi_bready;
  input decr_trans0;
  input count_is_max_reg_1;
  input s_axi_arvalid;
  input s_axi_wvalid;
  input count_is_zero;
  input m_axi_bready;
  input m_axi_bvalid;
  input [31:0]m_axi_rdata;
  input [6:0]m_int_tdata;
  input [31:0]s_axi_araddr;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_arprot;
  input [2:0]s_axi_awprot;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [2:0]s_axi_arsize;
  input [2:0]s_axi_awsize;
  input [0:0]m_axi_rid;
  input [3:0]m_axi_ruser;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awuser;
  input [3:0]s_axi_aruser;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_awid;
  input [0:0]s_axi_arid;
  input [0:0]s_axi_awlock;
  input [0:0]s_axi_arlock;
  input [7:0]s_axi_awlen;
  input [7:0]s_axi_arlen;
  input [3:0]s_axi_awcache;
  input [3:0]s_axi_arcache;
  input s_ready3__3;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire [4:1]arb_gnt_i;
  wire [2:0]arb_sel_i;
  wire areset_r1;
  wire busy_ns;
  wire busy_ns_0;
  wire busy_ns_1;
  wire busy_ns_2;
  wire busy_ns_3;
  wire [4:1]busy_r;
  wire count_is_max;
  wire count_is_max1__1;
  wire count_is_max1__1_0;
  wire count_is_max1__1_1;
  wire count_is_max_reg;
  wire [1:0]count_is_max_reg_0;
  wire count_is_max_reg_1;
  wire count_is_zero;
  wire decr_trans0;
  wire decr_trans02_out;
  wire fifo_index1__1;
  wire \gen_decoder[0].axisc_decoder_0_n_0 ;
  wire \gen_decoder[1].axisc_decoder_0_n_0 ;
  wire \gen_decoder[2].axisc_decoder_0_n_0 ;
  wire \gen_decoder[3].axisc_decoder_0_n_0 ;
  wire \gen_decoder[4].axisc_decoder_0_n_0 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_16 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_17 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_18 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_19 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_20 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_21 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_22 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_91 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_92 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_93 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_94 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_95 ;
  wire \gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1/arb_busy_r ;
  wire [71:0]\gen_tdest_router.mux_enc_0/p_0_in ;
  wire \gen_tdest_router.mux_enc_1/o_i ;
  wire \gen_tdest_router.mux_enc_1/p_0_in ;
  wire [0:0]\gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_transfer_mux[0].axisc_transfer_mux_0_n_88 ;
  wire incr_trans05_out;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire [3:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire [63:0]m_axis_tdata;
  wire [2:0]m_axis_tid;
  wire [7:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [6:0]m_int_tdata;
  wire [1:0]m_int_tvalid;
  wire [0:0]\num_active_trans_reg[0] ;
  wire [0:0]\num_active_trans_reg[0]_0 ;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire [3:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire [3:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire [3:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire [2:0]s_axis_tid;
  wire s_axis_tvalid;
  wire s_ready3__3;
  wire s_ready_reg;

  FDRE areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(areset_r1),
        .R(1'b0));
  axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder \gen_decoder[0].axisc_decoder_0 
       (.aclk(aclk),
        .areset_r_reg(areset_r1),
        .busy_ns(busy_ns),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[0].axisc_decoder_0_n_0 ));
  axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_2 \gen_decoder[1].axisc_decoder_0 
       (.aclk(aclk),
        .areset_r_reg(areset_r1),
        .busy_ns(busy_ns_0),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[1].axisc_decoder_0_n_0 ));
  axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_3 \gen_decoder[2].axisc_decoder_0 
       (.aclk(aclk),
        .areset_r_reg(areset_r1),
        .busy_ns(busy_ns_1),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[2].axisc_decoder_0_n_0 ));
  axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_4 \gen_decoder[3].axisc_decoder_0 
       (.aclk(aclk),
        .areset_r_reg(areset_r1),
        .busy_ns(busy_ns_2),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[3].axisc_decoder_0_n_0 ));
  axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_5 \gen_decoder[4].axisc_decoder_0 
       (.aclk(aclk),
        .areset_r_reg(areset_r1),
        .busy_ns(busy_ns_3),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[4].axisc_decoder_0_n_0 ));
  axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch_arbiter \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter 
       (.D({\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_17 ,\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_18 ,\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_19 ,\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_20 ,\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_21 }),
        .Q({busy_r,Q}),
        .SR(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_16 ),
        .aclk(aclk),
        .arb_busy_r(\gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1/arb_busy_r ),
        .arb_busy_r_reg(\gen_transfer_mux[0].axisc_transfer_mux_0_n_88 ),
        .arb_gnt_i(arb_gnt_i),
        .\arb_gnt_r_reg[0] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_22 ),
        .arb_sel_i(arb_sel_i),
        .areset_r_reg(areset_r1),
        .busy_ns(busy_ns_3),
        .busy_ns_0(busy_ns_2),
        .busy_ns_1(busy_ns_1),
        .busy_ns_2(busy_ns_0),
        .busy_ns_3(busy_ns),
        .count_is_max(count_is_max),
        .count_is_max1__1_1(count_is_max1__1_1),
        .count_is_max_reg(count_is_max_reg_0),
        .count_is_max_reg_0(count_is_max_reg_1),
        .count_is_zero(count_is_zero),
        .decr_trans0(decr_trans0),
        .fifo_index1__1(fifo_index1__1),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_tdest_routing.busy_r_reg[0] ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[3].axisc_decoder_0_n_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_1 (\gen_decoder[1].axisc_decoder_0_n_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_2 (\gen_decoder[0].axisc_decoder_0_n_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_3 (\gen_decoder[4].axisc_decoder_0_n_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_4 (\gen_decoder[2].axisc_decoder_0_n_0 ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(m_axi_ruser),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_axis_tkeep[1] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_91 ),
        .\m_axis_tkeep[2] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_92 ),
        .\m_axis_tkeep[3] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_93 ),
        .\m_axis_tkeep[5] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_94 ),
        .\m_axis_tkeep[6] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_95 ),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_int_tdata(m_int_tdata),
        .m_int_tvalid(m_int_tvalid[0]),
        .o_i(\gen_tdest_router.mux_enc_1/o_i ),
        .p_0_in(\gen_tdest_router.mux_enc_1/p_0_in ),
        .p_0_in_4({\gen_tdest_router.mux_enc_0/p_0_in [71],\gen_tdest_router.mux_enc_0/p_0_in [68],\gen_tdest_router.mux_enc_0/p_0_in [61:0]}),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(s_axi_aruser),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(s_axi_awuser),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready3__3(s_ready3__3),
        .s_ready_reg(s_ready_reg));
  axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_transfer_mux \gen_transfer_mux[0].axisc_transfer_mux_0 
       (.D({\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_17 ,\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_18 ,\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_19 ,\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_20 ,\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_21 }),
        .E(E),
        .Q({busy_r,Q}),
        .SR(\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_16 ),
        .aclk(aclk),
        .arb_busy_r(\gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1/arb_busy_r ),
        .arb_gnt_i(arb_gnt_i),
        .\arb_gnt_r_reg[1] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_22 ),
        .\arb_gnt_r_reg[4] (\gen_transfer_mux[0].axisc_transfer_mux_0_n_88 ),
        .arb_sel_i(arb_sel_i),
        .\arb_sel_r_reg[1] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_91 ),
        .\arb_sel_r_reg[1]_0 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_92 ),
        .\arb_sel_r_reg[1]_1 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_93 ),
        .\arb_sel_r_reg[1]_2 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_94 ),
        .\arb_sel_r_reg[1]_3 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_9_axis_switch_arbiter_n_95 ),
        .count_is_max(count_is_max),
        .count_is_max1__1(count_is_max1__1),
        .count_is_max1__1_0(count_is_max1__1_0),
        .count_is_max_reg(count_is_max_reg),
        .count_is_max_reg_0(count_is_max_reg_1),
        .count_is_zero(count_is_zero),
        .decr_trans0(decr_trans0),
        .decr_trans02_out(decr_trans02_out),
        .incr_trans05_out(incr_trans05_out),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .m_int_tvalid(m_int_tvalid[1]),
        .\num_active_trans_reg[0] (\num_active_trans_reg[0] ),
        .\num_active_trans_reg[0]_0 (\num_active_trans_reg[0]_0 ),
        .o_i(\gen_tdest_router.mux_enc_1/o_i ),
        .p_0_in({\gen_tdest_router.mux_enc_0/p_0_in [71],\gen_tdest_router.mux_enc_0/p_0_in [68],\gen_tdest_router.mux_enc_0/p_0_in [61:0]}),
        .p_0_in_0(\gen_tdest_router.mux_enc_1/p_0_in ),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(s_axi_wuser),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_tid(s_axis_tid),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_9_axis_switch" *) 
module axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch__parameterized0
   (\gen_tdest_routing.decode_err_r_reg ,
    areset_r1,
    aclk,
    s_axis_tid,
    s_axis_tvalid);
  output \gen_tdest_routing.decode_err_r_reg ;
  input areset_r1;
  input aclk;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;

  wire aclk;
  wire areset_r1;
  wire \gen_tdest_routing.decode_err_r_reg ;
  wire [2:0]s_axis_tid;
  wire s_axis_tvalid;

  axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder__parameterized0 \gen_decoder[0].axisc_decoder_0 
       (.aclk(aclk),
        .areset_r1(areset_r1),
        .\gen_tdest_routing.decode_err_r_reg_0 (\gen_tdest_routing.decode_err_r_reg ),
        .s_axis_tid(s_axis_tid),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_9_axis_switch_arbiter" *) 
module axi_mm2s_mapper_0_axis_switch_v1_1_9_axis_switch_arbiter
   (arb_busy_r,
    p_0_in,
    arb_sel_i,
    arb_gnt_i,
    \gen_tdest_routing.busy_r_reg[0] ,
    s_axi_awready,
    busy_ns,
    busy_ns_0,
    busy_ns_1,
    busy_ns_2,
    busy_ns_3,
    SR,
    D,
    \arb_gnt_r_reg[0] ,
    count_is_max1__1_1,
    s_axi_wready,
    s_axi_arready,
    fifo_index1__1,
    p_0_in_4,
    \m_axis_tkeep[1] ,
    \m_axis_tkeep[2] ,
    \m_axis_tkeep[3] ,
    \m_axis_tkeep[5] ,
    \m_axis_tkeep[6] ,
    s_ready_reg,
    areset_r_reg,
    aclk,
    count_is_max_reg,
    m_axi_rvalid,
    m_int_tvalid,
    arb_busy_r_reg,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    \gen_tdest_routing.busy_r_reg[0]_1 ,
    \gen_tdest_routing.busy_r_reg[0]_2 ,
    count_is_max,
    s_axi_awvalid,
    Q,
    m_axis_tready,
    \gen_tdest_routing.busy_r_reg[0]_3 ,
    \gen_tdest_routing.busy_r_reg[0]_4 ,
    o_i,
    m_axis_tlast,
    s_axi_arvalid,
    count_is_max_reg_0,
    decr_trans0,
    count_is_zero,
    s_axi_wvalid,
    m_axi_bready,
    m_axi_bvalid,
    m_axi_rdata,
    m_int_tdata,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_arprot,
    s_axi_awprot,
    m_axi_rresp,
    m_axi_rlast,
    s_axi_arsize,
    s_axi_awsize,
    m_axi_rid,
    m_axi_ruser,
    s_axi_arburst,
    s_axi_awburst,
    s_axi_awuser,
    s_axi_aruser,
    s_axi_awqos,
    s_axi_arqos,
    s_axi_awid,
    s_axi_arid,
    s_axi_awlock,
    s_axi_arlock,
    s_axi_awlen,
    s_axi_arlen,
    s_axi_awcache,
    s_axi_arcache,
    s_ready3__3);
  output arb_busy_r;
  output p_0_in;
  output [2:0]arb_sel_i;
  output [3:0]arb_gnt_i;
  output \gen_tdest_routing.busy_r_reg[0] ;
  output s_axi_awready;
  output busy_ns;
  output busy_ns_0;
  output busy_ns_1;
  output busy_ns_2;
  output busy_ns_3;
  output [0:0]SR;
  output [4:0]D;
  output \arb_gnt_r_reg[0] ;
  output count_is_max1__1_1;
  output s_axi_wready;
  output s_axi_arready;
  output fifo_index1__1;
  output [63:0]p_0_in_4;
  output \m_axis_tkeep[1] ;
  output \m_axis_tkeep[2] ;
  output \m_axis_tkeep[3] ;
  output \m_axis_tkeep[5] ;
  output \m_axis_tkeep[6] ;
  output s_ready_reg;
  input areset_r_reg;
  input aclk;
  input [1:0]count_is_max_reg;
  input m_axi_rvalid;
  input [0:0]m_int_tvalid;
  input arb_busy_r_reg;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input \gen_tdest_routing.busy_r_reg[0]_1 ;
  input \gen_tdest_routing.busy_r_reg[0]_2 ;
  input count_is_max;
  input s_axi_awvalid;
  input [4:0]Q;
  input m_axis_tready;
  input \gen_tdest_routing.busy_r_reg[0]_3 ;
  input \gen_tdest_routing.busy_r_reg[0]_4 ;
  input o_i;
  input m_axis_tlast;
  input s_axi_arvalid;
  input count_is_max_reg_0;
  input decr_trans0;
  input count_is_zero;
  input s_axi_wvalid;
  input m_axi_bready;
  input m_axi_bvalid;
  input [31:0]m_axi_rdata;
  input [6:0]m_int_tdata;
  input [31:0]s_axi_araddr;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_arprot;
  input [2:0]s_axi_awprot;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [2:0]s_axi_arsize;
  input [2:0]s_axi_awsize;
  input [0:0]m_axi_rid;
  input [3:0]m_axi_ruser;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awuser;
  input [3:0]s_axi_aruser;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_awid;
  input [0:0]s_axi_arid;
  input [0:0]s_axi_awlock;
  input [0:0]s_axi_arlock;
  input [7:0]s_axi_awlen;
  input [7:0]s_axi_arlen;
  input [3:0]s_axi_awcache;
  input [3:0]s_axi_arcache;
  input s_ready3__3;

  wire [4:0]D;
  wire [4:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire arb_busy_r;
  wire arb_busy_r_reg;
  wire [3:0]arb_gnt_i;
  wire \arb_gnt_r_reg[0] ;
  wire [2:0]arb_sel_i;
  wire areset_r_reg;
  wire busy_ns;
  wire busy_ns_0;
  wire busy_ns_1;
  wire busy_ns_2;
  wire busy_ns_3;
  wire count_is_max;
  wire count_is_max1__1_1;
  wire [1:0]count_is_max_reg;
  wire count_is_max_reg_0;
  wire count_is_zero;
  wire decr_trans0;
  wire fifo_index1__1;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.busy_r_reg[0]_1 ;
  wire \gen_tdest_routing.busy_r_reg[0]_2 ;
  wire \gen_tdest_routing.busy_r_reg[0]_3 ;
  wire \gen_tdest_routing.busy_r_reg[0]_4 ;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [3:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire \m_axis_tkeep[1] ;
  wire \m_axis_tkeep[2] ;
  wire \m_axis_tkeep[3] ;
  wire \m_axis_tkeep[5] ;
  wire \m_axis_tkeep[6] ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [6:0]m_int_tdata;
  wire [0:0]m_int_tvalid;
  wire o_i;
  wire p_0_in;
  wire [63:0]p_0_in_4;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire [3:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire [3:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire s_ready3__3;
  wire s_ready_reg;

  axi_mm2s_mapper_0_axis_switch_v1_1_9_arb_rr \gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1 
       (.D(D),
        .Q(Q),
        .SR(SR),
        .aclk(aclk),
        .arb_busy_r_reg_0(arb_busy_r_reg),
        .\arb_gnt_r_reg[0]_0 (arb_busy_r),
        .\arb_gnt_r_reg[0]_1 (\arb_gnt_r_reg[0] ),
        .arb_sel_i(arb_sel_i[2]),
        .\arb_sel_r_reg[0]_0 (arb_sel_i[0]),
        .\arb_sel_r_reg[1]_0 (arb_sel_i[1]),
        .areset_r_reg(areset_r_reg),
        .busy_ns(busy_ns),
        .busy_ns_0(busy_ns_0),
        .busy_ns_1(busy_ns_1),
        .busy_ns_2(busy_ns_2),
        .busy_ns_3(busy_ns_3),
        .\busy_r_reg[1] (arb_gnt_i[0]),
        .\busy_r_reg[2] (arb_gnt_i[1]),
        .\busy_r_reg[3] (arb_gnt_i[2]),
        .\busy_r_reg[4] (arb_gnt_i[3]),
        .count_is_max(count_is_max),
        .count_is_max1__1_1(count_is_max1__1_1),
        .count_is_max_reg(count_is_max_reg),
        .count_is_max_reg_0(count_is_max_reg_0),
        .count_is_zero(count_is_zero),
        .decr_trans0(decr_trans0),
        .fifo_index1__1(fifo_index1__1),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_tdest_routing.busy_r_reg[0] ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_tdest_routing.busy_r_reg[0]_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_1 (\gen_tdest_routing.busy_r_reg[0]_1 ),
        .\gen_tdest_routing.busy_r_reg[0]_2 (\gen_tdest_routing.busy_r_reg[0]_2 ),
        .\gen_tdest_routing.busy_r_reg[0]_3 (\gen_tdest_routing.busy_r_reg[0]_3 ),
        .\gen_tdest_routing.busy_r_reg[0]_4 (\gen_tdest_routing.busy_r_reg[0]_4 ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(m_axi_ruser),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_axis_tkeep[1] (\m_axis_tkeep[1] ),
        .\m_axis_tkeep[2] (\m_axis_tkeep[2] ),
        .\m_axis_tkeep[3] (\m_axis_tkeep[3] ),
        .\m_axis_tkeep[5] (\m_axis_tkeep[5] ),
        .\m_axis_tkeep[6] (\m_axis_tkeep[6] ),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_int_tdata(m_int_tdata),
        .m_int_tvalid(m_int_tvalid),
        .o_i(o_i),
        .p_0_in(p_0_in),
        .p_0_in_4(p_0_in_4),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(s_axi_aruser),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(s_axi_awuser),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready3__3(s_ready3__3),
        .s_ready_reg(s_ready_reg));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_9_axisc_arb_responder" *) 
module axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_arb_responder
   (E,
    Q,
    decr_trans02_out,
    count_is_max1__1,
    \num_active_trans_reg[0] ,
    incr_trans05_out,
    count_is_max1__1_0,
    \arb_gnt_r_reg[4] ,
    m_axis_tvalid,
    \num_active_trans_reg[0]_0 ,
    count_is_max_reg,
    m_axi_rready,
    s_axi_awvalid,
    count_is_max,
    m_axis_tready,
    arb_gnt_i,
    s_axis_tvalid,
    s_axis_tid,
    s_axi_bready,
    \arb_gnt_r_reg[1] ,
    m_axis_tlast,
    o_i,
    arb_busy_r,
    decr_trans0,
    count_is_max_reg_0,
    s_axi_arvalid,
    s_axi_wlast,
    s_axi_wvalid,
    count_is_zero,
    m_axi_rvalid,
    SR,
    D,
    aclk);
  output [0:0]E;
  output [4:0]Q;
  output decr_trans02_out;
  output count_is_max1__1;
  output [0:0]\num_active_trans_reg[0] ;
  output incr_trans05_out;
  output count_is_max1__1_0;
  output \arb_gnt_r_reg[4] ;
  output m_axis_tvalid;
  output [0:0]\num_active_trans_reg[0]_0 ;
  output count_is_max_reg;
  output m_axi_rready;
  input s_axi_awvalid;
  input count_is_max;
  input m_axis_tready;
  input [3:0]arb_gnt_i;
  input s_axis_tvalid;
  input [2:0]s_axis_tid;
  input s_axi_bready;
  input \arb_gnt_r_reg[1] ;
  input m_axis_tlast;
  input o_i;
  input arb_busy_r;
  input decr_trans0;
  input count_is_max_reg_0;
  input s_axi_arvalid;
  input s_axi_wlast;
  input s_axi_wvalid;
  input count_is_zero;
  input m_axi_rvalid;
  input [0:0]SR;
  input [4:0]D;
  input aclk;

  wire [4:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire arb_busy_r;
  wire [3:0]arb_gnt_i;
  wire \arb_gnt_r[4]_i_7_n_0 ;
  wire \arb_gnt_r_reg[1] ;
  wire \arb_gnt_r_reg[4] ;
  wire count_is_max;
  wire count_is_max1__1;
  wire count_is_max1__1_0;
  wire count_is_max_reg;
  wire count_is_max_reg_0;
  wire count_is_zero;
  wire decr_trans0;
  wire decr_trans02_out;
  wire incr_trans05_out;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [0:0]\num_active_trans_reg[0] ;
  wire [0:0]\num_active_trans_reg[0]_0 ;
  wire o_i;
  wire s_axi_arvalid;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_wlast;
  wire s_axi_wvalid;
  wire [2:0]s_axis_tid;
  wire s_axis_tvalid;

  LUT6 #(
    .INIT(64'hE0000000FFFFFFFF)) 
    \arb_gnt_r[4]_i_3 
       (.I0(\arb_gnt_r_reg[1] ),
        .I1(\arb_gnt_r[4]_i_7_n_0 ),
        .I2(m_axis_tready),
        .I3(m_axis_tlast),
        .I4(o_i),
        .I5(arb_busy_r),
        .O(\arb_gnt_r_reg[4] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \arb_gnt_r[4]_i_7 
       (.I0(Q[3]),
        .I1(arb_gnt_i[2]),
        .I2(Q[2]),
        .I3(arb_gnt_i[1]),
        .O(\arb_gnt_r[4]_i_7_n_0 ));
  FDRE \busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \busy_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \busy_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \busy_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \busy_r_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  LUT5 #(
    .INIT(32'hBBBFFFFF)) 
    count_is_max_i_3
       (.I0(count_is_max_reg_0),
        .I1(m_axis_tready),
        .I2(Q[2]),
        .I3(arb_gnt_i[1]),
        .I4(s_axi_arvalid),
        .O(count_is_max_reg));
  LUT4 #(
    .INIT(16'h8880)) 
    m_axi_rready_INST_0
       (.I0(m_axi_rvalid),
        .I1(m_axis_tready),
        .I2(Q[3]),
        .I3(arb_gnt_i[2]),
        .O(m_axi_rready));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    m_axis_tvalid_INST_0
       (.I0(o_i),
        .I1(Q[3]),
        .I2(arb_gnt_i[2]),
        .I3(Q[2]),
        .I4(arb_gnt_i[1]),
        .I5(\arb_gnt_r_reg[1] ),
        .O(m_axis_tvalid));
  LUT6 #(
    .INIT(64'hDFDFDFFF20202000)) 
    \num_active_trans[3]_i_1 
       (.I0(s_axi_awvalid),
        .I1(count_is_max),
        .I2(m_axis_tready),
        .I3(Q[1]),
        .I4(arb_gnt_i[0]),
        .I5(decr_trans02_out),
        .O(E));
  LUT6 #(
    .INIT(64'hAAAAAAA6AAAAAAAA)) 
    \num_active_trans[3]_i_1__0 
       (.I0(incr_trans05_out),
        .I1(s_axis_tvalid),
        .I2(s_axis_tid[2]),
        .I3(s_axis_tid[0]),
        .I4(s_axis_tid[1]),
        .I5(s_axi_bready),
        .O(\num_active_trans_reg[0] ));
  LUT6 #(
    .INIT(64'h9A9A9AAAAAAAAAAA)) 
    \num_active_trans[3]_i_1__1 
       (.I0(decr_trans0),
        .I1(count_is_max_reg_0),
        .I2(m_axis_tready),
        .I3(Q[2]),
        .I4(arb_gnt_i[1]),
        .I5(s_axi_arvalid),
        .O(\num_active_trans_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h20202000)) 
    \num_active_trans[3]_i_3 
       (.I0(s_axi_awvalid),
        .I1(count_is_max),
        .I2(m_axis_tready),
        .I3(Q[1]),
        .I4(arb_gnt_i[0]),
        .O(incr_trans05_out));
  LUT6 #(
    .INIT(64'h0800080008000000)) 
    \num_active_trans[3]_i_3__1 
       (.I0(s_axi_wlast),
        .I1(s_axi_wvalid),
        .I2(count_is_zero),
        .I3(m_axis_tready),
        .I4(Q[4]),
        .I5(arb_gnt_i[3]),
        .O(decr_trans02_out));
  LUT6 #(
    .INIT(64'hAAAA02AAAAAAAAAA)) 
    \num_active_trans[3]_i_4 
       (.I0(decr_trans02_out),
        .I1(arb_gnt_i[0]),
        .I2(Q[1]),
        .I3(m_axis_tready),
        .I4(count_is_max),
        .I5(s_axi_awvalid),
        .O(count_is_max1__1));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \num_active_trans[3]_i_4__0 
       (.I0(s_axi_bready),
        .I1(s_axis_tid[1]),
        .I2(s_axis_tid[0]),
        .I3(s_axis_tid[2]),
        .I4(s_axis_tvalid),
        .I5(incr_trans05_out),
        .O(count_is_max1__1_0));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_9_axisc_decoder" *) 
module axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder
   (\gen_tdest_routing.busy_r_reg[0]_0 ,
    areset_r_reg,
    busy_ns,
    aclk);
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  input areset_r_reg;
  input busy_ns;
  input aclk;

  wire aclk;
  wire areset_r_reg;
  wire busy_ns;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;

  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(busy_ns),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset_r_reg));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_9_axisc_decoder" *) 
module axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_2
   (\gen_tdest_routing.busy_r_reg[0]_0 ,
    areset_r_reg,
    busy_ns,
    aclk);
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  input areset_r_reg;
  input busy_ns;
  input aclk;

  wire aclk;
  wire areset_r_reg;
  wire busy_ns;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;

  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(busy_ns),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset_r_reg));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_9_axisc_decoder" *) 
module axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_3
   (\gen_tdest_routing.busy_r_reg[0]_0 ,
    areset_r_reg,
    busy_ns,
    aclk);
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  input areset_r_reg;
  input busy_ns;
  input aclk;

  wire aclk;
  wire areset_r_reg;
  wire busy_ns;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;

  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(busy_ns),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset_r_reg));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_9_axisc_decoder" *) 
module axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_4
   (\gen_tdest_routing.busy_r_reg[0]_0 ,
    areset_r_reg,
    busy_ns,
    aclk);
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  input areset_r_reg;
  input busy_ns;
  input aclk;

  wire aclk;
  wire areset_r_reg;
  wire busy_ns;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;

  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(busy_ns),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset_r_reg));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_9_axisc_decoder" *) 
module axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder_5
   (\gen_tdest_routing.busy_r_reg[0]_0 ,
    areset_r_reg,
    busy_ns,
    aclk);
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  input areset_r_reg;
  input busy_ns;
  input aclk;

  wire aclk;
  wire areset_r_reg;
  wire busy_ns;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;

  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(busy_ns),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset_r_reg));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_9_axisc_decoder" *) 
module axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_decoder__parameterized0
   (\gen_tdest_routing.decode_err_r_reg_0 ,
    areset_r1,
    aclk,
    s_axis_tid,
    s_axis_tvalid);
  output \gen_tdest_routing.decode_err_r_reg_0 ;
  input areset_r1;
  input aclk;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;

  wire aclk;
  wire areset_r1;
  wire decode_err_r0;
  wire \gen_tdest_routing.decode_err_r_reg_0 ;
  wire [2:0]s_axis_tid;
  wire s_axis_tvalid;

  LUT5 #(
    .INIT(32'h0000E000)) 
    \gen_tdest_routing.decode_err_r_i_1 
       (.I0(s_axis_tid[1]),
        .I1(s_axis_tid[0]),
        .I2(s_axis_tid[2]),
        .I3(s_axis_tvalid),
        .I4(\gen_tdest_routing.decode_err_r_reg_0 ),
        .O(decode_err_r0));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(decode_err_r0),
        .Q(\gen_tdest_routing.decode_err_r_reg_0 ),
        .R(areset_r1));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_9_axisc_transfer_mux" *) 
module axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_transfer_mux
   (m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    o_i,
    E,
    Q,
    decr_trans02_out,
    count_is_max1__1,
    \num_active_trans_reg[0] ,
    incr_trans05_out,
    count_is_max1__1_0,
    \arb_gnt_r_reg[4] ,
    m_axis_tvalid,
    \num_active_trans_reg[0]_0 ,
    count_is_max_reg,
    m_axi_rready,
    arb_sel_i,
    p_0_in,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    \arb_sel_r_reg[1] ,
    \arb_sel_r_reg[1]_0 ,
    \arb_sel_r_reg[1]_1 ,
    \arb_sel_r_reg[1]_2 ,
    \arb_sel_r_reg[1]_3 ,
    p_0_in_0,
    m_int_tvalid,
    s_axi_awvalid,
    count_is_max,
    m_axis_tready,
    arb_gnt_i,
    s_axis_tvalid,
    s_axis_tid,
    s_axi_bready,
    \arb_gnt_r_reg[1] ,
    arb_busy_r,
    decr_trans0,
    count_is_max_reg_0,
    s_axi_arvalid,
    s_axi_wvalid,
    count_is_zero,
    m_axi_rvalid,
    SR,
    D,
    aclk);
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tkeep;
  output m_axis_tlast;
  output [2:0]m_axis_tid;
  output o_i;
  output [0:0]E;
  output [4:0]Q;
  output decr_trans02_out;
  output count_is_max1__1;
  output [0:0]\num_active_trans_reg[0] ;
  output incr_trans05_out;
  output count_is_max1__1_0;
  output \arb_gnt_r_reg[4] ;
  output m_axis_tvalid;
  output [0:0]\num_active_trans_reg[0]_0 ;
  output count_is_max_reg;
  output m_axi_rready;
  input [2:0]arb_sel_i;
  input [63:0]p_0_in;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [3:0]s_axi_wuser;
  input \arb_sel_r_reg[1] ;
  input \arb_sel_r_reg[1]_0 ;
  input \arb_sel_r_reg[1]_1 ;
  input \arb_sel_r_reg[1]_2 ;
  input \arb_sel_r_reg[1]_3 ;
  input p_0_in_0;
  input [0:0]m_int_tvalid;
  input s_axi_awvalid;
  input count_is_max;
  input m_axis_tready;
  input [3:0]arb_gnt_i;
  input s_axis_tvalid;
  input [2:0]s_axis_tid;
  input s_axi_bready;
  input \arb_gnt_r_reg[1] ;
  input arb_busy_r;
  input decr_trans0;
  input count_is_max_reg_0;
  input s_axi_arvalid;
  input s_axi_wvalid;
  input count_is_zero;
  input m_axi_rvalid;
  input [0:0]SR;
  input [4:0]D;
  input aclk;

  wire [4:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire arb_busy_r;
  wire [3:0]arb_gnt_i;
  wire \arb_gnt_r_reg[1] ;
  wire \arb_gnt_r_reg[4] ;
  wire [2:0]arb_sel_i;
  wire \arb_sel_r_reg[1] ;
  wire \arb_sel_r_reg[1]_0 ;
  wire \arb_sel_r_reg[1]_1 ;
  wire \arb_sel_r_reg[1]_2 ;
  wire \arb_sel_r_reg[1]_3 ;
  wire count_is_max;
  wire count_is_max1__1;
  wire count_is_max1__1_0;
  wire count_is_max_reg;
  wire count_is_max_reg_0;
  wire count_is_zero;
  wire decr_trans0;
  wire decr_trans02_out;
  wire incr_trans05_out;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [63:0]m_axis_tdata;
  wire [2:0]m_axis_tid;
  wire [7:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [0:0]m_int_tvalid;
  wire [0:0]\num_active_trans_reg[0] ;
  wire [0:0]\num_active_trans_reg[0]_0 ;
  wire o_i;
  wire [63:0]p_0_in;
  wire p_0_in_0;
  wire s_axi_arvalid;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire [3:0]s_axi_wstrb;
  wire [3:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire [2:0]s_axis_tid;
  wire s_axis_tvalid;

  axi_mm2s_mapper_0_axis_switch_v1_1_9_axisc_arb_responder \gen_tdest_router.axisc_arb_responder 
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .aclk(aclk),
        .arb_busy_r(arb_busy_r),
        .arb_gnt_i(arb_gnt_i),
        .\arb_gnt_r_reg[1] (\arb_gnt_r_reg[1] ),
        .\arb_gnt_r_reg[4] (\arb_gnt_r_reg[4] ),
        .count_is_max(count_is_max),
        .count_is_max1__1(count_is_max1__1),
        .count_is_max1__1_0(count_is_max1__1_0),
        .count_is_max_reg(count_is_max_reg),
        .count_is_max_reg_0(count_is_max_reg_0),
        .count_is_zero(count_is_zero),
        .decr_trans0(decr_trans0),
        .decr_trans02_out(decr_trans02_out),
        .incr_trans05_out(incr_trans05_out),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .\num_active_trans_reg[0] (\num_active_trans_reg[0] ),
        .\num_active_trans_reg[0]_0 (\num_active_trans_reg[0]_0 ),
        .o_i(o_i),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_tid(s_axis_tid),
        .s_axis_tvalid(s_axis_tvalid));
  axi_mm2s_mapper_0_axis_infrastructure_v1_1_0_mux_enc \gen_tdest_router.mux_enc_0 
       (.arb_sel_i(arb_sel_i),
        .\arb_sel_r_reg[1] (\arb_sel_r_reg[1] ),
        .\arb_sel_r_reg[1]_0 (\arb_sel_r_reg[1]_0 ),
        .\arb_sel_r_reg[1]_1 (\arb_sel_r_reg[1]_1 ),
        .\arb_sel_r_reg[1]_2 (\arb_sel_r_reg[1]_2 ),
        .\arb_sel_r_reg[1]_3 (\arb_sel_r_reg[1]_3 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .p_0_in(p_0_in),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(s_axi_wuser));
  axi_mm2s_mapper_0_axis_infrastructure_v1_1_0_mux_enc__parameterized0 \gen_tdest_router.mux_enc_1 
       (.arb_sel_i(arb_sel_i[2]),
        .m_int_tvalid(m_int_tvalid),
        .o_i(o_i),
        .p_0_in_0(p_0_in_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
