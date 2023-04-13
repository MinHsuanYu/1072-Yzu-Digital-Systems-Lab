transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/1061534 {D:/1061534/S1061534_lab5.v}

vlog -vlog01compat -work work +incdir+D:/1061534 {D:/1061534/Verilog2.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc"  S1061534_lab5_test

add wave *
view structure
view signals
run -all
