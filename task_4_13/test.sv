`timescale 1 ns / 1 ns

module test;
    reg   [1:0] a;
    wire  [3:0] y;
    deshif UUT (.a(a), .y(y));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            a = 0;
            #100;
            if (y != 4'b0001)
                begin
                    $display("%c[1;31m",27); $display("1 error");  $display("%c[0m",27);
                end
            a = 1;
            #100;
            if (y != 4'b0010)
                begin
                    $display("%c[1;31m",27); $display("2 error");  $display("%c[0m",27);
                end
            a = 2;
            #100;
            if (y != 4'b0100)
                begin
                    $display("%c[1;31m",27); $display("3 error");  $display("%c[0m",27);
                end
            #100;
            a = 3;
            #100;
            if (y != 4'b1000)
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