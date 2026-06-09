`timescale 1ns / 1ps

module tb_decoder_3to8_en;
    
    reg en;
    reg a;
    reg b;
    reg c;
    
    wire y0;
    wire y1;
    wire y2;
    wire y3;
    wire y4;
    wire y5;
    wire y6;
    wire y7;
    
    decoder_3to8_en uut(
        
        .en(en),
        .a(a),
        .b(b),
        .c(c),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3),
        .y4(y4),
        .y5(y5),
        .y6(y6),
        .y7(y7)
        
    );
    initial begin
    
    en=0; a=0; b=0; c=0; #10;
    en=0; a=0; b=0; c=1; #10;
    en=0; a=0; b=1; c=0; #10;
    en=0; a=0; b=1; c=1; #10;
    en=0; a=1; b=0; c=0; #10;
    en=0; a=1; b=0; c=1; #10;
    en=0; a=1; b=1; c=0; #10;
    en=0; a=1; b=1; c=1; #10;
    
    en=1; a=0; b=0; c=0; #10;
    en=1; a=0; b=0; c=1; #10;
    en=1; a=0; b=1; c=0; #10;
    en=1; a=0; b=1; c=1; #10;
    en=1; a=1; b=0; c=0; #10;
    en=1; a=1; b=0; c=1; #10;
    en=1; a=1; b=1; c=0; #10;
    en=1; a=1; b=1; c=1; #10;
    
    $finish;
    end
endmodule
