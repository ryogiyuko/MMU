//-----------------------------------------------
//	module name: cMutexMerge2_32b
//	author: Tong Fu, Lingzhuang Zhang
//	version: 1st version (2022-11-17)
//-----------------------------------------------

module cMutexMerge2_1b(
i_drive0,i_drive1,i_data0_1,i_data1_1,
i_freeNext,rst,
o_free0,o_free1,o_driveNext,o_data_1
);

//input & output port
input i_drive0,i_drive1;
input i_data0_1,i_data1_1;
input i_freeNext;
input rst;

output o_free0, o_free1;
output o_driveNext;
output o_data_1;

//wire & reg
wire w_sendDrive;
wire w_firstFire_1,w_secondFire_1;
wire w_firstTrig,w_secondTrig;
wire w_firstReq,w_secondReq;
wire w_driveNext0,w_driveNext1,w_driveNext;
wire w_free0,w_free1,w_freeEmpty;
wire w_data0_1,w_data1_1;
reg  r_data0_1,r_data1_1;

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
		r_data0_1 <= 1'b0;
		end
	else begin
		r_data0_1 <= i_data0_1;
		end
end
assign w_data0_1 = r_data0_1;
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
		r_data1_1 <= 1'b0;
		end
	else begin
		r_data1_1 <= i_data1_1;
		end
end
assign w_data1_1 = r_data1_1;
assign w_secondTrig = w_secondFire_1 | w_free1;

contTap secondTap(
.trig(w_secondTrig),
.req(w_secondReq)
);

assign w_driveNext = w_driveNext0 | w_driveNext1;
assign w_free0 = i_freeNext & w_firstReq;
assign w_free1 = i_freeNext & w_secondReq;
assign o_free0 = o_driveNext & w_firstReq;
assign o_free1 = o_driveNext & w_secondReq;
assign o_data_1 = (w_firstReq == 1'b1) ? w_data0_1 :
			((w_secondReq == 1'b1) ? w_data1_1 : 1'b0);
delay1Unit delay0 (.inR(w_driveNext), .outR(w_sendDrive), .rst(rst));
delay1Unit delay1 (.inR(w_sendDrive), .outR(o_driveNext), .rst(rst));

endmodule
