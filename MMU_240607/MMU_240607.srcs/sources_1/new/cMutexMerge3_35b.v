`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/11 16:04:17
// Design Name: 
// Module Name: cMutexMerge3_35b
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


module cMutexMerge3_35b(
    i_drive0,i_drive1,i_drive2,i_data0_35,i_data1_35,i_data2_35,
    i_freeNext,rst,
    o_free0,o_free1,o_free2,o_driveNext,o_data_35
);

//input & output port
input i_drive0,i_drive1,i_drive2;
input [34:0] i_data0_35,i_data1_35,i_data2_35;
input i_freeNext;
input rst;

output o_free0,o_free1,o_free2;
output o_driveNext;
output [34:0]o_data_35;

//wire & reg
wire w_sendDrive;
wire w_firstFire_1,w_secondFire_1,w_thirdFire_1;
wire w_firstTrig,w_secondTrig,w_thirdTrig;
wire w_firstReq,w_secondReq,w_thirdReq;
wire w_driveNext0,w_driveNext1,w_driveNext2,w_driveNext;
wire w_free0,w_free1,w_free2,w_freeEmpty;
wire [1:0] w_data0_35,w_data1_35,w_data2_35;
reg [1:0] r_data0_35,r_data1_35,r_data2_35;

//firstFifo
cFifo1 firstFifo(
.i_drive(i_drive0),
.i_freeNext(w_free0),
.o_free(w_freeEmpty),
.o_driveNext(w_driveNext0),
.o_fire_1(w_firstFire_1),
.rst(rst)
);

always@(posedge w_firstFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data0_35 <= 35'b0;
		end
	else begin
		r_data0_35 <= i_data0_35;
		end
end
assign w_data0_35 = r_data0_35;
assign w_firstTrig = w_firstFire_1 | w_free0;

contTap firstTap(
.trig(w_firstTrig),
.req(w_firstReq)
);

//secondFifo
cFifo1 secondFifo(
.i_drive(i_drive1),
.i_freeNext(w_free1),
.o_free(w_freeEmpty),
.o_driveNext(w_driveNext1),
.o_fire_1(w_secondFire_1),
.rst(rst)
);

always@(posedge w_secondFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data1_35 <= 35'b0;
		end
	else begin
		r_data1_35 <= i_data1_35;
		end
end
assign w_data1_35 = r_data1_35;
assign w_secondTrig = w_secondFire_1 | w_free1;

contTap secondTap(
.trig(w_secondTrig),
.req(w_secondReq)
);

//thirdFifo
cFifo1 thirdFifo(
.i_drive(i_drive2),
.i_freeNext(w_free2),
.o_free(w_freeEmpty),
.o_driveNext(w_driveNext2),
.o_fire_1(w_thirdFire_1),
.rst(rst)
);

always@(posedge w_thirdFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data2_35 <= 35'b0;
		end
	else begin
		r_data2_35 <= i_data2_35;
		end
end
assign w_data2_35 = r_data2_35;
assign w_thirdTrig = w_thirdFire_1 | w_free0;

contTap thirdTap(
.trig(w_thirdTrig),
.req(w_thirdReq)
);

assign w_driveNext = w_driveNext0 | w_driveNext1 | w_driveNext2;
assign w_free0 = i_freeNext & w_firstReq;
assign w_free1 = i_freeNext & w_secondReq;
assign w_free2 = i_freeNext & w_thirdReq;
assign o_free0 = o_driveNext & w_firstReq;
assign o_free1 = o_driveNext & w_secondReq;
assign o_free2 = o_driveNext & w_thirdReq;
assign o_data_35 = (w_firstReq == 1'b1) ? w_data0_35 :
			     ((w_secondReq == 1'b1) ? w_data1_35 : 
			     ((w_thirdReq == 1'b1) ? w_data2_35 : 35'b0));
delay1Unit delay0 (.inR(w_driveNext), .outR(w_sendDrive), .rst(rst));
delay1Unit delay1 (.inR(w_sendDrive), .outR(o_driveNext), .rst(rst));

endmodule
