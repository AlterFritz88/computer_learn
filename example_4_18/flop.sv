//module flop (input c, r, input [3:0] d, output reg [3:0] q);
//    always @(posedge r, posedge c)
//        if (r) q <= 0;
//        else q <= d;
//endmodule

module flop (input c, r, input [3:0] d, output reg [3:0] q);
    always @(posedge c)
        if (r) q <= 0;
        else q <= d;
endmodule