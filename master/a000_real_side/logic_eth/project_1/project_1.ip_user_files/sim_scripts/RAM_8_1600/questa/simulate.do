onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib RAM_8_1600_opt

do {wave.do}

view wave
view structure
view signals

do {RAM_8_1600.udo}

run -all

quit -force
