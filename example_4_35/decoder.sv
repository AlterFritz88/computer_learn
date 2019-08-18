module decoder #(parameter N = 3) (input [N-1:0] a, output reg [N**2-1:0] y);
    always@(*)
        begin
            y = 0;
            y[a] = 1;
        end
endmodule