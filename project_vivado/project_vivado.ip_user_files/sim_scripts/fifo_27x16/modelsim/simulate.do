onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -L fifo_generator_v13_1_1 -lib xil_defaultlib xil_defaultlib.fifo_27x16 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {fifo_27x16.udo}

run -all

quit -force
