`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:18:23 12/18/2018 
// Design Name: 
// Module Name:    IM 
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
module IM(
	 input [31:0] pc_now,
    output [31:0] out
    );

integer i=0;
reg [31:0] a[0:1023];
reg [31:0] out1;
initial 
begin
	for(i=0;i<1024;i=i+1)a[i]=0;
	$readmemh("code.txt",a);
end

always@(*)
begin
	out1=a[pc_now[31:2]-14'b00110000000000];
end

assign out=out1;

endmodule