`timescale 1 ns / 1 ns

module test;
    reg   [1:0] a;
    reg   [1:0] b;
    wire  [1:0] y;
    adder UUT (.a(a), .b(b), .y(y));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            a = 0;
            b = 1;
            #100;
            if (y != 2)  $display("%c[1;31m",27); $display("0 + 1 error");  $display("%c[0m",27);
            a = 1;
            b = 1;

            #100;
            a = 2;
            b = 1;

            #100;

        end

    initial
        begin
            $display("a  b  y");
            $monitor("%b %b %b", a, b, y);
        end
endmodule