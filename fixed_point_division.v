`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2023 18:48:21
// Design Name: 
// Module Name: fixed_point_division
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fixed_point_division(divisor, dividend, remainder, result);

input [7:0] divisor, dividend;
output reg [7:0] result, remainder;


integer i;
reg [7:0] divisor_copy, dividend_copy;
reg [7:0] temp;

always @(divisor or dividend)
begin
	divisor_copy = divisor;
	dividend_copy = dividend;
	temp = 0; 
	for(i = 0;i < 8;i = i + 1)
	begin
		temp = {temp[6:0], dividend_copy[7]};
		dividend_copy[7:1] = dividend_copy[6:0];
		
		temp = temp - divisor_copy;
		
		if(temp[7] == 1)
		begin
		
			dividend_copy[0] = 0;
			temp = temp + divisor_copy;
		end
		else
		begin
		
			dividend_copy[0] = 1;
		end
	end
	result = dividend_copy;
	remainder = dividend - (divisor_copy*dividend_copy);
end
endmodule