`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:08:14 12/18/2018 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input clk,
    input clr,
	 input [31:0] pc,
    input we,
    input [31:0] wd,
    input [4:0] a1,
    input [4:0] a2,
    input [4:0] a3,
    output [31:0] rd1,
    output [31:0] rd2
    );
integer i;
reg [31:0] mem[31:0];
reg [31:0] count,tem;
initial
begin
	count=0;
	tem=0;
	for(i=0;i<32;i=i+1)
	begin
		mem[i]=0;
	end
end

always@(posedge clk)
begin
	if(clr==1)
	begin
		count=0;
		for(i=0;i<32;i=i+1)
		begin
			mem[i]=0;
		end
	end
	else
	begin
		count=count+1;
		if(we==1&&a3!=0)
		begin
		mem[a3]=wd;
		$display("%d@%h: $%d <= %h",count,pc,a3,wd);
		end;
	end
end

assign rd1=mem[a1];
assign rd2=mem[a2];
endmodule
