`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:22:39 12/31/2018 
// Design Name: 
// Module Name:    control2 
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
module control2(
    input [31:0] ins,
    output [2:0] alu_op,
    output alu_type
    );
reg a,ri;
reg [2:0] op;
assign alu_type=a;
assign alu_op=op;
initial
begin
	a=0;
	op=0;
end
always@(*)
begin
if(ins[31:26]==0)ri=0;
	else ri=1;
	if(ins==0)
	begin
	a=0;
	op=0;
	end
	else if(ri==0&&ins[5:0]==6'b100001)//addu
	begin
		a=0;
		op=0;
	end
	else if(ri==0&&ins[5:0]==6'b100011)//subu
	begin
		a=0;
		op=1;
	end
	else if(ri==1&&ins[31:26]==6'b001101)//ori
	begin
		a=1;
		op=2;
	end
	else if(ri==1&&ins[31:26]==6'b001111)//lui
	begin
		a=1;
		op=3;
	end
	else if(ri==1&&ins[31:26]==6'b100011)//lw
	begin
		a=1;
		op=0;
	end
	else if(ri==1&&ins[31:26]==6'b101011)//sw
	begin
		a=1;
		op=0;
	end
	else
	begin
	a=0;
	op=0;
	end
end
endmodule
