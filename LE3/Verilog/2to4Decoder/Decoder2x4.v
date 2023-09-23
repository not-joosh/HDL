/************************************
*	FILE:					Decoder2x4.v
*	AUTHOR:				Josh Ratificar
*	Class:				Gr.3 CpE 3101L Introduction to HDL
*	Group/Schedule		Friday, 7:30 AM to 10:30 AM
*	Description: 		Decoder2x4.v module
************************************/

module Decoder2x4( 				// A[0] = A; A[1] = B;
	input 	[1:0] A, 
	input 	E,
	output 	[3:0] D
);
	wire 		[1:0] w; 			// Inverted Bus 
	
	not		N1(w[0], A[0]); 	// Not A	<- w[0]
	not		N2(w[1], A[1]); 	// NOT B	<- w[1]
	and		A0(D[0], w[0], w[1], E); 
	and		A1(D[1], w[1], A[0], E); 
	and		A2(D[2], A[1], w[0], E); 
	and		A3(D[3], A[0], A[1], E); 
endmodule
