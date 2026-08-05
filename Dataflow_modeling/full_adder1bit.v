// 1 bit full adder 

// Structural Modeling

// Top Module 1-Bit Full Adder

module full_adder1bit(A,B,Cin,Sum,Carry);
	input A,B,Cin;
	output Sum,Carry;
	wire w1,w2,w3;
// Using Half Adder to Instantiation 
	half_adder H1(.a(A),.b(B),.s(w1),.c(w3));
	half_adder H2(.a(w1),.b(Cin),.s(Sum),.c(w2));
	or O1(Carry,w2,w3);
endmodule



// Half Adder 
module half_adder(a,b,s,c);
	input a,b;
	output s,c;
	assign s=a^b;
	assign c=a&b;
endmodule



