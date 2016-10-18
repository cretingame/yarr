vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib -v2k5 -sv \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_core_top.vhd" \

vlog -work xil_defaultlib -v2k5 \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_clock.v" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_drp.v" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_eq.v" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_rate.v" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_reset.v" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_sync.v" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gtp_pipe_rate.v" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gtp_pipe_drp.v" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gtp_pipe_reset.v" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_user.v" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_wrapper.v" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_qpll_drp.v" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_qpll_reset.v" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_qpll_wrapper.v" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_rxeq_scan.v" \

vcom -work xil_defaultlib -93 \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_rx_null_gen.vhd" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_rx_pipeline.vhd" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_rx.vhd" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_top.vhd" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_tx_pipeline.vhd" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_tx_thrtl_ctl.vhd" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_tx.vhd" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_7x.vhd" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_bram_7x.vhd" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_bram_top_7x.vhd" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_brams_7x.vhd" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_pipe_lane.vhd" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_pipe_misc.vhd" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_pipe_pipeline.vhd" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gt_rx_valid_filter_7x.vhd" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gt_top.vhd" \

vlog -work xil_defaultlib -v2k5 \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gt_wrapper.v" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gt_common.v" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gtp_cpllpd_ovrd.v" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gtx_cpllpd_ovrd.v" \

vcom -work xil_defaultlib -93 \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_top.vhd" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie2_top.vhd" \
"../../../../project_pcie_1.srcs/sources_1/ip/pcie_7x_0/sim/pcie_7x_0.vhd" \

vlog -work xil_defaultlib "glbl.v"

