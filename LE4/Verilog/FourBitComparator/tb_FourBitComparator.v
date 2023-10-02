/************************************
*	FILE:					tb_FourBitComparator.v
*	AUTHOR:				Josh Ratificar
*	Class:				Gr.3 CpE 3101L Introduction to HDL
*	Group/Schedule		Friday, 7:30 AM to 10:30 AM
*	Description: 		tb_FourBitComparator.v module
************************************/
`timescale 1 ns/ 1 ps
module tb_FourBitComparator();
	reg	[3:0] A, B;
	wire	[2:0] R;
	FourBitComparator UUT(
		.A(A),
		.B(B),
		.R(R)
	);
	initial begin
		$display("Test Bench | tb_FourBitComparator...");
		// Test cases for A < B
		$display("A < B");
		A = 4'b0100; B = 4'b1010; #10; // A < B
		A = 4'b1100; B = 4'b1111; #10; // A < B
		A = 4'b0010; B = 4'b1101; #10; // A < B
		A = 4'b0011; B = 4'b1101; #10; // A < B
		  
		// Test cases for A = B
		$display("A = B");
		A = 4'b1110; B = 4'b1110; #10; // A = B
		A = 4'b1111; B = 4'b1111; #10; // A = B
		A = 4'b1000; B = 4'b1000; #10; // A = B-
		A = 4'b0000; B = 4'b0000; #10; // A = B
		  
		// Test cases for A > B
		$display("A > B");
		A = 4'b0001; B = 4'b0000; #10; // A > B
		A = 4'b1111; B = 4'b1110; #10; // A > B
		A = 4'b0101; B = 4'b0011; #10; // A > B
		A = 4'b0010; B = 4'b0001; #10; // A > B
		$stop;
	end
	initial begin
		$monitor("Time = %2d ns\t A = %d | [%b]\t B = %d [%b]\t R = %b", $time, A, A, B, B, R);
	end
endmodule
