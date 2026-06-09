`timescale 1ns / 1ps

module decoder_2to4_en(
    input en,
    input a,
    input b,
    
    output y0,
    output y1,
    output y2,
    output y3
    );
    
    assign y0=en & (~a & ~b);
    assign y1=en & (~a & b);
    assign y2=en & (a & ~b);
    assign y3=en & (a & b);
    
    
endmodule
