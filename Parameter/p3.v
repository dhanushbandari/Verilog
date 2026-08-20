// Parameter Overriding by name 

module p3();
  parameter d1=1,d2=2,d3=3; // Declaring the parameter constant
  
  initial begin
// Display Block should declare inside procedural block
    $display(" the value of display d1=%0d,d2=%0d,d3=%0d",d1,d2,d3);
  end
endmodule

// Top Module instantiation
module p3();
// # is mandatory
  p3#(.d1(7),.d2(6),.d3(5)) t1(); // Overriding by name d1=7,d2=6,d3=5
  p3#(.d1(3),.d2(4))t2(); // Overriding by name d1=3,d2=4,d3=3
endmodule

/* Output:
the value of display d1=7,d2=6,d3=5
the value of display d1=3,d2=4,d3=3
*/