`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/07 16:42:56
// Design Name: 
// Module Name: mutex2_33b_tb
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


module mutex2_33b_tb();
    reg i_drive0,i_drive1;
    reg [32:0] i_data0_33,i_data1_33;
    reg i_freeNext,rst;
    wire o_free0,o_free1,o_driveNext;
    wire [32:0] o_data_33;
    
    parameter cycle = 0.9;
    parameter rst_time = 200;//复位需要足够长
    parameter run_time = 10;    
    
    cMutexMerge2_33b udt_mutex2_33b(
        .i_drive0(i_drive0),.i_drive1(i_drive1),.i_data0_33(i_data0_33),.i_data1_33(i_data1_33),
        .i_freeNext(i_freeNext),.rst(rst),
        .o_free0(o_free0),.o_free1(o_free1),.o_driveNext(o_driveNext),.o_data_33(o_data_33)
    );
    
    initial begin
        rst=0;
        i_drive0=0;i_drive1=0;
        i_data0_33=0;i_data1_33=0;
        i_freeNext=0;
        #(rst_time*0.5*2);
        rst=1;  
    end
    
    initial begin
        #220;
        
        //1 data0
        i_data0_33 = 33'b100010100010100010100000100010100;//114514114
        i_data1_33 = 33'b100000111001000010000011100100001;//107210721
        #(cycle) i_drive0=~i_drive0;
        #(cycle) i_drive0=~i_drive0;
        
        //2 data 1
        #run_time;
        #(cycle) i_freeNext=~i_freeNext;
        #(cycle) i_freeNext=~i_freeNext;
        #2;
        #(cycle) i_drive1=~i_drive1;
        #(cycle) i_drive1=~i_drive1;
        
        //
        #run_time;
        #(cycle) i_freeNext=~i_freeNext;
        #(cycle) i_freeNext=~i_freeNext;
        #2;
        #(cycle) i_drive1=~i_drive1;
        #(cycle) i_drive1=~i_drive1;
    end
    
endmodule
