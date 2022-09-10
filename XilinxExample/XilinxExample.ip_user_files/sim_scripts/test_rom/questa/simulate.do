onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib test_rom_opt

do {wave.do}

view wave
view structure
view signals

do {test_rom.udo}

run -all

quit -force
