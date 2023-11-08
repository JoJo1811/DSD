`timescale 1ns / 1ps

module univ_counter(
Resetn,Clock,Q,modsel
    );
input Resetn,Clock,modsel;
output[3:0] Q;
reg [3:0] Q;
always@(posedge Clock)
if (!Resetn)
Q <= 0;
else if (modsel == 0)
begin
if (Q == 4'b1111)
Q <= 4'b0000;
else
Q <= Q + 1;
end

else
begin
if (Q == 4'b0000)
Q <= 4'b1111;
else
Q <= Q - 1;
end     
endmodule
