// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Jun  9 10:42:41 2024
// Host        : DESKTOP-DKUDC5F running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Xilinx/Verilog/MMU_240607/MMU_240607.sim/sim_1/impl/timing/xsim/MMU_tlb_replace_order_tb_time_impl.v
// Design      : mmu_tlb_replace_order
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

module IBUF_HD504
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

module IBUF_HD505
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

module IBUF_HD506
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

module IBUF_HD507
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

module IBUF_HD508
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

(* ECO_CHECKSUM = "8120fba7" *) 
(* NotValidForBitStream *)
module mmu_tlb_replace_order
   (i_rst,
    i_fire,
    i_index_4,
    o_replace_order_2);
  input i_rst;
  input i_fire;
  input [3:0]i_index_4;
  output [1:0]o_replace_order_2;

  wire i_fire;
  wire i_fire_IBUF;
  wire i_fire_IBUF_BUFG;
  wire [3:0]i_index_4;
  wire [3:0]i_index_4_IBUF;
  wire i_rst;
  wire i_rst_IBUF;
  wire [1:0]o_replace_order_2;
  wire [1:0]o_replace_order_2_OBUF;
  wire [1:0]order;
  wire \order[15][0]_i_1_n_0 ;
  wire \order[15][1]_i_10_n_0 ;
  wire \order[15][1]_i_11_n_0 ;
  wire \order[15][1]_i_12_n_0 ;
  wire \order[15][1]_i_13_n_0 ;
  wire \order[15][1]_i_14_n_0 ;
  wire \order[15][1]_i_15_n_0 ;
  wire \order[15][1]_i_1_n_0 ;
  wire \order[15][1]_i_2_n_0 ;
  wire \order[15][1]_i_8_n_0 ;
  wire \order[15][1]_i_9_n_0 ;
  wire \order_reg[0] ;
  wire \order_reg[10] ;
  wire \order_reg[11] ;
  wire \order_reg[12] ;
  wire \order_reg[13] ;
  wire \order_reg[14] ;
  wire \order_reg[15][1]_i_4_n_0 ;
  wire \order_reg[15][1]_i_5_n_0 ;
  wire \order_reg[15][1]_i_6_n_0 ;
  wire \order_reg[15][1]_i_7_n_0 ;
  wire \order_reg[1] ;
  wire \order_reg[2] ;
  wire \order_reg[3] ;
  wire \order_reg[4] ;
  wire \order_reg[5] ;
  wire \order_reg[6] ;
  wire \order_reg[7] ;
  wire \order_reg[8] ;
  wire \order_reg[9] ;
  wire \order_reg_n_0_[0][0] ;
  wire \order_reg_n_0_[0][1] ;
  wire \order_reg_n_0_[10][0] ;
  wire \order_reg_n_0_[10][1] ;
  wire \order_reg_n_0_[11][0] ;
  wire \order_reg_n_0_[11][1] ;
  wire \order_reg_n_0_[12][0] ;
  wire \order_reg_n_0_[12][1] ;
  wire \order_reg_n_0_[13][0] ;
  wire \order_reg_n_0_[13][1] ;
  wire \order_reg_n_0_[14][0] ;
  wire \order_reg_n_0_[14][1] ;
  wire \order_reg_n_0_[15][0] ;
  wire \order_reg_n_0_[15][1] ;
  wire \order_reg_n_0_[1][0] ;
  wire \order_reg_n_0_[1][1] ;
  wire \order_reg_n_0_[2][0] ;
  wire \order_reg_n_0_[2][1] ;
  wire \order_reg_n_0_[3][0] ;
  wire \order_reg_n_0_[3][1] ;
  wire \order_reg_n_0_[4][0] ;
  wire \order_reg_n_0_[4][1] ;
  wire \order_reg_n_0_[5][0] ;
  wire \order_reg_n_0_[5][1] ;
  wire \order_reg_n_0_[6][0] ;
  wire \order_reg_n_0_[6][1] ;
  wire \order_reg_n_0_[7][0] ;
  wire \order_reg_n_0_[7][1] ;
  wire \order_reg_n_0_[8][0] ;
  wire \order_reg_n_0_[8][1] ;
  wire \order_reg_n_0_[9][0] ;
  wire \order_reg_n_0_[9][1] ;
  wire p_0_in;

