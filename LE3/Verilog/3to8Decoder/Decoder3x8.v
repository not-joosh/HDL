/************************************
*	FILE:					Decoder3x8.v
*	AUTHOR:				Josh Ratificar
*	Class:				Gr.3 CpE 3101L Introduction to HDL
*	Group/Schedule		Friday, 7:30 AM to 10:30 AM
*	Description: 		Decoder3x8.v module
************************************/
module Decoder3x8(
	input 		[2:0] A,
	input 		E,
	output 		[7:0] D
);
	wire [3:0] D1, D2; 
   Decoder2x4 Dc2x4_1(
       .A(A[1:0]), 
       .E(E & A[2]), 
       .D(D[7:4])
   );
	
   Decoder2x4 Dc2x4_2(
       .A(A[1:0]), 
       .E(E & ~A[2]), 
       .D(D[3:0])
   );
endmodule










// Trial 1
//module Decoder3x8(
//	input 		[2:0] A,
//	input 		E,
//	output 		[1:0] bufferTests,
//	output 		[7:0] D
//);
//	wire [3:0] D1, D2; // Output from the second 2-to-4 decoder
//	wire [2:0] w;
//	wire trial1, trial2;
//	not trialNot(w[0], A[2]);
//	bufif1 	buffer1(w[1], A[2], E);
//	bufif1 	buffer2(w[2], w[0], E); 
//   Decoder2x4 Dc2x4_1(
//       .A(A[1:0]), 
//       .E(w[1]), 
//       .D(D[7:4])
//   );
//
//   Decoder2x4 Dc2x4_2(
//       .A(A[1:0]), 
//       .E(w[2]), 
//       .D(D[3:0])
//   );
//	assign bufferTests[0] = w[1];
//	assign bufferTests[1] = w[2];
//	
//endmodule