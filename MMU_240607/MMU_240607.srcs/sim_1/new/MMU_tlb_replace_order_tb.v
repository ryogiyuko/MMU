`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/09 10:11:45
// Design Name: 
// Module Name: MMU_tlb_replace_order_tb
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


module MMU_tlb_replace_order_tb();
    reg i_rst,i_fire;
    reg [3:0] i_index_4;
    wire [1:0] o_replace_order_2;
    
    parameter cycle = 0.9;
    parameter rst_time = 200;//复位需要足够长
    parameter run_time = 2;
    
    mmu_tlb_replace_order tlb_replace_order_udt(
        i_rst,i_fire,
        i_index_4,
        o_replace_order_2
    );
    
    initial begin
        i_rst=0;
        i_fire=0;
        i_index_4=0;
        #(rst_time*0.5*2);
        i_rst=1;  
    end
    
    initial begin
        #220;
        
        //1 
        i_index_4=4'b1011;
        #0.5;
        #(cycle)i_fire=~i_fire;
        #(cycle)i_fire=~i_fire;
        
        //2
        #run_time;
        i_index_4=4'b1011;
        #0.5;
        #(cycle)i_fire=~i_fire;
        #(cycle)i_fire=~i_fire;
        
        //3
        #run_time;
        i_index_4=4'b0000;
        #0.5;
        #(cycle)i_fire=~i_fire;
        #(cycle)i_fire=~i_fire;
        
        //4
        #run_time;
        i_index_4=4'b1111;
        #0.5;
        #(cycle)i_fire=~i_fire;
        #(cycle)i_fire=~i_fire;
        
        //5
        #run_time;
        i_index_4=4'b1011;
        #0.5;
        #(cycle)i_fire=~i_fire;
        #(cycle)i_fire=~i_fire;
        
    end
    
endmodule
