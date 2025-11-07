onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FIFO_ASYNC_11_64_opt

do {wave.do}

view wave
view structure
view signals

do {FIFO_ASYNC_11_64.udo}

run -all

quit -force
