vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../mig_7series_0_example.srcs/sources_1/ip/vio_twm_ddrx/ltlib_v1_0_0/hdl/verilog" "+incdir+../../../../mig_7series_0_example.srcs/sources_1/ip/vio_twm_ddrx/vio_v3_0_12/hdl" "+incdir+../../../../mig_7series_0_example.srcs/sources_1/ip/vio_twm_ddrx/xsdbm_v1_1_3/hdl/verilog" "+incdir+../../../../mig_7series_0_example.srcs/sources_1/ip/vio_twm_ddrx/xsdbs_v1_0_2/hdl/verilog" "+incdir+../../../../mig_7series_0_example.srcs/sources_1/ip/vio_twm_ddrx/ltlib_v1_0_0/hdl/verilog" "+incdir+../../../../mig_7series_0_example.srcs/sources_1/ip/vio_twm_ddrx/vio_v3_0_12/hdl" "+incdir+../../../../mig_7series_0_example.srcs/sources_1/ip/vio_twm_ddrx/xsdbm_v1_1_3/hdl/verilog" "+incdir+../../../../mig_7series_0_example.srcs/sources_1/ip/vio_twm_ddrx/xsdbs_v1_0_2/hdl/verilog" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../mig_7series_0_example.srcs/sources_1/ip/vio_twm_ddrx/sim/vio_twm_ddrx.vhd" \

vlog -work xil_defaultlib "glbl.v"

