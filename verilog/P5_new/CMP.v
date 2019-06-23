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
	 input [1:0] cmpop,
	 input [31:0] pc_ID,
	 input [31:0] pc_a4,
	 input [31:0] imm,
    input b,
    output [31:0] branch
    );

reg tem;
reg [31:0] next;
initial
begin
	tem=0;
	next=0;
end

always@(*)
begin
	case(cmpop)
	0:tem=(i1==i2);
	1:tem=(i1!=i2);
	2:tem=0;
	3:tem=0;
	endcase
	if(b&&tem)next=pc_ID+4+{imm[29:0],2'b00};
	else next=pc_a4;
end

assign branch=next;

endmodule
