`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 15:51:27
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1(
    input i0,
    input i1,
    input i2,
    input i3,
    input s0,
    input s1,
    output y
    );
    wire w1;
    wire w2;
    
    
    mux_2to1 mux_1(
        .i0(i0),
        .i1(i1),
        .s(s0),
        .y(w1)
    );
    
    mux_2to1 mux_2(
        .i0(i2),
        .i1(i3),
        .s(s0),
        .y(w2)
    );
    
    mux_2to1 mux_3(
        .i0(w1),
        .i1(w2),
        .s(s1),
        .y(y)
    );
endmodule
