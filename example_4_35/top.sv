module top (input [3:0] a, output [15:0] y);
    decoder #(4) dec(a, y);
endmodule