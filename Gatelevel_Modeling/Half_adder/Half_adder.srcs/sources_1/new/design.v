`timescale 1ns / 1ps
// Half adder using Gate Level Abstaraction
module halfadder(
input a,b, // Input Ports 
output sum,carry); // Output Ports
xor (sum,a,b); // Xor operation for Sum A^B
and(carry,a,b); // And operation to Carry A&B
endmodule
