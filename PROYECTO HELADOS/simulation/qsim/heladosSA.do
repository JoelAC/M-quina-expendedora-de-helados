onerror {quit -f}
vlib work
vlog -work work heladosSA.vo
vlog -work work heladosSA.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.bin2bcd9_vlg_vec_tst
vcd file -direction heladosSA.msim.vcd
vcd add -internal bin2bcd9_vlg_vec_tst/*
vcd add -internal bin2bcd9_vlg_vec_tst/i1/*
add wave /*
run -all
