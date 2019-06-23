`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:25:30 12/25/2018 
// Design Name: 
// Module Name:    recode_EX 
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
module recode_EX(
    input [31:0] ins,
    output [2:0] alu_op,
    output alu_in2_chose
    );
reg a2,rt;
reg [2:0] op;
initial
begin
	a2=0;
	op=0;
end

assign alu_in2_chose=a2;
assign alu_op=op;

always@(*)
begin
	if(ins[31:26]==0)rt=1;
	else rt=0;
	
	if(rt==1&&ins[5:0]==6'b100001)//addu
	begin
		a2=0;
		op=0;
	end
	else if(rt==1&&ins[5:0]==6'b100011)//subu
	begin
		a2=0;
		op=1;
	end
	else if(rt==0&&ins[31:26]==6'b001101)//ori
	begin
		a2=1;
		op=2;
	end
	else if(rt==0&&ins[31:26]==6'b001111)//lui
	begin
		a2=1;
		op=3;
	end
	else if(rt==0&&ins[31:26]==6'b100011)//lw
	begin
		a2=1;
		op=0;
	end
	else if(rt==0&&ins[31:26]==6'b101011)//sw
	begin
		a2=1;
		op=0;
	end
	else 
	begin
		a2=0;
		op=0;
	end
end

endmodule
