`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:08 12/31/2018 
// Design Name: 
// Module Name:    REG_ID_EX 
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
module REG_ID_EX(
    input clk,
    input clr,
    input [31:0] pc,
    input [31:0] ins,
    input [31:0] o1,
    input [31:0] o2,
    input [31:0] imm,
	 input [4:0] rs,
	 input [4:0] rt,
	 input [4:0] rd,
	 input [1:0] Tuse,
	 input [1:0] Tnew,
    output [31:0] pc_EX,
    output [31:0] ins_EX,
    output [31:0] o1_EX,
    output [31:0] o2_EX,
    output [31:0] imm_EX,
	 output [4:0] rs_EX,
	 output [4:0] rt_EX,
	 output [4:0] rd_EX,
	 output [1:0] Tuse_EX,
	 output [1:0] Tnew_EX
    );
reg [31:0] p,i,a,b,c;
reg [4:0] d,s,t;
reg [1:0] u,n;
initial 
begin
	p=16'h3000;
	i=0;
	a=0;
	b=0;
	c=0;
	s=0;
	t=0;
	d=0;
	u=0;
	n=0;
end

always@(posedge clk)
begin
	if(clr==1)
	begin
	p=16'h3000;
	i=0;
	a=0;
	b=0;
	c=0;
	s=0;
	t=0;
	d=0;
	u=0;
	n=0;
	end
	else 
	begin
		p<=pc;
		i<=ins;
		a<=o1;
		b<=o2;
		c<=imm;
		s<=rs;
		t<=rt;
		d<=rd;
		if(Tuse>0)u<=Tuse-1;
		if(Tnew>0)n<=Tnew-1;
	end
end

assign pc_EX=p;
assign ins_EX=i;
assign o1_EX=a;
assign o2_EX=b;
assign imm_EX=c;
assign rs_EX=s;
assign rt_EX=t;
assign rd_EX=d;
assign Tuse_EX=u;
assign Tnew_EX=n;
endmodule
