`timescale 1ns / 1ps

module tb_decoder_2to4_en;
    
    reg en;
    reg a;
    reg b;
    
    wire y0;
    wire y1;
    wire y2;
    wire y3;
    
    decoder_2to4_en uut(
        
        .en(en),
        .a(a),
        .b(b),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3)
        
    );
    
    initial begin
    
    en=0; a=0; b=0; #10;
    en=0; a=0; b=1; #10;
    en=0; a=1; b=0; #10;
    en=0; a=1; b=1; #10;
    
    en=1; a=0; b=0; #10;
    en=1; a=0; b=1; #10;
    en=1; a=1; b=0; #10;
    en=1; a=1; b=1; #10;
    
    $finish;
    end
    
    
endmodule
