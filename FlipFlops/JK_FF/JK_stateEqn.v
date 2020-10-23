module JK_FF(output reg Q, input J,K,clk,rst);
    wire JK;
    assign JK = (J & ~Q) | (~K & Q);
    DFF M1(Q,JK,clk,rst);
endmodule