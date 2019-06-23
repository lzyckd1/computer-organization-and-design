`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:22:16 10/26/2018
// Design Name:   gray
// Module Name:   F:/verilog/P1_kexia_2/gray1.v
// Project Name:  P1_kexia_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gray
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gray1;

	// Inputs
	reg Clk;
	reg Reset;
	reg En;

	// Outputs
	wire [2:0] Output;
	wire Overflow;

	// Instantiate the Unit Under Test (UUT)
	gray uut (
		.Clk(Clk), 
		.Reset(Reset), 
		.En(En), 
		.Output(Output), 
		.Overflow(Overflow)
	);
		reg a;

	initial begin
		// Initialize Inputs
		Clk = 0;
		Reset = 0;
		En = 0;
		a=0;
		// Wait 100 ns for global reset to finish
		#100;
		En=1;
      end 
		// Add stimulus here
		
      always #5 Clk=~Clk;
		
endmodule

