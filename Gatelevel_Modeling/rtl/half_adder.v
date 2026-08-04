// Gate Level Modeling : Uses the gate primitives Which are inbuilt modules 
module half_adder(input a,b,output s ,c);
// Gate Primitives 
xor x1(s,a,b); // sum = a^b 
and a1(c,a,b); // Carry = a&b
endmodule
