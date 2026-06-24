`timescale 1ns / 1ps

module d_ff_rst(
    input clk,
    input rst,
    input d,
    
    output reg q
    );
    
    always@(posedge clk)
    begin
      if(rst)
         q <= 0;
       else
         q <= d;
    
    end 
endmodule
