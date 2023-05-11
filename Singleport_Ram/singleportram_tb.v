`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 05:23:57 PM
// Design Name: 
// Module Name: singleportram_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module singleportram_tb;
   reg [7:0]data;
   reg [5:0]addr;
   reg clk;
   reg we;
   wire[7:0]dout;
  
  singleportram spr(
     .data(data),
     .clk(clk),
     .we(we),
     .addr(addr),
     .dout(dout));
     
 initial 
    begin
      clk=1'b1;
      forever #5 clk=~clk;
    end
    
  initial
    begin
      data=8'h01;
      addr=5'd0;
      we=1'b1;
      #10;
      
     data=8'h02;
     addr=5'd1;
     #10;
     
     data=8'h03;
     addr=5'd2;
     #10;
     
     addr=5'd0;
     we=1'b0;
     #10;
     
     addr=5'd1;
     #10;
     
     data=8'h04;
     addr=5'd3;
     we=1'b1;
     #10;
     
     data=8'h05;
     addr=5'd4;
     #10;
     
     addr=5'd3;
     we=1'b0;
     #10;
     
     addr=5'd4;
     
     
end    
endmodule
