module Ap;
  reg [7:0]a,b;
  initial begin
    a=4'b0100;
    b=4'b0010;
    $display("The Addition is = %b",a+b);
    $display("The Subtraction is = %b ",a-b);
    $display("The Multiplication is = %b ",a*b);
    $display("The Divison is = %b ",a/b);
    $display("The Square root is = %b ",a**2);
    $display("The Moduls is = %b",a%b);
  end
endmodule
 -------------------------------------------------------------------------------

/* Output :
The Addition is = 00000110
The Subtraction is = 00000010 
The Multiplication is = 00001000 
The Divison is = 00000010 
The Square root is = 00010000 
The Moduls is = 00000000 */ 