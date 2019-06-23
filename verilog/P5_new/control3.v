`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:49:28 12/31/2018 
// Design Name: 
// Module Name:    control3 
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
module control3(
    input [31:0] ins,
    output sw
    );
reg s,ri;
initial
begin
	ri=0;
	s=0;
end
always@(*)
begin
	if(ins[31:26]==0)ri=0;
	else ri=1;
	if(ri==1&&ins[31:26]==6'b101011)//sw
	begin
		s=1;
	end
	else s=0;
end
assign sw=s;
endmodule
