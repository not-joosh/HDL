/*********************************************************
*	File: 				tb_FullAdder.v
*	Author: 				Josh Ratificar
*	Class:				CpE 3101L Introduction to HDL
*	Group/Schedule:	Friday, 7:30 AM to 10:30 AM
*	Description:		Testbench file for FullAdder.v
*********************************************************/

`timescale 1 ns / 1 ps
module tb_FullAdder();
	// all inputs to UUT are declared as reg type
	reg A, B, C_in;
	// all outputs from UUT are declared as 	wire type
	wire S, C_out;
	
	// instantiate UUT with implicit oprt mapping
	FullAdder UUT (A, B, C_in, S, C_out);
	
	// generate stimuli
	initial
	begin
		A = 0;	B = 0;	C_in = 0;	#10
		A = 0;	B = 0;	C_in = 1;	#10
		A = 0;	B = 1;	C_in = 0;	#10
		A = 0;	B = 1;	C_in = 1;	#10
		A = 1;	B = 0;	C_in = 0;	#10
		A = 1;	B = 0;	C_in = 1;	#10
		A = 1;	B = 1;	C_in = 0;	#10
		A = 1;	B = 1;	C_in = 1;	#30
		$stop;
	end
endmodule
