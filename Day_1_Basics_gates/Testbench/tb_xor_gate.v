`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2026 14:42:12
// Design Name: 
// Module Name: tb_xor_gate
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


module tb_xor_gate;
    reg a;
    reg b;
    
    wire c;
    
    xor_gate uut(
        .a(a),
        .b(b),
        .c(c)   
    );
    
    initial begin 
    
    a=0; b=0;
    #10;
    
    a=0; b=1;
    #10;
    
    a=1; b=0;
    #10;
    
    a=1; b=1;
    #10;
    
    $finish;
    
    end

endmodule
