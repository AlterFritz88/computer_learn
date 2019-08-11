module fulladder(input a, b, cin, output c, s);
    wire p, g;
    assign p = a ^ b;
    assign g = a & b;

    assign s = p ^ c;
    assign c = g | (p & cin);
endmodule