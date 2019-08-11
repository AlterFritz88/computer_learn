`timescale 1 ns / 1 ns

module test;
    reg  a;
    reg  b;
    reg cin;
    wire s, c;

    fulladder UUT (.a(a), .b(b), .cin(cin),  .s(s), .c(c));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            a = 1;
            b = 0;
            cin = 0;
            #100;
            a = 1;
            b = 0;
            cin = 1;
            #100;
            a = 1;
            b = 1;
            cin = 1;

        end

    initial
        begin
            $display("a b cin c s");
            $monitor("%b %b %b %b %b", a, b, cin, c, s);
        end
endmodule