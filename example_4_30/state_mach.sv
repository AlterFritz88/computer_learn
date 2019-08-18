module state_mach (input clk, input rst, output [1:0] y);
    reg [1:0] state;
    reg [1:0] nextstate;
    parameter S0=0, S1=1, S2=2;
    always @(posedge clk, posedge rst)
        if (rst) state <= S0;
        else state <= nextstate;

    always @(state)
        case (state)
            S0 : nextstate = S1;
            S1 : nextstate = S2;
            S2 : nextstate = S0;
            default : nextstate = S0;
        endcase
    assign y = state;
endmodule