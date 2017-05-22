onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ila_app_opt

do {wave.do}

view wave
view structure
view signals

do {ila_app.udo}

run -all

quit -force
