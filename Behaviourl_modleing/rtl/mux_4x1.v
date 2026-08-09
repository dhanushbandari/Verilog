module mux_4x1(I,sel,y);
  input [3:0] I;
  input [1:0] sel;
  output reg y;
  
  always @(*)
    begin
      if(sel[1])
        if(sel[0])
          y=I[3];
      else
        y=I[2];
      else
        if(sel[0])
          y=I[1];
      else
        y=I[0];
    end
endmodule

-------- Output----------

The input:I=1010 sel =00 and Output: y=0
The input:I=1010 sel =01 and Output: y=1
The input:I=1010 sel =10 and Output: y=0
The input:I=1010 sel =11 and Output: y=1*/