`timescale 1ns / 1ps


module dff(clk,d,q);
input clk,d;
output reg q;

always @(negedge clk) begin
  q <= d;
end
endmodule 


module pipo_4bit(clk,D,Q);
input clk;
input [3:0]D;
output [3:0]Q;

dff bit1 (clk,D[0],Q[0]);
dff bit2 (clk,D[1],Q[1]);
dff bit3 (clk,D[2],Q[2]);
dff bit4 (clk,D[3],Q[3]);
endmodule
