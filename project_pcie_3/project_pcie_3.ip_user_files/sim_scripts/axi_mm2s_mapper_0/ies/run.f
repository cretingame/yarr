-makelib ies/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
  "/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
  "/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
  "/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
  "/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
  "/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
  "/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \
-endlib
-makelib ies/xpm \
  "/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/axis_infrastructure_v1_1_0 \
  "../../../ipstatic/axis_infrastructure_v1_1_0/hdl/verilog/axis_infrastructure_v1_1_mux_enc.v" \
  "../../../ipstatic/axis_infrastructure_v1_1_0/hdl/verilog/axis_infrastructure_v1_1_util_aclken_converter.v" \
  "../../../ipstatic/axis_infrastructure_v1_1_0/hdl/verilog/axis_infrastructure_v1_1_util_aclken_converter_wrapper.v" \
  "../../../ipstatic/axis_infrastructure_v1_1_0/hdl/verilog/axis_infrastructure_v1_1_util_axis2vector.v" \
  "../../../ipstatic/axis_infrastructure_v1_1_0/hdl/verilog/axis_infrastructure_v1_1_util_vector2axis.v" \
  "../../../ipstatic/axis_infrastructure_v1_1_0/hdl/verilog/axis_infrastructure_v1_1_clock_synchronizer.v" \
  "../../../ipstatic/axis_infrastructure_v1_1_0/hdl/verilog/axis_infrastructure_v1_1_cdc_handshake.v" \
-endlib
-makelib ies/axis_register_slice_v1_1_9 \
  "../../../ipstatic/axis_register_slice_v1_1_9/hdl/verilog/axis_register_slice_v1_1_axisc_register_slice.v" \
  "../../../ipstatic/axis_register_slice_v1_1_9/hdl/verilog/axis_register_slice_v1_1_axis_register_slice.v" \
-endlib
-makelib ies/axis_switch_v1_1_9 \
  "../../../ipstatic/axis_switch_v1_1_9/hdl/verilog/axis_switch_v1_1_arb_rr.v" \
  "../../../ipstatic/axis_switch_v1_1_9/hdl/verilog/axis_switch_v1_1_arb_trr.v" \
  "../../../ipstatic/axis_switch_v1_1_9/hdl/verilog/axis_switch_v1_1_axisc_decoder.v" \
  "../../../ipstatic/axis_switch_v1_1_9/hdl/verilog/axis_switch_v1_1_axisc_transfer_mux.v" \
  "../../../ipstatic/axis_switch_v1_1_9/hdl/verilog/axis_switch_v1_1_axisc_arb_responder.v" \
  "../../../ipstatic/axis_switch_v1_1_9/hdl/verilog/axis_switch_v1_1_axis_switch_arbiter.v" \
  "../../../ipstatic/axis_switch_v1_1_9/hdl/verilog/axis_switch_v1_1_dynamic_priority_encoder.v" \
  "../../../ipstatic/axis_switch_v1_1_9/hdl/verilog/axis_switch_v1_1_axi_ctrl_read.v" \
  "../../../ipstatic/axis_switch_v1_1_9/hdl/verilog/axis_switch_v1_1_axi_ctrl_write.v" \
  "../../../ipstatic/axis_switch_v1_1_9/hdl/verilog/axis_switch_v1_1_axi_ctrl_top.v" \
  "../../../ipstatic/axis_switch_v1_1_9/hdl/verilog/axis_switch_v1_1_static_router_config_dp.v" \
  "../../../ipstatic/axis_switch_v1_1_9/hdl/verilog/axis_switch_v1_1_static_router_config.v" \
  "../../../ipstatic/axis_switch_v1_1_9/hdl/verilog/axis_switch_v1_1_static_router.v" \
  "../../../ipstatic/axis_switch_v1_1_9/hdl/verilog/axis_switch_v1_1_reg_bank_16x32.v" \
  "../../../ipstatic/axis_switch_v1_1_9/hdl/verilog/axis_switch_v1_1_axis_switch.v" \
-endlib
-makelib ies/axis_dwidth_converter_v1_1_8 \
  "../../../ipstatic/axis_dwidth_converter_v1_1_8/hdl/verilog/axis_dwidth_converter_v1_1_axisc_downsizer.v" \
  "../../../ipstatic/axis_dwidth_converter_v1_1_8/hdl/verilog/axis_dwidth_converter_v1_1_axisc_upsizer.v" \
  "../../../ipstatic/axis_dwidth_converter_v1_1_8/hdl/verilog/axis_dwidth_converter_v1_1_axis_dwidth_converter.v" \
-endlib
-makelib ies/axi_infrastructure_v1_1_0 \
  "../../../ipstatic/axi_infrastructure_v1_1_0/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
  "../../../ipstatic/axi_infrastructure_v1_1_0/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
  "../../../ipstatic/axi_infrastructure_v1_1_0/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \
-endlib
-makelib ies/axi_mm2s_mapper_v1_1_8 \
  "../../../ipstatic/axi_mm2s_mapper_v1_1_8/hdl/verilog/axi_mm2s_mapper_v1_1_stream_expander.v" \
  "../../../ipstatic/axi_mm2s_mapper_v1_1_8/hdl/verilog/axi_mm2s_mapper_v1_1_stream_encapsulator.v" \
  "../../../ipstatic/axi_mm2s_mapper_v1_1_8/hdl/verilog/axi_mm2s_mapper_v1_1_transaction_counter.v" \
  "../../../ipstatic/axi_mm2s_mapper_v1_1_8/hdl/verilog/axi_mm2s_mapper_v1_1_top.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../project_pcie_3.srcs/sources_1/ip/axi_mm2s_mapper_0/sim/axi_mm2s_mapper_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

