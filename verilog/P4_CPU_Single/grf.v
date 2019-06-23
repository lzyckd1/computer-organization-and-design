`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:02:07 12/02/2018 
// Design Name: 
// Module Name:    grf 
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
module grf(
    input WE,
    input clk,
    input reset,
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input [31:0] WD,
	 input [31:0] ins,
    output [31:0] out1,
    output [31:0] out2
    );

integer i=0,num;
reg [31:0] a[31:0],count;
reg [31:0] tem;
initial
begin
count=0;
	for(i=0;i<32;i=i+1)a[i]=0;
end

always@(posedge clk)
begin
	if(reset==1)
	begin
	count=0;
		for(i=0;i<32;i=i+1)a[i]<=0;
	end
	else
	begin
		if(WE==1&&A3!=0)
		begin
			a[A3]<=WD;
			tem={20'b00000000000000000011,ins[11:0]};
			$display("%d@%h: $%d <= %h",count,tem,A3,WD);
		end
	end
end

assign out1=a[A1];
assign out2=a[A2];

endmodule
