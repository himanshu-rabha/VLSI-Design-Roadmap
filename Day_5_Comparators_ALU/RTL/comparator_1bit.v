`timescale 1ns / 1ps

module comparator_1bit(
    input a, input b,
    output gt, output lt, output eq
    );
    
    assign gt= (a & ~b);
    assign lt= (~a &  b);
    assign eq= ~(a ^ b);
    
endmodule
