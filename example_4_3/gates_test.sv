`timescale 1 ns / 1 ns

module gates_test;
    reg [3:0] a, b;
    wire [3:0] y1, y2, y3, y4, y5;

    gates UUT (.a(a), .b(b), .y1(y1), .y2(y2), .y3(y3), .y4(y4), .y5(y5));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0, gates_test);
      end
    initial
        begin

            a = 1;
            b = 0;
            #100;
            a = 0;
            b = 1;
            #100;
            a = 1;
            b = 1;
            #100;
            a = 0;
            b = 0;
        end

    initial
    $monitor("%b  %b:    %b %b %b %b %b", a, b, y1, y2, y3, y4, y5);

endmodule
