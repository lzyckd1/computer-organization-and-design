`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:17:22 12/04/2018 
// Design Name: 
// Module Name:    PC_change 
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
module PC_change(
    input clk,
    input clr,
    input [31:0] o1,
    input [31:0] o2,
    input [31:0] imm_s,
    input j,
    input jal,
    input jr,
    input branch,
    input [31:0] ins,
    output [31:0] pc_now
    );
reg [31:0] pc,ins_branch;
initial
begin
	pc=8'h0;
end

always@(posedge clk)
begin
	if(clr==1)pc<=0;
	else
	begin
		//pc<=pc+4;
		ins_branch=(branch==1&&o1==o2)?(4+(imm_s<<2)):4;
		//pc<=pc+ins_branch;
		if(jal==1||j==1)pc<={4'b0000,ins[25:0],2'b00};
		else if(jr==1)pc<=o1;
		else if(ins==0)pc<=pc+4;
		else pc<=pc+ins_branch;
		//pc<=(j==1||jal==1||jr==1)?(jr==1?:{pc[31:28],ins[25:0],2'b00}):pc+ins_branch;
	end
end
assign pc_now=pc;
endmodule
