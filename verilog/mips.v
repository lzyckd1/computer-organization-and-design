`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:08:00 11/19/2018 
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

	wire Regdst,RegWrite,ALUsrcA,ALUsrcB,MemWrite,MemtoReg;
	wire [1:0] Ext_sel;
	wire [3:0] MemSel,jump_sel,jump_new;
	wire [4:0] rs,rt,rd,sh,a1,a2,RegAddr,rt_or_rd;
	wire [5:0] ALUop , op , func;
	wire [15:0] ime;
	wire [25:0] jpad;
	wire [31:0] pc,pc4,npc,instr,A,B,Y,rd1,rd2,extout,MemOutput,RegData,MemData,last_output;
	
	assign a1 = rs;
	assign a2 = rt;
	
	IM my_im(pc,instr,op,func,rs,rt,rd,sh,ime,jpad);
	
	assign jump_new = {  (jump_sel[1] | ( jump_sel[0] & Y[0] )) &  jump_sel[3]  ,  (jump_sel[1] | ( jump_sel[0] & Y[0] )) &  jump_sel[2]    , jump_sel[1] , {jump_sel[0] & Y[0]} }; 
	
	mux2w5b mux_for_regaddr(rt,rd,Regdst,rt_or_rd),
			mux_for_jal(rt_or_rd,5'b11111,jump_new[2],RegAddr);
	GRF my_grf(clk,reset,RegWrite,a1,a2,RegAddr,RegData,pc,rd1,rd2);
	
	mux2w32b 
	mux_for_alua(rd1,{27'b000000000000000000000000000,sh},ALUsrcA,A),
	mux_for_alub(rd2,extout,ALUsrcB,B),
	mux_for_regdata(Y,MemOutput,MemtoReg,last_output),
	mux_for_jal_data(last_output,pc4,jump_new[2],RegData);
	
	alu ALU( A,B,ALUop,Y );
	
	assign MemData = rd2;
	DM my_dm(MemData,Y[11:0],MemWrite,reset,pc,MemOutput,clk,MemSel);
	
	ext EXT(ime,Ext_sel,extout);
	
	PCreg PCREG(npc,pc,reset,clk);
	
	nPC NPC(extout,jpad,rd1,jump_new,pc,pc4,npc);
	
	controller CTRL(op,func,Regdst,RegWrite,ALUsrcA,ALUsrcB,Ext_sel,MemWrite,MemtoReg,ALUop,jump_sel,MemSel);

endmodule
