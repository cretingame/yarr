vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../project_pcie_3.srcs/sources_1/ip/ila_2/ila_v6_1_1/hdl/verilog" "+incdir+../../../../project_pcie_3.srcs/sources_1/ip/ila_2/ltlib_v1_0_0/hdl/verilog" "+incdir+../../../../project_pcie_3.srcs/sources_1/ip/ila_2/xsdbm_v1_1_3/hdl/verilog" "+incdir+../../../../project_pcie_3.srcs/sources_1/ip/ila_2/xsdbs_v1_0_2/hdl/verilog" "+incdir+../../../../project_pcie_3.srcs/sources_1/ip/ila_2/ila_v6_1_1/hdl/verilog" "+incdir+../../../../project_pcie_3.srcs/sources_1/ip/ila_2/ltlib_v1_0_0/hdl/verilog" "+incdir+../../../../project_pcie_3.srcs/sources_1/ip/ila_2/xsdbm_v1_1_3/hdl/verilog" "+incdir+../../../../project_pcie_3.srcs/sources_1/ip/ila_2/xsdbs_v1_0_2/hdl/verilog" \
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

vcom -work xil_defaultlib -64 \
"../../../../project_pcie_3.srcs/sources_1/ip/ila_2/sim/ila_2.vhd" \

vlog -work xil_defaultlib "glbl.v"

