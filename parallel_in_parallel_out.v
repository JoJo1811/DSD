`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2023 23:41:35
// Design Name: 
// Module Name: parallel_in_parallel_out
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


module parallel_in_parallel_out(
    input clk,
    input rst,
    input [3:0] d,
    output reg [3:0] q
    );
    always @ (posedge clk)
    begin 
    if(rst)
    q<=4'b0000;
    else
    q<=d;
    
    end
endmodule
