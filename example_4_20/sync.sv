module sync(input c, input [3:0] d, output reg [3:0] q);
    reg [3:0] inner;
    always @(posedge c)
        begin
        inner <= d;
        q <= inner;
        end
endmodule