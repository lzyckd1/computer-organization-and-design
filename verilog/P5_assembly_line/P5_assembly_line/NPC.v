`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:56:12 12/25/2018 
// Design Name: 
// Module Name:    NPC 
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
module NPC(
    input [31:0] instruction,
    input [31:0] PC_now,
	 input [31:0] rs,
    output [31:0] next
    );
reg [31:0] tem;
initial
begin
	tem=0;
end

always@(*)
begin
	if(instruction[31:26]==0&&instruction[5:0]==6'b001000)tem=rs;
	else tem={PC_now[31:28],instruction[25:0],2'b00};
end

assign next=tem;

endmodule
