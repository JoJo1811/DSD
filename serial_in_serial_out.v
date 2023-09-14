`timescale 1ns / 1ps

module serial_in_serial_out(
    input clk,
    input rst,
    output reg [3:0] q,
    input s_in,
    output reg s_out
    );
    

    always @ (posedge clk)
    begin
    if(rst)
    begin
    q=4'b0000;
    s_out=1'b0;
    end
    else
    begin
        q=q<<1;
        q[0]=s_in; 
        s_out = q[3];             
    end
  end
         
endmodule
