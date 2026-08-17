// 4bit RCA as Adder and Subtractor

module RCA_add_sub(A,B,ctrl,sum,cout);
  input [3:0] A,B;
  input ctrl;
  output reg [3:0]sum;
  output reg cout;
  
  always @(*)
    begin
      if(ctrl==1)
      {cout,sum}=A+B;
      else
      {cout,sum}=A+((~B)+1);
    end
endmodule
  
  