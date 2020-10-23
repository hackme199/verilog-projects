module D_latch(Q,D,enable);
    output reg Q;
    input D,enable;
    always @(enable,D)
        if(enable) Q <=D;
endmodule