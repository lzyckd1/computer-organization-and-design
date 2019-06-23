`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:43:43 12/25/2018 
// Design Name: 
// Module Name:    PC 
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
module PC(
    output [31:0] PC_now,
    input clk,
    input clr,
    input [31:0] in
    );

reg [31:0] pc;
initial
begin
	pc=0;
end

always@(posedge clk)
begin
	if(clr==1)pc=0;
	else
	begin
		pc<=in;
	end
end

assign PC_now=pc;

endmodule
