onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+vio_twm_ddrx -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -O5 xil_defaultlib.vio_twm_ddrx xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {vio_twm_ddrx.udo}

run -all

endsim

quit -force
