// Half Adder using NAND gate 

module Half_nand(a,b,sum,carry);
  input a,b;
  output sum,carry;
  
  wire[4:0]w;
  nand n1(w[0],a,b); 
  nand n2(w[1],a,w[0]);
  nand n3(w[2],b,w[0]);
  nand n4(sum,w[1],w[2]); 
  nand n5(w[3],a,b);
  nand n6(carry,w[3],w[3]);
  
endmodule