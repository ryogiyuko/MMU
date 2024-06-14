`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/12 14:57:38
// Design Name: 
// Module Name: mutex3_2b_tb
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


module mutex3_2b_tb();
    reg i_drive0,i_drive1,i_drive2;
    reg [1:0] i_data0,i_data1,i_data2;
    reg i_freeNext,i_rst;
    wire o_free0,o_free1,o_free2,o_driveNext;
    wire [1:0] o_data;
    
    parameter cycle = 0.9;
    parameter rst_time = 200;//复位需要足够长
    parameter run_time = 10;    
    
    cMutexMerge3_2b mutex1(
        .i_drive0(i_drive0),.i_drive1(i_drive0),.i_drive2(i_drive2),
        .i_data0_2(i_data0),.i_data1_2(i_data1),.i_data2_2(i_data2),
        .i_freeNext(i_freeNext),.rst(i_rst),
        .o_free0(o_free0),.o_free1(o_free1),.o_free2(o_free2),.o_driveNext(o_driveNext),.o_data_2(o_data)
    );
    
    initial begin
        i_rst=1;
        #5;
        i_rst=0;
        #5;
        i_rst=1;
        i_drive0=0;i_drive1=0;i_drive2=0;
        i_data0=0;i_data1=0;i_data2=0;
        i_freeNext=0;
        #(rst_time*0.5*2);
         
    end
    
    initial begin
        #220;
        
        //1 data0
        
//        i_data0_33 = 33'b100010100010100010100000100010100;//114514114
//        i_data1_33 = 33'b100000111001000010000011100100001;//107210721
        i_data0 = 2'b10;
        i_data1 = 2'b11;
        i_data2 = 2'b01;
        #(cycle) i_drive0=~i_drive0;
        #(cycle) i_drive0=~i_drive0;
        
        //2 data 1
        #run_time;
        #(cycle) i_freeNext=~i_freeNext;
        #(cycle) i_freeNext=~i_freeNext;
        #7;
        #(cycle) i_drive1=~i_drive1;
        #(cycle) i_drive1=~i_drive1;
        
        //3 data 2
        #run_time;
        #(cycle) i_freeNext=~i_freeNext;
        #(cycle) i_freeNext=~i_freeNext;
        #7;
        #(cycle) i_drive2=~i_drive2;
        #(cycle) i_drive2=~i_drive2;
    end
    
endmodule

