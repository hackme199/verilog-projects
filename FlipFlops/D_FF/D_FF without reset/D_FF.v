module D_FF(D,Q,clk)
    output reg Q;
    input D,clk;

    always @(posedge clk)
        Q <= D;
endmodule