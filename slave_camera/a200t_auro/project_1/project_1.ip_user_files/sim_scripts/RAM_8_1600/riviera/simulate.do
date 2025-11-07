onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+RAM_8_1600 -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.RAM_8_1600 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {RAM_8_1600.udo}

run -all

endsim

quit -force
