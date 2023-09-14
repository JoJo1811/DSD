`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2023 09:27:51
// Design Name: 
// Module Name: master_slave_ff
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


module master_slave_ff(
 input clk,s,r,
 output Q,QBAR
    );
    
    wire w1,w2,w3,w4;
    wire sclk;
    
    assign sclk = ~clk;
    
    jk_flipflop master(clk,s,r,w1,w2);
    jk_flipflop slave(sclk,w1,w2,Q,QBAR);
endmodule

module jk_flipflop(
    input clk,
    input j,
    input k,
    output reg q,
    output reg qbar
    );
    
    always @ (posedge clk)
    begin 
    
    case ({j,k})
  
       2'b00 : begin q <= q;  qbar<= ~q; end
       2'b01 : begin q <= 0;  qbar<=  1; end
       2'b10 : begin q <= 1;  qbar<=  0; end
       2'b11 : begin q <= ~q; qbar<=  q; end 
    
     endcase
    end   
endmodule
