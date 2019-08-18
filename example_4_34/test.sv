`timescale 1 ns / 1 ns

module test;
    reg   [3:0] a1, a2;
    wire  [3:0] q;
    top UUT (.a1(a1), .a2(a2), .q(q));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            a1 = 0;
            a2 = 0;
            #100;
            a1 = 1;
            a2 = 2;
            #100;
            a1 = 1;
            a2 = 1;

        end

    initial
        begin
            $display("a1  a2  q");
            $monitor("%b  %b  %b", a1, a2, q);
        end
endmodule