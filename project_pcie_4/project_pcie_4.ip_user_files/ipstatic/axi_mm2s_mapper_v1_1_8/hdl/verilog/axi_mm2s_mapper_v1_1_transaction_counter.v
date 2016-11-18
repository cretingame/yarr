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
// axi_mm2s_mapper
//   Encapsulates/expands AXI Memory Mapped protocol on to AXI4-Stream.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   top
//     axi2vector
//     vector2axi
//     stream_encapsulator x 5
//       axis_dwidth_converter
//     stream_expander x 5
//       axis_dwidth_converter
//     axis_switch (5x1)
//     axis_switch (1x5)
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

module axi_mm2s_mapper_v1_1_8_transaction_counter #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  parameter integer C_COUNTER_WIDTH           = 4
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
  // Global System Signals
  input  wire                                       aclk,
  input  wire                                       aresetn,

  input  wire                                       incr_trans,
  input  wire                                       decr_trans,

  output wire                                       zero_n,
  output wire                                       max_n
);

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
reg  [C_COUNTER_WIDTH-1:0]  num_active_trans;
reg                             count_is_zero;
reg                             count_is_max;

////////////////////////////////////////////////////////////////////////////////
// Begin RTL
////////////////////////////////////////////////////////////////////////////////
assign max_n = ~count_is_max;

always @(posedge aclk) begin 
  if (~aresetn) begin 
    count_is_max <= 1'b0;
  end
  else begin 
    count_is_max <= incr_trans & ~decr_trans & (num_active_trans == {C_COUNTER_WIDTH{1'b1}}) ? 1'b1 :
                   ~incr_trans & decr_trans ? 1'b0 : 
                   count_is_max;
  end
end

assign zero_n = ~count_is_zero;

always @(posedge aclk) begin 
  if (~aresetn) begin 
    count_is_zero <= 1'b1;
  end
  else begin 
    count_is_zero <= ~incr_trans & decr_trans & (num_active_trans == ({C_COUNTER_WIDTH{1'b0}} + 1'b1)) ? 1'b1 :
                     incr_trans & ~decr_trans ? 1'b0 : 
                     count_is_zero;
  end
end

always @(posedge aclk) begin 
  if (~aresetn) begin 
    num_active_trans <= {C_COUNTER_WIDTH{1'b0}};
  end
  else begin 
    num_active_trans <= ~incr_trans & decr_trans ? num_active_trans - 1'b1 : 
                        incr_trans & ~decr_trans ? num_active_trans + 1'b1 : 
                        num_active_trans;
  end
end

endmodule // transaction_counter

`default_nettype wire
