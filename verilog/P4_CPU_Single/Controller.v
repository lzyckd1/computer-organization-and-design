`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:47:06 12/02/2018 
// Design Name: 
// Module Name:    Controller 
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
module Controller(
    input [31:0] ins,
    output lw,
	 output lh,
	 output lb,
    output sw,
    output [2:0] func,
    output we,
    output imm,
    output R_or_I,
    output J,
    output JAL,
    output JR,
    output BEQ
    );
reg lw1,lh1,lb1,sw1,we1,imm1,ri,j,jal,jr,beq;
reg [5:0] code;
reg [2:0] func1;

assign lw=lw1;
assign lh=lh1;
assign lb=lb1;
assign sw=sw1;
assign func=func1;
assign we=we1;
assign imm=imm1;
assign R_or_I=ri;
assign J=j;
assign JAL=jal;
assign JR=jr;
assign BEQ=beq;

always@(*)
begin
	if(ins[31:26]==0)
	begin
		ri=1;
		code=ins[5:0];
	end
	else 
	begin
		ri=0;
		code=ins[31:26];
	end
	if(ri==1&&code==6'b100001)//addu
	begin
		lw1=0;
		lh1=0;
		lb1=0;
		sw1=0;
		func1=0;
		we1=1;
		imm1=0;
		j=0;
		jal=0;
		jr=0;
		beq=0;
	end
	else if(ri==0&&code==6'b001111)//lui
	begin
		lw1=0;
		lh1=0;
		lb1=0;
		sw1=0;
		func1=5;
		we1=1;
		imm1=0;
		j=0;
		jal=0;
		jr=0;
		beq=0;
	end
	else if(ri==0&&code==6'b001101)//ori
	begin
		lw1=0;
		lh1=0;
		lb1=0;
		sw1=0;
		func1=2;
		we1=1;
		imm1=1;
		j=0;
		jal=0;
		jr=0;
		beq=0;
	end
	else if(ri==1&&code==6'b100011)//subu
	begin
		lw1=0;
		lh1=0;
		lb1=0;
		sw1=0;
		func1=1;
		we1=1;
		imm1=0;
		j=0;
		jal=0;
		jr=0;
		beq=0;
	end
	else if(ri==0&&code==6'b100011)//lw
	begin
		lw1=1;
		lh1=0;
		lb1=0;
		sw1=0;
		func1=0;
		we1=1;
		imm1=0;
		j=0;
		jal=0;
		jr=0;
		beq=0;
	end
	else if(ri==0&&code==6'b100001)//lh
	begin
		lw1=0;
		lh1=1;
		lb1=0;
		sw1=0;
		func1=0;
		we1=1;
		imm1=0;
		j=0;
		jal=0;
		jr=0;
		beq=0;
	end
	else if(ri==0&&code==6'b100000)//lh
	begin
		lw1=0;
		lh1=0;
		lb1=1;
		sw1=0;
		func1=0;
		we1=1;
		imm1=0;
		j=0;
		jal=0;
		jr=0;
		beq=0;
	end
	else if(ri==0&&code==6'b101011)//sw
	begin
		lw1=0;
		lh1=0;
		lb1=0;
		sw1=1;
		func1=0;
		we1=0;
		imm1=0;
		j=0;
		jal=0;
		jr=0;
		beq=0;
	end
	else if(ri==0&&code==6'b000100)//beq
	begin
		lw1=0;
		lh1=0;
		lb1=0;
		sw1=0;
		func1=3;
		we1=0;
		imm1=0;
		j=0;
		jal=0;
		jr=0;
		beq=1;
	end
	else if(ri==0&&code==6'b000010)//j
	begin
		lw1=0;
		lh1=0;
		lb1=0;
		sw1=0;
		func1=0;
		we1=0;
		imm1=0;
		j=1;
		jal=0;
		jr=0;
		beq=0;
	end
	else if(ri==0&&code==6'b000011)//jal
	begin
		lw1=0;
		lh1=0;
		lb1=0;
		sw1=0;
		func1=0;
		we1=1;
		imm1=0;
		j=0;
		jal=1;
		jr=0;
		beq=0;
	end
	else if(ri==1&&code==6'b001000)//jr
	begin
		lw1=0;
		lh1=0;
		lb1=0;
		sw1=0;
		func1=0;
		we1=0;
		imm1=0;
		j=0;
		jal=0;
		jr=1;
		beq=0;
	end
	else
	begin
		lw1=0;
		lh1=0;
		lb1=0;
		sw1=0;
		func1=0;
		we1=0;
		imm1=0;
		j=0;
		jal=0;
		jr=0;
		beq=0;
	end
end

endmodule
