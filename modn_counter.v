`timescale 1ns / 1ps

module modn_counter(
    Clk,
    reset,
    UpOrDown,  
    Count
    );
    parameter N=11;
    parameter width=4;
    
    input Clk,reset,UpOrDown;
    output [width-1 : 0] Count;
   
    reg [width-1 : 0] Count = 0;  
    
     always @(posedge(Clk) or posedge(reset))
     begin
        if(reset == 1) 
            Count <= 0;
        else    
            if(UpOrDown == 1)   //Up mode selected
                if(Count == N-1)
                    Count <= 0;
                else
                    Count <= Count + 1; 
            else  //Down mode selected
                if(Count == 0)
                    Count <= N-1;
                else
                    Count <= Count - 1; 
     end    
    
endmodule
