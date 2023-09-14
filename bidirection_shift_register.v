`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2023 19:27:58
// Design Name: 
// Module Name: bidirection_shift_register
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


module bidirection_shift_register(
 input clk,rst,dir,d,
 output reg [n-1:0]q,
 output reg out    
     );
  parameter n = 4;
   
  always @ (posedge clk)
    begin
     
      if(rst)
         q = 4'b0000;
       else 
          begin
           case(dir)
              0  : begin  q = {q[n-2:0],d}; out <= q[0]; end
              1  : begin  q = {d,q[n-1:1]}; out <= q[0]; end
           endcase
          end
             
    end              
endmodule