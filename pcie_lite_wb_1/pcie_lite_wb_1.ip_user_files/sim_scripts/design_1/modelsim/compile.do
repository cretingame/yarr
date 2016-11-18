vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_9
vlib msim/util_ds_buf_v2_01_a

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_9 msim/proc_sys_reset_v5_0_9
vmap util_ds_buf_v2_01_a msim/util_ds_buf_v2_01_a

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../ipstatic/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work proc_sys_reset_v5_0_9 -64 -93 \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \
"../../../bd/design_1/hdl/design_1.vhd" \

vcom -work util_ds_buf_v2_01_a -64 -93 \
"../../../ipstatic/util_ds_buf_v2_1/hdl/vhdl/util_ds_buf.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_util_ds_buf_0_0/sim/design_1_util_ds_buf_0_0.vhd" \
"../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_core_top.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
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

vcom -work xil_defaultlib -64 -93 \
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

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_wb_1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_gt_wrapper.v" \
"../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_gt_common.v" \
"../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_gtp_cpllpd_ovrd.v" \
"../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_gtx_cpllpd_ovrd.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pcie_top.vhd" \
"../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pcie2_top.vhd" \
"../../../bd/design_1/ip/design_1_pcie_7x_0_0/sim/design_1_pcie_7x_0_0.vhd" \
"../../../bd/design_1/ip/design_1_simple_counter_0_0/sim/design_1_simple_counter_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axis_rx_0_0/sim/design_1_axis_rx_0_0.vhd" \
"../../../bd/design_1/ip/design_1_bram_wbs_0_0/sim/design_1_bram_wbs_0_0.vhd" \
"../../../bd/design_1/ip/design_1_ila_0_2/sim/design_1_ila_0_2.vhd" \

vlog -work xil_defaultlib "glbl.v"

