`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:43:08 12/06/2018 
// Design Name: 
// Module Name:    ceshi1 
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
module ceshi1(
    input [7:0] a,
    output [31:0] b
    );
	 reg [31:0] out;
	 assign b=out;
always@(*)
begin
	out=(a[7]==0?{6'h0,a}:{6'hffffff,a});
end

endmodule
