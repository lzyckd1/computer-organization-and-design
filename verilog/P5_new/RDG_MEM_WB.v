`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:45 12/31/2018 
// Design Name: 
// Module Name:    RDG_MEM_WB 
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
module RDG_MEM_WB(
    input clk,
    input clr,
    input [31:0] ins,
    input [31:0] pc,
    input [31:0] dm,
    input [31:0] alu,
	 input [4:0] rd,
	 input [1:0] Tuse,
	 input [1:0] Tnew,
	 input [31:0] wd,
    output [31:0] ins_WB,
    output [31:0] pc_WB,
    output [31:0] dm_WB,
    output [31:0] alu_WB,
	 output [4:0] rd_WB,
	 output [1:0] Tuse_WB,
	 output [1:0] Tnew_WB,
	 output [31:0] wd_WB
    );
reg [31:0] i,p,o,a,w;
reg [4:0] d;
reg [1:0] u,n;
initial
begin
w=0;
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
	w=0;
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
		o<=dm;
		a<=alu;
		d<=rd;
		w<=wd;
		if(Tuse>0)u<=Tuse-1;
		if(Tnew>0)n<=Tnew-1;
	end
end
assign ins_WB=i;
assign pc_WB=p;
assign dm_WB=o;
assign alu_WB=a;
assign rd_WB=d;
assign Tuse_WB=u;
assign Tnew_WB=n;
assign wd_WB=w;
endmodule