`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2023 23:43:43
// Design Name: 
// Module Name: adder_subtractor_8bit
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


module bit8_adder_sub(
    input [7:0] a,
    input [7:0] b,
    input mode,
    output reg [7:0] result,
    output reg v
    );
    
    reg [7:0]com;
    
    always @ (a,b,mode)
     begin
       if(mode == 1)
        begin
          com = ~b + 1'b1;
          result = a + com;
            v = (a[7]&com[7]&~result[7]) | (~a[7]&~com[7]&result[7]); 
        end
       else if(mode == 0)
        begin
           result = a + b;
            v = (a[7]&b[7]&~result[7]) | (~a[7]&~b[7]&result[7]); 
        end
      end   
       
           
endmodule