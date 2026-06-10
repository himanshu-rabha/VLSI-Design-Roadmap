`timescale 1ns / 1ps

module tb_priority_encoder_4to2;
    
    reg i3,i2,i1,i0;
    
    wire y1,y0;
    
    priority_encoder_4to2 uut(
        
        .i3(i3),.i2(i2),.i1(i1),.i0(0),
        .y1(y1),.y0(y0)
        
    );
    
    initial begin
    
    i3=0;i2=0;i1=0;i0=0;#10;
    i3=0;i2=0;i1=0;i0=1;#10;
    i3=0;i2=0;i1=1;i0=0;#10;
    i3=0;i2=1;i1=0;i0=0;#10;
    i3=1;i2=0;i1=0;i0=0;#10;
    i3=1;i2=1;i1=0;i0=0;#10;
    i3=0;i2=1;i1=1;i0=1;#10;
    
    $finish;
    end
    
endmodule
