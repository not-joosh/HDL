/************************************
*	FILE:					FourBitComparator.v
*	AUTHOR:				Josh Ratificar
*	Class:				Gr.3 CpE 3101L Introduction to HDL
*	Group/Schedule		Friday, 7:30 AM to 10:30 AM
*	Description: 		FourBitComparator.v module
************************************/
module FourBitComparator(
	input 	[3:0]A,
	input 	[3:0]B,
	output 	[2:0]R
);
	// A > B @ R2 |R [2] = G (1 if A > B, else 0)
	assign R[2] = (A > B)? 1'b1 : 1'b0;

	// A = B @ R[1] | R[1] = E (1 if A = B, else 0)
	assign R[1] = (A == B)? 1'b1 : 1'b0;
	
	// A < B @ R[1] | R[1] = E (1 if A < B, else 0)
	assign R[0] = (A < B)? 1'b1 : 1'b0;	
endmodule
