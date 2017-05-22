######################################################
# Generated file to add the Vivado IP into the project
######################################################


#Run ip_add.py to generate this file

open_project /home/asautaux/yarr/hdl/yarr.xpr
add_files /home/asautaux/yarr/hdl/top.xdc
add_files /home/asautaux/yarr/hdl/ip_cores/fifo_256x16/fifo_256x16.xci
generate_target synthesis [get_files /home/asautaux/yarr/hdl/ip_cores/fifo_256x16/fifo_256x16.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] /home/asautaux/yarr/hdl/ip_cores/fifo_256x16/fifo_256x16.xci]
update_compile_order -fileset sources_1
launch_run -jobs 4 fifo_256x16_synth_1
export_ip_user_files -of_objects [get_files /home/asautaux/yarr/hdl/ip_cores/fifo_256x16/fifo_256x16.xci] -no_script -force

add_files /home/asautaux/yarr/hdl/ip_cores/fifo_27x16/fifo_27x16.xci
generate_target synthesis [get_files /home/asautaux/yarr/hdl/ip_cores/fifo_27x16/fifo_27x16.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] /home/asautaux/yarr/hdl/ip_cores/fifo_27x16/fifo_27x16.xci]
update_compile_order -fileset sources_1
launch_run -jobs 4 fifo_27x16_synth_1
export_ip_user_files -of_objects [get_files /home/asautaux/yarr/hdl/ip_cores/fifo_27x16/fifo_27x16.xci] -no_script -force

add_files /home/asautaux/yarr/hdl/ip_cores/fifo_315x16/fifo_315x16.xci
generate_target synthesis [get_files /home/asautaux/yarr/hdl/ip_cores/fifo_315x16/fifo_315x16.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] /home/asautaux/yarr/hdl/ip_cores/fifo_315x16/fifo_315x16.xci]
update_compile_order -fileset sources_1
launch_run -jobs 4 fifo_315x16_synth_1
export_ip_user_files -of_objects [get_files /home/asautaux/yarr/hdl/ip_cores/fifo_315x16/fifo_315x16.xci] -no_script -force

add_files /home/asautaux/yarr/hdl/ip_cores/fifo_32x512/fifo_32x512.xci
generate_target synthesis [get_files /home/asautaux/yarr/hdl/ip_cores/fifo_32x512/fifo_32x512.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] /home/asautaux/yarr/hdl/ip_cores/fifo_32x512/fifo_32x512.xci]
update_compile_order -fileset sources_1
launch_run -jobs 4 fifo_32x512_synth_1
export_ip_user_files -of_objects [get_files /home/asautaux/yarr/hdl/ip_cores/fifo_32x512/fifo_32x512.xci] -no_script -force

add_files /home/asautaux/yarr/hdl/ip_cores/fifo_4x16/fifo_4x16.xci
generate_target synthesis [get_files /home/asautaux/yarr/hdl/ip_cores/fifo_4x16/fifo_4x16.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] /home/asautaux/yarr/hdl/ip_cores/fifo_4x16/fifo_4x16.xci]
update_compile_order -fileset sources_1
launch_run -jobs 4 fifo_4x16_synth_1
export_ip_user_files -of_objects [get_files /home/asautaux/yarr/hdl/ip_cores/fifo_4x16/fifo_4x16.xci] -no_script -force

add_files /home/asautaux/yarr/hdl/ip_cores/fifo_64x512/fifo_64x512.xci
generate_target synthesis [get_files /home/asautaux/yarr/hdl/ip_cores/fifo_64x512/fifo_64x512.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] /home/asautaux/yarr/hdl/ip_cores/fifo_64x512/fifo_64x512.xci]
update_compile_order -fileset sources_1
launch_run -jobs 4 fifo_64x512_synth_1
export_ip_user_files -of_objects [get_files /home/asautaux/yarr/hdl/ip_cores/fifo_64x512/fifo_64x512.xci] -no_script -force

add_files /home/asautaux/yarr/hdl/ip_cores/fifo_96x512_1/fifo_96x512.xci
generate_target synthesis [get_files /home/asautaux/yarr/hdl/ip_cores/fifo_96x512_1/fifo_96x512.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] /home/asautaux/yarr/hdl/ip_cores/fifo_96x512_1/fifo_96x512.xci]
update_compile_order -fileset sources_1
launch_run -jobs 4 fifo_96x512_synth_1
export_ip_user_files -of_objects [get_files /home/asautaux/yarr/hdl/ip_cores/fifo_96x512_1/fifo_96x512.xci] -no_script -force

add_files /home/asautaux/yarr/hdl/ip_cores/ila_axis/ila_axis.xci
generate_target synthesis [get_files /home/asautaux/yarr/hdl/ip_cores/ila_axis/ila_axis.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] /home/asautaux/yarr/hdl/ip_cores/ila_axis/ila_axis.xci]
update_compile_order -fileset sources_1
launch_run -jobs 4 ila_axis_synth_1
export_ip_user_files -of_objects [get_files /home/asautaux/yarr/hdl/ip_cores/ila_axis/ila_axis.xci] -no_script -force

