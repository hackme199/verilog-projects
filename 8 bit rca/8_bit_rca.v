module half_adder(input a,b, output c_out,sum);
    xor (sum,a,b);
    and (c_out,a,b);
endmodule

module full_adder(input a,b,c_in, output c_out, sum);
    wire w1,w2,w3;
    half_adder HF0(c_in,w2,w3,sum);
    half_adder HF1(a,b,w1,w2);
    or (c_out,w1,w3);
endmodule

module four_bit_rca(input [3:0] a,b, input c_in, output c_out,output[3:0] sum);
    wire c_in1,c_in2,c_in3;
    full_adder FA0(a[0],b[0],c_in,c_in1,sum[0]);
    full_adder FA1(a[1],b[1],c_in1,c_in2,sum[1]);
    full_adder FA2(a[2],b[2],c_in2,c_in3,sum[2]);
    full_adder FA3(a[3],b[3],c_in3,c_out,sum[3]);
endmodule

module right_bit_rca(input [7:0] a,b, input c_in, output c_out, output [7:0] sum );
    wire c_in4;
    four_bit_rca FB_RCA0(a[3:0],b[3:0],c_in,c_in4,sum[3:0]);
    four_bit_rca FB_RCA1(a[7:4],b[7:4],c_in4,c_out,sum[7:4]);
endmodule    