initial begin
 $sdf_annotate("MMU_tlb_replace_order_tb_time_impl.sdf",,,,"tool_control");
end
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    i_fire_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(i_fire_IBUF),
        .O(i_fire_IBUF_BUFG));
  (* IS_CCIO = "FALSE" *) 
  IBUF_UNIQ_BASE_ i_fire_IBUF_inst
       (.I(i_fire),
        .O(i_fire_IBUF));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD504 \i_index_4_IBUF[0]_inst 
       (.I(i_index_4[0]),
        .O(i_index_4_IBUF[0]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD505 \i_index_4_IBUF[1]_inst 
       (.I(i_index_4[1]),
        .O(i_index_4_IBUF[1]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD506 \i_index_4_IBUF[2]_inst 
       (.I(i_index_4[2]),
        .O(i_index_4_IBUF[2]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD507 \i_index_4_IBUF[3]_inst 
       (.I(i_index_4[3]),
        .O(i_index_4_IBUF[3]));
  (* IS_CCIO = "FALSE" *) 
  IBUF_HD508 i_rst_IBUF_inst
       (.I(i_rst),
        .O(i_rst_IBUF));
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \o_replace_order_2[1]_i_1 
       (.I0(\order_reg[15][1]_i_7_n_0 ),
        .I1(\order_reg[15][1]_i_6_n_0 ),
        .I2(\order_reg[15][1]_i_5_n_0 ),
        .I3(i_index_4_IBUF[3]),
        .I4(\order_reg[15][1]_i_4_n_0 ),
        .O(p_0_in));
  OBUF \o_replace_order_2_OBUF[0]_inst 
       (.I(o_replace_order_2_OBUF[0]),
        .O(o_replace_order_2[0]));
  OBUF \o_replace_order_2_OBUF[1]_inst 
       (.I(o_replace_order_2_OBUF[1]),
        .O(o_replace_order_2[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \o_replace_order_2_reg[0] 
       (.C(i_fire_IBUF_BUFG),
        .CE(p_0_in),
        .CLR(i_rst_IBUF),
        .D(order[0]),
        .Q(o_replace_order_2_OBUF[0]));
  MUXF8 \o_replace_order_2_reg[0]_i_1 
       (.I0(\order_reg[15][1]_i_5_n_0 ),
        .I1(\order_reg[15][1]_i_4_n_0 ),
        .O(order[0]),
        .S(i_index_4_IBUF[3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \o_replace_order_2_reg[1] 
       (.C(i_fire_IBUF_BUFG),
        .CE(p_0_in),
        .CLR(i_rst_IBUF),
        .D(order[1]),
        .Q(o_replace_order_2_OBUF[1]));
  MUXF8 \o_replace_order_2_reg[1]_i_2 
       (.I0(\order_reg[15][1]_i_7_n_0 ),
        .I1(\order_reg[15][1]_i_6_n_0 ),
        .O(order[1]),
        .S(i_index_4_IBUF[3]));
  LUT4 #(
    .INIT(16'h0001)) 
    \order[0][1]_i_1 
       (.I0(i_index_4_IBUF[3]),
        .I1(i_index_4_IBUF[0]),
        .I2(i_index_4_IBUF[1]),
        .I3(i_index_4_IBUF[2]),
        .O(\order_reg[0] ));
  LUT4 #(
    .INIT(16'h0040)) 
    \order[10][1]_i_1 
       (.I0(i_index_4_IBUF[0]),
        .I1(i_index_4_IBUF[1]),
        .I2(i_index_4_IBUF[3]),
        .I3(i_index_4_IBUF[2]),
        .O(\order_reg[10] ));
  LUT4 #(
    .INIT(16'h0080)) 
    \order[11][1]_i_1 
       (.I0(i_index_4_IBUF[0]),
        .I1(i_index_4_IBUF[1]),
        .I2(i_index_4_IBUF[3]),
        .I3(i_index_4_IBUF[2]),
        .O(\order_reg[11] ));
  LUT4 #(
    .INIT(16'h0040)) 
    \order[12][1]_i_1 
       (.I0(i_index_4_IBUF[0]),
        .I1(i_index_4_IBUF[3]),
        .I2(i_index_4_IBUF[2]),
        .I3(i_index_4_IBUF[1]),
        .O(\order_reg[12] ));
  LUT4 #(
    .INIT(16'h0080)) 
    \order[13][1]_i_1 
       (.I0(i_index_4_IBUF[0]),
        .I1(i_index_4_IBUF[3]),
        .I2(i_index_4_IBUF[2]),
        .I3(i_index_4_IBUF[1]),
        .O(\order_reg[13] ));
  LUT4 #(
    .INIT(16'h0080)) 
    \order[14][1]_i_1 
       (.I0(i_index_4_IBUF[1]),
        .I1(i_index_4_IBUF[3]),
        .I2(i_index_4_IBUF[2]),
        .I3(i_index_4_IBUF[0]),
        .O(\order_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \order[15][0]_i_1 
       (.I0(\order_reg[15][1]_i_5_n_0 ),
        .I1(i_index_4_IBUF[3]),
        .I2(\order_reg[15][1]_i_4_n_0 ),
        .O(\order[15][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \order[15][1]_i_1 
       (.I0(i_index_4_IBUF[2]),
        .I1(i_index_4_IBUF[0]),
        .I2(i_index_4_IBUF[1]),
        .I3(i_index_4_IBUF[3]),
        .O(\order[15][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \order[15][1]_i_10 
       (.I0(\order_reg_n_0_[3][0] ),
        .I1(\order_reg_n_0_[2][0] ),
        .I2(i_index_4_IBUF[1]),
        .I3(\order_reg_n_0_[1][0] ),
        .I4(i_index_4_IBUF[0]),
        .I5(\order_reg_n_0_[0][0] ),
        .O(\order[15][1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \order[15][1]_i_11 
       (.I0(\order_reg_n_0_[7][0] ),
        .I1(\order_reg_n_0_[6][0] ),
        .I2(i_index_4_IBUF[1]),
        .I3(\order_reg_n_0_[5][0] ),
        .I4(i_index_4_IBUF[0]),
        .I5(\order_reg_n_0_[4][0] ),
        .O(\order[15][1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \order[15][1]_i_12 
       (.I0(\order_reg_n_0_[11][1] ),
        .I1(\order_reg_n_0_[10][1] ),
        .I2(i_index_4_IBUF[1]),
        .I3(\order_reg_n_0_[9][1] ),
        .I4(i_index_4_IBUF[0]),
        .I5(\order_reg_n_0_[8][1] ),
        .O(\order[15][1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \order[15][1]_i_13 
       (.I0(\order_reg_n_0_[15][1] ),
        .I1(\order_reg_n_0_[14][1] ),
        .I2(i_index_4_IBUF[1]),
        .I3(\order_reg_n_0_[13][1] ),
        .I4(i_index_4_IBUF[0]),
        .I5(\order_reg_n_0_[12][1] ),
        .O(\order[15][1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \order[15][1]_i_14 
       (.I0(\order_reg_n_0_[3][1] ),
        .I1(\order_reg_n_0_[2][1] ),
        .I2(i_index_4_IBUF[1]),
        .I3(\order_reg_n_0_[1][1] ),
        .I4(i_index_4_IBUF[0]),
        .I5(\order_reg_n_0_[0][1] ),
        .O(\order[15][1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \order[15][1]_i_15 
       (.I0(\order_reg_n_0_[7][1] ),
        .I1(\order_reg_n_0_[6][1] ),
        .I2(i_index_4_IBUF[1]),
        .I3(\order_reg_n_0_[5][1] ),
        .I4(i_index_4_IBUF[0]),
        .I5(\order_reg_n_0_[4][1] ),
        .O(\order[15][1]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h478B74B8)) 
    \order[15][1]_i_2 
       (.I0(\order_reg[15][1]_i_4_n_0 ),
        .I1(i_index_4_IBUF[3]),
        .I2(\order_reg[15][1]_i_5_n_0 ),
        .I3(\order_reg[15][1]_i_6_n_0 ),
        .I4(\order_reg[15][1]_i_7_n_0 ),
        .O(\order[15][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \order[15][1]_i_8 
       (.I0(\order_reg_n_0_[11][0] ),
        .I1(\order_reg_n_0_[10][0] ),
        .I2(i_index_4_IBUF[1]),
        .I3(\order_reg_n_0_[9][0] ),
        .I4(i_index_4_IBUF[0]),
        .I5(\order_reg_n_0_[8][0] ),
        .O(\order[15][1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \order[15][1]_i_9 
       (.I0(\order_reg_n_0_[15][0] ),
        .I1(\order_reg_n_0_[14][0] ),
        .I2(i_index_4_IBUF[1]),
        .I3(\order_reg_n_0_[13][0] ),
        .I4(i_index_4_IBUF[0]),
        .I5(\order_reg_n_0_[12][0] ),
        .O(\order[15][1]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \order[1][1]_i_1 
       (.I0(i_index_4_IBUF[3]),
        .I1(i_index_4_IBUF[0]),
        .I2(i_index_4_IBUF[1]),
        .I3(i_index_4_IBUF[2]),
        .O(\order_reg[1] ));
  LUT4 #(
    .INIT(16'h0004)) 
    \order[2][1]_i_1 
       (.I0(i_index_4_IBUF[3]),
        .I1(i_index_4_IBUF[1]),
        .I2(i_index_4_IBUF[0]),
        .I3(i_index_4_IBUF[2]),
        .O(\order_reg[2] ));
  LUT4 #(
    .INIT(16'h0040)) 
    \order[3][1]_i_1 
       (.I0(i_index_4_IBUF[3]),
        .I1(i_index_4_IBUF[0]),
        .I2(i_index_4_IBUF[1]),
        .I3(i_index_4_IBUF[2]),
        .O(\order_reg[3] ));
  LUT4 #(
    .INIT(16'h0004)) 
    \order[4][1]_i_1 
       (.I0(i_index_4_IBUF[1]),
        .I1(i_index_4_IBUF[2]),
        .I2(i_index_4_IBUF[0]),
        .I3(i_index_4_IBUF[3]),
        .O(\order_reg[4] ));
  LUT4 #(
    .INIT(16'h0040)) 
    \order[5][1]_i_1 
       (.I0(i_index_4_IBUF[1]),
        .I1(i_index_4_IBUF[0]),
        .I2(i_index_4_IBUF[2]),
        .I3(i_index_4_IBUF[3]),
        .O(\order_reg[5] ));
  LUT4 #(
    .INIT(16'h0040)) 
    \order[6][1]_i_1 
       (.I0(i_index_4_IBUF[0]),
        .I1(i_index_4_IBUF[1]),
        .I2(i_index_4_IBUF[2]),
        .I3(i_index_4_IBUF[3]),
        .O(\order_reg[6] ));
  LUT4 #(
    .INIT(16'h0080)) 
    \order[7][1]_i_1 
       (.I0(i_index_4_IBUF[0]),
        .I1(i_index_4_IBUF[1]),
        .I2(i_index_4_IBUF[2]),
        .I3(i_index_4_IBUF[3]),
        .O(\order_reg[7] ));
  LUT4 #(
    .INIT(16'h0004)) 
    \order[8][1]_i_1 
       (.I0(i_index_4_IBUF[1]),
        .I1(i_index_4_IBUF[3]),
        .I2(i_index_4_IBUF[0]),
        .I3(i_index_4_IBUF[2]),
        .O(\order_reg[8] ));
  LUT4 #(
    .INIT(16'h0040)) 
    \order[9][1]_i_1 
       (.I0(i_index_4_IBUF[1]),
        .I1(i_index_4_IBUF[0]),
        .I2(i_index_4_IBUF[3]),
        .I3(i_index_4_IBUF[2]),
        .O(\order_reg[9] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[0][0] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[0] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][0]_i_1_n_0 ),
        .Q(\order_reg_n_0_[0][0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[0][1] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[0] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][1]_i_2_n_0 ),
        .Q(\order_reg_n_0_[0][1] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[10][0] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[10] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][0]_i_1_n_0 ),
        .Q(\order_reg_n_0_[10][0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[10][1] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[10] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][1]_i_2_n_0 ),
        .Q(\order_reg_n_0_[10][1] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[11][0] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[11] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][0]_i_1_n_0 ),
        .Q(\order_reg_n_0_[11][0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[11][1] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[11] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][1]_i_2_n_0 ),
        .Q(\order_reg_n_0_[11][1] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[12][0] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[12] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][0]_i_1_n_0 ),
        .Q(\order_reg_n_0_[12][0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[12][1] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[12] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][1]_i_2_n_0 ),
        .Q(\order_reg_n_0_[12][1] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[13][0] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[13] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][0]_i_1_n_0 ),
        .Q(\order_reg_n_0_[13][0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[13][1] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[13] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][1]_i_2_n_0 ),
        .Q(\order_reg_n_0_[13][1] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[14][0] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[14] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][0]_i_1_n_0 ),
        .Q(\order_reg_n_0_[14][0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[14][1] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[14] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][1]_i_2_n_0 ),
        .Q(\order_reg_n_0_[14][1] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[15][0] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order[15][1]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\order[15][0]_i_1_n_0 ),
        .Q(\order_reg_n_0_[15][0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[15][1] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order[15][1]_i_1_n_0 ),
        .CLR(i_rst_IBUF),
        .D(\order[15][1]_i_2_n_0 ),
        .Q(\order_reg_n_0_[15][1] ));
  MUXF7 \order_reg[15][1]_i_4 
       (.I0(\order[15][1]_i_8_n_0 ),
        .I1(\order[15][1]_i_9_n_0 ),
        .O(\order_reg[15][1]_i_4_n_0 ),
        .S(i_index_4_IBUF[2]));
  MUXF7 \order_reg[15][1]_i_5 
       (.I0(\order[15][1]_i_10_n_0 ),
        .I1(\order[15][1]_i_11_n_0 ),
        .O(\order_reg[15][1]_i_5_n_0 ),
        .S(i_index_4_IBUF[2]));
  MUXF7 \order_reg[15][1]_i_6 
       (.I0(\order[15][1]_i_12_n_0 ),
        .I1(\order[15][1]_i_13_n_0 ),
        .O(\order_reg[15][1]_i_6_n_0 ),
        .S(i_index_4_IBUF[2]));
  MUXF7 \order_reg[15][1]_i_7 
       (.I0(\order[15][1]_i_14_n_0 ),
        .I1(\order[15][1]_i_15_n_0 ),
        .O(\order_reg[15][1]_i_7_n_0 ),
        .S(i_index_4_IBUF[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[1][0] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[1] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][0]_i_1_n_0 ),
        .Q(\order_reg_n_0_[1][0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[1][1] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[1] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][1]_i_2_n_0 ),
        .Q(\order_reg_n_0_[1][1] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[2][0] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[2] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][0]_i_1_n_0 ),
        .Q(\order_reg_n_0_[2][0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[2][1] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[2] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][1]_i_2_n_0 ),
        .Q(\order_reg_n_0_[2][1] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[3][0] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[3] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][0]_i_1_n_0 ),
        .Q(\order_reg_n_0_[3][0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[3][1] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[3] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][1]_i_2_n_0 ),
        .Q(\order_reg_n_0_[3][1] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[4][0] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[4] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][0]_i_1_n_0 ),
        .Q(\order_reg_n_0_[4][0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[4][1] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[4] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][1]_i_2_n_0 ),
        .Q(\order_reg_n_0_[4][1] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[5][0] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[5] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][0]_i_1_n_0 ),
        .Q(\order_reg_n_0_[5][0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[5][1] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[5] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][1]_i_2_n_0 ),
        .Q(\order_reg_n_0_[5][1] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[6][0] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[6] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][0]_i_1_n_0 ),
        .Q(\order_reg_n_0_[6][0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[6][1] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[6] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][1]_i_2_n_0 ),
        .Q(\order_reg_n_0_[6][1] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[7][0] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[7] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][0]_i_1_n_0 ),
        .Q(\order_reg_n_0_[7][0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[7][1] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[7] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][1]_i_2_n_0 ),
        .Q(\order_reg_n_0_[7][1] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[8][0] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[8] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][0]_i_1_n_0 ),
        .Q(\order_reg_n_0_[8][0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[8][1] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[8] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][1]_i_2_n_0 ),
        .Q(\order_reg_n_0_[8][1] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[9][0] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[9] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][0]_i_1_n_0 ),
        .Q(\order_reg_n_0_[9][0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b1)) 
    \order_reg[9][1] 
       (.C(i_fire_IBUF_BUFG),
        .CE(\order_reg[9] ),
        .CLR(i_rst_IBUF),
        .D(\order[15][1]_i_2_n_0 ),
        .Q(\order_reg_n_0_[9][1] ));
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
