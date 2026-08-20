module RAM_8x8_tb;
  reg clk,rst,wr_enb;
  reg[3:0]wr_addr,rd_addr;
  reg[7:0] data_in;
  wire [7:0]data_out;
  
  RAM_8x8 dut(clk,rst,wr_enb,wr_addr,data_in,rd_addr,data_out);
  
  initial begin
    {clk,rst,wr_enb,wr_addr,rd_addr,data_in}=0;
     end
    always #5clk=~clk;
  
  initial
    begin
      rst=1;
      #10;
      rst=0;
      wr_enb=1;
      wr_addr=3'b001;
      data_in=4;
      #10;
      wr_enb=1;
      wr_addr=3'b101;
      data_in=7;
      #10;
      wr_enb=0;
      rd_addr=3'b001;
      #10;
      rd_addr=3'b101;
      #60 $finish;
    end
  
  initial begin
    $dumpfile("RAM_8x8.vcd");
    $dumpvars(0,clk,rst,wr_enb,wr_addr,data_in,rd_addr,data_out);
  end
  initial begin
    $monitor($time,"input:rst=%d,wr_enb=%d,wr_addr=%d,data_in=%d,rd_addr=%d,output:data_out=%d",rst,wr_enb,wr_addr,data_in,rd_addr,data_out);
  end
endmodule