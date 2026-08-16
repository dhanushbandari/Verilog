module dff_tb;
  reg clk,rst,d;
  wire q,qb;
  integer i;

// Dut Instantation 
  d_ff dut(.clk(clk),.d(d),.rst(rst),.q(q),.qb(qb));
  
// Clock Generation 
  initial clk=0;
  always begin 
    #5 clk=~clk;
  end
 
//Task for Reset
  task reset();
    begin
      @(negedge clk);
      rst=1'b1;
      @(negedge clk);
      rst=1'b0;
    end
  endtask

 //task for Input Statement
  task in(input a);
    begin
      @(negedge clk); 
      d=a; // Assigning the a variable to D
    end 
  endtask
  
  initial begin
    d=0; rst=0; // Initial Value for rst and D

    // Calling task 
    reset; 
    // Repeating the value for d
    for(i=0;i<=1; i=i+1)
      begin
        in(i);
      end
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, dff_tb);
end
  initial begin
    $monitor("input:d=%b,output:q=%b,qb=%b",d,q,qb);
  end 
endmodule

    