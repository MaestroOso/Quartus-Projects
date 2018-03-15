onerror {exit -code 1}
vlib work
vlog -work work ArbitrosConEntrada.vo
vlog -work work ArbitrosConEntrada.vwf.vt
vsim -novopt -c -t 1ps -L fiftyfivenm_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.ArbitrosConEntrada_vlg_vec_tst -voptargs="+acc"
vcd file -direction ArbitrosConEntrada.msim.vcd
vcd add -internal ArbitrosConEntrada_vlg_vec_tst/*
vcd add -internal ArbitrosConEntrada_vlg_vec_tst/i1/*
run -all
quit -f
