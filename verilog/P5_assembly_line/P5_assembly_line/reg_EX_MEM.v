`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:47:46 12/25/2018 
// Design Name: 
// Module Name:    reg_EX_MEM 
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
module reg_EX_MEM(
    output reg [31:0] IR_M=0,
    output reg [31:0] PC4_M=0,
    output reg [31:0] AO_M=0,
    output reg [31:0] RT_M=0,
	 output reg lw_M=0,
	 output reg r_t_M=0,
	 output reg grf_we_M=0,
	 output reg [4:0] grf_rs_M=0,
	 output reg [4:0] grf_rt_M=0,
	 output reg [4:0] grf_rd_M=0,
    input [31:0] IR,
    input [31:0] PC,
    input [31:0] AO,
    input [31:0] RT,
	 input lw_E,
	 input r_t_E,
	 input grf_we_E,
	 input [4:0] grf_rs_E,
	 input [4:0] grf_rt_E,
	 input [4:0] grf_rd_E,
    input clk,
    input clr
    );
reg [31:0] ins,pc,ao,rt;
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
	end
	else
	begin
	lw_M<=lw_E;
		IR_M<=IR;
		PC4_M<=PC;
		RT_M<=RT;
		AO_M<=AO;
		grf_we_M<=grf_we_E;
		r_t_M<=r_t_E;
		grf_rs_M<=grf_rs_E;
		grf_rt_M<=grf_rt_E;
		grf_rd_M<=grf_rd_E;
	end
end

endmodule
