/************************************
*	FILE:					tb_Counter_4bit.v 
*	AUTHOR:				Mohan Francis, Josh Ratificar
*	Class:				Gr.3 CpE 3101L Introduction to HDL 
*	Group/Schedule		Friday, 7:30 AM to 10:30 AM 
*	Description: 		Testbench for Counter_4bit.v file 
************************************/
`timescale 1 ns / 1 ps
module tb_Counter_4bit();
    reg Clk, nReset, Load, Count_en, Up;
    reg [3:0] Count_in;
    wire [3:0] Count_out;

    Counter_4bit UUT(
        .Clk(Clk),
        .nReset(nReset),
        .Load(Load),
        .Count_en(Count_en),
        .Up(Up),
        .Count_in(Count_in),
        .Count_out(Count_out)
    );

    // Clock generation
    always #5 Clk = ~Clk;

    // Initial block for stimulus generation
    initial begin
        $display("Test Bench | Counter_4bit...");
		$display("Initialize inputs...");
        Clk = 0; nReset = 1; Load = 0; Count_en = 0; Up = 0; Count_in = 4'b0000; #10 

        

        $display("Loading Counter with 15d");
        Load = 1; #10 
		Load = 0; #10     
        Count_in = 4'b1111; #10; // 15 

        $display("Enabling Counting");
        Count_en = 1; #10  
		  
		  $display("Countdown:");
        // Counting down
        #10 Up = 0; Load = 0; Count_en = 1;  // 14
        Count_en = 1; #10; // 13
        Count_en = 1; #10; // 12
        Count_en = 1; #10; // 11
        Count_en = 1; #10; // 10
        Count_en = 1; #10; // 09
        Count_en = 1; #10; // 08
        Count_en = 1; #10; // 07
        Count_en = 1; #10; // 06
        Count_en = 1; #10; // 05
        Count_en = 1; #10; // 04
        Count_en = 1; #10; // 03
        Count_en = 1; #10; // 02
        Count_en = 1; #10; // 01
        Count_en = 1; #10; // 00

        // Counting up
        Up = 1; Count_en = 1; #10;  // 01
        Count_en = 1; #10; // 02
        Count_en = 1; #10; // 03
        Count_en = 1; #10; // 04
        Count_en = 1; #10; // 05
        Count_en = 1; #10; // 06
        Count_en = 1; #10; // 07
		  
		$display("Resetting");
        nReset = 0; #10;  
        nReset = 1; #10; 

        $stop;
    end

    initial begin
        $display("Test Bench | Counter_4bit...");
        $monitor("Time = %2d ns | Clk = %b | nReset = %b | Load = %b | Count_en = %b | Up = %b | Count_in = %b | Count_out = %d", $time, Clk, nReset, Load, Count_en, Up, Count_in, Count_out);
    end
endmodule
