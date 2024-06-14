//-----------------------------------------------
//	module name: cArbMerge5_51b
//	author: Tong Fu, Lingzhuang Zhang
//	version: 1st version (2022-11-30)
//-----------------------------------------------

module cArbMerge5_51b(
	i_drive0,i_drive1,i_drive2,i_drive3,i_drive4,
	i_data0_51,i_data1_51,i_data2_51,i_data3_51,i_data4_51,
	i_freeNext,rst,
	o_free0,o_free1,o_free2,o_free3,o_free4,
	o_driveNext,o_data_51
);

//input & output port
input i_drive0,i_drive1,i_drive2,i_drive3,i_drive4;
input [50:0] i_data0_51,i_data1_51,i_data2_51,i_data3_51,i_data4_51;
input i_freeNext;
input rst;

output o_free0,o_free1,o_free2,o_free3,o_free4;
output o_driveNext;
output [50:0] o_data_51;

wire w_westFire_1,w_eastFire_1,w_northFire_1,w_southFire_1,w_localFire_1;
wire w_sendFire_1,w_sendPreDrive0;
wire w_free0Next,w_free1Next,w_free2Next,w_free3Next,w_free4Next;
wire w_drive0Next,w_drive1Next,w_drive2Next,w_drive3Next,w_drive4Next;
wire w_westReset,w_eastReset,w_northReset,w_southReset,w_localReset;
wire w_westTrig,w_eastTrig,w_northTrig,w_southTrig,w_localTrig;
wire w_westReq,w_eastReq,w_northReq,w_southReq,w_localReq;
wire [4:0] w_validation_5;
wire w_isValid;
wire RoundAgain,w_updateTrig;
wire pmt;
wire w_sendTrig,w_sendDrive;
wire w_sendFree,w_sendPreDrive,w_roundTrig;
wire [50:0] w_data0_51,w_data1_51,w_data2_51,w_data3_51,w_data4_51;
wire [50:0] w_data_51;
wire [4:0] w_priority_5;

reg [50:0] r_data0_51,r_data1_51,r_data2_51,r_data3_51,r_data4_51;
reg [50:0] r_data_51;
reg [4:0] r_priority_5;

//----------------westFifo---------------//
cPmtFifo1 westPmtFifo(
.i_drive(i_drive0),
.i_freeNext(w_westReset),
.o_free(o_free0),
.o_driveNext(w_drive0Next),
.o_fire_1(w_westFire_1),
.pmt(pmt),
.rst(rst)
);

