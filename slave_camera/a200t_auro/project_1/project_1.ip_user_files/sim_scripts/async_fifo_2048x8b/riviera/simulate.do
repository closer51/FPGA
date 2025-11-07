onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+async_fifo_2048x8b -L xil_defaultlib -L xpm -L fifo_generator_v13_2_4 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.async_fifo_2048x8b xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {async_fifo_2048x8b.udo}

run -all

endsim

quit -force
