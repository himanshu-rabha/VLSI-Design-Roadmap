`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 17:14:48
// Design Name: 
// Module Name: tb_mux_8to1
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


module tb_mux_8to1;
       
     reg i0;
     reg i1;
     reg i2;
     reg i3;
     reg i4;
     reg i5;
     reg i6;
     reg i7;
     reg s0;
     reg s1;
     reg s2;
     
     wire y;
     
     mux_8to1 utt(
        
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .i4(i4),
        .i5(i5),
        .i6(i6),
        .i7(i7),
        .s0(s0),
        .s1(s1),
        .s2(s2),
        .y(y)        
     );
    
    initial begin
    $monitor("Time=%0t | S2=%b S1=%b S0=%b | Y=%b",
             $time,s2,s1,s0,y);
    end
    
    initial begin
    
        i0=0; i1=1; i2=0; i3=1; i4=0; i5=1; i6=0; i7=1;
        s2=0; s1=0; s0=0; #10;
        s2=0; s1=0; s0=1; #10;
        s2=0; s1=1; s0=0; #10;
        s2=0; s1=1; s0=1; #10;
        s2=1; s1=0; s0=0; #10;
        s2=1; s1=0; s0=1; #10;
        s2=1; s1=1; s0=0; #10;
        s2=1; s1=1; s0=1; #10;
        
        i0=1; i1=0; i2=1; i3=0; i4=1; i5=0; i6=1; i7=0;
        s2=0; s1=0; s0=0; #10;
        s2=0; s1=0; s0=1; #10;
        s2=0; s1=1; s0=0; #10;
        s2=0; s1=1; s0=1; #10;
        s2=1; s1=0; s0=0; #10;
        s2=1; s1=0; s0=1; #10;
        s2=1; s1=1; s0=0; #10;
        s2=1; s1=1; s0=1; #10;
        
    $finish;
    end
endmodule
