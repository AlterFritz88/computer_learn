`timescale 1 ns / 1 ns

module test;
    reg  [3:0] d;
    reg  c, r;
    wire [3:0] q;
    flop UUT (.d(d),.c(c), .q(q), .r(r));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            d = 4'b1111;
            c = 0;
            r = 0;
            #100;
            c = 1;
            #100;
            d = 4'b1100;
            #100;
            c = 0;
            #100;
            c = 1;
            r = 1;
            #100;



        end

    initial
        begin
            $display("d q c r");
            $monitor("%b %b %b", d, q, c, r);
        end
endmodule