module decoder_2x4(input A,B,enable output D[0:3]);
    assign 
        D[0] = !(!(A)&&!(B)&&!(enable)),
        D[1] = !(!(A)&&(B)&&!(enable)),
        D[2] = !((A)&&!(B)&&!(enable)),
        D[3] = !((A)&&(B)&&!(enable));
endmodule