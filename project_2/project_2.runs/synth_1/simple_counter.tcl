# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7k160tfbg676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/asautaux/project_2/project_2.cache/wt [current_project]
set_property parent.project_path /home/asautaux/project_2/project_2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_vhdl -library xil_defaultlib /home/asautaux/project_2/project_2.srcs/sources_1/imports/new/simple_counter.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/asautaux/project_2/project_2.srcs/constrs_1/new/project_2.xdc
set_property used_in_implementation false [get_files /home/asautaux/project_2/project_2.srcs/constrs_1/new/project_2.xdc]


synth_design -top simple_counter -part xc7k160tfbg676-2


write_checkpoint -force -noxdef simple_counter.dcp

catch { report_utilization -file simple_counter_utilization_synth.rpt -pb simple_counter_utilization_synth.pb }
