`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:22:19 12/25/2018 
// Design Name: 
// Module Name:    reg_IF_ID 
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
module reg_IF_ID(
	 input clk,
	 input clr,
	 input STOP,
    input [31:0] PC,
    input [31:0] Ins,
    output [31:0] PC4_D,
    output [31:0] IR_D
    );
reg [31:0] pc,ins;
initial 
begin
	pc=0;
	ins=0;
end

always@(posedge clk)
begin
	if(clr==1)
	begin
		pc=0;
		ins=0;
	end
	else if(STOP==1)
	begin
	end
	else
	begin
		pc<=PC;
		ins<=Ins;
	end
end

assign PC4_D=pc;
assign IR_D=ins;
endmodule
