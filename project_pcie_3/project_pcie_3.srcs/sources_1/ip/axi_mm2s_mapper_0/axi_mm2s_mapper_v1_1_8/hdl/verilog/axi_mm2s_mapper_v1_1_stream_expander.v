//  (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_mm2s_mapper_v1_1_8_stream_expander #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  parameter C_FAMILY                              = "virtex6",
  parameter integer C_PAYLOAD_WIDTH               = 61,
  parameter integer C_AXIS_TDATA_WIDTH            = 32,
  parameter integer C_AXIS_TDEST_WIDTH            = 3
  
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
  // Global System Signals
  input  wire                                       aclk,
  input  wire                                       aresetn,

                                                    
  // Input  AXI4-Stream
  input  wire                                       s_axis_tvalid,
  output wire                                       s_axis_tready,
  input  wire [C_AXIS_TDATA_WIDTH-1:0]               s_axis_tdata,
  input  wire [C_AXIS_TDATA_WIDTH/8-1:0]             s_axis_tkeep,
  input  wire                                       s_axis_tlast,
  input  wire [C_AXIS_TDEST_WIDTH-1:0]               s_axis_tdest,

  // input  AXI payload
  output wire                                       m_valid,
  input  wire                                       m_ready,
  output wire [C_PAYLOAD_WIDTH-1:0]                 m_payload
);

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
function integer f_calc_next_common_multiple (
  input integer tdata, 
  input integer payload 
);
  integer s;
  begin
    s = tdata;
    while ( s < payload) begin
      s = s + tdata;
    end
    f_calc_next_common_multiple = s;
 end
endfunction // clogb2

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam LP_INT_TDATA_WIDTH = f_calc_next_common_multiple ( C_AXIS_TDATA_WIDTH, C_PAYLOAD_WIDTH ) ;

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Begin RTL
////////////////////////////////////////////////////////////////////////////////

generate
if (LP_INT_TDATA_WIDTH != C_AXIS_TDATA_WIDTH) begin : gen_dwidth_converter
  wire [LP_INT_TDATA_WIDTH-1:0] int_tdata;

  axis_dwidth_converter_v1_1_8_axis_dwidth_converter #(
    .C_FAMILY             ( C_FAMILY           ) ,
    .C_S_AXIS_TDATA_WIDTH ( C_AXIS_TDATA_WIDTH ) ,
    .C_M_AXIS_TDATA_WIDTH ( LP_INT_TDATA_WIDTH ) ,
    .C_AXIS_TID_WIDTH     ( 1                  ) ,
    .C_AXIS_TDEST_WIDTH   ( 1                  ) ,
    .C_S_AXIS_TUSER_WIDTH ( 1                  ) ,
    .C_M_AXIS_TUSER_WIDTH ( 1                  ) ,
    .C_AXIS_SIGNAL_SET    ( 'B00011011         ) 
  ) axis_dwidth_converter_0 (
    .aclk          ( aclk          ) ,
    .aresetn       ( aresetn       ) ,
    .aclken        ( 1'b1          ) ,
    .s_axis_tvalid ( s_axis_tvalid ) ,
    .s_axis_tready ( s_axis_tready ) ,
    .s_axis_tdata  ( s_axis_tdata  ) ,
    .s_axis_tstrb  ( {C_AXIS_TDATA_WIDTH/8{1'b0}} ),
    .s_axis_tkeep  ( s_axis_tkeep  ) ,
    .s_axis_tlast  ( s_axis_tlast  ) ,
    .s_axis_tid    ( 1'b0          ) ,
    .s_axis_tdest  ( 1'b0          ) ,
    .s_axis_tuser  ( 1'b0          ) ,
    .m_axis_tvalid ( m_valid       ) ,
    .m_axis_tready ( m_ready       ) ,
    .m_axis_tdata  ( int_tdata     ) ,
    .m_axis_tkeep  ( ) ,
    .m_axis_tstrb  ( ) ,
    .m_axis_tlast  ( ) ,
    .m_axis_tid    ( ) ,
    .m_axis_tdest  ( ) ,
    .m_axis_tuser  ( )
  );

  assign m_payload = int_tdata[0+:C_PAYLOAD_WIDTH];
end
else begin : gen_no_dwidth_converter
  assign m_valid = s_axis_tvalid;
  assign s_axis_tready = m_ready;
  assign m_payload = s_axis_tdata[0+:C_PAYLOAD_WIDTH];
end
endgenerate

endmodule // axi_mm2s_mapper

`default_nettype wire