add_files /home/asautaux/yarr/hdl/ip_cores/ila_ddr/ila_ddr.xci
generate_target synthesis [get_files /home/asautaux/yarr/hdl/ip_cores/ila_ddr/ila_ddr.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] /home/asautaux/yarr/hdl/ip_cores/ila_ddr/ila_ddr.xci]
update_compile_order -fileset sources_1
launch_run -jobs 4 ila_ddr_synth_1
export_ip_user_files -of_objects [get_files /home/asautaux/yarr/hdl/ip_cores/ila_ddr/ila_ddr.xci] -no_script -force

add_files /home/asautaux/yarr/hdl/ip_cores/ila_dma_ctrl_reg/ila_dma_ctrl_reg.xci
generate_target synthesis [get_files /home/asautaux/yarr/hdl/ip_cores/ila_dma_ctrl_reg/ila_dma_ctrl_reg.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] /home/asautaux/yarr/hdl/ip_cores/ila_dma_ctrl_reg/ila_dma_ctrl_reg.xci]
update_compile_order -fileset sources_1
launch_run -jobs 4 ila_dma_ctrl_reg_synth_1
export_ip_user_files -of_objects [get_files /home/asautaux/yarr/hdl/ip_cores/ila_dma_ctrl_reg/ila_dma_ctrl_reg.xci] -no_script -force

add_files /home/asautaux/yarr/hdl/ip_cores/ila_l2p_dma/ila_l2p_dma.xci
generate_target synthesis [get_files /home/asautaux/yarr/hdl/ip_cores/ila_l2p_dma/ila_l2p_dma.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] /home/asautaux/yarr/hdl/ip_cores/ila_l2p_dma/ila_l2p_dma.xci]
update_compile_order -fileset sources_1
launch_run -jobs 4 ila_l2p_dma_synth_1
export_ip_user_files -of_objects [get_files /home/asautaux/yarr/hdl/ip_cores/ila_l2p_dma/ila_l2p_dma.xci] -no_script -force

add_files /home/asautaux/yarr/hdl/ip_cores/ila_pd_pdm/ila_pd_pdm.xci
generate_target synthesis [get_files /home/asautaux/yarr/hdl/ip_cores/ila_pd_pdm/ila_pd_pdm.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] /home/asautaux/yarr/hdl/ip_cores/ila_pd_pdm/ila_pd_pdm.xci]
update_compile_order -fileset sources_1
launch_run -jobs 4 ila_pd_pdm_synth_1
export_ip_user_files -of_objects [get_files /home/asautaux/yarr/hdl/ip_cores/ila_pd_pdm/ila_pd_pdm.xci] -no_script -force

add_files /home/asautaux/yarr/hdl/ip_cores/ila_wsh_pipe/ila_wsh_pipe.xci
generate_target synthesis [get_files /home/asautaux/yarr/hdl/ip_cores/ila_wsh_pipe/ila_wsh_pipe.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] /home/asautaux/yarr/hdl/ip_cores/ila_wsh_pipe/ila_wsh_pipe.xci]
update_compile_order -fileset sources_1
launch_run -jobs 4 ila_wsh_pipe_synth_1
export_ip_user_files -of_objects [get_files /home/asautaux/yarr/hdl/ip_cores/ila_wsh_pipe/ila_wsh_pipe.xci] -no_script -force

add_files /home/asautaux/yarr/hdl/ip_cores/l2p_fifo64/l2p_fifo64.xci
generate_target synthesis [get_files /home/asautaux/yarr/hdl/ip_cores/l2p_fifo64/l2p_fifo64.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] /home/asautaux/yarr/hdl/ip_cores/l2p_fifo64/l2p_fifo64.xci]
update_compile_order -fileset sources_1
launch_run -jobs 4 l2p_fifo64_synth_1
export_ip_user_files -of_objects [get_files /home/asautaux/yarr/hdl/ip_cores/l2p_fifo64/l2p_fifo64.xci] -no_script -force

add_files /home/asautaux/yarr/hdl/ip_cores/mig_7series_0/mig_7series_0.xci
generate_target synthesis [get_files /home/asautaux/yarr/hdl/ip_cores/mig_7series_0/mig_7series_0.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] /home/asautaux/yarr/hdl/ip_cores/mig_7series_0/mig_7series_0.xci]
update_compile_order -fileset sources_1
launch_run -jobs 4 mig_7series_0_synth_1
export_ip_user_files -of_objects [get_files /home/asautaux/yarr/hdl/ip_cores/mig_7series_0/mig_7series_0.xci] -no_script -force

add_files /home/asautaux/yarr/hdl/ip_cores/pcie_7x_0/pcie_7x_0.xci
generate_target synthesis [get_files /home/asautaux/yarr/hdl/ip_cores/pcie_7x_0/pcie_7x_0.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] /home/asautaux/yarr/hdl/ip_cores/pcie_7x_0/pcie_7x_0.xci]
update_compile_order -fileset sources_1
launch_run -jobs 4 pcie_7x_0_synth_1
export_ip_user_files -of_objects [get_files /home/asautaux/yarr/hdl/ip_cores/pcie_7x_0/pcie_7x_0.xci] -no_script -force