always@(posedge w_westFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data0_51 <= 51'b0;
		end
	else begin
		r_data0_51 <= i_data0_51;
		end
end
assign w_data0_51 = r_data0_51;
assign w_westTrig = w_westFire_1 | w_westReset;
contTap westTap(
.trig(w_westTrig),
.req(w_westReq)
);

//----------------eastFifo---------------//
cPmtFifo1 eastPmtFifo(
.i_drive(i_drive1),
.i_freeNext(w_eastReset),
.o_free(o_free1),
.o_driveNext(w_drive1Next),
.o_fire_1(w_eastFire_1),
.pmt(pmt),
.rst(rst)
);

always@(posedge w_eastFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data1_51 <= 51'b0;
		end
	else begin
		r_data1_51 <= i_data1_51;
		end
end
assign w_data1_51 = r_data1_51;
assign w_eastTrig = w_eastFire_1 | w_eastReset;
contTap eastTap(
.trig(w_eastTrig),
.req(w_eastReq)
);

//----------------northFifo---------------//
cPmtFifo1 northPmtFifo(
.i_drive(i_drive2),
.i_freeNext(w_northReset),
.o_free(o_free2),
.o_driveNext(w_drive2Next),
.o_fire_1(w_northFire_1),
.pmt(pmt),
.rst(rst)
);

always@(posedge w_northFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data2_51 <= 51'b0;
		end
	else begin
		r_data2_51 <= i_data2_51;
		end
end
assign w_data2_51 = r_data2_51;
assign w_northTrig = w_northFire_1 | w_northReset;
contTap northTap(
.trig(w_northTrig),
.req(w_northReq)
);

//----------------southFifo---------------//
cPmtFifo1 southPmtFifo(
.i_drive(i_drive3),
.i_freeNext(w_southReset),
.o_free(o_free3),
.o_driveNext(w_drive3Next),
.o_fire_1(w_southFire_1),
.pmt(pmt),
.rst(rst)
);

always@(posedge w_southFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data3_51 <= 51'b0;
		end
	else begin
		r_data3_51 <= i_data3_51;
		end
end
assign w_data3_51 = r_data3_51;
assign w_southTrig = w_southFire_1 | w_southReset;
contTap southTap(
.trig(w_southTrig),
.req(w_southReq)
);

//----------------localFifo---------------//
cPmtFifo1 localPmtFifo(
.i_drive(i_drive4),
.i_freeNext(w_localReset),
.o_free(o_free4),
.o_driveNext(w_drive4Next),
.o_fire_1(w_localFire_1),
.pmt(pmt),
.rst(rst)
);

always@(posedge w_localFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data4_51 <= 51'b0;
		end
	else begin
		r_data4_51 <= i_data4_51;
		end
end
assign w_data4_51 = r_data4_51;
assign w_localTrig = w_localFire_1 | w_localReset;
contTap localTap(
.trig(w_localTrig),
.req(w_localReq)
);

//priority
always@(posedge w_updateTrig or negedge rst)
begin
	if(!rst)
		r_priority_5 = 5'b00000;
	else
	    if(r_priority_5 == 5'b00000)
            r_priority_5 = 5'b00001;
        else
		if(r_priority_5 == 5'b00001)
			r_priority_5 = 5'b00010;
		else
		if(r_priority_5 == 5'b00010)
			r_priority_5 = 5'b00100;
		else
		if(r_priority_5 == 5'b00100)
			r_priority_5 = 5'b01000;
		else
		if(r_priority_5 == 5'b01000)
			r_priority_5 = 5'b10000;
		else
		if(r_priority_5 == 5'b10000)
			r_priority_5 = 5'b00001;
		else
			r_priority_5 = 5'b00000;
end 
assign w_priority_5 = r_priority_5;

//dir validation
assign w_validation_5[0] = w_priority_5[0]  & w_westReq;
assign w_validation_5[1] = w_priority_5[1]  & w_eastReq;
assign w_validation_5[2] = w_priority_5[2]  & w_northReq;
assign w_validation_5[3] = w_priority_5[3]  & w_southReq;
assign w_validation_5[4] = w_priority_5[4]  & w_localReq;
assign w_isValid = w_validation_5[0] | w_validation_5[1] | w_validation_5[2] | w_validation_5[3] | w_validation_5[4];

//Mux
(* dont_touch="true" *)assign w_data_51 = (w_validation_5 == 5'b00001) ? w_data0_51 :
                    ((w_validation_5 == 5'b00010) ? w_data1_51 : 
					((w_validation_5 == 5'b00100) ? w_data2_51 :
					((w_validation_5 == 5'b01000) ? w_data3_51 :
					((w_validation_5 == 5'b10000) ? w_data4_51 : 51'b0 ))));

//lock
assign pmt = ~(w_westReq | w_eastReq | w_northReq | w_southReq | w_localReq);

//RoundAgain
assign RoundAgain = w_updateTrig & ~pmt;
assign w_sendTrig = RoundAgain | w_drive0Next | w_drive1Next | w_drive2Next | w_drive3Next | w_drive4Next;

(* dont_touch="true" *)delay2Unit delay0(
.inR(w_sendTrig),
.outR(w_sendPreDrive0),
.rst(rst)
);

(* dont_touch="true" *)delay2U delay3(
.inR(w_sendPreDrive0),
.outR(w_sendPreDrive)
);

wire w_roundDrive,w_sendFinish;
assign w_sendDrive = w_sendPreDrive & w_isValid;
assign w_roundDrive = w_sendPreDrive & (~w_isValid);

(* dont_touch="true" *)delay2U delay1(
.inR(w_roundDrive),
.outR(w_roundTrig)
);
(* dont_touch="true" *)delay2U delay2(
.inR(i_freeNext),
.outR(w_sendFinish)
);
assign w_updateTrig = w_sendFinish | w_roundTrig;

//resetTrig
assign w_westReset = w_priority_5[0]  & w_westReq & i_freeNext; 
assign w_eastReset = w_priority_5[1]  & w_eastReq & i_freeNext;
assign w_northReset = w_priority_5[2]  & w_northReq & i_freeNext;
assign w_southReset = w_priority_5[3]  & w_southReq & i_freeNext;
assign w_localReset = w_priority_5[4]  & w_localReq & i_freeNext;
//sendFifo
cFifo1 sendFifo(
.i_drive(w_sendDrive),
.i_freeNext(i_freeNext),
.o_free(w_sendFree),
.o_driveNext(o_driveNext),
.o_fire_1(w_sendFire_1),
.rst(rst)
);

always@(posedge w_sendFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data_51 <= 51'b0;
		end
	else begin
		r_data_51 <= w_data_51;
		end
end
assign o_data_51 = r_data_51;
endmodule