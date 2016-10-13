----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/11/2016 11:35:17 AM
-- Design Name: 
-- Module Name: simple_pci_top - Behavioral
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity simple_pci_top is
  Port ( 
    ---------------------------------------------------------------------------
    -- Xilinx Hard IP Interface
    --  . Clock and Resets
    sys_clk_p : in std_logic;
    sys_clk_n : in std_logic;
    sys_rst_n : in std_logic;
    --  . Serial I/F
    pci_exp_txn : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] pci_exp_txn           ,
    pci_exp_txp : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] pci_exp_txp           ,
    pci_exp_rxn : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] pci_exp_rxn           ,
    pci_exp_rxp : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] pci_exp_rxp           ,
    ---------------------------------------------------------------------------
    -- Protection logic interface
    prot0_out : out std_logic;--output wire                                         prot0_out             ,
    prot2_in : in std_logic_vector(2-1 downto 0);--    input  wire [2                                -1:0] prot2_in              ,
    prot2_out : out std_logic;--    output wire                                         prot2_out             ,
    ---------------------------------------------------------------------------
    -- User Leds and switches
    usr_sw : in std_logic_vector(3-1 downto 0);--    input  wire [3                                -1:0] usr_sw                ,   
    usr_led : out std_logic_vector(4-1 downto 0)--    output wire [4                                -1:0] usr_led
    ---------------------------------------------------------------------------
  );
end simple_pci_top;

architecture Behavioral of simple_pci_top is
    -- Clocks and Resets
    signal qpcie_srst_out : std_logic;--wire                                         qpcie_srst_out        ;
    signal qpcie_clk_out : std_logic;--wire                                         qpcie_clk_out         ;
    signal aclk  : std_logic;--wire                                         aclk                  ;
    signal aresetn  : std_logic;--wire                                         aresetn               ;
    signal asrst : std_logic;--wire                                         asrst                 ;
    
    -- Interrupt Interface
    signal local_interrupt_in : std_logic_vector(8-1 downto 0);--wire [8                                -1:0] local_interrupt_in    ;
    signal local_interrupt_out : std_logic_vector(32-1 downto 0);--wire [32                               -1:0] local_interrupt_out   ;
    
    -- Test Interface
    signal test_out : std_logic_vector(64-1 downto 0);--wire [64                               -1:0] test_out              ;
    signal aclk_cnt : std_logic_vector(25-1 downto 0);--reg  [25                               -1:0] aclk_cnt              ;
    
    -- PCIe Interface
