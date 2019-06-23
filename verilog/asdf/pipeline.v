`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:43:35 10/16/2018 
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
    input clk,
    output reg [31:0] C
    );
	 reg [31:0] r1 [2:1];
	 
	 
	integer i;
			
	initial begin
			r1[1] = 0;
			r1[2] = 0;
			C = 0;
	end
	
	always @(posedge clk)begin
			r1[1] <=  A1 * B1;
			r1[2] <=  A2 * B2;
			
			C <= r1[1] + r1[2];
	end
endmodule
