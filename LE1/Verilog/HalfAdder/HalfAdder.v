
/// Verilog HDL code for Half Adder
/// -------------------------------
/// 
/// Name:   	Josh Ratificar
/// Schedule: 	Group 3 CpE 3101L - Introduction to HDL | 7:30 AM to 10:30 AM, Thursday
///
///

module HalfAdder (x, y, C, S);
	input	x, y;
	output	C, S;
	xor	X1 (S, x, y);
	and	A1 (C, x, y);
endmodule
