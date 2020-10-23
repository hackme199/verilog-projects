module DFF(output reg Q, input D,clk,rst);
    always @(posedge clk,negedge rst)
        if (!rst) Q <= 1'b0;
        else Q <= D;
endmodule