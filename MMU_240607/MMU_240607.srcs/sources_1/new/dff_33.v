`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/23 12:08:05
// Design Name: 
// Module Name: dff_33
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


module dff_33(
     input [32:0] d,
     input fire,rst,
     output reg [32:0] q
    );
    
    always @(posedge fire or negedge rst)
      if(rst==0)q <= 33'd0;
      else q <= d;   
endmodule
