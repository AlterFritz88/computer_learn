module mux_par # (parameter width = 8)
    (input [width-1:0] d1, input [width-1:0] d2, output [width-1:0] q);
    assign q = d1 + d2;
endmodule