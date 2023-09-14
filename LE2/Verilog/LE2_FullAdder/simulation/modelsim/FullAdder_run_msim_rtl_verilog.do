transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/joshr/OneDrive/Desktop/University\ of\ San\ Carlos/USC\ Year\ 3\ -\ Sem\ 1/HDL/Laboratories/LE2/Quartus/LE2_FullAdder {C:/Users/joshr/OneDrive/Desktop/University of San Carlos/USC Year 3 - Sem 1/HDL/Laboratories/LE2/Quartus/LE2_FullAdder/FullAdder.v}

vlog -vlog01compat -work work +incdir+C:/Users/joshr/OneDrive/Desktop/University\ of\ San\ Carlos/USC\ Year\ 3\ -\ Sem\ 1/HDL/Laboratories/LE2/Quartus/LE2_FullAdder {C:/Users/joshr/OneDrive/Desktop/University of San Carlos/USC Year 3 - Sem 1/HDL/Laboratories/LE2/Quartus/LE2_FullAdder/tb_FullAdder.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb_FullAdder

add wave *
view structure
view signals
run -all
