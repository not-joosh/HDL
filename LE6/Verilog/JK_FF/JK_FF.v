/************************************
*	FILE:					JK_FF.v 
*	AUTHOR:				Mohan Francis, Josh Ratificar
*	Class:				Gr.3 CpE 3101L Introduction to HDL 
*	Group/Schedule		Friday, 7:30 AM to 10:30 AM 
*	Description: 		JK_FF.v file 
************************************/
module JK_FF (
	input wire J,K,Reset, Clk,
	output reg Q, Q_bar
);
always @(negedge Clk, posedge Reset)
	begin
		if(Reset)
		begin
			Q <= 1'b0;
			Q_bar <= 1'b1;
		end
		case({J,K})
			2'b00: 							//NO CHANGE
				begin 
					Q <= Q;
					Q_bar <= Q_bar;
				end
			2'b01:							//RESET
				begin
					Q <= 1'b0;
					Q_bar <= 1'b1;
				end
			2'b10:                     //SET
				begin
					Q <= 1'b1;
					Q_bar <= 1'b0;
				end
			2'b11:							//TOGGLE
				begin
					Q <= ~Q;
					Q_bar <= ~Q_bar;
				end
		endcase
	end
endmodule