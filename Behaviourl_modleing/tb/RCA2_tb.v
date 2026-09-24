module RCA2_tb;

    reg [3:0] A, B;
    reg ctrl;

    wire [3:0] s;
    wire cout;

    RCA2 dut (
        .A(A),
        .B(B),
        .ctrl(ctrl),
        .s(s),
        .cout(cout)
    );

    initial begin
        A = 4'b0101;
        B = 4'b0011;
        ctrl = 0;

        #10;
        $display("A=%b B=%b ctrl=%b S=%b Cout=%b",
                  A, B, ctrl, s, cout);

        ctrl = 1;

        #10;
        $display("A=%b B=%b ctrl=%b S=%b Cout=%b",
                  A, B, ctrl, s, cout);

        #10 $finish;
    end

endmodule