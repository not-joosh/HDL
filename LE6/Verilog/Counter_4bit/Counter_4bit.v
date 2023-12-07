/************************************
*	FILE:					Counter_4bit.v 
*	AUTHOR:				Mohan Francis, Josh Ratificar
*	Class:				Gr.3 CpE 3101L Introduction to HDL 
*	Group/Schedule		Friday, 7:30 AM to 10:30 AM 
*	Description: 		Counter_4bit.v file 
************************************/
//Notes:
//nReset   |   Clk   |  Load  |  Count_en  |  Up  |   Counter Operation
//    0    |    X    |    X   |      X     |  X   |    Reset to 0
//    1    |        |    1   |      X     |  X   |    Load inputs (parallel load)
//    1    |        |    0   |      0     |  X   |    No change
//    1    |        |    0   |      1     |  0   |    Count down
//    1    |        |    0   |      1     |  1   |    Count up

module Counter_4bit(
	input Clk, nReset, Load, Count_en, Up,
	input [3:0] Count_in,
	output reg [3:0] Count_out
);
	always @(negedge Clk, negedge nReset)
		begin
			if(nReset == 0) // Checking for Asynchronous Reset
				Count_out <= 4'b0000;
			else if(Load == 1) // Status of Load Pin
				Count_out <= Count_in;
			else if(Count_en == 1) // Counter Enable
				begin
					if(Up == 1) // If up is high, then count up
						Count_out <= Count_out + 1;
					else // If up is low, then we should count down
						Count_out <= Count_out - 1;
				end
		end
endmodule 