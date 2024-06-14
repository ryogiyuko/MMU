//-----------------------------------------------
//	module name: cCondfork2
//	author: Tong Fu, Lingzhuang Zhang
//	version: 1st version (2022-11-02)
//-----------------------------------------------

`timescale 1ns / 1ps

module cCondFork2(
i_drive,i_freeNext0,i_freeNext1,
valid0,valid1,o_fire,rst,
o_free,o_driveNext0,o_driveNext1
);

input i_drive;
input i_freeNext0,i_freeNext1;
input valid0,valid1;
input rst;


output o_free;
output o_driveNext0,o_driveNext1;
output o_fire;

wire [1:0] w_outRRelay_2,w_outARelay_2;
wire w_fire;
wire w_freeNext;
wire w_driveNext0;

//pipeline
sender sender(
	.i_drive(i_drive),
	.o_free(o_free),
	.outR(w_outRRelay_2[0]),
	.i_free(w_fire),
	.rst(rst)
);

relay relay0(
	.inR(w_outRRelay_2[0]),
	.inA(w_outARelay_2[0]),
	.outR(w_outRRelay_2[1]),
	.outA(w_outARelay_2[1]),
	.fire(w_fire)
);

receiver receiver(
	.inR(w_outRRelay_2[1]),
	.inA(w_outARelay_2[1]),
	.i_freeNext(w_freeNext)
);

//control signal
delay2Unit outdelay0(.inR(w_fire), .outR(w_driveNext0), .rst(rst));
assign o_driveNext0 = w_driveNext0 & valid0;
assign o_driveNext1 = w_driveNext0 & valid1;
assign o_fire = w_fire;
assign w_freeNext = i_freeNext0 | i_freeNext1;

endmodule

