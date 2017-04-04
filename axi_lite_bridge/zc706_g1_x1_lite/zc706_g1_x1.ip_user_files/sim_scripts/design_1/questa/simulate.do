onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "/proj/xbuilds/released/2015.4/2015.4_1118_2/installs/lin64/Vivado/2015.4/lib/lnx64.o/libxil_vsim.so" -lib xil_defaultlib design_1_opt

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run -all

quit -force
