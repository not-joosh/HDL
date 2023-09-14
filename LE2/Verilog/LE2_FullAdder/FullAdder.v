/*********************************************************
*	File: 				FullAdder.v
*	Author: 				Josh Ratificar
*	Class:				Gr.3 CpE 3101L Introduction to HDL
*	Group/Schedule:	Friday, 7:30 AM to 10:30 AM
*	Description:		FullAdder.v module.
*********************************************************/

module HalfAdder (x, y, C, S);
	input		x, y;
	output	C, S;
	xor		X1 (S, x, y);
	and		A1 (C, x, y);
endmodule
module FullAdder (A, B, C_in, S, C_out);
	input			A, B, C_in;
	output		C_out, S;
	wire 			w1, w2, w3;
	
	HalfAdder	Ha1(A, B, w1, w2);
	HalfAdder	Ha2(w2, C_in, w3, S);
	or			orGate(C_out, w1, w3);
endmodule
