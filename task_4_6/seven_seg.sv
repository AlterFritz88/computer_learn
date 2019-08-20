module seven_seg(input [4:0] a, output reg [6:0] y);
    always @(*)
        begin
        case (a)
            0 : y = 7'h7e;
            1 : y = 7'h30;
            2 : y = 7'h6d;
            3 : y = 7'h79;
            4 : y = 7'h33;
            5 : y = 7'h5b;
            6 : y = 7'h5f;
            7 : y = 7'h70;
            8 : y = 7'h7f;
            9 : y = 7'h7b;
            10 : y = 7'h77;
            11 : y = 7'h1f;
            12 : y = 7'h4e;
            13 : y = 7'h3d;
            14 : y = 7'h4f;
            15 : y = 7'h47;
            default : y = 7'h00;
        endcase
        end
endmodule