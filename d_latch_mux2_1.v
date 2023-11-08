`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2023 16:08:03
// Design Name: 
// Module Name: d_latch_mux2_1
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

module mux(a,b,s,y);
input a,b,s;
output reg  y;
always @(a or b or s)
begin
 y= (~s&a) | (s&b);
end
endmodule


module d_latch(d,clock,q);
input d,clock;
inout q;

mux mux1(.a(q),.b(d),.s(clock),.y(q));

endmodule