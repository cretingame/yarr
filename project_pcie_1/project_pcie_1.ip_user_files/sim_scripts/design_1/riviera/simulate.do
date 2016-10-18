onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_1 -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -L util_ds_buf_v2_01_a -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run -all

endsim

quit -force
