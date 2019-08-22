module mux8(input [2:0] s, input [7:0] d, output reg y);
    always @(s)
        begin
            case (s)
                0: y = d[0];
                1: y = d[1];
                2: y = d[2];
                3: y = d[3];
                4: y = d[4];
                5: y = d[5];
                6: y = d[6];
                7: y = d[7];
                default : y = 0;
            endcase
        end
endmodule