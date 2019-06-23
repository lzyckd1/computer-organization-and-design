`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:20:10 12/26/2018
// Design Name:   reg_ID_EX
// Module Name:   F:/verilog/P5_assembly_line/rE_test.v
// Project Name:  P5_assembly_line
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reg_ID_EX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rE_test;

	// Inputs
	reg [31:0] IR;
	reg [31:0] PC;
	reg [31:0] RS;
	reg [31:0] RT;
	reg [31:0] EXT;
	reg lw;
	reg r_t;
	reg grf_we;
	reg [4:0] grf_rs;
	reg [4:0] grf_rt;
	reg [4:0] grf_rd;
	reg clk;
	reg clr;
	reg stop;

	// Outputs
	wire [31:0] IR_E;
	wire [31:0] PC4_E;
	wire [31:0] RS_E;
	wire [31:0] RT_E;
	wire [31:0] EXT_E;
	wire lw_E;
	wire r_t_E;
	wire grf_we_E;
	wire [4:0] grf_rs_E;
	wire [4:0] grf_rt_E;
	wire [4:0] grf_rd_E;

	// Instantiate the Unit Under Test (UUT)
	reg_ID_EX uut (
		.IR_E(IR_E), 
		.PC4_E(PC4_E), 
		.RS_E(RS_E), 
		.RT_E(RT_E), 
		.EXT_E(EXT_E), 
		.lw_E(lw_E), 
		.r_t_E(r_t_E), 
		.grf_we_E(grf_we_E), 
		.grf_rs_E(grf_rs_E), 
		.grf_rt_E(grf_rt_E), 
		.grf_rd_E(grf_rd_E), 
		.IR(IR), 
		.PC(PC), 
		.RS(RS), 
		.RT(RT), 
		.EXT(EXT), 
		.lw(lw), 
		.r_t(r_t), 
		.grf_we(grf_we), 
		.grf_rs(grf_rs), 
		.grf_rt(grf_rt), 
		.grf_rd(grf_rd), 
		.clk(clk), 
		.clr(clr), 
		.stop(stop)
	);

	initial begin
		// Initialize Inputs
		IR = 0;
		PC = 0;
		RS = 0;
		RT = 0;
		EXT = 0;
		lw = 0;
		r_t = 0;
		grf_we = 0;
		grf_rs = 0;
		grf_rt = 0;
		grf_rd = 0;
		clk = 0;
		clr = 0;
		stop = 0;

		// Wait 100 ns for global reset to finish
		#100;
        IR = 0;
		PC = 0;
		RS = 0;
		RT = 0;
		EXT = 0;
		lw = 0;
		r_t = 0;
		grf_we = 1;
		grf_rs = 0;
		grf_rt = 5'b01101;
		grf_rd = 0;
		clk = 1;
		clr = 0;
		stop = 0;
		// Add stimulus here
		#5;
		IR = 0;
		PC = 0;
		RS = 0;
		RT = 0;
		EXT = 0;
		lw = 1;
		r_t = 0;
		grf_we = 0;
		grf_rs = 0;
		grf_rt = 5'b11101;
		grf_rd = 0;
		clk = 1;
		clr = 0;
		stop = 0;
	end
      
endmodule

