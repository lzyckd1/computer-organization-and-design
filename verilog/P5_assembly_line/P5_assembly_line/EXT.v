`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:28:56 12/24/2018 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
    input [15:0] imm,
    output [31:0] imm_0,
    output [31:0] imm_s
    );
assign imm_0={16'h0000,imm};
assign imm_s=(imm[15]==0)?{16'h0000,imm}:{16'hffff,imm};

endmodule
