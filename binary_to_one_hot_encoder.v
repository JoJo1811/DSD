`timescale 1ns / 1ps

module binary_to_one_hot_encoder(
    input [3:0] a,
    output [15:0] b
    );

      assign b = 1'b1 <<a;
    
endmodule
