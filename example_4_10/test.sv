`timescale 1 ns / 1 ns

module test;
    reg  [3:0] a;
    reg  en;
    wire [3:0] y;

    tristate UUT (.a(a), .en(en), .y(y));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            a = 1;
            en = 0;
            #100;
            en = 1;
            #100;

        end

    initial
        begin
            $display("   a en y");
            $monitor("%b %2b %b", a, en, y);
        end
endmodule