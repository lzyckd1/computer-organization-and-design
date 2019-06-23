`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:54:32 12/24/2018 
// Design Name: 
// Module Name:    CMP 
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
module CMP(
    input [31:0] i1,
    input [31:0] i2,
    input [1:0] op,
    input b,
    output branch
    );

reg tem;
initial
begin
	tem=0;
end

always@(*)
begin
	case(op)
	0:tem=(i1==i2);
	1:tem=0;
	2:tem=0;
	3:tem=0;
	endcase
end

assign branch=(b&&tem);

endmodule
