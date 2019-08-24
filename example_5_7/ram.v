module ram (input we, input [15:0] adr, input [3:0] din, output [3:0] dout);
    reg [15:0] mem [3:0];
    always @(negedge we)
        if (!we) mem[adr] <= din;
     assign dout = mem[adr];
endmodule