module prior(input [3:0] d, output reg [3:0] q);
    always @(*)
        if (d[0] == 1) q <= 1;
        else if (d[1] == 1) q <= 2;
        else q <= 8;
endmodule