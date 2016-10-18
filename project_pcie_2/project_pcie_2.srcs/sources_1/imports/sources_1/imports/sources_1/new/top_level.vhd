----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2016 04:46:45 PM
-- Design Name: 
-- Module Name: top_level - Behavioral
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

library UNISIM;
use UNISIM.VComponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_level is
    Port (  ---------------------------------------------------------------------------
            -- Xilinx Hard IP Interface
            --  . Clock and Resets
            pcie_clk_p : in std_logic;
            pcie_clk_n : in std_logic;
            --  . Serial I/F
            pci_exp_txn : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] pci_exp_txn           ,
            pci_exp_txp : out std_logic_vector(4-1 downto 0);--output wire [4                                -1:0] pci_exp_txp           ,
            pci_exp_rxn : in std_logic_vector(4-1 downto 0);--input  wire [4                                -1:0] pci_exp_rxn           ,
            pci_exp_rxp : in std_logic_vector(4-1 downto 0);
            clk200_n : in STD_LOGIC;
            clk200_p : in STD_LOGIC;
            rst_n_i : in STD_LOGIC;
            sys_rst_n_i : in STD_LOGIC;
            usr_sw_i : in STD_LOGIC_VECTOR (2 downto 0);
            usr_led_o : out STD_LOGIC_VECTOR (3 downto 0);
            front_led_o : out STD_LOGIC_VECTOR (3 downto 0));
end top_level;

