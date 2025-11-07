onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib RAM_IP_opt

do {wave.do}

view wave
view structure
view signals

do {RAM_IP.udo}

run -all

quit -force
