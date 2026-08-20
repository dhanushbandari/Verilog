module RAM_8x8(clk,rst,wr_enb,wr_addr,data_in,rd_addr,data_out);
  input clk,rst,wr_enb;
  input [3:0]wr_addr,rd_addr;
  input [7:0]data_in;
  output reg [7:0]data_out;
  
  integer i;
  
  //Internal Memory Creation
  reg[7:0]mem[7:0]; 
  
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        begin
          for(i=0;i<7;i=i+1)
            begin
              mem[i]<=0;
            end
        end
      else
        begin
          if(wr_enb)
            begin
              mem[wr_addr]<=data_in;
            end
          else if(wr_enb==0)
            begin
              data_out<=mem[rd_addr];
            end
        end
    end
endmodule