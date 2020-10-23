module mux_4_x_1_beh(input A,B,C,D, input [0:1] select, output m_out);
    always @(A,B,C,D,select) begin
        case(select) 
            2'b00: m_out = A;//could it be m_out <= A;   ??
            2'b01: m_out = B;
            2'b10: m_out = C;
            2'b11: m_out = D;
        endcase
    end
endmodule