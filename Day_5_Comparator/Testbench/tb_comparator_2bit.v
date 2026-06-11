`timescale 1ns / 1ps

module tb_comparator_2bit;

    reg [1:0] a , b;
    wire gt,lt,eq;
    
    comparator_2bit uut(
        
        .a(a),.b(b),.gt(gt),.lt(lt),.eq(eq)
    
    );
    
    initial begin
    
        a=2'b00; b=2'b00; #10;
        a=2'b01; b=2'b00; #10;
        a=2'b10; b=2'b00; #10;
        a=2'b11; b=2'b00; #10;
        
        a=2'b01; b=2'b01; #10;
        a=2'b10; b=2'b10; #10;
        a=2'b11; b=2'b11; #10;
        
        a=2'b00; b=2'b01; #10;
        a=2'b00; b=2'b10; #10;
        a=2'b00; b=2'b11; #10;
    
    $finish;
    end
    
endmodule
