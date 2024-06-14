`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/08 20:15:43
// Design Name: 
// Module Name: mmu_tlb_replace_order
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


module mmu_tlb_replace_order( //16个直接index选，4ns
    i_rst,i_fire,
    i_index_4,
    o_replace_order_2
    );
    input i_rst,i_fire;
    input [3:0] i_index_4;
    output reg [1:0] o_replace_order_2;
    
    reg [1:0] order [15:0] ;
    always @(negedge i_rst or posedge i_fire)
       begin
         if(!i_rst)begin
            order[0] <= 2'b0;order[1] <= 2'b0;order[2] <= 2'b0;order[3] <= 2'b0;
            order[4] <= 2'b0;order[5] <= 2'b0;order[6] <= 2'b0;order[7] <= 2'b0;
            order[8] <= 2'b0;order[9] <= 2'b0;order[10] <= 2'b0;order[11] <= 2'b0;
            order[12] <= 2'b0;order[13] <= 2'b0;order[14] <= 2'b0;order[15] <= 2'b0;
//            order[16] <= 2'b0;order[17] <= 2'b0;order[18] <= 2'b0;order[19] <= 2'b0;
//            order[20] <= 2'b0;order[21] <= 2'b0;order[22] <= 2'b0;order[23] <= 2'b0;
//            order[24] <= 2'b0;order[25] <= 2'b0;order[26] <= 2'b0;order[27] <= 2'b0;
//            order[28] <= 2'b0;order[29] <= 2'b0;order[30] <= 2'b0;order[31] <= 2'b0;
            o_replace_order_2 <= 2'b0;
         end
         else begin
            if(order[i_index_4] == 2'b11)order[i_index_4] <= 2'b00; 
            else begin
                order[i_index_4] <= order[i_index_4]+2'b01;
                o_replace_order_2 <= order[i_index_4];
            end
         end
       end

    
endmodule
