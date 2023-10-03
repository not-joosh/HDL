/************************************
*	FILE:					n_bit4x1Multiplexer.v
*	AUTHOR:				Josh Ratificar
*	Class:				Gr.3 CpE 3101L Introduction to HDL
*	Group/Schedule		Friday, 7:30 AM to 10:30 AM
*	Description: 		n_bit4x1Multiplexer.v module
************************************/
module n_bit4x1Multiplexer
#(parameter n = 4) 
(
	input [(n-1):0] A, B, C, D,
	input [1:0] S,
	output [(n-1):0] Y
);
	assign Y = (S == 2'b00) ? A : (S == 2'b01) ? B : (S == 2'b10) ? C : (S == 2'b11) ? D : {n{1'b0}};
endmodule

/***
	Truth Tabe:
	Selector		Output
		S				Y
		00				A
		01				B
		10				C
		11				D
***/