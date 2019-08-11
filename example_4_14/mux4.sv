module mux4 (input [7:0] a1, a2, a3,
             input [1:0] s,
             output [7:0] y);
    wire [7:0] step;
    mux2 first_step(a1, a2, s[0], step);
    mux2 final_step(step, a3, s[1], y);
endmodule