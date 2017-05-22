set ip_name ila
set ip_version 6.1
set module_name ila_0
set project_path /home/asautaux/yarr/project_hdl/hdl
set ip_folder ip_cores 
set project_name project_hdl

open_project project_hdl.xpr
add_files project_2.xdc
add_files $project_path/$ip_folder/$module_name/$module_name.xci
#create_ip -name $ip_name -vendor xilinx.com -library ip -version $ip_version -module_name $module_name -dir $project_path/$ip_folder
#generate_target {instantiation_template} [get_files $project_path/$ip_folder/$module_name/$module_name.xci]
export_ip_user_files -of_objects [get_files $project_path/$ip_folder/$module_name/$module_name.xci] -no_script -force
#create_ip_run [get_files -of_objects [get_fileset sources_1] $project_path/$ip_folder/$module_name/$module_name.xci]
#launch_run -jobs 4 {$module_name}_synth_1
