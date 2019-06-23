`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:22:46 12/02/2018 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input write,
	 input lh,
	 input lb,
    input [31:0] address,
    input [31:0] in,
	 input [31:0] ins,
    output [31:0] out,
    input clk,
    input clr
    );
reg [31:0] a[1023:0];
reg [31:0] tem,tem1,temp1,temp2,temp0,temp,count;
integer i=0;

initial 
begin
count=0;
	temp=0;
	temp0=0;
	temp1=0;
	temp2=0;
	for(i=0;i<1024;i=i+1)a[i]=0;
end
always@(*)
begin
	temp1=(address[1]==1)?(a[address[11:2]][31]==1?{16'hffff,a[address[11:2]][31:16]}:{16'h0000,a[address[11:2]][31:16]}):(a[address[11:2]][15]==1?{16'hffff,a[address[11:2]][15:0]}:{16'h0000,a[address[11:2]][15:0]});
		temp0=a[address[11:2]];
		case(address[1:0])
		0:temp2=(a[address[11:2]][7]==1)?{24'hffffff,a[address[11:2]][7:0]}:{24'h000000,a[address[11:2]][7:0]};
		1:temp2=(a[address[11:2]][15]==1)?{24'hffffff,a[address[11:2]][15:8]}:{24'h000000,a[address[11:2]][15:8]};
		2:temp2=(a[address[11:2]][23]==1)?{24'hffffff,a[address[11:2]][23:16]}:{24'h000000,a[address[11:2]][23:16]};
		3:temp2=(a[address[11:2]][31]==1)?{24'hffffff,a[address[11:2]][31:24]}:{24'h000000,a[address[11:2]][31:24]};
		endcase
end

always@(posedge clk)
begin
	if(clr==1)
	begin
	count=0;
		for(i=0;i<1024;i=i+1)a[i]=0;
	end
	else
	begin
		
		if(write==1)
		begin
			tem={20'b00000000000000000011,ins[11:0]};
			tem1={22'b0,address[11:2],2'b00};
			a[address[11:2]]=in;
			$display("%d@%h: *%h <= %h",count,tem,tem1,in);
		end
	end
end
assign out=(lh==1||lb==1)?(lh==1?temp1:temp2):temp0;

endmodule
