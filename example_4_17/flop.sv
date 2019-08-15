module flop (input [3:0] d, input clk, output reg [3:0] q);
    always @(posedge clk)
        q <= d;
endmodule