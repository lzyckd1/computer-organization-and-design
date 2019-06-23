`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:42:02 10/16/2018 
// Design Name: 
// Module Name:    id_fsm 
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
module id_fsm(
    input [7:0] char,
    input clk,
    output reg out=0
    );

integer state=0;
always @(posedge clk)
begin
	case (state)
		0:
			begin
				if(((char>=97)&&(char<=122))||((char>=65)&&(char<=90)))
				begin
				state<=1;
				out<=0;
				end
				else
				begin
				state<=0;
				out<=0;
				end
			end
		1:
			begin
				if ((char>=48)&&(char<=57))
				begin
					state<=2;
					out<=1;
				end
				else if(((char>=97)&&(char<=122))||((char>=65)&&(char<=90)))
				begin
				state<=1;
				out<=0;
				end
				else
				begin
				state<=0;
				out<=0;
				end
			end		
		2:
			begin
				if ((char>=48)&&(char<=57))
				begin
					state<=2;
					out<=1;
				end
				else if(((char>=97)&&(char<=122))||((char>=65)&&(char<=90)))
				begin
				state<=1;
				out<=0;
				end
				else
				begin
				state<=0;
				out<=0;
				end
			end
		endcase
end

endmodule
