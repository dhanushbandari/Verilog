// Parameter: Constant to be defined in a module we can do it by keyword Parameter 

// Example 

module test; // Top Module 
  parameter width = 8;

  initial begin
    $display("Width = %0d", width,); 
  end

endmodule


// Test Bench 
// Here I use Parameter Overrding By Name
module tb;

  test dut();
  
  test#(.width(10))t1(); // Parameter Overriding Name 

endmodule