`timescale 1 ns / 1 ns
module bus(input [2:0] a, input [1:0] b, output [6:0] y);
    assign #10 y = {a, b, 2'b11};
endmodule