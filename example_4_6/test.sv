`timescale 1 ns / 1 ns

module test;
    reg [3:0] a;
    reg [3:0] b;
    reg [3:0] c;
    reg [3:0] d;
    reg [1:0] s;
    wire [3:0] y;

    mux4 UUT (.a(a), .b(b), .c(c), .d(d), .s(s),  .y(y));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            a = 0;
            b = 1;
            c = 2;
            d = 3;
            s = 0;
            #100;
            s = 1;
            #100;
            s = 2;
            #100;
            s = 3;
            #100;
        end

    initial
    $monitor("%b %b %b %b %b %b", a, b, c, d, s, y);

endmodule