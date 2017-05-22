# To list file
# ls -1 | xargs -I % echo \"%\",
files = [
# Common
"common/bcf_bram32.vhd",
"common/common_pkg.vhd",
"common/gn4124_core_pkg.vhd",
"common/k_bram.vhd",
"common/simple_counter.vhd",
#TOP
"top_level.vhd",
"app_package.vhd",
"app.vhd",
"top.xdc",
# Wishbone express
"wshexp_core/bcf_bram_wbs.vhd",
"wshexp_core/debugregisters.vhd",
"wshexp_core/dma_controller.vhd",
"wshexp_core/dma_controller_wb_slave.vhd",
"wshexp_core/fifo_32x512.vhd",
"wshexp_core/generic_async_fifo_wrapper.vhd",
"wshexp_core/l2p_arbiter.vhd",
"wshexp_core/l2p_dma_bench.vhd",
"wshexp_core/l2p_dma_master.vhd",
"wshexp_core/l2p_fifo.vhd",
"wshexp_core/p2l_decoder_bench.vhd",
"wshexp_core/p2l_decoder.vhd",
"wshexp_core/p2l_dma_bench.vhd",
"wshexp_core/p2l_dma_master.vhd",
"wshexp_core/top_bench.vhd",
"wshexp_core/wbmaster32.vhd",
# DDR3 CTRL
"ddr3_core/ddr3_ctrl_pkg.vhd",
"ddr3_core/ddr3_ctrl_wb.vhd",
"ddr3_core/ddr3.xdc",
#####################
# IP cores

# FIFO ddr3_ctrl WB read data
"ip_cores/fifo_256x16/fifo_256x16.xci",
#"ip_cores/fifo_256x16/fifo_256x16.xml",
#"ip_cores/fifo_256x16/fifo_generator_v13_1_1/hdl/fifo_generator_v13_1_vhsyn_rfs.vhd",
#"ip_cores/fifo_256x16/fifo_generator_v13_1_1/hdl/fifo_generator_v13_1.vhd",
#"ip_cores/fifo_256x16/fifo_generator_v13_1_1/hdl/fifo_generator_v13_1_rfs.vhd",
#"ip_cores/fifo_256x16/fifo_generator_v13_1_1/hdl/fifo_generator_v13_1_rfs.v",
#"ip_cores/fifo_256x16/blk_mem_gen_v8_3_3/hdl/blk_mem_gen_v8_3_vhsyn_rfs.vhd",
#"ip_cores/fifo_256x16/blk_mem_gen_v8_3_3/hdl/blk_mem_gen_v8_3.vhd",
#"ip_cores/fifo_256x16/fifo_256x16/fifo_256x16_clocks.xdc",
#"ip_cores/fifo_256x16/fifo_256x16/fifo_256x16.xdc",
#"ip_cores/fifo_256x16/fifo_256x16_ooc.xdc",
#"ip_cores/fifo_256x16/synth/fifo_256x16.vhd",
#"ip_cores/fifo_256x16/sim/fifo_256x16.v",
#"ip_cores/fifo_256x16/fifo_256x16_stub.v",
#"ip_cores/fifo_256x16/fifo_256x16_stub.vhdl",
#"ip_cores/fifo_256x16/fifo_256x16_sim_netlist.v",
#"ip_cores/fifo_256x16/fifo_256x16_sim_netlist.vhdl",


"ip_cores/fifo_27x16/fifo_27x16.xci",
#"ip_cores/fifo_27x16/fifo_27x16.xml",
#"ip_cores/fifo_27x16/synth/fifo_27x16.vhd",
#"ip_cores/fifo_27x16/",
#"ip_cores/fifo_27x16/",
#"ip_cores/fifo_27x16/",
#"ip_cores/fifo_27x16/",



"ip_cores/fifo_315x16/fifo_315x16.xci",
"ip_cores/fifo_32x512/fifo_32x512.xci",
"ip_cores/fifo_4x16/fifo_4x16.xci",
"ip_cores/fifo_64x512/fifo_64x512.xci",
"ip_cores/fifo_96x512_1/fifo_96x512.xci",
"ip_cores/ila_axis/ila_axis.xci",
"ip_cores/ila_ddr/ila_ddr.xci",
"ip_cores/ila_dma_ctrl_reg/ila_dma_ctrl_reg.xci",
"ip_cores/ila_l2p_dma/ila_l2p_dma.xci",
"ip_cores/ila_pd_pdm/ila_pd_pdm.xci",
"ip_cores/ila_wsh_pipe/ila_wsh_pipe.xci",


"ip_cores/l2p_fifo64/l2p_fifo64.xci",
#"ip_cores/l2p_fifo64/synth/l2p_fifo64.vhd",
#"ip_cores/l2p_fifo64/l2p_fifo64/l2p_fifo64_clocks.xdc",
#"ip_cores/l2p_fifo64/l2p_fifo64/l2p_fifo64.xdc",
#"ip_cores/l2p_fifo64/l2p_fifo64_ooc.xdc",
#"ip_cores/l2p_fifo64/l2p_fifo64_stub.vhdl",
#"ip_cores/l2p_fifo64/l2p_fifo64.xml",
#"ip_cores/l2p_fifo64/l2p_fifo64.dcp",
#"ip_cores/l2p_fifo64/fifo_generator_v13_1_1/hdl/fifo_generator_v13_1.vhd",
#"ip_cores/l2p_fifo64/fifo_generator_v13_1_1/hdl/fifo_generator_v13_1_rfs.vhd",
#"ip_cores/l2p_fifo64/blk_mem_gen_v8_3_3/hdl/blk_mem_gen_v8_3.vhd",
#"ip_cores/l2p_fifo64/blk_mem_gen_v8_3_3/hdl/blk_mem_gen_v8_3_vhsyn_rfs.vhd",





"ip_cores/mig_7series_0/mig_7series_0.xci",
"ip_cores/mig_7series_0/mig_a.prj",
"ip_cores/mig_7series_0/mig_b.prj",
"ip_cores/pcie_7x_0/pcie_7x_0.xci",
]

library = "work"

#modules={
#"local" : [ "common" ],
#"local" : [ "wshexp_core" ],
#"local" : [ "ddr3_core" ],
#"local" : [ "ip_cores" ],
#}

target = "xilinx" 
action = "synthesis" 

syn_device = "xc7k160" 
syn_grade = "-2" 
syn_package = "tfbg676" 
syn_top = "top_level" 
syn_project = "yarr"
syn_tool = "vivado"
