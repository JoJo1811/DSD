`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2023 23:16:20
// Design Name: 
// Module Name: subtractor_8bit
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


module subtractor_8bit(
 input [7:0] a,[7:0] b,[7:0]D,
 output Borrow
    );
    wire x1,x2,x3,x4,x5,x6,x7;
    
    full_subtractor  s1(a[0],b[0],1'b0,x1,D[0]);
    full_subtractor  s2(a[1],b[1],1'b0,x2,D[1]);
    full_subtractor  s3(a[2],b[2],1'b0,x3,D[2]);
    full_subtractor  s4(a[3],b[3],1'b0,x4,D[3]);
    full_subtractor  s5(a[4],b[4],1'b0,x5,D[4]);
    full_subtractor  s6(a[5],b[5],1'b0,x6,D[5]);
    full_subtractor  s7(a[6],b[6],1'b0,x7,D[6]);
    full_subtractor  s8(a[7],b[7],1'b0,Borrow,D[7]);
    
endmodule

module full_subtractor(
    input x,y,z,
    output borrow,diff
    );
    
    assign diff = x^y^z;
    assign borrow = ~x^y | ~x^z | y^z;
endmodule
