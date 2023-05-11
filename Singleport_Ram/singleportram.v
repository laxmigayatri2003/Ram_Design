`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 05:16:55 PM
// Design Name: 
// Module Name: singleportram
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


module singleportram(
input [7:0]data,
input [5:0]addr,
input we,
input clk,
output [7:0]dout
);
reg [7:0]ram[63:0];
reg [5:0]addr_reg;
always @ (posedge clk)
  begin
    if (we)
      ram[addr]<=data;
    else
      addr_reg <= addr;
   end
   
  assign dout= ram[addr_reg];
endmodule
