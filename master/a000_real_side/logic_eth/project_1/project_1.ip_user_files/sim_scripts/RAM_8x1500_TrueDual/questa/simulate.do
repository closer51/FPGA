onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib RAM_8x1500_TrueDual_opt

do {wave.do}

view wave
view structure
view signals

do {RAM_8x1500_TrueDual.udo}

run -all

quit -force
