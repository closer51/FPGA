onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+RAM_8x1500_TrueDual -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.RAM_8x1500_TrueDual xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {RAM_8x1500_TrueDual.udo}

run -all

endsim

quit -force
