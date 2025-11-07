onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ASYNC_FIFO_1X16_opt

do {wave.do}

view wave
view structure
view signals

do {ASYNC_FIFO_1X16.udo}

run -all

quit -force
