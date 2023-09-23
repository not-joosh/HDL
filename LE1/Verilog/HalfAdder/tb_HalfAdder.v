/*********************************************************
*	File: 				tb_HalfAdder.v
*	Author: 				Josh Ratificar
*	Class:				CpE 3101L Introduction to HDL
*	Group/Schedule:	Friday, 7:30 AM to 10:30 AM
*	Description:		Testbench file for HalfAdder.v
*********************************************************/
`timescale 1 ns / 1 ps
module tb_HalfAdder();

	// all inputs to UUT are declared as reg type
	reg	x, y;
	wire	c, s;
	
	// Instantiating the UUT with implicit port mapping
	HalfAdder UUT (x, y, C, S);
	
	// Generate Stimuli
	initial 
	begin
		x = 0; y = 0; #10
		x = 0; y = 1; #10
		x = 1; y = 0; #10
		x = 1; y = 1; #50
		$stop;
	end // System task to end the simulation
endmodule
		