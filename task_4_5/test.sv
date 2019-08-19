`timescale 1 ns / 1 ns

module test;
    reg    a;
    reg    b;
    reg    c;
    wire   y;
    minority UUT (.a(a), .b(b), .c(c), .y(y));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            a = 1;
            b = 0;
            c = 0;
            #100;
            if (y != 0)
                begin
                    $display("%c[1;31m",27); $display("1 error");  $display("%c[0m",27);
                end
            a = 1;
            b = 0;
            c = 1;
            #100;
            if (y != 1)
                begin
                    $display("%c[1;31m",27); $display("2 error");  $display("%c[0m",27);
                end
            a = 1;
            b = 1;
            c = 1;
            #100;
            if (y != 1)
                begin
                    $display("%c[1;31m",27); $display("3 error");  $display("%c[0m",27);
                end
            #100;
            a = 0;
            b = 0;
            c = 0;
            #100;
            if (y != 0)
                begin
                    $display("%c[1;31m",27); $display("4 error");  $display("%c[0m",27);
                end
            #100;

        end

    initial
        begin
            $display("a  b  y");
            $monitor("%b %b %b", a, b, y);
        end
endmodule