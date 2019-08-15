module inv(input [3:0] d, output reg [3:0] q);
    always @(*)
        q = ~d;
endmodule