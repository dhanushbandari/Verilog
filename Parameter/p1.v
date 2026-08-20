// Parameter Overriding by defparam Keyword
module p1();
  parameter size=10;
    initial begin
      $display("The value of size =%0d",size);
    end
endmodule

module top();
  p1 i0(); // Initial value =10
  p1 i1(); // first overridden value=20
  p1 i2(); // Second Overridden value=30
  
  defparam i1.size=20;
  defparam i2.size=30;
 
endmodule

/*
Output 
The value of size =10
The value of size =20
The value of size =30
*/

