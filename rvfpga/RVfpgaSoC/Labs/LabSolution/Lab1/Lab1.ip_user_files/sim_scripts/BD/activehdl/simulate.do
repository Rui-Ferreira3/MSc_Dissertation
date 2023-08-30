onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+BD  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.BD xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {BD.udo}

run 1000ns

endsim

quit -force
