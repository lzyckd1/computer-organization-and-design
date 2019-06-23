`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:51:19 12/03/2018 
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
wire [31:0] pc_now;
wire [31:0] ins,o1,o2,alu_out,DM_r,ins_branch;
wire [4:0] a1,a2,a3;
wire [2:0] func;
wire [9:0] DM_address;
wire [31:0] imm_0,imm_s,alu_in1,alu_in2,DM_w,wd;

assign imm_0={16'b0,ins[15:0]};
assign imm_s=(ins[15]==0)?{16'b0,ins[15:0]}:{16'b1111111111111111,ins[15:0]};

assign a1=ins[25:21];
assign a2=ins[20:16];
assign a3=(jal==1)?31:(R_or_I==1?ins[15:11]:ins[20:16]);
	
	
assign alu_in1=o1;
assign alu_in2=(R_or_I==1)?o2:(imm==1?imm_0:imm_s);
	
//assign DM_address=alu_out;
assign DM_w=o2;
	
assign wd=(jal==1)?({20'b0,pc_now[11:0]}+12296):((lh==1||lb==1||lw==1)?DM_r:alu_out);

PC_change pc(clk,reset,o1,o2,imm_s,j,jal,jr,branch,ins,pc_now);
IM read_ins(pc_now,ins);
Controller recode(ins,lw,lh,lb,sw,func,we,imm,R_or_I,j,jal,jr,branch);
grf GRF(we,clk,reset,a1,a2,a3,wd,pc_now,o1,o2);
ALU alu(func,alu_in1,alu_in2,alu_out);
DM dm(sw,lh,lb,alu_out,DM_w,pc_now,DM_r,clk,reset);

endmodule
