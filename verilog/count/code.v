`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:16:25 10/16/2018 
// Design Name: 
// Module Name:    code 
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
module code(
    input Clk,
    input Reset,
    input Slt,
    input En,
    output [63:0] Output0,
    output [63:0] Output1
    );
	
	reg [63:0] o1,o2,o3;
	
	initial
		begin
		o1 = 0;
		o2 = 0;
		o3 = 0;
		end
		
	always @ (posedge Clk)
	begin
	if (Reset==1)
	begin
		o1=0;
		o2=0;
		o3=0;
	end
	if ((Reset==0)&&(En==1)&&(Slt==1))o3 = o3 +1;
	end
	
	always @ (posedge Clk)
	begin
	if ((Reset==0)&&(En==1)&&(Slt==0))o1 <= o1 +1;
	o2 <= o3/4;
	end

	assign Output0 = o1;
	assign Output1 = o2;
endmodule
