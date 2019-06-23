`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:17:23 12/31/2018 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
    );
	 
//////////////////////////////////////////////////////////////////////////////////
//IF
wire [31:0] pc_now,pc_in,ins,pc_ID,ins_ID,pc_a4;
wire [1:0] Tuse,Tnew,Tuse_ID,Tnew_ID,Tuse_EX,Tnew_EX,Tuse_MEM,Tnew_MEM,Tuse_WB,Tnew_WB;
wire [4:0] rs,rt,rd,rs_ID,rt_ID,rd_ID,rs_qi,rt_qi,rd_last,rs_EX,rt_EX,rd_EX,rd_MEM,rd_WB;

PC PC(pc_now,clk,reset,pc_in);
IM IM(pc_now,ins);
control0 control0(ins,Tuse,Tnew,rs,rt,rd);
REG_IF_ID R_I_I(clk,reset||stop,pc_now,ins,Tuse,Tnew,rs,rt,rd,pc_ID,ins_ID,Tuse_ID,Tnew_ID,rs_ID,rt_ID,rd_ID);
ADD4 ADD4(pc_now,pc_a4);
assign pc_in=stop?pc_now:(b?branch:(j?pc_j:pc_a4));
//assign pc_in=(b?branch:(j?pc_j:pc_a4));
//////////////////////////////////////////////////////////////////////////////////
//ID
wire we;
wire [1:0] cmpop;
wire [31:0] wd,o1,o11,o22,o2,imm_0,imm_s,imm,cmp1,cmp2,pc_j,pc_EX,ins_EX,o1_EX,o2_EX,imm_EX,branch,tem3,tem4;
control1 control1(ins_ID,rs_qi,rt_qi,j,b,imm_type,cmpop);
GRF GRF(clk,reset,pc_WB,we,wd,rs_ID,rt_ID,rd_last,o11,o22);
EXT EXT(ins_ID[15:0],imm_0,imm_s);
assign o1=(rd_EX==rs_ID&&we&&rd_EX!=0)?alu_out:((forwardc==0)?o11:(forwardc==1?alu_MEM:wd_WB));
assign o2=(rd_EX==rt_ID&&we&&rd_EX!=0)?alu_out:((forwardd==0)?o22:(forwardd==1?alu_MEM:wd_WB));
assign imm=(imm_type)?imm_0:imm_s;
//assign o1=(forwardc==0)?o11:(forwarda==1?alu_MEM:wd_WB);
//assign o2=(forwardd==0)?o22:(forwardb==1?alu_MEM:wd_WB);
assign cmp1=o1;
assign cmp2=o2;
CMP CMP(cmp1,cmp2,cmpop,pc_ID,pc_a4,imm,b,branch);
NPC NPC(ins_ID,pc_ID,o1,pc_j);
REG_ID_EX R_I_E(clk,reset,pc_ID,ins_ID,o1,o2,imm,rs_ID,rt_ID,rd_ID,Tuse_ID,Tnew_ID,pc_EX,ins_EX,o1_EX,o2_EX,imm_EX,rs_EX,rt_EX,rd_EX,Tuse_EX,Tnew_EX);


///////////////////////////////////////////////////////////////////////////////////
//EX
wire [31:0] alu_in1,alu_in2,alu_out,ins_MEM,pc_MEM,o2_MEM,alu_MEM,tem1,tem2;
wire [2:0] alu_op;
assign tem1=(forwarda==0)?((we==1&&rd_last!=0&&rd_last==rs_EX)?wd:o1_EX):(forwarda==1?alu_MEM:wd_WB);
assign tem2=(forwardb==0)?((we==1&&rd_last!=0&&rd_last==rt_EX)?wd:o2_EX):(forwardb==1?alu_MEM:wd_WB);
control2 control2(ins_EX,alu_op,alu_type);
assign alu_in1=tem1;
assign alu_in2=alu_type?imm_EX:tem2;
ALU ALU(alu_in1,alu_in2,alu_op,alu_out);
REG_EX_MEM R_E_M(clk,reset,ins_EX,pc_EX,tem2,rd_EX,Tuse_EX,Tnew_EX,alu_out,ins_MEM,pc_MEM,o2_MEM,alu_MEM,rd_MEM,Tuse_MEM,Tnew_MEM);

///////////////////////////////////////////////////////////////////////////////////
//MEM
wire sw;
wire [1:0] wd_type_MEM;
wire [31:0] DM_out,ins_WB,pc_WB,dm_WB,alu_WB,wd_MEM,wd_WB,dmw;
control3 c3(ins_MEM,sw);
control4 c5(ins_MEM,t2,wd_type_MEM,t1);
assign dmw=(rd_WB==ins_MEM[20:16])?alu_WB:((rd_last==ins_MEM[20:16])?wd:o2_MEM);
DM DM(clk,reset,alu_MEM,sw,dmw,pc_MEM,DM_out);
assign wd_MEM=(wd_type_MEM==0)?alu_MEM:(wd_type_MEM==1?DM_out:pc_MEM+8);
RDG_MEM_WB R_M_W(clk,reset,ins_MEM,pc_MEM,DM_out,alu_MEM,rd_MEM,Tuse_MEM,Tnew_MEM,wd_MEM,ins_WB,pc_WB,dm_WB,alu_WB,rd_WB,Tuse_WB,Tnew_WB,wd_WB);

///////////////////////////////////////////////////////////////////////////////////
//WB
wire grf_we;
wire [1:0] wd_type;
control4 c4(ins_WB,we,wd_type,rd_last);
assign wd=wd_WB;

///////////////////////////////////////////////////////////////////////////////////
//forward and stall
wire stop;
wire [1:0] forwarda,forwardb,forwardc,forwardd;
stall stall(Tnew_ID,Tuse,rd_ID,rs,rt,stop);

forward forward1(rs_EX,rt_EX,rd_MEM,rd_WB,Tuse_EX,Tnew_MEM,Tnew_WB,forwarda,forwardb);
forward forward2(rs_ID,rt_ID,rd_MEM,rd_WB,Tuse_EX,Tnew_MEM,Tnew_WB,forwardc,forwardd);
endmodule
