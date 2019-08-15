module mux2(input [3:0] a1, input [3:0] a2, input s, output [3:0] y);
    tristate t0(a1, s, y);
    tristate t1(a2, ~s, y);
endmodule