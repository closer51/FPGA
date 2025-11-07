onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fifo_delay_left_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_delay_left.udo}

run -all

quit -force
