`timescale 1 ns / 1 ns

module test;
    reg  [2:0] a;
    reg  [1:0] b;
    wire [6:0] y;

    bus UUT (.a(a), .b(b), .y(y));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            a = 3'b111;
            b = 2'b00;
            #100;
            a = 3'b101;
            b = 2'b00;
            #100;
            a = 3'b111;
            b = 2'b11;


        end

    initial
        begin
            $display("a b y");
            $monitor("%b %b %b", a, b, y);
        end
endmodule