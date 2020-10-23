`timescale 1ns/1ns
module and_or_prop_delay(A,B,C,D,E);
    input A,B,C;
    output D,E;
    wire w1;
    and  #30 (w1,A,B);
    not  #10 (E,C);
    or #20  (D,w1,E);
endmodule
