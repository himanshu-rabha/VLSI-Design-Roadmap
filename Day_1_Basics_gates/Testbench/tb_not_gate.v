`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2026 14:29:19
// Design Name: 
// Module Name: tb_not_gate
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


module tb_not_gate;
    
    reg a;
    wire b;
    
    not_gate uut(
    .a(a),.b(b)
    );
    initial begin
    
    a=0;
    #10;
    
    a=1;
    #10;
    
    $finish;
    end
    
endmodule

