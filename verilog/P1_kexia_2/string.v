`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:38:36 10/26/2018 
// Design Name: 
// Module Name:    string 
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
module string(
    input clk,
    input clr,
    input [7:0] in,
    output out
    );
	 reg [1:0] state;
	 reg p;
    initial begin
	 state = 0;
	 p = 0;
	 end
	 always @(posedge clk, posedge clr)
	 begin
		if(clr)
		begin
			state<=0;
			p<=0;
		end
		else
		begin
			case(state)
			0:
				begin
					if(in>=48&&in<=57)
					begin
					state<=1;
					p<=1;
					end
					else if(in==42||in==43)
					begin
					state<=2;
					p<=0;
					end
					else
					begin
					state<=2;
					p<=0;
					end
				end
			1:
				begin
					if(in>=48&&in<=57)
					begin
					state<=2;
					p<=0;
					end
					else if(in==42||in==43)
					begin
					state<=3;
					p<=0;
					end
					else
					begin
					state<=2;
					p<=0;
					end
				end
			2: p<=0;
				
			3:
				begin
					if(in>=48&&in<=57)
					begin
					state<=1;
               p<=1;
					end
					else if(in==42||in==43)
					begin
					state<=2;
					p<=0;
					end
					else
					begin
					state<=2;
					p<=0;
					end
				end
				endcase
		end
	 end
	assign out=p;
endmodule
