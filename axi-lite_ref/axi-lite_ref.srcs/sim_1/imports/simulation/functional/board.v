//-----------------------------------------------------------------------------
//
// (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//-----------------------------------------------------------------------------
// Project    : Series-7 Integrated Block for PCI Express
// File       : board.v
// Version    : 3.2
// Description:  Top level testbench
//
//------------------------------------------------------------------------------

`timescale 1ns/1ns

`include "board_common.vh"

`define SIMULATION

module board;

parameter          REF_CLK_FREQ       = 0;      // 0 - 100 MHz, 1 - 125 MHz,  2 - 250 MHz

localparam         REF_CLK_HALF_CYCLE = (REF_CLK_FREQ == 0) ? 5000 :
                                        (REF_CLK_FREQ == 1) ? 4000 :
                                        (REF_CLK_FREQ == 2) ? 2000 : 0;
integer            i;

// System-level clock and reset
reg                sys_rst_n;

wire               ep_sys_clk;
wire               rp_sys_clk;


localparam EXT_PIPE_SIM = "TRUE";
  defparam board.EP.design_1_i.pcie_7x_0.inst.inst.EXT_PIPE_SIM = "TRUE";
  defparam board.RP.rport.EXT_PIPE_SIM = "TRUE";


//
// PIPE PORTS to TOP Level For PIPE SIMULATION with 3rd Party IP/BFM/Xilinx BFM
//
//------------------- EP ------------------------------------
  wire  [11:0]  common_commands_out;  
  wire  [22:0]  xil_tx0_sigs_ep;
  wire  [22:0]  xil_tx1_sigs_ep;
  wire  [22:0]  xil_tx2_sigs_ep;
  wire  [22:0]  xil_tx3_sigs_ep;
  wire  [22:0]  xil_tx4_sigs_ep;
  wire  [22:0]  xil_tx5_sigs_ep;
  wire  [22:0]  xil_tx6_sigs_ep;
  wire  [22:0]  xil_tx7_sigs_ep;

  wire  [24:0]  xil_rx0_sigs_ep;
  wire  [24:0]  xil_rx1_sigs_ep;
  wire  [24:0]  xil_rx2_sigs_ep;
  wire  [24:0]  xil_rx3_sigs_ep;
  wire  [24:0]  xil_rx4_sigs_ep;
  wire  [24:0]  xil_rx5_sigs_ep;
  wire  [24:0]  xil_rx6_sigs_ep;
  wire  [24:0]  xil_rx7_sigs_ep;
//------------------- RP ----------------------------------

  wire  [22:0]  xil_tx0_sigs_rp;
  wire  [22:0]  xil_tx1_sigs_rp;
  wire  [22:0]  xil_tx2_sigs_rp;
  wire  [22:0]  xil_tx3_sigs_rp;
  wire  [22:0]  xil_tx4_sigs_rp;
  wire  [22:0]  xil_tx5_sigs_rp;
  wire  [22:0]  xil_tx6_sigs_rp;
  wire  [22:0]  xil_tx7_sigs_rp;
//-------------------------------------------------------
//
// PCI-Express Endpoint Instance
//

design_1_wrapper 
  
  #(
   .EXT_PIPE_SIM       (EXT_PIPE_SIM)
   )

EP (


  // SYS Inteface
  .sys_clk_n(ep_sys_clk_n),
  .sys_clk_p(ep_sys_clk_p),
  .sys_rst_n(sys_rst_n),


  .led_4bits_tri_o(),

    .common_commands_in           ( 4'b0  ), 
    .pipe_rx_0_sigs     (xil_rx0_sigs_ep),    
    .pipe_rx_1_sigs     (xil_rx1_sigs_ep),
    .pipe_rx_2_sigs     (xil_rx2_sigs_ep),
    .pipe_rx_3_sigs     (xil_rx3_sigs_ep),
    .pipe_rx_4_sigs     (xil_rx4_sigs_ep),
    .pipe_rx_5_sigs     (xil_rx5_sigs_ep),
    .pipe_rx_6_sigs     (xil_rx6_sigs_ep),
    .pipe_rx_7_sigs     (xil_rx7_sigs_ep),   
    .common_commands_out(common_commands_out),    
        
    .pipe_tx_0_sigs     (xil_tx0_sigs_ep),
    .pipe_tx_1_sigs     (xil_tx1_sigs_ep),
    .pipe_tx_2_sigs     (xil_tx2_sigs_ep),
    .pipe_tx_3_sigs     (xil_tx3_sigs_ep),
    .pipe_tx_4_sigs     (xil_tx4_sigs_ep),
    .pipe_tx_5_sigs     (xil_tx5_sigs_ep),
    .pipe_tx_6_sigs     (xil_tx6_sigs_ep),
    .pipe_tx_7_sigs     (xil_tx7_sigs_ep)
);

//
// PCI-Express Model Root Port Instance
//

xilinx_pcie_2_1_rport_7x # (

  .REF_CLK_FREQ(0),
  .PL_FAST_TRAIN("TRUE"),
  .ALLOW_X8_GEN2("FALSE"),
  .C_DATA_WIDTH(128),
  .LINK_CAP_MAX_LINK_WIDTH(6'h4),
  .DEVICE_ID(16'h7100),
  .LINK_CAP_MAX_LINK_SPEED(4'h2),
  .LINK_CTRL2_TARGET_LINK_SPEED(4'h2),
  .DEV_CAP_MAX_PAYLOAD_SUPPORTED(2),
  .TRN_DW("TRUE"),
  .VC0_TX_LASTPACKET(29),
  .VC0_RX_RAM_LIMIT(13'h7FF),
  .VC0_CPL_INFINITE("TRUE"),
  .VC0_TOTAL_CREDITS_PD(437),
  .VC0_TOTAL_CREDITS_CD(461),
  .USER_CLK_FREQ(3),
  .USER_CLK2_DIV2("TRUE")
)
RP (

  // SYS Inteface
  .sys_clk(rp_sys_clk),
  .sys_rst_n(sys_rst_n),

    .common_commands_in ({3'b0,common_commands_out[0]} ), // pipe_clk from EP
    .pipe_rx_0_sigs     ({2'b0,xil_tx0_sigs_ep[22:0]}),
    .pipe_rx_1_sigs     ({2'b0,xil_tx1_sigs_ep[22:0]}),
    .pipe_rx_2_sigs     ({2'b0,xil_tx2_sigs_ep[22:0]}),
    .pipe_rx_3_sigs     ({2'b0,xil_tx3_sigs_ep[22:0]}),
    .pipe_rx_4_sigs     ({2'b0,xil_tx4_sigs_ep[22:0]}),
    .pipe_rx_5_sigs     ({2'b0,xil_tx5_sigs_ep[22:0]}),
    .pipe_rx_6_sigs     ({2'b0,xil_tx6_sigs_ep[22:0]}),
    .pipe_rx_7_sigs     ({2'b0,xil_tx7_sigs_ep[22:0]}),
    .common_commands_out(),  
                                    
    .pipe_tx_0_sigs     (xil_tx0_sigs_rp),
    .pipe_tx_1_sigs     (xil_tx1_sigs_rp),
    .pipe_tx_2_sigs     (xil_tx2_sigs_rp),
    .pipe_tx_3_sigs     (xil_tx3_sigs_rp),
    .pipe_tx_4_sigs     (xil_tx4_sigs_rp),
    .pipe_tx_5_sigs     (xil_tx5_sigs_rp),
    .pipe_tx_6_sigs     (xil_tx6_sigs_rp),
    .pipe_tx_7_sigs     (xil_tx7_sigs_rp)
);

     assign xil_rx0_sigs_ep  = {3'b0,xil_tx0_sigs_rp[22:0]};
     assign xil_rx1_sigs_ep  = {3'b0,xil_tx1_sigs_rp[22:0]};
     assign xil_rx2_sigs_ep  = {3'b0,xil_tx2_sigs_rp[22:0]};
     assign xil_rx3_sigs_ep  = {3'b0,xil_tx3_sigs_rp[22:0]};
     assign xil_rx4_sigs_ep  = {3'b0,xil_tx4_sigs_rp[22:0]};
     assign xil_rx5_sigs_ep  = {3'b0,xil_tx5_sigs_rp[22:0]};
     assign xil_rx6_sigs_ep  = {3'b0,xil_tx6_sigs_rp[22:0]};
     assign xil_rx7_sigs_ep  = {3'b0,xil_tx7_sigs_rp[22:0]};

sys_clk_gen  # (

  .halfcycle(REF_CLK_HALF_CYCLE),
  .offset(0)

)
CLK_GEN_RP (

  .sys_clk(rp_sys_clk)

);


sys_clk_gen_ds # (

  .halfcycle(REF_CLK_HALF_CYCLE),
  .offset(0)

)
CLK_GEN_EP (

  .sys_clk_p(ep_sys_clk_p),
  .sys_clk_n(ep_sys_clk_n)

);





initial begin
  $display("[%t] : System Reset Asserted...", $realtime);

  sys_rst_n = 1'b0;

  for (i = 0; i < 500; i = i + 1) begin

    @(posedge ep_sys_clk_p);

  end

  $display("[%t] : System Reset De-asserted...", $realtime);

  sys_rst_n = 1'b1;

end

//----------------------------------------------------------------------------------------------------------------------------------------------
//-- This behavioural model setup is targeting for Gen2 PCIexpress Core only.
//-- phy_sig_gen - module generates required status and clocks to the pcie core (pcie_top). This module has a simple free running counter,   
//-- which will be used along with ltssm status to generate required status/controls and BUFGMUX select in pipe_clock module.
//-- It has independent pipe_clock and controls generation of End Point(pcie_top) and Root Port(pcie_top).
//--  
//-- When the core is generated for External PIPE_MODE simulation, the same core generated DB(database) is not expected to use in synthesis/implementation
//-- and the generated configuration is intended purely simulation purpose only. It is upto user to hook-up required modules(gt_top)/signals for SYNTH/IMPL.   
//--  
//-- External PIPE_MODE simulation is expected to work for End Point/Root Port/Verilog/VHDL mode of coregenerations and for all link speeds/link widths.  
//--  
//--
//-- Refer XAPP on PIPE Mode Simulation Using Integrated Endpoint Block For PCIExpress for more details
//--
//-- [[Root Port Logic]] <--> [[RP-MAC/pcie_top]] <==> [[PIPE_PORTS(phy_sig_gen)]] <==> [[EP-MAC/pcie_top]] <--> [[End Point - User Application Logic]]
//--
//----------------------------------------------------------------------------------------------------------------------------------------------
//--  PIPE_PORTS to and from the core/pcie_top, each lane has independent input and output bus signals.
//---------------------------------------------------------------------------------------------------------------------------------------------- 
//----------------------------------------------------------------------------------------------------------------------------------------------
/*
   xil_sig2pipe xil_dut_pipe (
     .xil_rx0_sigs(xil_rx0_sigs_ep),
     .xil_rx1_sigs(xil_rx1_sigs_ep),
     .xil_rx2_sigs(xil_rx2_sigs_ep),
     .xil_rx3_sigs(xil_rx3_sigs_ep),
     .xil_rx4_sigs(xil_rx4_sigs_ep),
     .xil_rx5_sigs(xil_rx5_sigs_ep),
     .xil_rx6_sigs(xil_rx6_sigs_ep),
     .xil_rx7_sigs(xil_rx7_sigs_ep),
     .xil_tx0_sigs(xil_tx0_sigs_ep),
     .xil_tx1_sigs(xil_tx1_sigs_ep),
     .xil_tx2_sigs(xil_tx2_sigs_ep),
     .xil_tx3_sigs(xil_tx3_sigs_ep),
     .xil_tx4_sigs(xil_tx4_sigs_ep),
     .xil_tx5_sigs(xil_tx5_sigs_ep),
     .xil_tx6_sigs(xil_tx6_sigs_ep),
     .xil_tx7_sigs(xil_tx7_sigs_ep),     
 
     .xil_common_commands(common_commands_out),
      ///////////// do not modify above this line //////////
      //////////Connect the following pipe ports to BFM///////////////
//----------------------------------------------------------------------------------------------------------------------------------------------
//-- PIPE_PORTS description and mapping to input and output bus signals.
//----------------------------------------------------------------------------------------------------------------------------------------------
     .pipe_clk(),               // input to BFM  (pipe clock output)                 
     .pipe_tx_rate(),           // input to BFM  (rate)
     .pipe_tx_detect_rx(),      // input to BFM  (Receiver Detect)  
     .pipe_tx_powerdown(),      // input to BFM  (Powerdown)        
      // Pipe TX Interface
     .pipe_tx0_data(),          // input to BFM
     .pipe_tx1_data(),          // input to BFM
     .pipe_tx2_data(),          // input to BFM
     .pipe_tx3_data(),          // input to BFM
     .pipe_tx4_data(),          // input to BFM
     .pipe_tx5_data(),          // input to BFM
     .pipe_tx6_data(),          // input to BFM
     .pipe_tx7_data(),          // input to BFM
     .pipe_tx0_char_is_k(),     // input to BFM
     .pipe_tx1_char_is_k(),     // input to BFM
     .pipe_tx2_char_is_k(),     // input to BFM
     .pipe_tx3_char_is_k(),     // input to BFM
     .pipe_tx4_char_is_k(),     // input to BFM
     .pipe_tx5_char_is_k(),     // input to BFM
     .pipe_tx6_char_is_k(),     // input to BFM
     .pipe_tx7_char_is_k(),     // input to BFM
     .pipe_tx0_elec_idle(),     // input to BFM
     .pipe_tx1_elec_idle(),     // input to BFM
     .pipe_tx2_elec_idle(),     // input to BFM
     .pipe_tx3_elec_idle(),     // input to BFM
     .pipe_tx4_elec_idle(),     // input to BFM
     .pipe_tx5_elec_idle(),     // input to BFM
     .pipe_tx6_elec_idle(),     // input to BFM
     .pipe_tx7_elec_idle(),     // input to BFM
     
     // Pipe RX Interface
     .pipe_rx0_data(),          // output of BFM
     .pipe_rx1_data(),          // output of BFM
     .pipe_rx2_data(),          // output of BFM
     .pipe_rx3_data(),          // output of BFM
     .pipe_rx4_data(),          // output of BFM
     .pipe_rx5_data(),          // output of BFM
     .pipe_rx6_data(),          // output of BFM
     .pipe_rx7_data(),          // output of BFM
     .pipe_rx0_char_is_k(),     // output of BFM
     .pipe_rx1_char_is_k(),     // output of BFM
     .pipe_rx2_char_is_k(),     // output of BFM
     .pipe_rx3_char_is_k(),     // output of BFM
     .pipe_rx4_char_is_k(),     // output of BFM
     .pipe_rx5_char_is_k(),     // output of BFM
     .pipe_rx6_char_is_k(),     // output of BFM
     .pipe_rx7_char_is_k(),     // output of BFM
     .pipe_rx0_elec_idle(),     // output of BFM
     .pipe_rx1_elec_idle(),     // output of BFM
     .pipe_rx2_elec_idle(),     // output of BFM
     .pipe_rx3_elec_idle(),     // output of BFM
     .pipe_rx4_elec_idle(),     // output of BFM
     .pipe_rx5_elec_idle(),     // output of BFM
     .pipe_rx6_elec_idle(),     // output of BFM
     .pipe_rx7_elec_idle(),     // output of BFM
    
);

*/ 


initial begin

  if ($test$plusargs ("dump_all")) begin

`ifdef NCV // Cadence TRN dump

    $recordsetup("design=board",
                 "compress",
                 "wrapsize=100M",
                 "version=1",
                 "run=1");
    $recordvars();

`elsif VCS //Synopsys VPD dump

    $vcdplusfile("board.vpd");
    $vcdpluson;
    $vcdplusglitchon;
    $vcdplusflush;

`else

    // Verilog VC dump
    $dumpfile("board.vcd");
    $dumpvars(0, board);

`endif

  end

end


endmodule // BOARD
