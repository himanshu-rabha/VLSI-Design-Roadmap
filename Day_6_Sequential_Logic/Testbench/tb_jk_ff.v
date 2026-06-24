`timescale 1ns / 1ps

module tb_jk_ff;
    
    reg clk, j, k, rst;
    
    wire q;
    
    jk_ff dut(
    
        .clk(clk),
        .j(j),
        .k(k),
        .rst(rst),
        .q(q)
        
    );
    
    initial clk= 0;
    always #5 clk = ~clk;
    
    initial begin 
    
    rst = 1 ;
    j = 0; 
    k =0;
    #10;
    
    rst = 0;
    #5;
    
    j = 0;
    k = 0;
    #10;
    
    j = 0;
    k = 1;
    #10;
    
    j = 1;
    k = 0;
    #10;
    
    j = 1;
    k = 1;
    #10;
    
    rst = 1;
    #10;
    
    $finish;
    end
endmodule
