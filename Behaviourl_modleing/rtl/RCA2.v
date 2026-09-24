module full_adder (input a,b,cin,output reg sum ,carry);
  always@(*)
    begin
      sum=a^b^cin;
      carry=(a&b)|(cin&(a^b));
    end
endmodule

module RCA2 ( input [3:0] A,B,
            input cin,
            input ctrl,
            output [3:0]s,
            output cout
           );
  
  wire c1,c2,c3;
  output reg [3:0]y;
  reg cin1;
  
  
  always@(*)
    begin
      if(ctrl)
        begin
          y = (~B);
          cin1 = 1'b1;
        end
      else
        begin
          y =(B);
          cin1 = 1'b0;
        end
    end
  
  full_adder FA0(.a(A[0]),.b(y[0]),.cin(cin1),.sum(s[0]),.carry(c1));
  full_adder FA1(.a(A[1]),.b(y[1]),.cin(c1),.sum(s[1]),.carry(c2));
  full_adder FA2(.a(A[2]),.b(y[2]),.cin(c2),.sum(s[2]),.carry(c3));
  full_adder FA3(.a(A[3]),.b(y[3]),.cin(c3),.sum(s[3]),.carry(cout));
  
endmodule
        