/************************************
*	FILE:					tb_8_bit4x1Multiplexer.v
*	AUTHOR:				Josh Ratificar
*	Class:				Gr.3 CpE 3101L Introduction to HDL
*	Group/Schedule		Friday, 7:30 AM to 10:30 AM
*	Description: 		tb_8_bit4x1Multiplexer.v test bench for n_bit4x1Multiplexer
************************************/
module tb_8_bit4x1Multiplexer();
	reg  [7:0] A, B, C, D;
	reg  [1:0] S;
	wire [7:0] Y;
	
	n_bit4x1Multiplexer #(.n(8)) UUT(
		.A(A),
		.B(B),
		.C(C),
		.D(D),
		.S(S),
		.Y(Y)
	);
	initial begin
		$display("Test Bench | tb_8_bit4x1Multiplexer...");
		$display("Test case 1: Select A");
		A = 8'b10101010; B = 8'b01100110; C = 8'b11011101; D = 8'b00010001; S = 2'b00; #10;		
      $display("Test case 2: Select B");
      A = 8'b10101010; B = 8'b01100110; C = 8'b11011101; D = 8'b00010001; S = 2'b01; #10;
      $display("Test case 3: Select C");
      A = 8'b10101010; B = 8'b01100110; C = 8'b11011101; D = 8'b00010001; S = 2'b10; #10;
      $display("Test case 4: Select D");
      A = 8'b10101010; B = 8'b01100110; C = 8'b11011101; D = 8'b00010001; S = 2'b11; #10;	
		$stop;
	end
	initial begin
		$monitor("Time = %2d ns\t |A = %d [%b]|\t |B = %d [%b]|\t |C = %d [%b]|\t |D = %d [%b]|\t |S = %d [%b]|\t |Y = %d [%b]|", $time, A, A, B, B, C, C, D, D, S, S, Y, Y);
	end
endmodule
