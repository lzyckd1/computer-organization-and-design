`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:34:57 12/25/2018 
// Design Name: 
// Module Name:    reg_ID_EX 
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
module reg_ID_EX(
    output reg [31:0] IR_E=0,
    output reg [31:0] PC4_E=0,
    output reg [31:0] RS_E=0,
    output reg [31:0] RT_E=0,
    output reg [31:0] EXT_E=0,
	 output reg lw_E=0,
	 output reg r_t_E=0,
	 output reg grf_we_E=0,
	 output reg [4:0] grf_rs_E=0,
	 output reg [4:0] grf_rt_E=0,
	 output reg [4:0] grf_rd_E=0,
    input [31:0] IR,
    input [31:0] PC,
    input [31:0] RS,
    input [31:0] RT,
    input [31:0] EXT,
	 input lw,
	 input r_t,
	 input grf_we,
	 input [4:0] grf_rs,
	 input [4:0] grf_rt,
	 input [4:0] grf_rd,
	 input clk,
	 input clr,
	 input stop
    );
reg [31:0] ins,pc,rs,rt,ext;
reg [4:0] grs,grt,grd;
reg we,irt,l;
initial 
begin
	l=0;
	ins=0;
	pc=0;
	rs=0;
	rt=0;
	ext=0;
	we=0;
	irt=0;
	grs=0;
	grt=0;
	grd=0;
end

always @(posedge clk)
begin
	if(clr==1||stop==1)
	begin
		lw_E=0;
		IR_E=0;
		PC4_E=0;
		RS_E=0;
		RT_E=0;
		EXT_E=0;
		grf_we_E=0;
		r_t_E=0;
		grf_rs_E=0;
		grf_rt_E=0;
		grf_rd_E=0;
	end
	else
	begin
		lw_E<=lw;
		IR_E<=IR;
		PC4_E<=PC;
		RS_E<=RS;
		RT_E<=RT;
		EXT_E<=EXT;
		grf_we_E<=grf_we;
		r_t_E<=r_t;
		grf_rs_E<=grf_rs;
		grf_rt_E<=grf_rt;
		grf_rd_E<=grf_rd;
	end
end


endmodule
