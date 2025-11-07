onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib RAM_MAC_opt

do {wave.do}

view wave
view structure
view signals

do {RAM_MAC.udo}

run -all

quit -force
