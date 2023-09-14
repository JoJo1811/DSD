`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2023 21:27:04
// Design Name: 
// Module Name: prbs_sequence_generator
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


module prbs(
    input clk,
    input rst,
    output out
    );
    reg [3:0] temp;
    
    always @ (posedge clk or posedge rst)
    begin
     if(rst)
       temp =4'b1000;
      else if(clk)
      
      temp <={temp[1] ^ temp[0],temp[3],temp[2],temp[1]}; 
     end
  assign out = temp[0];  
endmodule
    

