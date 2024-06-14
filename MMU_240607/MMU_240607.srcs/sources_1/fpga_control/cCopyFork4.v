//-----------------------------------------------
//	module name: cCopyFork4
//	author: Tong Fu
//  modified by: zhanglzh
//	version: 1st version (2023-09-06)
//-----------------------------------------------
`timescale 1ns / 1ps

module cCopyFork4(
    // global reset signal
    input       rst,
    // left
    input       i_drive,
    output      o_free,
    // right0
    output      o_driveNext0,
    input       i_freeNext0,
    // right1
    output      o_driveNext1,
    input       i_freeNext1,
    // right2
    output      o_driveNext2,
    input       i_freeNext2,
    // right3
    output      o_driveNext3,
    input       i_freeNext3,

    output      o_fire
);

wire        w_driveNext;
wire [1:0]  w_outRRelay_2,w_outARelay_2;
wire        w_fire;
wire        w_freeNext;

sender sender(
	.i_drive    ( i_drive           ),
	.o_free     ( o_free            ),
	.outR       ( w_outRRelay_2[0]  ),
	.i_free     ( w_driveNext       ),
	.rst        ( rst               )
);

relay relay0(
	.inR        ( w_outRRelay_2[0] ),
	.inA        ( w_outARelay_2[0] ),
	.outR       ( w_outRRelay_2[1] ),
	.outA       ( w_outARelay_2[1] ),
	.fire       ( w_fire            )
);

receiver receiver(
	.inR        ( w_outRRelay_2[1]  ),
	.inA        ( w_outARelay_2[1]  ),
	.i_freeNext ( w_freeNext        )
);

//control signal
delay2Unit outdelay0(.inR(w_fire), .outR(w_driveNext), .rst(rst));

assign o_driveNext0 = w_driveNext;
assign o_driveNext1 = w_driveNext;
assign o_driveNext2 = w_driveNext;
assign o_driveNext3 = w_driveNext;

assign o_fire = w_fire;
assign w_freeNext = i_freeNext0 | i_freeNext1 | i_freeNext2 | i_freeNext3;

endmodule