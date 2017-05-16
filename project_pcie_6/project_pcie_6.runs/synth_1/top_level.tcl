# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7k160tfbg676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/asautaux/yarr/project_pcie_6/project_pcie_6.cache/wt [current_project]
set_property parent.project_path /home/asautaux/yarr/project_pcie_6/project_pcie_6.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/pcie_7x_0/pcie_7x_0.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/pcie_7x_0/pcie_7x_0.dcp]
add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/l2p_fifo64/l2p_fifo64.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/l2p_fifo64/l2p_fifo64.dcp]
add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_axis/ila_axis.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_axis/ila_axis.dcp]
add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_dma_ctrl_reg/ila_dma_ctrl_reg.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_dma_ctrl_reg/ila_dma_ctrl_reg.dcp]
add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_wsh_pipe/ila_wsh_pipe.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_wsh_pipe/ila_wsh_pipe.dcp]
add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_pd_pdm/ila_pd_pdm.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_pd_pdm/ila_pd_pdm.dcp]
add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_96x512_1/fifo_96x512.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_96x512_1/fifo_96x512.dcp]
add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_l2p_dma/ila_l2p_dma.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_l2p_dma/ila_l2p_dma.dcp]
add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_32x512/fifo_32x512.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_32x512/fifo_32x512.dcp]
add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_64x512/fifo_64x512.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_64x512/fifo_64x512.dcp]
add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/mig_7series_0/mig_7series_0.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/mig_7series_0/mig_7series_0.dcp]
add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_256x16/fifo_256x16.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_256x16/fifo_256x16.dcp]
add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_315x16/fifo_315x16.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_315x16/fifo_315x16.dcp]
add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_27x16/fifo_27x16.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_27x16/fifo_27x16.dcp]
add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_4x16/fifo_4x16.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/fifo_4x16/fifo_4x16.dcp]
add_files -quiet /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_ddr/ila_ddr.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/ip/ila_ddr/ila_ddr.dcp]
read_vhdl -library xil_defaultlib {
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/common/gn4124_core_pkg.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/ddr3-core/ddr3_ctrl_pkg.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/new/app_package.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/yarr_sim/l2p_dma/l2p_fifo.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/yarr_sim/p2l_dma/generic_async_fifo_wrapper.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/yarr_sim/top/dma_controller_wb_slave.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/common/common_pkg.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/Downloads/p2l_decoder.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/sources_1/imports/sources_1/imports/new/simple_counter.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/yarr_sim/p2l_dma/p2l_dma_master.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/yarr_sim/l2p_dma/l2p_dma_master.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/yarr_sim/top/dma_controller.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/new/bcf_bram32.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/new/k_bram.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/Downloads/l2p_arbiter.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/yarr_sim/top/app.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/sources_1/imports/sources_1/new/top_level.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/new/k2_bram.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/Downloads/bcf_bram_wbs.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/Downloads/top_bench.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/new/k1_bram.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/l2p_dma/l2p_dma_bench.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/p2l_dma/p2l_dma_bench.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/p2l_decoder/p2l_decoder_bench.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/Downloads/wbmaster32.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/new/wbmaster32_bench.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/new/p2l_decoder_wb32_bench.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/ddr3-core/ddr3_ctrl_wb.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/imports/ddr3-core/ddr3_ctrl_wrapper_pkg.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/new/ddr3_ctrl_wb_bench.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/new/debugregisters.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/new/qword_swap_512.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/new/byte_swap_64.vhd
  /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/sources_1/new/packet_checker.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/constrs_1/imports/new/project_2.xdc
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/constrs_1/imports/new/project_2.xdc]

read_xdc /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/constrs_1/imports/Documents/ddr3.xdc
set_property used_in_implementation false [get_files /home/asautaux/yarr/project_pcie_6/project_pcie_6.srcs/constrs_1/imports/Documents/ddr3.xdc]


synth_design -top top_level -part xc7k160tfbg676-2


write_checkpoint -force -noxdef top_level.dcp

catch { report_utilization -file top_level_utilization_synth.rpt -pb top_level_utilization_synth.pb }
