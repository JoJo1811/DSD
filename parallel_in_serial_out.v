`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2023 00:24:22
// Design Name: 
// Module Name: parallel_in_serial_out
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


module parallel_in_serial_out(
    input clk,ld,rst,[3:0] d,
    output  out,
    output [3:0]q
    );
    wire x1,x2,x3;
    
     d_ff d1(clk,rst,d[0],x1);
     logic s1(d[1],x1,ld,q[0]);
     
     d_ff d2(clk,rst,q[0],x2);
     logic s2(d[2],x2,ld,q[1]);
          
     d_ff d3(clk,rst,q[1],x3);
     logic s3(d[3],x3,ld,q[2]);

     d_ff d4(clk,rst,q[2],out);                  
endmodule

module d_ff(
input clk, rst,d,
output reg q
);

always @ (posedge clk)
     begin
        if(rst)
        q = 1'b0;
        else 
        q = d;
     end      
endmodule

module logic(
 input d,si,ld,
 output q
);

assign q = (si & ld) | (d & ~ld);
endmodule




