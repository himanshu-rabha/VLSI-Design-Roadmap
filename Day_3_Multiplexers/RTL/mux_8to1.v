`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 17:02:16
// Design Name: 
// Module Name: mux_8to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_8to1(
    
    input i0,
    input i1,
    input i2,
    input i3,
    input i4,
    input i5,
    input i6,
    input i7,
    input s0,
    input s1,
    input s2,
    output y

);

    wire w1;
    wire w2;
    
    mux_4to1 mux_1(
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .s0(s0),
        .s1(s1),
        .y(w1)       
    );
    
    mux_4to1 mux_2(
        .i0(i4),
        .i1(i5),
        .i2(i6),
        .i3(i7),
        .s0(s0),
        .s1(s1),
        .y(w2)       
    );
    
    mux_2to1 mux_3(
        .i0(w1),
        .i1(w2),
        .s(s2),
        .y(y)       
    );
    

endmodule
