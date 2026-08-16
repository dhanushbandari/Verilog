module alu_tb;
  reg[3:0]a,b;
  reg [1:0] sel;
  reg rst;
  wire[7:0]y;
  
  integer i,j,k;
  
  ALU dut(a,b,rst,sel,y);
  task r();
    begin
      rst=1'b1;
      $display("%0t Input a=%d,b=%d,rst=%d,sel=%d,y=%d",$time,a,b,rst,sel,y);
      #5;
      rst=1'b0;
    end
  endtask
  
  task in(input[3:0]c,input[3:0]d,input[1:0]en);
    begin
      a=c;
      b=d;
      sel=en;
    end
  endtask
  
  initial 
    begin
      a=0; b=0; rst=0; sel=0;
      r;
      for(i=0;i<=3;i=i+1)
        begin
          for(j=0;j<=3;j=j+1)
          begin
            for(k=0;k<=3;k=k+1)
            begin
              in(i,j,k);
              #5;
              $display("%0t Input a=%d,b=%d,rst=%d,sel=%d,y=%d",$time,a,b,rst,sel,y);
            end
          end
        end
      #5 $finish;
    end
  initial 
    begin
    $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);
  end
endmodule