`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/23 12:06:31
// Design Name: 
// Module Name: dff_34
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


module dff_34(
     input [33:0] d,
     input fire,rst,
     output reg [33:0] q
    );
    
    always @(posedge fire or negedge rst)
      if(rst==0)
        q <= 34'd0;
      else
        q <= d;
    
endmodule
