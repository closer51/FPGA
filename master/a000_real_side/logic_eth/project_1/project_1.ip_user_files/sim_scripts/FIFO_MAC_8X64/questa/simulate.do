onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FIFO_MAC_8X64_opt

do {wave.do}

view wave
view structure
view signals

do {FIFO_MAC_8X64.udo}

run -all

quit -force
