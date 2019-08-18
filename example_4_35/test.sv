`timescale 1 ns / 1 ns

module test;
    reg   [3:0] a;
    wire  [15:0] y;
    top UUT (.a(a), .y(y));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            a = 0;
            #100;
            a = 1;
            #100;
            a = 2;
            #100;
            a = 3;
            #100;
            a = 4;
            #100;
            a = 5;
            #100;
            a = 7;
            #100;
            a = 10;
            #100;
            a = 15;
        end

    initial
        begin
            $display("a   y");
            $monitor("%b  %b", a, y);
        end
endmodule