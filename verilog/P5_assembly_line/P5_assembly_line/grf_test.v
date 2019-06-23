`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:13:35 12/18/2018
// Design Name:   GRF
// Module Name:   F:/verilog/P5_assembly_line/grf_test.v
// Project Name:  P5_assembly_line
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GRF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module grf_test;

	// Inputs
	reg clk;
	reg clr;
	reg we;
	reg [31:0] wd;
	reg [4:0] a1;
	reg [4:0] a2;
	reg [4:0] a3;

	// Outputs
	wire [31:0] rd1;
	wire [31:0] rd2;

	// Instantiate the Unit Under Test (UUT)
	GRF uut (
		.clk(clk), 
		.clr(clr), 
		.we(we), 
		.wd(wd), 
		.a1(a1), 
		.a2(a2), 
		.a3(a3), 
		.rd1(rd1), 
		.rd2(rd2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 0;
		we = 0;
		wd = 0;
		a1 = 0;
		a2 = 0;
		a3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        wd=1;
		  we=1;
		  a1=2;
		  a2=3;
		  a3=0;
		  wd=1;
		 #5;
		 wd=1;
		  we=1;
		  a1=2;
		  a2=3;
		  a3=3;
		  wd=1;
		// Add stimulus here

	end
      
endmodule

