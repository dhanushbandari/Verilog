// Test Bench 

module mux_8x1_tb;
  reg [7:0]I;
  reg[2:0]sel;
   
  wire y;
  
  integer i;
  
  mux_8x1 dut(.I(I),.sel(sel),.y(y));
  
  initial begin
    
  I=$random; // Generate a 32-bit random numbers
    #2
    for(i=0;i<8;i=i+1)
      begin
        sel=i;
        #10;
      end
    $finish;
  end
  
  initial 
    begin
      $monitor("input:I=%b,sel=%b output:y=%b",I,sel,y);
    end
  initial begin
    $dumpfile("mux_8x1.vcd");
    $dumpvars(0,mux_8x1_tb);
  end
endmodule