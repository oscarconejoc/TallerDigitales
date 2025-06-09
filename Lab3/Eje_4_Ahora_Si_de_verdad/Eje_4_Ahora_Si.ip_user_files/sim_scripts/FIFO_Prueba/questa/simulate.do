onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib FIFO_Prueba_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {FIFO_Prueba.udo}

run 1000ns

quit -force
