`timescale 1 ns / 1 ns

module example_4_2_test;
    reg [3:0] a;
    wire [3:0] y;

    inv UUT (.a(a), .y(y));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,example_4_2_test);
      end
    initial
        begin

            a = 1;
            #100;
            a = 0;
            #100;
            a = 1;
            #100;
            a = 0;
        end

    initial
    $monitor("%b  %b", a, y);

endmodule
