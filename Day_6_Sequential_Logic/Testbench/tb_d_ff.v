`timescale 1ns / 1ps

module tb_d_ff;

  reg clk, d;
  wire q;
  
  d_ff dut(
   
   .clk(clk),
   .d(d),
   .q(q)
   
  
  );
  
  always #5 clk=~clk;
  
  initial begin
  
  clk=0;
  d=0;
  
  #7 d =1;
  #10 d =10;
  #10 d =1;
  #10 d =0;
  #12 d =1;
  
  
  
  #10;
  $finish;
  end

endmodule
