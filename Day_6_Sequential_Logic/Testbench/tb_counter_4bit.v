`timescale 1ns / 1ps

module tb_counter_4bit;

    reg clk, rst ;
    
    wire [3:0] q;

 counter_4bit dut(
    
    .clk(clk),
    .rst(rst),
    .q(q)
 
 );
    
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
        
        rst = 1;
        #12;
        
        rst = 0;
        #200;
        
        rst = 1 ;
        #10;
        
        rst = 0;
        #40; 
      
    $finish;  
        
    end
endmodule
