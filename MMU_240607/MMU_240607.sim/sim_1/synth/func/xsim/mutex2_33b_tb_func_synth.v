// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Jun  8 17:48:16 2024
// Host        : DESKTOP-DKUDC5F running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Xilinx/Verilog/MMU_240607/MMU_240607.sim/sim_1/synth/func/xsim/mutex2_33b_tb_func_synth.v
// Design      : cMutexMerge2_33b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu13p-fhgb2104-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module cFifo1
   (trig,
    o_fire_1,
    inR,
    req,
    i_freeNext_IBUF,
    o_driveNext,
    i_drive,
    rst);
  output trig;
  output o_fire_1;
  output inR;
  input req;
  input i_freeNext_IBUF;
  input o_driveNext;
  input i_drive;
  input rst;

  wire i_drive;
  wire i_freeNext_IBUF;
  wire inR;
  wire o_driveNext;
  wire o_fire_1;
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

  LUT2 #(
    .INIT(4'hE)) 
    delay0_i_1
       (.I0(w_driveNext0),
        .I1(o_driveNext),
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
  delay1U outdelay1
       (.inR(w_driveNext),
        .outR(o_driveNext));
  (* DONT_TOUCH *) 
  receiver receiver
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
  relay relay0
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
  sender sender
       (.i_drive(i_drive),
        .i_free(w_driveNext),
        .o_free(NLW_sender_o_free_UNCONNECTED),
        .outR(w_outRRelay_2_0),
        .rst(rst));
endmodule

(* NotValidForBitStream *)
module cMutexMerge2_33b
   (i_drive0,
    i_drive1,
    i_data0_33,
    i_data1_33,
    i_freeNext,
    rst,
    o_free0,
    o_free1,
    o_driveNext,
    o_data_33);
  input i_drive0;
  input i_drive1;
  input [32:0]i_data0_33;
  input [32:0]i_data1_33;
  input i_freeNext;
  input rst;
  output o_free0;
  output o_free1;
  output o_driveNext;
  output [32:0]o_data_33;

  wire [32:0]i_data0_33;
  wire [32:0]i_data0_33_IBUF;
  wire [32:0]i_data1_33;
  wire [32:0]i_data1_33_IBUF;
  wire i_drive0;
  wire i_drive0_IBUF;
  wire i_drive0_IBUF_BUFG;
  wire i_drive1;
  wire i_drive1_IBUF;
  wire i_drive1_IBUF_BUFG;
  wire i_freeNext;
  wire i_freeNext_IBUF;
  wire [32:0]o_data_33;
  wire [32:0]o_data_33_OBUF;
  wire o_driveNext;
  wire o_driveNext_OBUF;
  wire o_free0;
  wire o_free0_OBUF;
  wire o_free1;
  wire o_free1_OBUF;
  wire [32:0]r_data0_32;
  wire [32:0]r_data1_32;
  wire \r_data1_32[32]_i_1_n_0 ;
  wire rst;
  wire rst_IBUF;
  wire w_driveNext;
  wire w_driveNext1;
  wire w_firstFire_1;
  wire w_firstReq;
  wire w_firstTrig;
  wire w_secondFire_1;
  wire w_secondReq;
  wire w_secondTrig;
  wire w_sendDrive;

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
       (.i_drive(i_drive0_IBUF_BUFG),
        .i_freeNext_IBUF(i_freeNext_IBUF),
        .inR(w_driveNext),
        .o_driveNext(w_driveNext1),
        .o_fire_1(w_firstFire_1),
        .req(w_firstReq),
        .rst(rst_IBUF),
        .trig(w_firstTrig));
  (* DONT_TOUCH *) 
  contTap__1 firstTap
       (.req(w_firstReq),
        .trig(w_firstTrig));
  IBUF \i_data0_33_IBUF[0]_inst 
       (.I(i_data0_33[0]),
        .O(i_data0_33_IBUF[0]));
  IBUF \i_data0_33_IBUF[10]_inst 
       (.I(i_data0_33[10]),
        .O(i_data0_33_IBUF[10]));
  IBUF \i_data0_33_IBUF[11]_inst 
       (.I(i_data0_33[11]),
        .O(i_data0_33_IBUF[11]));
  IBUF \i_data0_33_IBUF[12]_inst 
       (.I(i_data0_33[12]),
        .O(i_data0_33_IBUF[12]));
  IBUF \i_data0_33_IBUF[13]_inst 
       (.I(i_data0_33[13]),
        .O(i_data0_33_IBUF[13]));
  IBUF \i_data0_33_IBUF[14]_inst 
       (.I(i_data0_33[14]),
        .O(i_data0_33_IBUF[14]));
  IBUF \i_data0_33_IBUF[15]_inst 
       (.I(i_data0_33[15]),
        .O(i_data0_33_IBUF[15]));
  IBUF \i_data0_33_IBUF[16]_inst 
       (.I(i_data0_33[16]),
        .O(i_data0_33_IBUF[16]));
  IBUF \i_data0_33_IBUF[17]_inst 
       (.I(i_data0_33[17]),
        .O(i_data0_33_IBUF[17]));
  IBUF \i_data0_33_IBUF[18]_inst 
       (.I(i_data0_33[18]),
        .O(i_data0_33_IBUF[18]));
  IBUF \i_data0_33_IBUF[19]_inst 
       (.I(i_data0_33[19]),
        .O(i_data0_33_IBUF[19]));
  IBUF \i_data0_33_IBUF[1]_inst 
       (.I(i_data0_33[1]),
        .O(i_data0_33_IBUF[1]));
  IBUF \i_data0_33_IBUF[20]_inst 
       (.I(i_data0_33[20]),
        .O(i_data0_33_IBUF[20]));
  IBUF \i_data0_33_IBUF[21]_inst 
       (.I(i_data0_33[21]),
        .O(i_data0_33_IBUF[21]));
  IBUF \i_data0_33_IBUF[22]_inst 
       (.I(i_data0_33[22]),
        .O(i_data0_33_IBUF[22]));
  IBUF \i_data0_33_IBUF[23]_inst 
       (.I(i_data0_33[23]),
        .O(i_data0_33_IBUF[23]));
  IBUF \i_data0_33_IBUF[24]_inst 
       (.I(i_data0_33[24]),
        .O(i_data0_33_IBUF[24]));
  IBUF \i_data0_33_IBUF[25]_inst 
       (.I(i_data0_33[25]),
        .O(i_data0_33_IBUF[25]));
  IBUF \i_data0_33_IBUF[26]_inst 
       (.I(i_data0_33[26]),
        .O(i_data0_33_IBUF[26]));
  IBUF \i_data0_33_IBUF[27]_inst 
       (.I(i_data0_33[27]),
        .O(i_data0_33_IBUF[27]));
  IBUF \i_data0_33_IBUF[28]_inst 
       (.I(i_data0_33[28]),
        .O(i_data0_33_IBUF[28]));
  IBUF \i_data0_33_IBUF[29]_inst 
       (.I(i_data0_33[29]),
        .O(i_data0_33_IBUF[29]));
  IBUF \i_data0_33_IBUF[2]_inst 
       (.I(i_data0_33[2]),
        .O(i_data0_33_IBUF[2]));
  IBUF \i_data0_33_IBUF[30]_inst 
       (.I(i_data0_33[30]),
        .O(i_data0_33_IBUF[30]));
  IBUF \i_data0_33_IBUF[31]_inst 
       (.I(i_data0_33[31]),
        .O(i_data0_33_IBUF[31]));
  IBUF \i_data0_33_IBUF[32]_inst 
       (.I(i_data0_33[32]),
        .O(i_data0_33_IBUF[32]));
  IBUF \i_data0_33_IBUF[3]_inst 
       (.I(i_data0_33[3]),
        .O(i_data0_33_IBUF[3]));
  IBUF \i_data0_33_IBUF[4]_inst 
       (.I(i_data0_33[4]),
        .O(i_data0_33_IBUF[4]));
  IBUF \i_data0_33_IBUF[5]_inst 
       (.I(i_data0_33[5]),
        .O(i_data0_33_IBUF[5]));
  IBUF \i_data0_33_IBUF[6]_inst 
       (.I(i_data0_33[6]),
        .O(i_data0_33_IBUF[6]));
  IBUF \i_data0_33_IBUF[7]_inst 
       (.I(i_data0_33[7]),
        .O(i_data0_33_IBUF[7]));
  IBUF \i_data0_33_IBUF[8]_inst 
       (.I(i_data0_33[8]),
        .O(i_data0_33_IBUF[8]));
  IBUF \i_data0_33_IBUF[9]_inst 
       (.I(i_data0_33[9]),
        .O(i_data0_33_IBUF[9]));
  IBUF \i_data1_33_IBUF[0]_inst 
       (.I(i_data1_33[0]),
        .O(i_data1_33_IBUF[0]));
  IBUF \i_data1_33_IBUF[10]_inst 
       (.I(i_data1_33[10]),
        .O(i_data1_33_IBUF[10]));
  IBUF \i_data1_33_IBUF[11]_inst 
       (.I(i_data1_33[11]),
        .O(i_data1_33_IBUF[11]));
  IBUF \i_data1_33_IBUF[12]_inst 
       (.I(i_data1_33[12]),
        .O(i_data1_33_IBUF[12]));
  IBUF \i_data1_33_IBUF[13]_inst 
       (.I(i_data1_33[13]),
        .O(i_data1_33_IBUF[13]));
  IBUF \i_data1_33_IBUF[14]_inst 
       (.I(i_data1_33[14]),
        .O(i_data1_33_IBUF[14]));
  IBUF \i_data1_33_IBUF[15]_inst 
       (.I(i_data1_33[15]),
        .O(i_data1_33_IBUF[15]));
  IBUF \i_data1_33_IBUF[16]_inst 
       (.I(i_data1_33[16]),
        .O(i_data1_33_IBUF[16]));
  IBUF \i_data1_33_IBUF[17]_inst 
       (.I(i_data1_33[17]),
        .O(i_data1_33_IBUF[17]));
  IBUF \i_data1_33_IBUF[18]_inst 
       (.I(i_data1_33[18]),
        .O(i_data1_33_IBUF[18]));
  IBUF \i_data1_33_IBUF[19]_inst 
       (.I(i_data1_33[19]),
        .O(i_data1_33_IBUF[19]));
  IBUF \i_data1_33_IBUF[1]_inst 
       (.I(i_data1_33[1]),
        .O(i_data1_33_IBUF[1]));
  IBUF \i_data1_33_IBUF[20]_inst 
       (.I(i_data1_33[20]),
        .O(i_data1_33_IBUF[20]));
  IBUF \i_data1_33_IBUF[21]_inst 
       (.I(i_data1_33[21]),
        .O(i_data1_33_IBUF[21]));
  IBUF \i_data1_33_IBUF[22]_inst 
       (.I(i_data1_33[22]),
        .O(i_data1_33_IBUF[22]));
  IBUF \i_data1_33_IBUF[23]_inst 
       (.I(i_data1_33[23]),
        .O(i_data1_33_IBUF[23]));
  IBUF \i_data1_33_IBUF[24]_inst 
       (.I(i_data1_33[24]),
        .O(i_data1_33_IBUF[24]));
  IBUF \i_data1_33_IBUF[25]_inst 
       (.I(i_data1_33[25]),
        .O(i_data1_33_IBUF[25]));
  IBUF \i_data1_33_IBUF[26]_inst 
       (.I(i_data1_33[26]),
        .O(i_data1_33_IBUF[26]));
  IBUF \i_data1_33_IBUF[27]_inst 
       (.I(i_data1_33[27]),
        .O(i_data1_33_IBUF[27]));
  IBUF \i_data1_33_IBUF[28]_inst 
       (.I(i_data1_33[28]),
        .O(i_data1_33_IBUF[28]));
  IBUF \i_data1_33_IBUF[29]_inst 
       (.I(i_data1_33[29]),
        .O(i_data1_33_IBUF[29]));
  IBUF \i_data1_33_IBUF[2]_inst 
       (.I(i_data1_33[2]),
        .O(i_data1_33_IBUF[2]));
  IBUF \i_data1_33_IBUF[30]_inst 
       (.I(i_data1_33[30]),
        .O(i_data1_33_IBUF[30]));
  IBUF \i_data1_33_IBUF[31]_inst 
       (.I(i_data1_33[31]),
        .O(i_data1_33_IBUF[31]));
  IBUF \i_data1_33_IBUF[32]_inst 
       (.I(i_data1_33[32]),
        .O(i_data1_33_IBUF[32]));
  IBUF \i_data1_33_IBUF[3]_inst 
       (.I(i_data1_33[3]),
        .O(i_data1_33_IBUF[3]));
  IBUF \i_data1_33_IBUF[4]_inst 
       (.I(i_data1_33[4]),
        .O(i_data1_33_IBUF[4]));
  IBUF \i_data1_33_IBUF[5]_inst 
       (.I(i_data1_33[5]),
        .O(i_data1_33_IBUF[5]));
  IBUF \i_data1_33_IBUF[6]_inst 
       (.I(i_data1_33[6]),
        .O(i_data1_33_IBUF[6]));
  IBUF \i_data1_33_IBUF[7]_inst 
       (.I(i_data1_33[7]),
        .O(i_data1_33_IBUF[7]));
  IBUF \i_data1_33_IBUF[8]_inst 
       (.I(i_data1_33[8]),
        .O(i_data1_33_IBUF[8]));
  IBUF \i_data1_33_IBUF[9]_inst 
       (.I(i_data1_33[9]),
        .O(i_data1_33_IBUF[9]));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    i_drive0_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(i_drive0_IBUF),
        .O(i_drive0_IBUF_BUFG));
  IBUF i_drive0_IBUF_inst
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
  IBUF i_drive1_IBUF_inst
       (.I(i_drive1),
        .O(i_drive1_IBUF));
  IBUF i_freeNext_IBUF_inst
       (.I(i_freeNext),
        .O(i_freeNext_IBUF));
  OBUF \o_data_33_OBUF[0]_inst 
       (.I(o_data_33_OBUF[0]),
        .O(o_data_33[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[0]_inst_i_1 
       (.I0(r_data0_32[0]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[0]),
        .O(o_data_33_OBUF[0]));
  OBUF \o_data_33_OBUF[10]_inst 
       (.I(o_data_33_OBUF[10]),
        .O(o_data_33[10]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[10]_inst_i_1 
       (.I0(r_data0_32[10]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[10]),
        .O(o_data_33_OBUF[10]));
  OBUF \o_data_33_OBUF[11]_inst 
       (.I(o_data_33_OBUF[11]),
        .O(o_data_33[11]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[11]_inst_i_1 
       (.I0(r_data0_32[11]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[11]),
        .O(o_data_33_OBUF[11]));
  OBUF \o_data_33_OBUF[12]_inst 
       (.I(o_data_33_OBUF[12]),
        .O(o_data_33[12]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[12]_inst_i_1 
       (.I0(r_data0_32[12]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[12]),
        .O(o_data_33_OBUF[12]));
  OBUF \o_data_33_OBUF[13]_inst 
       (.I(o_data_33_OBUF[13]),
        .O(o_data_33[13]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[13]_inst_i_1 
       (.I0(r_data0_32[13]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[13]),
        .O(o_data_33_OBUF[13]));
  OBUF \o_data_33_OBUF[14]_inst 
       (.I(o_data_33_OBUF[14]),
        .O(o_data_33[14]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[14]_inst_i_1 
       (.I0(r_data0_32[14]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[14]),
        .O(o_data_33_OBUF[14]));
  OBUF \o_data_33_OBUF[15]_inst 
       (.I(o_data_33_OBUF[15]),
        .O(o_data_33[15]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[15]_inst_i_1 
       (.I0(r_data0_32[15]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[15]),
        .O(o_data_33_OBUF[15]));
  OBUF \o_data_33_OBUF[16]_inst 
       (.I(o_data_33_OBUF[16]),
        .O(o_data_33[16]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[16]_inst_i_1 
       (.I0(r_data0_32[16]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[16]),
        .O(o_data_33_OBUF[16]));
  OBUF \o_data_33_OBUF[17]_inst 
       (.I(o_data_33_OBUF[17]),
        .O(o_data_33[17]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[17]_inst_i_1 
       (.I0(r_data0_32[17]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[17]),
        .O(o_data_33_OBUF[17]));
  OBUF \o_data_33_OBUF[18]_inst 
       (.I(o_data_33_OBUF[18]),
        .O(o_data_33[18]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[18]_inst_i_1 
       (.I0(r_data0_32[18]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[18]),
        .O(o_data_33_OBUF[18]));
  OBUF \o_data_33_OBUF[19]_inst 
       (.I(o_data_33_OBUF[19]),
        .O(o_data_33[19]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[19]_inst_i_1 
       (.I0(r_data0_32[19]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[19]),
        .O(o_data_33_OBUF[19]));
  OBUF \o_data_33_OBUF[1]_inst 
       (.I(o_data_33_OBUF[1]),
        .O(o_data_33[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[1]_inst_i_1 
       (.I0(r_data0_32[1]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[1]),
        .O(o_data_33_OBUF[1]));
  OBUF \o_data_33_OBUF[20]_inst 
       (.I(o_data_33_OBUF[20]),
        .O(o_data_33[20]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[20]_inst_i_1 
       (.I0(r_data0_32[20]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[20]),
        .O(o_data_33_OBUF[20]));
  OBUF \o_data_33_OBUF[21]_inst 
       (.I(o_data_33_OBUF[21]),
        .O(o_data_33[21]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[21]_inst_i_1 
       (.I0(r_data0_32[21]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[21]),
        .O(o_data_33_OBUF[21]));
  OBUF \o_data_33_OBUF[22]_inst 
       (.I(o_data_33_OBUF[22]),
        .O(o_data_33[22]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[22]_inst_i_1 
       (.I0(r_data0_32[22]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[22]),
        .O(o_data_33_OBUF[22]));
  OBUF \o_data_33_OBUF[23]_inst 
       (.I(o_data_33_OBUF[23]),
        .O(o_data_33[23]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[23]_inst_i_1 
       (.I0(r_data0_32[23]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[23]),
        .O(o_data_33_OBUF[23]));
  OBUF \o_data_33_OBUF[24]_inst 
       (.I(o_data_33_OBUF[24]),
        .O(o_data_33[24]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[24]_inst_i_1 
       (.I0(r_data0_32[24]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[24]),
        .O(o_data_33_OBUF[24]));
  OBUF \o_data_33_OBUF[25]_inst 
       (.I(o_data_33_OBUF[25]),
        .O(o_data_33[25]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[25]_inst_i_1 
       (.I0(r_data0_32[25]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[25]),
        .O(o_data_33_OBUF[25]));
  OBUF \o_data_33_OBUF[26]_inst 
       (.I(o_data_33_OBUF[26]),
        .O(o_data_33[26]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[26]_inst_i_1 
       (.I0(r_data0_32[26]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[26]),
        .O(o_data_33_OBUF[26]));
  OBUF \o_data_33_OBUF[27]_inst 
       (.I(o_data_33_OBUF[27]),
        .O(o_data_33[27]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[27]_inst_i_1 
       (.I0(r_data0_32[27]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[27]),
        .O(o_data_33_OBUF[27]));
  OBUF \o_data_33_OBUF[28]_inst 
       (.I(o_data_33_OBUF[28]),
        .O(o_data_33[28]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[28]_inst_i_1 
       (.I0(r_data0_32[28]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[28]),
        .O(o_data_33_OBUF[28]));
  OBUF \o_data_33_OBUF[29]_inst 
       (.I(o_data_33_OBUF[29]),
        .O(o_data_33[29]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[29]_inst_i_1 
       (.I0(r_data0_32[29]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[29]),
        .O(o_data_33_OBUF[29]));
  OBUF \o_data_33_OBUF[2]_inst 
       (.I(o_data_33_OBUF[2]),
        .O(o_data_33[2]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[2]_inst_i_1 
       (.I0(r_data0_32[2]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[2]),
        .O(o_data_33_OBUF[2]));
  OBUF \o_data_33_OBUF[30]_inst 
       (.I(o_data_33_OBUF[30]),
        .O(o_data_33[30]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[30]_inst_i_1 
       (.I0(r_data0_32[30]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[30]),
        .O(o_data_33_OBUF[30]));
  OBUF \o_data_33_OBUF[31]_inst 
       (.I(o_data_33_OBUF[31]),
        .O(o_data_33[31]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[31]_inst_i_1 
       (.I0(r_data0_32[31]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[31]),
        .O(o_data_33_OBUF[31]));
  OBUF \o_data_33_OBUF[32]_inst 
       (.I(o_data_33_OBUF[32]),
        .O(o_data_33[32]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[32]_inst_i_1 
       (.I0(r_data0_32[32]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[32]),
        .O(o_data_33_OBUF[32]));
  OBUF \o_data_33_OBUF[3]_inst 
       (.I(o_data_33_OBUF[3]),
        .O(o_data_33[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[3]_inst_i_1 
       (.I0(r_data0_32[3]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[3]),
        .O(o_data_33_OBUF[3]));
  OBUF \o_data_33_OBUF[4]_inst 
       (.I(o_data_33_OBUF[4]),
        .O(o_data_33[4]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[4]_inst_i_1 
       (.I0(r_data0_32[4]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[4]),
        .O(o_data_33_OBUF[4]));
  OBUF \o_data_33_OBUF[5]_inst 
       (.I(o_data_33_OBUF[5]),
        .O(o_data_33[5]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[5]_inst_i_1 
       (.I0(r_data0_32[5]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[5]),
        .O(o_data_33_OBUF[5]));
  OBUF \o_data_33_OBUF[6]_inst 
       (.I(o_data_33_OBUF[6]),
        .O(o_data_33[6]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[6]_inst_i_1 
       (.I0(r_data0_32[6]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[6]),
        .O(o_data_33_OBUF[6]));
  OBUF \o_data_33_OBUF[7]_inst 
       (.I(o_data_33_OBUF[7]),
        .O(o_data_33[7]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[7]_inst_i_1 
       (.I0(r_data0_32[7]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[7]),
        .O(o_data_33_OBUF[7]));
  OBUF \o_data_33_OBUF[8]_inst 
       (.I(o_data_33_OBUF[8]),
        .O(o_data_33[8]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[8]_inst_i_1 
       (.I0(r_data0_32[8]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[8]),
        .O(o_data_33_OBUF[8]));
  OBUF \o_data_33_OBUF[9]_inst 
       (.I(o_data_33_OBUF[9]),
        .O(o_data_33[9]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_data_33_OBUF[9]_inst_i_1 
       (.I0(r_data0_32[9]),
        .I1(w_firstReq),
        .I2(w_secondReq),
        .I3(r_data1_32[9]),
        .O(o_data_33_OBUF[9]));
  OBUF o_driveNext_OBUF_inst
       (.I(o_driveNext_OBUF),
        .O(o_driveNext));
  OBUF o_free0_OBUF_inst
       (.I(o_free0_OBUF),
        .O(o_free0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[0] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[0]),
        .Q(r_data0_32[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[10] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[10]),
        .Q(r_data0_32[10]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[11] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[11]),
        .Q(r_data0_32[11]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[12] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[12]),
        .Q(r_data0_32[12]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[13] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[13]),
        .Q(r_data0_32[13]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[14] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[14]),
        .Q(r_data0_32[14]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[15] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[15]),
        .Q(r_data0_32[15]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[16] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[16]),
        .Q(r_data0_32[16]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[17] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[17]),
        .Q(r_data0_32[17]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[18] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[18]),
        .Q(r_data0_32[18]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[19] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[19]),
        .Q(r_data0_32[19]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[1] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[1]),
        .Q(r_data0_32[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[20] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[20]),
        .Q(r_data0_32[20]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[21] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[21]),
        .Q(r_data0_32[21]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[22] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[22]),
        .Q(r_data0_32[22]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[23] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[23]),
        .Q(r_data0_32[23]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[24] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[24]),
        .Q(r_data0_32[24]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[25] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[25]),
        .Q(r_data0_32[25]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[26] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[26]),
        .Q(r_data0_32[26]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[27] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[27]),
        .Q(r_data0_32[27]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[28] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[28]),
        .Q(r_data0_32[28]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[29] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[29]),
        .Q(r_data0_32[29]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[2] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[2]),
        .Q(r_data0_32[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[30] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[30]),
        .Q(r_data0_32[30]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[31] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[31]),
        .Q(r_data0_32[31]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[32] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[32]),
        .Q(r_data0_32[32]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[3] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[3]),
        .Q(r_data0_32[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[4] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[4]),
        .Q(r_data0_32[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[5] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[5]),
        .Q(r_data0_32[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[6] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[6]),
        .Q(r_data0_32[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[7] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[7]),
        .Q(r_data0_32[7]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[8] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[8]),
        .Q(r_data0_32[8]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data0_32_reg[9] 
       (.C(w_firstFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data0_33_IBUF[9]),
        .Q(r_data0_32[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \r_data1_32[32]_i_1 
       (.I0(rst_IBUF),
        .O(\r_data1_32[32]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[0] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[0]),
        .Q(r_data1_32[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[10] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[10]),
        .Q(r_data1_32[10]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[11] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[11]),
        .Q(r_data1_32[11]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[12] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[12]),
        .Q(r_data1_32[12]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[13] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[13]),
        .Q(r_data1_32[13]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[14] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[14]),
        .Q(r_data1_32[14]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[15] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[15]),
        .Q(r_data1_32[15]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[16] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[16]),
        .Q(r_data1_32[16]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[17] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[17]),
        .Q(r_data1_32[17]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[18] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[18]),
        .Q(r_data1_32[18]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[19] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[19]),
        .Q(r_data1_32[19]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[1] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[1]),
        .Q(r_data1_32[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[20] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[20]),
        .Q(r_data1_32[20]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[21] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[21]),
        .Q(r_data1_32[21]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[22] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[22]),
        .Q(r_data1_32[22]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[23] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[23]),
        .Q(r_data1_32[23]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[24] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[24]),
        .Q(r_data1_32[24]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[25] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[25]),
        .Q(r_data1_32[25]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[26] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[26]),
        .Q(r_data1_32[26]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[27] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[27]),
        .Q(r_data1_32[27]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[28] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[28]),
        .Q(r_data1_32[28]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[29] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[29]),
        .Q(r_data1_32[29]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[2] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[2]),
        .Q(r_data1_32[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[30] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[30]),
        .Q(r_data1_32[30]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[31] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[31]),
        .Q(r_data1_32[31]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[32] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[32]),
        .Q(r_data1_32[32]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[3] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[3]),
        .Q(r_data1_32[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[4] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[4]),
        .Q(r_data1_32[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[5] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[5]),
        .Q(r_data1_32[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[6] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[6]),
        .Q(r_data1_32[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[7] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[7]),
        .Q(r_data1_32[7]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[8] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[8]),
        .Q(r_data1_32[8]));
  FDCE #(
    .INIT(1'b0)) 
    \r_data1_32_reg[9] 
       (.C(w_secondFire_1),
        .CE(1'b1),
        .CLR(\r_data1_32[32]_i_1_n_0 ),
        .D(i_data1_33_IBUF[9]),
        .Q(r_data1_32[9]));
  IBUF rst_IBUF_inst
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
  contTap secondTap
       (.req(w_secondReq),
        .trig(w_secondTrig));
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
  delay1Unit__3 delay0
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
  delay1Unit__5 delay0
       (.inR(inR),
        .outR(outR0),
        .rst(rst));
  (* DONT_TOUCH *) 
  delay1Unit__4 delay1
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
  wire o_free;
  wire outR;
  wire outR0_i_1_n_0;
  wire reqNeg;
  wire rst;

  LUT1 #(
    .INIT(2'h1)) 
    outR0_i_1
       (.I0(rst),
        .O(outR0_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    outR0_reg
       (.C(i_drive),
        .CE(1'b1),
        .CLR(outR0_i_1_n_0),
        .D(reqNeg),
        .Q(outR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    reply_delay
       (.I0(i_free),
        .O(o_free));
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
  wire o_free;
  wire outR;
  wire outR0_i_1_n_0;
  wire reqNeg;
  wire rst;

  LUT1 #(
    .INIT(2'h1)) 
    outR0_i_1
       (.I0(rst),
        .O(outR0_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    outR0_reg
       (.C(i_drive),
        .CE(1'b1),
        .CLR(outR0_i_1_n_0),
        .D(reqNeg),
        .Q(outR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h2)) 
    reply_delay
       (.I0(i_free),
        .O(o_free));
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
