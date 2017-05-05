// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
// Date        : Tue May  2 16:17:00 2017
// Host        : spikepig.dhcp.lbl.gov running 64-bit CentOS Linux release 7.2.1511 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/mig_7series_0/mig_7series_0_stub.v
// Design      : mig_7series_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module mig_7series_0(ddr3_dq, ddr3_dqs_p, ddr3_dqs_n, ddr3_addr, ddr3_ba, ddr3_ras_n, ddr3_cas_n, ddr3_we_n, ddr3_reset_n, ddr3_ck_p, ddr3_ck_n, ddr3_cke, ddr3_cs_n, ddr3_dm, ddr3_odt, app_addr, app_cmd, app_en, app_wdf_data, app_wdf_end, app_wdf_mask, app_wdf_wren, app_rd_data, app_rd_data_end, app_rd_data_valid, app_rdy, app_wdf_rdy, app_sr_req, app_ref_req, app_zq_req, app_sr_active, app_ref_ack, app_zq_ack, ui_clk, ui_clk_sync_rst, init_calib_complete, ddr3_ila_wrpath, ddr3_ila_rdpath, ddr3_ila_basic, ddr3_vio_sync_out, dbg_byte_sel, dbg_sel_pi_incdec, dbg_pi_f_inc, dbg_pi_f_dec, dbg_sel_po_incdec, dbg_po_f_inc, dbg_po_f_stg23_sel, dbg_po_f_dec, dbg_pi_counter_read_val, dbg_po_counter_read_val, dbg_prbs_final_dqs_tap_cnt_r, dbg_prbs_first_edge_taps, dbg_prbs_second_edge_taps, sys_clk_p, sys_clk_n, device_temp_o, sys_rst)
/* synthesis syn_black_box black_box_pad_pin="ddr3_dq[63:0],ddr3_dqs_p[7:0],ddr3_dqs_n[7:0],ddr3_addr[14:0],ddr3_ba[2:0],ddr3_ras_n,ddr3_cas_n,ddr3_we_n,ddr3_reset_n,ddr3_ck_p[0:0],ddr3_ck_n[0:0],ddr3_cke[0:0],ddr3_cs_n[0:0],ddr3_dm[7:0],ddr3_odt[0:0],app_addr[28:0],app_cmd[2:0],app_en,app_wdf_data[255:0],app_wdf_end,app_wdf_mask[31:0],app_wdf_wren,app_rd_data[255:0],app_rd_data_end,app_rd_data_valid,app_rdy,app_wdf_rdy,app_sr_req,app_ref_req,app_zq_req,app_sr_active,app_ref_ack,app_zq_ack,ui_clk,ui_clk_sync_rst,init_calib_complete,ddr3_ila_wrpath[390:0],ddr3_ila_rdpath[1023:0],ddr3_ila_basic[119:0],ddr3_vio_sync_out[13:0],dbg_byte_sel[3:0],dbg_sel_pi_incdec,dbg_pi_f_inc,dbg_pi_f_dec,dbg_sel_po_incdec,dbg_po_f_inc,dbg_po_f_stg23_sel,dbg_po_f_dec,dbg_pi_counter_read_val[5:0],dbg_po_counter_read_val[8:0],dbg_prbs_final_dqs_tap_cnt_r[107:0],dbg_prbs_first_edge_taps[107:0],dbg_prbs_second_edge_taps[107:0],sys_clk_p,sys_clk_n,device_temp_o[11:0],sys_rst" */;
  inout [63:0]ddr3_dq;
  inout [7:0]ddr3_dqs_p;
  inout [7:0]ddr3_dqs_n;
  output [14:0]ddr3_addr;
  output [2:0]ddr3_ba;
  output ddr3_ras_n;
  output ddr3_cas_n;
  output ddr3_we_n;
  output ddr3_reset_n;
  output [0:0]ddr3_ck_p;
  output [0:0]ddr3_ck_n;
  output [0:0]ddr3_cke;
  output [0:0]ddr3_cs_n;
  output [7:0]ddr3_dm;
  output [0:0]ddr3_odt;
  input [28:0]app_addr;
  input [2:0]app_cmd;
  input app_en;
  input [255:0]app_wdf_data;
  input app_wdf_end;
  input [31:0]app_wdf_mask;
  input app_wdf_wren;
  output [255:0]app_rd_data;
  output app_rd_data_end;
  output app_rd_data_valid;
  output app_rdy;
  output app_wdf_rdy;
  input app_sr_req;
  input app_ref_req;
  input app_zq_req;
  output app_sr_active;
  output app_ref_ack;
  output app_zq_ack;
  output ui_clk;
  output ui_clk_sync_rst;
  output init_calib_complete;
  output [390:0]ddr3_ila_wrpath;
  output [1023:0]ddr3_ila_rdpath;
  output [119:0]ddr3_ila_basic;
  input [13:0]ddr3_vio_sync_out;
  input [3:0]dbg_byte_sel;
  input dbg_sel_pi_incdec;
  input dbg_pi_f_inc;
  input dbg_pi_f_dec;
  input dbg_sel_po_incdec;
  input dbg_po_f_inc;
  input dbg_po_f_stg23_sel;
  input dbg_po_f_dec;
  output [5:0]dbg_pi_counter_read_val;
  output [8:0]dbg_po_counter_read_val;
  output [107:0]dbg_prbs_final_dqs_tap_cnt_r;
  output [107:0]dbg_prbs_first_edge_taps;
  output [107:0]dbg_prbs_second_edge_taps;
  input sys_clk_p;
  input sys_clk_n;
  output [11:0]device_temp_o;
  input sys_rst;
endmodule
