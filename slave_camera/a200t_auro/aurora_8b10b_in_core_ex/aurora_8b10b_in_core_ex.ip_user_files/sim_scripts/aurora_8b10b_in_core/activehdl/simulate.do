onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+aurora_8b10b_in_core -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.aurora_8b10b_in_core xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {aurora_8b10b_in_core.udo}

run -all

endsim

quit -force
