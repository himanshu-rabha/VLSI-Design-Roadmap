`timescale 1ns / 1ps

module encoder_4to2(
    
    input i0, input i1, input i2, input i3,
    output y1, output y0
    
    );
    
    assign y1=i2 | i3;
    assign y0=i1 | i3;
    
endmodule
