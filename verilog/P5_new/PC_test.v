`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:39:23 12/31/2018
// Design Name:   PC
// Module Name:   F:/verilog/P5_new/PC_test.v
// Project Name:  P5_new
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_test;

	// Inputs
	reg clk;
	reg clr;
	reg [31:0] in;

	// Outputs
	wire [31:0] PC_now;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.PC_now(PC_now), 
		.clk(clk), 
		.clr(clr), 
		.in(in)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 0;
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

