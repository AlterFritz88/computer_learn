`timescale 1 ns / 1 ns

module test;
    reg  [3:0] d;
    wire [3:0] q;
    inv UUT (.d(d), .q(q));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            d = 4'b1111;

            #100;
            d = 4'b0000;
            #100;
            d = 4'b1100;
            #100;
            d = 4'b0011;
            #100;
            d = 4'b1010;
            #100;
            d = 4'b1111;
            #100;




        end

    initial
        begin
            $display("d q");
            $monitor("%b %b", d, q);
        end
endmodule