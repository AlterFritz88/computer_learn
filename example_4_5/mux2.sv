module mux2 (   input [7:0] a,
                input [7:0] b,
                input  s,
                output [7:0] y);
    assign y = s ? a : b;
endmodule