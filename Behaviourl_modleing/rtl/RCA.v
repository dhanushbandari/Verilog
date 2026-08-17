//Ripple Carry Adder 4-bit

//Behavioral level modeling

module full_adder(a,b,c,sum,carry);
  input a,b;
  input c;
  output reg sum;
  output reg carry;
  always @(*)
    begin
      sum=a^b^c;
      carry=(a&b)|(c&(a^b));
    end
endmodule

// Structural level modeling

module RCA(A,B,cin,S,cout);
  input[3:0] A,B;
  input cin;
  output reg[3:0]S;
  output reg cout;
  wire [2:0]w;
  
      full_adder FA0(.a(A[0]),.b(B[0]),.c(cin),.sum(S[0]),.carry(w[0]));
      full_adder FA1(.a(A[1]),.b(B[1]),.c(w[0]),.sum(S[1]),.carry(w[1]));
      full_adder FA2(.a(A[2]),.b(B[2]),.c(w[1]),.sum(S[2]),.carry(w[2]));
      full_adder FA3(.a(A[3]),.b(B[3]),.c(w[2]),.sum(S[3]),.carry(cout));
  
endmodule