transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/joshr/OneDrive/Desktop/University\ of\ San\ Carlos/USC\ Year\ 3\ -\ Sem\ 1/HDL/Laboratories/LE6/Verilog/Counter_4bit {C:/Users/joshr/OneDrive/Desktop/University of San Carlos/USC Year 3 - Sem 1/HDL/Laboratories/LE6/Verilog/Counter_4bit/Counter_4bit.v}

vlog -vlog01compat -work work +incdir+C:/Users/joshr/OneDrive/Desktop/University\ of\ San\ Carlos/USC\ Year\ 3\ -\ Sem\ 1/HDL/Laboratories/LE6/Verilog/Counter_4bit {C:/Users/joshr/OneDrive/Desktop/University of San Carlos/USC Year 3 - Sem 1/HDL/Laboratories/LE6/Verilog/Counter_4bit/tb_Counter_4bit.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb_Counter_4bit

add wave *
view structure
view signals
run -all
