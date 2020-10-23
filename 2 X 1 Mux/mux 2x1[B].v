module mux_2_x_1_beh( A,B,select,m_out );
    input A,B,select;
    output reg m_out;//why reg with output ??
    always @(A,B,select) begin//procedural block
        // m_out <= select ? A:B;//sequential statement; but connverted to concurrent using non-blocking assignment
        if (select==1) m_out = A;//---_-->blocking assignment; statements will be treated as sequential
        else m_out = B;          //--/
    end
endmodule