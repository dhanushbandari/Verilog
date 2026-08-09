test bench

module decoder_tb;
  reg a,b;
  wire [3:0] D;
  integer i;
  decoder_24 dut(.a(a),.b(b),.D(D));
  
  task in(input A,B);
    begin
      a=A;
      b=B;
    end
  endtask
  
  initial 
    begin
      a=0;
      b=0;
      
      for(i=0;i<4;i=i+1)
        begin
          in(i[1],i[0]);
          #10
          $display("The input a =%b and b=%b,The output D = %b",a,b,D);
        end
    end
//   initial begin
//     $display("The input a =%b and b=%b,The output D = %b",a,b,D);
//   end
  
     initial
      begin
        $dumpfile("decoder_24.vcd");
        $dumpvars(0, decoder_tb);
      end
endmodule
