`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:36:06 01/01/2019 
// Design Name: 
// Module Name:    forward 
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
module forward(
    input [4:0] rs_EX,
    input [4:0] rt_EX,
    input [4:0] rd_MEM,
    input [4:0] rd_WB,
    input [0:0] Tuse_EX,
    input [0:0] Tnew_MEM,
    input [0:0] Tnew_WB,
    output [1:0] forwarda,
    output [1:0] forwardb
    );
reg [1:0] a;
reg [1:0] b;
initial
begin
	a=0;
	b=0;
end
always@(*)
begin
	if(rd_MEM!=0&&(rs_EX==rd_MEM))
		a=2'b01;
	else if(rd_WB!=0&&(rs_EX==rd_WB))
		a=2'b10;
	else
		a=2'b0;
	if(rd_MEM!=0&&(rt_EX==rd_MEM))
		b=2'b01;
	else if(rd_WB!=0&&(rt_EX==rd_WB))
		b=2'b10;
	else
		b=2'b00;
end

assign forwarda=a;
assign forwardb=b;
endmodule

