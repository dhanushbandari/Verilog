module half_unit(a,b,sum,carry);
  input a,b;
  output sum,carry;
  
  wire[5:0]w;
  
  // sum=A^b
  
  not(w[0],a);
  not(w[1],b);
  
  or(w[2],w[1],w[0]);
  or(w[3],a,b);
  and(sum,w[2],w[3]);
  
  //carry=a&b
  
  or(w[4],w[0],b);
  or(w[5],w[1],a);
  and(carry,w[5],w[3],w[4]);
  
endmodule