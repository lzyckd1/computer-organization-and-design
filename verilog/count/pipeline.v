`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:23:20 10/16/2018 
// Design Name: 
// Module Name:    pipeline 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pipeline(
    input [31:0] A1,
    input [31:0] A2,
    input [31:0] B1,
    input [31:0] B2,
    input [1:0] Clk,
    output reg [31:0] C = 0
    );

	reg  [31:0] r1 [2:1];
	reg  [31:0] r2;
	
	integer i;
			
	initial
	begin
			for (i = 1;i <= 2;i = i + 1)r1[i] = 0;
			r2 = 0;
	end
	
	always @(posedge Clk)begin
			r1[1] <=  A1 * B1;
			r1[2] <=  A2 * B2;
			
			r2 <= r1[1] + r1[2];
			C <= r2;
	end
endmodule
