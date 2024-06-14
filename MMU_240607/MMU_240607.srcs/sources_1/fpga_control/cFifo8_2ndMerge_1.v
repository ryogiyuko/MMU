//-----------------------------------------------
//	module name: cFifo8_2ndMerge0
//	author: Tong Fu, Lingzhuang Zhang
//	version: 1st version (2022-11-15)
//-----------------------------------------------
`timescale 1ns / 1ps

module cFifo8_2ndMerge_1(
    // From Last
    input           i_drive,
    output          o_free,
    // To Next
    output          o_driveNext,
    input           i_freeNext,
    // fire signal
    output [7:0]    o_fire_8,
    // rst
    input           rst
);

(* dont_touch="true" *)wire [8:0] w_outRRelay_9,w_outARelay_9;
(* dont_touch="true" *)wire w_driveNext;

//pipeline
(* dont_touch="true" *)sender sender(
	.i_drive    (i_drive),
	.o_free     (o_free),
	.outR       (w_outRRelay_9[0]),
	.i_free     (w_driveNext),
	.rst        (rst)
);

(* dont_touch="true" *)relay relay0(
	.inR(w_outRRelay_9[0]),
	.inA(w_outARelay_9[0]),
	.outR(w_outRRelay_9[1]),
	.outA(w_outARelay_9[1]),
	.fire(o_fire_8[0])
);

(* dont_touch="true" *)relay relay1(
	.inR(w_outRRelay_9[1]),
	.inA(w_outARelay_9[1]),
	.outR(w_outRRelay_9[2]),
	.outA(w_outARelay_9[2]),
	.fire(o_fire_8[1])
);
(* dont_touch="true" *)relay relay2(
	.inR(w_outRRelay_9[2]),
	.inA(w_outARelay_9[2]),
	.outR(w_outRRelay_9[3]),
	.outA(w_outARelay_9[3]),
	.fire(o_fire_8[2])
);
(* dont_touch="true" *)relay relay3(
	.inR(w_outRRelay_9[3]),
	.inA(w_outARelay_9[3]),
	.outR(w_outRRelay_9[4]),
	.outA(w_outARelay_9[4]),
	.fire(o_fire_8[3])
);
(* dont_touch="true" *)relay relay4(
	.inR(w_outRRelay_9[4]),
	.inA(w_outARelay_9[4]),
	.outR(w_outRRelay_9[5]),
	.outA(w_outARelay_9[5]),
	.fire(o_fire_8[4])
);
(* dont_touch="true" *)relay relay5(
	.inR(w_outRRelay_9[5]),
	.inA(w_outARelay_9[5]),
	.outR(w_outRRelay_9[6]),
	.outA(w_outARelay_9[6]),
	.fire(o_fire_8[5])
);
(* dont_touch="true" *)relay relay6(
	.inR(w_outRRelay_9[6]),
	.inA(w_outARelay_9[6]),
	.outR(w_outRRelay_9[7]),
	.outA(w_outARelay_9[7]),
	.fire(o_fire_8[6])
);
(* dont_touch="true" *)relay relay7(
	.inR(w_outRRelay_9[7]),
	.inA(w_outARelay_9[7]),
	.outR(w_outRRelay_9[8]),
	.outA(w_outARelay_9[8]),
	.fire(o_fire_8[7])
);
(* dont_touch="true" *)receiver receiver(
	.inR(w_outRRelay_9[8]),
	.inA(w_outARelay_9[8]),
	.i_freeNext(i_freeNext)
);

(* dont_touch="true" *)delay2Unit outdelay0 (.inR(o_fire_8[7]), .outR(w_driveNext), .rst(rst));
(* dont_touch="true" *)delay2Unit outdelay1 (.inR(w_driveNext), .outR(o_driveNext), .rst(rst));
endmodule
