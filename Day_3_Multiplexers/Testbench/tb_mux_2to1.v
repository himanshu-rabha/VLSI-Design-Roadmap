`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 15:07:31
// Design Name: 
// Module Name: tb_mux_2to1
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


module tb_mux_2to1;
    
    reg i0;
    reg i1;
    reg s;
    
    wire y;
    
    mux_2to1 uut(
        .i0(i0),
        .i1(i1),
        .s(s),
        .y(y)
    
    );
    
    initial begin
        $monitor("Time=%0t | S=%b | I0=%b | I1=%b | Y=%b",
                 $time, s, i0, i1, y);
    end
    
    initial begin
    
    s=0; i0=0; i1=0;
    #10;
    
    s=0; i0=1; i1=0;
    #10;
    
    s=0; i0=0; i1=1;
    #10;
    
    s=1; i0=1; i1=0;
    #10;
    
    s=1; i0=0; i1=1;
    #10;
    
    s=1; i0=1; i1=1;
    #10;
    
    
    $finish;
    end
    
endmodule
