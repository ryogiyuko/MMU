//-----------------------------------------------
//	module name: cLastFifo2
//	author: Tong Fu, Lingzhuang Zhang
//	version: 1st version (2022-11-15)
//-----------------------------------------------

`timescale 1ns / 1ps

module cLastFifo2(
i_drive,rst,
o_free,o_driveNext,
o_fire_2
);

input i_drive, rst;
output o_free, o_driveNext;
output [1:0] o_fire_2;

wire [1:0] w_outRRelay_2,w_outARelay_2;
wire w_outR;
wire w_driveNext;
wire [1:0] w_fire_2;

//pipeline
sender sender(
	.i_drive(i_drive),
	.o_free(o_free),
	.outR(w_outRRelay_2[0]),
	.i_free(w_driveNext),
	.rst(rst)
);

(* dont_touch="true" *)relay relay0(
	.inR(w_outRRelay_2[0]),
	.inA(w_outARelay_2[0]),
	.outR(w_outRRelay_2[1]),
	.outA(w_outARelay_2[1]),
	.fire(w_fire_2[0])
);

(* dont_touch="true" *)relay relay1(
	.inR(w_outRRelay_2[1]),
	.inA(w_outARelay_2[1]),
	.outR(w_outR),
	.outA(w_outR),
	.fire(w_fire_2[1])
);

(* dont_touch="true" *)assign o_fire_2 = w_fire_2;
delay1Unit outdelay0 (.inR(w_fire_2[1]), .outR(w_driveNext), .rst(rst));
delay1Unit outdelay1 (.inR(w_driveNext),.outR(o_driveNext), .rst(rst));
endmodule
