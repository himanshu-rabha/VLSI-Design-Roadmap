`timescale 1ns / 1ps

module tb_alu_4bit;

    reg [3:0]a, b;
    reg [1:0] sel;
    wire  [3:0] result;
    
    alu_4bit uut(
        
        .a(a),.b(b),.sel(sel),.result(result)
    
    );
    
    initial begin
        
        a=4'b0011; b=4'b0101;sel=2'b00; #10;
        a=4'b0100; b=4'b1000;sel=2'b01; #10;
        a=4'b0110; b=4'b0010;sel=2'b10; #10;
        a=4'b1000; b=4'b1001;sel=2'b11; #10;
        a=4'b0100; b=4'b0101;sel=2'b10; #10;
        
     $finish;
     end   
    
endmodule
