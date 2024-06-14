`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/11 16:40:08
// Design Name: 
// Module Name: SV32
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


module SV32(
 input [31:0] virtualAddr_32,// vpn1_10,vpn0_10,offset_12
       input [21:0] satpPPN_22,
       input [1:0] i_mode_2,i_type_2,
       input i_sstausSUM_1,i_sstausMXR_1,rst,
       input [31:0] pte_32,// 31-0 ptePNN_22,表项标志位10位,保留的两位，DAGUXWRV(7-0)
       
       input i_driveTlb,i_driveSRAM,i_freeNextPmp,i_freeNextTlb,i_freeNextFault,
       output o_freeTlb,o_freeSRAM,o_driveNextPmp,o_driveNextTlb,o_driveNextFault,
      
       //TLB 
       output [31:0] tlbEntry_32,
       //PMP
       output [1:0] o_mode_2,o_type_2,
       output o_sstausMXR_1,o_sstausSUM_1,
       output reg [33:0] physicalADDR_34,
       output reg forkSRAM_1,// 0到SV32,1到取指访存
       //Fault
       output [1:0] pageFAULT_2
    );
        /*
        所需控制链：
        cCopyFork4
        cWaitMerge2_32b
        cMutexMerge2_32b
        cFifo1
        cCondFork3
        cCopyFork2
        
        */
        
       //copyfork1 
       wire [59:0] copy1Data;
       wire [59:0] copy1OUT;//virtualAddr_32, i_mode_2, i_type_2, satpPNN_2,i_sstausSUM_1,i_sstausMXR_1
       wire w_copy1Fire,w_cfifoFire,copy3Drive,copy4Drive,copy3Free,copy4Free;

       //waitmerge1
       wire wait1Drive0,wait1Drive1,wait1Free0,wait1Free1;
       wire [31:0] wait1Data0;//vpn1_10
       wire [31:0] wait1Data1;//ptePNN_22
       wire [63:0] wait1Out;

       //mutexmerge1
       wire mutex1Drive0,mutex1Drive1,mutex1Free0,mutex1Free1;
       wire [31:0] mutex1Data0;//satpPNN_22,vpn0_10
       wire [31:0] mutex1Data1;//PtePPN_22,Vpn[1]_10
       wire [31:0] mutex1Out;
       
       wire mutex2Drive0,mutex2Drive1,mutex2Free0,mutex2Free1;
       wire [34:0] mutex2out;
       
       //waitmerge2 
       wire wait2Drive0,wait2Free0;
       wire [31:0] wait2Data0;//i_mode_2,type,i_sstausSUM_1,sstausMXR_1
       //wire [31:0] wait2Data1;//pte_32
       wire [63:0] wait2OUT;//i_mode_2,i_type_2,i_sstausSUM_1,sstausMXR_1,,pte_32

       //fifo1
       wire fifo1Drive,fifo1Free,fifo1Fire;

       //condfork1
       wire cond1Drive,cond1Free,cond1Fire;

       //copyfork2
       wire copy2Drive,copy2Free,copy2Fire;
       
       //waitmerge3
       wire wait3Drive0,wait3Drive1,wait3Free0,wait3Free1;
       wire [31:0] wait3Data0;//offset_12 
       wire [31:0] wait3Data1;//ppn_22
       wire [63:0]wait3OUT;//PA_34,forkSRAM
       
       //copy1 3 4  1 copy 4
       assign copy1Data = { virtualAddr_32, i_mode_2, i_type_2, satpPPN_22,i_sstausSUM_1,i_sstausMXR_1};
                        // 59:28 27:26 25:24 23:2 1 0
      
//(*dont_touch = "true"*) cCopyFork2 copy1(
//    // global reset signal
//     .rst(rst),
//    // left
//    .i_drive(i_driveTlb),
//    .o_free(o_freeTlb),
//    // right0
//    .o_driveNext0(wait1Drive0),
//    .i_freeNext0(wait1Free0),
//    // right1
//    .o_driveNext1(mutex1Drive0),
//    .i_freeNext1(mutex1Free0),

//   .o_fire(w_copy1Fire)
//);
        cFifo1 cfifo0(
        .i_drive(i_driveTlb),.i_freeNext(mutex1Free0),.rst(rst),
        .o_free(o_freeTlb),.o_driveNext(mutex1Drive0),
        .o_fire_1(w_copy1Fire)
        );
        cFifo1 cfifo(
        .i_drive(i_driveTlb),.i_freeNext(mutex1Free0),.rst(rst),
        .o_free(),.o_driveNext(),
        .o_fire_1(w_cfifoFire)
        );

      (*dont_touch = "true"*) dff_60 copy1_DFF1( .d(copy1Data[29:0]),.fire(w_copy1Fire),.rst(rst),.q(copy1OUT[29:0]) );
      (*dont_touch = "true"*) dff_60 copy1_DFF2( .d(copy1Data[59:30]),.fire(w_cfifoFire),.rst(rst),.q(copy1OUT[59:30]) );
       assign mutex1Data0 = { copy1OUT[23:2], copy1OUT[59:50] };//satpPNN_22,vpn1_10
       assign wait1Data0 = { 22'b0, copy1OUT[49:40]}; //vpn0_10
       assign wait2Data0 = { 26'b0, copy1OUT[27:24], copy1OUT[1:0]};//i_mode_2,type,i_sstausSUM_1,sstausMXR_1
       assign wait3Data0 = { 20'b0, copy1OUT[39:28] };//offset_12 
       
       wire [21:0] w_satpPNN_22;
       wire [19:0] w_vpn_20;
       wire [2:0] w_mode_2,w_type_2;
       wire w_sstausSUM,w_sstausMXR;
       wire [11:0] w_offset_12;
       (*dont_touch = "true"*)assign w_satpPNN_22=copy1OUT[23:2];
       assign w_vpn_20= copy1OUT[59:40];
       assign w_mode_2=copy1OUT[27:26];assign w_type_2=copy1OUT[25:24];
       assign w_sstausSUM=copy1OUT[1];assign w_sstausMXR=copy1OUT[0];
       assign w_offset_12=copy1OUT[39:28];
     

      assign wait1Out={wait1Data0,wait1Data1};
      //mutex1
      assign mutex1Data1 = { wait1Out[21:0], w_vpn_20[9:0]};//PtePPN_22,Vpn[0]_10
      (*dont_touch = "true"*)cMutexMerge2_32b mutex1(
.i_drive0(mutex1Drive0),.i_drive1(mutex1Drive1),.i_data0_32(mutex1Data0),.i_data1_32(mutex1Data1),
.i_freeNext(mutex2Free0),.rst(rst),
.o_free0(mutex1Free0),.o_free1(mutex1Free1),.o_driveNext(mutex2Drive0),.o_data_32(mutex1Out)
);  
       
       //cfifo1
       wire [31:0] fifo1DFF1data;//pte_32
       reg [31:0] fifo1DFF1out;
       wire [34:0] fifo1DFF2data,fifo1DFF2out;//pte_32,valid_3
       wire [31:0] pte32;
       wire [2:0] cond1Valid_3;
       wire fork_SRAM,pageFault;
       assign fifo1DFF1data = pte_32;
       
       cFifo1 cfifo1(
.i_drive(i_driveSRAM),.i_freeNext(cond1Free),.rst(rst),
.o_free(o_freeSRAM),.o_driveNext(cond1Drive),
.o_fire_1(fifo1Fire)
);
      always @(posedge fifo1Fire or negedge rst)
      if(rst==0)
       fifo1DFF1out <= 32'd0;
      else
        fifo1DFF1out <= fifo1DFF1data;
       
    (*dont_touch = "true"*)  pte_check pteCHECK_module(
       .pte_32(fifo1DFF1out[31:0]),//ptePNN_22,表项标志位8位,DAGUXWRV(7-0)
       .mode(w_mode_2),.type(w_type_2),//特权级mode,00U,01S,11M；当前指令类型type，取指令10，load读指令00，store/AMO存储或原子指令01
       .SUM(w_sstausSUM),.MXR(w_sstausMXR),.rst(rst),
       
       .valid(cond1Valid_3), //2-0 valid2出现缺页异常，valid1时找下一级表项,valid0时计算物理地址
       .pteout_32(pte32)
    );

     assign fifo1DFF2out = { pte32, cond1Valid_3}; 
      
      //condfork1
     (*dont_touch = "true"*) cCondFork3 cond1(
.i_drive(cond1Drive),.i_freeNext0(copy2Free),.i_freeNext1(mutex1Free1),.i_freeNext2(i_freeNextFault),//i_freeNext3,i_freeNext4,
.valid0(cond1Valid_3[0]),.valid1(cond1Valid_3[1]),.valid2(cond1Valid_3[2]),//valid3,valid4,
.o_fire(cond1Fire),.rst(rst),
.o_free(cond1Free),.o_driveNext0(copy2Drive),.o_driveNext1(mutex1Drive1),.o_driveNext2(o_driveNextFault)//,o_driveNext3,o_driveNext4
);
      
      wire [33:0] cond1data,cond1out;//pte_32,pagefault,forkSRAM
      assign cond1data = { fifo1DFF2out[34:3], fifo1DFF2out[2], fifo1DFF2out[0]};
      
      dff_34 cond1_DFF( .d(cond1data),.fire(cond1Fire),.rst(rst),.q(cond1out) );
      
      assign pageFAULT_2 = { cond1out[1], 1'b0 };
      assign wait1Data1 = { 10'b0, cond1out[33:12]};//ptePNN_22
      
      
      //copyfork2 1 copy 2
       cCopyFork2 copy2(//wait2,wait3
.i_drive(copy2Drive),.i_freeNext0(wait3Free1),.i_freeNext1(i_freeNextTlb),
.o_free(copy2Free),.o_driveNext0(wait3Drive1),.o_driveNext1(o_driveNextTlb),
.o_fire(copy2Fire),.rst(rst));
      
      wire [32:0] copy2data,copy2out;//pte_32,forkSRAM
      assign copy2data = { cond1out[33:2], cond1out[0]};
      dff_33 copy2_DFF( .d(copy2data),.fire(copy2Fire),.rst(rst),.q(copy2out) );
      assign tlbEntry_32 = copy2out[32:1];   
    
    (*dont_touch = "true"*) cMutexMerge2_35b mutex2(
.i_drive0(mutex2Drive0),.i_drive1(wait3Drive1),.i_data0_35({ mutex1Out, 3'b0 }),.i_data1_35({ fifo1DFF1out[31:10], w_offset_12, copy2out[0]}),
.i_freeNext(i_freeNextPmp),.rst(rst),
.o_free0(mutex2Free0),.o_free1(wait3Free1),.o_driveNext(o_driveNextPmp),.o_data_35(mutex2out)
);

      always @(posedge o_driveNextPmp or negedge rst)
          if(!rst)begin
            physicalADDR_34 <= 34'd0;
            forkSRAM_1 <= 0;
          end
          else begin
            physicalADDR_34 <= mutex2out[34:1];//pnn_22,offset_12
            forkSRAM_1 <= mutex2out[0];
          end
    
endmodule