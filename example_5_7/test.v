`timescale 1 ns / 1 ns

module test;
    reg   [15:0] adr;
    reg   [3:0] din;
    reg we;
    wire  [3:0] dout;
    ram UUT (.adr(adr), .we(we), .din(din), .dout(dout));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            adr = 0;
            din = 3;
            we = 1;
            #100;
            we = 0;
            #100;
            we = 1;
            adr = 1;
            din = 10;
            #100;
            we = 0;
            #100;
            we = 1;
            din = 15;
            adr = 2;
            #100;
            we = 0;
            #100;
            we = 1;
            #100;
            adr = 0;
            #100;
            if (dout != 4'h3)
                begin
                $display("%c[1;31m",27); $display("1 test error");  $display("%c[0m",27);
                end
            #100;
            adr = 1;
            #100;
            if (dout != 10)
                begin
                $display("%c[1;31m",27); $display("2 test error");  $display("%c[0m",27);
                end
            #100;
            adr = 2;
            #100;
            if (dout != 15)
                begin
                $display("%c[1;31m",27); $display("3 test error");  $display("%c[0m",27);
                end
        end

    initial
        begin
            $display("adr  dout");
            $monitor("%h   %h", adr, dout);
        end
endmodule