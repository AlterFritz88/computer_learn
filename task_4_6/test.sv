`timescale 1 ns / 1 ns

module test;
    reg   [4:0] a;
    wire  [6:0] y;
    seven_seg UUT (.a(a), .y(y));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            a = 1;
            #100;
            if (y != 7'h30)
                begin
                    $display("%c[1;31m",27); $display("1 error");  $display("%c[0m",27);
                end
            a = 2;
            #100;
            if (y != 7'h6d)
                begin
                    $display("%c[1;31m",27); $display("2 error");  $display("%c[0m",27);
                end
            a = 9;
            #100;
            if (y != 7'h7b)
                begin
                    $display("%c[1;31m",27); $display("3 error");  $display("%c[0m",27);
                end
            #100;
            a = 5;
            #100;
            if (y != 7'h5b)
                begin
                    $display("%c[1;31m",27); $display("4 error");  $display("%c[0m",27);
                end
            #100;

        end

    initial
        begin
            $display("a  y");
            $monitor("%b %b", a,  y);
        end
endmodule