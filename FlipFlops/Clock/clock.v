module clock(O);
    output reg O;
    //input I;
    initial begin
        O = 1'b0;
        repeat(100)
            #1 O = ~O;
    end
endmodule