`timescale 1 ns / 1 ns

module test;
    reg [7:0] a;
    reg [7:0] b;
    reg s;
    wire [7:0] y;

    mux2 UUT (.a(a), .b(b), .s(s),  .y(y));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            a = 2;
            b = 14;
            s = 0;
            #100;
            s = 1;
            #100;
            s = 0;
            #100;
            a = 1;
        end

    initial
    $monitor("%b %b %b %b", a, b, s, y);

endmodule