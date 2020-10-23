module t_D_latch;
    reg D,enable;
    wire Q;
    D_latch M1(Q,D,enable);

    initial #100 $finish;

    initial begin
        enable = 0; D = 0;
        #10 enable = 0; D = 1;
        #10 enable = 1; D = 0;
        #10 enable = 1; D = 1;
        #10 enable = 0; D = 1;
        #10 enable = 0; D = 1;
        #10 enable = 1; D = 1;
    end

endmodule