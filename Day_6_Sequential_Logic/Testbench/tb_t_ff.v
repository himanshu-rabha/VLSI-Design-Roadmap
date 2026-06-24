`timescale 1ns / 1ps

module tb_t_ff;

    reg clk , t , rst ;
    wire q;
    
    
    t_ff dut(
    
        .clk(clk),
        .t(t),
        .q(q),
        .rst(rst)
    
    );
    
    initial clk =0;
    always #5 clk = ~clk;
    
    initial begin 
        
        rst = 1;
        t = 0;
        #15;
        
        rst =0;
        
        t =1 ;
        #20;
        
        t = 0;
        #20;
        
        t =1;
        #20;
        
        $finish;
        end
    
endmodule
