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
//   axi_mm2s_mapper
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_mm2s_mapper_v1_1_8_stream_encapsulator #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  parameter C_FAMILY                              = "virtex6",
  parameter integer C_PAYLOAD_WIDTH               = 61,
  parameter integer C_AXIS_TDATA_WIDTH            = 32,
  parameter integer C_AXIS_TDEST_WIDTH            = 3, 
  parameter [C_AXIS_TDEST_WIDTH-1:0] C_AXIS_TDEST_VALUE = 3'b000
  
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
  // Global System Signals
  input  wire                                       aclk,
  input  wire                                       aresetn,

  // Input AXI payload
  input  wire                                       s_valid,
  output wire                                       s_ready,
  input  wire [C_PAYLOAD_WIDTH-1:0]                 s_payload,
                                                    
  // Output AXI4-Stream
  output wire                                       m_axis_tvalid,
  input  wire                                       m_axis_tready,
  output wire [C_AXIS_TDATA_WIDTH-1:0]              m_axis_tdata,
  output wire [C_AXIS_TDATA_WIDTH/8-1:0]            m_axis_tkeep,
  output wire                                       m_axis_tlast,
  output wire [C_AXIS_TDEST_WIDTH-1:0]              m_axis_tdest
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
wire [LP_INT_TDATA_WIDTH-1:0] int_tdata;
wire [LP_INT_TDATA_WIDTH/8-1:0] int_tkeep;
wire                            int_tlast;

////////////////////////////////////////////////////////////////////////////////
// Begin RTL
////////////////////////////////////////////////////////////////////////////////
generate
if (LP_INT_TDATA_WIDTH != C_AXIS_TDATA_WIDTH) begin : gen_dwidth_converter
  axis_dwidth_converter_v1_1_8_axis_dwidth_converter #(
    .C_FAMILY             ( C_FAMILY           ) ,
    .C_S_AXIS_TDATA_WIDTH ( LP_INT_TDATA_WIDTH ) ,
    .C_M_AXIS_TDATA_WIDTH ( C_AXIS_TDATA_WIDTH ) ,
    .C_AXIS_TID_WIDTH     ( 1                  ) ,
    .C_AXIS_TDEST_WIDTH   ( 1                  ) ,
    .C_S_AXIS_TUSER_WIDTH ( 1                  ) ,
    .C_M_AXIS_TUSER_WIDTH ( 1                  ) ,
    .C_AXIS_SIGNAL_SET    ( 'B00011011         ) 
  ) axis_dwidth_converter_0 (
    .aclk          ( aclk          ) ,
    .aresetn       ( aresetn       ) ,
    .aclken        ( 1'b1          ) ,
    .s_axis_tvalid ( s_valid       ) ,
    .s_axis_tready ( s_ready       ) ,
    .s_axis_tdata  ( int_tdata     ) ,
    .s_axis_tstrb  ( {LP_INT_TDATA_WIDTH/8{1'b0}} ),
    .s_axis_tkeep  ( int_tkeep     ) ,
    .s_axis_tlast  ( int_tlast     ) ,
    .s_axis_tid    ( 1'b0          ) ,
    .s_axis_tdest  ( 1'b0          ) ,
    .s_axis_tuser  ( 1'b0          ) ,
    .m_axis_tvalid ( m_axis_tvalid ) ,
    .m_axis_tready ( m_axis_tready ) ,
    .m_axis_tdata  ( m_axis_tdata  ) ,
    .m_axis_tkeep  ( m_axis_tkeep  ) ,
    .m_axis_tstrb  (               ) ,
    .m_axis_tlast  ( m_axis_tlast  ) ,
    .m_axis_tid    (               ) ,
    .m_axis_tdest  (               ) ,
    .m_axis_tuser  (               )
  );
end
else begin : gen_no_dwidth_converter
  assign m_axis_tvalid = s_valid;
  assign s_ready = m_axis_tready;
  assign m_axis_tdata = int_tdata;
  assign m_axis_tkeep = int_tkeep;
  assign m_axis_tlast = int_tlast;
end

// If the incoming payload width is not equal to the output axis tdata width.
// Expand the payload width by padding the upper bits with zeros such that the
// payload width becomes divisible evenly by the axis tdata width.  TKEEPs are
// added to indicates which bytes are padded. Partial bytes at the boundary
// may be padded, but TKEEP will indicate the whole byte is valid since it's
// granularity only covers bytes.
if (C_PAYLOAD_WIDTH != LP_INT_TDATA_WIDTH) begin : gen_payload_expansion
  assign int_tdata[0+:C_PAYLOAD_WIDTH] = s_payload;
  assign int_tdata[C_PAYLOAD_WIDTH+:(LP_INT_TDATA_WIDTH-C_PAYLOAD_WIDTH)] = {LP_INT_TDATA_WIDTH-C_PAYLOAD_WIDTH{1'b0}};

  if (C_PAYLOAD_WIDTH % 8 == 0) begin : gen_tkeep_no_partial_byte
    assign int_tkeep[0+:C_PAYLOAD_WIDTH/8] = {C_PAYLOAD_WIDTH/8{1'b1}};
    assign int_tkeep[C_PAYLOAD_WIDTH/8+:(LP_INT_TDATA_WIDTH/8-C_PAYLOAD_WIDTH/8)] 
        = {LP_INT_TDATA_WIDTH/8-C_PAYLOAD_WIDTH/8{1'b0}};
  end
  else begin : gen_tkeep_partial_byte
    assign int_tkeep[0+:(C_PAYLOAD_WIDTH/8)+1] = {((C_PAYLOAD_WIDTH/8)+1){1'b1}};
    if (((C_PAYLOAD_WIDTH/8)+1) < LP_INT_TDATA_WIDTH/8) begin : gen_pad_upper_tkeep_with_0
      assign int_tkeep[((C_PAYLOAD_WIDTH/8)+1)+:((LP_INT_TDATA_WIDTH/8)-((C_PAYLOAD_WIDTH/8)+1))] 
        = {((LP_INT_TDATA_WIDTH/8)-((C_PAYLOAD_WIDTH/8)+1)){1'b0}};
    end
    else begin : gen_no_pad_upper_tkeep_with_0
    end
  end
end
else begin : gen_no_payload_expansion
  assign int_tdata = s_payload;
  assign int_tkeep = {C_PAYLOAD_WIDTH/8{1'b1}};
end
  
endgenerate

assign int_tlast = 1'b1;
    
assign m_axis_tdest = C_AXIS_TDEST_VALUE[0+:C_AXIS_TDEST_WIDTH];

endmodule // axi_mm2s_mapper

`default_nettype wire
