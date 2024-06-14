`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/11 20:29:08
// Design Name: 
// Module Name: PMP
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


module PMP(
    input rst,
    
    input i_drive_tlbSV, output o_driveNext_toSRAM, output o_driveNext_tofault,
    output o_free_tlbSV, input i_freeNext_toSRAM, input i_freeNext_tofault,
    
    //CSR寄存器相关
    input i_driveNext_CSR, input i_free_CSR, 
    output o_freeNext_CSR, output o_drive_CSR,
    
    input [63:0] i_csr_data,
    
    input [33:0] i_PA_34,  //SV32翻译得到的物理地址 
    input [1:0] i_mode_2,   //mode:00:用户模式； 01:监管者模式； 10：保留；11：机器模式
    input [1:0] i_type_2,   //load(00)、store/AMO(01)、fetch(10)
    input i_sstaus_MXR,
    
    //CSR寄存器相关
    output [23:0] o_csr_addr,
        
    output reg [1:0] o_access_fault_2, //00：无access_fault; 01;有access fault
    output reg [33:0] o_PA_34   //输出pmp的物理地址 
    );
endmodule
