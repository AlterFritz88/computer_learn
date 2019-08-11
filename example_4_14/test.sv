`timescale 1 ns / 1 ns

module test;
    reg  [7:0] a1;
    reg  [7:0] a2;
    reg  [7:0] a3;
    reg [1:0] s;
    wire [7:0] y;

    mux4 UUT (.a1(a1), .a2(a2), .a3(a3), .s(s), .y(y));
    initial
      begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0,test);
      end
    initial
        begin
            a1 = 8'b11111111;
            a2 = 8'b00001111;
            a3 = 8'b00110011;
            s = 2'b00;
            #100;
            s = 2'b01;
            #100;
            s = 2'b10;


        end

    initial
        begin
            $display("a1 a2 a3 s y");
            $monitor("%b %b %b %b %b", a1, a2, a3, s, y);
        end
endmodule