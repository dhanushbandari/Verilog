// Half Subtractor 

module half_sub(a,b,diff,borw);
	input a,b;
	output diff,borw;

	// Gate Primitives used AND,XOR,NOT 
	
	xor X1(diff,a,b);
	not N1(w1,a);
	and A1(borw,w1,b);
endmodule
