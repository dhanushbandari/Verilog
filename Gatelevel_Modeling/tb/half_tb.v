module half_tb;
  reg a,b;
  wire sum,carry;
  integer i;
  Ha dut(a,b,sum,carry);
  
  initial begin
    a=0; b=0;
    for(i=0;i<4;i=i+1)
      begin
        {a,b}={i[1],i[0]};
        #10 // delay is mandatory or else o/p will be X
        $display("Input:a=%b,b=%b,Output:sum=%b,carry=%b",a,b,sum,carry);
      end
  end
  
  initial begin
    $dumpfile("Ha.vcd");
    $dumpvars(0,ha_tb);
  end
endmodule