onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FIFO_16X16_2CLK_opt

do {wave.do}

view wave
view structure
view signals

do {FIFO_16X16_2CLK.udo}

run -all

quit -force
