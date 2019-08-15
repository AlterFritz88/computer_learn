`timescale 1 ns / 1 ns

module test;
    reg  [3:0] a1;
    reg  [3:0] a2;
    reg s;
    wire [3:0] y;

    mux2 UUT (.a1(a1),.a2(a2), .s(s), .y(y));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            a1 = 4'b1111;
            a2 = 4'b0000;
            s = 0;
            #100;
            s = 1;
            #100;



        end

    initial
        begin
            $display("a1 a2 s y");
            $monitor("%b %b %b  %b", a1, a2, s, y);
        end
endmodule