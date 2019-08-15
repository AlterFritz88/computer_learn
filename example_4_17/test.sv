`timescale 1 ns / 1 ns

module test;
    reg  [3:0] d;
    reg  clk;
    wire [3:0] q;
    flop UUT (.d(d),.clk(clk), .q(q));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            d = 4'b1111;
            clk = 0;
            #100;
            clk = 1;
            #100;
            d = 4'b1100;
            #100;
            clk = 0;
            #100;
            clk = 1;
            #100;


        end

    initial
        begin
            $display("d q clk");
            $monitor("%b %b %b", d, q, clk);
        end
endmodule