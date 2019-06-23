`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:36:18 12/25/2018 
// Design Name: 
// Module Name:    recode_MEM 
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
module recode_MEM(
    input [31:0] ins,
    output DM_we
    );
reg we,rt;
initial
begin
	we=0;
	rt=0;
end

assign DM_we=we;

always@(*)
begin
	if(ins[31:26]==0)rt=1;
	else rt=0;
	
	if(rt==0&&ins[31:26]==6'b101011)//sw
	begin
		we=1;
	end
	else 
	begin
		we=0;
	end
end

endmodule
