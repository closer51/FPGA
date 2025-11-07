onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FIFO_32to16_512_opt

do {wave.do}

view wave
view structure
view signals

do {FIFO_32to16_512.udo}

run -all

quit -force
