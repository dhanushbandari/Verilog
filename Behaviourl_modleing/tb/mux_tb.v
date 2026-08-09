module mux_tb;
  reg [3:0] I;
  reg [1:0]sel;
  wire y;
  integer i;
  mux_4x1 dut(.I(I),.sel(sel),.y(y));
  
  task in(input [1:0] select);
    begin
      sel=select;
    end
  endtask
  
  initial 
    begin
      I=4'b1010;
      
      for(i=0;i<4;i=i+1)
        begin
          in(i[1:0]);
          #10
          $display("The input:I=%b sel =%b and Output: y=%b",I,sel,y);
        end
    end
//   initial begin
//     $display("The input a =%b and b=%b,The output D = %b",a,b,D);
//   end
  
//     initial
//      begin
//        $dumpfile("mux_4x1.vcd");
//        $dumpvars(0, mux_tb);
//      end
endmodule
    
