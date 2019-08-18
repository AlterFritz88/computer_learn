module prior_cases(input [3:0] d, output reg [3:0] q);
    always @(*)
        casez (d)
            4'b1??? : q <= 4'b0000;
            4'b01?? : q <= 4'b1100;
            default : q <= 4'b1111;
        endcase
endmodule