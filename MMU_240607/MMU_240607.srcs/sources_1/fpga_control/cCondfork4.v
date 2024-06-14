//-----------------------------------------------
//	module name: cCondfork7_2ndMerge
//	author: Tong Fu
//  modified by: zhanglzh
//	version: 1st version (2023-08-24)
//-----------------------------------------------

`timescale 1ns / 1ps

module cCondFork4(
    input  wire     rst,         
    input  wire     i_drive,
    output wire     o_free,
    output wire     o_fire,
    input  wire     valid0,valid1,valid2,valid3,
    output wire     o_driveNext0,o_driveNext1,o_driveNext2,o_driveNext3,
    input  wire     i_freeNext0, i_freeNext1, i_freeNext2, i_freeNext3
);



wire [1:0] w_outRRelay_2,w_outARelay_2;
wire w_fire;
wire w_freeNext;
wire w_driveNext0,w_driveNext1;

//pipeline
(* dont_touch="true" *)sender sender(
	.i_drive    (i_drive),
	.o_free     (o_free),
	.outR       (w_outRRelay_2[0]),
	.i_free     (w_fire),
	.rst        (rst)
);

(* dont_touch="true" *)relay relay0(
	.inR        (w_outRRelay_2[0]),
	.inA        (w_outARelay_2[0]),
	.outR       (w_outRRelay_2[1]),
	.outA       (w_outARelay_2[1]),
	.fire       (w_fire)
);

(* dont_touch="true" *)receiver receiver(
	.inR        (w_outRRelay_2[1]),
	.inA        (w_outARelay_2[1]),
	.i_freeNext (w_freeNext)
);

//delay here must match the time of counter to change.
(* dont_touch="true" *)delay2U outdelay0(.inR(w_fire), .outR(w_driveNext0));

//control signal
assign o_driveNext0 = w_driveNext0 & valid0;
assign o_driveNext1 = w_driveNext0 & valid1;
assign o_driveNext2 = w_driveNext0 & valid2;
assign o_driveNext3 = w_driveNext0 & valid3;


assign o_fire = w_fire;
assign w_freeNext = i_freeNext0 | i_freeNext1 | i_freeNext2 | i_freeNext3 ;

endmodule
