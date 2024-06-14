//-----------------------------------------------
//	module name: cCopyFork2
//	author: Tong Fu
//	version: 1st version (2023-03-09)
//-----------------------------------------------

`timescale 1ns / 1ps

module cCopyFork2(
i_drive,i_freeNext0,i_freeNext1,
o_free,o_driveNext0,o_driveNext1,
o_fire,rst);

input i_drive;
input i_freeNext0,i_freeNext1;
input rst;

output o_free;
output o_driveNext0,o_driveNext1;
output o_fire;

wire w_driveNext;
wire [1:0] w_outRRelay_2,w_outARelay_2;
wire w_fire;
wire w_freeNext;

sender sender(
	.i_drive(i_drive),
	.o_free(o_free),
	.outR(w_outRRelay_2[0]),
	.i_free(w_driveNext),
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
delay2Unit outdelay0(.inR(w_fire), .outR(w_driveNext), .rst(rst));
assign o_driveNext0 = w_driveNext;
assign o_driveNext1 = w_driveNext;
assign o_fire = w_fire;
assign w_freeNext = i_freeNext0 | i_freeNext1;

endmodule