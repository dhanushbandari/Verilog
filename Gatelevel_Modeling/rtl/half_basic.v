module half_basic(a,b,sum,carry);
  input a,b;
  output sum,carry;
  wire[3:0]w;

  //sum=~ab+a~b
  not(w[0],a);
  and(w[1],b,w[0]);
  not(w[2],b);
  and(w[3],w[2],a);
  or(sum,w[1],w[3]);

  //Carry=a&b
  and(carry,a,b);
endmodule