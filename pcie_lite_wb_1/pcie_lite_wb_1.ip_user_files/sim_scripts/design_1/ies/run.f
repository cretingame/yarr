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
-makelib ies/lib_cdc_v1_0_2 \
  "../../../ipstatic/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \
-endlib
-makelib ies/proc_sys_reset_v5_0_9 \
  "../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
  "../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
  "../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
  "../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \
  "../../../bd/design_1/hdl/design_1.vhd" \
-endlib
-makelib ies/util_ds_buf_v2_01_a \
  "../../../ipstatic/util_ds_buf_v2_1/hdl/vhdl/util_ds_buf.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_util_ds_buf_0_0/sim/design_1_util_ds_buf_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_core_top.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pipe_clock.v" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pipe_drp.v" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pipe_eq.v" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pipe_rate.v" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pipe_reset.v" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pipe_sync.v" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_gtp_pipe_rate.v" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_gtp_pipe_drp.v" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_gtp_pipe_reset.v" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pipe_user.v" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pipe_wrapper.v" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_qpll_drp.v" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_qpll_reset.v" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_qpll_wrapper.v" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_rxeq_scan.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_axi_basic_rx_null_gen.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_axi_basic_rx_pipeline.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_axi_basic_rx.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_axi_basic_top.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_axi_basic_tx_pipeline.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_axi_basic_tx_thrtl_ctl.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_axi_basic_tx.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pcie_7x.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pcie_bram_7x.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pcie_bram_top_7x.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pcie_brams_7x.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pcie_pipe_lane.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pcie_pipe_misc.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pcie_pipe_pipeline.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_gt_rx_valid_filter_7x.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_gt_top.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_gt_wrapper.v" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_gt_common.v" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_gtp_cpllpd_ovrd.v" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_gtx_cpllpd_ovrd.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pcie_top.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pcie2_top.vhd" \
  "../../../bd/design_1/ip/design_1_pcie_7x_0_0/sim/design_1_pcie_7x_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_simple_counter_0_0/sim/design_1_simple_counter_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_ila_0_1/sim/design_1_ila_0_1.vhd" \
  "../../../bd/design_1/ip/design_1_axis_rx_0_0/sim/design_1_axis_rx_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_bram_wbs_0_0/sim/design_1_bram_wbs_0_0.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

