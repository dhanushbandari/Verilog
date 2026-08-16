
module alu(a,b,rst,sel,y);

input [3:0] a,b;
input rst;
input [1:0] sel;
output reg [7:0] y;

always @(*) begin

    if (rst) begin
        y = 8'b0;
    end
    else begin
        case(sel)

            2'b00: y = a + b;
            2'b01: y = (a -((~b)+1));
            2'b10: y = a * b;
            2'b11: y = b**2;

            default: y = 8'd0;

        endcase
    end

end

endmodule 