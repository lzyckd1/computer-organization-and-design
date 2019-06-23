`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:50:16 12/31/2018 
// Design Name: 
// Module Name:    REG_EX_MEM 
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
module REG_EX_MEM(
    input clk,
    input clr,
    input [31:0] ins,
    input [31:0] pc,
    input [31:0] o2,
	 input [4:0] rd,
	 input [1:0] Tuse,
	 input [1:0] Tnew,
    input [31:0] aluout,
    output [31:0] ins_MEM,
    output [31:0] pc_MEM,
    output [31:0] o2_MEM,
    output [31:0] alu_MEM,
	 output [4:0] rd_MEM,
	 output [1:0] Tuse_MEM,
	 output [1:0] Tnew_MEM
    );
reg [31:0] i,p,o,a;
reg [4:0] d;
reg [1:0] u,n;
initial
begin
	i=0;
	p=16'h3000;
	o=0;
	a=0;
	d=0;
	u=0;
	n=0;
end

always@(posedge clk)
begin
	if(clr==1)
	begin
	i=0;
	p=16'h3000;
	o=0;
	a=0;
	d=0;
	u=0;
	n=0;
	end
	else
	begin
		i<=ins;
		p<=pc;
		o<=o2;
		a<=aluout;
		d<=rd;
		if(Tuse>0)u<=Tuse-1;
		if(Tnew>0)n<=Tnew-1;
	end
end
assign ins_MEM=i;
assign pc_MEM=p;
assign o2_MEM=o;
assign alu_MEM=a;
assign rd_MEM=d;
assign Tuse_MEM=u;
assign Tnew_MEM=n;
endmodule
