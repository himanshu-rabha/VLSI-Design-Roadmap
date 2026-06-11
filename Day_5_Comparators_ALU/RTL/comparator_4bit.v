`timescale 1 ns / 1 ps 

 module comparator_4bit(
    
    input [3:0] a,
    input [3:0] b,
    
    output gt, output lt, output eq
 
 );
    
    assign gt = a > b;
    assign lt = a < b;
    assign eq = a == b;
 
 endmodule
 
