module decoder_2_x_4_beh(input A,B,enable, output [0:3] D);
    always @(A,B,enable) begin//'always' makes a procedural block inside which sequential statements are placed but '<=' makes all statements concurrent
        D[0] <= !(!(A)&&!(B)&&!(enable)),//non blocking assignment(<=) : makes all the statements concurrent
        D[1] <= !(!(A)&&(B)&&!(enable)),
        D[2] <= !((A)&&!(B)&&!(enable)),
        D[3] <= !((A)&&(B)&&!(enable));
    end
endmodule