// Full Adder using Behaviour modeling
 
module full_adder(a,b,cin,sum,cout);
	input a,b,cin;
	output reg sum,cout;

// Always Block 
	always @(a,b,cin)
		begin
		sum=a^b^cin; // Sum 
          cout=(a&b)|(cin&(a^b)); // Carry
		end
	endmodule

// Top Module 
// Ripple Carry Adder using Full Adder 

module RCA(input [3:0] A,B, input c, output [3:0] s, output carry);
  wire [2:0] w; // wire declaration 

// Full Adder instantation

  full_adder FA1(.a(A[0]),.b(B[0]),.cin(c),.sum(s[0]),.cout(w[0]));
  full_adder FA2(.a(A[1]),.b(B[1]),.cin(w[0]),.sum(s[1]),.cout(w[1]));
  full_adder FA3(.a(A[2]),.b(B[2]),.cin(w[1]),.sum(s[2]),.cout(w[2]));
  full_adder FA4(.a(A[3]),.b(B[3]),.cin(w[2]),.sum(s[3]),.cout(carry));

endmodule