module T_FF(output Q, input T,clk,rst)
    wire DT;
    assign DT = Q^T;
    DFF M1(Q,DT,clk,rst);
endmodule