architecture Behavioral of top_level is
    
    constant AXI_BUS_WIDTH : integer := 64;
    
    component simple_counter is
        Port ( 
               rst_i : in STD_LOGIC;
               clk_i : in STD_LOGIC;
               count_o : out STD_LOGIC_VECTOR (28 downto 0)
                );
    end component;
    
    component test_bench is
        Port ( 
               --sys con
               clk_i : in STD_LOGIC;
               rst_i : in STD_LOGIC;
               
               -- Wishbone Master out
               wb_adr_o : out std_logic_vector(9 downto 0);
               wb_dat_o : out std_logic_vector(31 downto 0);
               wb_we_o : out std_logic;
               wb_stb_o: out std_logic;
               wb_cyc_o : out std_logic--;
               
               -- Wishbone Master in
               --wb_dat_i            : in std_logic_vector(31 downto 0);
               --wb_ack_i            : in std_logic
               );
    end component;

    component ram_ctrl is
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
    end component;

    component ram_interface is
    Port ( addr_i : in STD_LOGIC_VECTOR (9 downto 0);
           di_i : in STD_LOGIC_VECTOR (31 downto 0);
           do_o : out STD_LOGIC_VECTOR (31 downto 0);
           we_i : in STD_LOGIC_VECTOR (3 downto 0);
           en_i : in STD_LOGIC;
           rst_i : in STD_LOGIC;
           regce_i : in STD_LOGIC;
           clk_i : in STD_LOGIC);
    end component;
    
    COMPONENT ila_0
    
    PORT (
        clk : IN STD_LOGIC;
    
    
    
        probe0 : IN STD_LOGIC_VECTOR(9 DOWNTO 0); 
        probe1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
        probe3 : IN STD_LOGIC_VECTOR(28 DOWNTO 0); 
        probe4 : IN STD_LOGIC_VECTOR(9 DOWNTO 0); 
        probe5 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe6 : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe7 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        probe8 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
    END COMPONENT  ;
    COMPONENT ila_1
    
    PORT (
        clk : IN STD_LOGIC;
    
    
    
        probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe1 : IN STD_LOGIC_VECTOR(AXI_BUS_WIDTH-1 DOWNTO 0); 
        probe2 : IN STD_LOGIC_VECTOR(AXI_BUS_WIDTH/8-1 DOWNTO 0); 
        probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe5 : IN STD_LOGIC_VECTOR(21 DOWNTO 0); 
        probe6 : IN STD_LOGIC_VECTOR(AXI_BUS_WIDTH/8-1 DOWNTO 0); 
        probe7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe8 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
    END COMPONENT  ;
    
    COMPONENT pcie_7x_0
      PORT (
        pci_exp_txp : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        pci_exp_txn : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        pci_exp_rxp : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        pci_exp_rxn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        user_clk_out : OUT STD_LOGIC;
        user_reset_out : OUT STD_LOGIC;
        user_lnk_up : OUT STD_LOGIC;
        user_app_rdy : OUT STD_LOGIC;
        s_axis_tx_tready : OUT STD_LOGIC;
        s_axis_tx_tdata : IN STD_LOGIC_VECTOR(AXI_BUS_WIDTH-1 DOWNTO 0);
        s_axis_tx_tkeep : IN STD_LOGIC_VECTOR(AXI_BUS_WIDTH/8-1 DOWNTO 0);
        s_axis_tx_tlast : IN STD_LOGIC;
        s_axis_tx_tvalid : IN STD_LOGIC;
        s_axis_tx_tuser : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        m_axis_rx_tdata : OUT STD_LOGIC_VECTOR(AXI_BUS_WIDTH-1 DOWNTO 0);
        m_axis_rx_tkeep : OUT STD_LOGIC_VECTOR(AXI_BUS_WIDTH/8-1 DOWNTO 0);
        m_axis_rx_tlast : OUT STD_LOGIC;
        m_axis_rx_tvalid : OUT STD_LOGIC;
        m_axis_rx_tready : IN STD_LOGIC;
        m_axis_rx_tuser : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
        cfg_interrupt : IN STD_LOGIC;
        cfg_interrupt_rdy : OUT STD_LOGIC;
        cfg_interrupt_assert : IN STD_LOGIC;
        cfg_interrupt_di : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        cfg_interrupt_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        cfg_interrupt_mmenable : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        cfg_interrupt_msienable : OUT STD_LOGIC;
        cfg_interrupt_msixenable : OUT STD_LOGIC;
        cfg_interrupt_msixfm : OUT STD_LOGIC;
        cfg_interrupt_stat : IN STD_LOGIC;
        cfg_pciecap_interrupt_msgnum : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        sys_clk : IN STD_LOGIC;
        sys_rst_n : IN STD_LOGIC
      );
    END COMPONENT;
    
      component design_1 is
        port (
          CLK_IN_D_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
          CLK_IN_D_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
          IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 )
        );
        end component;
    
    --Clocks
    signal sys_clk : STD_LOGIC;
    signal clk200 : STD_LOGIC;
    signal user_clk_out : STD_LOGIC;
    
    signal rst_s : STD_LOGIC;
    
    --Wishbone bus
    signal wb_adr_s  : STD_LOGIC_VECTOR (9 downto 0);
    signal wb_dat_s : STD_LOGIC_VECTOR (31 downto 0);
    signal wb_we_s,wb_stb_s,wb_cyc_s,wb_lock_s : STD_LOGIC;
    
    signal count_s : STD_LOGIC_VECTOR (28 downto 0);
    
    signal ram_addr_s : STD_LOGIC_VECTOR (9 downto 0);
    signal ram_di_s : STD_LOGIC_VECTOR (31 downto 0);
    signal ram_do_s : STD_LOGIC_VECTOR (31 downto 0);
    signal ram_we_s : STD_LOGIC_VECTOR (3 downto 0);
    signal ram_en_s : STD_LOGIC;
    
    signal s_axis_tx_tready_s : STD_LOGIC;
    signal s_axis_tx_tdata_s : STD_LOGIC_VECTOR(AXI_BUS_WIDTH-1 DOWNTO 0);
    signal s_axis_tx_tkeep_s : STD_LOGIC_VECTOR(AXI_BUS_WIDTH/8-1 DOWNTO 0);
    signal s_axis_tx_tlast_s : STD_LOGIC;
    signal s_axis_tx_tvalid_s : STD_LOGIC;
    signal s_axis_tx_tuser_s : STD_LOGIC_VECTOR(3 DOWNTO 0);
    signal m_axis_rx_tdata_s : STD_LOGIC_VECTOR(AXI_BUS_WIDTH-1 DOWNTO 0);
    signal m_axis_rx_tkeep_s : STD_LOGIC_VECTOR(AXI_BUS_WIDTH/8-1 DOWNTO 0);
    signal m_axis_rx_tlast_s : STD_LOGIC;
    signal m_axis_rx_tvalid_s : STD_LOGIC;
    signal m_axis_rx_tready_s : STD_LOGIC;
    signal m_axis_rx_tuser_s : STD_LOGIC_VECTOR(21 DOWNTO 0);
begin

-- LVDS input to internal single
  CLK_IBUFDS : IBUFDS
  generic map(
    IOSTANDARD => "DEFAULT"
  )
  port map(
    I  => clk200_p,
    IB => clk200_n,
    O  => clk200
  );

    design_1_0: component design_1
     port map (
      CLK_IN_D_clk_n(0) => pcie_clk_n,
      CLK_IN_D_clk_p(0) => pcie_clk_p,
      IBUF_OUT(0) => sys_clk
    );
  
  u1:simple_counter
  port map(
    rst_i => rst_s,
    clk_i => sys_clk,
    count_o =>  count_s
  );
  
  u2:test_bench
    port map ( 
         --sys con
         clk_i => sys_clk,
         rst_i => rst_s,
         
         -- Wishbone Master out
         wb_adr_o => wb_adr_s,
         wb_dat_o => wb_dat_s,
         wb_we_o => wb_we_s,
         wb_stb_o => wb_stb_s,
         wb_cyc_o => wb_cyc_s
         
         -- Wishbone Master in
         --wb_dat_i            : in std_logic_vector(31 downto 0);
         --wb_ack_i            : in std_logic
       );
  
  u3:ram_ctrl
  port map(
    -- Wishbone Slave in
    wb_adr_i => wb_adr_s,
    wb_dat_i => wb_dat_s,
    wb_we_i => wb_we_s,
    wb_stb_i => wb_stb_s,
    wb_cyc_i => wb_cyc_s,
    wb_lock_i => wb_lock_s,
  
    addr_o => ram_addr_s,
    di_o => ram_di_s,
    we_o => ram_we_s,
    en_o => ram_en_s,
    rst_i => rst_s,
    clk_i => sys_clk
  );
  
  u4:ram_interface
  port map(
    addr_i => ram_addr_s,
    di_i => ram_di_s,
    do_o => ram_do_s,
    we_i => ram_we_s,
    en_i => ram_en_s,
    rst_i => rst_s,
    regce_i => '0',
    clk_i => sys_clk
  );
 

 
  usr_led_o <= '1' & usr_sw_i;
  --usr_led_o <= ram_do_s(0) & usr_sw_i;
  rst_s <= not rst_n_i;
  
  front_led_o <= count_s(28 downto 25);
    
--  with ram_do_s select front_led_o <=
--      "1010" when X"AAAA5555",
--      count_s(28 downto 25) when others;

    ila_cnt_wshb : ila_0
    PORT MAP (
        clk => clk200,
    
    
    
        probe0 => wb_adr_s, 
        probe1 => wb_dat_s, 
        probe2(3) => wb_we_s,
        probe2(2) => wb_stb_s,
        probe2(1) => wb_cyc_s,
        probe2(0) => wb_lock_s,
        probe3 => count_s, 
        probe4 => ram_addr_s, 
        probe5 => ram_di_s, 
        probe6 => ram_do_s, 
        probe7 => ram_we_s,
        probe8(0) => ram_en_s
    );
    
    ila_axis_tx : ila_1
    PORT MAP (
        clk => user_clk_out,
    
    
    
        ---- TREADY
        probe0(0) => s_axis_tx_tready_s, 
        ---- TDATA
        probe1 => s_axis_tx_tdata_s, 
        ---- TSTRB
        probe2 => (others => '0'), 
        ---- TVALID
        probe3(0) => s_axis_tx_tvalid_s, 
        ---- TLAST
        probe4(0) => s_axis_tx_tlast_s, 
        ---- TUSER
        probe5(4 downto 0) => s_axis_tx_tuser_s, 
        probe5(21 downto 5) => (others => '0'),
        ---- TKEEP
        probe6 => s_axis_tx_tkeep_s, 
        ---- TDEST
        probe7 => (others => '0'),
        ---- TID 
        probe8 => (others => '0') 
    );
    
    ila_axis_rx : ila_1
    PORT MAP (
        clk => user_clk_out,
    
    
    
        ---- TREADY
        probe0(0) => m_axis_rx_tready_s, 
        ---- TDATA
        probe1 => m_axis_rx_tdata_s, 
        ---- TSTRB
        probe2 => (others => '0'), 
        ---- TVALID
        probe3(0) => m_axis_rx_tvalid_s, 
        ---- TLAST
        probe4(0) => m_axis_rx_tlast_s, 
        ---- TUSER
        probe5 => m_axis_rx_tuser_s, 
        ---- TKEEP
        probe6 => m_axis_rx_tkeep_s, 
        ---- TDEST
        probe7 => (others => '0'),
        ---- TID 
        probe8 => (others => '0') 
    );
    
    pcie_0 : pcie_7x_0
      PORT MAP (
        pci_exp_txp => pci_exp_txp,
        pci_exp_txn => pci_exp_txn,
        pci_exp_rxp => pci_exp_rxp,
        pci_exp_rxn => pci_exp_rxn,
        user_clk_out => user_clk_out,
        user_reset_out => open,
        user_lnk_up => open,
        user_app_rdy => open,
        s_axis_tx_tready => s_axis_tx_tready_s,
        s_axis_tx_tdata => s_axis_tx_tdata_s,
        s_axis_tx_tkeep => s_axis_tx_tkeep_s,
        s_axis_tx_tlast => s_axis_tx_tlast_s,
        s_axis_tx_tvalid => s_axis_tx_tvalid_s,
        s_axis_tx_tuser => s_axis_tx_tuser_s,
        m_axis_rx_tdata => m_axis_rx_tdata_s,
        m_axis_rx_tkeep => m_axis_rx_tkeep_s,
        m_axis_rx_tlast => m_axis_rx_tlast_s,
        m_axis_rx_tvalid => m_axis_rx_tvalid_s,
        m_axis_rx_tready => m_axis_rx_tready_s,
        m_axis_rx_tuser => m_axis_rx_tuser_s,
        cfg_interrupt => '0',
        cfg_interrupt_rdy => open,
        cfg_interrupt_assert => '0',
        cfg_interrupt_di => (others => '0'),
        cfg_interrupt_do => open,
        cfg_interrupt_mmenable => open,
        cfg_interrupt_msienable => open,
        cfg_interrupt_msixenable => open,
        cfg_interrupt_msixfm => open,
        cfg_interrupt_stat => '0',
        cfg_pciecap_interrupt_msgnum => (others => '0'),
        sys_clk => sys_clk,
        sys_rst_n => sys_rst_n_i
      );
      

  
end Behavioral;
