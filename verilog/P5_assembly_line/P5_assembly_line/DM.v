`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:45:29 12/24/2018 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input clk,
    input clr,
    input [31:0] address,
    input we,
    input [31:0] wd,
    input [31:0] ins_address,
    output [31:0] out
    );
integer i;
reg [31:0] mem[1023:0];
reg [31:0] count,tem;

initial 
begin
count=0;
tem=0;
	for(i=0;i<1024;i=i+1)mem[i]=0;
end

always@(posedge clk)
begin
	if(clr==1)
	begin
	count=0;
		for(i=0;i<1024;i=i+1)mem[i]=0;
	end
	else
	begin
	count<=count+1;
		if(we==1)
		begin
			tem={20'b00000000000000000011,ins_address[11:0]};
			$display("%d@%h: *%h <= %h",count,tem,address,wd);
			mem[address[11:2]]<=wd;
		end
	end
end

assign out=mem[address[11:2]];
endmodule
