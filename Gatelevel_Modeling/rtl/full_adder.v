// Full Adder Using Gate Primitives

module full_adder( input a,b,cin ,output sum ,carry);
	// Gate Primivitves used are 2-Xor Gate, 2 And Gate, 1 OR Gate
	
	wire w1,w2,w3; // Declaration of wire to connect the different module 
	// sum=a^b^c
	xor X1(w1,a,b);  // w1=a^b
	xor X2(sum,w1,cin); // sum =w1^cin 
	// carry= (a&b)|(c&(a^b))
	and A1(w2,w1,cin); // w2=cin ^w1
	and A2(w3,a,b); // w3=a^b
	or O1(carry,w2,w3); //carry=w2^w3
endmodule
	
	