vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/blk_mem_gen_v8_3_3
vlib msim/axi_bram_ctrl_v4_0_8
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_9
vlib msim/util_ds_buf_v2_01_a

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap blk_mem_gen_v8_3_3 msim/blk_mem_gen_v8_3_3
vmap axi_bram_ctrl_v4_0_8 msim/axi_bram_ctrl_v4_0_8
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_9 msim/proc_sys_reset_v5_0_9
vmap util_ds_buf_v2_01_a msim/util_ds_buf_v2_01_a

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -64 \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_3_3 -64 "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/blk_mem_gen_v8_3/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_0_8 -64 \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/srl_fifo.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/axi_bram_ctrl_funcs.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/coregen_comp_defs.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/axi_lite_if.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/checkbit_handler_64.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/checkbit_handler.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/correct_one_bit_64.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/correct_one_bit.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/xor18.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/parity.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/ecc_gen.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/lite_ecc_reg.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/axi_lite.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/sng_port_arb.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/ua_narrow.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/wrap_brst.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/rd_chnl.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/wr_chnl.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/full_axi.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/axi_bram_ctrl_top.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/axi_bram_ctrl.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_bram_0/sim/design_1_axi_bram_ctrl_0_bram_0.v" \

vcom -work lib_cdc_v1_0_2 -64 \
"../../../ipstatic/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work proc_sys_reset_v5_0_9 -64 \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/pcie_axi_lite_v1_0_v1_0/pcie_axi_lite/pcie_axi_lite.srcs/sources_1/imports/common_src/PIO_RX_ENGINE.v" \
"../../../ipstatic/pcie_axi_lite_v1_0_v1_0/pcie_axi_lite/pcie_axi_lite.srcs/sources_1/imports/common_src/PIO_TX_ENGINE.v" \
"../../../ipstatic/pcie_axi_lite_v1_0_v1_0/pcie_axi_lite/pcie_axi_lite.srcs/sources_1/imports/common_src/PIO_EP.v" \
"../../../ipstatic/pcie_axi_lite_v1_0_v1_0/pcie_axi_lite/pcie_axi_lite.srcs/sources_1/imports/common_src/PIO_TO_CTRL.v" \
"../../../ipstatic/pcie_axi_lite_v1_0_v1_0/pcie_axi_lite/pcie_axi_lite.srcs/sources_1/imports/common_src/PIO.v" \
"../../../ipstatic/pcie_axi_lite_v1_0_v1_0/pcie_axi_lite/pcie_axi_lite.srcs/sources_1/imports/common_src/pcie_app_7x.v" \
"../../../ipstatic/pcie_axi_lite_v1_0_v1_0/pcie_axi_lite/pcie_axi_lite.srcs/sources_1/imports/common_src/axi_lite_master_if.v" \
"../../../ipstatic/pcie_axi_lite_v1_0_v1_0/pcie_axi_lite/pcie_axi_lite.srcs/sources_1/imports/common_src/axiLite_debug.v" \
"../../../ipstatic/pcie_axi_lite_v1_0_v1_0/pcie_axi_lite/pcie_axi_lite.srcs/sources_1/imports/common_src/pcie_axi_stream_to_axi_lite_bridge.v" \
"../../../bd/design_1/ip/design_1_pcie_axi_lite_v1_0_0_1/sim/design_1_pcie_axi_lite_v1_0_0_1.v" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_1/hdl/design_1.vhd" \

vcom -work util_ds_buf_v2_01_a -64 \
"../../../ipstatic/util_ds_buf_v2_1/hdl/vhdl/util_ds_buf.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_util_ds_buf_0_0/sim/design_1_util_ds_buf_0_0.vhd" \
"../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_core_top.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
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

vcom -work xil_defaultlib -64 \
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

vlog -work xil_defaultlib -64 "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../pcie_lite_4.srcs/sources_1/bd/design_1/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_gt_wrapper.v" \
"../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_gt_common.v" \
"../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_gtp_cpllpd_ovrd.v" \
"../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_gtx_cpllpd_ovrd.v" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pcie_top.vhd" \
"../../../bd/design_1/ip/design_1_pcie_7x_0_0/source/design_1_pcie_7x_0_0_pcie2_top.vhd" \
"../../../bd/design_1/ip/design_1_pcie_7x_0_0/sim/design_1_pcie_7x_0_0.vhd" \
"../../../bd/design_1/ip/design_1_simple_counter_0_0/sim/design_1_simple_counter_0_0.vhd" \
"../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.vhd" \

vlog -work xil_defaultlib "glbl.v"

