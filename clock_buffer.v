`timescale 1ns / 1ps

module clock_buffer(mclk,bclk);
input mclk;
output bclk;
buf b1(bclk,mclk);
endmodule
