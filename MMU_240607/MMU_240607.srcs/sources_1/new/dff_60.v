`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/22 21:05:02
// Design Name: 
// Module Name: dff_60
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


module dff_60(
     input [29:0] d,
     input fire,rst,
     output reg [29:0] q
    );
    
    always @(posedge fire or posedge rst)
      if(rst==0)
        q = 30'd0;
      else
        q = d;
    
endmodule
