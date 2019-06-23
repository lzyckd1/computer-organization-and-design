`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:52:28 12/25/2018 
// Design Name: 
// Module Name:    ADD4 
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
module ADD4(
    input [31:0] PC,
    output [31:0] next
    );

reg [31:0] tem;
initial
begin
	tem=16'h3000;
end
always@(*)
begin
	tem=PC+4;
end

assign next=tem;
endmodule
