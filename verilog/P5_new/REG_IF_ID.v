`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:49 12/31/2018 
// Design Name: 
// Module Name:    REG_IF_ID 
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
module REG_IF_ID(
    input clk,
    input clr,
    input [31:0] pc,
    input [31:0] ins,
	 input [1:0] Tuse,
	 input [1:0] Tnew,
	 input [4:0] rs,
	 input [4:0] rt,
	 input [4:0] rd,
    output [31:0] pc_ID,
    output [31:0] ins_ID,
	 output [1:0] Tuse_ID,
	 output [1:0] Tnew_ID,
	 output [4:0] rs_ID,
	 output [4:0] rt_ID,
	 output [4:0] rd_ID
    );
reg [31:0] a,i;
reg [1:0] u,n;
reg [4:0] s,t,d;

initial
begin
	a=16'h3000;
	i=0;
	u=0;
	n=0;
	s=0;
	t=0;
	d=0;
end

always@(posedge clk)
begin
	if(clr==1)
	begin
		a=16'h3000;
		i=0;
		u=0;
		n=0;
		s=0;
		t=0;
		d=0;
	end
	else
	begin
		a<=pc;
		i<=ins;
	u<=Tuse;
	n<=Tnew;
	s<=rs;
	t<=rt;
	d<=rd;
	end
end

assign pc_ID=a;
assign ins_ID=i;
assign Tuse_ID=u;
assign Tnew_ID=n;
assign rs_ID=s;
assign rt_ID=t;
assign rd_ID=d;
endmodule
