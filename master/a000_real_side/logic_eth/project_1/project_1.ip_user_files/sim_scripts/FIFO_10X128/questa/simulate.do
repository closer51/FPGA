onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FIFO_10X128_opt

do {wave.do}

view wave
view structure
view signals

do {FIFO_10X128.udo}

run -all

quit -force
