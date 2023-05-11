`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2023 09:42:49 PM
// Design Name: 
// Module Name: dualportram_tb
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


module dualportram_tb;
   reg [7:0] datain1,datain2;
   reg [5:0] addr1,addr2;
   reg we1,we2;
   reg clk;
   wire [7:0]dout1,dout2;
   
 dualportram dpr(
 .datain1(datain1),
 .datain2(datain2),
 .addr1(addr1),
 .addr2(addr2),
 .we1(we1),
 .we2(we2),
 .clk(clk),
 .dout1(dout1),
 .dout2(dout2));
 
 initial
   begin
     clk=1'b1;
      forever #5 clk=~clk;
   end
   
 initial
   begin
     datain1=8'h33;
     addr1 =6'h01;
     
     datain2=8'h44;
     addr2 = 6'h02;
     
     we1 = 1'b1;
     we2 = 1'b1;
     
     #10;
     
      datain1=8'h55;
      addr1 =6'h03;
         
      addr2 = 6'h01;
         
      we2 = 1'b0;
      
      #10;
      
      addr1 =6'h02;
      addr2 = 6'h03;
          
      we1 = 1'b0;
       #10
       
      addr1 =6'h01;
          
      datain2=8'h77;
      addr2 = 6'h02;
      we2 = 1'b1;
    
    #10;
   end
   
  initial 
   #40 $stop;
endmodule
