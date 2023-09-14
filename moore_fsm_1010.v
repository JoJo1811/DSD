`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2023 22:01:33
// Design Name: 
// Module Name: moore_fsm_1010
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


module moore_fsm_1010(
    input clk,
    input rst,
    input in,
    output reg out
    );
   
    reg [2:0]state,next_state;
    parameter s0 = 3'b001;
    parameter s1 = 3'b010;
    parameter s2 = 3'b011;
    parameter s3 = 3'b100;
    parameter s4 = 3'b101;
    
    always @ (state or in)
     begin
     case (state)
       s0: if (in == 1'b1)
              begin
             next_state = s1;
              out=1'b0;
              end
          else
              begin
              next_state = s0;
              out=1'b0;
              end
              
        s1: if (in == 1'b0)
              begin
              next_state = s2;
              out=1'b0;
              end
            else
              begin
              next_state = s1;
              out=1'b0;
              end              
        s2: if (in == 1'b1)
               begin
               next_state = s3;
               out=1'b0;
               end
            else
               begin
               next_state = s0;
               out=1'b0;
               end              
         s3: if (in == 1'b0)
             begin
             next_state = s4;
             out=1'b0;
             end
           else
             begin
             next_state = s1;
             out=1'b0;
             end               
          s4: if (in == 1'b0)
             begin
             next_state = s0;
             out=1'b1;
             end
           else
             begin
             next_state = s1;
             out=1'b1;
             end 
          default: next_state = s0;   
       endcase
     end      
     always@(posedge clk)
               begin
                if (rst)
                  state <= s0;
                else 
                  state <= next_state;
               end       
endmodule

