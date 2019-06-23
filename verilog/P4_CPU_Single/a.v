`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:17:31 12/04/2018
// Design Name:   mips
// Module Name:   F:/verilog/P4_CPU_Single/a.v
// Project Name:  P4_CPU_Single
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module a;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
      clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;
		#5;
		clk=0;
		#5;
		clk=1;



		// Add stimulus here

	end
      
endmodule

