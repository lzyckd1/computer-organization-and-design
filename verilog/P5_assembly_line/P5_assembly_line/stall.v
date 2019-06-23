`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:48:58 12/26/2018 
// Design Name: 
// Module Name:    stall 
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
module stall(
    input lw_ID_EX,
	 input [31:0] ins_ID_EX,
	 input lw_EX_MEM,
	 input [4:0] rd_EX_MEM,
    input [4:0] rd_ID_EX,
    input [4:0] rs_IF_ID,
    input [4:0] rt_IF_ID,
    output stop
    );
reg s;
initial
begin
	s=0;
end
always@(*)
begin
	s=0;
	if((lw_ID_EX&&((rd_ID_EX==rs_IF_ID)||(rd_ID_EX==rt_IF_ID))&&rd_ID_EX!=0)
	||(ins_ID_EX[31:26]==6'b000100&&((rd_ID_EX==rs_IF_ID)||(rd_ID_EX==rt_IF_ID))&&rd_ID_EX!=0)
	||(ins_ID_EX[31:26]==6'b000100&&lw_EX_MEM==1&&((rd_EX_MEM==rt_IF_ID)||(rd_EX_MEM==rs_IF_ID))&&rd_EX_MEM!=0))s=1;
end
assign stop=s;
endmodule
