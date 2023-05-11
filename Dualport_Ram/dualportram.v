`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 09:34:58 PM
// Design Name: 
// Module Name: dualportram
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


module dualportram(
   input [7:0] datain1,datain2,
   input [5:0]addr1,addr2,
   input we1,we2,
   input clk,
   output reg [7:0]dout1,dout2
    );
    
    reg [7:0] ram [63:0]; //8*64 bit ram
    
    always @ (posedge clk)
      begin
        if(we1)
         ram[addr1] <= datain1;
        else
        dout1 <=ram[addr1];
      end
      
     always @ (posedge clk)
           begin
             if(we2)
              ram[addr2] <= datain2;
             else
             dout2 <=ram[addr2];
           end
endmodule
