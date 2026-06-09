`timescale 1ns / 1ps

module decoder_3to8_en (
    
    input en,
    input a,
    input b,
    input c,
    
    output y0,
    output y1,
    output y2,
    output y3,
    output y4,
    output y5,
    output y6,
    output y7

);
    
    decoder_2to4_en dec1(
        
        .en(en & ~a),
        .a(b),
        .b(c),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3)
        
    );
    
     decoder_2to4_en dec2(
        
        .en(en & a),
        .a(b),
        .b(c),
        .y0(y4),
        .y1(y5),
        .y2(y6),
        .y3(y7)
        
    );
endmodule
