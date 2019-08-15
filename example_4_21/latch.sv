module latch(input c, input [3:0] d, output reg [3:0] q);
    always @(c, d)
        q <= d;
endmodule