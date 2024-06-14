`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/08 19:56:55
// Design Name: 
// Module Name: mmu_tlb_sram
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


module mmu_tlb_sram(
    i_rst,i_tlb_writeEnable,
    i_fire,
    i_tlb_addr_6,
    i_replace_order_2,
    i_tlb_write_56, //v_tag_16 + ppn_22 + RSW_2 + DGUXWRV_7 + asid_9 = 56
    o_tlb_data_way0_56,o_tlb_data_way1_56,o_tlb_data_way2_56,o_tlb_data_way3_56
);
    input i_rst,i_tlb_writeEnable;
    input i_fire;
    input [5:0] i_tlb_addr_6;
    input [1:0] i_replace_order_2;
    input [55:0] i_tlb_write_56;
    output [55:0] o_tlb_data_way0_56,o_tlb_data_way1_56,o_tlb_data_way2_56,o_tlb_data_way3_56;
    
//    ENTITY blk_mem_gen_0 IS
//  PORT (
//    clka : IN STD_LOGIC;
//    rsta : IN STD_LOGIC;
//    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
//    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
//    dina : IN STD_LOGIC_VECTOR(55 DOWNTO 0);
//    douta : OUT STD_LOGIC_VECTOR(223 DOWNTO 0);
//    rsta_busy : OUT STD_LOGIC
//  );
    //wire [55:0] w_tlb_data_way0_56,w_tlb_data_way1_56,w_tlb_data_way2_56,w_tlb_data_way3_56;
    
    blk_mem_gen_0 tlb (
        .clka(i_fire),    // input wire clka
        .wea(i_tlb_writeEnable),      
        .addra(i_tlb_addr_6),  // input wire [5 : 0] addra
        .dina(i_tlb_write_56),    // input wire [55: 0] dina
        .douta({o_tlb_data_way0_56,o_tlb_data_way1_56,o_tlb_data_way2_56,o_tlb_data_way3_56})  // output wire [55 : 0] douta
    );
    
endmodule
