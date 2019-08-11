module mux4(input [3:0] a,
            input [3:0] b,
            input [3:0] c,
            input [3:0] d,
            input [1:0] s,
            output reg [3:0] y);
always @(s)
begin
    case (s)
    0: y = a;
    1: y = b;
    2: y = c;
    3: y = d;
    endcase
end
endmodule