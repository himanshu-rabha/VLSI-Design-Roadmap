`timescale 1ns / 1ps

module tb_decoder_2to4;

    reg a;
    reg b;
    
    wire y0;
    wire y1;
    wire y2;
    wire y3;
    
    decoder_2to4 uut(
        .a(a),
        .b(b),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3)
    
    );
    
    initial begin
    
    a=0; b=0;  #10;
    a=0; b=1;  #10;
    a=1; b=0;  #10;
    a=1; b=1;  #10;
   
    
    $finish;
    end
    
endmodule