--    signal pci_exp_txn_s : std_logic_vector(4-1 downto 0);
--    signal pci_exp_txp_s : std_logic_vector(4-1 downto 0);
--    signal pci_exp_rxn_s : std_logic_vector(4-1 downto 0);
--    signal pci_exp_rxp_s : std_logic_vector(4-1 downto 0);
--    signal pci_exp_tx_s : std_logic_vector(4-1 downto 0);
--    signal pci_exp_rx_s : std_logic_vector(4-1 downto 0);
    
    -- AXI4 Slave Lite Interface
    --  . Write Address Channel
    signal axi4_slvl_awaddr : std_logic_vector(14-1 downto 0);--wire [14                               -1:0] axi4_slvl_awaddr      ;
    signal axi4_slvl_awprot : std_logic_vector(3-1 downto 0);--wire [3                                -1:0] axi4_slvl_awprot      ;
    signal axi4_slvl_awvalid  : std_logic;--wire                                         axi4_slvl_awvalid     ;
    signal axi4_slvl_awready : std_logic;--wire                                         axi4_slvl_awready     ;
    --  . Write Data Channel
    signal axi4_slvl_wdata : std_logic_vector(32-1 downto 0);--wire [32                               -1:0] axi4_slvl_wdata       ;
    signal axi4_slvl_wstrb : std_logic_vector(4-1 downto 0);--wire [4                                -1:0] axi4_slvl_wstrb       ;
    signal axi4_slvl_wvalid : std_logic;--wire                                         axi4_slvl_wvalid      ;
    signal axi4_slvl_wready : std_logic;--wire                                         axi4_slvl_wready      ;
    --  . Write Response Channel
    signal axi4_slvl_bresp : std_logic_vector(2-1 downto 0);--wire [2                                -1:0] axi4_slvl_bresp       ;
    signal axi4_slvl_bvalid : std_logic;--wire                                         axi4_slvl_bvalid      ;
    signal axi4_slvl_bready : std_logic;--wire                                         axi4_slvl_bready      ;
    --  . Read Address Channel
    signal axi4_slvl_araddr : std_logic_vector(14-1 downto 0);--wire [14                               -1:0] axi4_slvl_araddr      ;
    signal axi4_slvl_arprot : std_logic_vector(3-1 downto 0);--wire [3                                -1:0] axi4_slvl_arprot      ;
    signal axi4_slvl_arvalid : std_logic;--wire                                         axi4_slvl_arvalid     ;
    signal axi4_slvl_arready : std_logic;--wire                                         axi4_slvl_arready     ;
    --  . Read Data Channel
    signal axi4_slvl_rdata : std_logic_vector(32-1 downto 0);--wire [32                               -1:0] axi4_slvl_rdata       ;
    signal axi4_slvl_rresp : std_logic_vector(2-1 downto 0);--wire [2                                -1:0] axi4_slvl_rresp       ;
    signal axi4_slvl_rvalid : std_logic;--wire                                         axi4_slvl_rvalid      ;
    signal axi4_slvl_rready : std_logic;--wire                                         axi4_slvl_rready      ;
    
    -- AXI4 Master Lite Interface
    --  . Write Address Channel
    signal axi4_mstl_awaddr : std_logic_vector(13-1 downto 0);--wire [13                               -1:0] axi4_mstl_awaddr      ;
    signal axi4_mstl_awprot : std_logic_vector(3-1 downto 0);--wire [3                                -1:0] axi4_mstl_awprot      ;
    signal axi4_mstl_awvalid : std_logic;--wire                                         axi4_mstl_awvalid     ;
    signal axi4_mstl_awready : std_logic;--wire                                         axi4_mstl_awready     ;
    --  . Write Data Channel
    signal axi4_mstl_wdata : std_logic_vector(32-1 downto 0);--wire [32                               -1:0] axi4_mstl_wdata       ;
    signal axi4_mstl_wstrb : std_logic_vector(4-1 downto 0);--wire [4                                -1:0] axi4_mstl_wstrb       ;
    signal axi4_mstl_wvalid : std_logic;--wire                                         axi4_mstl_wvalid      ;
    signal axi4_mstl_wready : std_logic;--wire                                         axi4_mstl_wready      ;
    --  . Write Response Channel
    signal axi4_mstl_bresp : std_logic_vector(2-1 downto 0);--wire [2                                -1:0] axi4_mstl_bresp       ;
    signal axi4_mstl_bvalid : std_logic;--wire                                         axi4_mstl_bvalid      ;
    signal axi4_mstl_bready : std_logic;--wire                                         axi4_mstl_bready      ;
    --  . Read Address Channel
    signal axi4_mstl_araddr : std_logic_vector(13-1 downto 0);--wire [13                               -1:0] axi4_mstl_araddr      ;
    signal axi4_mstl_arprot : std_logic_vector(3-1 downto 0);--wire [3                                -1:0] axi4_mstl_arprot      ;
    signal axi4_mstl_arvalid : std_logic;--wire                                         axi4_mstl_arvalid     ;
    signal axi4_mstl_arready : std_logic;--wire                                         axi4_mstl_arready     ;
    --  . Read Data Channel
    signal axi4_mstl_rdata : std_logic_vector(32-1 downto 0);--wire [32                               -1:0] axi4_mstl_rdata       ;
    signal axi4_mstl_rresp : std_logic_vector(2-1 downto 0);--wire [2                                -1:0] axi4_mstl_rresp       ;
    signal axi4_mstl_rvalid : std_logic;--wire                                         axi4_mstl_rvalid      ;
    signal axi4_mstl_rready : std_logic;--wire                                         axi4_mstl_rready      ;
    
    -- AXI4 Master 0 Interface
    --  . Write Address Channel
    signal axi4_mst0_awid : std_logic_vector(4-1 downto 0);--wire [4                                -1:0] axi4_mst0_awid        ;
    signal axi4_mst0_awaddr : std_logic_vector(64-1 downto 0);--wire [64                               -1:0] axi4_mst0_awaddr      ;
    signal axi4_mst0_awregion : std_logic_vector(4-1 downto 0);--wire [4                                -1:0] axi4_mst0_awregion    ;
    signal axi4_mst0_awlen : std_logic_vector(8-1 downto 0);--wire [8                                -1:0] axi4_mst0_awlen       ;
    signal axi4_mst0_awsize : std_logic_vector(3-1 downto 0);--wire [3                                -1:0] axi4_mst0_awsize      ;
    signal axi4_mst0_awburst : std_logic_vector(2-1 downto 0);--wire [2                                -1:0] axi4_mst0_awburst     ;
    signal axi4_mst0_awlock : std_logic;--wire                                         axi4_mst0_awlock      ;
    signal axi4_mst0_awcache : std_logic_vector(4-1 downto 0);--wire [4                                -1:0] axi4_mst0_awcache     ;
    signal axi4_mst0_awprot : std_logic_vector(3-1 downto 0);--wire [3                                -1:0] axi4_mst0_awprot      ;
    signal axi4_mst0_awqos : std_logic_vector(4-1 downto 0);--wire [4                                -1:0] axi4_mst0_awqos       ;
    signal axi4_mst0_awvalid : std_logic;--wire                                         axi4_mst0_awvalid     ;
    signal axi4_mst0_awready : std_logic;--wire                                         axi4_mst0_awready     ;
    --  . Write Data Channel
    signal axi4_mst0_wdata : std_logic_vector(128-1 downto 0);--wire [128                              -1:0] axi4_mst0_wdata       ;
    signal axi4_mst0_wstrb : std_logic_vector(128/8-1 downto 0);--wire [128/8                            -1:0] axi4_mst0_wstrb       ;
    signal axi4_mst0_wlast : std_logic;--wire                                         axi4_mst0_wlast       ;
    signal axi4_mst0_wvalid : std_logic;--wire                                         axi4_mst0_wvalid      ;
    signal axi4_mst0_wready : std_logic;--wire                                         axi4_mst0_wready      ;
    --  . Write Response Channel
    signal axi4_mst0_bid : std_logic_vector(4-1 downto 0);--wire [4                                -1:0] axi4_mst0_bid         ;
    signal axi4_mst0_bresp : std_logic_vector(2-1 downto 0);--wire [2                                -1:0] axi4_mst0_bresp       ;
    signal axi4_mst0_bvalid : std_logic;--wire                                         axi4_mst0_bvalid      ;
    signal axi4_mst0_bready : std_logic;--wire                                         axi4_mst0_bready      ;
    --  . Read Address Channel
    signal axi4_mst0_arid : std_logic_vector(4-1 downto 0);--wire [4                                -1:0] axi4_mst0_arid        ;
    signal axi4_mst0_araddr : std_logic_vector(64-1 downto 0);--wire [64                               -1:0] axi4_mst0_araddr      ;
    signal axi4_mst0_arregion : std_logic_vector(4-1 downto 0);--wire [4                                -1:0] axi4_mst0_arregion    ;
    signal axi4_mst0_arlen : std_logic_vector(8-1 downto 0);--wire [8                                -1:0] axi4_mst0_arlen       ;
    signal axi4_mst0_arsize : std_logic_vector(3-1 downto 0);--wire [3                                -1:0] axi4_mst0_arsize      ;
    signal axi4_mst0_arburst : std_logic_vector(2-1 downto 0);--wire [2                                -1:0] axi4_mst0_arburst     ;
    signal axi4_mst0_arlock : std_logic;--wire                                         axi4_mst0_arlock      ;
    signal axi4_mst0_arcache : std_logic_vector(4-1 downto 0);--wire [4                                -1:0] axi4_mst0_arcache     ;
    signal axi4_mst0_arprot : std_logic_vector(3-1 downto 0);--wire [3                                -1:0] axi4_mst0_arprot      ;
    signal axi4_mst0_arqos : std_logic_vector(4-1 downto 0);--wire [4                                -1:0] axi4_mst0_arqos       ;
    signal axi4_mst0_arvalid : std_logic;--wire                                         axi4_mst0_arvalid     ;
    signal axi4_mst0_arready : std_logic;--wire                                         axi4_mst0_arready     ;
    --  . Read Data Channel
    signal axi4_mst0_rid : std_logic_vector(4-1 downto 0);--wire [4                                -1:0] axi4_mst0_rid         ;
    signal axi4_mst0_rdata : std_logic_vector(128-1 downto 0);--wire [128                              -1:0] axi4_mst0_rdata       ;
    signal axi4_mst0_rresp : std_logic_vector(2-1 downto 0);--wire [2                                -1:0] axi4_mst0_rresp       ;
    signal axi4_mst0_rlast : std_logic;--wire                                         axi4_mst0_rlast       ;
    signal axi4_mst0_rvalid : std_logic;--wire                                         axi4_mst0_rvalid      ;
    signal axi4_mst0_rready : std_logic;--wire                                         axi4_mst0_rready      ;
    
    -- AXI4-Stream Out 0 Interface
    signal axi4_sto0_tvalid : std_logic;--wire                                         axi4_sto0_tvalid      ;
    signal axi4_sto0_tready : std_logic;--wire                                         axi4_sto0_tready      ;
    signal axi4_sto0_tdata : std_logic_vector(128-1 downto 0);--wire [128                              -1:0] axi4_sto0_tdata       ;
    signal axi4_sto0_tstrb : std_logic_vector(128/8-1 downto 0);--wire [128/8                            -1:0] axi4_sto0_tstrb       ;
    signal axi4_sto0_tkeep : std_logic_vector(128/8-1 downto 0);--wire [128/8                            -1:0] axi4_sto0_tkeep       ;
    signal axi4_sto0_tlast : std_logic;--wire                                         axi4_sto0_tlast       ;
    signal axi4_sto0_tid : std_logic_vector(8-1 downto 0);--wire [8                                -1:0] axi4_sto0_tid         ;
    signal axi4_sto0_tdest : std_logic_vector(4-1 downto 0);--wire [4                                -1:0] axi4_sto0_tdest       ;
    
    -- AXI4-Stream In 0 Interface
    signal axi4_sti0_tvalid : std_logic;--wire                                         axi4_sti0_tvalid      ;
    signal axi4_sti0_tready : std_logic;--wire                                         axi4_sti0_tready      ;
    signal axi4_sti0_tdata : std_logic_vector(128-1 downto 0);--wire [128                              -1:0] axi4_sti0_tdata       ;
    signal axi4_sti0_tstrb : std_logic_vector(128/8-1 downto 0);--wire [128/8                            -1:0] axi4_sti0_tstrb       ;
    signal axi4_sti0_tkeep : std_logic_vector(128/8-1 downto 0);--wire [128/8                            -1:0] axi4_sti0_tkeep       ;
    signal axi4_sti0_tlast : std_logic;--wire                                         axi4_sti0_tlast       ;
    signal axi4_sti0_tid : std_logic_vector(8-1 downto 0);--wire [8                                -1:0] axi4_sti0_tid         ;
    signal axi4_sti0_tdest : std_logic_vector(4-1 downto 0);--wire [4                                -1:0] axi4_sti0_tdest       ;

    component qpcie_ipcore_x4_gen2 
    generic(
        --parameter   G_PCIE_REFCLK_FREQ      =  100      // PCIe Reference Clock Frequency
        G_PCIE_REFCLK_FREQ : integer     :=  100  
    );
    
    Port(
        
        ---------------------------------------------------------------------------
        -- Clocks and Resets
        --  . Bridge Layer Clocks and Reset
        qpcie_srst_out : out std_logic;
        qpcie_rstn_in : in std_logic;
        qpcie_srst_in : in std_logic;
        qpcie_clk_out : out std_logic;
        qpcie_clk_in : in std_logic;        
        --output wire                                         qpcie_srst_out        ,
        --input  wire                                         qpcie_rstn_in         ,
        --input  wire                                         qpcie_srst_in         ,
        --output wire                                         qpcie_clk_out         ,
        --input  wire                                         qpcie_clk_in          ,
        
        ---------------------------------------------------------------------------
        -- Interrupt Interface
        local_interrupt_in : in std_logic_vector(8-1 downto 0);--input  wire [8                                -1:0] local_interrupt_in    ,
        local_interrupt_out : out std_logic_vector(32-1 downto 0);--output wire [32                               -1:0] local_interrupt_out   ,
        
        --//-------------------------------------------------------------------------
        --// Clocks and Resets
        --//  . AXI Interfaces Clocks
        aclk : in std_logic;--input  wire                                         aclk                  ,
        aresetn : in std_logic;--input  wire                                         aresetn               ,
        asrst : in std_logic;--input  wire                                         asrst                 ,
        
        ---------------------------------------------------------------------------
        -- AXI4 Slave Lite Interface
        --  . Clocks and Resets
        axi4_slvl_aclk : in std_logic;--input  wire                                         axi4_slvl_aclk        ,
        axi4_slvl_aresetn : in std_logic;--input  wire                                         axi4_slvl_aresetn     ,
        axi4_slvl_asrst : in std_logic;--input  wire                                         axi4_slvl_asrst       ,
        --  . Write Address Channel
        axi4_slvl_awaddr : in std_logic_vector(14-1 downto 0);--input  wire [14                               -1:0] axi4_slvl_awaddr      ,
        axi4_slvl_awprot : in std_logic_vector(3-1 downto 0);--input  wire [3                                -1:0] axi4_slvl_awprot      ,
        axi4_slvl_awvalid : in std_logic;--input  wire                                         axi4_slvl_awvalid     ,
        axi4_slvl_awready : out std_logic;--output wire                                         axi4_slvl_awready     ,
        --  . Write Data Channel
        axi4_slvl_wdata : in std_logic_vector(32-1 downto 0);--input  wire [32                               -1:0] axi4_slvl_wdata       ,
        axi4_slvl_wstrb : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] axi4_slvl_wstrb       ,
        axi4_slvl_wvalid : in std_logic; --input  wire                                         axi4_slvl_wvalid      ,
        axi4_slvl_wready : out std_logic;--output wire                                         axi4_slvl_wready      ,
        --  . Write Response Channel
        axi4_slvl_bresp : out std_logic_vector(2-1 downto 0);--output wire [2                                -1:0] axi4_slvl_bresp       ,
        axi4_slvl_bvalid : out std_logic;--output wire                                         axi4_slvl_bvalid      ,
        axi4_slvl_bready : in std_logic;--input  wire                                         axi4_slvl_bready      ,
        --  . Read Address Channel
        axi4_slvl_araddr : in std_logic_vector(14-1 downto 0);--input  wire [14                               -1:0] axi4_slvl_araddr      ,
        axi4_slvl_arprot : in std_logic_vector(3-1 downto 0);--input  wire [3                                -1:0] axi4_slvl_arprot      ,
        axi4_slvl_arvalid : in std_logic;--input  wire                                         axi4_slvl_arvalid     ,
        axi4_slvl_arready : out std_logic;--output wire                                         axi4_slvl_arready     ,
        --  . Read Data Channel
        axi4_slvl_rdata : out std_logic_vector(32-1 downto 0);--output wire [32                               -1:0] axi4_slvl_rdata       ,
        axi4_slvl_rresp : out std_logic_vector(2-1 downto 0);--output wire [2                                -1:0] axi4_slvl_rresp       ,
        axi4_slvl_rvalid : out std_logic;--output wire                                         axi4_slvl_rvalid      ,
        axi4_slvl_rready : in std_logic;--input  wire                                         axi4_slvl_rready      ,
        
        ---------------------------------------------------------------------------
        -- AXI4 Master Lite Interface
        --  . Clocks and Resets
        axi4_mstl_aclk : in std_logic;--input  wire                                         axi4_mstl_aclk        ,
        axi4_mstl_aresetn : in std_logic;--input  wire                                         axi4_mstl_aresetn     ,
        axi4_mstl_asrst : in std_logic;--input  wire                                         axi4_mstl_asrst       ,
        --  . Write Address Channel
        axi4_mstl_awaddr : out std_logic_vector(13-1 downto 0);--output wire [13                               -1:0] axi4_mstl_awaddr      ,
        axi4_mstl_awprot : out std_logic_vector(3-1 downto 0);--output wire [3                                -1:0] axi4_mstl_awprot      ,
        axi4_mstl_awvalid : out std_logic;--output wire                                         axi4_mstl_awvalid     ,
        axi4_mstl_awready : in std_logic;--input  wire                                         axi4_mstl_awready     ,
        --  . Write Data Channel
        axi4_mstl_wdata : out std_logic_vector(32-1 downto 0);--output wire [32                               -1:0] axi4_mstl_wdata       ,
        axi4_mstl_wstrb : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] axi4_mstl_wstrb       ,
        axi4_mstl_wvalid : out std_logic;--output wire                                         axi4_mstl_wvalid      ,
        axi4_mstl_wready : in std_logic;--input  wire                                         axi4_mstl_wready      ,
        --  . Write Response Channel
        axi4_mstl_bresp : in std_logic_vector(2-1 downto 0);--input  wire [2                                -1:0] axi4_mstl_bresp       ,
        axi4_mstl_bvalid : in std_logic;--input  wire                                         axi4_mstl_bvalid      ,
        axi4_mstl_bready : out std_logic;--output wire                                         axi4_mstl_bready      ,
        --  . Read Address Channel
        axi4_mstl_araddr : out std_logic_vector(13-1 downto 0);--output wire [13                               -1:0] axi4_mstl_araddr      ,
        axi4_mstl_arprot : out std_logic_vector(3-1 downto 0);--output wire [3                                -1:0] axi4_mstl_arprot      ,
        axi4_mstl_arvalid : out std_logic;--output wire                                         axi4_mstl_arvalid     ,
        axi4_mstl_arready : in std_logic;--input  wire                                         axi4_mstl_arready     ,
        --  . Read Data Channel
        axi4_mstl_rdata : in std_logic_vector(32-1 downto 0);--input  wire [32                               -1:0] axi4_mstl_rdata       ,
        axi4_mstl_rresp : in std_logic_vector(2-1 downto 0);--input  wire [2                                -1:0] axi4_mstl_rresp       ,
        axi4_mstl_rvalid : in std_logic;--input  wire                                         axi4_mstl_rvalid      ,
        axi4_mstl_rready : out std_logic;--output wire                                         axi4_mstl_rready      ,
        
        ---------------------------------------------------------------------------
        -- AXI4 Master 0 Interface
        
        --  . Write Address Channel
        axi4_mst0_awid : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] axi4_mst0_awid        ,
        axi4_mst0_awaddr : out std_logic_vector(64-1 downto 0);--output wire [64                               -1:0] axi4_mst0_awaddr      ,
        axi4_mst0_awregion : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] axi4_mst0_awregion    ,
        axi4_mst0_awlen : out std_logic_vector(8-1 downto 0);--output wire [8                                -1:0] axi4_mst0_awlen       ,
        axi4_mst0_awsize : out std_logic_vector(3-1 downto 0);--output wire [3                                -1:0] axi4_mst0_awsize      ,
        axi4_mst0_awburst : out std_logic_vector(2-1 downto 0);--output wire [2                                -1:0] axi4_mst0_awburst     ,
        axi4_mst0_awlock : out std_logic;--output wire                                         axi4_mst0_awlock      ,
        axi4_mst0_awcache : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] axi4_mst0_awcache     ,
        axi4_mst0_awprot : out std_logic_vector(3-1 downto 0);--output wire [3                                -1:0] axi4_mst0_awprot      ,
        axi4_mst0_awqos : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] axi4_mst0_awqos       ,
        axi4_mst0_awuser : out std_logic_vector(32-1 downto 0);--output wire [32                               -1:0] axi4_mst0_awuser      ,
        axi4_mst0_awvalid : out std_logic;--output wire                                         axi4_mst0_awvalid     ,
        axi4_mst0_awready : in std_logic;--input  wire                                         axi4_mst0_awready     ,
        --  . Write Data Channel
        
        axi4_mst0_wdata : out std_logic_vector(128-1 downto 0);--output wire [128                              -1:0] axi4_mst0_wdata       ,
        axi4_mst0_wderr : out std_logic_vector(16-1 downto 0);--output wire [16                               -1:0] axi4_mst0_wderr       ,
        axi4_mst0_wstrb : out std_logic_vector(16-1 downto 0);--output wire [16                               -1:0] axi4_mst0_wstrb       ,
        axi4_mst0_wlast : out std_logic;--output wire                                         axi4_mst0_wlast       ,
        axi4_mst0_wvalid : out std_logic;--output wire                                         axi4_mst0_wvalid      ,
        axi4_mst0_wready : in std_logic;--input  wire                                         axi4_mst0_wready      ,
        --  . Write Response Channel
        axi4_mst0_bid : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] axi4_mst0_bid         ,
        axi4_mst0_bresp : in std_logic_vector(2-1 downto 0);--input  wire [2                                -1:0] axi4_mst0_bresp       ,
        axi4_mst0_bvalid : in std_logic;--input  wire                                         axi4_mst0_bvalid      ,
        axi4_mst0_bready : out std_logic;--output wire                                         axi4_mst0_bready      ,
        --  . Read Address Channel
        axi4_mst0_arid : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] axi4_mst0_arid        ,
        axi4_mst0_araddr : out std_logic_vector(64-1 downto 0);--output wire [64                               -1:0] axi4_mst0_araddr      ,
        axi4_mst0_arregion : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] axi4_mst0_arregion    ,
        axi4_mst0_arlen : out std_logic_vector(8-1 downto 0);--output wire [8                                -1:0] axi4_mst0_arlen       ,
        axi4_mst0_arsize : out std_logic_vector(3-1 downto 0);--output wire [3                                -1:0] axi4_mst0_arsize      ,
        axi4_mst0_arburst : out std_logic_vector(2-1 downto 0);--output wire [2                                -1:0] axi4_mst0_arburst     ,
        axi4_mst0_arlock  : out std_logic;--output wire                                         axi4_mst0_arlock      ,
        axi4_mst0_arcache : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] axi4_mst0_arcache     ,
        axi4_mst0_arprot : out std_logic_vector(3-1 downto 0);--output wire [3                                -1:0] axi4_mst0_arprot      ,
        axi4_mst0_arqos : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] axi4_mst0_arqos       ,
        axi4_mst0_aruser : out std_logic_vector(32-1 downto 0);--output wire [32                               -1:0] axi4_mst0_aruser      ,
        axi4_mst0_arvalid : out std_logic;--output wire                                         axi4_mst0_arvalid     ,
        axi4_mst0_arready : in std_logic;--input  wire                                         axi4_mst0_arready     ,
        --  . Read Data Channel
        axi4_mst0_rid : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] axi4_mst0_rid         ,
        axi4_mst0_rdata : in std_logic_vector(128-1 downto 0);--input  wire [128                              -1:0] axi4_mst0_rdata       ,
        axi4_mst0_rderr : in std_logic_vector(16-1 downto 0);--input  wire [16                               -1:0] axi4_mst0_rderr       ,
        axi4_mst0_rresp : in std_logic_vector(2-1 downto 0);--input  wire [2                                -1:0] axi4_mst0_rresp       ,
        axi4_mst0_ruser : in std_logic_vector(32-1 downto 0);--input  wire [32                               -1:0] axi4_mst0_ruser       ,
        axi4_mst0_rlast : in std_logic;--input  wire                                         axi4_mst0_rlast       ,
        axi4_mst0_rvalid : in std_logic;--input  wire                                         axi4_mst0_rvalid      ,
        axi4_mst0_rready : out std_logic;--output wire                                         axi4_mst0_rready      ,
        
        ---------------------------------------------------------------------------
        -- AXI4-Stream 0 Interface
        
        --  . Stream Out Channel
        axi4_sto0_tvalid : out std_logic;--output wire                                         axi4_sto0_tvalid      ,
        axi4_sto0_tready : in std_logic;--input  wire                                         axi4_sto0_tready      ,
        axi4_sto0_tdata : out std_logic_vector(128-1 downto 0);--output wire [128                              -1:0] axi4_sto0_tdata       ,
        axi4_sto0_tstrb : out std_logic_vector(16-1 downto 0);--output wire [16                               -1:0] axi4_sto0_tstrb       ,
        axi4_sto0_tkeep : out std_logic_vector(16-1 downto 0);--output wire [16                               -1:0] axi4_sto0_tkeep       ,
        axi4_sto0_tlast : out std_logic;--output wire                                         axi4_sto0_tlast       ,
        axi4_sto0_tid : out std_logic_vector(8-1 downto 0);--output wire [8                                -1:0] axi4_sto0_tid         ,
        axi4_sto0_tdest : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] axi4_sto0_tdest       ,
        
        ---------------------------------------------------------------------------
        -- AXI4-Stream 0 Interface
        
        --  . Stream In Channel
        axi4_sti0_tvalid : in std_logic;--input  wire                                         axi4_sti0_tvalid      ,
        axi4_sti0_tready : out std_logic;--output wire                                         axi4_sti0_tready      ,
        axi4_sti0_tdata : in std_logic_vector(128-1 downto 0);--input  wire [128                              -1:0] axi4_sti0_tdata       ,
        axi4_sti0_tstrb : in std_logic_vector(16-1 downto 0);--input  wire [16                               -1:0] axi4_sti0_tstrb       ,
        axi4_sti0_tkeep : in std_logic_vector(16-1 downto 0);--input  wire [16                               -1:0] axi4_sti0_tkeep       ,
        axi4_sti0_tlast : in std_logic;--input  wire                                         axi4_sti0_tlast       ,
        axi4_sti0_tid : in std_logic_vector(8-1 downto 0);--input  wire [8                                -1:0] axi4_sti0_tid         ,
        axi4_sti0_tdest : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] axi4_sti0_tdest       ,
        
        ---------------------------------------------------------------------------
        -- Xilinx Hard IP Interface
        --  . Clock and Resets
        sys_clk_p : in std_logic;--input  wire                                         sys_clk_p             ,
        sys_clk_n : in std_logic;--input  wire                                         sys_clk_n             ,
        sys_rst_n : in std_logic;--input  wire                                         sys_rst_n             ,
        --  . Serial IF to PIPE for internal PHY
        pci_exp_txn : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] pci_exp_txn           ,
        pci_exp_txp : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] pci_exp_txp           ,
        pci_exp_rxn : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] pci_exp_rxn           ,
        pci_exp_rxp : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] pci_exp_rxp           ,
        
        ---------------------------------------------------------------------------
        -- Protection logic interface
        prot0_out : out std_logic;--output wire                                         prot0_out             ,
        prot2_in : in std_logic_vector(2-1 downto 0);--input  wire [2                                -1:0] prot2_in              ,
        prot2_out : out std_logic;--output wire                                         prot2_out             ,
        
        ---------------------------------------------------------------------------
        -- Test Interface
        test_out : out std_logic_vector(64-1 downto 0)--output wire [64                               -1:0] test_out
        
        ---------------------------------------------------------------------------

    );
    end component;
    
    --module qpcie_ref_design
    component qpcie_ref_design
    generic(
               G_DATAPATH_SIZE : integer        :=  128; -- Datapath size in Bits
               QPCIE_CLOCK_SPEED : integer      :=  125  -- Application clock speed in MHZ
           );
    Port(
        ---------------------------------------------------------------------------
        -- Clocks and Resets
        --  . AXI Interfaces Clocks
        aclk : in std_logic;--input  wire                                         aclk                  ,
        aresetn : in std_logic;--input  wire                                         aresetn               ,
        asrst : in std_logic;--input  wire                                         asrst                 ,
        ---------------------------------------------------------------------------
        -- Interrupt Interface
        local_interrupt_in : out std_logic_vector(8-1 downto 0);--output wire [8                                -1:0] local_interrupt_in    ,
        local_interrupt_out : in std_logic_vector(32-1 downto 0);--input  wire [32                               -1:0] local_interrupt_out   ,
        ---------------------------------------------------------------------------
        -- AXI4 Slave Lite Interface
        --  . Write Address Channel
        axi4_slvl_awaddr : out std_logic_vector(14-1 downto 0);--output wire [14                               -1:0] axi4_slvl_awaddr      ,
        axi4_slvl_awprot : out std_logic_vector(3-1 downto 0);--output wire [3                                -1:0] axi4_slvl_awprot      ,
        axi4_slvl_awvalid : out std_logic;--output wire                                         axi4_slvl_awvalid     ,
        axi4_slvl_awready : in std_logic;--input  wire                                         axi4_slvl_awready     ,
        --  . Write Data Channel
        axi4_slvl_wdata : out std_logic_vector(32-1 downto 0);--output wire [32                               -1:0] axi4_slvl_wdata       ,
        axi4_slvl_wstrb : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] axi4_slvl_wstrb       ,
        axi4_slvl_wvalid : out std_logic;--output wire                                         axi4_slvl_wvalid      ,
        axi4_slvl_wready : in std_logic;--input  wire                                         axi4_slvl_wready      ,
        --  . Write Response Channel
        axi4_slvl_bresp : in std_logic_vector(2-1 downto 0);--input  wire [2                                -1:0] axi4_slvl_bresp       ,
        axi4_slvl_bvalid : in std_logic;--input  wire                                         axi4_slvl_bvalid      ,
        axi4_slvl_bready : out std_logic;--output wire                                         axi4_slvl_bready      ,
        --  . Read Address Channel
        axi4_slvl_araddr : out std_logic_vector(14-1 downto 0);--output wire [14                               -1:0] axi4_slvl_araddr      ,
        axi4_slvl_arprot : out std_logic_vector(3-1 downto 0);--output wire [3                                -1:0] axi4_slvl_arprot      ,
        axi4_slvl_arvalid : out std_logic;--output wire                                         axi4_slvl_arvalid     ,
        axi4_slvl_arready : in std_logic;--input  wire                                         axi4_slvl_arready     ,
        --  . Read Data Channel
        axi4_slvl_rdata : in std_logic_vector(32-1 downto 0);--input  wire [32                               -1:0] axi4_slvl_rdata       ,
        axi4_slvl_rresp : in std_logic_vector(2-1 downto 0);--input  wire [2                                -1:0] axi4_slvl_rresp       ,
        axi4_slvl_rvalid : in std_logic;--input  wire                                         axi4_slvl_rvalid      ,
        axi4_slvl_rready : out std_logic;--output wire                                         axi4_slvl_rready      ,
        ---------------------------------------------------------------------------
        -- AXI4 Master Lite Interface
        --  . Write Address Channel
        axi4_mstl_awaddr : in std_logic_vector(13-1 downto 0);--input  wire [13                               -1:0] axi4_mstl_awaddr      ,
        axi4_mstl_awprot : in std_logic_vector(3-1 downto 0);--input  wire [3                                -1:0] axi4_mstl_awprot      ,
        axi4_mstl_awvalid : in std_logic;--input  wire                                         axi4_mstl_awvalid     ,
        axi4_mstl_awready : out std_logic;--output wire                                         axi4_mstl_awready     ,
        --  . Write Data Channel
        axi4_mstl_wdata : in std_logic_vector(32-1 downto 0);--input  wire [32                               -1:0] axi4_mstl_wdata       ,
        axi4_mstl_wstrb : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] axi4_mstl_wstrb       ,
        axi4_mstl_wvalid : in std_logic;--input  wire                                         axi4_mstl_wvalid      ,
        axi4_mstl_wready : out std_logic;--output wire                                         axi4_mstl_wready      ,
        --  . Write Response Channel
        axi4_mstl_bresp : out std_logic_vector(2-1 downto 0);--output wire [2                                -1:0] axi4_mstl_bresp       ,
        axi4_mstl_bvalid : out std_logic;--output wire                                         axi4_mstl_bvalid      ,
        axi4_mstl_bready : in std_logic;--input  wire                                         axi4_mstl_bready      ,
        --  . Read Address Channel
        axi4_mstl_araddr : in std_logic_vector(13-1 downto 0);--input  wire [13                               -1:0] axi4_mstl_araddr      ,
        axi4_mstl_arprot : in std_logic_vector(3-1 downto 0);--input  wire [3                                -1:0] axi4_mstl_arprot      ,
        axi4_mstl_arvalid : in std_logic;--input  wire                                         axi4_mstl_arvalid     ,
        axi4_mstl_arready : out std_logic;--output wire                                         axi4_mstl_arready     ,
        --  . Read Data Channel
        axi4_mstl_rdata : out std_logic_vector(32-1 downto 0);--output wire [32                               -1:0] axi4_mstl_rdata       ,
        axi4_mstl_rresp : out std_logic_vector(2-1 downto 0);--output wire [2                                -1:0] axi4_mstl_rresp       ,
        axi4_mstl_rvalid : out std_logic;--output wire                                         axi4_mstl_rvalid      ,
        axi4_mstl_rready : in std_logic;--input  wire                                         axi4_mstl_rready      ,
        ---------------------------------------------------------------------------
        -- AXI4 Master 0 Interface
        --  . Write Address Channel
        axi4_mst0_awid : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] axi4_mst0_awid        ,
        axi4_mst0_awaddr : in std_logic_vector(64-1 downto 0);--input  wire [64                               -1:0] axi4_mst0_awaddr      ,
        axi4_mst0_awregion : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] axi4_mst0_awregion    ,
        axi4_mst0_awlen : in std_logic_vector(8-1 downto 0);--input  wire [8                                -1:0] axi4_mst0_awlen       ,
        axi4_mst0_awsize : in std_logic_vector(3-1 downto 0);--input  wire [3                                -1:0] axi4_mst0_awsize      ,
        axi4_mst0_awburst : in std_logic_vector(2-1 downto 0);--input  wire [2                                -1:0] axi4_mst0_awburst     ,
        axi4_mst0_awlock : in std_logic;--input  wire                                         axi4_mst0_awlock      ,
        axi4_mst0_awcache : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] axi4_mst0_awcache     ,
        axi4_mst0_awprot : in std_logic_vector(3-1 downto 0);--input  wire [3                                -1:0] axi4_mst0_awprot      ,
        axi4_mst0_awqos : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] axi4_mst0_awqos       ,
        axi4_mst0_awvalid : in std_logic;--input  wire                                         axi4_mst0_awvalid     ,
        axi4_mst0_awready : out std_logic;--output wire                                         axi4_mst0_awready     ,
        --  . Write Data Channel
        axi4_mst0_wdata : in std_logic_vector(G_DATAPATH_SIZE-1 downto 0);--input  wire [G_DATAPATH_SIZE                  -1:0] axi4_mst0_wdata       ,
        axi4_mst0_wstrb : in std_logic_vector(G_DATAPATH_SIZE/8-1 downto 0);--input  wire [G_DATAPATH_SIZE/8                -1:0] axi4_mst0_wstrb       ,
        axi4_mst0_wlast : in std_logic;--input  wire                                         axi4_mst0_wlast       ,
        axi4_mst0_wvalid : in std_logic;--input  wire                                         axi4_mst0_wvalid      ,
        axi4_mst0_wready : out std_logic;--output wire                                         axi4_mst0_wready      ,
        --  . Write Response Channel
        axi4_mst0_bid : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] axi4_mst0_bid         ,
        axi4_mst0_bresp : out std_logic_vector(2-1 downto 0);--output wire [2                                -1:0] axi4_mst0_bresp       ,
        axi4_mst0_bvalid : out std_logic;--output wire                                         axi4_mst0_bvalid      ,
        axi4_mst0_bready : in std_logic;--input  wire                                         axi4_mst0_bready      ,
        --  . Read Address Channel
        axi4_mst0_arid : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] axi4_mst0_arid        ,
        axi4_mst0_araddr : in std_logic_vector(64-1 downto 0);--input  wire [64                               -1:0] axi4_mst0_araddr      ,
        axi4_mst0_arregion : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] axi4_mst0_arregion    ,
        axi4_mst0_arlen : in std_logic_vector(8-1 downto 0);--input  wire [8                                -1:0] axi4_mst0_arlen       ,
        axi4_mst0_arsize : in std_logic_vector(3-1 downto 0);--input  wire [3                                -1:0] axi4_mst0_arsize      ,
        axi4_mst0_arburst : in std_logic_vector(2-1 downto 0);--input  wire [2                                -1:0] axi4_mst0_arburst     ,
        axi4_mst0_arlock : in std_logic;--input  wire                                         axi4_mst0_arlock      ,
        axi4_mst0_arcache : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] axi4_mst0_arcache     ,
        axi4_mst0_arprot : in std_logic_vector(3-1 downto 0);--input  wire [3                                -1:0] axi4_mst0_arprot      ,
        axi4_mst0_arqos : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] axi4_mst0_arqos       ,
        axi4_mst0_arvalid : in std_logic;--input  wire                                         axi4_mst0_arvalid     ,
        axi4_mst0_arready : out std_logic;--output wire                                         axi4_mst0_arready     ,
        --  . Read Data Channel
        axi4_mst0_rid : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] axi4_mst0_rid         ,
        axi4_mst0_rdata : out std_logic_vector(G_DATAPATH_SIZE-1 downto 0);--output wire [G_DATAPATH_SIZE                  -1:0] axi4_mst0_rdata       ,
        axi4_mst0_rresp : out std_logic_vector(2-1 downto 0);--output wire [2                                -1:0] axi4_mst0_rresp       ,
        axi4_mst0_rlast : in std_logic;--output wire                                         axi4_mst0_rlast       ,
        axi4_mst0_rvalid : out std_logic;--output wire                                         axi4_mst0_rvalid      ,
        axi4_mst0_rready : in std_logic;--input  wire                                         axi4_mst0_rready      ,
        ---------------------------------------------------------------------------
        -- AXI4-Stream 0 Interface
        --  . Stream Out Channel
        axi4_sto0_tvalid : in std_logic;--input  wire                                         axi4_sto0_tvalid      ,
        axi4_sto0_tready : out std_logic;--output wire                                         axi4_sto0_tready      ,
        axi4_sto0_tdata : in std_logic_vector(G_DATAPATH_SIZE-1 downto 0);--input  wire [G_DATAPATH_SIZE                  -1:0] axi4_sto0_tdata       ,
        axi4_sto0_tstrb : in std_logic_vector(G_DATAPATH_SIZE/8-1 downto 0);--input  wire [G_DATAPATH_SIZE/8                -1:0] axi4_sto0_tstrb       ,
        axi4_sto0_tkeep : in std_logic_vector(G_DATAPATH_SIZE/8-1 downto 0);--input  wire [G_DATAPATH_SIZE/8                -1:0] axi4_sto0_tkeep       ,
        axi4_sto0_tlast : in std_logic;--input  wire                                         axi4_sto0_tlast       ,
        axi4_sto0_tid : in std_logic_vector(8-1 downto 0);--input  wire [8                                -1:0] axi4_sto0_tid         ,
        axi4_sto0_tdest : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] axi4_sto0_tdest       ,
        ---------------------------------------------------------------------------
        -- AXI4-Stream 0 Interface
        --  . Stream In Channel
        axi4_sti0_tvalid : out std_logic;--output reg                                          axi4_sti0_tvalid      ,
        axi4_sti0_tready : in std_logic;--input  wire                                         axi4_sti0_tready      ,
        axi4_sti0_tdata : out std_logic_vector(G_DATAPATH_SIZE-1 downto 0);--output reg  [G_DATAPATH_SIZE                  -1:0] axi4_sti0_tdata       ,
        axi4_sti0_tstrb : out std_logic_vector(G_DATAPATH_SIZE/8-1 downto 0);--output reg  [G_DATAPATH_SIZE/8                -1:0] axi4_sti0_tstrb       ,
        axi4_sti0_tkeep : out std_logic_vector(0-1 downto 0);--output wire [G_DATAPATH_SIZE/8                -1:0] axi4_sti0_tkeep       ,
        axi4_sti0_tlast : out std_logic;--output reg                                          axi4_sti0_tlast       ,
        axi4_sti0_tid : out std_logic_vector(8-1 downto 0);--output wire [8                                -1:0] axi4_sti0_tid         ,
        axi4_sti0_tdest : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] axi4_sti0_tdest       ,
        ---------------------------------------------------------------------------
        -- User Leds and switches
        usr_sw : in std_logic_vector(3-1 downto 0);--input  wire [3                                -1:0] usr_sw                ,
        usr_led : out std_logic_vector(3-1 downto 0)--output wire [3                                -1:0] usr_led               
        ---------------------------------------------------------------------------
    );
    end component;
    
    COMPONENT ila_0
    
    PORT (
        clk : IN STD_LOGIC;
    
    
    
        probe0 : IN STD_LOGIC_VECTOR(13 DOWNTO 0); 
        probe1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0); 
        probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe5 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
        probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe8 : IN STD_LOGIC_VECTOR(1 DOWNTO 0); 
        probe9 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe10 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe11 : IN STD_LOGIC_VECTOR(13 DOWNTO 0); 
        probe12 : IN STD_LOGIC_VECTOR(2 DOWNTO 0); 
        probe13 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe14 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe15 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe16 : IN STD_LOGIC_VECTOR(1 DOWNTO 0); 
        probe17 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe18 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
    END COMPONENT  ;

    COMPONENT ila_1

    PORT (
        clk : IN STD_LOGIC;
    
    
    
        probe0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
        probe1 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
        probe3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
        probe4 : IN STD_LOGIC_VECTOR(2 DOWNTO 0); 
        probe5 : IN STD_LOGIC_VECTOR(1 DOWNTO 0); 
        probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe7 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
        probe8 : IN STD_LOGIC_VECTOR(2 DOWNTO 0); 
        probe9 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
        probe10 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe11 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe12 : IN STD_LOGIC_VECTOR(127 DOWNTO 0); 
        probe13 : IN STD_LOGIC_VECTOR(15 DOWNTO 0); 
        probe14 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe15 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe16 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe17 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
        probe18 : IN STD_LOGIC_VECTOR(1 DOWNTO 0); 
        probe19 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe20 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe21 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
        probe22 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe23 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
        probe24 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
        probe25 : IN STD_LOGIC_VECTOR(2 DOWNTO 0); 
        probe26 : IN STD_LOGIC_VECTOR(1 DOWNTO 0); 
        probe27 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe28 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
        probe29 : IN STD_LOGIC_VECTOR(2 DOWNTO 0); 
        probe30 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
        probe31 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe32 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe33 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
        probe34 : IN STD_LOGIC_VECTOR(127 DOWNTO 0); 
        probe35 : IN STD_LOGIC_VECTOR(1 DOWNTO 0); 
        probe36 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe37 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe38 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
    END COMPONENT  ;
    
    COMPONENT ila_2
    
    PORT (
        clk : IN STD_LOGIC;
    
    
    
        probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe2 : IN STD_LOGIC_VECTOR(127 DOWNTO 0); 
        probe3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0); 
        probe4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0); 
        probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe6 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        probe7 : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
    END COMPONENT  ;
    
