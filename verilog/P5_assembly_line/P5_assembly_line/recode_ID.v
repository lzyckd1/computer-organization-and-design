`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:23:44 12/25/2018 
// Design Name: 
// Module Name:    recode_ID 
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
module recode_ID(
    input [31:0] ins,
    output imm_type,
    output b_type,
    output j_type,
    output [1:0] cmp_op,
	 output r_t,
	 output grf_we,
	 output lw,
	 output [4:0] grf_rs,
	 output [4:0] grf_rt,
	 output [4:0] grf_rd
    );
reg imm,b,j,rt,we,l;
reg [1:0] cmp;
reg [4:0] rd,rs,rr;
initial
begin
	l=0;
	rt=0;
	imm=0;
	b=0;
	j=0;
	cmp=0;
	we=0;
	rd=0;
	rs=0;
	rr=0;
end
assign lw=l;
assign imm_type=imm;
assign b_type=b;
assign j_type=j;
assign cmp_op=cmp;
assign grf_we=we;
assign grf_rs=rs;
assign grf_rt=rr;
assign grf_rd=rd;
assign r_t=rt;

always@(*)
begin
	if(ins[31:26]==0)rt=1;
	else rt=0;
	if(ins==0)
	begin
		imm=0;
		l=0;
		b=0;
		j=0;
		cmp=0;
		we=0;
		rs=0;
		rr=0;
		rd=0;
	end
	else if(rt==1&&ins[5:0]==6'b100001)//addu
	begin
		imm=0;
		l=0;
		b=0;
		j=0;
		cmp=0;
		we=1;
		rs=ins[25:21];
		rr=ins[20:16];
		rd=ins[15:11];
	end
	else if(rt==1&&ins[5:0]==6'b100011)//subu
	begin
		imm=0;
		l=0;
		b=0;
		j=0;
		cmp=0;
		we=1;
		rs=ins[25:21];
		rr=ins[20:16];
		rd=ins[15:11];
	end
	else if(rt==0&&ins[31:26]==6'b001101)//ori
	begin
		imm=1;
		b=0;
		j=0;
		l=0;
		cmp=0;
		we=1;
		rs=ins[25:21];
		rd=ins[20:16];
		rr=0;
	end
	else if(rt==0&&ins[31:26]==6'b001111)//lui
	begin
		imm=0;
		l=0;
		b=0;
		j=0;
		cmp=0;
		we=1;
		rs=ins[25:21];
		rd=ins[20:16];
		rr=0;
	end
	else if(rt==0&&ins[31:26]==6'b100011)//lw
	begin
		imm=0;
		b=0;
		j=0;
		l=1;
		cmp=0;
		we=1;
		rs=ins[25:21];
		rd=ins[20:16];
		rr=0;
	end
	else if(rt==0&&ins[31:26]==6'b101011)//sw
	begin
		imm=0;
		b=0;
		j=0;
		cmp=0;
		we=0;
		l=0;
		rs=ins[25:21];
		rd=ins[20:16];
		rr=0;
	end
	else if(rt==0&&ins[31:26]==6'b000100)//beq
	begin
		imm=0;
		b=1;
		j=0;
		cmp=0;
		we=0;
		rs=ins[25:21];
		rt=ins[20:16];
		rd=0;
		l=0;
	end
	else if(rt==0&&ins[31:26]==6'b000010)//j
	begin
		imm=0;
		b=0;
		j=1;
		cmp=0;
		we=0;
		rs=ins[25:21];
		rt=ins[20:16];
		l=0;
		rd=0;
	end
	else if(rt==0&&ins[31:26]==6'b000011)//jal
	begin
		imm=0;
		b=0;
		j=1;
		cmp=0;
		we=1;
		rs=0;
		l=0;
		rt=0;
		rd=5'b11111;
	end
	else if(rt==1&&ins[5:0]==6'b001000)//jr
	begin
		imm=0;
		b=0;
		l=0;
		j=1;
		cmp=0;
		we=0;
		rs=ins[25:21];
		rt=0;
		rd=0;
	end
	else begin
		imm=0;
		l=0;
		b=0;
		j=0;
		cmp=0;
		we=0;
		rs=0;
		rr=0;
		rd=0;
	end
end

endmodule
