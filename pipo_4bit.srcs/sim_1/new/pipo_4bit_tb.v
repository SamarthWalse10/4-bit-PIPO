`timescale 1ns / 1ps


module pipo_4bit_tb();
reg tclk;
reg [3:0]tD;
wire [3:0]tQ;

pipo_4bit dut(.clk(tclk), .D(tD), .Q(tQ));

initial begin
  tclk=0;
  forever #2 tclk = ~tclk;
end

initial begin
  tD=4'b0000;
  #5
  tD=4'b0001;
  #5  
  tD=4'b0010;
  #5 
  tD=4'b0011;
  #5 
  tD=4'b0100;
  #5 
  tD=4'b0101;
  #5
  $stop;
end

endmodule
