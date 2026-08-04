// Test Bench For Full adder

module full_addertb;
  reg a,b,cin; // input data type is Reg
  wire sum,carry; // output data type is Wire
  integer i; // integer i used in loop 
  // Dut Instantiation 
  full_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry)); 
  
  initial 
    begin
// Initial Time will be 0ns and end at 100ns 
      a=1'b0; b=1'b0; cin=1'b0; 
    end
  initial 
    begin
      for(i=0;i<8;i=i+1)
        begin
          {a,b,cin}=i; // concatenation operation 
          #10;
          //#100 $finish;
        end
    end
  initial 
    begin
      $monitor("a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,sum,carry);
      #100 $finish;
    end
endmodule