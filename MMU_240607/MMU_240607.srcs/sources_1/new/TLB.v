    `timescale 1ns / 1ps
    //////////////////////////////////////////////////////////////////////////////////
    // Company:
    // Engineer:
    //
    // Create Date: 2024/06/07 10:31:12
    // Design Name:
    // Module Name: TLB
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
    
    
    module TLB(
    input i_rst,
    
    input i_drive_tlb,i_sv32Drive,i_freeNextPmp,i_freeNextFault,i_freeNextSv32,
    output o_free_tlb,o_sv32Free,o_driveNextPmp,o_driveNextFault,o_driveNextSv32,
    
    //顶层输入
    input [31:0] i_VA_32,
    input [1:0] i_type_2,
    input [8:0] i_satpAsid_9,
    input [1:0] i_mode_2, //特权级mode,00U,01S,11M;
    input i_mstatus_mxr,i_mstatus_sum,
    
    //pmp
    output reg [33:0] o_physicalAddr_34,
    output  judgePA,// 0取页表到SV32,1到取指访存
    
    //sv32
    input [31:0] i_tlbEntry_32,// pte_32 :ppn,表项标志位10位,DAGUXWRV
    
    // page fault
    output reg [1:0] o_pageFault_2//高位有效，出现page fault
    );
    
    //接线or存数据
    reg [31:0] r_sv32_fill_tlb_32;
    
    wire [8:0] w_satpAsid_9;
    wire [19:0] w_vaVpn_20;
    wire [11:0] w_page_offset_12;
    wire [1:0] w_type_2,w_mode_2;
    wire w_mstatus_sum,w_mstatus_mxr;
    wire [31:0] w_sv32_fill_tlb_32;
    
    always@(posedge i_sv32Drive or negedge i_rst)
    begin
    if(!i_rst)
    begin
    r_sv32_fill_tlb_32 <= 32'd0;
    end
    else begin
    r_sv32_fill_tlb_32 <= i_tlbEntry_32;
    end
    end
    
    assign w_satpAsid_9 = i_satpAsid_9;
    assign w_vaVpn_20 = i_VA_32[31:12];
    assign w_page_offset_12 = i_VA_32[11:0];
    assign w_type_2 = i_type_2;
    assign w_mode_2 = i_mode_2;
    assign w_mstatus_sum = i_mstatus_mxr;
    assign w_mstatus_mxr = i_mstatus_sum;
    assign w_sv32_fill_tlb_32 = r_sv32_fill_tlb_32;
    
    //替换标记，随机时钟方法可以不考虑命中
    wire [1:0] w_replace_order_2;
    
    mmu_tlb_replace_order mmu_tlb_replace_order( //16个，直接靠地址选，3.015、3.025ns
    .i_rst(i_rst),.i_fire( i_drive_tlb | i_sv32Drive),
    .i_index_4(w_vaVpn_20[3:0]),
    .o_replace_order_2(w_replace_order_2)
    );
    
    //mutex1
    wire w_top_drive_tlb,w_top_free_tlb;
    wire w_sv32_drive_tlb,w_sv32_free_tlb;
    
    assign w_top_drive_tlb = i_drive_tlb;
    assign o_free_tlb = w_top_free_tlb;
    assign w_sv32_drive_tlb = i_sv32Drive;
    assign o_sv32Free = w_sv32_free_tlb;
    
    wire w_write_tlb;
    assign w_write_tlb = 1'b1;
    
    wire w_mutex1_drive_fifo1,w_mutex1_free_fifo1;
    wire w_mutex1_to_fifo1;
    
    (*dont_touch = "true"*) cMutexMerge2_1b tlb_mutex1(
    .i_drive0(w_top_drive_tlb),.i_drive1(w_sv32_drive_tlb),.i_data0_1(~w_write_tlb ),.i_data1_1(w_write_tlb),
    .i_freeNext(w_mutex1_free_fifo1),.rst(i_rst),
    .o_free0(w_top_free_tlb),.o_free1(w_sv32_free_tlb),.o_driveNext(w_mutex1_drive_fifo1),.o_data_1(w_mutex1_to_fifo1)
    );
    
    //fifo1
    wire w_tlb_writeEnable;//1写TLB
    wire [3:0] w_tlb_index_vpn3to0_4;
    wire [5:0] w_tlb_addr_6;
    wire [55:0] w_tlb_write_56;
    
    wire [55:0] w_tlb_data_way0_56,w_tlb_data_way1_56,w_tlb_data_way2_56,w_tlb_data_way3_56;
    
    wire w_fifo1_drive_fork1,w_fifo1_free_fork1;
    wire  w_fifo1_fire; // fifo2的fire，0前1后
    
    reg r_mutex1_to_fifo1;
    
    always@(posedge  w_mutex1_drive_fifo1 or negedge i_rst)
        if(!i_rst) r_mutex1_to_fifo1 <= 1'b0;
        else r_mutex1_to_fifo1 <= w_mutex1_to_fifo1;
    
    assign w_tlb_writeEnable = r_mutex1_to_fifo1;
    assign w_tlb_index_vpn3to0_4 = w_vaVpn_20[3:0];
    assign w_tlb_addr_6 = ( w_tlb_writeEnable == 1 ) ? { w_tlb_index_vpn3to0_4 ,w_replace_order_2 }:{ w_tlb_index_vpn3to0_4 ,2'b00 };
    assign w_tlb_write_56 = { w_vaVpn_20[19:4],r_sv32_fill_tlb_32[31:7],r_sv32_fill_tlb_32[5:0],w_satpAsid_9 };
    
    cFifo1 tlb_fifo1(
    .i_drive(w_mutex1_drive_fifo1),.i_freeNext(w_fifo1_free_fork1),.rst(i_rst),
    .o_free(w_mutex1_free_fifo1),.o_driveNext(w_fifo1_drive_fork1),.o_fire_1(w_fifo1_fire)
    );
    
    mmu_tlb_sram mmu_tlb_sram(
    i_rst,w_tlb_writeEnable,
    w_fifo1_fire,
    w_tlb_addr_6,
    w_replace_order_2,
    w_tlb_write_56, //v_tag_16 [56:41] + ppn_22 [40:19] + RSW_2 + DGUXWRV_7 + asid_9 [8:0] = 56
    w_tlb_data_way0_56,w_tlb_data_way1_56,w_tlb_data_way2_56,w_tlb_data_way3_56
    );
    
    //tag和asid 的比较
    wire [15:0] w_tlb_way0_vtag, w_tlb_way1_vtag, w_tlb_way2_vtag, w_tlb_way3_vtag;
    wire [8:0] w_tlb_way0_asid, w_tlb_way1_asid, w_tlb_way2_asid, w_tlb_way3_asid;
    
    assign w_tlb_way0_vtag = w_tlb_data_way0_56[56:41];
    assign w_tlb_way1_vtag = w_tlb_data_way1_56[56:41];
    assign w_tlb_way2_vtag = w_tlb_data_way2_56[56:41];
    assign w_tlb_way3_vtag = w_tlb_data_way3_56[56:41];
    
    assign w_tlb_way0_asid = w_tlb_data_way0_56[8:0];
    assign w_tlb_way1_asid = w_tlb_data_way1_56[8:0];
    assign w_tlb_way2_asid = w_tlb_data_way2_56[8:0];
    assign w_tlb_way3_asid = w_tlb_data_way3_56[8:0];
    
    wire [3:0] w_hit_tlb_4;
    wire w_hit_tlb;
    reg [55:0] r_tlb_hit_entry_56;
    
    assign w_hit_tlb_4[0] = (( w_tlb_way0_vtag == w_vaVpn_20[19:4] ) && ( w_tlb_way0_asid == w_satpAsid_9 )) ? 1:0;
    assign w_hit_tlb_4[1] = (( w_tlb_way1_vtag == w_vaVpn_20[19:4] ) && ( w_tlb_way1_asid == w_satpAsid_9 )) ? 1:0;
    assign w_hit_tlb_4[2] = (( w_tlb_way2_vtag == w_vaVpn_20[19:4] ) && ( w_tlb_way2_asid == w_satpAsid_9 )) ? 1:0;
    assign w_hit_tlb_4[3] = (( w_tlb_way3_vtag == w_vaVpn_20[19:4] ) && ( w_tlb_way3_asid == w_satpAsid_9 )) ? 1:0;
    
    assign w_hit_tlb  = w_hit_tlb_4[3] | w_hit_tlb_4[2] | w_hit_tlb_4[1] | w_hit_tlb_4[0];
    
    always@( w_hit_tlb_4 or w_tlb_data_way0_56 or w_tlb_data_way1_56 or w_tlb_data_way2_56 or w_tlb_data_way3_56) begin
    case(w_hit_tlb_4)
    4'b0001: r_tlb_hit_entry_56 = w_tlb_data_way0_56 ;
    4'b0010: r_tlb_hit_entry_56 = w_tlb_data_way1_56 ;
    4'b0100: r_tlb_hit_entry_56 = w_tlb_data_way2_56 ;
    4'b1000: r_tlb_hit_entry_56 = w_tlb_data_way3_56 ;
    default: r_tlb_hit_entry_56 = 56'd0;
    endcase
    end
    
    //pte_check
    wire [31:0] w_tlb_hit_pte_32;
    wire w_page_fault, w_next_pte, w_get_PA;
    
    assign w_tlb_hit_pte_32 = { r_tlb_hit_entry_56[40:19], r_tlb_hit_entry_56[17:15], 1'b0,  r_tlb_hit_entry_56[14:9] };
    
    pte_check tlb_pte_check (
    .pte_32(w_tlb_hit_pte_32),//ptePNN_22,表项标志位8位,DAGUXWRV(7-0)
    .mode(w_mode_2),.type(w_type_2),//特权级mode,00U,01S,11M；当前指令类型type，取指令10，load读指令00，store/AMO存储或原子指令01
    .SUM(w_mstatus_sum),.MXR(w_mstatus_mxr),.rst(i_rst),
    
    .valid({ w_page_fault, w_next_pte, w_get_PA }), //2-0 valid2出现缺页异常，valid1时找下一级表项,valid0时计算物理地址
    .pteout_32()
    );
    
    //cond4 fork1
    wire w_tlb_fifo1_drive_fork1,w_tlb_fifo1_free_fork1;
    wire w_fork1_drive_lastFifo1,w_fork1_free_lastFifo1;
    wire w_fork1_fire;
    wire w_fork1_to_pmp, w_fork1_to_sv32, w_fork1_to_fault, w_fork1_to_lastFifo1;
    
    assign w_fork1_to_lastFifo1 = w_tlb_writeEnable;
    assign w_fork1_to_pmp = w_get_PA & w_hit_tlb & ~w_tlb_writeEnable;
    assign w_fork1_to_sv32 = w_next_pte & w_hit_tlb & ~w_tlb_writeEnable;
    assign w_fork1_to_fault = w_page_fault & w_hit_tlb & ~w_tlb_writeEnable;
    
    cCondFork4 tlb_fork1(
    .i_drive(w_fifo1_drive_fork1),.i_freeNext0(w_fork1_free_lastFifo1),.i_freeNext1(i_freeNextPmp),.i_freeNext2(i_freeNextSv32),.i_freeNext3(i_freeNextFault),
    .valid0(w_fork1_to_lastFifo1),.valid1(w_fork1_to_pmp),.valid2(w_fork1_to_sv32),.valid3(w_fork1_to_fault),
    .o_fire(w_fork1_fire),.rst(i_rst),
    .o_free(w_fifo1_free_fork1),.o_driveNext0(w_fork1_drive_lastFifo1),.o_driveNext1(o_driveNextPmp),.o_driveNext2(o_driveNextSv32),.o_driveNext3(o_driveNextFault)
    );
    
    assign judgePA = 1'b1;
    
    always@(posedge w_fork1_fire or negedge i_rst )
    begin
        if(i_rst==0) begin
            o_pageFault_2 <= 2'b0;
            o_physicalAddr_34 <= 34'b0;
        end
        else begin
            o_pageFault_2 <= { w_page_fault ,1'b0};
            o_physicalAddr_34 <= {  w_tlb_hit_pte_32[31:11], w_page_offset_12 };
        end
    end
    
     cLastFifo1 lastfifo(
    .i_drive(w_fork1_drive_lastFifo1),.rst(i_rst),
    .o_free(w_fork1_free_lastFifo1),.o_driveNext(),
    .o_fire_1()
    );
    
    endmodule