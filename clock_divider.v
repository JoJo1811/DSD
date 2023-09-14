`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2023 12:40:01
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(
    input rst,
    input   clk,
    
   output reg div_by_2,div_by_4,div_by_8,div_by_16

    );
     reg  [3:0]count;
    always @ (posedge clk)
    
    begin 
    if(rst==0)
    count=4'b0000;
    
    else
  
    count = count + 1;
    
    div_by_2  = count[0];
    div_by_4  = count[1];
    div_by_8  = count[2];
    div_by_16 = count[3];
    
        
end
    
endmodule
