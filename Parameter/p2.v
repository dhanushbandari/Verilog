// Parameter Overriding by Order

module p2();
  parameter d1=1,d2=2,d3=3; // Declaring the parameter constant

  
  initial begin
// Display Block should declare inside procedural block
    $display(" the value of display d1=%0d,d2=%0d,d3=%0d",d1,d2,d3);
  end
endmodule


module p2();
// # is mandatory
    p2#(4,5,6)t1(); // d1=4,d2=5,d3=6
    p2#(7,8)t2(); //d1=7,d2=8,d3=3
endmodule

/* Output 
 the value of display d1=4,d2=5,d3=6
 the value of display d1=7,d2=8,d3=3
*/