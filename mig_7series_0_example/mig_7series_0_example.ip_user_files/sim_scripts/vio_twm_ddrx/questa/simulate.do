onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib vio_twm_ddrx_opt

do {wave.do}

view wave
view structure
view signals

do {vio_twm_ddrx.udo}

run -all

quit -force
