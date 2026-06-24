`timescale 1ns / 1ps

module tb_d_ff_rst;

  reg clk, rst,d;
  
  wire q;
  
  d_ff_rst dut(
    
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q)
  
  );
  
  always #5 clk = ~clk;
  
  initial begin
  
     clk=0;
     rst=1;
     d=0;
     
     #12 rst=0;
     
     #7 d = 0;
     #10 d = 1;
     #12 d = 0;
     
     #5 rst =1;
     #15 d = 1;
     
     #10 rst =0;
     #10 d = 0;
     
     #7 d=1;
     
     #10;
     $finish;
   
  end
  
endmodule
