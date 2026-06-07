`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2026 18:11:00
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder;

    reg a;
    reg b;
    reg cin;
    
    wire sum;
    wire cout;
    
    full_adder uut(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
    
    initial begin
    
    a=0; b=0; cin=0;
    #10;
    a=0; b=0; cin=1;
    #10;
    a=0; b=1; cin=0;
    #10;
    a=0; b=1; cin=1;
    #10;
    a=1; b=0; cin=0;
    #10;
    a=1; b=0; cin=1;
    #10;
    a=1; b=1; cin=0;
    #10;
    a=1; b=1; cin=1;
    #10;
    
    $finish;
    end
endmodule
