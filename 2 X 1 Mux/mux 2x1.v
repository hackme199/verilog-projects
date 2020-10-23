module mux_2_x_1(input A,B,select, output m_out);
    assign m_out = select ? A:B;       
endmodule