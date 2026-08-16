module dff(clk,rst,d,q,qb);
  input d,clk,rst;
  output reg q;
  output qb;
 
// Procedural Statement 
  always@(posedge clk)
    begin
      if(rst) //When Reset == 1 
        q<=0; // Q=0 
      else
        q<=d; // Q=D
    end
  assign qb=~q; // Complement of Q
endmodule 
