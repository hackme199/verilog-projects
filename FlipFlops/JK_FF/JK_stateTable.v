module JK_FF(output reg Q, output Q_b, input J,K,clk);
    assign Q_b = ~Q;
    always @(negedge clk)
        case({J,K})
            2'b00: Q <= Q;
            2'b01: Q <= 1'b0;
            2'b10: Q <= 1'b1;
            2'b11: Q <= !Q;
        endcase
endmodule