/************************************
*	FILE:					tb_JK_FF.v 
*	AUTHOR:				Mohan Francis, Josh Ratificar
*	Class:				Gr.3 CpE 3101L Introduction to HDL 
*	Group/Schedule		Friday, 7:30 AM to 10:30 AM 
*	Description: 		Test Bench for JK_FF.v file 
************************************/
`timescale 1 ns / 1 ps
module tb_JK_FF();
	reg  J,K,Reset,Clk;
	wire Q,Q_bar;
	
	JK_FF UUT(
		.J(J),
		.K(K),
		.Reset(Reset),
		.Clk(Clk),
		.Q(Q),
		.Q_bar(Q_bar)
	);
	initial 
		Clk = 1'b0;
	always
		#5 Clk = ~Clk;
	initial begin
		Reset = 1'b1; 		#10
		Reset = 1'b0;
	end
	initial begin
		$display("Test Bench | JK FLIP FLOP...");
		J = 1'b0;	K = 1'b0; #5
		J = 1'b0;	K = 1'b1; #5	
		J = 1'b1;	K = 1'b0; #5
		J = 1'b1;	K = 1'b1; #5
		J = 1'b0;	K = 1'b0; #5
		J = 1'b0;	K = 1'b1; #5	
		J = 1'b1;	K = 1'b0; #5
		J = 1'b1;	K = 1'b1; #5
		J = 1'b1;	K = 1'b1; #5
		$stop;
	end
	initial begin
		$monitor("Time = %2d ns | J = %b | K = %b | CLK = %b | RESET = %b | Q = %b | Q_bar = %b", $time, J, K, Clk, Reset, Q, Q_bar);
	end
endmodule 