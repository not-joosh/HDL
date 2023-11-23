/************************************
*	FILE:					ALU_n_bit.v 
*	AUTHOR:				Josh Ratificar 
*	Class:				Gr.3 CpE 3101L Introduction to HDL 
*	Group/Schedule		Friday, 7:30 AM to 10:30 AM 
*	Description: 		ALU_n_bit.v file 
************************************/
/*****************************
*
*	Mode 		Operation
*	000 		Addition (A + B) with carry		0
*	001 		Subtract (A – B) with borrow		1
*	010 		Bitwise AND of A and B				2
*	011 		Bitwise OR of A and B				3
*	100 		Bitwise XOR of A and B				4
*	101 		Complement of A						5
*	110 		Increment A								6
*	111 		Decrement A								7
*
*****************************/
module ALU_n_bit 
#(parameter n = 4)
(
	input [(n-1):0] A,
	input [(n-1):0] B,
	input CB_in,
	input [2:0] Mode,
	output reg [(n-1):0]Result,
	output reg CB_out
);
	always @(*)
	begin
			case (Mode)
				3'b000 	: 	begin // 0: Addition (A + B) with carry
									// 3 + 1 = 4 1000
									// 11  01     0     | 1000 > 111 
									Result = A + B + CB_in; 
									CB_out  = (A + B + CB_in) > ((2**n)-1);
								end
				3'b001	:	begin // 1: Subtract (A - B) with borrow
									// A = 4'b1111;    B = 4'b0001;
									// 1111 - 0001
									// edge cases satisfied...
									/*
									*	edge cases:
									*		5 - 9  -> 1 0100B
									*		15 - 4 -> 0 1010B
									*		7 - 12 -> 1 1011B
									*		15 - 12 -> 1 1011B
									*/
									Result = ((A + CB_in) < B)? (B - (A+CB_in)) : ((A+CB_in) - B);
									CB_out = ((A + CB_in) < B)? 1'b1 : 1'b0; 
								end
				3'b010	:	begin // Bitwise AND of A and B
									Result = A & B;
									CB_out = 0;
								end		
				3'b011	:	begin // Bitwise OR of A and B
									Result = A | B;
									CB_out = 0;
								end	
				3'b100	:	begin // Bitwise XOR of A and B
									Result = (A ^ B);
									CB_out = 0;
								end	
				3'b101	:	begin // Complement of A
									Result = ~A;
									CB_out = 0;
								end	
				3'b110	:	begin // Increment A
									Result = A + 1; // 111 + 1 -> 1000
									CB_out = (A == ((2**n) - 1)); // When A = Max Term, CB_out is high
								end	
				default	:	begin // Decrement A
									Result = (A < 1)? (1 - A) : (A - 1);
									CB_out = (A < 1)? 1'b1 : 1'b0;
									// edge cases satisfied...
										//if(CB_out == 1)
										//begin
										//	
										//end
								end	
			endcase
	end
endmodule 