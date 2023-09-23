transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+X:/HDL/Lab_1/PARTCFR {X:/HDL/Lab_1/PARTCFR/HalfAdder.v}

vlog -vlog01compat -work work +incdir+X:/HDL/Lab_1/PARTCFR {X:/HDL/Lab_1/PARTCFR/tb_HalfAdder.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb_HalfAdder

add wave *
view structure
view signals
run -all
