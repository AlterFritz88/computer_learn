module xor_m (input [3:0] a, input [3:0] b, output [3:0] y);
//    if (a - b == 4'b0000) assign y = 1;
//    else assign y = 0;
    assign y = (a-b) ? 1 : 0;
endmodule