`timescale 1ns / 1ps

module tb_comparator_1bit;

    reg a,b;
    wire gt,lt,eq;
    
    comparator_1bit uut(
        
        .a(a),.b(b),.gt(gt),.lt(lt),.eq(eq)
        
    );
    
    initial begin 
    
        a=0;b=0;#10;
        a=0;b=1;#10;
        a=1;b=0;#10;
        a=1;b=1;#10;
    
    
    $finish;
    end
    
endmodule
