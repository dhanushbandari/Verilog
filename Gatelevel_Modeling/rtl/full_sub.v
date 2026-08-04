module full_sub( input a,b,cin, output diff, brow);

// Gate primitives are AND XOR OR NOT 
	wire w1,w2,w3,w4,w5;
	
	xor X1(w1,a,b);
	xor X2(diff,w1,cin);
	not N1(w2,w1);
	//and A1(w4,w2,cin);
	not N2(w3,a);
	and A1(w4,w2,cin);
	and A2(w5,w3,b);
	or O1(brow,w4,w5);

endmodule