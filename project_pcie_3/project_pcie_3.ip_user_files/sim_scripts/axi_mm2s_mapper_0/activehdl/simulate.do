onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+axi_mm2s_mapper_0 -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_9 -L axis_switch_v1_1_9 -L axis_dwidth_converter_v1_1_8 -L axi_infrastructure_v1_1_0 -L axi_mm2s_mapper_v1_1_8 -O5 xil_defaultlib.axi_mm2s_mapper_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {axi_mm2s_mapper_0.udo}

run -all

endsim

quit -force
