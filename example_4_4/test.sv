`timescale 1 ns / 1 ns

module test;
    reg [7:0] a;
    wire y;

    and8 UUT (.a(a), .y(y));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin

            a = 2;
            #100;
            a = 5;
            #100;
            a = 255;
            #100;
            a = 0;
        end

    initial
    $monitor("%b  %b", a, y);

endmodule
