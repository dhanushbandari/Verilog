// Test Bench 

module RCA_Tb;
  reg [3:0]A,B;
  reg cin;
  
  wire[3:0] S;
  wire cout;
  
  integer i,j;

// DUT instantiation
  
  RCA dut(.A(A),.B(B),.cin(cin),.S(S),.cout(cout));
  
  /*initial begin
    A=0; B=0; cin=0;
    #2
    for(i=0;i<=10; i=i+1)
      begin
        A=$random;
        B=$random;
        //cin=$random;
        #10;
      end
        $finish;
  end*/
  

// Values for A and B
  initial begin
    A=0; B=0; cin=0;
    #2;
    for(i=0;i<=8;i=i+1)begin
      for(j=0;j<=8;j=j+1)
        begin
          A=i;
          B=j;
        end
      #10;
    end
    $finish;
  end
  
  initial begin
    $dumpfile("RCA.vcd");
    $dumpvars(0,RCA_Tb);
  end
    
  
  initial begin
    $monitor("input:A=%b,B=%b,cin=%b, output:S=%b,cout=%b",A,B,cin,S,cout);
  end
endmodule
