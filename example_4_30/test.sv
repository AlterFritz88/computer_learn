`timescale 1 ns / 1 ns

module test;
    reg   clk, rst;
    wire  [1:0] y;
    state_mach UUT (.clk(clk), .rst(rst), .y(y));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            rst = 0;
            clk = 0;

            #100;
            rst = 1;
            #100;
            rst = 0;
            #100;
            clk = 1;
            #100;
            clk = 0;
            #100;
            clk = 1;
            #100;
            clk = 1;
            #100;
            clk = 0;
            #100;
            clk = 1;
            #100;
            clk = 0;

        end

    initial
        begin
            $display("rst clk y");
            $monitor("%b  %b  %b", rst, clk, y);
        end
endmodule