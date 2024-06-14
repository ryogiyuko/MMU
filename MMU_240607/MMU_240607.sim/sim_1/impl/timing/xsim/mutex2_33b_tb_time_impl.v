// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Jun 12 15:33:45 2024
// Host        : DESKTOP-DKUDC5F running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Xilinx/Verilog/MMU_240607/MMU_240607.sim/sim_1/impl/timing/xsim/mutex2_33b_tb_time_impl.v
// Design      : cMutexMerge3_2b
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xcvu13p-fhgb2104-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IBUF_UNIQ_BASE_
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD509
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD510
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD511
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD512
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD513
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD514
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD515
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD516
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD517
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD518
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module cFifo1
   (inR,
    trig,
    o_fire_1,
    o_driveNext,
    outR_reg,
    req,
    i_freeNext_IBUF,
    i_drive,
    rst);
  output inR;
  output trig;
  output o_fire_1;
  input o_driveNext;
  input outR_reg;
  input req;
  input i_freeNext_IBUF;
  input i_drive;
  input rst;

  wire i_drive;
  wire i_freeNext_IBUF;
  wire inR;
  wire o_driveNext;
  wire o_fire_1;
  wire outR_reg;
  wire req;
  wire rst;
  wire trig;
  wire w_driveNext;
  wire w_driveNext0;
  wire w_free0;
  wire [1:1]w_outARelay_2;
  wire w_outRRelay_2_0;
  wire w_outRRelay_2_1;
  wire NLW_relay0_inA_UNCONNECTED;
  wire NLW_sender_o_free_UNCONNECTED;

  LUT3 #(
    .INIT(8'hFE)) 
    delay0_i_1
       (.I0(w_driveNext0),
        .I1(o_driveNext),
        .I2(outR_reg),
        .O(inR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    firstTap_i_1
       (.I0(o_fire_1),
        .I1(req),
        .I2(i_freeNext_IBUF),
        .O(trig));
  (* DONT_TOUCH *) 
  delay1Unit__1 outdelay0
       (.inR(o_fire_1),
        .outR(w_driveNext),
        .rst(rst));
  (* DONT_TOUCH *) 
  delay1U__1 outdelay1
       (.inR(w_driveNext),
        .outR(w_driveNext0));
  (* DONT_TOUCH *) 
  receiver__1 receiver
       (.i_freeNext(w_free0),
        .inA(w_outARelay_2),
        .inR(w_outRRelay_2_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    receiver_i_1
       (.I0(i_freeNext_IBUF),
        .I1(req),
        .O(w_free0));
  (* DONT_TOUCH *) 
  relay__1 relay0
       (.fire(o_fire_1),
        .inA(NLW_relay0_inA_UNCONNECTED),
        .inR(w_outRRelay_2_0),
        .outA(w_outARelay_2),
        .outR(w_outRRelay_2_1));
  (* DONT_TOUCH *) 
  sender__1 sender
       (.i_drive(i_drive),
        .i_free(w_driveNext),
        .o_free(NLW_sender_o_free_UNCONNECTED),
        .outR(w_outRRelay_2_0),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "cFifo1" *) 
module cFifo1_0
   (trig,
    o_fire_1,
    o_driveNext,
    req,
    i_freeNext_IBUF,
    i_drive,
    rst);
  output trig;
  output o_fire_1;
  output o_driveNext;
  input req;
  input i_freeNext_IBUF;
  input i_drive;
  input rst;

  wire i_drive;
  wire i_freeNext_IBUF;
  wire o_driveNext;
  wire o_fire_1;
  wire req;
  wire rst;
  wire trig;
  wire w_driveNext;
  wire w_free1;
  wire [1:1]w_outARelay_2;
  wire w_outRRelay_2_0;
  wire w_outRRelay_2_1;
  wire NLW_relay0_inA_UNCONNECTED;
  wire NLW_sender_o_free_UNCONNECTED;

  (* DONT_TOUCH *) 
  delay1Unit__2 outdelay0
       (.inR(o_fire_1),
        .outR(w_driveNext),
        .rst(rst));
  (* DONT_TOUCH *) 
  delay1U__2 outdelay1
       (.inR(w_driveNext),
        .outR(o_driveNext));
  (* DONT_TOUCH *) 
  receiver__2 receiver
       (.i_freeNext(w_free1),
        .inA(w_outARelay_2),
        .inR(w_outRRelay_2_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    receiver_i_1__0
       (.I0(i_freeNext_IBUF),
        .I1(req),
        .O(w_free1));
  (* DONT_TOUCH *) 
  relay__2 relay0
       (.fire(o_fire_1),
        .inA(NLW_relay0_inA_UNCONNECTED),
        .inR(w_outRRelay_2_0),
        .outA(w_outARelay_2),
        .outR(w_outRRelay_2_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    secondTap_i_1
       (.I0(o_fire_1),
        .I1(req),
        .I2(i_freeNext_IBUF),
        .O(trig));
  (* DONT_TOUCH *) 
  sender__2 sender
       (.i_drive(i_drive),
        .i_free(w_driveNext),
        .o_free(NLW_sender_o_free_UNCONNECTED),
        .outR(w_outRRelay_2_0),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "cFifo1" *) 
module cFifo1_1
   (trig,
    o_fire_1,
    o_driveNext,
    req,
    i_freeNext_IBUF,
    ff_state,
    i_drive,
    rst);
  output trig;
  output o_fire_1;
  output o_driveNext;
  input req;
  input i_freeNext_IBUF;
  input ff_state;
  input i_drive;
  input rst;

  wire ff_state;
  wire i_drive;
  wire i_freeNext_IBUF;
  wire o_driveNext;
  wire o_fire_1;
  wire req;
  wire rst;
  wire trig;
  wire w_driveNext;
  wire w_free2;
  wire [1:1]w_outARelay_2;
  wire w_outRRelay_2_0;
  wire w_outRRelay_2_1;
  wire NLW_relay0_inA_UNCONNECTED;
  wire NLW_sender_o_free_UNCONNECTED;

  (* DONT_TOUCH *) 
  delay1Unit__3 outdelay0
       (.inR(o_fire_1),
        .outR(w_driveNext),
        .rst(rst));
  (* DONT_TOUCH *) 
  delay1U outdelay1
       (.inR(w_driveNext),
        .outR(o_driveNext));
  (* DONT_TOUCH *) 
  receiver receiver
       (.i_freeNext(w_free2),
        .inA(w_outARelay_2),
        .inR(w_outRRelay_2_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    receiver_i_1__1
       (.I0(i_freeNext_IBUF),
        .I1(ff_state),
        .O(w_free2));
  (* DONT_TOUCH *) 
  relay relay0
       (.fire(o_fire_1),
        .inA(NLW_relay0_inA_UNCONNECTED),
        .inR(w_outRRelay_2_0),
        .outA(w_outARelay_2),
        .outR(w_outRRelay_2_1));
  (* DONT_TOUCH *) 
  sender sender
       (.i_drive(i_drive),
        .i_free(w_driveNext),
        .o_free(NLW_sender_o_free_UNCONNECTED),
        .outR(w_outRRelay_2_0),
        .rst(rst));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    thirdTap_i_1
       (.I0(o_fire_1),
        .I1(req),
        .I2(i_freeNext_IBUF),
        .O(trig));
endmodule

(* ECO_CHECKSUM = "c917cbf5" *) 
(* NotValidForBitStream *)
module cMutexMerge3_2b
   (i_drive0,
    i_drive1,
    i_drive2,
    i_data0_2,
    i_data1_2,
    i_data2_2,
    i_freeNext,
    rst,
    o_free0,
    o_free1,
    o_free2,
    o_driveNext,
    o_data_2);
  input i_drive0;
  input i_drive1;
  input i_drive2;
  input [1:0]i_data0_2;
  input [1:0]i_data1_2;
  input [1:0]i_data2_2;
  input i_freeNext;
  input rst;
  output o_free0;
  output o_free1;
  output o_free2;
  output o_driveNext;
  output [1:0]o_data_2;

  wire [1:0]i_data0_2;
  wire [1:0]i_data0_2_IBUF;
  wire [1:0]i_data1_2;
  wire [1:0]i_data1_2_IBUF;
  wire [1:0]i_data2_2;
  wire [1:0]i_data2_2_IBUF;
  wire i_drive0;
  wire i_drive0_IBUF;
  wire i_drive0_IBUF_BUFG;
  wire i_drive1;
  wire i_drive1_IBUF;
  wire i_drive1_IBUF_BUFG;
  wire i_drive2;
  wire i_drive2_IBUF;
  wire i_drive2_IBUF_BUFG;
  wire i_freeNext;
  wire i_freeNext_IBUF;
  wire [1:0]o_data_2;
  wire [1:0]o_data_2_OBUF;
  wire o_driveNext;
  wire o_driveNext_OBUF;
  wire o_free0;
  wire o_free0_OBUF;
  wire o_free1;
  wire o_free1_OBUF;
  wire o_free2;
  wire o_free2_OBUF;
  wire [1:0]r_data0_2;
  wire [1:0]r_data1_2;
  wire [1:0]r_data2_2;
  wire rst;
  wire rst_IBUF;
  wire w_driveNext;
  wire w_driveNext1;
  wire w_driveNext2;
  wire w_firstFire_1;
  wire w_firstReq;
  wire w_firstTrig;
  wire w_secondFire_1;
  wire w_secondReq;
  wire w_secondTrig;
  wire w_sendDrive;
  wire w_thirdFire_1;
  wire w_thirdReq;
  wire w_thirdTrig;

initial begin
 $sdf_annotate("mutex2_33b_tb_time_impl.sdf",,,,"tool_control");
end
  (* DONT_TOUCH *) 
  delay1Unit__4 delay0
       (.inR(w_driveNext),
        .outR(w_sendDrive),
        .rst(rst_IBUF));
  (* DONT_TOUCH *) 
  delay1Unit delay1
       (.inR(w_sendDrive),
        .outR(o_driveNext_OBUF),
        .rst(rst_IBUF));
  cFifo1 firstFifo
       (.i_drive(i_drive0_IBUF_BUFG),
        .i_freeNext_IBUF(i_freeNext_IBUF),
        .inR(w_driveNext),
        .o_driveNext(w_driveNext1),
        .o_fire_1(w_firstFire_1),
        .outR_reg(w_driveNext2),
        .req(w_firstReq),
        .rst(rst_IBUF),
        .trig(w_firstTrig));
  (* DONT_TOUCH *) 
  contTap__1 firstTap
       (.req(w_firstReq),
        .trig(w_firstTrig));
  (* IS_CCIO = "FALSE" *) 
  IBUF_UNIQ_BASE_ \i_data0_2_IBUF[0]_inst 
       (.I(i_data0_2[0]),
        .O(i_data0_2_IBUF[0]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD509 \i_data0_2_IBUF[1]_inst 
       (.I(i_data0_2[1]),
        .O(i_data0_2_IBUF[1]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD510 \i_data1_2_IBUF[0]_inst 
       (.I(i_data1_2[0]),
        .O(i_data1_2_IBUF[0]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD511 \i_data1_2_IBUF[1]_inst 
       (.I(i_data1_2[1]),
        .O(i_data1_2_IBUF[1]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD512 \i_data2_2_IBUF[0]_inst 
       (.I(i_data2_2[0]),
        .O(i_data2_2_IBUF[0]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD513 \i_data2_2_IBUF[1]_inst 
       (.I(i_data2_2[1]),
        .O(i_data2_2_IBUF[1]));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    i_drive0_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(i_drive0_IBUF),
        .O(i_drive0_IBUF_BUFG));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD514 i_drive0_IBUF_inst
       (.I(i_drive0),
        .O(i_drive0_IBUF));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    i_drive1_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(i_drive1_IBUF),
        .O(i_drive1_IBUF_BUFG));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD515 i_drive1_IBUF_inst
       (.I(i_drive1),
        .O(i_drive1_IBUF));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    i_drive2_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(i_drive2_IBUF),
        .O(i_drive2_IBUF_BUFG));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD516 i_drive2_IBUF_inst
       (.I(i_drive2),
        .O(i_drive2_IBUF));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD517 i_freeNext_IBUF_inst
       (.I(i_freeNext),
        .O(i_freeNext_IBUF));
  OBUF \o_data_2_OBUF[0]_inst 
       (.I(o_data_2_OBUF[0]),
        .O(o_data_2[0]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \o_data_2_OBUF[0]_inst_i_1 
       (.I0(r_data0_2[0]),
        .I1(w_firstReq),
        .I2(r_data1_2[0]),
        .I3(w_secondReq),
        .I4(w_thirdReq),
        .I5(r_data2_2[0]),
        .O(o_data_2_OBUF[0]));
  OBUF \o_data_2_OBUF[1]_inst 
       (.I(o_data_2_OBUF[1]),
        .O(o_data_2[1]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \o_data_2_OBUF[1]_inst_i_1 
       (.I0(r_data0_2[1]),
        .I1(w_firstReq),
        .I2(r_data1_2[1]),
        .I3(w_secondReq),
        .I4(w_thirdReq),
        .I5(r_data2_2[1]),
        .O(o_data_2_OBUF[1]));
  OBUF o_driveNext_OBUF_inst
       (.I(o_driveNext_OBUF),
        .O(o_driveNext));
  OBUF o_free0_OBUF_inst
       (.I(o_free0_OBUF),
        .O(o_free0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_free0_OBUF_inst_i_1
       (.I0(o_driveNext_OBUF),
        .I1(w_firstReq),
        .O(o_free0_OBUF));
  OBUF o_free1_OBUF_inst
       (.I(o_free1_OBUF),
        .O(o_free1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    o_free1_OBUF_inst_i_1
       (.I0(o_driveNext_OBUF),
        .I1(w_secondReq),
        .O(o_free1_OBUF));
  OBUF o_free2_OBUF_inst
       (.I(o_free2_OBUF),
        .O(o_free2));
  LUT2 #(
    .INIT(4'h8)) 
    o_free2_OBUF_inst_i_1
       (.I0(o_driveNext_OBUF),
        .I1(w_thirdReq),
        .O(o_free2_OBUF));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \r_data0_2_reg[0] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(i_data0_2_IBUF[0]),
        .Q(r_data0_2[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \r_data0_2_reg[1] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(i_data0_2_IBUF[1]),
        .Q(r_data0_2[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \r_data1_2_reg[0] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(i_data1_2_IBUF[0]),
        .Q(r_data1_2[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \r_data1_2_reg[1] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(i_data1_2_IBUF[1]),
        .Q(r_data1_2[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \r_data2_2_reg[0] 
       (.C(w_thirdFire_1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(i_data2_2_IBUF[0]),
        .Q(r_data2_2[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \r_data2_2_reg[1] 
       (.C(w_thirdFire_1),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(i_data2_2_IBUF[1]),
        .Q(r_data2_2[1]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD518 rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  cFifo1_0 secondFifo
       (.i_drive(i_drive1_IBUF_BUFG),
        .i_freeNext_IBUF(i_freeNext_IBUF),
        .o_driveNext(w_driveNext1),
        .o_fire_1(w_secondFire_1),
        .req(w_secondReq),
        .rst(rst_IBUF),
        .trig(w_secondTrig));
  (* DONT_TOUCH *) 
  contTap__2 secondTap
       (.req(w_secondReq),
        .trig(w_secondTrig));
  cFifo1_1 thirdFifo
       (.ff_state(w_thirdReq),
        .i_drive(i_drive2_IBUF_BUFG),
        .i_freeNext_IBUF(i_freeNext_IBUF),
        .o_driveNext(w_driveNext2),
        .o_fire_1(w_thirdFire_1),
        .req(w_firstReq),
        .rst(rst_IBUF),
        .trig(w_thirdTrig));
  (* DONT_TOUCH *) 
  contTap thirdTap
       (.req(w_thirdReq),
        .trig(w_thirdTrig));
endmodule

(* dont_touch = "true" *) 
module contTap
   (trig,
    req);
  input trig;
  output req;

  wire req;
  wire reqNeg;
  wire trig;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    ff_state
       (.C(trig),
        .CE(1'b1),
        .D(reqNeg),
        .PRE(1'b0),
        .Q(req));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    tmp_inv
       (.I0(req),
        .O(reqNeg));
endmodule

(* ORIG_REF_NAME = "contTap" *) (* dont_touch = "true" *) 
module contTap__1
   (trig,
    req);
  input trig;
  output req;

  wire req;
  wire reqNeg;
  wire trig;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    ff_state
       (.C(trig),
        .CE(1'b1),
        .D(reqNeg),
        .PRE(1'b0),
        .Q(req));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    tmp_inv
       (.I0(req),
        .O(reqNeg));
endmodule

(* ORIG_REF_NAME = "contTap" *) (* dont_touch = "true" *) 
module contTap__2
   (trig,
    req);
  input trig;
  output req;

  wire req;
  wire reqNeg;
  wire trig;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    ff_state
       (.C(trig),
        .CE(1'b1),
        .D(reqNeg),
        .PRE(1'b0),
        .Q(req));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    tmp_inv
       (.I0(req),
        .O(reqNeg));
endmodule

(* dont_touch = "yes" *) 
module delay1U
   (inR,
    outR);
  input inR;
  output outR;

  wire inR;

  assign outR = inR;
endmodule

(* ORIG_REF_NAME = "delay1U" *) (* dont_touch = "yes" *) 
module delay1U__1
   (inR,
    outR);
  input inR;
  output outR;

  wire inR;

  assign outR = inR;
endmodule

(* ORIG_REF_NAME = "delay1U" *) (* dont_touch = "yes" *) 
module delay1U__2
   (inR,
    outR);
  input inR;
  output outR;

  wire inR;

  assign outR = inR;
endmodule

(* dont_touch = "true" *) 
module delay1Unit
   (inR,
    outR,
    rst);
  input inR;
  output outR;
  input rst;

  wire inR;
  wire in_nor;
  wire outR;
  wire out_tmp;
  wire rst;

  LUT1 #(
    .INIT(2'h1)) 
    outR_i_1
       (.I0(outR),
        .O(out_tmp));
  LUT2 #(
    .INIT(4'h6)) 
    outR_i_2
       (.I0(inR),
        .I1(outR),
        .O(in_nor));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    outR_reg
       (.C(in_nor),
        .CE(1'b1),
        .CLR(rst),
        .D(out_tmp),
        .Q(outR));
endmodule

(* ORIG_REF_NAME = "delay1Unit" *) (* dont_touch = "true" *) 
module delay1Unit__1
   (inR,
    outR,
    rst);
  input inR;
  output outR;
  input rst;

  wire inR;
  wire in_nor;
  wire outR;
  wire out_tmp;
  wire rst;

  LUT1 #(
    .INIT(2'h1)) 
    outR_i_1
       (.I0(outR),
        .O(out_tmp));
  LUT2 #(
    .INIT(4'h6)) 
    outR_i_2
       (.I0(inR),
        .I1(outR),
        .O(in_nor));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    outR_reg
       (.C(in_nor),
        .CE(1'b1),
        .CLR(rst),
        .D(out_tmp),
        .Q(outR));
endmodule

(* ORIG_REF_NAME = "delay1Unit" *) (* dont_touch = "true" *) 
module delay1Unit__2
   (inR,
    outR,
    rst);
  input inR;
  output outR;
  input rst;

  wire inR;
  wire in_nor;
  wire outR;
  wire out_tmp;
  wire rst;

  LUT1 #(
    .INIT(2'h1)) 
    outR_i_1
       (.I0(outR),
        .O(out_tmp));
  LUT2 #(
    .INIT(4'h6)) 
    outR_i_2
       (.I0(inR),
        .I1(outR),
        .O(in_nor));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    outR_reg
       (.C(in_nor),
        .CE(1'b1),
        .CLR(rst),
        .D(out_tmp),
        .Q(outR));
endmodule

(* ORIG_REF_NAME = "delay1Unit" *) (* dont_touch = "true" *) 
module delay1Unit__3
   (inR,
    outR,
    rst);
  input inR;
  output outR;
  input rst;

  wire inR;
  wire in_nor;
  wire outR;
  wire out_tmp;
  wire rst;

  LUT1 #(
    .INIT(2'h1)) 
    outR_i_1
       (.I0(outR),
        .O(out_tmp));
  LUT2 #(
    .INIT(4'h6)) 
    outR_i_2
       (.I0(inR),
        .I1(outR),
        .O(in_nor));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    outR_reg
       (.C(in_nor),
        .CE(1'b1),
        .CLR(rst),
        .D(out_tmp),
        .Q(outR));
endmodule

(* ORIG_REF_NAME = "delay1Unit" *) (* dont_touch = "true" *) 
module delay1Unit__4
   (inR,
    outR,
    rst);
  input inR;
  output outR;
  input rst;

  wire inR;
  wire in_nor;
  wire outR;
  wire out_tmp;
  wire rst;

  LUT1 #(
    .INIT(2'h1)) 
    outR_i_1
       (.I0(outR),
        .O(out_tmp));
  LUT2 #(
    .INIT(4'h6)) 
    outR_i_2
       (.I0(inR),
        .I1(outR),
        .O(in_nor));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    outR_reg
       (.C(in_nor),
        .CE(1'b1),
        .CLR(rst),
        .D(out_tmp),
        .Q(outR));
endmodule

(* dont_touch = "true" *) 
module receiver
   (inR,
    inA,
    i_freeNext);
  input inR;
  output inA;
  input i_freeNext;

  wire i_freeNext;
  wire inA;
  wire inR;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    ff_state
       (.C(i_freeNext),
        .CE(1'b1),
        .D(inR),
        .PRE(1'b0),
        .Q(inA));
endmodule

(* ORIG_REF_NAME = "receiver" *) (* dont_touch = "true" *) 
module receiver__1
   (inR,
    inA,
    i_freeNext);
  input inR;
  output inA;
  input i_freeNext;

  wire i_freeNext;
  wire inA;
  wire inR;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    ff_state
       (.C(i_freeNext),
        .CE(1'b1),
        .D(inR),
        .PRE(1'b0),
        .Q(inA));
endmodule

(* ORIG_REF_NAME = "receiver" *) (* dont_touch = "true" *) 
module receiver__2
   (inR,
    inA,
    i_freeNext);
  input inR;
  output inA;
  input i_freeNext;

  wire i_freeNext;
  wire inA;
  wire inR;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    ff_state
       (.C(i_freeNext),
        .CE(1'b1),
        .D(inR),
        .PRE(1'b0),
        .Q(inA));
endmodule

(* dont_touch = "true" *) 
module relay
   (inR,
    inA,
    outR,
    outA,
    fire);
  input inR;
  output inA;
  output outR;
  input outA;
  output fire;

  wire empty;
  wire fire;
  wire inR;
  wire outA;
  wire request;
  wire state;
  wire tmp;

  assign inA = state;
  assign outR = state;
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    and2_clock
       (.I0(request),
        .I1(empty),
        .O(fire));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h9)) 
    eq2_empty_out
       (.I0(outA),
        .I1(state),
        .O(empty));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    ff_state
       (.C(fire),
        .CE(1'b1),
        .D(tmp),
        .PRE(1'b0),
        .Q(state));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h6)) 
    neq2_request_in
       (.I0(inR),
        .I1(state),
        .O(request));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    tmp_inv
       (.I0(state),
        .O(tmp));
endmodule

(* ORIG_REF_NAME = "relay" *) (* dont_touch = "true" *) 
module relay__1
   (inR,
    inA,
    outR,
    outA,
    fire);
  input inR;
  output inA;
  output outR;
  input outA;
  output fire;

  wire empty;
  wire fire;
  wire inR;
  wire outA;
  wire request;
  wire state;
  wire tmp;

  assign inA = state;
  assign outR = state;
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    and2_clock
       (.I0(request),
        .I1(empty),
        .O(fire));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h9)) 
    eq2_empty_out
       (.I0(outA),
        .I1(state),
        .O(empty));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    ff_state
       (.C(fire),
        .CE(1'b1),
        .D(tmp),
        .PRE(1'b0),
        .Q(state));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h6)) 
    neq2_request_in
       (.I0(inR),
        .I1(state),
        .O(request));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    tmp_inv
       (.I0(state),
        .O(tmp));
endmodule

(* ORIG_REF_NAME = "relay" *) (* dont_touch = "true" *) 
module relay__2
   (inR,
    inA,
    outR,
    outA,
    fire);
  input inR;
  output inA;
  output outR;
  input outA;
  output fire;

  wire empty;
  wire fire;
  wire inR;
  wire outA;
  wire request;
  wire state;
  wire tmp;

  assign inA = state;
  assign outR = state;
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    and2_clock
       (.I0(request),
        .I1(empty),
        .O(fire));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h9)) 
    eq2_empty_out
       (.I0(outA),
        .I1(state),
        .O(empty));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    ff_state
       (.C(fire),
        .CE(1'b1),
        .D(tmp),
        .PRE(1'b0),
        .Q(state));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h6)) 
    neq2_request_in
       (.I0(inR),
        .I1(state),
        .O(request));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    tmp_inv
       (.I0(state),
        .O(tmp));
endmodule

(* dont_touch = "true" *) 
module sender
   (i_drive,
    o_free,
    outR,
    i_free,
    rst);
  input i_drive;
  output o_free;
  output outR;
  input i_free;
  input rst;

  wire i_drive;
  wire i_free;
  wire outR;
  wire reqNeg;
  wire rst;

  assign o_free = i_free;
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    outR0_reg
       (.C(i_drive),
        .CE(1'b1),
        .CLR(rst),
        .D(reqNeg),
        .Q(outR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    tmp_inv
       (.I0(outR),
        .O(reqNeg));
endmodule

(* ORIG_REF_NAME = "sender" *) (* dont_touch = "true" *) 
module sender__1
   (i_drive,
    o_free,
    outR,
    i_free,
    rst);
  input i_drive;
  output o_free;
  output outR;
  input i_free;
  input rst;

  wire i_drive;
  wire i_free;
  wire outR;
  wire reqNeg;
  wire rst;

  assign o_free = i_free;
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    outR0_reg
       (.C(i_drive),
        .CE(1'b1),
        .CLR(rst),
        .D(reqNeg),
        .Q(outR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    tmp_inv
       (.I0(outR),
        .O(reqNeg));
endmodule

(* ORIG_REF_NAME = "sender" *) (* dont_touch = "true" *) 
module sender__2
   (i_drive,
    o_free,
    outR,
    i_free,
    rst);
  input i_drive;
  output o_free;
  output outR;
  input i_free;
  input rst;

  wire i_drive;
  wire i_free;
  wire outR;
  wire reqNeg;
  wire rst;

  assign o_free = i_free;
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    outR0_reg
       (.C(i_drive),
        .CE(1'b1),
        .CLR(rst),
        .D(reqNeg),
        .Q(outR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    tmp_inv
       (.I0(outR),
        .O(reqNeg));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
