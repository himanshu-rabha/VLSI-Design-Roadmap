`timescale 1ns / 1ps

module tb_comparator_4bit;

    reg [3:0] a, b;
    wire gt,lt,eq;
    
    comparator_4bit uut(
        
        .a(a),.b(b),.gt(gt),.lt(lt),.eq(eq)
    
    );
    
    initial begin
        
        a=4'b0000; b=4'b0000; #10;
        a=4'b0001; b=4'b0000; #10;
        a=4'b0000; b=4'b0001; #10;
        a=4'b0011; b=4'b0011; #10;
        a=4'b0000; b=4'b0000; #10;
        a=4'b1001; b=4'b1010; #10;
    
    $finish;
    end
    
endmodule
