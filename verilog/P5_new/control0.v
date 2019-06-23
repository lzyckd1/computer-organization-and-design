`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:28 01/01/2019 
// Design Name: 
// Module Name:    control0 
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
module control0(
    input [31:0] ins,
    output [1:0] Tuse,
    output [1:0] Tnew,
    output [4:0] rs,
    output [4:0] rt,
    output [4:0] rd
    );
reg ri;
reg [1:0] u,n;
reg [4:0] s,t,d;

assign Tuse=u;
assign Tnew=n;
assign rs=s;
assign rt=t;
assign rd=d;
initial
begin
	ri=0;
	u=0;
	n=0;
	s=0;
	t=0;
	d=0;
end
always@(*)
begin
	if(ins[31:26]==0)ri=0;
	else ri=1;
	if(ins==0)
	begin
	s=0;
	t=0;
	d=0;
	u=0;
	n=0;
	end
	else if(ri==0&&ins[5:0]==6'b100001)//addu
	begin
		s=ins[25:21];
		t=ins[20:16];
		d=ins[15:11];
		u=1;
		n=1;
	end
	else if(ri==0&&ins[5:0]==6'b100011)//subu
	begin
		s=ins[25:21];
		t=ins[20:16];
		d=ins[15:11];
		u=1;
		n=1;
	end
	else if(ri==1&&ins[31:26]==6'b001101)//ori
	begin
		s=ins[25:21];
		t=0;
		d=ins[20:16];
		u=1;
		n=1;
	end
	else if(ri==1&&ins[31:26]==6'b001111)//lui
	begin
		s=0;
		t=0;
		d=ins[20:16];
		u=10;
		n=1;
	end
	else if(ri==1&&ins[31:26]==6'b100011)//lw
	begin
		s=ins[25:21];
		t=0;
		d=ins[20:16];
		u=1;
		n=2;
	end
	else if(ri==1&&ins[31:26]==6'b101011)//sw
	begin
		s=ins[25:21];
		t=ins[20:16];
		d=0;
		u=1;
		n=0;
	end
	else if(ri==1&&ins[31:26]==6'b000101)//beq
	begin
		s=ins[25:21];
		t=ins[20:16];
		d=0;
		u=0;
		n=0;
	end
	else if(ri==1&&ins[31:26]==6'b000100)//bne
	begin
		s=ins[25:21];
		t=ins[20:16];
		d=0;
		u=0;
		n=0;
	end
	else if(ri==1&&ins[31:26]==6'b000010)//j
	begin
		s=0;
		t=0;
		d=0;
		u=10;
		n=0;
	end
	else if(ri==1&&ins[31:26]==6'b000011)//jal
	begin
		s=0;
		t=0;
		d=31;
		u=10;
		n=0;
	end
	else if(ri==0&&ins[5:0]==6'b001000)//jr
	begin
		s=ins[25:21];
		t=0;
		d=0;
		u=0;
		n=0;
	end
	else
	begin
	s=0;
	t=0;
	d=0;
	u=10;
	n=0;
	end
end
endmodule
