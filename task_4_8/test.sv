`timescale 1 ns / 1 ns

module test;
    reg   [2:0] s;
    reg   [7:0] d;
    wire   y;
    mux8 UUT (.s(s), .d(d), .y(y));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            d = 8'b11110000;
            s = 1;
            #100;
            if (y != 0)
                begin
                    $display("%c[1;31m",27); $display("1 error");  $display("%c[0m",27);
                end
            s = 2;
            #100;
            if (y != 0)
                begin
                    $display("%c[1;31m",27); $display("2 error");  $display("%c[0m",27);
                end
            s = 7;
            #100;
            if (y != 1)
                begin
                    $display("%c[1;31m",27); $display("3 error");  $display("%c[0m",27);
                end
            #100;
            s = 5;
            #100;
            if (y != 1)
                begin
                    $display("%c[1;31m",27); $display("4 error");  $display("%c[0m",27);
                end
            #100;

        end

    initial
        begin
            $display("s  y");
            $monitor("%b %b", s,  y);
        end
endmodule