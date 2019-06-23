`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:31:16 12/25/2018 
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
wire imm_type,b_type,j,r_t,grf_we,lw,we,branch,alu_in2_chose,lw_E,r_t_E,lw_M,lw_W,r_t_W,r_t_M,grf_we_M,grf_we_W,grf_we_E;
wire [1:0] cmp_op,type,forwarda,forwardb;
wire [2:0] alu_op;
wire [4:0] address_wb,grf_rs,grf_rt,grf_rd,grf_rs_E,grf_rt_E,grf_rd_E,grf_rs_M,grf_rt_M,grf_rd_M,grf_rs_W,grf_rt_W,grf_rd_W;
wire [31:0] pc_last,pc_IM,ins,pc_add4,PC4_D,IR_D,rs,rt,imm_0,imm_s,imm,cmp_i1,cmp_i2,pc_j,wd,alu_in1,alu_in2,alu_out;
wire [31:0] PC4_W,IR_M,PC4_M,AO_M,RT_M,IR_W,PC4_W,AO_W,RT_W;
wire [31:0] IR_E,PC4_E,RS_E,RT_E,EXT_E,DM_W,DM_out;

//pc_last 32,wd 32,we 1,alu_in1 32,alu_in2 32,
PC PC(pc_IM,clk,reset,pc_last);
ADD4 add(pc_IM,pc_add4);
IM IM(pc_IM,ins);
assign pc_last=(STOP==0)?(branch?imm_s<<2+pc_add4:(j?pc_j:pc_add4)):pc_IM;
///////////////////////////////////////////////////////////////////////////////
reg_IF_ID rD(clk,reset,STOP,pc_IM,ins,PC4_D,IR_D);
recode_ID control_ID(IR_D,imm_type,b_type,j,cmp_op,r_t,grf_we,lw,grf_rs,grf_rt,grf_rd);
GRF grf(clk,reset,PC4_W,grf_we_W,wd,IR_D[25:21],IR_D[20:16],address_wb,rs,rt);
EXT ext(IR_D[15:0],imm_0,imm_s);
assign cmp_i1=(forwardp==1)?DM_W:((forwardp==2)?AO_M:rs);
assign cmp_i2=(forwardq==1)?DM_W:((forwardq==2)?AO_M:rt);
CMP cmp(cmp_i1,cmp_i2,cmp_op,b_type,branch);
NPC npc(IR_D,PC4_D,pc_j);
assign imm=(IR_D[31:26]==6'b001101)?imm_0:imm_s;
//////////////////////////////////////////////////////////////////////////////////
reg_ID_EX rE(IR_E,PC4_E,RS_E,RT_E,EXT_E,lw_E,r_t_E,grf_we_E,grf_rs_E,grf_rt_E,grf_rd_E,IR_D,PC4_D,rs,rt,imm,lw,r_t,grf_we,grf_rs,grf_rt,grf_rd,clk,reset,STOP);
recode_EX control_EX(IR_E,alu_op,alu_in2_chose);
assign alu_in1=(forwarda==1)?AO_W:((forwarda==2)?AO_M:RS_E);
assign alu_in2=(alu_in2_chose==1)?EXT_E:((forwardb==1)?AO_W:((forwardb==2)?AO_M:RT_E));
ALU alu(alu_in1,alu_in2,alu_op,alu_out);
///////////////////////////////////////////////////////////////////////////////////
reg_EX_MEM rM(IR_M,PC4_M,AO_M,RT_M,lw_M,r_t_M,grf_we_M,grf_rs_M,grf_rt_M,grf_rd_M,IR_E,PC4_E,alu_out,RT_E,lw_E,r_t_E,grf_we_E,grf_rs_E,grf_rt_E,grf_rd_E,clk,reset);
recode_MEM control_M(IR_M,dmwe);
DM DM(clk,reset,AO_M,dmwe,RT_M,PC4_M,DM_out);
//////////////////////////////////////////////////////////////////////////////////
reg_MEM_WB rW(IR_W,PC4_W,AO_W,RT_W,lw_W,r_t_W,grf_we_W,grf_rs_W,grf_rt_W,grf_rd_W,DM_W,clk,reset,IR_M,PC4_M,AO_M,RT_M,lw_M,r_t_M,grf_we_M,grf_rs_M,grf_rt_M,grf_rd_M,DM_out);
recode_WB control_W(IR_W,we,type);
stall stop(lw_E,IR_E,lw_M,grf_rd_M,grf_rd_E,IR_D[25:21],IR_D[20:16],STOP);
forward f_ext(grf_rd_W,grf_rd_M,grf_rs_E,grf_rt_E,grf_we_W,grf_we_M,forwarda,forwardb);
forward f_b(grf_rd_W,grf_rd_M,grf_rs,grf_frt,grf_we_W,grf_we_M,forwardp,forwardq);
assign wd=((type==0)?AO_W:((type==1)?DM_W:PC4_W+8));
assign address_wb=(type==2)?31:grf_rd_W;

endmodule
