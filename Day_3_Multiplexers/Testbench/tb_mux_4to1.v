`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 16:20:47
// Design Name: 
// Module Name: tb_mux_4to1
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


module tb_mux_4to1;
    
    reg i0;
    reg i1;
    reg i2;
    reg i3;
    reg s1;
    reg s0;
  
    wire y;
    
    mux_4to1 uut(
        
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .s1(s1),
        .s0(s0),
        .y(y)
    );
    
    initial begin
        $monitor("Time=%0t | S1=%b S0=%b | I0=%b I1=%b I2=%b I3=%b | Y=%b",
                  $time, s1, s0, i0, i1, i2, i3, y);
    end
    
    initial begin
    
    i0=0; i1=0; i2=0; i3=0;
    s1=0; s0=0;#10;
    s1=0; s0=1;#10;
    s1=1; s0=0;#10;
    s1=1; s0=1;#10;
    
    i0=0; i1=1; i2=0; i3=1;
    s1=0; s0=0;#10;
    s1=0; s0=1;#10;
    s1=1; s0=0;#10;
    s1=1; s0=1;#10;
    
    i0=1; i1=0; i2=1; i3=0;
    s1=0; s0=0;#10;
    s1=0; s0=1;#10;
    s1=1; s0=0;#10;
    s1=1; s0=1;#10;
    
    
    i0=1; i1=1; i2=1; i3=1;
    s1=0; s0=0;#10;
    s1=0; s0=1;#10;
    s1=1; s0=0;#10;
    s1=1; s0=1;#10;
    
    
    $finish;
    end
endmodule
