`timescale 1ns / 1ps


module n_bit_comparator(
    input [n-1:0] a,
    input [n-1:0] b,
    output reg greater,
    output reg equal,
    output reg lesser
    );
    parameter n=3 ;
    always @ (a,b)
    begin 
    
    if(a>b)
    begin
    greater = 1;
    equal   = 0;
    lesser  = 0;
    end 
    
    else if(a==b)
        begin
        greater = 0;
        equal   = 1;
        lesser  = 0;
        end 
    else if(a<b)
            begin
            greater = 0;
            equal   = 0;
            lesser  = 1;
            end 
    
    end        
endmodule