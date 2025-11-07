onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib async_fifo_2048x8b_opt

do {wave.do}

view wave
view structure
view signals

do {async_fifo_2048x8b.udo}

run -all

quit -force
