`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:06:03 12/31/2018 
// Design Name: 
// Module Name:    control1 
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
module control1(
    input [31:0] ins,
    output [4:0] rs,
    output [4:0] rt,
    output j_type,
    output b_type,
    output imm_type,
	 output [1:0] cmp_op
    );
reg [4:0] s,t;
reg [1:0] op;
reg j,b,i,ri;
initial
begin
	ri=0;
	s=0;
	t=0;
	j=0;
	b=0;
	i=0;
	op=0;
end

assign rs=s;
assign rt=t;
assign j_type=j;
assign b_type=b;
assign imm_type=i;
assign cmp_op=op;
always@(*)
begin
	if(ins[31:26]==0)ri=0;
	else ri=1;
	if(ins==0)
	begin
	s=0;
	t=0;
	j=0;
	b=0;
	i=0;
	op=0;
	end
	else if(ri==0&&ins[5:0]==6'b100001)//addu
	begin
		s=ins[25:21];
		t=ins[20:16];
		j=0;
		b=0;
		i=0;
		op=0;
	end
	else if(ri==0&&ins[5:0]==6'b100011)//subu
	begin
		s=ins[25:21];
		t=ins[20:16];
		j=0;
		b=0;
		i=0;
		op=0;
	end
	else if(ri==1&&ins[31:26]==6'b001101)//ori
	begin
		s=ins[25:21];
		t=0;
		j=0;
		b=0;
		i=1;
		op=0;
	end
	else if(ri==1&&ins[31:26]==6'b001111)//lui
	begin
		s=0;
		t=0;
		j=0;
		b=0;
		i=0;
		op=0;
	end
	else if(ri==1&&ins[31:26]==6'b100011)//lw
	begin
		s=ins[25:21];
		t=0;
		j=0;
		b=0;
		i=0;
		op=0;
	end
	else if(ri==1&&ins[31:26]==6'b101011)//sw
	begin
		s=ins[25:21];
		t=ins[20:16];
		j=0;
		b=0;
		i=0;
		op=0;
	end
	else if(ri==1&&ins[31:26]==6'b000100)//beq
	begin
		s=ins[25:21];
		t=ins[20:16];
		j=0;
		b=1;
		i=0;
		op=0;
	end
	else if(ri==1&&ins[31:26]==6'b000101)//bne
	begin
		s=ins[25:21];
		t=ins[20:16];
		j=0;
		b=1;
		i=0;
		op=1;
	end
	else if(ri==1&&ins[31:26]==6'b000010)//j
	begin
		s=0;
		t=0;
		j=1;
		b=0;
		i=0;
		op=0;
	end
	else if(ri==1&&ins[31:26]==6'b000011)//jal
	begin
		s=0;
		t=0;
		j=1;
		b=0;
		i=0;
		op=0;
	end
	else if(ri==0&&ins[5:0]==6'b001000)//jr
	begin
		s=ins[25:21];
		t=0;
		j=1;
		b=0;
		i=0;
		op=0;
	end
	else
	begin
	s=0;
	t=0;
	j=0;
	b=0;
	i=0;
	op=0;
	end
end

endmodule
