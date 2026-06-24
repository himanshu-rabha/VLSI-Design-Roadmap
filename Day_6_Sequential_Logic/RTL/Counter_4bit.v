`timescale 1ns / 1ps

module counter_4bit(
    
    input rst,
    input clk,
    
    output reg [3:0] q
    
    );
    
    always @(posedge clk) begin
        
        if(rst)
            q <= 4'b0000;
        else 
            q <= q + 1;
    end
endmodule
