// Shift Operator

module shift;
  reg [7:0]a;
  reg signed [7:0] b; 
  initial begin
    a=8'b0001_0010;
    b=8'b1000_0000;
    
    // Logical Shift 
    $display("The Logical Left shift 1 time is = %b ",a<<1);
    $display("The Logical Left shift 2 time is = %b ",a<<2);
    $display("The Logical Right shift 1 time is = %b ",b>>1);
    $display("The Logical Right shift 3 time is = %b ",b>>3);
    
    // Arithmetic Shift
    $display("The Arithmetic  Left shift 1 time is = %b ",a<<<1);
    $display("The Arithmetic  Left shift 2 time is = %b ",a<<<2);
    
    // Arithmetic Shift give difference to Signed and Unsigned values 
    // It Pads Zero if the bit is Unsigned and Pads MSB if it's Signed bit 
    
    $display("The Arithmetic  Right shift 1 time is = %b ",b>>>1); // Signed Bit 
    $display("The Arithmetic  Right shift 3 time is = %b ",b>>>2); // Signed Bit 
    // For Unsigned Value
    $display("The Arithmetic  Right shift 1 time is = %b ",a>>>1); // Signed Bit 
    $display("The Arithmetic  Right shift 3 time is = %b ",a>>>2);
  end
endmodule

--------------------------------------------------------------------------

/* Output :

The Logical Left shift 1 time is = 00100100 
The Logical Left shift 2 time is = 01001000 
The Logical Right shift 1 time is = 01000000 
The Logical Right shift 3 time is = 00010000 
The Arithmetic  Left shift 1 time is = 00100100 
The Arithmetic  Left shift 2 time is = 01001000 
The Arithmetic  Right shift 1 time is = 11000000 
The Arithmetic  Right shift 3 time is = 11100000 
The Arithmetic  Right shift 1 time is = 00001001 
The Arithmetic  Right shift 3 time is = 00000100 */