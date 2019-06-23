`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:28:38 12/04/2018
// Design Name:   PC_change
// Module Name:   F:/verilog/P4_CPU_Single/b.v
// Project Name:  P4_CPU_Single
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC_change
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module b;

	// Inputs
	reg clk;
	reg clr;
	reg [31:0] o1;
	reg [31:0] o2;
	reg [31:0] imm_s;
	reg j;
	reg jal;
	reg jr;
	reg branch;
	reg [31:0] ins;

	// Outputs
	wire [31:0] pc_now;

	// Instantiate the Unit Under Test (UUT)
	PC_change uut (
		.clk(clk), 
		.clr(clr), 
		.o1(o1), 
		.o2(o2), 
		.imm_s(imm_s), 
		.j(j), 
		.jal(jal), 
		.jr(jr), 
		.branch(branch), 
		.ins(ins), 
		.pc_now(pc_now)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 0;
		o1 = 0;
		o2 = 0;
		imm_s = 0;
		j = 0;
		jal = 0;
		jr = 0;
		branch = 0;
		ins = 0;

		// Wait 100 ns for global reset to finish
		#100;
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
		clr=1;
		#5;
		clk=0;
		clr=0;
		// Add stimulus here

	end
      
endmodule

