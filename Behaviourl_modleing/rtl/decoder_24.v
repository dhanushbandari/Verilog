module decoder_24(input a,b,output reg [3:0]D);
  
  always @ (*)
    begin
      D=4'b0000;
      if(a)
        if(b)
          D[3]=1'b1;
      else
        D[2]=1'b1;
      else
        if(b)
          D[1]=1'b1;
      else
        D[0]=1'b1;
    end
endmodule


/*output:

The input a =0 and b=0,The output D = 0001
The input a =0 and b=1,The output D = 0010
The input a =1 and b=0,The output D = 0100
The input a =1 and b=1,The output D = 1000*/