--    COMPONENT ila_3
    
--    PORT (
--        clk : IN STD_LOGIC;
    
    
    
--        probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
--        probe2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
--        probe3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
--        probe4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
--        probe5 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--        probe6 : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
--    );
--    END COMPONENT  ;
    
begin

-----------------------------------------------------------------------------
-- QuickPCIe IP Core Instance
-----------------------------------------------------------------------------

    -- Clock and Resets
    aclk <= qpcie_clk_out ;
    
    -- Synchronous Reset
    aresetn <= '1';
    asrst <= qpcie_srst_out ;
    
    
--  qpcie_ipcore_x4_gen2 qpcie_ipcore (
    qpcie_ipcore : qpcie_ipcore_x4_gen2 port map(
--    //-------------------------------------------------------------------------
--    //  . Bridge Layer Clocks and Reset
        qpcie_srst_out =>         qpcie_srst_out          ,
        qpcie_rstn_in =>          aresetn                 ,
        qpcie_srst_in =>          asrst                   ,
        qpcie_clk_out =>          qpcie_clk_out           ,
        qpcie_clk_in  =>          aclk                    ,
--    //-------------------------------------------------------------------------
--    // Interrupt Interface
        local_interrupt_in  =>    local_interrupt_in      ,
        local_interrupt_out =>    local_interrupt_out     ,
--    //-------------------------------------------------------------------------
--    // Clocks and Resets
--    //  . AXI Interfaces Clocks
        aclk      =>              aclk                    ,
        aresetn   =>              aresetn                 ,
        asrst     =>              asrst                   ,
--    //-------------------------------------------------------------------------
--    // AXI4 Slave Lite Interface
--    // Clocks and Resets
        axi4_slvl_aclk    =>      aclk                    ,
        axi4_slvl_aresetn =>      aresetn                 ,
        axi4_slvl_asrst   =>      asrst                   ,
--    //  . Write Address Channel
        axi4_slvl_awaddr  =>      axi4_slvl_awaddr        ,
        axi4_slvl_awprot  =>      axi4_slvl_awprot        ,
        axi4_slvl_awvalid =>      axi4_slvl_awvalid       ,
        axi4_slvl_awready =>      axi4_slvl_awready       ,
--    //  . Write Data Channel
        axi4_slvl_wdata  =>       axi4_slvl_wdata         ,
        axi4_slvl_wstrb  =>       axi4_slvl_wstrb         ,
        axi4_slvl_wvalid =>       axi4_slvl_wvalid        ,
        axi4_slvl_wready =>       axi4_slvl_wready        ,
--    //  . Write Response Channel
        axi4_slvl_bresp  =>       axi4_slvl_bresp         ,
        axi4_slvl_bvalid =>       axi4_slvl_bvalid        ,
        axi4_slvl_bready =>       axi4_slvl_bready        ,
--    //  . Read Address Channel
        axi4_slvl_araddr   =>     axi4_slvl_araddr        ,
        axi4_slvl_arprot   =>     axi4_slvl_arprot        ,
        axi4_slvl_arvalid  =>     axi4_slvl_arvalid       ,
        axi4_slvl_arready  =>     axi4_slvl_arready       ,
--    //  . Read Data Channel
        axi4_slvl_rdata    =>     axi4_slvl_rdata         ,
        axi4_slvl_rresp    =>     axi4_slvl_rresp         ,
        axi4_slvl_rvalid   =>     axi4_slvl_rvalid        ,
        axi4_slvl_rready   =>     axi4_slvl_rready        ,
        --    ---------------------------------------------------------------------------
        --    -- AXI4 Master Lite Interface
        --    -- Clocks and Resets
        axi4_mstl_aclk     =>     aclk                    ,
        axi4_mstl_aresetn  =>     aresetn                 ,
        axi4_mstl_asrst    =>     asrst                   ,
        --    --  . Write Address Channel
        axi4_mstl_awaddr   =>     axi4_mstl_awaddr        ,
        axi4_mstl_awprot   =>     axi4_mstl_awprot        ,
        axi4_mstl_awvalid  =>     axi4_mstl_awvalid       ,
        axi4_mstl_awready  =>     axi4_mstl_awready       ,
        --    --  . Write Data Channel
        axi4_mstl_wdata    =>     axi4_mstl_wdata         ,
        axi4_mstl_wstrb    =>     axi4_mstl_wstrb         ,
        axi4_mstl_wvalid   =>     axi4_mstl_wvalid        ,
        axi4_mstl_wready   =>     axi4_mstl_wready        ,
        --    --  . Write Response Channel
        axi4_mstl_bresp    =>     axi4_mstl_bresp         ,
        axi4_mstl_bvalid   =>     axi4_mstl_bvalid        ,
        axi4_mstl_bready   =>     axi4_mstl_bready        ,
        --    --  . Read Address Channel
        axi4_mstl_araddr   =>     axi4_mstl_araddr        ,
        axi4_mstl_arprot   =>     axi4_mstl_arprot        ,
        axi4_mstl_arvalid  =>     axi4_mstl_arvalid       ,
        axi4_mstl_arready  =>     axi4_mstl_arready       ,
        --    --  . Read Data Channel
        axi4_mstl_rdata    =>     axi4_mstl_rdata         ,
        axi4_mstl_rresp    =>     axi4_mstl_rresp         ,
        axi4_mstl_rvalid   =>     axi4_mstl_rvalid        ,
        axi4_mstl_rready   =>     axi4_mstl_rready        ,
        --    ---------------------------------------------------------------------------
        --    -- AXI4 Master 0 Interface
        --    --  . Write Address Channel
        axi4_mst0_awid     =>     axi4_mst0_awid          ,
        axi4_mst0_awaddr   =>     axi4_mst0_awaddr        ,
        axi4_mst0_awregion =>     axi4_mst0_awregion      ,
        axi4_mst0_awlen    =>     axi4_mst0_awlen         ,
        axi4_mst0_awsize   =>     axi4_mst0_awsize        ,
        axi4_mst0_awburst  =>     axi4_mst0_awburst       ,
        axi4_mst0_awlock   =>     axi4_mst0_awlock        ,
        axi4_mst0_awcache  =>     axi4_mst0_awcache       ,
        axi4_mst0_awprot   =>     axi4_mst0_awprot        ,
        axi4_mst0_awqos    =>     axi4_mst0_awqos         ,
        axi4_mst0_awuser   =>     open                        ,
        axi4_mst0_awvalid  =>     axi4_mst0_awvalid       ,
        axi4_mst0_awready  =>     axi4_mst0_awready       ,
        --    --  . Write Data Channel
        axi4_mst0_wdata    =>     axi4_mst0_wdata         ,
        axi4_mst0_wderr    =>     open                        ,
        axi4_mst0_wstrb    =>     axi4_mst0_wstrb         ,
        axi4_mst0_wlast    =>     axi4_mst0_wlast         ,
        axi4_mst0_wvalid   =>     axi4_mst0_wvalid        ,
        axi4_mst0_wready   =>     axi4_mst0_wready        ,
        --    --  . Write Response Channel
        axi4_mst0_bid      =>     axi4_mst0_bid           ,
        axi4_mst0_bresp    =>     axi4_mst0_bresp         ,
        axi4_mst0_bvalid   =>     axi4_mst0_bvalid        ,
        axi4_mst0_bready   =>     axi4_mst0_bready        ,
        --    --  . Read Address Channel
        axi4_mst0_arid     =>     axi4_mst0_arid          ,
        axi4_mst0_araddr   =>     axi4_mst0_araddr        ,
        axi4_mst0_arregion =>     axi4_mst0_arregion      ,
        axi4_mst0_arlen    =>     axi4_mst0_arlen         ,
        axi4_mst0_arsize   =>     axi4_mst0_arsize        ,
        axi4_mst0_arburst  =>     axi4_mst0_arburst       ,
        axi4_mst0_arlock   =>     axi4_mst0_arlock        ,
        axi4_mst0_arcache  =>     axi4_mst0_arcache       ,
        axi4_mst0_arprot   =>     axi4_mst0_arprot        ,
        axi4_mst0_arqos    =>     axi4_mst0_arqos         ,
        axi4_mst0_aruser   =>     open                        ,
        axi4_mst0_arvalid  =>     axi4_mst0_arvalid       ,
        axi4_mst0_arready  =>     axi4_mst0_arready       ,
        --    --  . Read Data Channel
        axi4_mst0_rid      =>     axi4_mst0_rid           ,
        axi4_mst0_rdata    =>     axi4_mst0_rdata         ,
        axi4_mst0_rderr    =>     std_logic_vector(to_unsigned(128/8,16))         , --axi4_mst0_rderr'length
        axi4_mst0_rresp    =>     axi4_mst0_rresp         ,
        axi4_mst0_ruser    =>     (others => '0')                   ,
        axi4_mst0_rlast    =>     axi4_mst0_rlast         ,
        axi4_mst0_rvalid   =>     axi4_mst0_rvalid        ,
        axi4_mst0_rready   =>     axi4_mst0_rready        ,
        --    ---------------------------------------------------------------------------
        --    -- AXI4-Stream 0 Interface
        --    --  . Stream Out Channel
        axi4_sto0_tvalid   =>     axi4_sto0_tvalid        ,
        axi4_sto0_tready   =>     axi4_sto0_tready        ,
        axi4_sto0_tdata    =>     axi4_sto0_tdata         ,
        axi4_sto0_tstrb    =>     axi4_sto0_tstrb         ,
        axi4_sto0_tkeep    =>     axi4_sto0_tkeep         ,
        axi4_sto0_tlast    =>     axi4_sto0_tlast         ,
        axi4_sto0_tid      =>     axi4_sto0_tid           ,
        axi4_sto0_tdest    =>     axi4_sto0_tdest         ,
        --    ---------------------------------------------------------------------------
        --    -- AXI4-Stream 0 Interface
        --    --  . Stream In Channel
        axi4_sti0_tvalid   =>     axi4_sti0_tvalid        ,
        axi4_sti0_tready   =>     axi4_sti0_tready        ,
        axi4_sti0_tdata    =>     axi4_sti0_tdata         ,
        axi4_sti0_tstrb    =>     axi4_sti0_tstrb         ,
        axi4_sti0_tkeep    =>     axi4_sti0_tkeep         ,
        axi4_sti0_tlast    =>     axi4_sti0_tlast         ,
        axi4_sti0_tid      =>     axi4_sti0_tid           ,
        axi4_sti0_tdest    =>     axi4_sti0_tdest         ,
        --    ---------------------------------------------------------------------------
        --    -- Xilinx Hard IP Interface
        --    --  . Clock and Resets
        sys_clk_p          =>     sys_clk_p               ,
        sys_clk_n          =>     sys_clk_n               ,
        sys_rst_n          =>     sys_rst_n               ,
        --    --  . Serial IF to PIPE for internal PHY
        pci_exp_txn        =>     pci_exp_txn             ,
        pci_exp_txp        =>     pci_exp_txp             ,
        pci_exp_rxn        =>     pci_exp_rxn             ,
        pci_exp_rxp        =>     pci_exp_rxp             ,
        --    ---------------------------------------------------------------------------
        --    -- Protection logic interface
        prot0_out          =>     prot0_out               ,
        prot2_in           =>     prot2_in                ,
        prot2_out          =>     prot2_out               ,
        --    ---------------------------------------------------------------------------
        --    -- Test Interface
        test_out           =>     test_out                
        --    ---------------------------------------------------------------------------
       );
       
--    pci_exp_txn        <=     pci_exp_txn_s;
--    pci_exp_txp        <=     pci_exp_txp_s;             
--    pci_exp_rxn_s        <=     pci_exp_rxn;             
--    pci_exp_rxp_s        <=     pci_exp_rxp;             
    
--   pice_bufds:
--   for x in 0 to 3 generate
--      begin
--        pci_tx : IBUFDS
--        generic map(
--          IOSTANDARD => "DEFAULT"
--        )
--        port map(
--          I  => pci_exp_txp_s(x),
--          IB => pci_exp_txn_s(x),
--          O  => pci_exp_tx_s(x)
--        );
          
--        pci_rx : IBUFDS
--        generic map(
--            IOSTANDARD => "DEFAULT"
--        )
--        port map(
--            I  => pci_exp_rxp(x),
--            IB => pci_exp_rxn(x),
--            O  => pci_exp_rx_s(x)
--        );
--   end generate;



       
    -----------------------------------------------------------------------------
    -- QuickPCIe Reference Design Instance
    -----------------------------------------------------------------------------
    
    ref_design:qpcie_ref_design
    generic map(
    G_DATAPATH_SIZE  =>  128,
    QPCIE_CLOCK_SPEED => 125)
    port map(
    ---------------------------------------------------------------------------
    -- Interrupt Interface
    local_interrupt_in   =>   local_interrupt_in,
    local_interrupt_out  =>   local_interrupt_out,
    ---------------------------------------------------------------------------
    -- Clocks and Resets
    --  . AXI Interfaces Clocks
    aclk  =>      aclk,
    aresetn  =>   aresetn,
    asrst  =>     asrst,
    ---------------------------------------------------------------------------
    -- AXI4 Slave Lite Interface
    --  . Write Address Channel
    axi4_slvl_awaddr  => axi4_slvl_awaddr,
    axi4_slvl_awprot  => axi4_slvl_awprot,
    axi4_slvl_awvalid  =>axi4_slvl_awvalid,
    axi4_slvl_awready  =>axi4_slvl_awready,
    --  . Write Data Channel
    axi4_slvl_wdata  =>  axi4_slvl_wdata,
    axi4_slvl_wstrb  =>  axi4_slvl_wstrb,
    axi4_slvl_wvalid  => axi4_slvl_wvalid,
    axi4_slvl_wready  => axi4_slvl_wready,
    --  . Write Response Channel
    axi4_slvl_bresp  =>  axi4_slvl_bresp,
    axi4_slvl_bvalid  => axi4_slvl_bvalid,
    axi4_slvl_bready  => axi4_slvl_bready,
    --  . Read Address Channel
    axi4_slvl_araddr  => axi4_slvl_araddr,
    axi4_slvl_arprot  => axi4_slvl_arprot,
    axi4_slvl_arvalid  =>axi4_slvl_arvalid,
    axi4_slvl_arready  =>axi4_slvl_arready,
    --  . Read Data Channel
    axi4_slvl_rdata  =>  axi4_slvl_rdata,
    axi4_slvl_rresp  =>  axi4_slvl_rresp,
    axi4_slvl_rvalid  => axi4_slvl_rvalid,
    axi4_slvl_rready  => axi4_slvl_rready,
    ---------------------------------------------------------------------------
    -- AXI4 Master Lite Interface
    --  . Write Address Channel
    axi4_mstl_awaddr  => axi4_mstl_awaddr,
    axi4_mstl_awprot  => axi4_mstl_awprot,
    axi4_mstl_awvalid  =>axi4_mstl_awvalid,
    axi4_mstl_awready  =>axi4_mstl_awready,
    --  . Write Data Channel
    axi4_mstl_wdata  =>  axi4_mstl_wdata,
    axi4_mstl_wstrb  =>  axi4_mstl_wstrb,
    axi4_mstl_wvalid  => axi4_mstl_wvalid,
    axi4_mstl_wready  => axi4_mstl_wready,
    --  . Write Response Channel
    axi4_mstl_bresp  =>  axi4_mstl_bresp,
    axi4_mstl_bvalid  => axi4_mstl_bvalid,
    axi4_mstl_bready  => axi4_mstl_bready,
    --  . Read Address Channel
    axi4_mstl_araddr  => axi4_mstl_araddr,
    axi4_mstl_arprot  => axi4_mstl_arprot,
    axi4_mstl_arvalid  =>axi4_mstl_arvalid,
    axi4_mstl_arready  =>axi4_mstl_arready,
    --  . Read Data Channel
    axi4_mstl_rdata  =>  axi4_mstl_rdata,
    axi4_mstl_rresp  =>  axi4_mstl_rresp,
    axi4_mstl_rvalid  => axi4_mstl_rvalid,
    axi4_mstl_rready  => axi4_mstl_rready,
    ---------------------------------------------------------------------------
    -- AXI4 Master 0 Interface
    --  . Write Address Channel
    axi4_mst0_awid  =>   axi4_mst0_awid,
    axi4_mst0_awaddr  => axi4_mst0_awaddr,
    axi4_mst0_awregion  =>    axi4_mst0_awregion,
    axi4_mst0_awlen  =>  axi4_mst0_awlen,
    axi4_mst0_awsize  => axi4_mst0_awsize,
    axi4_mst0_awburst  =>axi4_mst0_awburst,
    axi4_mst0_awlock  => axi4_mst0_awlock,
    axi4_mst0_awcache  =>axi4_mst0_awcache,
    axi4_mst0_awprot  => axi4_mst0_awprot,
    axi4_mst0_awqos  =>  axi4_mst0_awqos,
    axi4_mst0_awvalid  =>axi4_mst0_awvalid,
    axi4_mst0_awready  =>axi4_mst0_awready,
    --  . Write Data Channel
    axi4_mst0_wdata  =>  axi4_mst0_wdata,
    axi4_mst0_wstrb  =>  axi4_mst0_wstrb,
    axi4_mst0_wlast  =>  axi4_mst0_wlast,
    axi4_mst0_wvalid  => axi4_mst0_wvalid,
    axi4_mst0_wready  => axi4_mst0_wready,
    --  . Write Response Channel
    axi4_mst0_bid  =>    axi4_mst0_bid,
    axi4_mst0_bresp  =>  axi4_mst0_bresp,
    axi4_mst0_bvalid  => axi4_mst0_bvalid,
    axi4_mst0_bready  => axi4_mst0_bready,
    --  . Read Address Channel
    axi4_mst0_arid  =>   axi4_mst0_arid,
    axi4_mst0_araddr  => axi4_mst0_araddr,
    axi4_mst0_arregion  =>    axi4_mst0_arregion,
    axi4_mst0_arlen  =>  axi4_mst0_arlen,
    axi4_mst0_arsize  => axi4_mst0_arsize,
    axi4_mst0_arburst  =>axi4_mst0_arburst,
    axi4_mst0_arlock  => axi4_mst0_arlock,
    axi4_mst0_arcache  =>axi4_mst0_arcache,
    axi4_mst0_arprot  => axi4_mst0_arprot,
    axi4_mst0_arqos  =>  axi4_mst0_arqos,
    axi4_mst0_arvalid  =>axi4_mst0_arvalid,
    axi4_mst0_arready  =>axi4_mst0_arready,
    --  . Read Data Channel
    axi4_mst0_rid  =>    axi4_mst0_rid,
    axi4_mst0_rdata  =>  axi4_mst0_rdata,
    axi4_mst0_rresp  =>  axi4_mst0_rresp,
    axi4_mst0_rlast  =>  axi4_mst0_rlast,
    axi4_mst0_rvalid  => axi4_mst0_rvalid,
    axi4_mst0_rready  => axi4_mst0_rready,
    ---------------------------------------------------------------------------
    -- AXI4-Stream 0 Interface
    --  . Stream Out Channel
    axi4_sto0_tvalid  => axi4_sto0_tvalid,
    axi4_sto0_tready  => axi4_sto0_tready,
    axi4_sto0_tdata  =>  axi4_sto0_tdata,
    axi4_sto0_tstrb  =>  axi4_sto0_tstrb,
    axi4_sto0_tkeep  =>  axi4_sto0_tkeep,
    axi4_sto0_tlast  =>  axi4_sto0_tlast,
    axi4_sto0_tid  =>    axi4_sto0_tid,
    axi4_sto0_tdest  =>  axi4_sto0_tdest,
    ---------------------------------------------------------------------------
    -- AXI4-Stream 0 Interface
    --  . Stream In Channel
    axi4_sti0_tvalid  => axi4_sti0_tvalid,
    axi4_sti0_tready  => axi4_sti0_tready,
    axi4_sti0_tdata  =>  axi4_sti0_tdata,
    axi4_sti0_tstrb  =>  axi4_sti0_tstrb,
    axi4_sti0_tkeep  =>  axi4_sti0_tkeep,
    axi4_sti0_tlast  =>  axi4_sti0_tlast,
    axi4_sti0_tid  =>    axi4_sti0_tid,
    axi4_sti0_tdest  =>  axi4_sti0_tdest,
    ---------------------------------------------------------------------------
    -- User Leds and switches
    usr_sw  =>    usr_sw,
    usr_led  =>   open
    ---------------------------------------------------------------------------
    );
    
--    //Link width
--      assign usr_led[1:0] = (test_out[3] == 1'b1) ? 2'b11 : // x8
--                            (test_out[2] == 1'b1) ? 2'b10 : // x4
--                            (test_out[1] == 1'b1) ? 2'b01 : // x2
--                                                    2'b00 ; // x1
--      //Link speed
--      assign usr_led[3:2] = (test_out[15:14] == 2'b01) ? {aclk_cnt[24] , 1'b1} : // Polling.Compliance
--                            (test_out[15:14] == 2'b00) ? {aclk_cnt[24] , 1'b0} : // Not in L0/L0s/Polling.Compliance
--                            (test_out[8:6] == 3'b001 ) ? {1'b0         , 1'b1} : // L0/L0s Gen1
--                            (test_out[8:6] == 3'b010 ) ? {1'b1         , 1'b0} : // L0/L0s Gen2
--                            (test_out[8:6] == 3'b011 ) ? {1'b1         , 1'b1} : // L0/L0s Gen3
--                            (test_out[8:6] == 3'b100 ) ? {1'b1 , aclk_cnt[24]} : // L0/L0s Gen4
--                                                         {1'b0         , 1'b0} ; // Undefined
        usr_led(1 downto 0) <= "11" when test_out(3) = '1' else
                               "10" when test_out(2) = '1' else
                               "01" when test_out(1) = '1' else
                               "00";
                               
        usr_led(3 downto 2) <= (aclk_cnt(24) & '1') when test_out(15 downto 14) = "01" else
                               (aclk_cnt(24) & '0') when test_out(15 downto 14) = "00" else
                               ('0' & '1') when test_out(8 downto 6) = "001" else
                               ('1' & '0') when test_out(8 downto 6) = "010" else
                               ('1' & '1') when test_out(8 downto 6) = "011" else
                               ('1' & aclk_cnt(24)) when test_out(8 downto 6) = "000" else
                               ('0' & '0');

        process(aresetn,aclk)
        begin
            if(aresetn = '0') then
                aclk_cnt <=  (others => '0');
            elsif (aclk'event and aclk='1') then
                aclk_cnt <= aclk_cnt + 1;
            end if;
        end process;

--      // Blink LED
--      always @(posedge aclk or negedge aresetn)
--        if (aresetn == 1'b0) begin
--            aclk_cnt <= 25'b0;
--        end else begin
--          if (asrst == 1'b1)
--            aclk_cnt <= 25'b0;
--          else
--            aclk_cnt <= aclk_cnt+1'b1;
--        end

    ila_axi_slave_lite : ila_0
    PORT MAP (
        clk => aclk,
    
    
    
        probe0 => axi4_slvl_awaddr, 
        probe1 => axi4_slvl_awprot, 
        probe2(0) => axi4_slvl_awvalid, 
        probe3(0) => axi4_slvl_awready, 
        probe4 => axi4_slvl_wdata, 
        probe5 => axi4_slvl_wstrb, 
        probe6(0) => axi4_slvl_wvalid, 
        probe7(0) => axi4_slvl_wready, 
        probe8 => axi4_slvl_bresp, 
        probe9(0) => axi4_slvl_bvalid, 
        probe10(0) => axi4_slvl_bready, 
        probe11 => axi4_slvl_araddr, 
        probe12 => axi4_slvl_arprot, 
        probe13(0) => axi4_slvl_arvalid, 
        probe14(0) => axi4_slvl_arready, 
        probe15 => axi4_slvl_rdata, 
        probe16 => axi4_slvl_rresp, 
        probe17(0) => axi4_slvl_rvalid,
        probe18(0) => axi4_slvl_rready
    );
    
    ila_axi_master_lite : ila_0
    PORT MAP (
        clk => aclk,
    
    
        probe0(13) => '0',
        probe0(12 downto 0) => axi4_mstl_awaddr, 
        probe1 => axi4_mstl_awprot, 
        probe2(0) => axi4_mstl_awvalid, 
        probe3(0) => axi4_mstl_awready, 
        probe4 => axi4_mstl_wdata, 
        probe5 => axi4_mstl_wstrb, 
        probe6(0) => axi4_mstl_wvalid, 
        probe7(0) => axi4_mstl_wready, 
        probe8 => axi4_mstl_bresp, 
        probe9(0) => axi4_mstl_bvalid, 
        probe10(0) => axi4_mstl_bready, 
        probe11(13) => '0',
        probe11(12 downto 0) => axi4_mstl_araddr, 
        probe12 => axi4_mstl_arprot, 
        probe13(0) => axi4_mstl_arvalid, 
        probe14(0) => axi4_mstl_arready, 
        probe15(31 downto 13) => (others => '0'),
        probe15(12 downto 0) => axi4_mstl_rdata, 
        probe16 => axi4_mstl_rresp, 
        probe17(0) => axi4_mstl_rvalid,
        probe18(0) => axi4_mstl_rready
    );
    
    ila_axi_master_0 : ila_1
    PORT MAP (
        clk => aclk,
    
    
    
        probe0 => axi4_mst0_awid, 
        probe1 => axi4_mst0_awaddr, 
        probe2 => axi4_mst0_awregion, 
        probe3 => axi4_mst0_awlen, 
        probe4 => axi4_mst0_awsize, 
        probe5 => axi4_mst0_awburst, 
        probe6(0) => axi4_mst0_awlock, 
        probe7 => axi4_mst0_awcache, 
        probe8 => axi4_mst0_awprot, 
        probe9 => axi4_mst0_awqos, 
        probe10(0) => axi4_mst0_awvalid, 
        probe11(0) => axi4_mst0_awready, 
        probe12 => axi4_mst0_wdata, 
        probe13 => axi4_mst0_wstrb, 
        probe14(0) => axi4_mst0_wlast, 
        probe15(0) => axi4_mst0_wvalid, 
        probe16(0) => axi4_mst0_wready, 
        probe17 => axi4_mst0_bid, 
        probe18 => axi4_mst0_bresp, 
        probe19(0) => axi4_mst0_bvalid, 
        probe20(0) => axi4_mst0_bready, 
        probe21 => axi4_mst0_arid, 
        probe22 => axi4_mst0_araddr, 
        probe23 => axi4_mst0_arregion, 
        probe24 => axi4_mst0_arlen, 
        probe25 => axi4_mst0_arsize, 
        probe26 => axi4_mst0_arburst, 
        probe27(0) => axi4_mst0_arlock, 
        probe28 => axi4_mst0_arcache, 
        probe29 => axi4_mst0_arprot, 
        probe30 => axi4_mst0_arqos, 
        probe31(0) => axi4_mst0_arvalid, 
        probe32(0) => axi4_mst0_arready, 
        probe33 => axi4_mst0_rid, 
        probe34 => axi4_mst0_rdata, 
        probe35 => axi4_mst0_rresp, 
        probe36(0) => axi4_mst0_rlast, 
        probe37(0) => axi4_mst0_rvalid,
        probe38(0) => axi4_mst0_rready
    );
    
    ila_axi_stream_out : ila_2
    PORT MAP (
        clk => aclk,
    
    
    
        probe0(0) => axi4_sto0_tvalid, 
        probe1(0) => axi4_sto0_tready, 
        probe2 => axi4_sto0_tdata, 
        probe3 => axi4_sto0_tstrb, 
        probe4 => axi4_sto0_tkeep, 
        probe5(0) => axi4_sto0_tlast, 
        probe6 => axi4_sto0_tid,
        probe7 => axi4_sto0_tdest
    );
    
    ila_axi_stream_in : ila_2
    PORT MAP (
        clk => aclk,
    
    
    
        probe0(0) => axi4_sti0_tvalid, 
        probe1(0) => axi4_sti0_tready, 
        probe2 => axi4_sti0_tdata, 
        probe3 => axi4_sti0_tstrb, 
        probe4 => axi4_sti0_tkeep, 
        probe5(0) => axi4_sti0_tlast, 
        probe6 => axi4_sti0_tid,
        probe7 => axi4_sti0_tdest
    );
    
--    ila_pcie_int : ila_3
--    PORT MAP (
--        clk => aclk,
    
    
    
--        probe0(0) => sys_rst_n, 
--        probe1 => pci_exp_txp_s, 
--        probe2 => pci_exp_txn_s, 
--        probe3 => local_interrupt_in, 
--        probe4 => local_interrupt_out,
--        probe5 => pci_exp_rxp_s,
--        probe6 => pci_exp_rxn_s
--    );
    
    
end Behavioral;
