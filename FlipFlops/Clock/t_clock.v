module t_clock;
    //reg I;
    wire O;

    clock M1(O);
    initial #100 $finish;

endmodule