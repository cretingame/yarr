onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -lib xil_defaultlib xil_defaultlib.vio_twm_ddrx xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {vio_twm_ddrx.udo}

run -all

quit -force
