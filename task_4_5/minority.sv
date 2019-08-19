module minority(input a, b, c, output y);
    assign y = (a+b+c > 1) ? 1 : 0;
endmodule