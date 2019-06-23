`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:18:42 10/30/2018 
// Design Name: 
// Module Name:    threejinzhi 
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
module threejinzhi(
    input a0,
    input a1,
    input b0,
    input b1,
    output carry,
    output s0,
    output s1
    );
	 assign {carry,s1,s0}={a1,a0}+{b1,b0};

endmodule
