`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:38:33 12/26/2018 
// Design Name: 
// Module Name:    reg_MEM_WB 
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
module reg_MEM_WB(
    output [31:0] IR_W,
    output [31:0] PC4_W,
    output [31:0] AO_W,
    output [31:0] RT_W,
    output lw_W,
    output r_t_W,
    output grf_we_W,
    output [4:0] grf_rs_W,
    output [4:0] grf_rt_W,
    output [4:0] grf_rd_W,
    output [31:0] DM_W,
    input clk,
    input clr,
	 input [31:0] IR_M,
    input [31:0] PC4_M,
    input [31:0] AO_M,
    input [31:0] RT_M,
	 input lw_M,
	 input r_t_M,
	 input grf_we_M,
	 input [4:0] grf_rs_M,
	 input [4:0] grf_rt_M,
	 input [4:0] grf_rd_M,
	 input [31:0] DM_M
    );

reg [31:0] ins,pc,ao,rt,dm;
reg [4:0] grs,grt,grd;
reg gwe,irt,l;
initial 
begin
l=0;
	ins=0;
	pc=0;
	ao=0;
	rt=0;
	gwe=0;
	irt=0;
	grs=0;
	grt=0;
	grd=0;
	dm=0;
end

always@(posedge clk)
begin
	if(clr==1)
	begin
	l=0;
		ins=0;
		pc=0;
		ao=0;
		rt=0;
		gwe=0;
	irt=0;
	grs=0;
	grt=0;
	grd=0;
	dm=0;
	end
	else
	begin
	l<=lw_M;
		ins<=IR_M;
		pc<=PC4_M;
		ao<=AO_M;
		rt<=RT_M;
		gwe<=grf_we_M;
		irt<=r_t_M;
	grs<=grf_rs_M;
	grt<=grf_rt_M;
	grd<=grf_rd_M;
	dm<=DM_M;
	end
end
assign lw_W=l;
assign IR_W=ins;
assign PC4_W=pc;
assign AO_W=ao;
assign RT_W=rt;
assign r_t_W=irt;
assign grf_we_W=gwe;
assign grf_rs_W=grs;
assign grf_rt_W=grt;
assign grf_rd_W=grd;
assign DM_W=dm;
endmodule
