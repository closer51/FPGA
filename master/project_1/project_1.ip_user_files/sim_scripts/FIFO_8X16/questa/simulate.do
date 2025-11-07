onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FIFO_8X16_opt

do {wave.do}

view wave
view structure
view signals

do {FIFO_8X16.udo}

run -all

quit -force
