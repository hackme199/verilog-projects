module binary_adder(input [3:0] A,B,input c_in, output [3:0] sum,output c_out);
    assign {c_out, sum} = A+B+c_in;
endmodule