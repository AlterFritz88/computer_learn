module top(input [3:0] a1, input [3:0] a2, output [3:0] q);
    mux_par #(4) under(a1, a2, q);
endmodule