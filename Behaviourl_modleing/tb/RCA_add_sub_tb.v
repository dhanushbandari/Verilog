module RCA_add_sub_tb;
  reg [3:0] A,B;
  reg ctrl;
  
  wire[3:0]sum;
  wire cout;
  
  integer i,j,k;
  
  RCA_add_sub dut(A,B,ctrl,sum,cout);
  
  initial
    begin
      ctrl=0;
      #2
      ctrl=1;
      #3
      ctrl=0;
      #2
      ctrl=1;
      #3
      ctrl=0;
    end
  
  initial 
    begin
      A=0; B=0; //ctrl=0;
      #2
        for(i=0;i<8;i=i+1)begin
          for(j=0;j<8;j=j+1)begin
            A=i;
            B=j;
          end
        end
     #50 $finish;
    end
  
  initial begin
    $monitor("input:Ctrl=%b, A=%b,B=%b,output: Sum=%b,Cout=%b",ctrl,A,B,sum,cout);
  end
endmodule
      