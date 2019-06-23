`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:32:03 12/24/2018 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] i1,
    input [31:0] i2,
    input [2:0] op,
    output [31:0] out
    );
reg [31:0] ans;

initial
begin
	ans=0;
end

always@(*)
begin
	case(op)
	0:ans=i1+i2;
	1:ans=i1-i2;
	2:ans=i1|i2;
	3:ans={i2[15:0],16'h0000};
	4:ans=0;
	5:ans=0;
	6:ans=0;
	7:ans=0;
	endcase
end

assign out=ans;
endmodule
