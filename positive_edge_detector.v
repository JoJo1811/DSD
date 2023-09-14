`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2023 09:54:50
// Design Name: 
// Module Name: positive_edge_detector
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

module pos_edge_det (
        input sig,            
        input clk,            
         output pe
         );           
 
    reg   sig_dly; 
               
  always @ (posedge clk) begin
    sig_dly <= sig;
  end
 
 
  assign pe = sig & ~sig_dly;            
endmodule 