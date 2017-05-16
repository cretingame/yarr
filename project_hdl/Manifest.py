files = [
"ram_ctrl.vhd",
"ram_interface.vhd",
"simple_counter.vhd",
"test_bench.vhd",
"top_level.vhd",
"ila_0.xci",
"project_2.xdc"
]

target = "xilinx" 
action = "synthesis" 

syn_device = "xc7k160" 
syn_grade = "-2" 
syn_package = "tfbg676" 
syn_top = "top_level" 
syn_project = "project_hdl"
syn_tool = "vivado"
