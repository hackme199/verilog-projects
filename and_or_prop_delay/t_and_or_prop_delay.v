`timescale 1ns/1ns
module t_and_or_prop_delay;
    wire D,E;
    reg A,B,C;

    and_or_prop_delay M_UUT(A,B,C,D,E);

    initial begin
        A=1'b0;B=1'b0;C=1'b0;
        #100 A=1'b1;B=1'b1;C=1'b1;
    end

    initial #200 $finish;
endmodule
