`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:43:05 12/25/2018 
// Design Name: 
// Module Name:    recode_WB 
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
module recode_WB(
    input [31:0] ins,
    output grf_we,
    output [1:0] write_type
    );

reg we,rt;
reg [1:0] type;
initial
begin
	we=0;
	type=0;
	rt=0;
end

assign grf_we=we;
assign write_type=type;

always@(*)
begin
	if(ins[31:26]==0)rt=1;
	else rt=0;
	
	if(rt==1&&ins[5:0]==6'b100001)//addu
	begin
		we=1;
		type=0;
	end
	else if(rt==1&&ins[5:0]==6'b100011)//subu
	begin
		we=1;
		type=0;
	end
	else if(rt==0&&ins[31:26]==6'b001101)//ori
	begin
		we=1;
		type=0;
	end
	else if(rt==0&&ins[31:26]==6'b001111)//lui
	begin
		we=1;
		type=0;
	end
	else if(rt==0&&ins[31:26]==6'b100011)//lw
	begin
		we=1;
		type=1;
	end
	else if(rt==0&&ins[31:26]==6'b000011)//jal
	begin
		we=1;
		type=2;
	end
	else
	begin
		we=0;
		type=0;
	end
end

endmodule
