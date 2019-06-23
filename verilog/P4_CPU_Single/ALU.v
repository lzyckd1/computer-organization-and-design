`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:57:47 12/02/2018 
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
    input [2:0] FUN,
    input [31:0] in1,
    input [31:0] in2,
    output [31:0] out
    );
integer i=0;
reg [31:0] out1;
always@(*)
begin
	case(FUN)
	0:out1=in1+in2;
	1:out1=in1-in2;
	2:out1=in1|in2;
	3:
	begin
		if(in1==in2)out1=1;
		else out1=0;
	end
	4:
	begin
		if(in1<in2)out1=1;
		else out1=0;
	end
	5:out1={in2[15:0],16'b0};
	6:out1=0;
	7:out1=0;
	endcase
end
assign out=out1;
endmodule
