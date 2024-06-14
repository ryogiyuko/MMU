`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/04 16:06:01
// Design Name: 
// Module Name: mmu_lsu
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


module mmu_lsu(
    input i_rst,
    
    //访存请求
    input i_drive,
    output o_free, 
    //访存发送的数据
    input [31:0] i_VA_32,
    input [1:0] i_type_2, //load 00、store/AMO 01、fetch 10
    
    //中断异常事件
    input i_freeNext_InterExcep,
    output o_driveNext_InterExcep,
    //中断异常处理
    output reg [4:0] o_ExcepCode_5,
    output reg [31:0] o_VA_32,
    
    //物理内存事件
    input i_drive_SRAM,i_freeNext_SRAM,// i_drive_SRAM 取回页表项存储给的信号
    output o_free_SRAM,o_driveNext_SRAM,// o_driveNext_SRAM 向存储发送物理地址
    //与物理内存的交互
    output [33:0] o_PA_SRAM_34,
    output judgePA,
    
    input [31:0] i_pte_32,
    
    //CSR相关 直接连线
    input [31:0] i_satp_32,
    input [1:0] i_mode_2, //特权级mode,00U,01S,11M;
    input i_mstatus_mxr,i_mstatus_sum  
    );
    
//1. 启动判断与数据更新    
    
    wire w_cond1_fire;
    wire w_drive_tlb,w_free_tlb; // valid0 访问TLB
    wire w_cond1_drive_mutex2,w_cond1_free_mutex2; //valid1 输出物理地址
    
    reg [31:0] r_VA_32;//VPN[1]+VPN[0]+page_offset
    reg [1:0] r_type_2;
    wire [31:0] w_VA_32;
    wire [1:0] w_type_2;
    
    wire w_satp_mode;
    wire [8:0] w_satpAsid_9;
    wire [21:0] w_satp_ppn_22;
    wire [1:0] w_mode_2;
    wire w_mstatus_mxr;
    wire w_mstatus_sum;
    
    cCondFork2 mmu_lsu_cond1(
        .i_drive(i_drive),.i_freeNext0(w_free_tlb),.i_freeNext1(w_cond1_free_mutex2),
        .valid0(w_satp_mode),.valid1(~w_satp_mode),.o_fire(w_cond1_fire),.rst(i_rst),
        .o_free(o_free),.o_driveNext0(w_drive_tlb),.o_driveNext1(w_cond1_drive_mutex2)
    );
    
    always@(posedge w_cond1_fire or negedge i_rst) 
    begin
        if(!i_rst)
        begin
            r_VA_32 <= 32'd0;
            r_type_2 <= 2'b0;
        end
        else begin
            r_VA_32 <= i_VA_32;
            r_type_2 <= i_type_2;
        end
    end
    
    assign w_VA_32 = r_VA_32;
    assign w_type_2 = r_type_2;
    assign w_satp_mode = i_satp_32[31];
    assign w_satpAsid_9 = i_satp_32[30:22];
    assign w_satp_ppn_22 = i_satp_32[21:0];
    assign w_mode_2 = i_mode_2;
    assign w_mstatus_mxr = i_mstatus_mxr;
    assign w_mstatus_sum = i_mstatus_sum;
    
//2. TLB和Sv32
    
    //TLB控制链
    wire w_sv32_drive_tlb,w_sv32_free_tlb; // sv32填入TLB项
    wire w_tlb_drive_mutex2,w_tlb_free_mutex2; // tlb输出物理地址
    wire w_tlb_drive_mutex1,w_tlb_free_mutex1; // tlb产生异常
    wire w_tlb_drive_sv32,w_tlb_free_sv32; //tlb缺失
    
    //TLB数据 
    wire [31:0] w_sv32_fill_tlb_32;
    wire [33:0] w_tlb_PA_34;
    wire w_tlb_PAjudge;
    wire [1:0] w_tlb_fault_to_mutex1_2;
    
    TLB mmu_lsu_TLB(
        .i_rst(i_rst),
      
        .i_drive_tlb(w_drive_tlb),.i_sv32Drive(w_sv32_drive_tlb),.i_freeNextPmp(w_tlb_free_mutex2),
        .i_freeNextFault(w_tlb_free_mutex1),.i_freeNextSv32(w_tlb_free_sv32),
        .o_free_tlb(w_free_tlb),.o_sv32Free(w_sv32_free_tlb),.o_driveNextPmp(w_tlb_drive_mutex2),
        .o_driveNextFault(w_tlb_drive_mutex1),.o_driveNextSv32(w_tlb_drive_sv32),
      
        //顶层输入
        .i_virtualAddr_32(w_VA_32),// satpAsid_9,satpPnn_22
        .i_type_2(w_type_2),
        
        .i_satpAsid_9(w_satpAsid_9),.i_satp_ppn_22(w_satp_ppn_22),
        .i_mode_2(w_mode_2), //特权级mode,00U,01S,11M;
        .i_mstatus_mxr(w_mstatus_mxr),.i_mstatus_sum(w_mstatus_sum),
      
        //pmp
        .o_physicalAddr_34(w_tlb_PA_34),.judgePA(w_tlb_PAjudge),// 0取页表到SV32,1到取指访存
        //Sv32
        .i_tlbEntry_32(w_sv32_fill_tlb_32),// pte_32 :ppn,表项标志位10位,DAGUXWRV
         // page fault
        .o_pageFault_2(w_tlb_fault_to_mutex1_2)
    );
    
    //Sv32控制链
    //wire w_tlb_drive_sv32,w_tlb_free_sv32 // tlb缺失
    wire w_sram_drive_sv32,w_sram_free_sv32;
    wire w_sv32_drive_mutex2,w_sv32_free_mutex2;//pmp检查
    //wire w_sv32_drive_tlb,w_sv32_free_tlb; // sv32填入TLB项
    wire w_sv32_drive_mutex1,w_sv32_free_mutex1;//缺页异常
    
    assign w_sram_drive_sv32 = i_drive_SRAM;
    assign o_free_SRAM = w_sram_free_sv32;
    
    //Sv32数据 
    wire [33:0] w_sv32_ptePA_PA_to_mutex2_34;
    wire w_sv32_PAjudge;
    wire [1:0] w_sv32_fault_to_mutex1_2;
//    assign w_VA_32 = r_VA_32;
//    assign w_type_2 = r_type_2;
//    assign w_satp_mode = i_satp_32[31];
//    assign w_satpAsid_9 = i_satp_32[30:22];
//    assign w_satp_ppn_22 = i_satp_32[21:0];
//    assign w_mode_2 = i_mode_2;
//    assign w_mstatus_mxr = i_mstatus_mxr;
//    assign w_mstatus_sum = i_mstatus_sum;
    
    //SV32
    SV32 SV32_mmu_top_load_store0(
       .virtualAddr_32(w_VA_32),// vpn1_10,vpn0_10,offset_12
       .satpPPN_22(w_satp_ppn_22),
       .i_mode_2(w_mode_2),.i_type_2(w_type_2),
       .i_sstausSUM_1(w_mstatus_sum),.i_sstausMXR_1(w_mstatus_mxr),.rst(i_rst),
       .pte_32(i_pte_32),// 31-0 ptePNN_22,表项标志位10位,保留的两位，DAGUXWRV(7-0)
       
       .i_driveTlb(w_tlb_drive_sv32),.i_driveSRAM(w_sram_drive_sv32),.i_freeNextPmp(w_sv32_free_mutex2),.i_freeNextTlb(w_sv32_free_tlb),.i_freeNextFault(w_sv32_free_mutex1),
       .o_freeTlb(w_tlb_free_sv32),.o_freeSRAM(w_sram_free_sv32),.o_driveNextPmp(w_sv32_drive_mutex2),.o_driveNextTlb(w_sv32_drive_tlb),.o_driveNextFault(w_sv32_drive_mutex1),
       
       // TLB
       .tlbEntry_32(w_sv32_fill_tlb_32),
       // PMP
       .o_mode_2(),.o_type_2(),
       .o_sstausMXR_1(),.o_sstausSUM_1(),
       .physicalADDR_34(w_sv32_ptePA_PA_to_mutex2_34),//reg 给pmp的物理地址，可能是页表项
       .forkSRAM_1(w_sv32_PAjudge),// reg 0到SV32,1到取指访存
       // Fault
       .pageFAULT_2(w_sv32_fault_to_mutex1_2)
    );
    
//3. 异常编码与PMP
    wire w_pmp_drive_mutex1,w_pmp_free_mutex1;
    wire w_mutex1_drive_exception_code,w_mutex1_free_exception_code;
    wire [1:0] w_pmp_fault_to_mutex1_2,w_mutex1_to_exception_code_2;
    
    //mutex1
    cMutexMerge3_2b mmu_lsu_mutex1(
        w_tlb_drive_mutex1,w_sv32_drive_mutex1,w_pmp_drive_mutex1,w_tlb_fault_to_mutex1_2,w_sv32_fault_to_mutex1_2,w_pmp_fault_to_mutex1_2,
        w_mutex1_free_exception_code,i_rst,
        w_tlb_free_mutex1,w_sv32_free_mutex1,w_pmp_free_mutex1,w_mutex1_drive_exception_code,w_mutex1_to_exception_code_2
    );
    
    wire w_fifo1_fire;
    reg [1:0] r_mutex1_to_exception_code_2;
    
    cFifo1 mmu_lsu_fifo1(
    .i_drive(w_mutex1_drive_exception_code),.i_freeNext(i_freeNext_InterExcep),.rst(i_rst),
    .o_free(w_mutex1_free_exception_code),.o_driveNext(o_driveNext_InterExcep),.o_fire_1(w_fifo1_fire)
    );
    
    always@(posedge w_fifo1_fire or negedge i_rst) begin
        if(i_rst==0) begin
            r_mutex1_to_exception_code_2 <= 2'b0;
            o_VA_32 <= 32'd0;
        end
        else begin
            r_mutex1_to_exception_code_2 <= w_mutex1_to_exception_code_2;
            o_VA_32 <= w_VA_32;
        end
    end
    
    //异常编码
    always@(*) begin
        if( r_mutex1_to_exception_code_2 == 2'b10) //page fault
        begin
            case(w_type_2)
                2'b00: o_ExcepCode_5 = 5'b0_1101;  //13
                2'b01: o_ExcepCode_5 = 5'b0_1111;  //15
                2'b10: o_ExcepCode_5 = 5'b0_1111;  //15
                default: o_ExcepCode_5 = 5'b0;
            endcase
        end
        else if( r_mutex1_to_exception_code_2 == 2'b01) //access fault
        begin
            case(w_type_2)
                2'b00: o_ExcepCode_5 = 5'b0_0101;  //5
                2'b01: o_ExcepCode_5 = 5'b0_0111;  //7
                2'b10: o_ExcepCode_5 = 5'b0_0001;  //1
                default: o_ExcepCode_5 = 5'b0;
            endcase
        end
    end
    
    //mutex2
    wire w_mutex2_drive_pmp, w_mutex2_free_pmp;
    wire [33:0] mutex2_PA_to_pmp_34;
    wire mutex2_jugdePA_to_pmp_34;
    
    cMutexMerge3_35b mmu_lsu_mutex2(
        .i_drive0(w_tlb_drive_mutex2),.i_drive1(w_sv32_drive_mutex2),.i_drive2(w_cond1_drive_mutex2),.i_data0_35({w_tlb_PA_34, w_tlb_PAjudge}),.i_data1_35({w_sv32_ptePA_PA_to_mutex2_34,w_sv32_PAjudge}),.i_data2_35({ r_VA_32,2'b00 ,1'b1}),
        .i_freeNext(w_mutex2_free_pmp),.rst(i_rst),
        .o_free0(w_tlb_free_mutex2),.o_free1(w_sv32_free_mutex2),.o_free2(w_cond1_free_mutex2),.o_driveNext(w_mutex2_drive_pmp),
        .o_data_35({ mutex2_PA_to_pmp_34 , mutex2_jugdePA_to_pmp_34 })
    );
    
    //未加pmp时的接口
    assign o_driveNext_SRAM = w_mutex2_drive_pmp;
    assign w_mutex2_free_pmp = i_freeNext_SRAM;
    assign o_PA_SRAM_34 = mutex2_PA_to_pmp_34;
    assign judgePA = mutex2_jugdePA_to_pmp_34;
    
    //PMP
   
endmodule
