/************************************
*	FILE:					tb_Decoder2x4.v
*	AUTHOR:				Josh Ratificar
*	Class:				Gr.3 CpE 3101L Introduction to HDL
*	Group/Schedule		Friday, 7:30 AM to 10:30 AM
*	Description: 		Decoder2x4 Test Bench
************************************/
`timescale 1 ns / 1 ps
module tb_Decoder2x4();
	reg  [1:0] A;
	reg	E;
	wire	[3:0] D;	
	
	Decoder2x4 UUT(A[1:0], E, D[3:0]);
	initial begin
		$display("2to4 Decoder Simulation");
		E = 1'b0;	A = 2'b00;	#10
		E = 1'b0;	A = 2'b01;	#10
		E = 1'b0;	A = 2'b10;	#10
		E = 1'b0;	A = 2'b11;	#10
		
		E = 1'b1;	A = 2'b00;	#10
		E = 1'b1;	A = 2'b01;	#10
		E = 1'b1;	A = 2'b10;	#10
		E = 1'b1;	A = 2'b11;	#10
		$stop;
	end
	initial begin
		$monitor("Time = %d ns \t Enable = %1b \t A = %2b \t D = %b", $time, E, A, D);
	end
endmodule
