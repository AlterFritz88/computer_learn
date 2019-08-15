`timescale 1 ns / 1 ns

module test;
    reg  [3:0] d;
    reg  c;
    wire [3:0] q;
    sync UUT (.d(d),.c(c), .q(q));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            d = 4'b1111;
            c = 0;
            #100;
            c = 1;
            #100;
            d = 4'b1100;
            #100;
            c = 0;
            #100;
            c = 1;
            #100;
            c = 0;
            #100;
            c = 1;



        end

    initial
        begin
            $display("d q c");
            $monitor("%b %b %b", d, q, c);
        end
endmodule