`timescale 1ns / 1ps

module decoder_4to16_en(
    
    input a,
    input b,
    input c, input d,
    input en,
    
    output y0,
    output y1,
    output y2,
    output y3,
    output y4,
    output y5,
    output y6,
    output y7,output y8, output y9, output y10, output y11, output y12,
    output y13, output y14, output y15
    
    );
    
    decoder_3to8_en dec1(
        
        .en(en & ~a),
        .a(b), .b(c), .c(d),
        .y0(y0),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5),.y6(y6),.y7(y7)
    );
    
    decoder_3to8_en dec2(
        
        .en(en & a),
        .a(b), .b(c), .c(d),
        .y0(y8),.y1(y9),.y2(y10),.y3(y11),.y4(y12),.y5(y13),.y6(y14),.y7(y15)
    );
    
endmodule
