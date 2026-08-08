//  Logical Operator 

module LO;
  reg [7:0] a,b;
  initial
    begin
      a=1'b0;
      b=1'b1;
      $display("The Logical-Not = %b",!b);
      $display("The Logical-AND = %b ",a&&b);
      $display("The Logical OR = %b ",a||b);
    end
endmodule 

---------------------------------------------------------------------------------------
/* Output :
The Logical-Not = 0
The Logical-AND = 0 
The Logical OR = 1 */