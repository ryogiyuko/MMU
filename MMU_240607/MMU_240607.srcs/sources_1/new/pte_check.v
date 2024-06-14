`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/11 10:54:04
// Design Name: 
// Module Name: pte_check
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


module pte_check(
       input [31:0] pte_32,//31-0 ptePNN_22,表项标志位10位,保留的两位，DAGUXWRV(7-0)
       input [1:0] mode,type,//特权级mode,00U,01S,11M；当前指令类型type，取指令10，load读指令00，store/AMO存储或原子指令01
       input SUM,MXR,rst,
       output reg[2:0] valid, //2-0 valid2出现缺页异常，valid1时找下一级表项,valid0时计算物理地址
       //output forkSRAM_1,//0到SV32,1到SRAM
       //output pageFAULT,//为1出现缺页异常
       output [31:0] pteout_32
       
    );
    
    wire U,X,W,R,V;
    assign U = pte_32[4];
    assign X = pte_32[3];
    assign W = pte_32[2];
    assign R = pte_32[1];
    assign V = pte_32[0];
   
    wire [3:0] selU;
    wire [5:0] sel;
    assign selU = { U, mode, SUM};
    assign sel = { X,W,R, MXR ,type};//XWR
    
     reg[2:0] valid0,valid1;
    
    always @(*)//posedge fire or negedge rst
        begin:check
          case(selU)//U, mode, SUM
            4'b0000,4'b0001:valid0 = 3'b100; 
            4'b1010:valid0 = 3'b100;
            default:valid0 = 3'b001;
          endcase
          
          if(!V || (R == 0 && W == 1)) valid1 = 3'b100;
          else if(W == X && X == R && W == 0) valid1 = 3'b010;
          else
            case(sel)//X、W、R、MXR、type
              6'b000000,6'b100000: valid1 = 3'b100;
              6'b000100,6'b010100: valid1 = 3'b100;
              6'b000001,6'b101101,6'b000101,6'b001001,6'b001101,6'b100001,6'b100101,6'b101001: valid1 = 3'b100;
              6'b000010,6'b000110,6'b001010,6'b001110,6'b011010,6'b011110: valid1 = 3'b100;
              default:valid1 = 3'b001;
            endcase
            
            if(valid1[1] == 1) valid = 3'b010;
            else if(valid0[2] == 1 || valid1[2] == 1)valid = 3'b100;
            else if(valid0[0] == 1 || valid1[0] == 1)valid = 3'b001;
            else valid = 3'b000;
        end
    assign pteout_32 = pte_32;
    
endmodule
