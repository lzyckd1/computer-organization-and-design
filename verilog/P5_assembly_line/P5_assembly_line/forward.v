`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:36:26 12/26/2018 
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
    input [4:0] rd_MEM_WB,
    input [4:0] rd_EX_MEM,
    input [4:0] rs_ID_EX,
	 input [4:0] rt_ID_EX,
    input we_MEM_WB,
    input we_EX_MEM,
    output [1:0] forwarda,
    output [1:0] forwardb
    );
reg [1:0] a,b;
initial
begin
	a=0;
	b=0;
end

always@(*)
begin
	a=0;
	b=0;
	if(we_MEM_WB&&(rd_MEM_WB!=0)&&(rd_MEM_WB==rs_ID_EX))a=1;
	if(we_MEM_WB&&(rd_MEM_WB!=0)&&(rd_MEM_WB==rt_ID_EX))b=1;
	if(we_EX_MEM&&(rd_EX_MEM!=0)&&(rd_EX_MEM==rs_ID_EX))a=2;
	if(we_EX_MEM&&(rd_EX_MEM!=0)&&(rd_EX_MEM==rt_ID_EX))b=2;
end
assign forwarda=a;
assign forwardb=b;
endmodule
