// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Jun 12 21:50:07 2024
// Host        : DESKTOP-DKUDC5F running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Xilinx/Verilog/MMU_240607/MMU_240607.sim/sim_1/synth/timing/xsim/cMutexMerge3_1b_tb_time_synth.v
// Design      : cMutexMerge3_1b
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

module IBUF_HD589
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

module IBUF_HD590
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

module IBUF_HD591
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

module IBUF_HD592
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

module IBUF_HD593
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

module IBUF_HD594
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

module IBUF_HD595
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
   (fire,
    inR,
    trig,
    rst,
    i_drive0_IBUF_BUFG,
    outR0_reg,
    outR,
    outR_reg,
    req,
    i_freeNext_IBUF);
  output fire;
  output inR;
  output trig;
  input rst;
  input i_drive0_IBUF_BUFG;
  input outR0_reg;
  input outR;
  input outR_reg;
  input req;
  input i_freeNext_IBUF;

  wire fire;
  wire i_drive0_IBUF_BUFG;
  wire i_freeNext_IBUF;
  wire inR;
  wire outR;
  wire outR0_reg;
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

  LUT3 #(
    .INIT(8'hFE)) 
    delay0_i_1
       (.I0(w_driveNext0),
        .I1(outR),
        .I2(outR_reg),
        .O(inR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    firstTap_i_1
       (.I0(fire),
        .I1(req),
        .I2(i_freeNext_IBUF),
        .O(trig));
  (* DONT_TOUCH *) 
  delay1Unit__1 outdelay0
       (.inR(fire),
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
       (.fire(fire),
        .inA(NLW_relay0_inA_UNCONNECTED),
        .inR(w_outRRelay_2_0),
        .outA(w_outARelay_2),
        .outR(w_outRRelay_2_1));
  sender_3 sender
       (.i_drive0_IBUF_BUFG(i_drive0_IBUF_BUFG),
        .inR(w_outRRelay_2_0),
        .outR0_reg_0(outR0_reg));
endmodule

(* ORIG_REF_NAME = "cFifo1" *) 
module cFifo1_0
   (fire,
    outR,
    rst_0,
    trig,
    rst,
    i_drive1_IBUF_BUFG,
    req,
    i_freeNext_IBUF);
  output fire;
  output outR;
  output rst_0;
  output trig;
  input rst;
  input i_drive1_IBUF_BUFG;
  input req;
  input i_freeNext_IBUF;

  wire fire;
  wire i_drive1_IBUF_BUFG;
  wire i_freeNext_IBUF;
  wire outR;
  wire req;
  wire rst;
  wire rst_0;
  wire trig;
  wire w_driveNext;
  wire w_free1;
  wire [1:1]w_outARelay_2;
  wire w_outRRelay_2_0;
  wire w_outRRelay_2_1;
  wire NLW_relay0_inA_UNCONNECTED;

  (* DONT_TOUCH *) 
  delay1Unit__2 outdelay0
       (.inR(fire),
        .outR(w_driveNext),
        .rst(rst));
  (* DONT_TOUCH *) 
  delay1U__2 outdelay1
       (.inR(w_driveNext),
        .outR(outR));
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
       (.fire(fire),
        .inA(NLW_relay0_inA_UNCONNECTED),
        .inR(w_outRRelay_2_0),
        .outA(w_outARelay_2),
        .outR(w_outRRelay_2_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    secondTap_i_1
       (.I0(fire),
        .I1(req),
        .I2(i_freeNext_IBUF),
        .O(trig));
  sender_2 sender
       (.i_drive1_IBUF_BUFG(i_drive1_IBUF_BUFG),
        .inR(w_outRRelay_2_0),
        .rst(rst),
        .rst_0(rst_0));
endmodule

(* ORIG_REF_NAME = "cFifo1" *) 
module cFifo1_1
   (fire,
    outR,
    trig,
    rst,
    i_drive2_IBUF_BUFG,
    outR0_reg,
    req,
    i_freeNext_IBUF);
  output fire;
  output outR;
  output trig;
  input rst;
  input i_drive2_IBUF_BUFG;
  input outR0_reg;
  input req;
  input i_freeNext_IBUF;

  wire fire;
  wire i_drive2_IBUF_BUFG;
  wire i_freeNext_IBUF;
  wire outR;
  wire outR0_reg;
  wire req;
  wire rst;
  wire trig;
  wire w_driveNext;
  wire w_free2;
  wire [1:1]w_outARelay_2;
  wire w_outRRelay_2_0;
  wire w_outRRelay_2_1;
  wire NLW_relay0_inA_UNCONNECTED;

  (* DONT_TOUCH *) 
  delay1Unit__3 outdelay0
       (.inR(fire),
        .outR(w_driveNext),
        .rst(rst));
  (* DONT_TOUCH *) 
  delay1U outdelay1
       (.inR(w_driveNext),
        .outR(outR));
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
        .I1(req),
        .O(w_free2));
  (* DONT_TOUCH *) 
  relay relay0
       (.fire(fire),
        .inA(NLW_relay0_inA_UNCONNECTED),
        .inR(w_outRRelay_2_0),
        .outA(w_outARelay_2),
        .outR(w_outRRelay_2_1));
  sender sender
       (.i_drive2_IBUF_BUFG(i_drive2_IBUF_BUFG),
        .inR(w_outRRelay_2_0),
        .outR0_reg_0(outR0_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    thirdTap_i_1
       (.I0(fire),
        .I1(req),
        .I2(i_freeNext_IBUF),
        .O(trig));
endmodule

(* NotValidForBitStream *)
module cMutexMerge3_1b
   (i_drive0,
    i_drive1,
    i_drive2,
    i_data0,
    i_data1,
    i_data2,
    i_freeNext,
    rst,
    o_free0,
    o_free1,
    o_free2,
    o_driveNext,
    o_data);
  input i_drive0;
  input i_drive1;
  input i_drive2;
  input i_data0;
  input i_data1;
  input i_data2;
  input i_freeNext;
  input rst;
  output o_free0;
  output o_free1;
  output o_free2;
  output o_driveNext;
  output o_data;

  wire i_data0;
  wire i_data0_IBUF;
  wire i_data1;
  wire i_data1_IBUF;
  wire i_data2;
  wire i_data2_IBUF;
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
  wire o_data;
  wire o_data_OBUF;
  wire o_driveNext;
  wire o_driveNext_OBUF;
  wire o_free0;
  wire o_free0_OBUF;
  wire o_free1;
  wire o_free1_OBUF;
  wire o_free2;
  wire o_free2_OBUF;
  wire r_data0;
  wire r_data1;
  wire r_data2;
  wire rst;
  wire rst_IBUF;
  wire secondFifo_n_2;
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
 $sdf_annotate("cMutexMerge3_1b_tb_time_synth.sdf",,,,"tool_control");
end
  (* DONT_TOUCH *) 
  delay2Unit__1 delay0
       (.inR(w_driveNext),
        .outR(w_sendDrive),
        .rst(rst_IBUF));
  (* DONT_TOUCH *) 
  delay2Unit delay1
       (.inR(w_sendDrive),
        .outR(o_driveNext_OBUF),
        .rst(rst_IBUF));
  cFifo1 firstFifo
       (.fire(w_firstFire_1),
        .i_drive0_IBUF_BUFG(i_drive0_IBUF_BUFG),
        .i_freeNext_IBUF(i_freeNext_IBUF),
        .inR(w_driveNext),
        .outR(w_driveNext1),
        .outR0_reg(secondFifo_n_2),
        .outR_reg(w_driveNext2),
        .req(w_firstReq),
        .rst(rst_IBUF),
        .trig(w_firstTrig));
  (* DONT_TOUCH *) 
  contTap__1 firstTap
       (.req(w_firstReq),
        .trig(w_firstTrig));
  (* IS_CCIO = "FALSE" *) 
  IBUF_UNIQ_BASE_ i_data0_IBUF_inst
       (.I(i_data0),
        .O(i_data0_IBUF));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD589 i_data1_IBUF_inst
       (.I(i_data1),
        .O(i_data1_IBUF));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD590 i_data2_IBUF_inst
       (.I(i_data2),
        .O(i_data2_IBUF));
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
  IBUF_HD591 i_drive0_IBUF_inst
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
  IBUF_HD592 i_drive1_IBUF_inst
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
  IBUF_HD593 i_drive2_IBUF_inst
       (.I(i_drive2),
        .O(i_drive2_IBUF));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD594 i_freeNext_IBUF_inst
       (.I(i_freeNext),
        .O(i_freeNext_IBUF));
  OBUF o_data_OBUF_inst
       (.I(o_data_OBUF),
        .O(o_data));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    o_data_OBUF_inst_i_1
       (.I0(r_data0),
        .I1(w_firstReq),
        .I2(r_data1),
        .I3(w_secondReq),
        .I4(w_thirdReq),
        .I5(r_data2),
        .O(o_data_OBUF));
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
  FDCE #(
    .INIT(1'b0)) 
    r_data0_reg
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(secondFifo_n_2),
        .D(i_data0_IBUF),
        .Q(r_data0));
  FDCE #(
    .INIT(1'b0)) 
    r_data1_reg
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(secondFifo_n_2),
        .D(i_data1_IBUF),
        .Q(r_data1));
  FDCE #(
    .INIT(1'b0)) 
    r_data2_reg
       (.C(w_thirdFire_1),
        .CE(1'b1),
        .CLR(secondFifo_n_2),
        .D(i_data2_IBUF),
        .Q(r_data2));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD595 rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  cFifo1_0 secondFifo
       (.fire(w_secondFire_1),
        .i_drive1_IBUF_BUFG(i_drive1_IBUF_BUFG),
        .i_freeNext_IBUF(i_freeNext_IBUF),
        .outR(w_driveNext1),
        .req(w_secondReq),
        .rst(rst_IBUF),
        .rst_0(secondFifo_n_2),
        .trig(w_secondTrig));
  (* DONT_TOUCH *) 
  contTap__2 secondTap
       (.req(w_secondReq),
        .trig(w_secondTrig));
  cFifo1_1 thirdFifo
       (.fire(w_thirdFire_1),
        .i_drive2_IBUF_BUFG(i_drive2_IBUF_BUFG),
        .i_freeNext_IBUF(i_freeNext_IBUF),
        .outR(w_driveNext2),
        .outR0_reg(secondFifo_n_2),
        .req(w_thirdReq),
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
  wire outR;
  wire outR0;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    delay0
       (.I0(inR),
        .O(outR0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    delay1
       (.I0(outR0),
        .O(outR));
endmodule

(* ORIG_REF_NAME = "delay1U" *) (* dont_touch = "yes" *) 
module delay1U__1
   (inR,
    outR);
  input inR;
  output outR;

  wire inR;
  wire outR;
  wire outR0;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    delay0
       (.I0(inR),
        .O(outR0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    delay1
       (.I0(outR0),
        .O(outR));
endmodule

(* ORIG_REF_NAME = "delay1U" *) (* dont_touch = "yes" *) 
module delay1U__2
   (inR,
    outR);
  input inR;
  output outR;

  wire inR;
  wire outR;
  wire outR0;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    delay0
       (.I0(inR),
        .O(outR0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    delay1
       (.I0(outR0),
        .O(outR));
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
  wire outR_i_3_n_0;
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
  LUT1 #(
    .INIT(2'h1)) 
    outR_i_3
       (.I0(rst),
        .O(outR_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    outR_reg
       (.C(in_nor),
        .CE(1'b1),
        .CLR(outR_i_3_n_0),
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
  wire outR_i_3_n_0;
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
  LUT1 #(
    .INIT(2'h1)) 
    outR_i_3
       (.I0(rst),
        .O(outR_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    outR_reg
       (.C(in_nor),
        .CE(1'b1),
        .CLR(outR_i_3_n_0),
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
  wire outR_i_3_n_0;
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
  LUT1 #(
    .INIT(2'h1)) 
    outR_i_3
       (.I0(rst),
        .O(outR_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    outR_reg
       (.C(in_nor),
        .CE(1'b1),
        .CLR(outR_i_3_n_0),
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
  wire outR_i_3_n_0;
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
  LUT1 #(
    .INIT(2'h1)) 
    outR_i_3
       (.I0(rst),
        .O(outR_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    outR_reg
       (.C(in_nor),
        .CE(1'b1),
        .CLR(outR_i_3_n_0),
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
  wire outR_i_3_n_0;
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
  LUT1 #(
    .INIT(2'h1)) 
    outR_i_3
       (.I0(rst),
        .O(outR_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    outR_reg
       (.C(in_nor),
        .CE(1'b1),
        .CLR(outR_i_3_n_0),
        .D(out_tmp),
        .Q(outR));
endmodule

(* ORIG_REF_NAME = "delay1Unit" *) (* dont_touch = "true" *) 
module delay1Unit__5
   (inR,
    outR,
    rst);
  input inR;
  output outR;
  input rst;

  wire inR;
  wire in_nor;
  wire outR;
  wire outR_i_3_n_0;
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
  LUT1 #(
    .INIT(2'h1)) 
    outR_i_3
       (.I0(rst),
        .O(outR_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    outR_reg
       (.C(in_nor),
        .CE(1'b1),
        .CLR(outR_i_3_n_0),
        .D(out_tmp),
        .Q(outR));
endmodule

(* ORIG_REF_NAME = "delay1Unit" *) (* dont_touch = "true" *) 
module delay1Unit__6
   (inR,
    outR,
    rst);
  input inR;
  output outR;
  input rst;

  wire inR;
  wire in_nor;
  wire outR;
  wire outR_i_3_n_0;
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
  LUT1 #(
    .INIT(2'h1)) 
    outR_i_3
       (.I0(rst),
        .O(outR_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    outR_reg
       (.C(in_nor),
        .CE(1'b1),
        .CLR(outR_i_3_n_0),
        .D(out_tmp),
        .Q(outR));
endmodule

(* dont_touch = "true" *) 
module delay2Unit
   (inR,
    outR,
    rst);
  input inR;
  output outR;
  input rst;

  wire inR;
  wire outR;
  wire outR0;
  wire rst;

  (* DONT_TOUCH *) 
  delay1Unit__4 delay0
       (.inR(inR),
        .outR(outR0),
        .rst(rst));
  (* DONT_TOUCH *) 
  delay1Unit delay1
       (.inR(outR0),
        .outR(outR),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "delay2Unit" *) (* dont_touch = "true" *) 
module delay2Unit__1
   (inR,
    outR,
    rst);
  input inR;
  output outR;
  input rst;

  wire inR;
  wire outR;
  wire outR0;
  wire rst;

  (* DONT_TOUCH *) 
  delay1Unit__6 delay0
       (.inR(inR),
        .outR(outR0),
        .rst(rst));
  (* DONT_TOUCH *) 
  delay1Unit__5 delay1
       (.inR(outR0),
        .outR(outR),
        .rst(rst));
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
  wire inR_delayed;
  wire outA;
  wire outA_delayed;
  wire outR;
  wire request;
  wire state;
  wire tmp;

  assign inA = outR;
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    and2_clock
       (.I0(request),
        .I1(empty),
        .O(fire));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h9)) 
    eq2_empty_out
       (.I0(outA_delayed),
        .I1(outR),
        .O(empty));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    fall_delay
       (.I0(state),
        .O(outR));
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
  LUT1 #(
    .INIT(2'h2)) 
    in_R_delay
       (.I0(inR),
        .O(inR_delayed));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h6)) 
    neq2_request_in
       (.I0(inR_delayed),
        .I1(outR),
        .O(request));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    out_A_delay
       (.I0(outA),
        .O(outA_delayed));
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
  wire inR_delayed;
  wire outA;
  wire outA_delayed;
  wire outR;
  wire request;
  wire state;
  wire tmp;

  assign inA = outR;
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    and2_clock
       (.I0(request),
        .I1(empty),
        .O(fire));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h9)) 
    eq2_empty_out
       (.I0(outA_delayed),
        .I1(outR),
        .O(empty));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    fall_delay
       (.I0(state),
        .O(outR));
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
  LUT1 #(
    .INIT(2'h2)) 
    in_R_delay
       (.I0(inR),
        .O(inR_delayed));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h6)) 
    neq2_request_in
       (.I0(inR_delayed),
        .I1(outR),
        .O(request));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    out_A_delay
       (.I0(outA),
        .O(outA_delayed));
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
  wire inR_delayed;
  wire outA;
  wire outA_delayed;
  wire outR;
  wire request;
  wire state;
  wire tmp;

  assign inA = outR;
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    and2_clock
       (.I0(request),
        .I1(empty),
        .O(fire));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h9)) 
    eq2_empty_out
       (.I0(outA_delayed),
        .I1(outR),
        .O(empty));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    fall_delay
       (.I0(state),
        .O(outR));
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
  LUT1 #(
    .INIT(2'h2)) 
    in_R_delay
       (.I0(inR),
        .O(inR_delayed));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h6)) 
    neq2_request_in
       (.I0(inR_delayed),
        .I1(outR),
        .O(request));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    out_A_delay
       (.I0(outA),
        .O(outA_delayed));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    tmp_inv
       (.I0(state),
        .O(tmp));
endmodule

module sender
   (inR,
    i_drive2_IBUF_BUFG,
    outR0_reg_0);
  output inR;
  input i_drive2_IBUF_BUFG;
  input outR0_reg_0;

  wire i_drive2_IBUF_BUFG;
  wire inR;
  wire outR0_reg_0;
  wire reqNeg;

  FDCE #(
    .INIT(1'b0)) 
    outR0_reg
       (.C(i_drive2_IBUF_BUFG),
        .CE(1'b1),
        .CLR(outR0_reg_0),
        .D(reqNeg),
        .Q(inR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    tmp_inv
       (.I0(inR),
        .O(reqNeg));
endmodule

(* ORIG_REF_NAME = "sender" *) 
module sender_2
   (inR,
    rst_0,
    i_drive1_IBUF_BUFG,
    rst);
  output inR;
  output rst_0;
  input i_drive1_IBUF_BUFG;
  input rst;

  wire i_drive1_IBUF_BUFG;
  wire inR;
  wire reqNeg;
  wire rst;
  wire rst_0;

  LUT1 #(
    .INIT(2'h1)) 
    outR0_i_1
       (.I0(rst),
        .O(rst_0));
  FDCE #(
    .INIT(1'b0)) 
    outR0_reg
       (.C(i_drive1_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_0),
        .D(reqNeg),
        .Q(inR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    tmp_inv
       (.I0(inR),
        .O(reqNeg));
endmodule

(* ORIG_REF_NAME = "sender" *) 
module sender_3
   (inR,
    i_drive0_IBUF_BUFG,
    outR0_reg_0);
  output inR;
  input i_drive0_IBUF_BUFG;
  input outR0_reg_0;

  wire i_drive0_IBUF_BUFG;
  wire inR;
  wire outR0_reg_0;
  wire reqNeg;

  FDCE #(
    .INIT(1'b0)) 
    outR0_reg
       (.C(i_drive0_IBUF_BUFG),
        .CE(1'b1),
        .CLR(outR0_reg_0),
        .D(reqNeg),
        .Q(inR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    tmp_inv
       (.I0(inR),
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
