// 8x1 Mux using 2x1 mux

module mux_8x1(I,sel,y);

  input [7:0] I;
  input [2:0] sel;
  output y;
  wire [5:0]w;

  assign w[0] = sel[0] ? I[1] : I[0];
  assign w[1] = sel[0] ? I[3] : I[2];
  assign w[2] = sel[0] ? I[5] : I[4];
  assign w[3] = sel[0] ? I[7] : I[6];

  assign w[4] = sel[1] ? w[1] : w[0];
  assign w[5] = sel[1] ? w[3] : w[2];

  assign y = sel[2] ? w[5]: w[4];

endmodule