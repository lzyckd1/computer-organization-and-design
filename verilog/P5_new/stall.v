`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:19:17 01/01/2019 
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
    input [1:0] Tnew_EX,
    input [1:0] Tuse_ID,
    input [4:0] rd_EX,
    input [4:0] rs_ID,
	 input [4:0] rt_ID,
    output stop
    );
reg s;
assign stop=s;
initial
begin
	s=0;
end
always@(*)
begin
	//if((lw_ID_EX&&((rd_ID_EX==rs_IF_ID)||(rd_ID_EX==rt_IF_ID))&&rd_ID_EX!=0)
	//||(ins_ID_EX[31:26]==6'b000100&&((rd_ID_EX==rs_IF_ID)||(rd_ID_EX==rt_IF_ID))&&rd_ID_EX!=0)
	//||(ins_ID_EX[31:26]==6'b000100&&lw_EX_MEM==1&&((rd_EX_MEM==rt_IF_ID)||(rd_EX_MEM==rs_IF_ID))&&rd_EX_MEM!=0))s=1;
	if($signed({1'b0,Tnew_EX}-{1'b0,Tuse_ID})>0&&(rd_EX==rt_ID||rd_EX==rs_ID)&&rd_EX!=0)s=1;
	//else if(ins[31:26]==6'b000100)s=1;
	else s=0;
end

endmodule
