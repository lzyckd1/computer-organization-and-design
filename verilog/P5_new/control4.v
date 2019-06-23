`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:00:25 01/01/2019 
// Design Name: 
// Module Name:    control4 
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
module control4(
    input [31:0] ins,
    output we,
    output [1:0] wd_type,
    output [4:0] addr
    );
reg w,ri;
reg [1:0] a;
reg [4:0] b;
initial
begin
	ri=0;
	w=0;
	a=0;
	b=0;
end

assign we=w;
assign wd_type=a;
assign addr=b;

always@(*)
begin
	if(ins[31:26]==0)ri=0;
	else ri=1;
	if(ins==0)
	begin
	w=0;
	a=0;
	b=0;
	end
	else if(ri==0&&ins[5:0]==6'b100001)//addu
	begin
		w=1;
		a=0;
		b=ins[15:11];
	end
	else if(ri==0&&ins[5:0]==6'b100011)//subu
	begin
		w=1;
		a=0;
		b=ins[15:11];
	end
	else if(ri==1&&ins[31:26]==6'b001101)//ori
	begin
		w=1;
		a=0;
		b=ins[20:16];
	end
	else if(ri==1&&ins[31:26]==6'b001111)//lui
	begin
		w=1;
		a=0;
		b=ins[20:16];
	end
	else if(ri==1&&ins[31:26]==6'b100011)//lw
	begin
		w=1;
		a=1;
		b=ins[20:16];
	end
	else if(ri==1&&ins[31:26]==6'b000011)//jal
	begin
		w=1;
		a=2;
		b=31;
	end
	else
	begin
		w=0;
		a=0;
		b=0;;
	end
end

endmodule
