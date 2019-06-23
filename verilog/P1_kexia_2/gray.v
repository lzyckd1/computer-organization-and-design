`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:06:26 10/26/2018 
// Design Name: 
// Module Name:    gray 
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
module gray(
    input Clk,
    input Reset,
    input En,
    output reg [2:0] Output,
    output reg Overflow
    );
reg [3:0] a;

initial
begin 
	a=0;
	Output=0;
	Overflow=0;
end

always @(posedge Clk)
begin
	if(Reset==1)
	begin
	a=0;
	Overflow=0;
	end
	else if(En==1)
	begin
		if(a<7)a=a+1;
		else if(a==7)
		begin
			a=0;
			Overflow=1;
		end
	end
	
	case(a%8)
	0:Output<=000;
	1:Output<=001;
	2:Output<=011;
	3:Output<=010;
	4:Output<=110;
	5:Output<=111;
	6:Output<=101;
	7:Output<=100;
	endcase
end

endmodule
