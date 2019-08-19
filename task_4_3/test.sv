`timescale 1 ns / 1 ns

module test;
    reg   [3:0] a;
    reg   [3:0] b;
    wire  [3:0] y;
    xor_m UUT (.a(a), .b(b), .y(y));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            a = 4'b0000;
            b = 4'b0000;
            #100;
            if (y != 0)
                begin
                    $display("%c[1;31m",27); $display("1 error");  $display("%c[0m",27);
                end
            a = 4'b1000;
            b = 4'b0000;
            #100;
            if (y != 1)
                begin
                    $display("%c[1;31m",27); $display("1 error");  $display("%c[0m",27);
                end
            a = 4'b0011;
            b = 4'b0011;
            #100;
            if (y != 0)
                begin
                    $display("%c[1;31m",27); $display("1 error");  $display("%c[0m",27);
                end
            #100;

        end

    initial
        begin
            $display("a  b  y");
            $monitor("%b %b %b", a, b, y);
        end
endmodule