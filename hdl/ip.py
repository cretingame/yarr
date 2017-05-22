import os
import subprocess

project_path = os.getcwd()
ip_folder = "ip_cores"
ip_list = os.walk(ip_folder)

file_list = os.listdir(project_path)

# TDO create the file if doesn't exist
script_file = open('script.tcl', 'r+')


for dirs,paths,files in ip_list:
	for ip_file in files:
		if(ip_file.endswith(".xci") == False and ip_file.endswith(".prj") == False):
			file_path = os.path.join(project_path + "/" + dirs, ip_file)
			subprocess.call(["rm", file_path])
			

script_file.write(
"######################################################\n" +
"# Generated file to add the Vivado IP into the project\n" +
"######################################################\n" +
"\n\n" + 
"#Run ip_add.py to generate this file\n\n")


for file in file_list:
	if (file.endswith(".xpr")):
		script_file.write("open_project " + os.path.join(project_path + "/", file) + "\n")
for file in file_list:
	if (file.endswith(".xdc")):
		script_file.write( "add_files " + os.path.join(project_path + "/", file)+ "\n")

ip_list = os.walk(ip_folder)

for dirs,paths,files in ip_list:
	for ip_file in files:
		if(ip_file.endswith(".xci")):
			file_path = os.path.join(project_path + "/" + dirs, ip_file)
			cmd1 = "add_files " + file_path + "\n"
			cmd2 = "generate_target synthesis [get_files " + file_path +  "]\n"
			cmd3 = "create_ip_run [get_files -of_objects [get_fileset sources_1] " + file_path + "]\n"
			cmd4 = "update_compile_order -fileset sources_1\n"
			cmd5 = "launch_run -jobs 4 " + os.path.splitext(ip_file)[0] + "_synth_1\n"
			cmd6 = "export_ip_user_files -of_objects [get_files " + file_path+ "] -no_script -force\n"
			script_file.write(cmd1 + cmd2 + cmd3 + cmd4 + cmd5 + cmd6 + "\n")
