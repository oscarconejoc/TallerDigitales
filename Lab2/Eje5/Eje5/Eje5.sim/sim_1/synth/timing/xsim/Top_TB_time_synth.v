// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri May 30 13:52:43 2025
// Host        : DESKTOP-H2BA1LP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/XPC/Desktop/TallerDigitales/Lab2/Eje5/Eje5/Eje5.sim/sim_1/synth/timing/xsim/Top_TB_time_synth.v
// Design      : TopFSM
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module ALU
   (p_0_in,
    \current_state_reg[1] ,
    \current_state_reg[1]_0 ,
    \current_state_reg[1]_1 ,
    \current_state_reg[1]_2 ,
    \current_state_reg[1]_3 ,
    A_OBUF,
    DI,
    S,
    \ALUout_OBUF[4]_inst_i_1 ,
    \ALUout_OBUF[8]_inst_i_1 ,
    \ALUout_OBUF[12]_inst_i_1 ,
    muxctrl_OBUF,
    ALUbotones_IBUF);
  output [15:0]p_0_in;
  output \current_state_reg[1] ;
  output \current_state_reg[1]_0 ;
  output \current_state_reg[1]_1 ;
  output \current_state_reg[1]_2 ;
  output \current_state_reg[1]_3 ;
  input [14:0]A_OBUF;
  input [0:0]DI;
  input [3:0]S;
  input [3:0]\ALUout_OBUF[4]_inst_i_1 ;
  input [3:0]\ALUout_OBUF[8]_inst_i_1 ;
  input [3:0]\ALUout_OBUF[12]_inst_i_1 ;
  input muxctrl_OBUF;
  input [1:0]ALUbotones_IBUF;

  wire [1:0]ALUbotones_IBUF;
  wire [3:0]\ALUout_OBUF[12]_inst_i_1 ;
  wire [3:0]\ALUout_OBUF[4]_inst_i_1 ;
  wire [3:0]\ALUout_OBUF[8]_inst_i_1 ;
  wire [14:0]A_OBUF;
  wire [0:0]DI;
  wire [3:0]S;
  wire \current_state_reg[1] ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[1]_1 ;
  wire \current_state_reg[1]_2 ;
  wire \current_state_reg[1]_3 ;
  wire muxctrl_OBUF;
  wire [15:0]p_0_in;
  wire p_2_out_carry__0_n_0;
  wire p_2_out_carry__0_n_1;
  wire p_2_out_carry__0_n_2;
  wire p_2_out_carry__0_n_3;
  wire p_2_out_carry__1_n_0;
  wire p_2_out_carry__1_n_1;
  wire p_2_out_carry__1_n_2;
  wire p_2_out_carry__1_n_3;
  wire p_2_out_carry__2_n_1;
  wire p_2_out_carry__2_n_2;
  wire p_2_out_carry__2_n_3;
  wire p_2_out_carry_n_0;
  wire p_2_out_carry_n_1;
  wire p_2_out_carry_n_2;
  wire p_2_out_carry_n_3;
  wire [3:3]NLW_p_2_out_carry__2_CO_UNCONNECTED;

  LUT5 #(
    .INIT(32'hF3FB0008)) 
    \muxout_OBUF[0]_inst_i_3 
       (.I0(p_0_in[0]),
        .I1(muxctrl_OBUF),
        .I2(ALUbotones_IBUF[0]),
        .I3(ALUbotones_IBUF[1]),
        .I4(A_OBUF[0]),
        .O(\current_state_reg[1] ));
  LUT5 #(
    .INIT(32'hF3FB0008)) 
    \muxout_OBUF[1]_inst_i_3 
       (.I0(p_0_in[1]),
        .I1(muxctrl_OBUF),
        .I2(ALUbotones_IBUF[0]),
        .I3(ALUbotones_IBUF[1]),
        .I4(A_OBUF[1]),
        .O(\current_state_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hF3FB0008)) 
    \muxout_OBUF[2]_inst_i_3 
       (.I0(p_0_in[2]),
        .I1(muxctrl_OBUF),
        .I2(ALUbotones_IBUF[0]),
        .I3(ALUbotones_IBUF[1]),
        .I4(A_OBUF[2]),
        .O(\current_state_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hF3FB0008)) 
    \muxout_OBUF[3]_inst_i_4 
       (.I0(p_0_in[3]),
        .I1(muxctrl_OBUF),
        .I2(ALUbotones_IBUF[0]),
        .I3(ALUbotones_IBUF[1]),
        .I4(A_OBUF[3]),
        .O(\current_state_reg[1]_2 ));
  LUT5 #(
    .INIT(32'hF3FB0008)) 
    \muxout_OBUF[7]_inst_i_3 
       (.I0(p_0_in[7]),
        .I1(muxctrl_OBUF),
        .I2(ALUbotones_IBUF[0]),
        .I3(ALUbotones_IBUF[1]),
        .I4(A_OBUF[7]),
        .O(\current_state_reg[1]_3 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_2_out_carry
       (.CI(1'b0),
        .CO({p_2_out_carry_n_0,p_2_out_carry_n_1,p_2_out_carry_n_2,p_2_out_carry_n_3}),
        .CYINIT(A_OBUF[0]),
        .DI({A_OBUF[3:1],DI}),
        .O(p_0_in[3:0]),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_2_out_carry__0
       (.CI(p_2_out_carry_n_0),
        .CO({p_2_out_carry__0_n_0,p_2_out_carry__0_n_1,p_2_out_carry__0_n_2,p_2_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(A_OBUF[7:4]),
        .O(p_0_in[7:4]),
        .S(\ALUout_OBUF[4]_inst_i_1 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_2_out_carry__1
       (.CI(p_2_out_carry__0_n_0),
        .CO({p_2_out_carry__1_n_0,p_2_out_carry__1_n_1,p_2_out_carry__1_n_2,p_2_out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(A_OBUF[11:8]),
        .O(p_0_in[11:8]),
        .S(\ALUout_OBUF[8]_inst_i_1 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_2_out_carry__2
       (.CI(p_2_out_carry__1_n_0),
        .CO({NLW_p_2_out_carry__2_CO_UNCONNECTED[3],p_2_out_carry__2_n_1,p_2_out_carry__2_n_2,p_2_out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,A_OBUF[14:12]}),
        .O(p_0_in[15:12]),
        .S(\ALUout_OBUF[12]_inst_i_1 ));
endmodule

module Banco_Registros
   (seg0_OBUF,
    \current_state_reg[2] ,
    \current_state_reg[2]_0 ,
    B_OBUF,
    seg1_OBUF,
    \current_state_reg[2]_1 ,
    seg2_OBUF,
    \current_state_reg[2]_2 ,
    seg3_OBUF,
    D,
    ALUout_OBUF,
    A_OBUF,
    \current_state_reg[2]_3 ,
    p_0_in__0,
    S,
    \ALUbotones[1] ,
    \ALUbotones[1]_0 ,
    \current_state_reg[1] ,
    displayctrl_OBUF,
    \mem_reg[30][3]_0 ,
    muxctrl_OBUF,
    Q,
    LEDs_OBUF,
    \ALUout[3] ,
    p_0_in,
    aluctrl_OBUF,
    addr_rs2_OBUF,
    \B_OBUF[1]_inst_i_2_0 ,
    \B_OBUF[1]_inst_i_2_1 ,
    \mem_reg[30][7]_0 ,
    \mem_reg[30][7]_1 ,
    \mem_reg[30][0]_0 ,
    \mem_reg[30][2]_0 ,
    \mem_reg[30][1]_0 ,
    addr_rs1_OBUF,
    \A_OBUF[15]_inst_i_3_0 ,
    \A_OBUF[15]_inst_i_3_1 ,
    rst_IBUF,
    ALUbotones_IBUF,
    E,
    \mem_reg[30][15]_0 ,
    CLK,
    \mem_reg[1][15]_0 ,
    \mem_reg[2][15]_0 ,
    \mem_reg[3][0]_0 ,
    \mem_reg[4][0]_0 ,
    \mem_reg[5][0]_0 ,
    \mem_reg[6][15]_0 ,
    \mem_reg[7][0]_0 ,
    \mem_reg[8][0]_0 ,
    \mem_reg[9][15]_0 ,
    \mem_reg[10][15]_0 ,
    \mem_reg[11][15]_0 ,
    \mem_reg[12][15]_0 ,
    \mem_reg[13][15]_0 ,
    \mem_reg[14][15]_0 ,
    \mem_reg[15][15]_0 ,
    \mem_reg[16][15]_0 ,
    \mem_reg[17][0]_0 ,
    \mem_reg[18][15]_0 ,
    \mem_reg[19][0]_0 ,
    \mem_reg[20][15]_0 ,
    \mem_reg[21][15]_0 ,
    \mem_reg[22][15]_0 ,
    \mem_reg[23][15]_0 ,
    \mem_reg[24][15]_0 ,
    \mem_reg[25][0]_0 ,
    \mem_reg[26][15]_0 ,
    \mem_reg[27][15]_0 ,
    \mem_reg[28][15]_0 ,
    \mem_reg[29][15]_0 ,
    \mem_reg[30][15]_1 ,
    \mem_reg[31][15]_0 );
  output [6:0]seg0_OBUF;
  output \current_state_reg[2] ;
  output \current_state_reg[2]_0 ;
  output [15:0]B_OBUF;
  output [6:0]seg1_OBUF;
  output \current_state_reg[2]_1 ;
  output [6:0]seg2_OBUF;
  output \current_state_reg[2]_2 ;
  output [6:0]seg3_OBUF;
  output [4:0]D;
  output [0:0]ALUout_OBUF;
  output [15:0]A_OBUF;
  output \current_state_reg[2]_3 ;
  output p_0_in__0;
  output [3:0]S;
  output [3:0]\ALUbotones[1] ;
  output [3:0]\ALUbotones[1]_0 ;
  output [3:0]\current_state_reg[1] ;
  input displayctrl_OBUF;
  input \mem_reg[30][3]_0 ;
  input muxctrl_OBUF;
  input [4:0]Q;
  input [0:0]LEDs_OBUF;
  input \ALUout[3] ;
  input [0:0]p_0_in;
  input [0:0]aluctrl_OBUF;
  input [1:0]addr_rs2_OBUF;
  input \B_OBUF[1]_inst_i_2_0 ;
  input \B_OBUF[1]_inst_i_2_1 ;
  input \mem_reg[30][7]_0 ;
  input \mem_reg[30][7]_1 ;
  input \mem_reg[30][0]_0 ;
  input \mem_reg[30][2]_0 ;
  input \mem_reg[30][1]_0 ;
  input [2:0]addr_rs1_OBUF;
  input \A_OBUF[15]_inst_i_3_0 ;
  input \A_OBUF[15]_inst_i_3_1 ;
  input rst_IBUF;
  input [2:0]ALUbotones_IBUF;
  input [0:0]E;
  input [10:0]\mem_reg[30][15]_0 ;
  input CLK;
  input [0:0]\mem_reg[1][15]_0 ;
  input [0:0]\mem_reg[2][15]_0 ;
  input [0:0]\mem_reg[3][0]_0 ;
  input [0:0]\mem_reg[4][0]_0 ;
  input [0:0]\mem_reg[5][0]_0 ;
  input [0:0]\mem_reg[6][15]_0 ;
  input [0:0]\mem_reg[7][0]_0 ;
  input [0:0]\mem_reg[8][0]_0 ;
  input [0:0]\mem_reg[9][15]_0 ;
  input [0:0]\mem_reg[10][15]_0 ;
  input [0:0]\mem_reg[11][15]_0 ;
  input [0:0]\mem_reg[12][15]_0 ;
  input [0:0]\mem_reg[13][15]_0 ;
  input [0:0]\mem_reg[14][15]_0 ;
  input [0:0]\mem_reg[15][15]_0 ;
  input [0:0]\mem_reg[16][15]_0 ;
  input [0:0]\mem_reg[17][0]_0 ;
  input [0:0]\mem_reg[18][15]_0 ;
  input [0:0]\mem_reg[19][0]_0 ;
  input [0:0]\mem_reg[20][15]_0 ;
  input [0:0]\mem_reg[21][15]_0 ;
  input [0:0]\mem_reg[22][15]_0 ;
  input [0:0]\mem_reg[23][15]_0 ;
  input [0:0]\mem_reg[24][15]_0 ;
  input [0:0]\mem_reg[25][0]_0 ;
  input [0:0]\mem_reg[26][15]_0 ;
  input [0:0]\mem_reg[27][15]_0 ;
  input [0:0]\mem_reg[28][15]_0 ;
  input [0:0]\mem_reg[29][15]_0 ;
  input [0:0]\mem_reg[30][15]_1 ;
  input [0:0]\mem_reg[31][15]_0 ;

  wire [3:0]\ALUbotones[1] ;
  wire [3:0]\ALUbotones[1]_0 ;
  wire [2:0]ALUbotones_IBUF;
  wire \ALUout[3] ;
  wire [0:0]ALUout_OBUF;
  wire \ALUout_OBUF[12]_inst_i_3_n_0 ;
  wire \ALUout_OBUF[12]_inst_i_4_n_0 ;
  wire [15:0]A_OBUF;
  wire \A_OBUF[0]_inst_i_10_n_0 ;
  wire \A_OBUF[0]_inst_i_11_n_0 ;
  wire \A_OBUF[0]_inst_i_12_n_0 ;
  wire \A_OBUF[0]_inst_i_13_n_0 ;
  wire \A_OBUF[0]_inst_i_2_n_0 ;
  wire \A_OBUF[0]_inst_i_3_n_0 ;
  wire \A_OBUF[0]_inst_i_4_n_0 ;
  wire \A_OBUF[0]_inst_i_5_n_0 ;
  wire \A_OBUF[0]_inst_i_6_n_0 ;
  wire \A_OBUF[0]_inst_i_7_n_0 ;
  wire \A_OBUF[0]_inst_i_8_n_0 ;
  wire \A_OBUF[0]_inst_i_9_n_0 ;
  wire \A_OBUF[10]_inst_i_10_n_0 ;
  wire \A_OBUF[10]_inst_i_11_n_0 ;
  wire \A_OBUF[10]_inst_i_12_n_0 ;
  wire \A_OBUF[10]_inst_i_13_n_0 ;
  wire \A_OBUF[10]_inst_i_2_n_0 ;
  wire \A_OBUF[10]_inst_i_3_n_0 ;
  wire \A_OBUF[10]_inst_i_4_n_0 ;
  wire \A_OBUF[10]_inst_i_5_n_0 ;
  wire \A_OBUF[10]_inst_i_6_n_0 ;
  wire \A_OBUF[10]_inst_i_7_n_0 ;
  wire \A_OBUF[10]_inst_i_8_n_0 ;
  wire \A_OBUF[10]_inst_i_9_n_0 ;
  wire \A_OBUF[11]_inst_i_10_n_0 ;
  wire \A_OBUF[11]_inst_i_11_n_0 ;
  wire \A_OBUF[11]_inst_i_12_n_0 ;
  wire \A_OBUF[11]_inst_i_13_n_0 ;
  wire \A_OBUF[11]_inst_i_2_n_0 ;
  wire \A_OBUF[11]_inst_i_3_n_0 ;
  wire \A_OBUF[11]_inst_i_4_n_0 ;
  wire \A_OBUF[11]_inst_i_5_n_0 ;
  wire \A_OBUF[11]_inst_i_6_n_0 ;
  wire \A_OBUF[11]_inst_i_7_n_0 ;
  wire \A_OBUF[11]_inst_i_8_n_0 ;
  wire \A_OBUF[11]_inst_i_9_n_0 ;
  wire \A_OBUF[12]_inst_i_10_n_0 ;
  wire \A_OBUF[12]_inst_i_11_n_0 ;
  wire \A_OBUF[12]_inst_i_12_n_0 ;
  wire \A_OBUF[12]_inst_i_13_n_0 ;
  wire \A_OBUF[12]_inst_i_2_n_0 ;
  wire \A_OBUF[12]_inst_i_3_n_0 ;
  wire \A_OBUF[12]_inst_i_4_n_0 ;
  wire \A_OBUF[12]_inst_i_5_n_0 ;
  wire \A_OBUF[12]_inst_i_6_n_0 ;
  wire \A_OBUF[12]_inst_i_7_n_0 ;
  wire \A_OBUF[12]_inst_i_8_n_0 ;
  wire \A_OBUF[12]_inst_i_9_n_0 ;
  wire \A_OBUF[13]_inst_i_10_n_0 ;
  wire \A_OBUF[13]_inst_i_11_n_0 ;
  wire \A_OBUF[13]_inst_i_12_n_0 ;
  wire \A_OBUF[13]_inst_i_13_n_0 ;
  wire \A_OBUF[13]_inst_i_2_n_0 ;
  wire \A_OBUF[13]_inst_i_3_n_0 ;
  wire \A_OBUF[13]_inst_i_4_n_0 ;
  wire \A_OBUF[13]_inst_i_5_n_0 ;
  wire \A_OBUF[13]_inst_i_6_n_0 ;
  wire \A_OBUF[13]_inst_i_7_n_0 ;
  wire \A_OBUF[13]_inst_i_8_n_0 ;
  wire \A_OBUF[13]_inst_i_9_n_0 ;
  wire \A_OBUF[14]_inst_i_10_n_0 ;
  wire \A_OBUF[14]_inst_i_11_n_0 ;
  wire \A_OBUF[14]_inst_i_12_n_0 ;
  wire \A_OBUF[14]_inst_i_13_n_0 ;
  wire \A_OBUF[14]_inst_i_2_n_0 ;
  wire \A_OBUF[14]_inst_i_3_n_0 ;
  wire \A_OBUF[14]_inst_i_4_n_0 ;
  wire \A_OBUF[14]_inst_i_5_n_0 ;
  wire \A_OBUF[14]_inst_i_6_n_0 ;
  wire \A_OBUF[14]_inst_i_7_n_0 ;
  wire \A_OBUF[14]_inst_i_8_n_0 ;
  wire \A_OBUF[14]_inst_i_9_n_0 ;
  wire \A_OBUF[15]_inst_i_10_n_0 ;
  wire \A_OBUF[15]_inst_i_11_n_0 ;
  wire \A_OBUF[15]_inst_i_12_n_0 ;
  wire \A_OBUF[15]_inst_i_13_n_0 ;
  wire \A_OBUF[15]_inst_i_2_n_0 ;
  wire \A_OBUF[15]_inst_i_3_0 ;
  wire \A_OBUF[15]_inst_i_3_1 ;
  wire \A_OBUF[15]_inst_i_3_n_0 ;
  wire \A_OBUF[15]_inst_i_4_n_0 ;
  wire \A_OBUF[15]_inst_i_5_n_0 ;
  wire \A_OBUF[15]_inst_i_6_n_0 ;
  wire \A_OBUF[15]_inst_i_7_n_0 ;
  wire \A_OBUF[15]_inst_i_8_n_0 ;
  wire \A_OBUF[15]_inst_i_9_n_0 ;
  wire \A_OBUF[1]_inst_i_10_n_0 ;
  wire \A_OBUF[1]_inst_i_11_n_0 ;
  wire \A_OBUF[1]_inst_i_12_n_0 ;
  wire \A_OBUF[1]_inst_i_13_n_0 ;
  wire \A_OBUF[1]_inst_i_2_n_0 ;
  wire \A_OBUF[1]_inst_i_3_n_0 ;
  wire \A_OBUF[1]_inst_i_4_n_0 ;
  wire \A_OBUF[1]_inst_i_5_n_0 ;
  wire \A_OBUF[1]_inst_i_6_n_0 ;
  wire \A_OBUF[1]_inst_i_7_n_0 ;
  wire \A_OBUF[1]_inst_i_8_n_0 ;
  wire \A_OBUF[1]_inst_i_9_n_0 ;
  wire \A_OBUF[2]_inst_i_10_n_0 ;
  wire \A_OBUF[2]_inst_i_11_n_0 ;
  wire \A_OBUF[2]_inst_i_12_n_0 ;
  wire \A_OBUF[2]_inst_i_13_n_0 ;
  wire \A_OBUF[2]_inst_i_2_n_0 ;
  wire \A_OBUF[2]_inst_i_3_n_0 ;
  wire \A_OBUF[2]_inst_i_4_n_0 ;
  wire \A_OBUF[2]_inst_i_5_n_0 ;
  wire \A_OBUF[2]_inst_i_6_n_0 ;
  wire \A_OBUF[2]_inst_i_7_n_0 ;
  wire \A_OBUF[2]_inst_i_8_n_0 ;
  wire \A_OBUF[2]_inst_i_9_n_0 ;
  wire \A_OBUF[3]_inst_i_10_n_0 ;
  wire \A_OBUF[3]_inst_i_11_n_0 ;
  wire \A_OBUF[3]_inst_i_12_n_0 ;
  wire \A_OBUF[3]_inst_i_13_n_0 ;
  wire \A_OBUF[3]_inst_i_2_n_0 ;
  wire \A_OBUF[3]_inst_i_3_n_0 ;
  wire \A_OBUF[3]_inst_i_4_n_0 ;
  wire \A_OBUF[3]_inst_i_5_n_0 ;
  wire \A_OBUF[3]_inst_i_6_n_0 ;
  wire \A_OBUF[3]_inst_i_7_n_0 ;
  wire \A_OBUF[3]_inst_i_8_n_0 ;
  wire \A_OBUF[3]_inst_i_9_n_0 ;
  wire \A_OBUF[4]_inst_i_10_n_0 ;
  wire \A_OBUF[4]_inst_i_11_n_0 ;
  wire \A_OBUF[4]_inst_i_12_n_0 ;
  wire \A_OBUF[4]_inst_i_13_n_0 ;
  wire \A_OBUF[4]_inst_i_2_n_0 ;
  wire \A_OBUF[4]_inst_i_3_n_0 ;
  wire \A_OBUF[4]_inst_i_4_n_0 ;
  wire \A_OBUF[4]_inst_i_5_n_0 ;
  wire \A_OBUF[4]_inst_i_6_n_0 ;
  wire \A_OBUF[4]_inst_i_7_n_0 ;
  wire \A_OBUF[4]_inst_i_8_n_0 ;
  wire \A_OBUF[4]_inst_i_9_n_0 ;
  wire \A_OBUF[5]_inst_i_10_n_0 ;
  wire \A_OBUF[5]_inst_i_11_n_0 ;
  wire \A_OBUF[5]_inst_i_12_n_0 ;
  wire \A_OBUF[5]_inst_i_13_n_0 ;
  wire \A_OBUF[5]_inst_i_2_n_0 ;
  wire \A_OBUF[5]_inst_i_3_n_0 ;
  wire \A_OBUF[5]_inst_i_4_n_0 ;
  wire \A_OBUF[5]_inst_i_5_n_0 ;
  wire \A_OBUF[5]_inst_i_6_n_0 ;
  wire \A_OBUF[5]_inst_i_7_n_0 ;
  wire \A_OBUF[5]_inst_i_8_n_0 ;
  wire \A_OBUF[5]_inst_i_9_n_0 ;
  wire \A_OBUF[6]_inst_i_10_n_0 ;
  wire \A_OBUF[6]_inst_i_11_n_0 ;
  wire \A_OBUF[6]_inst_i_12_n_0 ;
  wire \A_OBUF[6]_inst_i_13_n_0 ;
  wire \A_OBUF[6]_inst_i_2_n_0 ;
  wire \A_OBUF[6]_inst_i_3_n_0 ;
  wire \A_OBUF[6]_inst_i_4_n_0 ;
  wire \A_OBUF[6]_inst_i_5_n_0 ;
  wire \A_OBUF[6]_inst_i_6_n_0 ;
  wire \A_OBUF[6]_inst_i_7_n_0 ;
  wire \A_OBUF[6]_inst_i_8_n_0 ;
  wire \A_OBUF[6]_inst_i_9_n_0 ;
  wire \A_OBUF[7]_inst_i_10_n_0 ;
  wire \A_OBUF[7]_inst_i_11_n_0 ;
  wire \A_OBUF[7]_inst_i_12_n_0 ;
  wire \A_OBUF[7]_inst_i_13_n_0 ;
  wire \A_OBUF[7]_inst_i_2_n_0 ;
  wire \A_OBUF[7]_inst_i_3_n_0 ;
  wire \A_OBUF[7]_inst_i_4_n_0 ;
  wire \A_OBUF[7]_inst_i_5_n_0 ;
  wire \A_OBUF[7]_inst_i_6_n_0 ;
  wire \A_OBUF[7]_inst_i_7_n_0 ;
  wire \A_OBUF[7]_inst_i_8_n_0 ;
  wire \A_OBUF[7]_inst_i_9_n_0 ;
  wire \A_OBUF[8]_inst_i_10_n_0 ;
  wire \A_OBUF[8]_inst_i_11_n_0 ;
  wire \A_OBUF[8]_inst_i_12_n_0 ;
  wire \A_OBUF[8]_inst_i_13_n_0 ;
  wire \A_OBUF[8]_inst_i_2_n_0 ;
  wire \A_OBUF[8]_inst_i_3_n_0 ;
  wire \A_OBUF[8]_inst_i_4_n_0 ;
  wire \A_OBUF[8]_inst_i_5_n_0 ;
  wire \A_OBUF[8]_inst_i_6_n_0 ;
  wire \A_OBUF[8]_inst_i_7_n_0 ;
  wire \A_OBUF[8]_inst_i_8_n_0 ;
  wire \A_OBUF[8]_inst_i_9_n_0 ;
  wire \A_OBUF[9]_inst_i_10_n_0 ;
  wire \A_OBUF[9]_inst_i_11_n_0 ;
  wire \A_OBUF[9]_inst_i_12_n_0 ;
  wire \A_OBUF[9]_inst_i_13_n_0 ;
  wire \A_OBUF[9]_inst_i_2_n_0 ;
  wire \A_OBUF[9]_inst_i_3_n_0 ;
  wire \A_OBUF[9]_inst_i_4_n_0 ;
  wire \A_OBUF[9]_inst_i_5_n_0 ;
  wire \A_OBUF[9]_inst_i_6_n_0 ;
  wire \A_OBUF[9]_inst_i_7_n_0 ;
  wire \A_OBUF[9]_inst_i_8_n_0 ;
  wire \A_OBUF[9]_inst_i_9_n_0 ;
  wire [15:0]B_OBUF;
  wire \B_OBUF[0]_inst_i_10_n_0 ;
  wire \B_OBUF[0]_inst_i_11_n_0 ;
  wire \B_OBUF[0]_inst_i_12_n_0 ;
  wire \B_OBUF[0]_inst_i_13_n_0 ;
  wire \B_OBUF[0]_inst_i_2_n_0 ;
  wire \B_OBUF[0]_inst_i_3_n_0 ;
  wire \B_OBUF[0]_inst_i_4_n_0 ;
  wire \B_OBUF[0]_inst_i_5_n_0 ;
  wire \B_OBUF[0]_inst_i_6_n_0 ;
  wire \B_OBUF[0]_inst_i_7_n_0 ;
  wire \B_OBUF[0]_inst_i_8_n_0 ;
  wire \B_OBUF[0]_inst_i_9_n_0 ;
  wire \B_OBUF[10]_inst_i_10_n_0 ;
  wire \B_OBUF[10]_inst_i_11_n_0 ;
  wire \B_OBUF[10]_inst_i_2_n_0 ;
  wire \B_OBUF[10]_inst_i_3_n_0 ;
  wire \B_OBUF[10]_inst_i_4_n_0 ;
  wire \B_OBUF[10]_inst_i_5_n_0 ;
  wire \B_OBUF[10]_inst_i_6_n_0 ;
  wire \B_OBUF[10]_inst_i_7_n_0 ;
  wire \B_OBUF[10]_inst_i_8_n_0 ;
  wire \B_OBUF[10]_inst_i_9_n_0 ;
  wire \B_OBUF[11]_inst_i_10_n_0 ;
  wire \B_OBUF[11]_inst_i_11_n_0 ;
  wire \B_OBUF[11]_inst_i_12_n_0 ;
  wire \B_OBUF[11]_inst_i_2_n_0 ;
  wire \B_OBUF[11]_inst_i_3_n_0 ;
  wire \B_OBUF[11]_inst_i_4_n_0 ;
  wire \B_OBUF[11]_inst_i_5_n_0 ;
  wire \B_OBUF[11]_inst_i_6_n_0 ;
  wire \B_OBUF[11]_inst_i_7_n_0 ;
  wire \B_OBUF[11]_inst_i_8_n_0 ;
  wire \B_OBUF[11]_inst_i_9_n_0 ;
  wire \B_OBUF[12]_inst_i_10_n_0 ;
  wire \B_OBUF[12]_inst_i_11_n_0 ;
  wire \B_OBUF[12]_inst_i_2_n_0 ;
  wire \B_OBUF[12]_inst_i_3_n_0 ;
  wire \B_OBUF[12]_inst_i_4_n_0 ;
  wire \B_OBUF[12]_inst_i_5_n_0 ;
  wire \B_OBUF[12]_inst_i_6_n_0 ;
  wire \B_OBUF[12]_inst_i_7_n_0 ;
  wire \B_OBUF[12]_inst_i_8_n_0 ;
  wire \B_OBUF[12]_inst_i_9_n_0 ;
  wire \B_OBUF[13]_inst_i_10_n_0 ;
  wire \B_OBUF[13]_inst_i_11_n_0 ;
  wire \B_OBUF[13]_inst_i_2_n_0 ;
  wire \B_OBUF[13]_inst_i_3_n_0 ;
  wire \B_OBUF[13]_inst_i_4_n_0 ;
  wire \B_OBUF[13]_inst_i_5_n_0 ;
  wire \B_OBUF[13]_inst_i_6_n_0 ;
  wire \B_OBUF[13]_inst_i_7_n_0 ;
  wire \B_OBUF[13]_inst_i_8_n_0 ;
  wire \B_OBUF[13]_inst_i_9_n_0 ;
  wire \B_OBUF[14]_inst_i_10_n_0 ;
  wire \B_OBUF[14]_inst_i_11_n_0 ;
  wire \B_OBUF[14]_inst_i_2_n_0 ;
  wire \B_OBUF[14]_inst_i_3_n_0 ;
  wire \B_OBUF[14]_inst_i_4_n_0 ;
  wire \B_OBUF[14]_inst_i_5_n_0 ;
  wire \B_OBUF[14]_inst_i_6_n_0 ;
  wire \B_OBUF[14]_inst_i_7_n_0 ;
  wire \B_OBUF[14]_inst_i_8_n_0 ;
  wire \B_OBUF[14]_inst_i_9_n_0 ;
  wire \B_OBUF[15]_inst_i_10_n_0 ;
  wire \B_OBUF[15]_inst_i_11_n_0 ;
  wire \B_OBUF[15]_inst_i_2_n_0 ;
  wire \B_OBUF[15]_inst_i_3_n_0 ;
  wire \B_OBUF[15]_inst_i_4_n_0 ;
  wire \B_OBUF[15]_inst_i_5_n_0 ;
  wire \B_OBUF[15]_inst_i_6_n_0 ;
  wire \B_OBUF[15]_inst_i_7_n_0 ;
  wire \B_OBUF[15]_inst_i_8_n_0 ;
  wire \B_OBUF[15]_inst_i_9_n_0 ;
  wire \B_OBUF[1]_inst_i_10_n_0 ;
  wire \B_OBUF[1]_inst_i_11_n_0 ;
  wire \B_OBUF[1]_inst_i_12_n_0 ;
  wire \B_OBUF[1]_inst_i_13_n_0 ;
  wire \B_OBUF[1]_inst_i_2_0 ;
  wire \B_OBUF[1]_inst_i_2_1 ;
  wire \B_OBUF[1]_inst_i_2_n_0 ;
  wire \B_OBUF[1]_inst_i_3_n_0 ;
  wire \B_OBUF[1]_inst_i_4_n_0 ;
  wire \B_OBUF[1]_inst_i_5_n_0 ;
  wire \B_OBUF[1]_inst_i_6_n_0 ;
  wire \B_OBUF[1]_inst_i_7_n_0 ;
  wire \B_OBUF[1]_inst_i_8_n_0 ;
  wire \B_OBUF[1]_inst_i_9_n_0 ;
  wire \B_OBUF[2]_inst_i_10_n_0 ;
  wire \B_OBUF[2]_inst_i_11_n_0 ;
  wire \B_OBUF[2]_inst_i_12_n_0 ;
  wire \B_OBUF[2]_inst_i_2_n_0 ;
  wire \B_OBUF[2]_inst_i_3_n_0 ;
  wire \B_OBUF[2]_inst_i_4_n_0 ;
  wire \B_OBUF[2]_inst_i_5_n_0 ;
  wire \B_OBUF[2]_inst_i_6_n_0 ;
  wire \B_OBUF[2]_inst_i_7_n_0 ;
  wire \B_OBUF[2]_inst_i_8_n_0 ;
  wire \B_OBUF[2]_inst_i_9_n_0 ;
  wire \B_OBUF[4]_inst_i_10_n_0 ;
  wire \B_OBUF[4]_inst_i_11_n_0 ;
  wire \B_OBUF[4]_inst_i_2_n_0 ;
  wire \B_OBUF[4]_inst_i_3_n_0 ;
  wire \B_OBUF[4]_inst_i_4_n_0 ;
  wire \B_OBUF[4]_inst_i_5_n_0 ;
  wire \B_OBUF[4]_inst_i_6_n_0 ;
  wire \B_OBUF[4]_inst_i_7_n_0 ;
  wire \B_OBUF[4]_inst_i_8_n_0 ;
  wire \B_OBUF[4]_inst_i_9_n_0 ;
  wire \B_OBUF[5]_inst_i_10_n_0 ;
  wire \B_OBUF[5]_inst_i_11_n_0 ;
  wire \B_OBUF[5]_inst_i_2_n_0 ;
  wire \B_OBUF[5]_inst_i_3_n_0 ;
  wire \B_OBUF[5]_inst_i_4_n_0 ;
  wire \B_OBUF[5]_inst_i_5_n_0 ;
  wire \B_OBUF[5]_inst_i_6_n_0 ;
  wire \B_OBUF[5]_inst_i_7_n_0 ;
  wire \B_OBUF[5]_inst_i_8_n_0 ;
  wire \B_OBUF[5]_inst_i_9_n_0 ;
  wire \B_OBUF[6]_inst_i_10_n_0 ;
  wire \B_OBUF[6]_inst_i_11_n_0 ;
  wire \B_OBUF[6]_inst_i_12_n_0 ;
  wire \B_OBUF[6]_inst_i_3_n_0 ;
  wire \B_OBUF[6]_inst_i_4_n_0 ;
  wire \B_OBUF[6]_inst_i_5_n_0 ;
  wire \B_OBUF[6]_inst_i_6_n_0 ;
  wire \B_OBUF[6]_inst_i_7_n_0 ;
  wire \B_OBUF[6]_inst_i_8_n_0 ;
  wire \B_OBUF[6]_inst_i_9_n_0 ;
  wire \B_OBUF[7]_inst_i_10_n_0 ;
  wire \B_OBUF[7]_inst_i_11_n_0 ;
  wire \B_OBUF[7]_inst_i_12_n_0 ;
  wire \B_OBUF[7]_inst_i_13_n_0 ;
  wire \B_OBUF[7]_inst_i_2_n_0 ;
  wire \B_OBUF[7]_inst_i_3_n_0 ;
  wire \B_OBUF[7]_inst_i_4_n_0 ;
  wire \B_OBUF[7]_inst_i_5_n_0 ;
  wire \B_OBUF[7]_inst_i_6_n_0 ;
  wire \B_OBUF[7]_inst_i_7_n_0 ;
  wire \B_OBUF[7]_inst_i_8_n_0 ;
  wire \B_OBUF[7]_inst_i_9_n_0 ;
  wire \B_OBUF[8]_inst_i_10_n_0 ;
  wire \B_OBUF[8]_inst_i_11_n_0 ;
  wire \B_OBUF[8]_inst_i_2_n_0 ;
  wire \B_OBUF[8]_inst_i_3_n_0 ;
  wire \B_OBUF[8]_inst_i_4_n_0 ;
  wire \B_OBUF[8]_inst_i_5_n_0 ;
  wire \B_OBUF[8]_inst_i_6_n_0 ;
  wire \B_OBUF[8]_inst_i_7_n_0 ;
  wire \B_OBUF[8]_inst_i_8_n_0 ;
  wire \B_OBUF[8]_inst_i_9_n_0 ;
  wire \B_OBUF[9]_inst_i_10_n_0 ;
  wire \B_OBUF[9]_inst_i_11_n_0 ;
  wire \B_OBUF[9]_inst_i_2_n_0 ;
  wire \B_OBUF[9]_inst_i_3_n_0 ;
  wire \B_OBUF[9]_inst_i_4_n_0 ;
  wire \B_OBUF[9]_inst_i_5_n_0 ;
  wire \B_OBUF[9]_inst_i_6_n_0 ;
  wire \B_OBUF[9]_inst_i_7_n_0 ;
  wire \B_OBUF[9]_inst_i_8_n_0 ;
  wire \B_OBUF[9]_inst_i_9_n_0 ;
  wire CLK;
  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]LEDs_OBUF;
  wire [4:0]Q;
  wire [3:0]S;
  wire [2:0]addr_rs1_OBUF;
  wire [1:0]addr_rs2_OBUF;
  wire [0:0]aluctrl_OBUF;
  wire [3:0]\current_state_reg[1] ;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_0 ;
  wire \current_state_reg[2]_1 ;
  wire \current_state_reg[2]_2 ;
  wire \current_state_reg[2]_3 ;
  wire displayctrl_OBUF;
  wire [15:0]\mem_reg[0]_0 ;
  wire [0:0]\mem_reg[10][15]_0 ;
  wire [15:0]\mem_reg[10]_10 ;
  wire [0:0]\mem_reg[11][15]_0 ;
  wire [15:0]\mem_reg[11]_11 ;
  wire [0:0]\mem_reg[12][15]_0 ;
  wire [15:0]\mem_reg[12]_12 ;
  wire [0:0]\mem_reg[13][15]_0 ;
  wire [15:0]\mem_reg[13]_13 ;
  wire [0:0]\mem_reg[14][15]_0 ;
  wire [15:0]\mem_reg[14]_14 ;
  wire [0:0]\mem_reg[15][15]_0 ;
  wire [15:0]\mem_reg[15]_15 ;
  wire [0:0]\mem_reg[16][15]_0 ;
  wire [15:0]\mem_reg[16]_16 ;
  wire [0:0]\mem_reg[17][0]_0 ;
  wire [15:0]\mem_reg[17]_17 ;
  wire [0:0]\mem_reg[18][15]_0 ;
  wire [15:0]\mem_reg[18]_18 ;
  wire [0:0]\mem_reg[19][0]_0 ;
  wire [15:0]\mem_reg[19]_19 ;
  wire [0:0]\mem_reg[1][15]_0 ;
  wire [15:0]\mem_reg[1]_1 ;
  wire [0:0]\mem_reg[20][15]_0 ;
  wire [15:0]\mem_reg[20]_20 ;
  wire [0:0]\mem_reg[21][15]_0 ;
  wire [15:0]\mem_reg[21]_21 ;
  wire [0:0]\mem_reg[22][15]_0 ;
  wire [15:0]\mem_reg[22]_22 ;
  wire [0:0]\mem_reg[23][15]_0 ;
  wire [15:0]\mem_reg[23]_23 ;
  wire [0:0]\mem_reg[24][15]_0 ;
  wire [15:0]\mem_reg[24]_24 ;
  wire [0:0]\mem_reg[25][0]_0 ;
  wire [15:0]\mem_reg[25]_25 ;
  wire [0:0]\mem_reg[26][15]_0 ;
  wire [15:0]\mem_reg[26]_26 ;
  wire [0:0]\mem_reg[27][15]_0 ;
  wire [15:0]\mem_reg[27]_27 ;
  wire [0:0]\mem_reg[28][15]_0 ;
  wire [15:0]\mem_reg[28]_28 ;
  wire [0:0]\mem_reg[29][15]_0 ;
  wire [15:0]\mem_reg[29]_29 ;
  wire [0:0]\mem_reg[2][15]_0 ;
  wire [15:0]\mem_reg[2]_2 ;
  wire \mem_reg[30][0]_0 ;
  wire [10:0]\mem_reg[30][15]_0 ;
  wire [0:0]\mem_reg[30][15]_1 ;
  wire \mem_reg[30][1]_0 ;
  wire \mem_reg[30][2]_0 ;
  wire \mem_reg[30][3]_0 ;
  wire \mem_reg[30][7]_0 ;
  wire \mem_reg[30][7]_1 ;
  wire [15:0]\mem_reg[30]_30 ;
  wire [0:0]\mem_reg[31][15]_0 ;
  wire [15:0]\mem_reg[31]_31 ;
  wire [0:0]\mem_reg[3][0]_0 ;
  wire [15:0]\mem_reg[3]_3 ;
  wire [0:0]\mem_reg[4][0]_0 ;
  wire [15:0]\mem_reg[4]_4 ;
  wire [0:0]\mem_reg[5][0]_0 ;
  wire [15:0]\mem_reg[5]_5 ;
  wire [0:0]\mem_reg[6][15]_0 ;
  wire [15:0]\mem_reg[6]_6 ;
  wire [0:0]\mem_reg[7][0]_0 ;
  wire [15:0]\mem_reg[7]_7 ;
  wire [0:0]\mem_reg[8][0]_0 ;
  wire [15:0]\mem_reg[8]_8 ;
  wire [0:0]\mem_reg[9][15]_0 ;
  wire [15:0]\mem_reg[9]_9 ;
  wire muxctrl_OBUF;
  wire \muxout_OBUF[0]_inst_i_2_n_0 ;
  wire \muxout_OBUF[1]_inst_i_2_n_0 ;
  wire \muxout_OBUF[2]_inst_i_2_n_0 ;
  wire \muxout_OBUF[3]_inst_i_10_n_0 ;
  wire \muxout_OBUF[3]_inst_i_11_n_0 ;
  wire \muxout_OBUF[3]_inst_i_12_n_0 ;
  wire \muxout_OBUF[3]_inst_i_13_n_0 ;
  wire \muxout_OBUF[3]_inst_i_14_n_0 ;
  wire \muxout_OBUF[3]_inst_i_15_n_0 ;
  wire \muxout_OBUF[3]_inst_i_16_n_0 ;
  wire \muxout_OBUF[3]_inst_i_2_n_0 ;
  wire \muxout_OBUF[3]_inst_i_3_n_0 ;
  wire \muxout_OBUF[3]_inst_i_5_n_0 ;
  wire \muxout_OBUF[3]_inst_i_6_n_0 ;
  wire \muxout_OBUF[3]_inst_i_7_n_0 ;
  wire \muxout_OBUF[3]_inst_i_8_n_0 ;
  wire \muxout_OBUF[3]_inst_i_9_n_0 ;
  wire \muxout_OBUF[7]_inst_i_2_n_0 ;
  wire [0:0]p_0_in;
  wire p_0_in__0;
  wire rst_IBUF;
  wire [6:0]seg0_OBUF;
  wire \seg0_OBUF[1]_inst_i_2_n_0 ;
  wire \seg0_OBUF[2]_inst_i_2_n_0 ;
  wire \seg0_OBUF[2]_inst_i_3_n_0 ;
  wire \seg0_OBUF[2]_inst_i_4_n_0 ;
  wire \seg0_OBUF[3]_inst_i_2_n_0 ;
  wire \seg0_OBUF[3]_inst_i_3_n_0 ;
  wire \seg0_OBUF[4]_inst_i_2_n_0 ;
  wire \seg0_OBUF[4]_inst_i_3_n_0 ;
  wire \seg0_OBUF[5]_inst_i_2_n_0 ;
  wire \seg0_OBUF[5]_inst_i_3_n_0 ;
  wire \seg0_OBUF[5]_inst_i_4_n_0 ;
  wire \seg0_OBUF[6]_inst_i_2_n_0 ;
  wire \seg0_OBUF[6]_inst_i_3_n_0 ;
  wire \seg0_OBUF[6]_inst_i_4_n_0 ;
  wire \seg0_OBUF[6]_inst_i_5_n_0 ;
  wire [6:0]seg1_OBUF;
  wire \seg1_OBUF[1]_inst_i_2_n_0 ;
  wire \seg1_OBUF[2]_inst_i_2_n_0 ;
  wire \seg1_OBUF[2]_inst_i_3_n_0 ;
  wire \seg1_OBUF[2]_inst_i_4_n_0 ;
  wire \seg1_OBUF[2]_inst_i_5_n_0 ;
  wire \seg1_OBUF[2]_inst_i_6_n_0 ;
  wire \seg1_OBUF[2]_inst_i_7_n_0 ;
  wire \seg1_OBUF[3]_inst_i_2_n_0 ;
  wire \seg1_OBUF[3]_inst_i_3_n_0 ;
  wire \seg1_OBUF[4]_inst_i_2_n_0 ;
  wire \seg1_OBUF[4]_inst_i_3_n_0 ;
  wire \seg1_OBUF[5]_inst_i_2_n_0 ;
  wire \seg1_OBUF[5]_inst_i_3_n_0 ;
  wire \seg1_OBUF[5]_inst_i_4_n_0 ;
  wire \seg1_OBUF[6]_inst_i_2_n_0 ;
  wire \seg1_OBUF[6]_inst_i_3_n_0 ;
  wire \seg1_OBUF[6]_inst_i_4_n_0 ;
  wire \seg1_OBUF[6]_inst_i_5_n_0 ;
  wire \seg1_OBUF[6]_inst_i_6_n_0 ;
  wire \seg1_OBUF[6]_inst_i_7_n_0 ;
  wire [6:0]seg2_OBUF;
  wire \seg2_OBUF[0]_inst_i_2_n_0 ;
  wire \seg2_OBUF[1]_inst_i_2_n_0 ;
  wire \seg2_OBUF[2]_inst_i_2_n_0 ;
  wire \seg2_OBUF[2]_inst_i_3_n_0 ;
  wire \seg2_OBUF[2]_inst_i_4_n_0 ;
  wire \seg2_OBUF[3]_inst_i_2_n_0 ;
  wire \seg2_OBUF[3]_inst_i_3_n_0 ;
  wire \seg2_OBUF[4]_inst_i_2_n_0 ;
  wire \seg2_OBUF[4]_inst_i_3_n_0 ;
  wire \seg2_OBUF[4]_inst_i_4_n_0 ;
  wire \seg2_OBUF[5]_inst_i_2_n_0 ;
  wire \seg2_OBUF[5]_inst_i_3_n_0 ;
  wire \seg2_OBUF[6]_inst_i_2_n_0 ;
  wire \seg2_OBUF[6]_inst_i_3_n_0 ;
  wire \seg2_OBUF[6]_inst_i_4_n_0 ;
  wire \seg2_OBUF[6]_inst_i_5_n_0 ;
  wire \seg2_OBUF[6]_inst_i_6_n_0 ;
  wire \seg2_OBUF[6]_inst_i_7_n_0 ;
  wire [6:0]seg3_OBUF;
  wire \seg3_OBUF[6]_inst_i_2_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUout_OBUF[10]_inst_i_2 
       (.I0(\B_OBUF[10]_inst_i_3_n_0 ),
        .I1(\mem_reg[30][7]_1 ),
        .I2(\B_OBUF[10]_inst_i_2_n_0 ),
        .O(\current_state_reg[2]_1 ));
  MUXF7 \ALUout_OBUF[12]_inst_i_2 
       (.I0(\ALUout_OBUF[12]_inst_i_3_n_0 ),
        .I1(\ALUout_OBUF[12]_inst_i_4_n_0 ),
        .O(\current_state_reg[2]_3 ),
        .S(\mem_reg[30][7]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUout_OBUF[12]_inst_i_3 
       (.I0(\B_OBUF[12]_inst_i_4_n_0 ),
        .I1(\B_OBUF[12]_inst_i_5_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[12]_inst_i_6_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[12]_inst_i_7_n_0 ),
        .O(\ALUout_OBUF[12]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF505F3F3F5050303)) 
    \ALUout_OBUF[12]_inst_i_4 
       (.I0(\B_OBUF[12]_inst_i_9_n_0 ),
        .I1(\B_OBUF[12]_inst_i_8_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[12]_inst_i_10_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[12]_inst_i_11_n_0 ),
        .O(\ALUout_OBUF[12]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUout_OBUF[14]_inst_i_2 
       (.I0(\B_OBUF[14]_inst_i_3_n_0 ),
        .I1(\mem_reg[30][7]_1 ),
        .I2(\B_OBUF[14]_inst_i_2_n_0 ),
        .O(\current_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUout_OBUF[15]_inst_i_3 
       (.I0(\B_OBUF[15]_inst_i_2_n_0 ),
        .I1(\mem_reg[30][7]_1 ),
        .I2(\B_OBUF[15]_inst_i_3_n_0 ),
        .O(\current_state_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFF40F540F540F5)) 
    \ALUout_OBUF[3]_inst_i_1 
       (.I0(\muxout_OBUF[3]_inst_i_2_n_0 ),
        .I1(LEDs_OBUF),
        .I2(A_OBUF[3]),
        .I3(\ALUout[3] ),
        .I4(p_0_in),
        .I5(aluctrl_OBUF),
        .O(ALUout_OBUF));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \A_OBUF[0]_inst_i_1 
       (.I0(\A_OBUF[0]_inst_i_2_n_0 ),
        .I1(\A_OBUF[0]_inst_i_3_n_0 ),
        .I2(addr_rs1_OBUF[2]),
        .I3(\A_OBUF[0]_inst_i_4_n_0 ),
        .I4(\A_OBUF[0]_inst_i_5_n_0 ),
        .I5(addr_rs1_OBUF[1]),
        .O(A_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[0]_inst_i_10 
       (.I0(\mem_reg[8]_8 [0]),
        .I1(\mem_reg[9]_9 [0]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[10]_10 [0]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[11]_11 [0]),
        .O(\A_OBUF[0]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[0]_inst_i_11 
       (.I0(\mem_reg[12]_12 [0]),
        .I1(\mem_reg[13]_13 [0]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[14]_14 [0]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[15]_15 [0]),
        .O(\A_OBUF[0]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[0]_inst_i_12 
       (.I0(\mem_reg[0]_0 [0]),
        .I1(\mem_reg[1]_1 [0]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[2]_2 [0]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[3]_3 [0]),
        .O(\A_OBUF[0]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[0]_inst_i_13 
       (.I0(\mem_reg[4]_4 [0]),
        .I1(\mem_reg[5]_5 [0]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[6]_6 [0]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[7]_7 [0]),
        .O(\A_OBUF[0]_inst_i_13_n_0 ));
  MUXF7 \A_OBUF[0]_inst_i_2 
       (.I0(\A_OBUF[0]_inst_i_6_n_0 ),
        .I1(\A_OBUF[0]_inst_i_7_n_0 ),
        .O(\A_OBUF[0]_inst_i_2_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[0]_inst_i_3 
       (.I0(\A_OBUF[0]_inst_i_8_n_0 ),
        .I1(\A_OBUF[0]_inst_i_9_n_0 ),
        .O(\A_OBUF[0]_inst_i_3_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[0]_inst_i_4 
       (.I0(\A_OBUF[0]_inst_i_10_n_0 ),
        .I1(\A_OBUF[0]_inst_i_11_n_0 ),
        .O(\A_OBUF[0]_inst_i_4_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[0]_inst_i_5 
       (.I0(\A_OBUF[0]_inst_i_12_n_0 ),
        .I1(\A_OBUF[0]_inst_i_13_n_0 ),
        .O(\A_OBUF[0]_inst_i_5_n_0 ),
        .S(addr_rs1_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[0]_inst_i_6 
       (.I0(\mem_reg[24]_24 [0]),
        .I1(\mem_reg[25]_25 [0]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[26]_26 [0]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[27]_27 [0]),
        .O(\A_OBUF[0]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[0]_inst_i_7 
       (.I0(\mem_reg[28]_28 [0]),
        .I1(\mem_reg[29]_29 [0]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[30]_30 [0]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[31]_31 [0]),
        .O(\A_OBUF[0]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[0]_inst_i_8 
       (.I0(\mem_reg[16]_16 [0]),
        .I1(\mem_reg[17]_17 [0]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[18]_18 [0]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[19]_19 [0]),
        .O(\A_OBUF[0]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[0]_inst_i_9 
       (.I0(\mem_reg[20]_20 [0]),
        .I1(\mem_reg[21]_21 [0]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[22]_22 [0]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[23]_23 [0]),
        .O(\A_OBUF[0]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F303F5050303F)) 
    \A_OBUF[10]_inst_i_1 
       (.I0(\A_OBUF[10]_inst_i_2_n_0 ),
        .I1(\A_OBUF[10]_inst_i_3_n_0 ),
        .I2(addr_rs1_OBUF[2]),
        .I3(\A_OBUF[10]_inst_i_4_n_0 ),
        .I4(addr_rs1_OBUF[1]),
        .I5(\A_OBUF[10]_inst_i_5_n_0 ),
        .O(A_OBUF[10]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[10]_inst_i_10 
       (.I0(\mem_reg[0]_0 [10]),
        .I1(\mem_reg[1]_1 [10]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[2]_2 [10]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[3]_3 [10]),
        .O(\A_OBUF[10]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[10]_inst_i_11 
       (.I0(\mem_reg[4]_4 [10]),
        .I1(\mem_reg[5]_5 [10]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[6]_6 [10]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[7]_7 [10]),
        .O(\A_OBUF[10]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A_OBUF[10]_inst_i_12 
       (.I0(\mem_reg[8]_8 [10]),
        .I1(\mem_reg[9]_9 [10]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[10]_10 [10]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[11]_11 [10]),
        .O(\A_OBUF[10]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A_OBUF[10]_inst_i_13 
       (.I0(\mem_reg[12]_12 [10]),
        .I1(\mem_reg[13]_13 [10]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[14]_14 [10]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[15]_15 [10]),
        .O(\A_OBUF[10]_inst_i_13_n_0 ));
  MUXF7 \A_OBUF[10]_inst_i_2 
       (.I0(\A_OBUF[10]_inst_i_6_n_0 ),
        .I1(\A_OBUF[10]_inst_i_7_n_0 ),
        .O(\A_OBUF[10]_inst_i_2_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[10]_inst_i_3 
       (.I0(\A_OBUF[10]_inst_i_8_n_0 ),
        .I1(\A_OBUF[10]_inst_i_9_n_0 ),
        .O(\A_OBUF[10]_inst_i_3_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[10]_inst_i_4 
       (.I0(\A_OBUF[10]_inst_i_10_n_0 ),
        .I1(\A_OBUF[10]_inst_i_11_n_0 ),
        .O(\A_OBUF[10]_inst_i_4_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[10]_inst_i_5 
       (.I0(\A_OBUF[10]_inst_i_12_n_0 ),
        .I1(\A_OBUF[10]_inst_i_13_n_0 ),
        .O(\A_OBUF[10]_inst_i_5_n_0 ),
        .S(addr_rs1_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[10]_inst_i_6 
       (.I0(\mem_reg[24]_24 [10]),
        .I1(\mem_reg[25]_25 [10]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[26]_26 [10]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[27]_27 [10]),
        .O(\A_OBUF[10]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[10]_inst_i_7 
       (.I0(\mem_reg[28]_28 [10]),
        .I1(\mem_reg[29]_29 [10]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[30]_30 [10]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[31]_31 [10]),
        .O(\A_OBUF[10]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[10]_inst_i_8 
       (.I0(\mem_reg[16]_16 [10]),
        .I1(\mem_reg[17]_17 [10]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[18]_18 [10]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[19]_19 [10]),
        .O(\A_OBUF[10]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[10]_inst_i_9 
       (.I0(\mem_reg[20]_20 [10]),
        .I1(\mem_reg[21]_21 [10]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[22]_22 [10]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[23]_23 [10]),
        .O(\A_OBUF[10]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \A_OBUF[11]_inst_i_1 
       (.I0(\A_OBUF[11]_inst_i_2_n_0 ),
        .I1(\A_OBUF[11]_inst_i_3_n_0 ),
        .I2(addr_rs1_OBUF[2]),
        .I3(\A_OBUF[11]_inst_i_4_n_0 ),
        .I4(\A_OBUF[11]_inst_i_5_n_0 ),
        .I5(addr_rs1_OBUF[1]),
        .O(A_OBUF[11]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[11]_inst_i_10 
       (.I0(\mem_reg[8]_8 [11]),
        .I1(\mem_reg[9]_9 [11]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[10]_10 [11]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[11]_11 [11]),
        .O(\A_OBUF[11]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[11]_inst_i_11 
       (.I0(\mem_reg[12]_12 [11]),
        .I1(\mem_reg[13]_13 [11]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[14]_14 [11]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[15]_15 [11]),
        .O(\A_OBUF[11]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[11]_inst_i_12 
       (.I0(\mem_reg[0]_0 [11]),
        .I1(\mem_reg[1]_1 [11]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[2]_2 [11]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[3]_3 [11]),
        .O(\A_OBUF[11]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[11]_inst_i_13 
       (.I0(\mem_reg[4]_4 [11]),
        .I1(\mem_reg[5]_5 [11]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[6]_6 [11]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[7]_7 [11]),
        .O(\A_OBUF[11]_inst_i_13_n_0 ));
  MUXF7 \A_OBUF[11]_inst_i_2 
       (.I0(\A_OBUF[11]_inst_i_6_n_0 ),
        .I1(\A_OBUF[11]_inst_i_7_n_0 ),
        .O(\A_OBUF[11]_inst_i_2_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[11]_inst_i_3 
       (.I0(\A_OBUF[11]_inst_i_8_n_0 ),
        .I1(\A_OBUF[11]_inst_i_9_n_0 ),
        .O(\A_OBUF[11]_inst_i_3_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[11]_inst_i_4 
       (.I0(\A_OBUF[11]_inst_i_10_n_0 ),
        .I1(\A_OBUF[11]_inst_i_11_n_0 ),
        .O(\A_OBUF[11]_inst_i_4_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[11]_inst_i_5 
       (.I0(\A_OBUF[11]_inst_i_12_n_0 ),
        .I1(\A_OBUF[11]_inst_i_13_n_0 ),
        .O(\A_OBUF[11]_inst_i_5_n_0 ),
        .S(addr_rs1_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[11]_inst_i_6 
       (.I0(\mem_reg[24]_24 [11]),
        .I1(\mem_reg[25]_25 [11]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[26]_26 [11]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[27]_27 [11]),
        .O(\A_OBUF[11]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[11]_inst_i_7 
       (.I0(\mem_reg[28]_28 [11]),
        .I1(\mem_reg[29]_29 [11]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[30]_30 [11]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[31]_31 [11]),
        .O(\A_OBUF[11]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[11]_inst_i_8 
       (.I0(\mem_reg[16]_16 [11]),
        .I1(\mem_reg[17]_17 [11]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[18]_18 [11]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[19]_19 [11]),
        .O(\A_OBUF[11]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[11]_inst_i_9 
       (.I0(\mem_reg[20]_20 [11]),
        .I1(\mem_reg[21]_21 [11]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[22]_22 [11]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[23]_23 [11]),
        .O(\A_OBUF[11]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \A_OBUF[12]_inst_i_1 
       (.I0(\A_OBUF[12]_inst_i_2_n_0 ),
        .I1(\A_OBUF[12]_inst_i_3_n_0 ),
        .I2(addr_rs1_OBUF[2]),
        .I3(\A_OBUF[12]_inst_i_4_n_0 ),
        .I4(\A_OBUF[12]_inst_i_5_n_0 ),
        .I5(addr_rs1_OBUF[1]),
        .O(A_OBUF[12]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[12]_inst_i_10 
       (.I0(\mem_reg[8]_8 [12]),
        .I1(\mem_reg[9]_9 [12]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[10]_10 [12]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[11]_11 [12]),
        .O(\A_OBUF[12]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[12]_inst_i_11 
       (.I0(\mem_reg[12]_12 [12]),
        .I1(\mem_reg[13]_13 [12]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[14]_14 [12]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[15]_15 [12]),
        .O(\A_OBUF[12]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[12]_inst_i_12 
       (.I0(\mem_reg[0]_0 [12]),
        .I1(\mem_reg[1]_1 [12]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[2]_2 [12]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[3]_3 [12]),
        .O(\A_OBUF[12]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[12]_inst_i_13 
       (.I0(\mem_reg[4]_4 [12]),
        .I1(\mem_reg[5]_5 [12]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[6]_6 [12]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[7]_7 [12]),
        .O(\A_OBUF[12]_inst_i_13_n_0 ));
  MUXF7 \A_OBUF[12]_inst_i_2 
       (.I0(\A_OBUF[12]_inst_i_6_n_0 ),
        .I1(\A_OBUF[12]_inst_i_7_n_0 ),
        .O(\A_OBUF[12]_inst_i_2_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[12]_inst_i_3 
       (.I0(\A_OBUF[12]_inst_i_8_n_0 ),
        .I1(\A_OBUF[12]_inst_i_9_n_0 ),
        .O(\A_OBUF[12]_inst_i_3_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[12]_inst_i_4 
       (.I0(\A_OBUF[12]_inst_i_10_n_0 ),
        .I1(\A_OBUF[12]_inst_i_11_n_0 ),
        .O(\A_OBUF[12]_inst_i_4_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[12]_inst_i_5 
       (.I0(\A_OBUF[12]_inst_i_12_n_0 ),
        .I1(\A_OBUF[12]_inst_i_13_n_0 ),
        .O(\A_OBUF[12]_inst_i_5_n_0 ),
        .S(addr_rs1_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[12]_inst_i_6 
       (.I0(\mem_reg[24]_24 [12]),
        .I1(\mem_reg[25]_25 [12]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[26]_26 [12]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[27]_27 [12]),
        .O(\A_OBUF[12]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[12]_inst_i_7 
       (.I0(\mem_reg[28]_28 [12]),
        .I1(\mem_reg[29]_29 [12]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[30]_30 [12]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[31]_31 [12]),
        .O(\A_OBUF[12]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[12]_inst_i_8 
       (.I0(\mem_reg[16]_16 [12]),
        .I1(\mem_reg[17]_17 [12]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[18]_18 [12]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[19]_19 [12]),
        .O(\A_OBUF[12]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[12]_inst_i_9 
       (.I0(\mem_reg[20]_20 [12]),
        .I1(\mem_reg[21]_21 [12]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[22]_22 [12]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[23]_23 [12]),
        .O(\A_OBUF[12]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \A_OBUF[13]_inst_i_1 
       (.I0(\A_OBUF[13]_inst_i_2_n_0 ),
        .I1(\A_OBUF[13]_inst_i_3_n_0 ),
        .I2(addr_rs1_OBUF[2]),
        .I3(\A_OBUF[13]_inst_i_4_n_0 ),
        .I4(\A_OBUF[13]_inst_i_5_n_0 ),
        .I5(addr_rs1_OBUF[1]),
        .O(A_OBUF[13]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[13]_inst_i_10 
       (.I0(\mem_reg[8]_8 [13]),
        .I1(\mem_reg[9]_9 [13]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[10]_10 [13]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[11]_11 [13]),
        .O(\A_OBUF[13]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[13]_inst_i_11 
       (.I0(\mem_reg[12]_12 [13]),
        .I1(\mem_reg[13]_13 [13]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[14]_14 [13]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[15]_15 [13]),
        .O(\A_OBUF[13]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[13]_inst_i_12 
       (.I0(\mem_reg[0]_0 [13]),
        .I1(\mem_reg[1]_1 [13]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[2]_2 [13]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[3]_3 [13]),
        .O(\A_OBUF[13]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[13]_inst_i_13 
       (.I0(\mem_reg[4]_4 [13]),
        .I1(\mem_reg[5]_5 [13]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[6]_6 [13]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[7]_7 [13]),
        .O(\A_OBUF[13]_inst_i_13_n_0 ));
  MUXF7 \A_OBUF[13]_inst_i_2 
       (.I0(\A_OBUF[13]_inst_i_6_n_0 ),
        .I1(\A_OBUF[13]_inst_i_7_n_0 ),
        .O(\A_OBUF[13]_inst_i_2_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[13]_inst_i_3 
       (.I0(\A_OBUF[13]_inst_i_8_n_0 ),
        .I1(\A_OBUF[13]_inst_i_9_n_0 ),
        .O(\A_OBUF[13]_inst_i_3_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[13]_inst_i_4 
       (.I0(\A_OBUF[13]_inst_i_10_n_0 ),
        .I1(\A_OBUF[13]_inst_i_11_n_0 ),
        .O(\A_OBUF[13]_inst_i_4_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[13]_inst_i_5 
       (.I0(\A_OBUF[13]_inst_i_12_n_0 ),
        .I1(\A_OBUF[13]_inst_i_13_n_0 ),
        .O(\A_OBUF[13]_inst_i_5_n_0 ),
        .S(addr_rs1_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[13]_inst_i_6 
       (.I0(\mem_reg[24]_24 [13]),
        .I1(\mem_reg[25]_25 [13]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[26]_26 [13]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[27]_27 [13]),
        .O(\A_OBUF[13]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[13]_inst_i_7 
       (.I0(\mem_reg[28]_28 [13]),
        .I1(\mem_reg[29]_29 [13]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[30]_30 [13]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[31]_31 [13]),
        .O(\A_OBUF[13]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[13]_inst_i_8 
       (.I0(\mem_reg[16]_16 [13]),
        .I1(\mem_reg[17]_17 [13]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[18]_18 [13]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[19]_19 [13]),
        .O(\A_OBUF[13]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[13]_inst_i_9 
       (.I0(\mem_reg[20]_20 [13]),
        .I1(\mem_reg[21]_21 [13]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[22]_22 [13]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[23]_23 [13]),
        .O(\A_OBUF[13]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hC0CFC0CF50505F5F)) 
    \A_OBUF[14]_inst_i_1 
       (.I0(\A_OBUF[14]_inst_i_2_n_0 ),
        .I1(\A_OBUF[14]_inst_i_3_n_0 ),
        .I2(addr_rs1_OBUF[2]),
        .I3(\A_OBUF[14]_inst_i_4_n_0 ),
        .I4(\A_OBUF[14]_inst_i_5_n_0 ),
        .I5(addr_rs1_OBUF[1]),
        .O(A_OBUF[14]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[14]_inst_i_10 
       (.I0(\mem_reg[8]_8 [14]),
        .I1(\mem_reg[9]_9 [14]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[10]_10 [14]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[11]_11 [14]),
        .O(\A_OBUF[14]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[14]_inst_i_11 
       (.I0(\mem_reg[12]_12 [14]),
        .I1(\mem_reg[13]_13 [14]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[14]_14 [14]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[15]_15 [14]),
        .O(\A_OBUF[14]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[14]_inst_i_12 
       (.I0(\mem_reg[0]_0 [14]),
        .I1(\mem_reg[1]_1 [14]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[2]_2 [14]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[3]_3 [14]),
        .O(\A_OBUF[14]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[14]_inst_i_13 
       (.I0(\mem_reg[4]_4 [14]),
        .I1(\mem_reg[5]_5 [14]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[6]_6 [14]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[7]_7 [14]),
        .O(\A_OBUF[14]_inst_i_13_n_0 ));
  MUXF7 \A_OBUF[14]_inst_i_2 
       (.I0(\A_OBUF[14]_inst_i_6_n_0 ),
        .I1(\A_OBUF[14]_inst_i_7_n_0 ),
        .O(\A_OBUF[14]_inst_i_2_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[14]_inst_i_3 
       (.I0(\A_OBUF[14]_inst_i_8_n_0 ),
        .I1(\A_OBUF[14]_inst_i_9_n_0 ),
        .O(\A_OBUF[14]_inst_i_3_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[14]_inst_i_4 
       (.I0(\A_OBUF[14]_inst_i_10_n_0 ),
        .I1(\A_OBUF[14]_inst_i_11_n_0 ),
        .O(\A_OBUF[14]_inst_i_4_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[14]_inst_i_5 
       (.I0(\A_OBUF[14]_inst_i_12_n_0 ),
        .I1(\A_OBUF[14]_inst_i_13_n_0 ),
        .O(\A_OBUF[14]_inst_i_5_n_0 ),
        .S(addr_rs1_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[14]_inst_i_6 
       (.I0(\mem_reg[16]_16 [14]),
        .I1(\mem_reg[17]_17 [14]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[18]_18 [14]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[19]_19 [14]),
        .O(\A_OBUF[14]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[14]_inst_i_7 
       (.I0(\mem_reg[20]_20 [14]),
        .I1(\mem_reg[21]_21 [14]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[22]_22 [14]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[23]_23 [14]),
        .O(\A_OBUF[14]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A_OBUF[14]_inst_i_8 
       (.I0(\mem_reg[24]_24 [14]),
        .I1(\mem_reg[25]_25 [14]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[26]_26 [14]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[27]_27 [14]),
        .O(\A_OBUF[14]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A_OBUF[14]_inst_i_9 
       (.I0(\mem_reg[28]_28 [14]),
        .I1(\mem_reg[29]_29 [14]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[30]_30 [14]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[31]_31 [14]),
        .O(\A_OBUF[14]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \A_OBUF[15]_inst_i_1 
       (.I0(\A_OBUF[15]_inst_i_2_n_0 ),
        .I1(\A_OBUF[15]_inst_i_3_n_0 ),
        .I2(addr_rs1_OBUF[2]),
        .I3(\A_OBUF[15]_inst_i_4_n_0 ),
        .I4(\A_OBUF[15]_inst_i_5_n_0 ),
        .I5(addr_rs1_OBUF[1]),
        .O(A_OBUF[15]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[15]_inst_i_10 
       (.I0(\mem_reg[8]_8 [15]),
        .I1(\mem_reg[9]_9 [15]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[10]_10 [15]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[11]_11 [15]),
        .O(\A_OBUF[15]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[15]_inst_i_11 
       (.I0(\mem_reg[12]_12 [15]),
        .I1(\mem_reg[13]_13 [15]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[14]_14 [15]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[15]_15 [15]),
        .O(\A_OBUF[15]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[15]_inst_i_12 
       (.I0(\mem_reg[0]_0 [15]),
        .I1(\mem_reg[1]_1 [15]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[2]_2 [15]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[3]_3 [15]),
        .O(\A_OBUF[15]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[15]_inst_i_13 
       (.I0(\mem_reg[4]_4 [15]),
        .I1(\mem_reg[5]_5 [15]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[6]_6 [15]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[7]_7 [15]),
        .O(\A_OBUF[15]_inst_i_13_n_0 ));
  MUXF7 \A_OBUF[15]_inst_i_2 
       (.I0(\A_OBUF[15]_inst_i_6_n_0 ),
        .I1(\A_OBUF[15]_inst_i_7_n_0 ),
        .O(\A_OBUF[15]_inst_i_2_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[15]_inst_i_3 
       (.I0(\A_OBUF[15]_inst_i_8_n_0 ),
        .I1(\A_OBUF[15]_inst_i_9_n_0 ),
        .O(\A_OBUF[15]_inst_i_3_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[15]_inst_i_4 
       (.I0(\A_OBUF[15]_inst_i_10_n_0 ),
        .I1(\A_OBUF[15]_inst_i_11_n_0 ),
        .O(\A_OBUF[15]_inst_i_4_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[15]_inst_i_5 
       (.I0(\A_OBUF[15]_inst_i_12_n_0 ),
        .I1(\A_OBUF[15]_inst_i_13_n_0 ),
        .O(\A_OBUF[15]_inst_i_5_n_0 ),
        .S(addr_rs1_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[15]_inst_i_6 
       (.I0(\mem_reg[24]_24 [15]),
        .I1(\mem_reg[25]_25 [15]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[26]_26 [15]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[27]_27 [15]),
        .O(\A_OBUF[15]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[15]_inst_i_7 
       (.I0(\mem_reg[28]_28 [15]),
        .I1(\mem_reg[29]_29 [15]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[30]_30 [15]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[31]_31 [15]),
        .O(\A_OBUF[15]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[15]_inst_i_8 
       (.I0(\mem_reg[16]_16 [15]),
        .I1(\mem_reg[17]_17 [15]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[18]_18 [15]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[19]_19 [15]),
        .O(\A_OBUF[15]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[15]_inst_i_9 
       (.I0(\mem_reg[20]_20 [15]),
        .I1(\mem_reg[21]_21 [15]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[22]_22 [15]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[23]_23 [15]),
        .O(\A_OBUF[15]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hC0CFC0CF50505F5F)) 
    \A_OBUF[1]_inst_i_1 
       (.I0(\A_OBUF[1]_inst_i_2_n_0 ),
        .I1(\A_OBUF[1]_inst_i_3_n_0 ),
        .I2(addr_rs1_OBUF[2]),
        .I3(\A_OBUF[1]_inst_i_4_n_0 ),
        .I4(\A_OBUF[1]_inst_i_5_n_0 ),
        .I5(addr_rs1_OBUF[1]),
        .O(A_OBUF[1]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[1]_inst_i_10 
       (.I0(\mem_reg[8]_8 [1]),
        .I1(\mem_reg[9]_9 [1]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[10]_10 [1]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[11]_11 [1]),
        .O(\A_OBUF[1]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[1]_inst_i_11 
       (.I0(\mem_reg[12]_12 [1]),
        .I1(\mem_reg[13]_13 [1]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[14]_14 [1]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[15]_15 [1]),
        .O(\A_OBUF[1]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[1]_inst_i_12 
       (.I0(\mem_reg[0]_0 [1]),
        .I1(\mem_reg[1]_1 [1]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[2]_2 [1]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[3]_3 [1]),
        .O(\A_OBUF[1]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[1]_inst_i_13 
       (.I0(\mem_reg[4]_4 [1]),
        .I1(\mem_reg[5]_5 [1]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[6]_6 [1]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[7]_7 [1]),
        .O(\A_OBUF[1]_inst_i_13_n_0 ));
  MUXF7 \A_OBUF[1]_inst_i_2 
       (.I0(\A_OBUF[1]_inst_i_6_n_0 ),
        .I1(\A_OBUF[1]_inst_i_7_n_0 ),
        .O(\A_OBUF[1]_inst_i_2_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[1]_inst_i_3 
       (.I0(\A_OBUF[1]_inst_i_8_n_0 ),
        .I1(\A_OBUF[1]_inst_i_9_n_0 ),
        .O(\A_OBUF[1]_inst_i_3_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[1]_inst_i_4 
       (.I0(\A_OBUF[1]_inst_i_10_n_0 ),
        .I1(\A_OBUF[1]_inst_i_11_n_0 ),
        .O(\A_OBUF[1]_inst_i_4_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[1]_inst_i_5 
       (.I0(\A_OBUF[1]_inst_i_12_n_0 ),
        .I1(\A_OBUF[1]_inst_i_13_n_0 ),
        .O(\A_OBUF[1]_inst_i_5_n_0 ),
        .S(addr_rs1_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[1]_inst_i_6 
       (.I0(\mem_reg[16]_16 [1]),
        .I1(\mem_reg[17]_17 [1]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[18]_18 [1]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[19]_19 [1]),
        .O(\A_OBUF[1]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[1]_inst_i_7 
       (.I0(\mem_reg[20]_20 [1]),
        .I1(\mem_reg[21]_21 [1]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[22]_22 [1]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[23]_23 [1]),
        .O(\A_OBUF[1]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A_OBUF[1]_inst_i_8 
       (.I0(\mem_reg[24]_24 [1]),
        .I1(\mem_reg[25]_25 [1]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[26]_26 [1]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[27]_27 [1]),
        .O(\A_OBUF[1]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A_OBUF[1]_inst_i_9 
       (.I0(\mem_reg[28]_28 [1]),
        .I1(\mem_reg[29]_29 [1]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[30]_30 [1]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[31]_31 [1]),
        .O(\A_OBUF[1]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \A_OBUF[2]_inst_i_1 
       (.I0(\A_OBUF[2]_inst_i_2_n_0 ),
        .I1(\A_OBUF[2]_inst_i_3_n_0 ),
        .I2(addr_rs1_OBUF[2]),
        .I3(\A_OBUF[2]_inst_i_4_n_0 ),
        .I4(\A_OBUF[2]_inst_i_5_n_0 ),
        .I5(addr_rs1_OBUF[1]),
        .O(A_OBUF[2]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[2]_inst_i_10 
       (.I0(\mem_reg[8]_8 [2]),
        .I1(\mem_reg[9]_9 [2]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[10]_10 [2]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[11]_11 [2]),
        .O(\A_OBUF[2]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[2]_inst_i_11 
       (.I0(\mem_reg[12]_12 [2]),
        .I1(\mem_reg[13]_13 [2]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[14]_14 [2]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[15]_15 [2]),
        .O(\A_OBUF[2]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[2]_inst_i_12 
       (.I0(\mem_reg[0]_0 [2]),
        .I1(\mem_reg[1]_1 [2]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[2]_2 [2]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[3]_3 [2]),
        .O(\A_OBUF[2]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[2]_inst_i_13 
       (.I0(\mem_reg[4]_4 [2]),
        .I1(\mem_reg[5]_5 [2]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[6]_6 [2]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[7]_7 [2]),
        .O(\A_OBUF[2]_inst_i_13_n_0 ));
  MUXF7 \A_OBUF[2]_inst_i_2 
       (.I0(\A_OBUF[2]_inst_i_6_n_0 ),
        .I1(\A_OBUF[2]_inst_i_7_n_0 ),
        .O(\A_OBUF[2]_inst_i_2_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[2]_inst_i_3 
       (.I0(\A_OBUF[2]_inst_i_8_n_0 ),
        .I1(\A_OBUF[2]_inst_i_9_n_0 ),
        .O(\A_OBUF[2]_inst_i_3_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[2]_inst_i_4 
       (.I0(\A_OBUF[2]_inst_i_10_n_0 ),
        .I1(\A_OBUF[2]_inst_i_11_n_0 ),
        .O(\A_OBUF[2]_inst_i_4_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[2]_inst_i_5 
       (.I0(\A_OBUF[2]_inst_i_12_n_0 ),
        .I1(\A_OBUF[2]_inst_i_13_n_0 ),
        .O(\A_OBUF[2]_inst_i_5_n_0 ),
        .S(addr_rs1_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[2]_inst_i_6 
       (.I0(\mem_reg[24]_24 [2]),
        .I1(\mem_reg[25]_25 [2]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[26]_26 [2]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[27]_27 [2]),
        .O(\A_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[2]_inst_i_7 
       (.I0(\mem_reg[28]_28 [2]),
        .I1(\mem_reg[29]_29 [2]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[30]_30 [2]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[31]_31 [2]),
        .O(\A_OBUF[2]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[2]_inst_i_8 
       (.I0(\mem_reg[16]_16 [2]),
        .I1(\mem_reg[17]_17 [2]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[18]_18 [2]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[19]_19 [2]),
        .O(\A_OBUF[2]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[2]_inst_i_9 
       (.I0(\mem_reg[20]_20 [2]),
        .I1(\mem_reg[21]_21 [2]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[22]_22 [2]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[23]_23 [2]),
        .O(\A_OBUF[2]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \A_OBUF[3]_inst_i_1 
       (.I0(\A_OBUF[3]_inst_i_2_n_0 ),
        .I1(\A_OBUF[3]_inst_i_3_n_0 ),
        .I2(addr_rs1_OBUF[2]),
        .I3(\A_OBUF[3]_inst_i_4_n_0 ),
        .I4(\A_OBUF[3]_inst_i_5_n_0 ),
        .I5(addr_rs1_OBUF[1]),
        .O(A_OBUF[3]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[3]_inst_i_10 
       (.I0(\mem_reg[8]_8 [3]),
        .I1(\mem_reg[9]_9 [3]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[10]_10 [3]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[11]_11 [3]),
        .O(\A_OBUF[3]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[3]_inst_i_11 
       (.I0(\mem_reg[12]_12 [3]),
        .I1(\mem_reg[13]_13 [3]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[14]_14 [3]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[15]_15 [3]),
        .O(\A_OBUF[3]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[3]_inst_i_12 
       (.I0(\mem_reg[0]_0 [3]),
        .I1(\mem_reg[1]_1 [3]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[2]_2 [3]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[3]_3 [3]),
        .O(\A_OBUF[3]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[3]_inst_i_13 
       (.I0(\mem_reg[4]_4 [3]),
        .I1(\mem_reg[5]_5 [3]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[6]_6 [3]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[7]_7 [3]),
        .O(\A_OBUF[3]_inst_i_13_n_0 ));
  MUXF7 \A_OBUF[3]_inst_i_2 
       (.I0(\A_OBUF[3]_inst_i_6_n_0 ),
        .I1(\A_OBUF[3]_inst_i_7_n_0 ),
        .O(\A_OBUF[3]_inst_i_2_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[3]_inst_i_3 
       (.I0(\A_OBUF[3]_inst_i_8_n_0 ),
        .I1(\A_OBUF[3]_inst_i_9_n_0 ),
        .O(\A_OBUF[3]_inst_i_3_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[3]_inst_i_4 
       (.I0(\A_OBUF[3]_inst_i_10_n_0 ),
        .I1(\A_OBUF[3]_inst_i_11_n_0 ),
        .O(\A_OBUF[3]_inst_i_4_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[3]_inst_i_5 
       (.I0(\A_OBUF[3]_inst_i_12_n_0 ),
        .I1(\A_OBUF[3]_inst_i_13_n_0 ),
        .O(\A_OBUF[3]_inst_i_5_n_0 ),
        .S(addr_rs1_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[3]_inst_i_6 
       (.I0(\mem_reg[24]_24 [3]),
        .I1(\mem_reg[25]_25 [3]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[26]_26 [3]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[27]_27 [3]),
        .O(\A_OBUF[3]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[3]_inst_i_7 
       (.I0(\mem_reg[28]_28 [3]),
        .I1(\mem_reg[29]_29 [3]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[30]_30 [3]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[31]_31 [3]),
        .O(\A_OBUF[3]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[3]_inst_i_8 
       (.I0(\mem_reg[16]_16 [3]),
        .I1(\mem_reg[17]_17 [3]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[18]_18 [3]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[19]_19 [3]),
        .O(\A_OBUF[3]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[3]_inst_i_9 
       (.I0(\mem_reg[20]_20 [3]),
        .I1(\mem_reg[21]_21 [3]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[22]_22 [3]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[23]_23 [3]),
        .O(\A_OBUF[3]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \A_OBUF[4]_inst_i_1 
       (.I0(\A_OBUF[4]_inst_i_2_n_0 ),
        .I1(\A_OBUF[4]_inst_i_3_n_0 ),
        .I2(addr_rs1_OBUF[2]),
        .I3(\A_OBUF[4]_inst_i_4_n_0 ),
        .I4(\A_OBUF[4]_inst_i_5_n_0 ),
        .I5(addr_rs1_OBUF[1]),
        .O(A_OBUF[4]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[4]_inst_i_10 
       (.I0(\mem_reg[8]_8 [4]),
        .I1(\mem_reg[9]_9 [4]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[10]_10 [4]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[11]_11 [4]),
        .O(\A_OBUF[4]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[4]_inst_i_11 
       (.I0(\mem_reg[12]_12 [4]),
        .I1(\mem_reg[13]_13 [4]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[14]_14 [4]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[15]_15 [4]),
        .O(\A_OBUF[4]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[4]_inst_i_12 
       (.I0(\mem_reg[0]_0 [4]),
        .I1(\mem_reg[1]_1 [4]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[2]_2 [4]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[3]_3 [4]),
        .O(\A_OBUF[4]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[4]_inst_i_13 
       (.I0(\mem_reg[4]_4 [4]),
        .I1(\mem_reg[5]_5 [4]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[6]_6 [4]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[7]_7 [4]),
        .O(\A_OBUF[4]_inst_i_13_n_0 ));
  MUXF7 \A_OBUF[4]_inst_i_2 
       (.I0(\A_OBUF[4]_inst_i_6_n_0 ),
        .I1(\A_OBUF[4]_inst_i_7_n_0 ),
        .O(\A_OBUF[4]_inst_i_2_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[4]_inst_i_3 
       (.I0(\A_OBUF[4]_inst_i_8_n_0 ),
        .I1(\A_OBUF[4]_inst_i_9_n_0 ),
        .O(\A_OBUF[4]_inst_i_3_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[4]_inst_i_4 
       (.I0(\A_OBUF[4]_inst_i_10_n_0 ),
        .I1(\A_OBUF[4]_inst_i_11_n_0 ),
        .O(\A_OBUF[4]_inst_i_4_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[4]_inst_i_5 
       (.I0(\A_OBUF[4]_inst_i_12_n_0 ),
        .I1(\A_OBUF[4]_inst_i_13_n_0 ),
        .O(\A_OBUF[4]_inst_i_5_n_0 ),
        .S(addr_rs1_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[4]_inst_i_6 
       (.I0(\mem_reg[24]_24 [4]),
        .I1(\mem_reg[25]_25 [4]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[26]_26 [4]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[27]_27 [4]),
        .O(\A_OBUF[4]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[4]_inst_i_7 
       (.I0(\mem_reg[28]_28 [4]),
        .I1(\mem_reg[29]_29 [4]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[30]_30 [4]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[31]_31 [4]),
        .O(\A_OBUF[4]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[4]_inst_i_8 
       (.I0(\mem_reg[16]_16 [4]),
        .I1(\mem_reg[17]_17 [4]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[18]_18 [4]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[19]_19 [4]),
        .O(\A_OBUF[4]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[4]_inst_i_9 
       (.I0(\mem_reg[20]_20 [4]),
        .I1(\mem_reg[21]_21 [4]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[22]_22 [4]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[23]_23 [4]),
        .O(\A_OBUF[4]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \A_OBUF[5]_inst_i_1 
       (.I0(\A_OBUF[5]_inst_i_2_n_0 ),
        .I1(\A_OBUF[5]_inst_i_3_n_0 ),
        .I2(addr_rs1_OBUF[2]),
        .I3(\A_OBUF[5]_inst_i_4_n_0 ),
        .I4(\A_OBUF[5]_inst_i_5_n_0 ),
        .I5(addr_rs1_OBUF[1]),
        .O(A_OBUF[5]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[5]_inst_i_10 
       (.I0(\mem_reg[8]_8 [5]),
        .I1(\mem_reg[9]_9 [5]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[10]_10 [5]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[11]_11 [5]),
        .O(\A_OBUF[5]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[5]_inst_i_11 
       (.I0(\mem_reg[12]_12 [5]),
        .I1(\mem_reg[13]_13 [5]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[14]_14 [5]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[15]_15 [5]),
        .O(\A_OBUF[5]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[5]_inst_i_12 
       (.I0(\mem_reg[0]_0 [5]),
        .I1(\mem_reg[1]_1 [5]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[2]_2 [5]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[3]_3 [5]),
        .O(\A_OBUF[5]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[5]_inst_i_13 
       (.I0(\mem_reg[4]_4 [5]),
        .I1(\mem_reg[5]_5 [5]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[6]_6 [5]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[7]_7 [5]),
        .O(\A_OBUF[5]_inst_i_13_n_0 ));
  MUXF7 \A_OBUF[5]_inst_i_2 
       (.I0(\A_OBUF[5]_inst_i_6_n_0 ),
        .I1(\A_OBUF[5]_inst_i_7_n_0 ),
        .O(\A_OBUF[5]_inst_i_2_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[5]_inst_i_3 
       (.I0(\A_OBUF[5]_inst_i_8_n_0 ),
        .I1(\A_OBUF[5]_inst_i_9_n_0 ),
        .O(\A_OBUF[5]_inst_i_3_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[5]_inst_i_4 
       (.I0(\A_OBUF[5]_inst_i_10_n_0 ),
        .I1(\A_OBUF[5]_inst_i_11_n_0 ),
        .O(\A_OBUF[5]_inst_i_4_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[5]_inst_i_5 
       (.I0(\A_OBUF[5]_inst_i_12_n_0 ),
        .I1(\A_OBUF[5]_inst_i_13_n_0 ),
        .O(\A_OBUF[5]_inst_i_5_n_0 ),
        .S(addr_rs1_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[5]_inst_i_6 
       (.I0(\mem_reg[24]_24 [5]),
        .I1(\mem_reg[25]_25 [5]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[26]_26 [5]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[27]_27 [5]),
        .O(\A_OBUF[5]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[5]_inst_i_7 
       (.I0(\mem_reg[28]_28 [5]),
        .I1(\mem_reg[29]_29 [5]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[30]_30 [5]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[31]_31 [5]),
        .O(\A_OBUF[5]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[5]_inst_i_8 
       (.I0(\mem_reg[16]_16 [5]),
        .I1(\mem_reg[17]_17 [5]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[18]_18 [5]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[19]_19 [5]),
        .O(\A_OBUF[5]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[5]_inst_i_9 
       (.I0(\mem_reg[20]_20 [5]),
        .I1(\mem_reg[21]_21 [5]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[22]_22 [5]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[23]_23 [5]),
        .O(\A_OBUF[5]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hC0CFC0CF50505F5F)) 
    \A_OBUF[6]_inst_i_1 
       (.I0(\A_OBUF[6]_inst_i_2_n_0 ),
        .I1(\A_OBUF[6]_inst_i_3_n_0 ),
        .I2(addr_rs1_OBUF[2]),
        .I3(\A_OBUF[6]_inst_i_4_n_0 ),
        .I4(\A_OBUF[6]_inst_i_5_n_0 ),
        .I5(addr_rs1_OBUF[1]),
        .O(A_OBUF[6]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[6]_inst_i_10 
       (.I0(\mem_reg[8]_8 [6]),
        .I1(\mem_reg[9]_9 [6]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[10]_10 [6]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[11]_11 [6]),
        .O(\A_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[6]_inst_i_11 
       (.I0(\mem_reg[12]_12 [6]),
        .I1(\mem_reg[13]_13 [6]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[14]_14 [6]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[15]_15 [6]),
        .O(\A_OBUF[6]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[6]_inst_i_12 
       (.I0(\mem_reg[0]_0 [6]),
        .I1(\mem_reg[1]_1 [6]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[2]_2 [6]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[3]_3 [6]),
        .O(\A_OBUF[6]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[6]_inst_i_13 
       (.I0(\mem_reg[4]_4 [6]),
        .I1(\mem_reg[5]_5 [6]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[6]_6 [6]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[7]_7 [6]),
        .O(\A_OBUF[6]_inst_i_13_n_0 ));
  MUXF7 \A_OBUF[6]_inst_i_2 
       (.I0(\A_OBUF[6]_inst_i_6_n_0 ),
        .I1(\A_OBUF[6]_inst_i_7_n_0 ),
        .O(\A_OBUF[6]_inst_i_2_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[6]_inst_i_3 
       (.I0(\A_OBUF[6]_inst_i_8_n_0 ),
        .I1(\A_OBUF[6]_inst_i_9_n_0 ),
        .O(\A_OBUF[6]_inst_i_3_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[6]_inst_i_4 
       (.I0(\A_OBUF[6]_inst_i_10_n_0 ),
        .I1(\A_OBUF[6]_inst_i_11_n_0 ),
        .O(\A_OBUF[6]_inst_i_4_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[6]_inst_i_5 
       (.I0(\A_OBUF[6]_inst_i_12_n_0 ),
        .I1(\A_OBUF[6]_inst_i_13_n_0 ),
        .O(\A_OBUF[6]_inst_i_5_n_0 ),
        .S(addr_rs1_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[6]_inst_i_6 
       (.I0(\mem_reg[16]_16 [6]),
        .I1(\mem_reg[17]_17 [6]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[18]_18 [6]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[19]_19 [6]),
        .O(\A_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[6]_inst_i_7 
       (.I0(\mem_reg[20]_20 [6]),
        .I1(\mem_reg[21]_21 [6]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[22]_22 [6]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[23]_23 [6]),
        .O(\A_OBUF[6]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A_OBUF[6]_inst_i_8 
       (.I0(\mem_reg[24]_24 [6]),
        .I1(\mem_reg[25]_25 [6]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[26]_26 [6]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[27]_27 [6]),
        .O(\A_OBUF[6]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \A_OBUF[6]_inst_i_9 
       (.I0(\mem_reg[28]_28 [6]),
        .I1(\mem_reg[29]_29 [6]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[30]_30 [6]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[31]_31 [6]),
        .O(\A_OBUF[6]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \A_OBUF[7]_inst_i_1 
       (.I0(\A_OBUF[7]_inst_i_2_n_0 ),
        .I1(\A_OBUF[7]_inst_i_3_n_0 ),
        .I2(addr_rs1_OBUF[2]),
        .I3(\A_OBUF[7]_inst_i_4_n_0 ),
        .I4(\A_OBUF[7]_inst_i_5_n_0 ),
        .I5(addr_rs1_OBUF[1]),
        .O(A_OBUF[7]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[7]_inst_i_10 
       (.I0(\mem_reg[8]_8 [7]),
        .I1(\mem_reg[9]_9 [7]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[10]_10 [7]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[11]_11 [7]),
        .O(\A_OBUF[7]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[7]_inst_i_11 
       (.I0(\mem_reg[12]_12 [7]),
        .I1(\mem_reg[13]_13 [7]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[14]_14 [7]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[15]_15 [7]),
        .O(\A_OBUF[7]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[7]_inst_i_12 
       (.I0(\mem_reg[0]_0 [7]),
        .I1(\mem_reg[1]_1 [7]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[2]_2 [7]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[3]_3 [7]),
        .O(\A_OBUF[7]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[7]_inst_i_13 
       (.I0(\mem_reg[4]_4 [7]),
        .I1(\mem_reg[5]_5 [7]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[6]_6 [7]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[7]_7 [7]),
        .O(\A_OBUF[7]_inst_i_13_n_0 ));
  MUXF7 \A_OBUF[7]_inst_i_2 
       (.I0(\A_OBUF[7]_inst_i_6_n_0 ),
        .I1(\A_OBUF[7]_inst_i_7_n_0 ),
        .O(\A_OBUF[7]_inst_i_2_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[7]_inst_i_3 
       (.I0(\A_OBUF[7]_inst_i_8_n_0 ),
        .I1(\A_OBUF[7]_inst_i_9_n_0 ),
        .O(\A_OBUF[7]_inst_i_3_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[7]_inst_i_4 
       (.I0(\A_OBUF[7]_inst_i_10_n_0 ),
        .I1(\A_OBUF[7]_inst_i_11_n_0 ),
        .O(\A_OBUF[7]_inst_i_4_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[7]_inst_i_5 
       (.I0(\A_OBUF[7]_inst_i_12_n_0 ),
        .I1(\A_OBUF[7]_inst_i_13_n_0 ),
        .O(\A_OBUF[7]_inst_i_5_n_0 ),
        .S(addr_rs1_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[7]_inst_i_6 
       (.I0(\mem_reg[24]_24 [7]),
        .I1(\mem_reg[25]_25 [7]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[26]_26 [7]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[27]_27 [7]),
        .O(\A_OBUF[7]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[7]_inst_i_7 
       (.I0(\mem_reg[28]_28 [7]),
        .I1(\mem_reg[29]_29 [7]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[30]_30 [7]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[31]_31 [7]),
        .O(\A_OBUF[7]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[7]_inst_i_8 
       (.I0(\mem_reg[16]_16 [7]),
        .I1(\mem_reg[17]_17 [7]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[18]_18 [7]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[19]_19 [7]),
        .O(\A_OBUF[7]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[7]_inst_i_9 
       (.I0(\mem_reg[20]_20 [7]),
        .I1(\mem_reg[21]_21 [7]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[22]_22 [7]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[23]_23 [7]),
        .O(\A_OBUF[7]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \A_OBUF[8]_inst_i_1 
       (.I0(\A_OBUF[8]_inst_i_2_n_0 ),
        .I1(\A_OBUF[8]_inst_i_3_n_0 ),
        .I2(addr_rs1_OBUF[2]),
        .I3(\A_OBUF[8]_inst_i_4_n_0 ),
        .I4(\A_OBUF[8]_inst_i_5_n_0 ),
        .I5(addr_rs1_OBUF[1]),
        .O(A_OBUF[8]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[8]_inst_i_10 
       (.I0(\mem_reg[8]_8 [8]),
        .I1(\mem_reg[9]_9 [8]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[10]_10 [8]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[11]_11 [8]),
        .O(\A_OBUF[8]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[8]_inst_i_11 
       (.I0(\mem_reg[12]_12 [8]),
        .I1(\mem_reg[13]_13 [8]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[14]_14 [8]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[15]_15 [8]),
        .O(\A_OBUF[8]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[8]_inst_i_12 
       (.I0(\mem_reg[0]_0 [8]),
        .I1(\mem_reg[1]_1 [8]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[2]_2 [8]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[3]_3 [8]),
        .O(\A_OBUF[8]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[8]_inst_i_13 
       (.I0(\mem_reg[4]_4 [8]),
        .I1(\mem_reg[5]_5 [8]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[6]_6 [8]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[7]_7 [8]),
        .O(\A_OBUF[8]_inst_i_13_n_0 ));
  MUXF7 \A_OBUF[8]_inst_i_2 
       (.I0(\A_OBUF[8]_inst_i_6_n_0 ),
        .I1(\A_OBUF[8]_inst_i_7_n_0 ),
        .O(\A_OBUF[8]_inst_i_2_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[8]_inst_i_3 
       (.I0(\A_OBUF[8]_inst_i_8_n_0 ),
        .I1(\A_OBUF[8]_inst_i_9_n_0 ),
        .O(\A_OBUF[8]_inst_i_3_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[8]_inst_i_4 
       (.I0(\A_OBUF[8]_inst_i_10_n_0 ),
        .I1(\A_OBUF[8]_inst_i_11_n_0 ),
        .O(\A_OBUF[8]_inst_i_4_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[8]_inst_i_5 
       (.I0(\A_OBUF[8]_inst_i_12_n_0 ),
        .I1(\A_OBUF[8]_inst_i_13_n_0 ),
        .O(\A_OBUF[8]_inst_i_5_n_0 ),
        .S(addr_rs1_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[8]_inst_i_6 
       (.I0(\mem_reg[24]_24 [8]),
        .I1(\mem_reg[25]_25 [8]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[26]_26 [8]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[27]_27 [8]),
        .O(\A_OBUF[8]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[8]_inst_i_7 
       (.I0(\mem_reg[28]_28 [8]),
        .I1(\mem_reg[29]_29 [8]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[30]_30 [8]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[31]_31 [8]),
        .O(\A_OBUF[8]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[8]_inst_i_8 
       (.I0(\mem_reg[16]_16 [8]),
        .I1(\mem_reg[17]_17 [8]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[18]_18 [8]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[19]_19 [8]),
        .O(\A_OBUF[8]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[8]_inst_i_9 
       (.I0(\mem_reg[20]_20 [8]),
        .I1(\mem_reg[21]_21 [8]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[22]_22 [8]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[23]_23 [8]),
        .O(\A_OBUF[8]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \A_OBUF[9]_inst_i_1 
       (.I0(\A_OBUF[9]_inst_i_2_n_0 ),
        .I1(\A_OBUF[9]_inst_i_3_n_0 ),
        .I2(addr_rs1_OBUF[2]),
        .I3(\A_OBUF[9]_inst_i_4_n_0 ),
        .I4(\A_OBUF[9]_inst_i_5_n_0 ),
        .I5(addr_rs1_OBUF[1]),
        .O(A_OBUF[9]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[9]_inst_i_10 
       (.I0(\mem_reg[8]_8 [9]),
        .I1(\mem_reg[9]_9 [9]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[10]_10 [9]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[11]_11 [9]),
        .O(\A_OBUF[9]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[9]_inst_i_11 
       (.I0(\mem_reg[12]_12 [9]),
        .I1(\mem_reg[13]_13 [9]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[14]_14 [9]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[15]_15 [9]),
        .O(\A_OBUF[9]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[9]_inst_i_12 
       (.I0(\mem_reg[0]_0 [9]),
        .I1(\mem_reg[1]_1 [9]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[2]_2 [9]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[3]_3 [9]),
        .O(\A_OBUF[9]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[9]_inst_i_13 
       (.I0(\mem_reg[4]_4 [9]),
        .I1(\mem_reg[5]_5 [9]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[6]_6 [9]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[7]_7 [9]),
        .O(\A_OBUF[9]_inst_i_13_n_0 ));
  MUXF7 \A_OBUF[9]_inst_i_2 
       (.I0(\A_OBUF[9]_inst_i_6_n_0 ),
        .I1(\A_OBUF[9]_inst_i_7_n_0 ),
        .O(\A_OBUF[9]_inst_i_2_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[9]_inst_i_3 
       (.I0(\A_OBUF[9]_inst_i_8_n_0 ),
        .I1(\A_OBUF[9]_inst_i_9_n_0 ),
        .O(\A_OBUF[9]_inst_i_3_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[9]_inst_i_4 
       (.I0(\A_OBUF[9]_inst_i_10_n_0 ),
        .I1(\A_OBUF[9]_inst_i_11_n_0 ),
        .O(\A_OBUF[9]_inst_i_4_n_0 ),
        .S(addr_rs1_OBUF[0]));
  MUXF7 \A_OBUF[9]_inst_i_5 
       (.I0(\A_OBUF[9]_inst_i_12_n_0 ),
        .I1(\A_OBUF[9]_inst_i_13_n_0 ),
        .O(\A_OBUF[9]_inst_i_5_n_0 ),
        .S(addr_rs1_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[9]_inst_i_6 
       (.I0(\mem_reg[24]_24 [9]),
        .I1(\mem_reg[25]_25 [9]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[26]_26 [9]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[27]_27 [9]),
        .O(\A_OBUF[9]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[9]_inst_i_7 
       (.I0(\mem_reg[28]_28 [9]),
        .I1(\mem_reg[29]_29 [9]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[30]_30 [9]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[31]_31 [9]),
        .O(\A_OBUF[9]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[9]_inst_i_8 
       (.I0(\mem_reg[16]_16 [9]),
        .I1(\mem_reg[17]_17 [9]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[18]_18 [9]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[19]_19 [9]),
        .O(\A_OBUF[9]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \A_OBUF[9]_inst_i_9 
       (.I0(\mem_reg[20]_20 [9]),
        .I1(\mem_reg[21]_21 [9]),
        .I2(\A_OBUF[15]_inst_i_3_0 ),
        .I3(\mem_reg[22]_22 [9]),
        .I4(\A_OBUF[15]_inst_i_3_1 ),
        .I5(\mem_reg[23]_23 [9]),
        .O(\A_OBUF[9]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \B_OBUF[0]_inst_i_1 
       (.I0(\B_OBUF[0]_inst_i_2_n_0 ),
        .I1(\B_OBUF[0]_inst_i_3_n_0 ),
        .I2(\mem_reg[30][7]_1 ),
        .I3(\B_OBUF[0]_inst_i_4_n_0 ),
        .I4(addr_rs2_OBUF[1]),
        .I5(\B_OBUF[0]_inst_i_5_n_0 ),
        .O(B_OBUF[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[0]_inst_i_10 
       (.I0(\mem_reg[24]_24 [0]),
        .I1(\mem_reg[25]_25 [0]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[26]_26 [0]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[27]_27 [0]),
        .O(\B_OBUF[0]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[0]_inst_i_11 
       (.I0(\mem_reg[28]_28 [0]),
        .I1(\mem_reg[29]_29 [0]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[30]_30 [0]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[31]_31 [0]),
        .O(\B_OBUF[0]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[0]_inst_i_12 
       (.I0(\mem_reg[16]_16 [0]),
        .I1(\mem_reg[17]_17 [0]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[18]_18 [0]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[19]_19 [0]),
        .O(\B_OBUF[0]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[0]_inst_i_13 
       (.I0(\mem_reg[20]_20 [0]),
        .I1(\mem_reg[21]_21 [0]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[22]_22 [0]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[23]_23 [0]),
        .O(\B_OBUF[0]_inst_i_13_n_0 ));
  MUXF7 \B_OBUF[0]_inst_i_2 
       (.I0(\B_OBUF[0]_inst_i_6_n_0 ),
        .I1(\B_OBUF[0]_inst_i_7_n_0 ),
        .O(\B_OBUF[0]_inst_i_2_n_0 ),
        .S(addr_rs2_OBUF[0]));
  MUXF7 \B_OBUF[0]_inst_i_3 
       (.I0(\B_OBUF[0]_inst_i_8_n_0 ),
        .I1(\B_OBUF[0]_inst_i_9_n_0 ),
        .O(\B_OBUF[0]_inst_i_3_n_0 ),
        .S(addr_rs2_OBUF[0]));
  MUXF7 \B_OBUF[0]_inst_i_4 
       (.I0(\B_OBUF[0]_inst_i_10_n_0 ),
        .I1(\B_OBUF[0]_inst_i_11_n_0 ),
        .O(\B_OBUF[0]_inst_i_4_n_0 ),
        .S(addr_rs2_OBUF[0]));
  MUXF7 \B_OBUF[0]_inst_i_5 
       (.I0(\B_OBUF[0]_inst_i_12_n_0 ),
        .I1(\B_OBUF[0]_inst_i_13_n_0 ),
        .O(\B_OBUF[0]_inst_i_5_n_0 ),
        .S(addr_rs2_OBUF[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[0]_inst_i_6 
       (.I0(\mem_reg[0]_0 [0]),
        .I1(\mem_reg[1]_1 [0]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[2]_2 [0]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[3]_3 [0]),
        .O(\B_OBUF[0]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[0]_inst_i_7 
       (.I0(\mem_reg[4]_4 [0]),
        .I1(\mem_reg[5]_5 [0]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[6]_6 [0]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[7]_7 [0]),
        .O(\B_OBUF[0]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[0]_inst_i_8 
       (.I0(\mem_reg[8]_8 [0]),
        .I1(\mem_reg[9]_9 [0]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[10]_10 [0]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[11]_11 [0]),
        .O(\B_OBUF[0]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[0]_inst_i_9 
       (.I0(\mem_reg[12]_12 [0]),
        .I1(\mem_reg[13]_13 [0]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[14]_14 [0]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[15]_15 [0]),
        .O(\B_OBUF[0]_inst_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \B_OBUF[10]_inst_i_1 
       (.I0(\B_OBUF[10]_inst_i_2_n_0 ),
        .I1(\mem_reg[30][7]_1 ),
        .I2(\B_OBUF[10]_inst_i_3_n_0 ),
        .O(B_OBUF[10]));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[10]_inst_i_10 
       (.I0(\mem_reg[14]_14 [10]),
        .I1(\mem_reg[15]_15 [10]),
        .I2(\mem_reg[12]_12 [10]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[13]_13 [10]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[10]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[10]_inst_i_11 
       (.I0(\mem_reg[8]_8 [10]),
        .I1(\mem_reg[9]_9 [10]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[10]_10 [10]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[11]_11 [10]),
        .O(\B_OBUF[10]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0AFAFC0CFC0CF)) 
    \B_OBUF[10]_inst_i_2 
       (.I0(\B_OBUF[10]_inst_i_4_n_0 ),
        .I1(\B_OBUF[10]_inst_i_5_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[10]_inst_i_6_n_0 ),
        .I4(\B_OBUF[10]_inst_i_7_n_0 ),
        .I5(addr_rs2_OBUF[0]),
        .O(\B_OBUF[10]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \B_OBUF[10]_inst_i_3 
       (.I0(\B_OBUF[10]_inst_i_8_n_0 ),
        .I1(\B_OBUF[10]_inst_i_9_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[10]_inst_i_10_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[10]_inst_i_11_n_0 ),
        .O(\B_OBUF[10]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[10]_inst_i_4 
       (.I0(\mem_reg[28]_28 [10]),
        .I1(\mem_reg[29]_29 [10]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[30]_30 [10]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[31]_31 [10]),
        .O(\B_OBUF[10]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[10]_inst_i_5 
       (.I0(\mem_reg[24]_24 [10]),
        .I1(\mem_reg[25]_25 [10]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[26]_26 [10]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[27]_27 [10]),
        .O(\B_OBUF[10]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[10]_inst_i_6 
       (.I0(\mem_reg[16]_16 [10]),
        .I1(\mem_reg[17]_17 [10]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[18]_18 [10]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[19]_19 [10]),
        .O(\B_OBUF[10]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[10]_inst_i_7 
       (.I0(\mem_reg[20]_20 [10]),
        .I1(\mem_reg[21]_21 [10]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[22]_22 [10]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[23]_23 [10]),
        .O(\B_OBUF[10]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[10]_inst_i_8 
       (.I0(\mem_reg[4]_4 [10]),
        .I1(\mem_reg[5]_5 [10]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[6]_6 [10]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[7]_7 [10]),
        .O(\B_OBUF[10]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[10]_inst_i_9 
       (.I0(\mem_reg[0]_0 [10]),
        .I1(\mem_reg[1]_1 [10]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[2]_2 [10]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[3]_3 [10]),
        .O(\B_OBUF[10]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h74447477)) 
    \B_OBUF[11]_inst_i_1 
       (.I0(\B_OBUF[11]_inst_i_2_n_0 ),
        .I1(\mem_reg[30][7]_1 ),
        .I2(\B_OBUF[11]_inst_i_3_n_0 ),
        .I3(addr_rs2_OBUF[1]),
        .I4(\B_OBUF[11]_inst_i_4_n_0 ),
        .O(B_OBUF[11]));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[11]_inst_i_10 
       (.I0(\mem_reg[26]_26 [11]),
        .I1(\mem_reg[27]_27 [11]),
        .I2(\mem_reg[24]_24 [11]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[25]_25 [11]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[11]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[11]_inst_i_11 
       (.I0(\mem_reg[20]_20 [11]),
        .I1(\mem_reg[21]_21 [11]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[22]_22 [11]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[23]_23 [11]),
        .O(\B_OBUF[11]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[11]_inst_i_12 
       (.I0(\mem_reg[16]_16 [11]),
        .I1(\mem_reg[17]_17 [11]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[18]_18 [11]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[19]_19 [11]),
        .O(\B_OBUF[11]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \B_OBUF[11]_inst_i_2 
       (.I0(\B_OBUF[11]_inst_i_5_n_0 ),
        .I1(\B_OBUF[11]_inst_i_6_n_0 ),
        .I2(\B_OBUF[11]_inst_i_7_n_0 ),
        .I3(addr_rs2_OBUF[0]),
        .I4(\B_OBUF[11]_inst_i_8_n_0 ),
        .I5(addr_rs2_OBUF[1]),
        .O(\B_OBUF[11]_inst_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \B_OBUF[11]_inst_i_3 
       (.I0(\B_OBUF[11]_inst_i_9_n_0 ),
        .I1(addr_rs2_OBUF[0]),
        .I2(\B_OBUF[11]_inst_i_10_n_0 ),
        .O(\B_OBUF[11]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \B_OBUF[11]_inst_i_4 
       (.I0(\B_OBUF[11]_inst_i_11_n_0 ),
        .I1(\B_OBUF[11]_inst_i_12_n_0 ),
        .I2(addr_rs2_OBUF[0]),
        .O(\B_OBUF[11]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[11]_inst_i_5 
       (.I0(\mem_reg[4]_4 [11]),
        .I1(\mem_reg[5]_5 [11]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[6]_6 [11]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[7]_7 [11]),
        .O(\B_OBUF[11]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[11]_inst_i_6 
       (.I0(\mem_reg[0]_0 [11]),
        .I1(\mem_reg[1]_1 [11]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[2]_2 [11]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[3]_3 [11]),
        .O(\B_OBUF[11]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[11]_inst_i_7 
       (.I0(\mem_reg[12]_12 [11]),
        .I1(\mem_reg[13]_13 [11]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[14]_14 [11]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[15]_15 [11]),
        .O(\B_OBUF[11]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[11]_inst_i_8 
       (.I0(\mem_reg[8]_8 [11]),
        .I1(\mem_reg[9]_9 [11]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[10]_10 [11]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[11]_11 [11]),
        .O(\B_OBUF[11]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[11]_inst_i_9 
       (.I0(\mem_reg[30]_30 [11]),
        .I1(\mem_reg[31]_31 [11]),
        .I2(\mem_reg[28]_28 [11]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[29]_29 [11]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[11]_inst_i_9_n_0 ));
  MUXF7 \B_OBUF[12]_inst_i_1 
       (.I0(\B_OBUF[12]_inst_i_2_n_0 ),
        .I1(\B_OBUF[12]_inst_i_3_n_0 ),
        .O(B_OBUF[12]),
        .S(\mem_reg[30][7]_1 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[12]_inst_i_10 
       (.I0(\mem_reg[14]_14 [12]),
        .I1(\mem_reg[15]_15 [12]),
        .I2(\mem_reg[12]_12 [12]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[13]_13 [12]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[12]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[12]_inst_i_11 
       (.I0(\mem_reg[10]_10 [12]),
        .I1(\mem_reg[11]_11 [12]),
        .I2(\mem_reg[8]_8 [12]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[9]_9 [12]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[12]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[12]_inst_i_2 
       (.I0(\B_OBUF[12]_inst_i_4_n_0 ),
        .I1(\B_OBUF[12]_inst_i_5_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[12]_inst_i_6_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[12]_inst_i_7_n_0 ),
        .O(\B_OBUF[12]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0A0A0CFCFAFA)) 
    \B_OBUF[12]_inst_i_3 
       (.I0(\B_OBUF[12]_inst_i_8_n_0 ),
        .I1(\B_OBUF[12]_inst_i_9_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[12]_inst_i_10_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[12]_inst_i_11_n_0 ),
        .O(\B_OBUF[12]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[12]_inst_i_4 
       (.I0(\mem_reg[30]_30 [12]),
        .I1(\mem_reg[31]_31 [12]),
        .I2(\mem_reg[28]_28 [12]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[29]_29 [12]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[12]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[12]_inst_i_5 
       (.I0(\mem_reg[26]_26 [12]),
        .I1(\mem_reg[27]_27 [12]),
        .I2(\mem_reg[24]_24 [12]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[25]_25 [12]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[12]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[12]_inst_i_6 
       (.I0(\mem_reg[22]_22 [12]),
        .I1(\mem_reg[23]_23 [12]),
        .I2(\mem_reg[20]_20 [12]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[21]_21 [12]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[12]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[12]_inst_i_7 
       (.I0(\mem_reg[18]_18 [12]),
        .I1(\mem_reg[19]_19 [12]),
        .I2(\mem_reg[16]_16 [12]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[17]_17 [12]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[12]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[12]_inst_i_8 
       (.I0(\mem_reg[0]_0 [12]),
        .I1(\mem_reg[1]_1 [12]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[2]_2 [12]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[3]_3 [12]),
        .O(\B_OBUF[12]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[12]_inst_i_9 
       (.I0(\mem_reg[4]_4 [12]),
        .I1(\mem_reg[5]_5 [12]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[6]_6 [12]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[7]_7 [12]),
        .O(\B_OBUF[12]_inst_i_9_n_0 ));
  MUXF7 \B_OBUF[13]_inst_i_1 
       (.I0(\B_OBUF[13]_inst_i_2_n_0 ),
        .I1(\B_OBUF[13]_inst_i_3_n_0 ),
        .O(B_OBUF[13]),
        .S(\mem_reg[30][7]_1 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[13]_inst_i_10 
       (.I0(\mem_reg[12]_12 [13]),
        .I1(\mem_reg[13]_13 [13]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[14]_14 [13]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[15]_15 [13]),
        .O(\B_OBUF[13]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[13]_inst_i_11 
       (.I0(\mem_reg[10]_10 [13]),
        .I1(\mem_reg[11]_11 [13]),
        .I2(\mem_reg[8]_8 [13]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[9]_9 [13]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[13]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[13]_inst_i_2 
       (.I0(\B_OBUF[13]_inst_i_4_n_0 ),
        .I1(\B_OBUF[13]_inst_i_5_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[13]_inst_i_6_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[13]_inst_i_7_n_0 ),
        .O(\B_OBUF[13]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0A0A0CFCFAFA)) 
    \B_OBUF[13]_inst_i_3 
       (.I0(\B_OBUF[13]_inst_i_8_n_0 ),
        .I1(\B_OBUF[13]_inst_i_9_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[13]_inst_i_10_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[13]_inst_i_11_n_0 ),
        .O(\B_OBUF[13]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[13]_inst_i_4 
       (.I0(\mem_reg[30]_30 [13]),
        .I1(\mem_reg[31]_31 [13]),
        .I2(\mem_reg[28]_28 [13]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[29]_29 [13]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[13]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[13]_inst_i_5 
       (.I0(\mem_reg[26]_26 [13]),
        .I1(\mem_reg[27]_27 [13]),
        .I2(\mem_reg[24]_24 [13]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[25]_25 [13]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[13]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[13]_inst_i_6 
       (.I0(\mem_reg[22]_22 [13]),
        .I1(\mem_reg[23]_23 [13]),
        .I2(\mem_reg[20]_20 [13]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[21]_21 [13]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[13]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[13]_inst_i_7 
       (.I0(\mem_reg[18]_18 [13]),
        .I1(\mem_reg[19]_19 [13]),
        .I2(\mem_reg[16]_16 [13]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[17]_17 [13]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[13]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[13]_inst_i_8 
       (.I0(\mem_reg[0]_0 [13]),
        .I1(\mem_reg[1]_1 [13]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[2]_2 [13]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[3]_3 [13]),
        .O(\B_OBUF[13]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[13]_inst_i_9 
       (.I0(\mem_reg[4]_4 [13]),
        .I1(\mem_reg[5]_5 [13]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[6]_6 [13]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[7]_7 [13]),
        .O(\B_OBUF[13]_inst_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \B_OBUF[14]_inst_i_1 
       (.I0(\B_OBUF[14]_inst_i_2_n_0 ),
        .I1(\mem_reg[30][7]_1 ),
        .I2(\B_OBUF[14]_inst_i_3_n_0 ),
        .O(B_OBUF[14]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[14]_inst_i_10 
       (.I0(\mem_reg[12]_12 [14]),
        .I1(\mem_reg[13]_13 [14]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[14]_14 [14]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[15]_15 [14]),
        .O(\B_OBUF[14]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[14]_inst_i_11 
       (.I0(\mem_reg[8]_8 [14]),
        .I1(\mem_reg[9]_9 [14]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[10]_10 [14]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[11]_11 [14]),
        .O(\B_OBUF[14]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0AFAFC0CFC0CF)) 
    \B_OBUF[14]_inst_i_2 
       (.I0(\B_OBUF[14]_inst_i_4_n_0 ),
        .I1(\B_OBUF[14]_inst_i_5_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[14]_inst_i_6_n_0 ),
        .I4(\B_OBUF[14]_inst_i_7_n_0 ),
        .I5(addr_rs2_OBUF[0]),
        .O(\B_OBUF[14]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \B_OBUF[14]_inst_i_3 
       (.I0(\B_OBUF[14]_inst_i_8_n_0 ),
        .I1(\B_OBUF[14]_inst_i_9_n_0 ),
        .I2(\B_OBUF[14]_inst_i_10_n_0 ),
        .I3(addr_rs2_OBUF[0]),
        .I4(\B_OBUF[14]_inst_i_11_n_0 ),
        .I5(addr_rs2_OBUF[1]),
        .O(\B_OBUF[14]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[14]_inst_i_4 
       (.I0(\mem_reg[30]_30 [14]),
        .I1(\mem_reg[31]_31 [14]),
        .I2(\mem_reg[28]_28 [14]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[29]_29 [14]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[14]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[14]_inst_i_5 
       (.I0(\mem_reg[24]_24 [14]),
        .I1(\mem_reg[25]_25 [14]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[26]_26 [14]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[27]_27 [14]),
        .O(\B_OBUF[14]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[14]_inst_i_6 
       (.I0(\mem_reg[16]_16 [14]),
        .I1(\mem_reg[17]_17 [14]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[18]_18 [14]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[19]_19 [14]),
        .O(\B_OBUF[14]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[14]_inst_i_7 
       (.I0(\mem_reg[20]_20 [14]),
        .I1(\mem_reg[21]_21 [14]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[22]_22 [14]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[23]_23 [14]),
        .O(\B_OBUF[14]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[14]_inst_i_8 
       (.I0(\mem_reg[4]_4 [14]),
        .I1(\mem_reg[5]_5 [14]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[6]_6 [14]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[7]_7 [14]),
        .O(\B_OBUF[14]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[14]_inst_i_9 
       (.I0(\mem_reg[0]_0 [14]),
        .I1(\mem_reg[1]_1 [14]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[2]_2 [14]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[3]_3 [14]),
        .O(\B_OBUF[14]_inst_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \B_OBUF[15]_inst_i_1 
       (.I0(\B_OBUF[15]_inst_i_2_n_0 ),
        .I1(\mem_reg[30][7]_1 ),
        .I2(\B_OBUF[15]_inst_i_3_n_0 ),
        .O(B_OBUF[15]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[15]_inst_i_10 
       (.I0(\mem_reg[20]_20 [15]),
        .I1(\mem_reg[21]_21 [15]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[22]_22 [15]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[23]_23 [15]),
        .O(\B_OBUF[15]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[15]_inst_i_11 
       (.I0(\mem_reg[16]_16 [15]),
        .I1(\mem_reg[17]_17 [15]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[18]_18 [15]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[19]_19 [15]),
        .O(\B_OBUF[15]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \B_OBUF[15]_inst_i_2 
       (.I0(\B_OBUF[15]_inst_i_4_n_0 ),
        .I1(\B_OBUF[15]_inst_i_5_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[15]_inst_i_6_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[15]_inst_i_7_n_0 ),
        .O(\B_OBUF[15]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[15]_inst_i_3 
       (.I0(\B_OBUF[15]_inst_i_8_n_0 ),
        .I1(\B_OBUF[15]_inst_i_9_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[15]_inst_i_10_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[15]_inst_i_11_n_0 ),
        .O(\B_OBUF[15]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[15]_inst_i_4 
       (.I0(\mem_reg[4]_4 [15]),
        .I1(\mem_reg[5]_5 [15]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[6]_6 [15]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[7]_7 [15]),
        .O(\B_OBUF[15]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[15]_inst_i_5 
       (.I0(\mem_reg[0]_0 [15]),
        .I1(\mem_reg[1]_1 [15]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[2]_2 [15]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[3]_3 [15]),
        .O(\B_OBUF[15]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[15]_inst_i_6 
       (.I0(\mem_reg[12]_12 [15]),
        .I1(\mem_reg[13]_13 [15]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[14]_14 [15]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[15]_15 [15]),
        .O(\B_OBUF[15]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[15]_inst_i_7 
       (.I0(\mem_reg[8]_8 [15]),
        .I1(\mem_reg[9]_9 [15]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[10]_10 [15]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[11]_11 [15]),
        .O(\B_OBUF[15]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[15]_inst_i_8 
       (.I0(\mem_reg[28]_28 [15]),
        .I1(\mem_reg[29]_29 [15]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[30]_30 [15]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[31]_31 [15]),
        .O(\B_OBUF[15]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[15]_inst_i_9 
       (.I0(\mem_reg[24]_24 [15]),
        .I1(\mem_reg[25]_25 [15]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[26]_26 [15]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[27]_27 [15]),
        .O(\B_OBUF[15]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \B_OBUF[1]_inst_i_1 
       (.I0(\B_OBUF[1]_inst_i_2_n_0 ),
        .I1(\B_OBUF[1]_inst_i_3_n_0 ),
        .I2(\mem_reg[30][7]_1 ),
        .I3(\B_OBUF[1]_inst_i_4_n_0 ),
        .I4(addr_rs2_OBUF[1]),
        .I5(\B_OBUF[1]_inst_i_5_n_0 ),
        .O(B_OBUF[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[1]_inst_i_10 
       (.I0(\mem_reg[24]_24 [1]),
        .I1(\mem_reg[25]_25 [1]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[26]_26 [1]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[27]_27 [1]),
        .O(\B_OBUF[1]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[1]_inst_i_11 
       (.I0(\mem_reg[28]_28 [1]),
        .I1(\mem_reg[29]_29 [1]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[30]_30 [1]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[31]_31 [1]),
        .O(\B_OBUF[1]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[1]_inst_i_12 
       (.I0(\mem_reg[16]_16 [1]),
        .I1(\mem_reg[17]_17 [1]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[18]_18 [1]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[19]_19 [1]),
        .O(\B_OBUF[1]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[1]_inst_i_13 
       (.I0(\mem_reg[20]_20 [1]),
        .I1(\mem_reg[21]_21 [1]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[22]_22 [1]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[23]_23 [1]),
        .O(\B_OBUF[1]_inst_i_13_n_0 ));
  MUXF7 \B_OBUF[1]_inst_i_2 
       (.I0(\B_OBUF[1]_inst_i_6_n_0 ),
        .I1(\B_OBUF[1]_inst_i_7_n_0 ),
        .O(\B_OBUF[1]_inst_i_2_n_0 ),
        .S(addr_rs2_OBUF[0]));
  MUXF7 \B_OBUF[1]_inst_i_3 
       (.I0(\B_OBUF[1]_inst_i_8_n_0 ),
        .I1(\B_OBUF[1]_inst_i_9_n_0 ),
        .O(\B_OBUF[1]_inst_i_3_n_0 ),
        .S(addr_rs2_OBUF[0]));
  MUXF7 \B_OBUF[1]_inst_i_4 
       (.I0(\B_OBUF[1]_inst_i_10_n_0 ),
        .I1(\B_OBUF[1]_inst_i_11_n_0 ),
        .O(\B_OBUF[1]_inst_i_4_n_0 ),
        .S(addr_rs2_OBUF[0]));
  MUXF7 \B_OBUF[1]_inst_i_5 
       (.I0(\B_OBUF[1]_inst_i_12_n_0 ),
        .I1(\B_OBUF[1]_inst_i_13_n_0 ),
        .O(\B_OBUF[1]_inst_i_5_n_0 ),
        .S(addr_rs2_OBUF[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[1]_inst_i_6 
       (.I0(\mem_reg[0]_0 [1]),
        .I1(\mem_reg[1]_1 [1]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[2]_2 [1]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[3]_3 [1]),
        .O(\B_OBUF[1]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[1]_inst_i_7 
       (.I0(\mem_reg[4]_4 [1]),
        .I1(\mem_reg[5]_5 [1]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[6]_6 [1]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[7]_7 [1]),
        .O(\B_OBUF[1]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[1]_inst_i_8 
       (.I0(\mem_reg[8]_8 [1]),
        .I1(\mem_reg[9]_9 [1]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[10]_10 [1]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[11]_11 [1]),
        .O(\B_OBUF[1]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[1]_inst_i_9 
       (.I0(\mem_reg[12]_12 [1]),
        .I1(\mem_reg[13]_13 [1]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[14]_14 [1]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[15]_15 [1]),
        .O(\B_OBUF[1]_inst_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFF00E4E4)) 
    \B_OBUF[2]_inst_i_1 
       (.I0(addr_rs2_OBUF[1]),
        .I1(\B_OBUF[2]_inst_i_2_n_0 ),
        .I2(\B_OBUF[2]_inst_i_3_n_0 ),
        .I3(\B_OBUF[2]_inst_i_4_n_0 ),
        .I4(\mem_reg[30][7]_1 ),
        .O(B_OBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[2]_inst_i_10 
       (.I0(\mem_reg[0]_0 [2]),
        .I1(\mem_reg[1]_1 [2]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[2]_2 [2]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[3]_3 [2]),
        .O(\B_OBUF[2]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[2]_inst_i_11 
       (.I0(\mem_reg[12]_12 [2]),
        .I1(\mem_reg[13]_13 [2]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[14]_14 [2]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[15]_15 [2]),
        .O(\B_OBUF[2]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[2]_inst_i_12 
       (.I0(\mem_reg[8]_8 [2]),
        .I1(\mem_reg[9]_9 [2]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[10]_10 [2]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[11]_11 [2]),
        .O(\B_OBUF[2]_inst_i_12_n_0 ));
  MUXF7 \B_OBUF[2]_inst_i_2 
       (.I0(\B_OBUF[2]_inst_i_5_n_0 ),
        .I1(\B_OBUF[2]_inst_i_6_n_0 ),
        .O(\B_OBUF[2]_inst_i_2_n_0 ),
        .S(addr_rs2_OBUF[0]));
  MUXF7 \B_OBUF[2]_inst_i_3 
       (.I0(\B_OBUF[2]_inst_i_7_n_0 ),
        .I1(\B_OBUF[2]_inst_i_8_n_0 ),
        .O(\B_OBUF[2]_inst_i_3_n_0 ),
        .S(addr_rs2_OBUF[0]));
  LUT6 #(
    .INIT(64'hEE44FAFAEE445050)) 
    \B_OBUF[2]_inst_i_4 
       (.I0(addr_rs2_OBUF[1]),
        .I1(\B_OBUF[2]_inst_i_9_n_0 ),
        .I2(\B_OBUF[2]_inst_i_10_n_0 ),
        .I3(\B_OBUF[2]_inst_i_11_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[2]_inst_i_12_n_0 ),
        .O(\B_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[2]_inst_i_5 
       (.I0(\mem_reg[16]_16 [2]),
        .I1(\mem_reg[17]_17 [2]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[18]_18 [2]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[19]_19 [2]),
        .O(\B_OBUF[2]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[2]_inst_i_6 
       (.I0(\mem_reg[20]_20 [2]),
        .I1(\mem_reg[21]_21 [2]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[22]_22 [2]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[23]_23 [2]),
        .O(\B_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[2]_inst_i_7 
       (.I0(\mem_reg[24]_24 [2]),
        .I1(\mem_reg[25]_25 [2]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[26]_26 [2]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[27]_27 [2]),
        .O(\B_OBUF[2]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[2]_inst_i_8 
       (.I0(\mem_reg[28]_28 [2]),
        .I1(\mem_reg[29]_29 [2]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[30]_30 [2]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[31]_31 [2]),
        .O(\B_OBUF[2]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[2]_inst_i_9 
       (.I0(\mem_reg[4]_4 [2]),
        .I1(\mem_reg[5]_5 [2]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[6]_6 [2]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[7]_7 [2]),
        .O(\B_OBUF[2]_inst_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \B_OBUF[3]_inst_i_1 
       (.I0(\muxout_OBUF[3]_inst_i_2_n_0 ),
        .O(B_OBUF[3]));
  MUXF7 \B_OBUF[4]_inst_i_1 
       (.I0(\B_OBUF[4]_inst_i_2_n_0 ),
        .I1(\B_OBUF[4]_inst_i_3_n_0 ),
        .O(B_OBUF[4]),
        .S(\mem_reg[30][7]_1 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[4]_inst_i_10 
       (.I0(\mem_reg[14]_14 [4]),
        .I1(\mem_reg[15]_15 [4]),
        .I2(\mem_reg[12]_12 [4]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[13]_13 [4]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[4]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[4]_inst_i_11 
       (.I0(\mem_reg[10]_10 [4]),
        .I1(\mem_reg[11]_11 [4]),
        .I2(\mem_reg[8]_8 [4]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[9]_9 [4]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[4]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[4]_inst_i_2 
       (.I0(\B_OBUF[4]_inst_i_4_n_0 ),
        .I1(\B_OBUF[4]_inst_i_5_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[4]_inst_i_6_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[4]_inst_i_7_n_0 ),
        .O(\B_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0A0A0CFCFAFA)) 
    \B_OBUF[4]_inst_i_3 
       (.I0(\B_OBUF[4]_inst_i_8_n_0 ),
        .I1(\B_OBUF[4]_inst_i_9_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[4]_inst_i_10_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[4]_inst_i_11_n_0 ),
        .O(\B_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[4]_inst_i_4 
       (.I0(\mem_reg[30]_30 [4]),
        .I1(\mem_reg[31]_31 [4]),
        .I2(\mem_reg[28]_28 [4]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[29]_29 [4]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[4]_inst_i_5 
       (.I0(\mem_reg[26]_26 [4]),
        .I1(\mem_reg[27]_27 [4]),
        .I2(\mem_reg[24]_24 [4]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[25]_25 [4]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[4]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[4]_inst_i_6 
       (.I0(\mem_reg[22]_22 [4]),
        .I1(\mem_reg[23]_23 [4]),
        .I2(\mem_reg[20]_20 [4]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[21]_21 [4]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[4]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[4]_inst_i_7 
       (.I0(\mem_reg[18]_18 [4]),
        .I1(\mem_reg[19]_19 [4]),
        .I2(\mem_reg[16]_16 [4]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[17]_17 [4]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[4]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[4]_inst_i_8 
       (.I0(\mem_reg[0]_0 [4]),
        .I1(\mem_reg[1]_1 [4]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[2]_2 [4]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[3]_3 [4]),
        .O(\B_OBUF[4]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[4]_inst_i_9 
       (.I0(\mem_reg[4]_4 [4]),
        .I1(\mem_reg[5]_5 [4]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[6]_6 [4]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[7]_7 [4]),
        .O(\B_OBUF[4]_inst_i_9_n_0 ));
  MUXF7 \B_OBUF[5]_inst_i_1 
       (.I0(\B_OBUF[5]_inst_i_2_n_0 ),
        .I1(\B_OBUF[5]_inst_i_3_n_0 ),
        .O(B_OBUF[5]),
        .S(\mem_reg[30][7]_1 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[5]_inst_i_10 
       (.I0(\mem_reg[12]_12 [5]),
        .I1(\mem_reg[13]_13 [5]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[14]_14 [5]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[15]_15 [5]),
        .O(\B_OBUF[5]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[5]_inst_i_11 
       (.I0(\mem_reg[10]_10 [5]),
        .I1(\mem_reg[11]_11 [5]),
        .I2(\mem_reg[8]_8 [5]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[9]_9 [5]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[5]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[5]_inst_i_2 
       (.I0(\B_OBUF[5]_inst_i_4_n_0 ),
        .I1(\B_OBUF[5]_inst_i_5_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[5]_inst_i_6_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[5]_inst_i_7_n_0 ),
        .O(\B_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0A0A0CFCFAFA)) 
    \B_OBUF[5]_inst_i_3 
       (.I0(\B_OBUF[5]_inst_i_8_n_0 ),
        .I1(\B_OBUF[5]_inst_i_9_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[5]_inst_i_10_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[5]_inst_i_11_n_0 ),
        .O(\B_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[5]_inst_i_4 
       (.I0(\mem_reg[30]_30 [5]),
        .I1(\mem_reg[31]_31 [5]),
        .I2(\mem_reg[28]_28 [5]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[29]_29 [5]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[5]_inst_i_5 
       (.I0(\mem_reg[26]_26 [5]),
        .I1(\mem_reg[27]_27 [5]),
        .I2(\mem_reg[24]_24 [5]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[25]_25 [5]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[5]_inst_i_6 
       (.I0(\mem_reg[22]_22 [5]),
        .I1(\mem_reg[23]_23 [5]),
        .I2(\mem_reg[20]_20 [5]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[21]_21 [5]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[5]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[5]_inst_i_7 
       (.I0(\mem_reg[18]_18 [5]),
        .I1(\mem_reg[19]_19 [5]),
        .I2(\mem_reg[16]_16 [5]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[17]_17 [5]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[5]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[5]_inst_i_8 
       (.I0(\mem_reg[0]_0 [5]),
        .I1(\mem_reg[1]_1 [5]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[2]_2 [5]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[3]_3 [5]),
        .O(\B_OBUF[5]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[5]_inst_i_9 
       (.I0(\mem_reg[4]_4 [5]),
        .I1(\mem_reg[5]_5 [5]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[6]_6 [5]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[7]_7 [5]),
        .O(\B_OBUF[5]_inst_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \B_OBUF[6]_inst_i_1 
       (.I0(\current_state_reg[2]_2 ),
        .O(B_OBUF[6]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[6]_inst_i_10 
       (.I0(\mem_reg[0]_0 [6]),
        .I1(\mem_reg[1]_1 [6]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[2]_2 [6]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[3]_3 [6]),
        .O(\B_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[6]_inst_i_11 
       (.I0(\mem_reg[12]_12 [6]),
        .I1(\mem_reg[13]_13 [6]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[14]_14 [6]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[15]_15 [6]),
        .O(\B_OBUF[6]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[6]_inst_i_12 
       (.I0(\mem_reg[8]_8 [6]),
        .I1(\mem_reg[9]_9 [6]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[10]_10 [6]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[11]_11 [6]),
        .O(\B_OBUF[6]_inst_i_12_n_0 ));
  MUXF7 \B_OBUF[6]_inst_i_2 
       (.I0(\B_OBUF[6]_inst_i_3_n_0 ),
        .I1(\B_OBUF[6]_inst_i_4_n_0 ),
        .O(\current_state_reg[2]_2 ),
        .S(\mem_reg[30][7]_1 ));
  LUT6 #(
    .INIT(64'hA0A0AFAFC0CFC0CF)) 
    \B_OBUF[6]_inst_i_3 
       (.I0(\B_OBUF[6]_inst_i_5_n_0 ),
        .I1(\B_OBUF[6]_inst_i_6_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[6]_inst_i_7_n_0 ),
        .I4(\B_OBUF[6]_inst_i_8_n_0 ),
        .I5(addr_rs2_OBUF[0]),
        .O(\B_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \B_OBUF[6]_inst_i_4 
       (.I0(\B_OBUF[6]_inst_i_9_n_0 ),
        .I1(\B_OBUF[6]_inst_i_10_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[6]_inst_i_11_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[6]_inst_i_12_n_0 ),
        .O(\B_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[6]_inst_i_5 
       (.I0(\mem_reg[30]_30 [6]),
        .I1(\mem_reg[31]_31 [6]),
        .I2(\mem_reg[28]_28 [6]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[29]_29 [6]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[6]_inst_i_6 
       (.I0(\mem_reg[24]_24 [6]),
        .I1(\mem_reg[25]_25 [6]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[26]_26 [6]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[27]_27 [6]),
        .O(\B_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[6]_inst_i_7 
       (.I0(\mem_reg[16]_16 [6]),
        .I1(\mem_reg[17]_17 [6]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[18]_18 [6]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[19]_19 [6]),
        .O(\B_OBUF[6]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[6]_inst_i_8 
       (.I0(\mem_reg[20]_20 [6]),
        .I1(\mem_reg[21]_21 [6]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[22]_22 [6]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[23]_23 [6]),
        .O(\B_OBUF[6]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[6]_inst_i_9 
       (.I0(\mem_reg[4]_4 [6]),
        .I1(\mem_reg[5]_5 [6]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[6]_6 [6]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[7]_7 [6]),
        .O(\B_OBUF[6]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF000F0AACCAACC)) 
    \B_OBUF[7]_inst_i_1 
       (.I0(\B_OBUF[7]_inst_i_2_n_0 ),
        .I1(\B_OBUF[7]_inst_i_3_n_0 ),
        .I2(\B_OBUF[7]_inst_i_4_n_0 ),
        .I3(addr_rs2_OBUF[1]),
        .I4(\B_OBUF[7]_inst_i_5_n_0 ),
        .I5(\mem_reg[30][7]_1 ),
        .O(B_OBUF[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[7]_inst_i_10 
       (.I0(\mem_reg[0]_0 [7]),
        .I1(\mem_reg[1]_1 [7]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[2]_2 [7]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[3]_3 [7]),
        .O(\B_OBUF[7]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[7]_inst_i_11 
       (.I0(\mem_reg[4]_4 [7]),
        .I1(\mem_reg[5]_5 [7]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[6]_6 [7]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[7]_7 [7]),
        .O(\B_OBUF[7]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[7]_inst_i_12 
       (.I0(\mem_reg[8]_8 [7]),
        .I1(\mem_reg[9]_9 [7]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[10]_10 [7]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[11]_11 [7]),
        .O(\B_OBUF[7]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[7]_inst_i_13 
       (.I0(\mem_reg[12]_12 [7]),
        .I1(\mem_reg[13]_13 [7]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[14]_14 [7]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[15]_15 [7]),
        .O(\B_OBUF[7]_inst_i_13_n_0 ));
  MUXF7 \B_OBUF[7]_inst_i_2 
       (.I0(\B_OBUF[7]_inst_i_6_n_0 ),
        .I1(\B_OBUF[7]_inst_i_7_n_0 ),
        .O(\B_OBUF[7]_inst_i_2_n_0 ),
        .S(addr_rs2_OBUF[0]));
  MUXF7 \B_OBUF[7]_inst_i_3 
       (.I0(\B_OBUF[7]_inst_i_8_n_0 ),
        .I1(\B_OBUF[7]_inst_i_9_n_0 ),
        .O(\B_OBUF[7]_inst_i_3_n_0 ),
        .S(addr_rs2_OBUF[0]));
  MUXF7 \B_OBUF[7]_inst_i_4 
       (.I0(\B_OBUF[7]_inst_i_10_n_0 ),
        .I1(\B_OBUF[7]_inst_i_11_n_0 ),
        .O(\B_OBUF[7]_inst_i_4_n_0 ),
        .S(addr_rs2_OBUF[0]));
  MUXF7 \B_OBUF[7]_inst_i_5 
       (.I0(\B_OBUF[7]_inst_i_12_n_0 ),
        .I1(\B_OBUF[7]_inst_i_13_n_0 ),
        .O(\B_OBUF[7]_inst_i_5_n_0 ),
        .S(addr_rs2_OBUF[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[7]_inst_i_6 
       (.I0(\mem_reg[24]_24 [7]),
        .I1(\mem_reg[25]_25 [7]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[26]_26 [7]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[27]_27 [7]),
        .O(\B_OBUF[7]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[7]_inst_i_7 
       (.I0(\mem_reg[28]_28 [7]),
        .I1(\mem_reg[29]_29 [7]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[30]_30 [7]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[31]_31 [7]),
        .O(\B_OBUF[7]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[7]_inst_i_8 
       (.I0(\mem_reg[16]_16 [7]),
        .I1(\mem_reg[17]_17 [7]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[18]_18 [7]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[19]_19 [7]),
        .O(\B_OBUF[7]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[7]_inst_i_9 
       (.I0(\mem_reg[20]_20 [7]),
        .I1(\mem_reg[21]_21 [7]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[22]_22 [7]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[23]_23 [7]),
        .O(\B_OBUF[7]_inst_i_9_n_0 ));
  MUXF7 \B_OBUF[8]_inst_i_1 
       (.I0(\B_OBUF[8]_inst_i_2_n_0 ),
        .I1(\B_OBUF[8]_inst_i_3_n_0 ),
        .O(B_OBUF[8]),
        .S(\mem_reg[30][7]_1 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[8]_inst_i_10 
       (.I0(\mem_reg[12]_12 [8]),
        .I1(\mem_reg[13]_13 [8]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[14]_14 [8]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[15]_15 [8]),
        .O(\B_OBUF[8]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[8]_inst_i_11 
       (.I0(\mem_reg[10]_10 [8]),
        .I1(\mem_reg[11]_11 [8]),
        .I2(\mem_reg[8]_8 [8]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[9]_9 [8]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[8]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[8]_inst_i_2 
       (.I0(\B_OBUF[8]_inst_i_4_n_0 ),
        .I1(\B_OBUF[8]_inst_i_5_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[8]_inst_i_6_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[8]_inst_i_7_n_0 ),
        .O(\B_OBUF[8]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0A0A0CFCFAFA)) 
    \B_OBUF[8]_inst_i_3 
       (.I0(\B_OBUF[8]_inst_i_8_n_0 ),
        .I1(\B_OBUF[8]_inst_i_9_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[8]_inst_i_10_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[8]_inst_i_11_n_0 ),
        .O(\B_OBUF[8]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[8]_inst_i_4 
       (.I0(\mem_reg[30]_30 [8]),
        .I1(\mem_reg[31]_31 [8]),
        .I2(\mem_reg[28]_28 [8]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[29]_29 [8]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[8]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[8]_inst_i_5 
       (.I0(\mem_reg[26]_26 [8]),
        .I1(\mem_reg[27]_27 [8]),
        .I2(\mem_reg[24]_24 [8]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[25]_25 [8]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[8]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[8]_inst_i_6 
       (.I0(\mem_reg[22]_22 [8]),
        .I1(\mem_reg[23]_23 [8]),
        .I2(\mem_reg[20]_20 [8]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[21]_21 [8]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[8]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[8]_inst_i_7 
       (.I0(\mem_reg[18]_18 [8]),
        .I1(\mem_reg[19]_19 [8]),
        .I2(\mem_reg[16]_16 [8]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[17]_17 [8]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[8]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[8]_inst_i_8 
       (.I0(\mem_reg[0]_0 [8]),
        .I1(\mem_reg[1]_1 [8]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[2]_2 [8]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[3]_3 [8]),
        .O(\B_OBUF[8]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[8]_inst_i_9 
       (.I0(\mem_reg[4]_4 [8]),
        .I1(\mem_reg[5]_5 [8]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[6]_6 [8]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[7]_7 [8]),
        .O(\B_OBUF[8]_inst_i_9_n_0 ));
  MUXF7 \B_OBUF[9]_inst_i_1 
       (.I0(\B_OBUF[9]_inst_i_2_n_0 ),
        .I1(\B_OBUF[9]_inst_i_3_n_0 ),
        .O(B_OBUF[9]),
        .S(\mem_reg[30][7]_1 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[9]_inst_i_10 
       (.I0(\mem_reg[12]_12 [9]),
        .I1(\mem_reg[13]_13 [9]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[14]_14 [9]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[15]_15 [9]),
        .O(\B_OBUF[9]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[9]_inst_i_11 
       (.I0(\mem_reg[10]_10 [9]),
        .I1(\mem_reg[11]_11 [9]),
        .I2(\mem_reg[8]_8 [9]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[9]_9 [9]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[9]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \B_OBUF[9]_inst_i_2 
       (.I0(\B_OBUF[9]_inst_i_4_n_0 ),
        .I1(\B_OBUF[9]_inst_i_5_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[9]_inst_i_6_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[9]_inst_i_7_n_0 ),
        .O(\B_OBUF[9]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0A0A0CFCFAFA)) 
    \B_OBUF[9]_inst_i_3 
       (.I0(\B_OBUF[9]_inst_i_8_n_0 ),
        .I1(\B_OBUF[9]_inst_i_9_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[9]_inst_i_10_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[9]_inst_i_11_n_0 ),
        .O(\B_OBUF[9]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[9]_inst_i_4 
       (.I0(\mem_reg[30]_30 [9]),
        .I1(\mem_reg[31]_31 [9]),
        .I2(\mem_reg[28]_28 [9]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[29]_29 [9]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[9]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[9]_inst_i_5 
       (.I0(\mem_reg[26]_26 [9]),
        .I1(\mem_reg[27]_27 [9]),
        .I2(\mem_reg[24]_24 [9]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[25]_25 [9]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[9]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[9]_inst_i_6 
       (.I0(\mem_reg[22]_22 [9]),
        .I1(\mem_reg[23]_23 [9]),
        .I2(\mem_reg[20]_20 [9]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[21]_21 [9]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[9]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \B_OBUF[9]_inst_i_7 
       (.I0(\mem_reg[18]_18 [9]),
        .I1(\mem_reg[19]_19 [9]),
        .I2(\mem_reg[16]_16 [9]),
        .I3(\B_OBUF[1]_inst_i_2_1 ),
        .I4(\mem_reg[17]_17 [9]),
        .I5(\B_OBUF[1]_inst_i_2_0 ),
        .O(\B_OBUF[9]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[9]_inst_i_8 
       (.I0(\mem_reg[0]_0 [9]),
        .I1(\mem_reg[1]_1 [9]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[2]_2 [9]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[3]_3 [9]),
        .O(\B_OBUF[9]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \B_OBUF[9]_inst_i_9 
       (.I0(\mem_reg[4]_4 [9]),
        .I1(\mem_reg[5]_5 [9]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[6]_6 [9]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[7]_7 [9]),
        .O(\B_OBUF[9]_inst_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][0] 
       (.C(CLK),
        .CE(E),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[0]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][10] 
       (.C(CLK),
        .CE(E),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[0]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][11] 
       (.C(CLK),
        .CE(E),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[0]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][12] 
       (.C(CLK),
        .CE(E),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[0]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][13] 
       (.C(CLK),
        .CE(E),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[0]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][14] 
       (.C(CLK),
        .CE(E),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[0]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][15] 
       (.C(CLK),
        .CE(E),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[0]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][1] 
       (.C(CLK),
        .CE(E),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[0]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][2] 
       (.C(CLK),
        .CE(E),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[0]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][3] 
       (.C(CLK),
        .CE(E),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[0]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][4] 
       (.C(CLK),
        .CE(E),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[0]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][5] 
       (.C(CLK),
        .CE(E),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[0]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][6] 
       (.C(CLK),
        .CE(E),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[0]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][7] 
       (.C(CLK),
        .CE(E),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[0]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][8] 
       (.C(CLK),
        .CE(E),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[0]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][9] 
       (.C(CLK),
        .CE(E),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[0]_0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][0] 
       (.C(CLK),
        .CE(\mem_reg[10][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[10]_10 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][10] 
       (.C(CLK),
        .CE(\mem_reg[10][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[10]_10 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][11] 
       (.C(CLK),
        .CE(\mem_reg[10][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[10]_10 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][12] 
       (.C(CLK),
        .CE(\mem_reg[10][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[10]_10 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][13] 
       (.C(CLK),
        .CE(\mem_reg[10][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[10]_10 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][14] 
       (.C(CLK),
        .CE(\mem_reg[10][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[10]_10 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][15] 
       (.C(CLK),
        .CE(\mem_reg[10][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[10]_10 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][1] 
       (.C(CLK),
        .CE(\mem_reg[10][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[10]_10 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][2] 
       (.C(CLK),
        .CE(\mem_reg[10][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[10]_10 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][3] 
       (.C(CLK),
        .CE(\mem_reg[10][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[10]_10 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][4] 
       (.C(CLK),
        .CE(\mem_reg[10][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[10]_10 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][5] 
       (.C(CLK),
        .CE(\mem_reg[10][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[10]_10 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][6] 
       (.C(CLK),
        .CE(\mem_reg[10][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[10]_10 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][7] 
       (.C(CLK),
        .CE(\mem_reg[10][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[10]_10 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][8] 
       (.C(CLK),
        .CE(\mem_reg[10][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[10]_10 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][9] 
       (.C(CLK),
        .CE(\mem_reg[10][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[10]_10 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][0] 
       (.C(CLK),
        .CE(\mem_reg[11][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[11]_11 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][10] 
       (.C(CLK),
        .CE(\mem_reg[11][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[11]_11 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][11] 
       (.C(CLK),
        .CE(\mem_reg[11][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[11]_11 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][12] 
       (.C(CLK),
        .CE(\mem_reg[11][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[11]_11 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][13] 
       (.C(CLK),
        .CE(\mem_reg[11][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[11]_11 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][14] 
       (.C(CLK),
        .CE(\mem_reg[11][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[11]_11 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][15] 
       (.C(CLK),
        .CE(\mem_reg[11][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[11]_11 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][1] 
       (.C(CLK),
        .CE(\mem_reg[11][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[11]_11 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][2] 
       (.C(CLK),
        .CE(\mem_reg[11][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[11]_11 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][3] 
       (.C(CLK),
        .CE(\mem_reg[11][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[11]_11 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][4] 
       (.C(CLK),
        .CE(\mem_reg[11][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[11]_11 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][5] 
       (.C(CLK),
        .CE(\mem_reg[11][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[11]_11 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][6] 
       (.C(CLK),
        .CE(\mem_reg[11][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[11]_11 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][7] 
       (.C(CLK),
        .CE(\mem_reg[11][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[11]_11 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][8] 
       (.C(CLK),
        .CE(\mem_reg[11][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[11]_11 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][9] 
       (.C(CLK),
        .CE(\mem_reg[11][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[11]_11 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][0] 
       (.C(CLK),
        .CE(\mem_reg[12][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[12]_12 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][10] 
       (.C(CLK),
        .CE(\mem_reg[12][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[12]_12 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][11] 
       (.C(CLK),
        .CE(\mem_reg[12][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[12]_12 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][12] 
       (.C(CLK),
        .CE(\mem_reg[12][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[12]_12 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][13] 
       (.C(CLK),
        .CE(\mem_reg[12][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[12]_12 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][14] 
       (.C(CLK),
        .CE(\mem_reg[12][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[12]_12 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][15] 
       (.C(CLK),
        .CE(\mem_reg[12][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[12]_12 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][1] 
       (.C(CLK),
        .CE(\mem_reg[12][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[12]_12 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][2] 
       (.C(CLK),
        .CE(\mem_reg[12][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[12]_12 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][3] 
       (.C(CLK),
        .CE(\mem_reg[12][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[12]_12 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][4] 
       (.C(CLK),
        .CE(\mem_reg[12][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[12]_12 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][5] 
       (.C(CLK),
        .CE(\mem_reg[12][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[12]_12 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][6] 
       (.C(CLK),
        .CE(\mem_reg[12][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[12]_12 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][7] 
       (.C(CLK),
        .CE(\mem_reg[12][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[12]_12 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][8] 
       (.C(CLK),
        .CE(\mem_reg[12][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[12]_12 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][9] 
       (.C(CLK),
        .CE(\mem_reg[12][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[12]_12 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][0] 
       (.C(CLK),
        .CE(\mem_reg[13][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[13]_13 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][10] 
       (.C(CLK),
        .CE(\mem_reg[13][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[13]_13 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][11] 
       (.C(CLK),
        .CE(\mem_reg[13][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[13]_13 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][12] 
       (.C(CLK),
        .CE(\mem_reg[13][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[13]_13 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][13] 
       (.C(CLK),
        .CE(\mem_reg[13][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[13]_13 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][14] 
       (.C(CLK),
        .CE(\mem_reg[13][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[13]_13 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][15] 
       (.C(CLK),
        .CE(\mem_reg[13][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[13]_13 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][1] 
       (.C(CLK),
        .CE(\mem_reg[13][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[13]_13 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][2] 
       (.C(CLK),
        .CE(\mem_reg[13][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[13]_13 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][3] 
       (.C(CLK),
        .CE(\mem_reg[13][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[13]_13 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][4] 
       (.C(CLK),
        .CE(\mem_reg[13][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[13]_13 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][5] 
       (.C(CLK),
        .CE(\mem_reg[13][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[13]_13 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][6] 
       (.C(CLK),
        .CE(\mem_reg[13][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[13]_13 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][7] 
       (.C(CLK),
        .CE(\mem_reg[13][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[13]_13 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][8] 
       (.C(CLK),
        .CE(\mem_reg[13][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[13]_13 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][9] 
       (.C(CLK),
        .CE(\mem_reg[13][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[13]_13 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][0] 
       (.C(CLK),
        .CE(\mem_reg[14][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[14]_14 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][10] 
       (.C(CLK),
        .CE(\mem_reg[14][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[14]_14 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][11] 
       (.C(CLK),
        .CE(\mem_reg[14][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[14]_14 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][12] 
       (.C(CLK),
        .CE(\mem_reg[14][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[14]_14 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][13] 
       (.C(CLK),
        .CE(\mem_reg[14][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[14]_14 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][14] 
       (.C(CLK),
        .CE(\mem_reg[14][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[14]_14 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][15] 
       (.C(CLK),
        .CE(\mem_reg[14][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[14]_14 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][1] 
       (.C(CLK),
        .CE(\mem_reg[14][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[14]_14 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][2] 
       (.C(CLK),
        .CE(\mem_reg[14][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[14]_14 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][3] 
       (.C(CLK),
        .CE(\mem_reg[14][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[14]_14 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][4] 
       (.C(CLK),
        .CE(\mem_reg[14][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[14]_14 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][5] 
       (.C(CLK),
        .CE(\mem_reg[14][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[14]_14 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][6] 
       (.C(CLK),
        .CE(\mem_reg[14][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[14]_14 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][7] 
       (.C(CLK),
        .CE(\mem_reg[14][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[14]_14 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][8] 
       (.C(CLK),
        .CE(\mem_reg[14][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[14]_14 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][9] 
       (.C(CLK),
        .CE(\mem_reg[14][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[14]_14 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][0] 
       (.C(CLK),
        .CE(\mem_reg[15][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[15]_15 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][10] 
       (.C(CLK),
        .CE(\mem_reg[15][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[15]_15 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][11] 
       (.C(CLK),
        .CE(\mem_reg[15][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[15]_15 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][12] 
       (.C(CLK),
        .CE(\mem_reg[15][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[15]_15 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][13] 
       (.C(CLK),
        .CE(\mem_reg[15][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[15]_15 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][14] 
       (.C(CLK),
        .CE(\mem_reg[15][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[15]_15 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][15] 
       (.C(CLK),
        .CE(\mem_reg[15][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[15]_15 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][1] 
       (.C(CLK),
        .CE(\mem_reg[15][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[15]_15 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][2] 
       (.C(CLK),
        .CE(\mem_reg[15][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[15]_15 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][3] 
       (.C(CLK),
        .CE(\mem_reg[15][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[15]_15 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][4] 
       (.C(CLK),
        .CE(\mem_reg[15][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[15]_15 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][5] 
       (.C(CLK),
        .CE(\mem_reg[15][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[15]_15 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][6] 
       (.C(CLK),
        .CE(\mem_reg[15][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[15]_15 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][7] 
       (.C(CLK),
        .CE(\mem_reg[15][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[15]_15 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][8] 
       (.C(CLK),
        .CE(\mem_reg[15][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[15]_15 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][9] 
       (.C(CLK),
        .CE(\mem_reg[15][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[15]_15 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[16][0] 
       (.C(CLK),
        .CE(\mem_reg[16][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[16]_16 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[16][10] 
       (.C(CLK),
        .CE(\mem_reg[16][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[16]_16 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[16][11] 
       (.C(CLK),
        .CE(\mem_reg[16][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[16]_16 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[16][12] 
       (.C(CLK),
        .CE(\mem_reg[16][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[16]_16 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[16][13] 
       (.C(CLK),
        .CE(\mem_reg[16][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[16]_16 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[16][14] 
       (.C(CLK),
        .CE(\mem_reg[16][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[16]_16 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[16][15] 
       (.C(CLK),
        .CE(\mem_reg[16][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[16]_16 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[16][1] 
       (.C(CLK),
        .CE(\mem_reg[16][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[16]_16 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[16][2] 
       (.C(CLK),
        .CE(\mem_reg[16][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[16]_16 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[16][3] 
       (.C(CLK),
        .CE(\mem_reg[16][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[16]_16 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[16][4] 
       (.C(CLK),
        .CE(\mem_reg[16][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[16]_16 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[16][5] 
       (.C(CLK),
        .CE(\mem_reg[16][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[16]_16 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[16][6] 
       (.C(CLK),
        .CE(\mem_reg[16][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[16]_16 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[16][7] 
       (.C(CLK),
        .CE(\mem_reg[16][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[16]_16 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[16][8] 
       (.C(CLK),
        .CE(\mem_reg[16][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[16]_16 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[16][9] 
       (.C(CLK),
        .CE(\mem_reg[16][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[16]_16 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[17][0] 
       (.C(CLK),
        .CE(\mem_reg[17][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[17]_17 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[17][10] 
       (.C(CLK),
        .CE(\mem_reg[17][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[17]_17 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[17][11] 
       (.C(CLK),
        .CE(\mem_reg[17][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[17]_17 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[17][12] 
       (.C(CLK),
        .CE(\mem_reg[17][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[17]_17 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[17][13] 
       (.C(CLK),
        .CE(\mem_reg[17][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[17]_17 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[17][14] 
       (.C(CLK),
        .CE(\mem_reg[17][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[17]_17 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[17][15] 
       (.C(CLK),
        .CE(\mem_reg[17][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[17]_17 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[17][1] 
       (.C(CLK),
        .CE(\mem_reg[17][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[17]_17 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[17][2] 
       (.C(CLK),
        .CE(\mem_reg[17][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[17]_17 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[17][3] 
       (.C(CLK),
        .CE(\mem_reg[17][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[17]_17 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[17][4] 
       (.C(CLK),
        .CE(\mem_reg[17][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[17]_17 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[17][5] 
       (.C(CLK),
        .CE(\mem_reg[17][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[17]_17 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[17][6] 
       (.C(CLK),
        .CE(\mem_reg[17][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[17]_17 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[17][7] 
       (.C(CLK),
        .CE(\mem_reg[17][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[17]_17 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[17][8] 
       (.C(CLK),
        .CE(\mem_reg[17][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[17]_17 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[17][9] 
       (.C(CLK),
        .CE(\mem_reg[17][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[17]_17 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[18][0] 
       (.C(CLK),
        .CE(\mem_reg[18][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[18]_18 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[18][10] 
       (.C(CLK),
        .CE(\mem_reg[18][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[18]_18 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[18][11] 
       (.C(CLK),
        .CE(\mem_reg[18][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[18]_18 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[18][12] 
       (.C(CLK),
        .CE(\mem_reg[18][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[18]_18 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[18][13] 
       (.C(CLK),
        .CE(\mem_reg[18][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[18]_18 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[18][14] 
       (.C(CLK),
        .CE(\mem_reg[18][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[18]_18 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[18][15] 
       (.C(CLK),
        .CE(\mem_reg[18][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[18]_18 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[18][1] 
       (.C(CLK),
        .CE(\mem_reg[18][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[18]_18 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[18][2] 
       (.C(CLK),
        .CE(\mem_reg[18][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[18]_18 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[18][3] 
       (.C(CLK),
        .CE(\mem_reg[18][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[18]_18 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[18][4] 
       (.C(CLK),
        .CE(\mem_reg[18][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[18]_18 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[18][5] 
       (.C(CLK),
        .CE(\mem_reg[18][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[18]_18 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[18][6] 
       (.C(CLK),
        .CE(\mem_reg[18][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[18]_18 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[18][7] 
       (.C(CLK),
        .CE(\mem_reg[18][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[18]_18 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[18][8] 
       (.C(CLK),
        .CE(\mem_reg[18][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[18]_18 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[18][9] 
       (.C(CLK),
        .CE(\mem_reg[18][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[18]_18 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[19][0] 
       (.C(CLK),
        .CE(\mem_reg[19][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[19]_19 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[19][10] 
       (.C(CLK),
        .CE(\mem_reg[19][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[19]_19 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[19][11] 
       (.C(CLK),
        .CE(\mem_reg[19][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[19]_19 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[19][12] 
       (.C(CLK),
        .CE(\mem_reg[19][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[19]_19 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[19][13] 
       (.C(CLK),
        .CE(\mem_reg[19][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[19]_19 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[19][14] 
       (.C(CLK),
        .CE(\mem_reg[19][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[19]_19 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[19][15] 
       (.C(CLK),
        .CE(\mem_reg[19][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[19]_19 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[19][1] 
       (.C(CLK),
        .CE(\mem_reg[19][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[19]_19 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[19][2] 
       (.C(CLK),
        .CE(\mem_reg[19][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[19]_19 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[19][3] 
       (.C(CLK),
        .CE(\mem_reg[19][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[19]_19 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[19][4] 
       (.C(CLK),
        .CE(\mem_reg[19][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[19]_19 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[19][5] 
       (.C(CLK),
        .CE(\mem_reg[19][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[19]_19 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[19][6] 
       (.C(CLK),
        .CE(\mem_reg[19][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[19]_19 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[19][7] 
       (.C(CLK),
        .CE(\mem_reg[19][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[19]_19 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[19][8] 
       (.C(CLK),
        .CE(\mem_reg[19][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[19]_19 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[19][9] 
       (.C(CLK),
        .CE(\mem_reg[19][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[19]_19 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][0] 
       (.C(CLK),
        .CE(\mem_reg[1][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[1]_1 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][10] 
       (.C(CLK),
        .CE(\mem_reg[1][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[1]_1 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][11] 
       (.C(CLK),
        .CE(\mem_reg[1][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[1]_1 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][12] 
       (.C(CLK),
        .CE(\mem_reg[1][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[1]_1 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][13] 
       (.C(CLK),
        .CE(\mem_reg[1][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[1]_1 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][14] 
       (.C(CLK),
        .CE(\mem_reg[1][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[1]_1 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][15] 
       (.C(CLK),
        .CE(\mem_reg[1][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[1]_1 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][1] 
       (.C(CLK),
        .CE(\mem_reg[1][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[1]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][2] 
       (.C(CLK),
        .CE(\mem_reg[1][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[1]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][3] 
       (.C(CLK),
        .CE(\mem_reg[1][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[1]_1 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][4] 
       (.C(CLK),
        .CE(\mem_reg[1][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[1]_1 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][5] 
       (.C(CLK),
        .CE(\mem_reg[1][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[1]_1 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][6] 
       (.C(CLK),
        .CE(\mem_reg[1][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[1]_1 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][7] 
       (.C(CLK),
        .CE(\mem_reg[1][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[1]_1 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][8] 
       (.C(CLK),
        .CE(\mem_reg[1][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[1]_1 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][9] 
       (.C(CLK),
        .CE(\mem_reg[1][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[1]_1 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[20][0] 
       (.C(CLK),
        .CE(\mem_reg[20][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[20]_20 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[20][10] 
       (.C(CLK),
        .CE(\mem_reg[20][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[20]_20 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[20][11] 
       (.C(CLK),
        .CE(\mem_reg[20][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[20]_20 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[20][12] 
       (.C(CLK),
        .CE(\mem_reg[20][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[20]_20 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[20][13] 
       (.C(CLK),
        .CE(\mem_reg[20][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[20]_20 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[20][14] 
       (.C(CLK),
        .CE(\mem_reg[20][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[20]_20 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[20][15] 
       (.C(CLK),
        .CE(\mem_reg[20][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[20]_20 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[20][1] 
       (.C(CLK),
        .CE(\mem_reg[20][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[20]_20 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[20][2] 
       (.C(CLK),
        .CE(\mem_reg[20][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[20]_20 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[20][3] 
       (.C(CLK),
        .CE(\mem_reg[20][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[20]_20 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[20][4] 
       (.C(CLK),
        .CE(\mem_reg[20][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[20]_20 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[20][5] 
       (.C(CLK),
        .CE(\mem_reg[20][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[20]_20 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[20][6] 
       (.C(CLK),
        .CE(\mem_reg[20][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[20]_20 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[20][7] 
       (.C(CLK),
        .CE(\mem_reg[20][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[20]_20 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[20][8] 
       (.C(CLK),
        .CE(\mem_reg[20][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[20]_20 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[20][9] 
       (.C(CLK),
        .CE(\mem_reg[20][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[20]_20 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[21][0] 
       (.C(CLK),
        .CE(\mem_reg[21][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[21]_21 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[21][10] 
       (.C(CLK),
        .CE(\mem_reg[21][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[21]_21 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[21][11] 
       (.C(CLK),
        .CE(\mem_reg[21][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[21]_21 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[21][12] 
       (.C(CLK),
        .CE(\mem_reg[21][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[21]_21 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[21][13] 
       (.C(CLK),
        .CE(\mem_reg[21][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[21]_21 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[21][14] 
       (.C(CLK),
        .CE(\mem_reg[21][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[21]_21 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[21][15] 
       (.C(CLK),
        .CE(\mem_reg[21][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[21]_21 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[21][1] 
       (.C(CLK),
        .CE(\mem_reg[21][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[21]_21 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[21][2] 
       (.C(CLK),
        .CE(\mem_reg[21][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[21]_21 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[21][3] 
       (.C(CLK),
        .CE(\mem_reg[21][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[21]_21 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[21][4] 
       (.C(CLK),
        .CE(\mem_reg[21][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[21]_21 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[21][5] 
       (.C(CLK),
        .CE(\mem_reg[21][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[21]_21 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[21][6] 
       (.C(CLK),
        .CE(\mem_reg[21][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[21]_21 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[21][7] 
       (.C(CLK),
        .CE(\mem_reg[21][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[21]_21 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[21][8] 
       (.C(CLK),
        .CE(\mem_reg[21][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[21]_21 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[21][9] 
       (.C(CLK),
        .CE(\mem_reg[21][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[21]_21 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[22][0] 
       (.C(CLK),
        .CE(\mem_reg[22][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[22]_22 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[22][10] 
       (.C(CLK),
        .CE(\mem_reg[22][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[22]_22 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[22][11] 
       (.C(CLK),
        .CE(\mem_reg[22][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[22]_22 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[22][12] 
       (.C(CLK),
        .CE(\mem_reg[22][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[22]_22 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[22][13] 
       (.C(CLK),
        .CE(\mem_reg[22][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[22]_22 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[22][14] 
       (.C(CLK),
        .CE(\mem_reg[22][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[22]_22 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[22][15] 
       (.C(CLK),
        .CE(\mem_reg[22][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[22]_22 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[22][1] 
       (.C(CLK),
        .CE(\mem_reg[22][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[22]_22 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[22][2] 
       (.C(CLK),
        .CE(\mem_reg[22][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[22]_22 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[22][3] 
       (.C(CLK),
        .CE(\mem_reg[22][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[22]_22 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[22][4] 
       (.C(CLK),
        .CE(\mem_reg[22][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[22]_22 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[22][5] 
       (.C(CLK),
        .CE(\mem_reg[22][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[22]_22 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[22][6] 
       (.C(CLK),
        .CE(\mem_reg[22][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[22]_22 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[22][7] 
       (.C(CLK),
        .CE(\mem_reg[22][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[22]_22 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[22][8] 
       (.C(CLK),
        .CE(\mem_reg[22][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[22]_22 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[22][9] 
       (.C(CLK),
        .CE(\mem_reg[22][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[22]_22 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[23][0] 
       (.C(CLK),
        .CE(\mem_reg[23][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[23]_23 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[23][10] 
       (.C(CLK),
        .CE(\mem_reg[23][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[23]_23 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[23][11] 
       (.C(CLK),
        .CE(\mem_reg[23][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[23]_23 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[23][12] 
       (.C(CLK),
        .CE(\mem_reg[23][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[23]_23 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[23][13] 
       (.C(CLK),
        .CE(\mem_reg[23][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[23]_23 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[23][14] 
       (.C(CLK),
        .CE(\mem_reg[23][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[23]_23 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[23][15] 
       (.C(CLK),
        .CE(\mem_reg[23][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[23]_23 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[23][1] 
       (.C(CLK),
        .CE(\mem_reg[23][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[23]_23 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[23][2] 
       (.C(CLK),
        .CE(\mem_reg[23][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[23]_23 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[23][3] 
       (.C(CLK),
        .CE(\mem_reg[23][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[23]_23 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[23][4] 
       (.C(CLK),
        .CE(\mem_reg[23][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[23]_23 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[23][5] 
       (.C(CLK),
        .CE(\mem_reg[23][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[23]_23 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[23][6] 
       (.C(CLK),
        .CE(\mem_reg[23][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[23]_23 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[23][7] 
       (.C(CLK),
        .CE(\mem_reg[23][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[23]_23 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[23][8] 
       (.C(CLK),
        .CE(\mem_reg[23][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[23]_23 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[23][9] 
       (.C(CLK),
        .CE(\mem_reg[23][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[23]_23 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[24][0] 
       (.C(CLK),
        .CE(\mem_reg[24][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[24]_24 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[24][10] 
       (.C(CLK),
        .CE(\mem_reg[24][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[24]_24 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[24][11] 
       (.C(CLK),
        .CE(\mem_reg[24][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[24]_24 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[24][12] 
       (.C(CLK),
        .CE(\mem_reg[24][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[24]_24 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[24][13] 
       (.C(CLK),
        .CE(\mem_reg[24][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[24]_24 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[24][14] 
       (.C(CLK),
        .CE(\mem_reg[24][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[24]_24 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[24][15] 
       (.C(CLK),
        .CE(\mem_reg[24][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[24]_24 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[24][1] 
       (.C(CLK),
        .CE(\mem_reg[24][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[24]_24 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[24][2] 
       (.C(CLK),
        .CE(\mem_reg[24][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[24]_24 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[24][3] 
       (.C(CLK),
        .CE(\mem_reg[24][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[24]_24 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[24][4] 
       (.C(CLK),
        .CE(\mem_reg[24][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[24]_24 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[24][5] 
       (.C(CLK),
        .CE(\mem_reg[24][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[24]_24 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[24][6] 
       (.C(CLK),
        .CE(\mem_reg[24][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[24]_24 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[24][7] 
       (.C(CLK),
        .CE(\mem_reg[24][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[24]_24 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[24][8] 
       (.C(CLK),
        .CE(\mem_reg[24][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[24]_24 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[24][9] 
       (.C(CLK),
        .CE(\mem_reg[24][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[24]_24 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[25][0] 
       (.C(CLK),
        .CE(\mem_reg[25][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[25]_25 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[25][10] 
       (.C(CLK),
        .CE(\mem_reg[25][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[25]_25 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[25][11] 
       (.C(CLK),
        .CE(\mem_reg[25][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[25]_25 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[25][12] 
       (.C(CLK),
        .CE(\mem_reg[25][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[25]_25 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[25][13] 
       (.C(CLK),
        .CE(\mem_reg[25][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[25]_25 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[25][14] 
       (.C(CLK),
        .CE(\mem_reg[25][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[25]_25 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[25][15] 
       (.C(CLK),
        .CE(\mem_reg[25][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[25]_25 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[25][1] 
       (.C(CLK),
        .CE(\mem_reg[25][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[25]_25 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[25][2] 
       (.C(CLK),
        .CE(\mem_reg[25][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[25]_25 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[25][3] 
       (.C(CLK),
        .CE(\mem_reg[25][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[25]_25 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[25][4] 
       (.C(CLK),
        .CE(\mem_reg[25][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[25]_25 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[25][5] 
       (.C(CLK),
        .CE(\mem_reg[25][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[25]_25 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[25][6] 
       (.C(CLK),
        .CE(\mem_reg[25][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[25]_25 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[25][7] 
       (.C(CLK),
        .CE(\mem_reg[25][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[25]_25 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[25][8] 
       (.C(CLK),
        .CE(\mem_reg[25][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[25]_25 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[25][9] 
       (.C(CLK),
        .CE(\mem_reg[25][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[25]_25 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[26][0] 
       (.C(CLK),
        .CE(\mem_reg[26][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[26]_26 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[26][10] 
       (.C(CLK),
        .CE(\mem_reg[26][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[26]_26 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[26][11] 
       (.C(CLK),
        .CE(\mem_reg[26][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[26]_26 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[26][12] 
       (.C(CLK),
        .CE(\mem_reg[26][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[26]_26 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[26][13] 
       (.C(CLK),
        .CE(\mem_reg[26][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[26]_26 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[26][14] 
       (.C(CLK),
        .CE(\mem_reg[26][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[26]_26 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[26][15] 
       (.C(CLK),
        .CE(\mem_reg[26][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[26]_26 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[26][1] 
       (.C(CLK),
        .CE(\mem_reg[26][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[26]_26 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[26][2] 
       (.C(CLK),
        .CE(\mem_reg[26][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[26]_26 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[26][3] 
       (.C(CLK),
        .CE(\mem_reg[26][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[26]_26 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[26][4] 
       (.C(CLK),
        .CE(\mem_reg[26][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[26]_26 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[26][5] 
       (.C(CLK),
        .CE(\mem_reg[26][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[26]_26 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[26][6] 
       (.C(CLK),
        .CE(\mem_reg[26][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[26]_26 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[26][7] 
       (.C(CLK),
        .CE(\mem_reg[26][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[26]_26 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[26][8] 
       (.C(CLK),
        .CE(\mem_reg[26][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[26]_26 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[26][9] 
       (.C(CLK),
        .CE(\mem_reg[26][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[26]_26 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[27][0] 
       (.C(CLK),
        .CE(\mem_reg[27][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[27]_27 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[27][10] 
       (.C(CLK),
        .CE(\mem_reg[27][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[27]_27 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[27][11] 
       (.C(CLK),
        .CE(\mem_reg[27][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[27]_27 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[27][12] 
       (.C(CLK),
        .CE(\mem_reg[27][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[27]_27 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[27][13] 
       (.C(CLK),
        .CE(\mem_reg[27][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[27]_27 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[27][14] 
       (.C(CLK),
        .CE(\mem_reg[27][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[27]_27 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[27][15] 
       (.C(CLK),
        .CE(\mem_reg[27][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[27]_27 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[27][1] 
       (.C(CLK),
        .CE(\mem_reg[27][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[27]_27 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[27][2] 
       (.C(CLK),
        .CE(\mem_reg[27][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[27]_27 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[27][3] 
       (.C(CLK),
        .CE(\mem_reg[27][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[27]_27 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[27][4] 
       (.C(CLK),
        .CE(\mem_reg[27][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[27]_27 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[27][5] 
       (.C(CLK),
        .CE(\mem_reg[27][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[27]_27 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[27][6] 
       (.C(CLK),
        .CE(\mem_reg[27][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[27]_27 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[27][7] 
       (.C(CLK),
        .CE(\mem_reg[27][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[27]_27 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[27][8] 
       (.C(CLK),
        .CE(\mem_reg[27][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[27]_27 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[27][9] 
       (.C(CLK),
        .CE(\mem_reg[27][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[27]_27 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[28][0] 
       (.C(CLK),
        .CE(\mem_reg[28][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[28]_28 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[28][10] 
       (.C(CLK),
        .CE(\mem_reg[28][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[28]_28 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[28][11] 
       (.C(CLK),
        .CE(\mem_reg[28][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[28]_28 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[28][12] 
       (.C(CLK),
        .CE(\mem_reg[28][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[28]_28 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[28][13] 
       (.C(CLK),
        .CE(\mem_reg[28][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[28]_28 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[28][14] 
       (.C(CLK),
        .CE(\mem_reg[28][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[28]_28 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[28][15] 
       (.C(CLK),
        .CE(\mem_reg[28][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[28]_28 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[28][1] 
       (.C(CLK),
        .CE(\mem_reg[28][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[28]_28 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[28][2] 
       (.C(CLK),
        .CE(\mem_reg[28][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[28]_28 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[28][3] 
       (.C(CLK),
        .CE(\mem_reg[28][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[28]_28 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[28][4] 
       (.C(CLK),
        .CE(\mem_reg[28][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[28]_28 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[28][5] 
       (.C(CLK),
        .CE(\mem_reg[28][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[28]_28 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[28][6] 
       (.C(CLK),
        .CE(\mem_reg[28][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[28]_28 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[28][7] 
       (.C(CLK),
        .CE(\mem_reg[28][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[28]_28 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[28][8] 
       (.C(CLK),
        .CE(\mem_reg[28][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[28]_28 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[28][9] 
       (.C(CLK),
        .CE(\mem_reg[28][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[28]_28 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[29][0] 
       (.C(CLK),
        .CE(\mem_reg[29][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[29]_29 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[29][10] 
       (.C(CLK),
        .CE(\mem_reg[29][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[29]_29 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[29][11] 
       (.C(CLK),
        .CE(\mem_reg[29][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[29]_29 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[29][12] 
       (.C(CLK),
        .CE(\mem_reg[29][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[29]_29 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[29][13] 
       (.C(CLK),
        .CE(\mem_reg[29][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[29]_29 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[29][14] 
       (.C(CLK),
        .CE(\mem_reg[29][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[29]_29 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[29][15] 
       (.C(CLK),
        .CE(\mem_reg[29][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[29]_29 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[29][1] 
       (.C(CLK),
        .CE(\mem_reg[29][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[29]_29 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[29][2] 
       (.C(CLK),
        .CE(\mem_reg[29][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[29]_29 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[29][3] 
       (.C(CLK),
        .CE(\mem_reg[29][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[29]_29 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[29][4] 
       (.C(CLK),
        .CE(\mem_reg[29][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[29]_29 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[29][5] 
       (.C(CLK),
        .CE(\mem_reg[29][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[29]_29 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[29][6] 
       (.C(CLK),
        .CE(\mem_reg[29][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[29]_29 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[29][7] 
       (.C(CLK),
        .CE(\mem_reg[29][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[29]_29 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[29][8] 
       (.C(CLK),
        .CE(\mem_reg[29][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[29]_29 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[29][9] 
       (.C(CLK),
        .CE(\mem_reg[29][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[29]_29 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][0] 
       (.C(CLK),
        .CE(\mem_reg[2][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[2]_2 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][10] 
       (.C(CLK),
        .CE(\mem_reg[2][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[2]_2 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][11] 
       (.C(CLK),
        .CE(\mem_reg[2][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[2]_2 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][12] 
       (.C(CLK),
        .CE(\mem_reg[2][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[2]_2 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][13] 
       (.C(CLK),
        .CE(\mem_reg[2][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[2]_2 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][14] 
       (.C(CLK),
        .CE(\mem_reg[2][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[2]_2 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][15] 
       (.C(CLK),
        .CE(\mem_reg[2][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[2]_2 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][1] 
       (.C(CLK),
        .CE(\mem_reg[2][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[2]_2 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][2] 
       (.C(CLK),
        .CE(\mem_reg[2][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[2]_2 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][3] 
       (.C(CLK),
        .CE(\mem_reg[2][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[2]_2 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][4] 
       (.C(CLK),
        .CE(\mem_reg[2][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[2]_2 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][5] 
       (.C(CLK),
        .CE(\mem_reg[2][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[2]_2 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][6] 
       (.C(CLK),
        .CE(\mem_reg[2][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[2]_2 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][7] 
       (.C(CLK),
        .CE(\mem_reg[2][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[2]_2 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][8] 
       (.C(CLK),
        .CE(\mem_reg[2][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[2]_2 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][9] 
       (.C(CLK),
        .CE(\mem_reg[2][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[2]_2 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[30][0] 
       (.C(CLK),
        .CE(\mem_reg[30][15]_1 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[30]_30 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[30][10] 
       (.C(CLK),
        .CE(\mem_reg[30][15]_1 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[30]_30 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[30][11] 
       (.C(CLK),
        .CE(\mem_reg[30][15]_1 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[30]_30 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[30][12] 
       (.C(CLK),
        .CE(\mem_reg[30][15]_1 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[30]_30 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[30][13] 
       (.C(CLK),
        .CE(\mem_reg[30][15]_1 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[30]_30 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[30][14] 
       (.C(CLK),
        .CE(\mem_reg[30][15]_1 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[30]_30 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[30][15] 
       (.C(CLK),
        .CE(\mem_reg[30][15]_1 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[30]_30 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[30][1] 
       (.C(CLK),
        .CE(\mem_reg[30][15]_1 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[30]_30 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[30][2] 
       (.C(CLK),
        .CE(\mem_reg[30][15]_1 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[30]_30 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[30][3] 
       (.C(CLK),
        .CE(\mem_reg[30][15]_1 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[30]_30 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[30][4] 
       (.C(CLK),
        .CE(\mem_reg[30][15]_1 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[30]_30 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[30][5] 
       (.C(CLK),
        .CE(\mem_reg[30][15]_1 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[30]_30 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[30][6] 
       (.C(CLK),
        .CE(\mem_reg[30][15]_1 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[30]_30 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[30][7] 
       (.C(CLK),
        .CE(\mem_reg[30][15]_1 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[30]_30 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[30][8] 
       (.C(CLK),
        .CE(\mem_reg[30][15]_1 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[30]_30 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[30][9] 
       (.C(CLK),
        .CE(\mem_reg[30][15]_1 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[30]_30 [9]));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][0] 
       (.C(CLK),
        .CE(\mem_reg[31][15]_0 ),
        .D(D[0]),
        .Q(\mem_reg[31]_31 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][10] 
       (.C(CLK),
        .CE(\mem_reg[31][15]_0 ),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[31]_31 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][11] 
       (.C(CLK),
        .CE(\mem_reg[31][15]_0 ),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[31]_31 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][12] 
       (.C(CLK),
        .CE(\mem_reg[31][15]_0 ),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[31]_31 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][13] 
       (.C(CLK),
        .CE(\mem_reg[31][15]_0 ),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[31]_31 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][14] 
       (.C(CLK),
        .CE(\mem_reg[31][15]_0 ),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[31]_31 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][15] 
       (.C(CLK),
        .CE(\mem_reg[31][15]_0 ),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[31]_31 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][1] 
       (.C(CLK),
        .CE(\mem_reg[31][15]_0 ),
        .D(D[1]),
        .Q(\mem_reg[31]_31 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][2] 
       (.C(CLK),
        .CE(\mem_reg[31][15]_0 ),
        .D(D[2]),
        .Q(\mem_reg[31]_31 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][3] 
       (.C(CLK),
        .CE(\mem_reg[31][15]_0 ),
        .D(D[3]),
        .Q(\mem_reg[31]_31 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][4] 
       (.C(CLK),
        .CE(\mem_reg[31][15]_0 ),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[31]_31 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][5] 
       (.C(CLK),
        .CE(\mem_reg[31][15]_0 ),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[31]_31 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][6] 
       (.C(CLK),
        .CE(\mem_reg[31][15]_0 ),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[31]_31 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][7] 
       (.C(CLK),
        .CE(\mem_reg[31][15]_0 ),
        .D(D[4]),
        .Q(\mem_reg[31]_31 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][8] 
       (.C(CLK),
        .CE(\mem_reg[31][15]_0 ),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[31]_31 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][9] 
       (.C(CLK),
        .CE(\mem_reg[31][15]_0 ),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[31]_31 [9]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][0] 
       (.C(CLK),
        .CE(\mem_reg[3][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[3]_3 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][10] 
       (.C(CLK),
        .CE(\mem_reg[3][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[3]_3 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][11] 
       (.C(CLK),
        .CE(\mem_reg[3][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[3]_3 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][12] 
       (.C(CLK),
        .CE(\mem_reg[3][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[3]_3 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][13] 
       (.C(CLK),
        .CE(\mem_reg[3][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[3]_3 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][14] 
       (.C(CLK),
        .CE(\mem_reg[3][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[3]_3 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][15] 
       (.C(CLK),
        .CE(\mem_reg[3][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[3]_3 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][1] 
       (.C(CLK),
        .CE(\mem_reg[3][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[3]_3 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][2] 
       (.C(CLK),
        .CE(\mem_reg[3][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[3]_3 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][3] 
       (.C(CLK),
        .CE(\mem_reg[3][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[3]_3 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][4] 
       (.C(CLK),
        .CE(\mem_reg[3][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[3]_3 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][5] 
       (.C(CLK),
        .CE(\mem_reg[3][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[3]_3 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][6] 
       (.C(CLK),
        .CE(\mem_reg[3][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[3]_3 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][7] 
       (.C(CLK),
        .CE(\mem_reg[3][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[3]_3 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][8] 
       (.C(CLK),
        .CE(\mem_reg[3][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[3]_3 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][9] 
       (.C(CLK),
        .CE(\mem_reg[3][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[3]_3 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][0] 
       (.C(CLK),
        .CE(\mem_reg[4][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[4]_4 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][10] 
       (.C(CLK),
        .CE(\mem_reg[4][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[4]_4 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][11] 
       (.C(CLK),
        .CE(\mem_reg[4][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[4]_4 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][12] 
       (.C(CLK),
        .CE(\mem_reg[4][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[4]_4 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][13] 
       (.C(CLK),
        .CE(\mem_reg[4][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[4]_4 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][14] 
       (.C(CLK),
        .CE(\mem_reg[4][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[4]_4 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][15] 
       (.C(CLK),
        .CE(\mem_reg[4][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[4]_4 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][1] 
       (.C(CLK),
        .CE(\mem_reg[4][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[4]_4 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][2] 
       (.C(CLK),
        .CE(\mem_reg[4][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[4]_4 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][3] 
       (.C(CLK),
        .CE(\mem_reg[4][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[4]_4 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][4] 
       (.C(CLK),
        .CE(\mem_reg[4][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[4]_4 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][5] 
       (.C(CLK),
        .CE(\mem_reg[4][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[4]_4 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][6] 
       (.C(CLK),
        .CE(\mem_reg[4][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[4]_4 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][7] 
       (.C(CLK),
        .CE(\mem_reg[4][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[4]_4 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][8] 
       (.C(CLK),
        .CE(\mem_reg[4][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[4]_4 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][9] 
       (.C(CLK),
        .CE(\mem_reg[4][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[4]_4 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][0] 
       (.C(CLK),
        .CE(\mem_reg[5][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[5]_5 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][10] 
       (.C(CLK),
        .CE(\mem_reg[5][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[5]_5 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][11] 
       (.C(CLK),
        .CE(\mem_reg[5][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[5]_5 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][12] 
       (.C(CLK),
        .CE(\mem_reg[5][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[5]_5 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][13] 
       (.C(CLK),
        .CE(\mem_reg[5][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[5]_5 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][14] 
       (.C(CLK),
        .CE(\mem_reg[5][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[5]_5 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][15] 
       (.C(CLK),
        .CE(\mem_reg[5][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[5]_5 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][1] 
       (.C(CLK),
        .CE(\mem_reg[5][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[5]_5 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][2] 
       (.C(CLK),
        .CE(\mem_reg[5][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[5]_5 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][3] 
       (.C(CLK),
        .CE(\mem_reg[5][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[5]_5 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][4] 
       (.C(CLK),
        .CE(\mem_reg[5][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[5]_5 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][5] 
       (.C(CLK),
        .CE(\mem_reg[5][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[5]_5 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][6] 
       (.C(CLK),
        .CE(\mem_reg[5][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[5]_5 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][7] 
       (.C(CLK),
        .CE(\mem_reg[5][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[5]_5 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][8] 
       (.C(CLK),
        .CE(\mem_reg[5][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[5]_5 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][9] 
       (.C(CLK),
        .CE(\mem_reg[5][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[5]_5 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][0] 
       (.C(CLK),
        .CE(\mem_reg[6][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[6]_6 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][10] 
       (.C(CLK),
        .CE(\mem_reg[6][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[6]_6 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][11] 
       (.C(CLK),
        .CE(\mem_reg[6][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[6]_6 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][12] 
       (.C(CLK),
        .CE(\mem_reg[6][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[6]_6 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][13] 
       (.C(CLK),
        .CE(\mem_reg[6][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[6]_6 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][14] 
       (.C(CLK),
        .CE(\mem_reg[6][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[6]_6 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][15] 
       (.C(CLK),
        .CE(\mem_reg[6][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[6]_6 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][1] 
       (.C(CLK),
        .CE(\mem_reg[6][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[6]_6 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][2] 
       (.C(CLK),
        .CE(\mem_reg[6][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[6]_6 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][3] 
       (.C(CLK),
        .CE(\mem_reg[6][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[6]_6 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][4] 
       (.C(CLK),
        .CE(\mem_reg[6][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[6]_6 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][5] 
       (.C(CLK),
        .CE(\mem_reg[6][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[6]_6 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][6] 
       (.C(CLK),
        .CE(\mem_reg[6][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[6]_6 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][7] 
       (.C(CLK),
        .CE(\mem_reg[6][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[6]_6 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][8] 
       (.C(CLK),
        .CE(\mem_reg[6][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[6]_6 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][9] 
       (.C(CLK),
        .CE(\mem_reg[6][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[6]_6 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][0] 
       (.C(CLK),
        .CE(\mem_reg[7][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[7]_7 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][10] 
       (.C(CLK),
        .CE(\mem_reg[7][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[7]_7 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][11] 
       (.C(CLK),
        .CE(\mem_reg[7][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[7]_7 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][12] 
       (.C(CLK),
        .CE(\mem_reg[7][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[7]_7 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][13] 
       (.C(CLK),
        .CE(\mem_reg[7][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[7]_7 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][14] 
       (.C(CLK),
        .CE(\mem_reg[7][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[7]_7 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][15] 
       (.C(CLK),
        .CE(\mem_reg[7][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[7]_7 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][1] 
       (.C(CLK),
        .CE(\mem_reg[7][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[7]_7 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][2] 
       (.C(CLK),
        .CE(\mem_reg[7][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[7]_7 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][3] 
       (.C(CLK),
        .CE(\mem_reg[7][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[7]_7 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][4] 
       (.C(CLK),
        .CE(\mem_reg[7][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[7]_7 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][5] 
       (.C(CLK),
        .CE(\mem_reg[7][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[7]_7 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][6] 
       (.C(CLK),
        .CE(\mem_reg[7][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[7]_7 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][7] 
       (.C(CLK),
        .CE(\mem_reg[7][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[7]_7 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][8] 
       (.C(CLK),
        .CE(\mem_reg[7][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[7]_7 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][9] 
       (.C(CLK),
        .CE(\mem_reg[7][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[7]_7 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][0] 
       (.C(CLK),
        .CE(\mem_reg[8][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[8]_8 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][10] 
       (.C(CLK),
        .CE(\mem_reg[8][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[8]_8 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][11] 
       (.C(CLK),
        .CE(\mem_reg[8][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[8]_8 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][12] 
       (.C(CLK),
        .CE(\mem_reg[8][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[8]_8 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][13] 
       (.C(CLK),
        .CE(\mem_reg[8][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[8]_8 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][14] 
       (.C(CLK),
        .CE(\mem_reg[8][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[8]_8 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][15] 
       (.C(CLK),
        .CE(\mem_reg[8][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[8]_8 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][1] 
       (.C(CLK),
        .CE(\mem_reg[8][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[8]_8 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][2] 
       (.C(CLK),
        .CE(\mem_reg[8][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[8]_8 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][3] 
       (.C(CLK),
        .CE(\mem_reg[8][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[8]_8 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][4] 
       (.C(CLK),
        .CE(\mem_reg[8][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[8]_8 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][5] 
       (.C(CLK),
        .CE(\mem_reg[8][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[8]_8 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][6] 
       (.C(CLK),
        .CE(\mem_reg[8][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[8]_8 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][7] 
       (.C(CLK),
        .CE(\mem_reg[8][0]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[8]_8 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][8] 
       (.C(CLK),
        .CE(\mem_reg[8][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[8]_8 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][9] 
       (.C(CLK),
        .CE(\mem_reg[8][0]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[8]_8 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][0] 
       (.C(CLK),
        .CE(\mem_reg[9][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[0]),
        .Q(\mem_reg[9]_9 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][10] 
       (.C(CLK),
        .CE(\mem_reg[9][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [5]),
        .Q(\mem_reg[9]_9 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][11] 
       (.C(CLK),
        .CE(\mem_reg[9][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [6]),
        .Q(\mem_reg[9]_9 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][12] 
       (.C(CLK),
        .CE(\mem_reg[9][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [7]),
        .Q(\mem_reg[9]_9 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][13] 
       (.C(CLK),
        .CE(\mem_reg[9][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [8]),
        .Q(\mem_reg[9]_9 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][14] 
       (.C(CLK),
        .CE(\mem_reg[9][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [9]),
        .Q(\mem_reg[9]_9 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][15] 
       (.C(CLK),
        .CE(\mem_reg[9][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [10]),
        .Q(\mem_reg[9]_9 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][1] 
       (.C(CLK),
        .CE(\mem_reg[9][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[1]),
        .Q(\mem_reg[9]_9 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][2] 
       (.C(CLK),
        .CE(\mem_reg[9][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[2]),
        .Q(\mem_reg[9]_9 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][3] 
       (.C(CLK),
        .CE(\mem_reg[9][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[3]),
        .Q(\mem_reg[9]_9 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][4] 
       (.C(CLK),
        .CE(\mem_reg[9][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [0]),
        .Q(\mem_reg[9]_9 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][5] 
       (.C(CLK),
        .CE(\mem_reg[9][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [1]),
        .Q(\mem_reg[9]_9 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][6] 
       (.C(CLK),
        .CE(\mem_reg[9][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [2]),
        .Q(\mem_reg[9]_9 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][7] 
       (.C(CLK),
        .CE(\mem_reg[9][15]_0 ),
        .CLR(p_0_in__0),
        .D(D[4]),
        .Q(\mem_reg[9]_9 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][8] 
       (.C(CLK),
        .CE(\mem_reg[9][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [3]),
        .Q(\mem_reg[9]_9 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][9] 
       (.C(CLK),
        .CE(\mem_reg[9][15]_0 ),
        .CLR(p_0_in__0),
        .D(\mem_reg[30][15]_0 [4]),
        .Q(\mem_reg[9]_9 [9]));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \muxout_OBUF[0]_inst_i_1 
       (.I0(\muxout_OBUF[0]_inst_i_2_n_0 ),
        .I1(B_OBUF[0]),
        .I2(\mem_reg[30][0]_0 ),
        .I3(muxctrl_OBUF),
        .I4(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h004C)) 
    \muxout_OBUF[0]_inst_i_2 
       (.I0(A_OBUF[0]),
        .I1(muxctrl_OBUF),
        .I2(ALUbotones_IBUF[1]),
        .I3(ALUbotones_IBUF[0]),
        .O(\muxout_OBUF[0]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \muxout_OBUF[1]_inst_i_1 
       (.I0(\muxout_OBUF[1]_inst_i_2_n_0 ),
        .I1(B_OBUF[1]),
        .I2(\mem_reg[30][1]_0 ),
        .I3(muxctrl_OBUF),
        .I4(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h004C)) 
    \muxout_OBUF[1]_inst_i_2 
       (.I0(A_OBUF[1]),
        .I1(muxctrl_OBUF),
        .I2(ALUbotones_IBUF[1]),
        .I3(ALUbotones_IBUF[0]),
        .O(\muxout_OBUF[1]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \muxout_OBUF[2]_inst_i_1 
       (.I0(\muxout_OBUF[2]_inst_i_2_n_0 ),
        .I1(B_OBUF[2]),
        .I2(\mem_reg[30][2]_0 ),
        .I3(muxctrl_OBUF),
        .I4(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h004C)) 
    \muxout_OBUF[2]_inst_i_2 
       (.I0(A_OBUF[2]),
        .I1(muxctrl_OBUF),
        .I2(ALUbotones_IBUF[1]),
        .I3(ALUbotones_IBUF[0]),
        .O(\muxout_OBUF[2]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \muxout_OBUF[3]_inst_i_1 
       (.I0(\muxout_OBUF[3]_inst_i_2_n_0 ),
        .I1(\muxout_OBUF[3]_inst_i_3_n_0 ),
        .I2(\mem_reg[30][3]_0 ),
        .I3(muxctrl_OBUF),
        .I4(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \muxout_OBUF[3]_inst_i_10 
       (.I0(\mem_reg[4]_4 [3]),
        .I1(\mem_reg[5]_5 [3]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[6]_6 [3]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[7]_7 [3]),
        .O(\muxout_OBUF[3]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \muxout_OBUF[3]_inst_i_11 
       (.I0(\mem_reg[8]_8 [3]),
        .I1(\mem_reg[9]_9 [3]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[10]_10 [3]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[11]_11 [3]),
        .O(\muxout_OBUF[3]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \muxout_OBUF[3]_inst_i_12 
       (.I0(\mem_reg[12]_12 [3]),
        .I1(\mem_reg[13]_13 [3]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[14]_14 [3]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[15]_15 [3]),
        .O(\muxout_OBUF[3]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \muxout_OBUF[3]_inst_i_13 
       (.I0(\mem_reg[16]_16 [3]),
        .I1(\mem_reg[17]_17 [3]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[18]_18 [3]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[19]_19 [3]),
        .O(\muxout_OBUF[3]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \muxout_OBUF[3]_inst_i_14 
       (.I0(\mem_reg[20]_20 [3]),
        .I1(\mem_reg[21]_21 [3]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[22]_22 [3]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[23]_23 [3]),
        .O(\muxout_OBUF[3]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \muxout_OBUF[3]_inst_i_15 
       (.I0(\mem_reg[24]_24 [3]),
        .I1(\mem_reg[25]_25 [3]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[26]_26 [3]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[27]_27 [3]),
        .O(\muxout_OBUF[3]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \muxout_OBUF[3]_inst_i_16 
       (.I0(\mem_reg[28]_28 [3]),
        .I1(\mem_reg[29]_29 [3]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[30]_30 [3]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[31]_31 [3]),
        .O(\muxout_OBUF[3]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E4FFAA5500)) 
    \muxout_OBUF[3]_inst_i_2 
       (.I0(addr_rs2_OBUF[1]),
        .I1(\muxout_OBUF[3]_inst_i_5_n_0 ),
        .I2(\muxout_OBUF[3]_inst_i_6_n_0 ),
        .I3(\muxout_OBUF[3]_inst_i_7_n_0 ),
        .I4(\muxout_OBUF[3]_inst_i_8_n_0 ),
        .I5(\mem_reg[30][7]_1 ),
        .O(\muxout_OBUF[3]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF8FF)) 
    \muxout_OBUF[3]_inst_i_3 
       (.I0(A_OBUF[3]),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[0]),
        .I3(muxctrl_OBUF),
        .O(\muxout_OBUF[3]_inst_i_3_n_0 ));
  MUXF7 \muxout_OBUF[3]_inst_i_5 
       (.I0(\muxout_OBUF[3]_inst_i_9_n_0 ),
        .I1(\muxout_OBUF[3]_inst_i_10_n_0 ),
        .O(\muxout_OBUF[3]_inst_i_5_n_0 ),
        .S(addr_rs2_OBUF[0]));
  MUXF7 \muxout_OBUF[3]_inst_i_6 
       (.I0(\muxout_OBUF[3]_inst_i_11_n_0 ),
        .I1(\muxout_OBUF[3]_inst_i_12_n_0 ),
        .O(\muxout_OBUF[3]_inst_i_6_n_0 ),
        .S(addr_rs2_OBUF[0]));
  MUXF7 \muxout_OBUF[3]_inst_i_7 
       (.I0(\muxout_OBUF[3]_inst_i_13_n_0 ),
        .I1(\muxout_OBUF[3]_inst_i_14_n_0 ),
        .O(\muxout_OBUF[3]_inst_i_7_n_0 ),
        .S(addr_rs2_OBUF[0]));
  MUXF7 \muxout_OBUF[3]_inst_i_8 
       (.I0(\muxout_OBUF[3]_inst_i_15_n_0 ),
        .I1(\muxout_OBUF[3]_inst_i_16_n_0 ),
        .O(\muxout_OBUF[3]_inst_i_8_n_0 ),
        .S(addr_rs2_OBUF[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \muxout_OBUF[3]_inst_i_9 
       (.I0(\mem_reg[0]_0 [3]),
        .I1(\mem_reg[1]_1 [3]),
        .I2(\B_OBUF[1]_inst_i_2_0 ),
        .I3(\mem_reg[2]_2 [3]),
        .I4(\B_OBUF[1]_inst_i_2_1 ),
        .I5(\mem_reg[3]_3 [3]),
        .O(\muxout_OBUF[3]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \muxout_OBUF[7]_inst_i_1 
       (.I0(\muxout_OBUF[7]_inst_i_2_n_0 ),
        .I1(B_OBUF[7]),
        .I2(\mem_reg[30][7]_0 ),
        .I3(muxctrl_OBUF),
        .I4(Q[4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h004C)) 
    \muxout_OBUF[7]_inst_i_2 
       (.I0(A_OBUF[7]),
        .I1(muxctrl_OBUF),
        .I2(ALUbotones_IBUF[1]),
        .I3(ALUbotones_IBUF[0]),
        .O(\muxout_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA65AAAA559A5555)) 
    p_2_out_carry__0_i_1
       (.I0(B_OBUF[7]),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[2]),
        .I3(ALUbotones_IBUF[0]),
        .I4(muxctrl_OBUF),
        .I5(A_OBUF[7]),
        .O(\ALUbotones[1] [3]));
  LUT6 #(
    .INIT(64'h559A5555AA65AAAA)) 
    p_2_out_carry__0_i_2
       (.I0(\current_state_reg[2]_2 ),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[2]),
        .I3(ALUbotones_IBUF[0]),
        .I4(muxctrl_OBUF),
        .I5(A_OBUF[6]),
        .O(\ALUbotones[1] [2]));
  LUT6 #(
    .INIT(64'h559A5555AA65AAAA)) 
    p_2_out_carry__0_i_3
       (.I0(\seg2_OBUF[4]_inst_i_2_n_0 ),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[2]),
        .I3(ALUbotones_IBUF[0]),
        .I4(muxctrl_OBUF),
        .I5(A_OBUF[5]),
        .O(\ALUbotones[1] [1]));
  LUT6 #(
    .INIT(64'h559A5555AA65AAAA)) 
    p_2_out_carry__0_i_4
       (.I0(\seg2_OBUF[2]_inst_i_2_n_0 ),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[2]),
        .I3(ALUbotones_IBUF[0]),
        .I4(muxctrl_OBUF),
        .I5(A_OBUF[4]),
        .O(\ALUbotones[1] [0]));
  LUT6 #(
    .INIT(64'h559A5555AA65AAAA)) 
    p_2_out_carry__1_i_1
       (.I0(\seg1_OBUF[6]_inst_i_2_n_0 ),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[2]),
        .I3(ALUbotones_IBUF[0]),
        .I4(muxctrl_OBUF),
        .I5(A_OBUF[11]),
        .O(\ALUbotones[1]_0 [3]));
  LUT6 #(
    .INIT(64'h559A5555AA65AAAA)) 
    p_2_out_carry__1_i_2
       (.I0(\current_state_reg[2]_1 ),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[2]),
        .I3(ALUbotones_IBUF[0]),
        .I4(muxctrl_OBUF),
        .I5(A_OBUF[10]),
        .O(\ALUbotones[1]_0 [2]));
  LUT6 #(
    .INIT(64'h559A5555AA65AAAA)) 
    p_2_out_carry__1_i_3
       (.I0(\seg1_OBUF[2]_inst_i_3_n_0 ),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[2]),
        .I3(ALUbotones_IBUF[0]),
        .I4(muxctrl_OBUF),
        .I5(A_OBUF[9]),
        .O(\ALUbotones[1]_0 [1]));
  LUT6 #(
    .INIT(64'h559A5555AA65AAAA)) 
    p_2_out_carry__1_i_4
       (.I0(\seg1_OBUF[2]_inst_i_2_n_0 ),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[2]),
        .I3(ALUbotones_IBUF[0]),
        .I4(muxctrl_OBUF),
        .I5(A_OBUF[8]),
        .O(\ALUbotones[1]_0 [0]));
  LUT6 #(
    .INIT(64'h2202DDFDDDFD2202)) 
    p_2_out_carry__2_i_1
       (.I0(muxctrl_OBUF),
        .I1(ALUbotones_IBUF[0]),
        .I2(ALUbotones_IBUF[2]),
        .I3(ALUbotones_IBUF[1]),
        .I4(A_OBUF[15]),
        .I5(\current_state_reg[2] ),
        .O(\current_state_reg[1] [3]));
  LUT6 #(
    .INIT(64'h559A5555AA65AAAA)) 
    p_2_out_carry__2_i_2
       (.I0(\current_state_reg[2]_0 ),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[2]),
        .I3(ALUbotones_IBUF[0]),
        .I4(muxctrl_OBUF),
        .I5(A_OBUF[14]),
        .O(\current_state_reg[1] [2]));
  LUT6 #(
    .INIT(64'h559A5555AA65AAAA)) 
    p_2_out_carry__2_i_3
       (.I0(\seg0_OBUF[2]_inst_i_2_n_0 ),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[2]),
        .I3(ALUbotones_IBUF[0]),
        .I4(muxctrl_OBUF),
        .I5(A_OBUF[13]),
        .O(\current_state_reg[1] [1]));
  LUT6 #(
    .INIT(64'h559A5555AA65AAAA)) 
    p_2_out_carry__2_i_4
       (.I0(\current_state_reg[2]_3 ),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[2]),
        .I3(ALUbotones_IBUF[0]),
        .I4(muxctrl_OBUF),
        .I5(A_OBUF[12]),
        .O(\current_state_reg[1] [0]));
  LUT6 #(
    .INIT(64'h559A5555AA65AAAA)) 
    p_2_out_carry_i_2
       (.I0(\muxout_OBUF[3]_inst_i_2_n_0 ),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[2]),
        .I3(ALUbotones_IBUF[0]),
        .I4(muxctrl_OBUF),
        .I5(A_OBUF[3]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h559A5555AA65AAAA)) 
    p_2_out_carry_i_3
       (.I0(\seg3_OBUF[6]_inst_i_2_n_0 ),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[2]),
        .I3(ALUbotones_IBUF[0]),
        .I4(muxctrl_OBUF),
        .I5(A_OBUF[2]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hAA65AAAA559A5555)) 
    p_2_out_carry_i_4
       (.I0(B_OBUF[1]),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[2]),
        .I3(ALUbotones_IBUF[0]),
        .I4(muxctrl_OBUF),
        .I5(A_OBUF[1]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h2)) 
    p_2_out_carry_i_5
       (.I0(B_OBUF[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h04FF04FFFFFF04FF)) 
    \seg0_OBUF[0]_inst_i_1 
       (.I0(\seg0_OBUF[1]_inst_i_2_n_0 ),
        .I1(\current_state_reg[2] ),
        .I2(\seg0_OBUF[4]_inst_i_3_n_0 ),
        .I3(displayctrl_OBUF),
        .I4(\seg0_OBUF[6]_inst_i_4_n_0 ),
        .I5(\seg0_OBUF[4]_inst_i_2_n_0 ),
        .O(seg0_OBUF[0]));
  LUT4 #(
    .INIT(16'hABAA)) 
    \seg0_OBUF[1]_inst_i_1 
       (.I0(\seg0_OBUF[6]_inst_i_3_n_0 ),
        .I1(\seg0_OBUF[6]_inst_i_4_n_0 ),
        .I2(\seg0_OBUF[1]_inst_i_2_n_0 ),
        .I3(\current_state_reg[2] ),
        .O(seg0_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \seg0_OBUF[1]_inst_i_2 
       (.I0(B_OBUF[14]),
        .I1(\current_state_reg[2]_3 ),
        .I2(B_OBUF[13]),
        .O(\seg0_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h75007544FFFFFFFF)) 
    \seg0_OBUF[2]_inst_i_1 
       (.I0(\current_state_reg[2]_3 ),
        .I1(\current_state_reg[2]_0 ),
        .I2(\seg0_OBUF[2]_inst_i_2_n_0 ),
        .I3(\current_state_reg[2] ),
        .I4(B_OBUF[13]),
        .I5(displayctrl_OBUF),
        .O(seg0_OBUF[2]));
  MUXF7 \seg0_OBUF[2]_inst_i_2 
       (.I0(\seg0_OBUF[2]_inst_i_3_n_0 ),
        .I1(\seg0_OBUF[2]_inst_i_4_n_0 ),
        .O(\seg0_OBUF[2]_inst_i_2_n_0 ),
        .S(\mem_reg[30][7]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg0_OBUF[2]_inst_i_3 
       (.I0(\B_OBUF[13]_inst_i_4_n_0 ),
        .I1(\B_OBUF[13]_inst_i_5_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[13]_inst_i_6_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[13]_inst_i_7_n_0 ),
        .O(\seg0_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF505F3F3F5050303)) 
    \seg0_OBUF[2]_inst_i_4 
       (.I0(\B_OBUF[13]_inst_i_9_n_0 ),
        .I1(\B_OBUF[13]_inst_i_8_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[13]_inst_i_10_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[13]_inst_i_11_n_0 ),
        .O(\seg0_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF04FFFF)) 
    \seg0_OBUF[3]_inst_i_1 
       (.I0(\seg0_OBUF[3]_inst_i_2_n_0 ),
        .I1(B_OBUF[15]),
        .I2(\seg0_OBUF[5]_inst_i_4_n_0 ),
        .I3(\seg0_OBUF[6]_inst_i_5_n_0 ),
        .I4(displayctrl_OBUF),
        .I5(\seg0_OBUF[3]_inst_i_3_n_0 ),
        .O(seg0_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF4F4444)) 
    \seg0_OBUF[3]_inst_i_2 
       (.I0(B_OBUF[12]),
        .I1(\seg0_OBUF[2]_inst_i_2_n_0 ),
        .I2(B_OBUF[13]),
        .I3(\current_state_reg[2]_3 ),
        .I4(B_OBUF[14]),
        .O(\seg0_OBUF[3]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    \seg0_OBUF[3]_inst_i_3 
       (.I0(\current_state_reg[2]_0 ),
        .I1(\current_state_reg[2] ),
        .I2(B_OBUF[12]),
        .I3(B_OBUF[13]),
        .O(\seg0_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D5DFF5D5D5D5D)) 
    \seg0_OBUF[4]_inst_i_1 
       (.I0(displayctrl_OBUF),
        .I1(\seg0_OBUF[5]_inst_i_2_n_0 ),
        .I2(\seg0_OBUF[4]_inst_i_2_n_0 ),
        .I3(B_OBUF[15]),
        .I4(B_OBUF[12]),
        .I5(\seg0_OBUF[4]_inst_i_3_n_0 ),
        .O(seg0_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \seg0_OBUF[4]_inst_i_2 
       (.I0(\current_state_reg[2] ),
        .I1(\current_state_reg[2]_0 ),
        .O(\seg0_OBUF[4]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \seg0_OBUF[4]_inst_i_3 
       (.I0(\current_state_reg[2]_0 ),
        .I1(\seg0_OBUF[2]_inst_i_2_n_0 ),
        .O(\seg0_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5FFF55FF5F5D555D)) 
    \seg0_OBUF[5]_inst_i_1 
       (.I0(displayctrl_OBUF),
        .I1(\seg0_OBUF[5]_inst_i_2_n_0 ),
        .I2(\current_state_reg[2]_0 ),
        .I3(\current_state_reg[2] ),
        .I4(\seg0_OBUF[5]_inst_i_3_n_0 ),
        .I5(\seg0_OBUF[5]_inst_i_4_n_0 ),
        .O(seg0_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \seg0_OBUF[5]_inst_i_2 
       (.I0(B_OBUF[13]),
        .I1(\current_state_reg[2]_3 ),
        .O(\seg0_OBUF[5]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \seg0_OBUF[5]_inst_i_3 
       (.I0(B_OBUF[13]),
        .I1(B_OBUF[12]),
        .O(\seg0_OBUF[5]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \seg0_OBUF[5]_inst_i_4 
       (.I0(\seg0_OBUF[2]_inst_i_2_n_0 ),
        .I1(\current_state_reg[2]_0 ),
        .I2(\current_state_reg[2]_3 ),
        .O(\seg0_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF2FFF0)) 
    \seg0_OBUF[6]_inst_i_1 
       (.I0(\current_state_reg[2] ),
        .I1(\current_state_reg[2]_0 ),
        .I2(\seg0_OBUF[6]_inst_i_2_n_0 ),
        .I3(\seg0_OBUF[6]_inst_i_3_n_0 ),
        .I4(\seg0_OBUF[6]_inst_i_4_n_0 ),
        .I5(\seg0_OBUF[6]_inst_i_5_n_0 ),
        .O(seg0_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \seg0_OBUF[6]_inst_i_2 
       (.I0(\current_state_reg[2]_3 ),
        .I1(\current_state_reg[2]_0 ),
        .I2(\seg0_OBUF[2]_inst_i_2_n_0 ),
        .I3(\current_state_reg[2] ),
        .O(\seg0_OBUF[6]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \seg0_OBUF[6]_inst_i_3 
       (.I0(\current_state_reg[2] ),
        .I1(\current_state_reg[2]_0 ),
        .I2(B_OBUF[13]),
        .I3(\current_state_reg[2]_3 ),
        .I4(displayctrl_OBUF),
        .O(\seg0_OBUF[6]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \seg0_OBUF[6]_inst_i_4 
       (.I0(\seg0_OBUF[2]_inst_i_2_n_0 ),
        .I1(B_OBUF[12]),
        .O(\seg0_OBUF[6]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \seg0_OBUF[6]_inst_i_5 
       (.I0(B_OBUF[13]),
        .I1(\current_state_reg[2]_0 ),
        .I2(\current_state_reg[2]_3 ),
        .I3(B_OBUF[15]),
        .O(\seg0_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1F1F1F1F0F0FFF0F)) 
    \seg1_OBUF[0]_inst_i_1 
       (.I0(\seg1_OBUF[1]_inst_i_2_n_0 ),
        .I1(\seg1_OBUF[4]_inst_i_3_n_0 ),
        .I2(displayctrl_OBUF),
        .I3(\seg1_OBUF[6]_inst_i_5_n_0 ),
        .I4(\current_state_reg[2]_1 ),
        .I5(\seg1_OBUF[6]_inst_i_2_n_0 ),
        .O(seg1_OBUF[0]));
  LUT6 #(
    .INIT(64'h555555FF57575757)) 
    \seg1_OBUF[1]_inst_i_1 
       (.I0(displayctrl_OBUF),
        .I1(\seg1_OBUF[5]_inst_i_2_n_0 ),
        .I2(\current_state_reg[2]_1 ),
        .I3(\seg1_OBUF[6]_inst_i_5_n_0 ),
        .I4(\seg1_OBUF[1]_inst_i_2_n_0 ),
        .I5(\seg1_OBUF[6]_inst_i_2_n_0 ),
        .O(seg1_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \seg1_OBUF[1]_inst_i_2 
       (.I0(B_OBUF[10]),
        .I1(\seg1_OBUF[2]_inst_i_2_n_0 ),
        .I2(B_OBUF[9]),
        .O(\seg1_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h75007544FFFFFFFF)) 
    \seg1_OBUF[2]_inst_i_1 
       (.I0(\seg1_OBUF[2]_inst_i_2_n_0 ),
        .I1(\current_state_reg[2]_1 ),
        .I2(\seg1_OBUF[2]_inst_i_3_n_0 ),
        .I3(\seg1_OBUF[6]_inst_i_2_n_0 ),
        .I4(B_OBUF[9]),
        .I5(displayctrl_OBUF),
        .O(seg1_OBUF[2]));
  MUXF7 \seg1_OBUF[2]_inst_i_2 
       (.I0(\seg1_OBUF[2]_inst_i_4_n_0 ),
        .I1(\seg1_OBUF[2]_inst_i_5_n_0 ),
        .O(\seg1_OBUF[2]_inst_i_2_n_0 ),
        .S(\mem_reg[30][7]_1 ));
  MUXF7 \seg1_OBUF[2]_inst_i_3 
       (.I0(\seg1_OBUF[2]_inst_i_6_n_0 ),
        .I1(\seg1_OBUF[2]_inst_i_7_n_0 ),
        .O(\seg1_OBUF[2]_inst_i_3_n_0 ),
        .S(\mem_reg[30][7]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg1_OBUF[2]_inst_i_4 
       (.I0(\B_OBUF[8]_inst_i_4_n_0 ),
        .I1(\B_OBUF[8]_inst_i_5_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[8]_inst_i_6_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[8]_inst_i_7_n_0 ),
        .O(\seg1_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF505F3F3F5050303)) 
    \seg1_OBUF[2]_inst_i_5 
       (.I0(\B_OBUF[8]_inst_i_9_n_0 ),
        .I1(\B_OBUF[8]_inst_i_8_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[8]_inst_i_10_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[8]_inst_i_11_n_0 ),
        .O(\seg1_OBUF[2]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg1_OBUF[2]_inst_i_6 
       (.I0(\B_OBUF[9]_inst_i_4_n_0 ),
        .I1(\B_OBUF[9]_inst_i_5_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[9]_inst_i_6_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[9]_inst_i_7_n_0 ),
        .O(\seg1_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF505F3F3F5050303)) 
    \seg1_OBUF[2]_inst_i_7 
       (.I0(\B_OBUF[9]_inst_i_9_n_0 ),
        .I1(\B_OBUF[9]_inst_i_8_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[9]_inst_i_10_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[9]_inst_i_11_n_0 ),
        .O(\seg1_OBUF[2]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF04FFFF)) 
    \seg1_OBUF[3]_inst_i_1 
       (.I0(\seg1_OBUF[3]_inst_i_2_n_0 ),
        .I1(B_OBUF[11]),
        .I2(\seg1_OBUF[5]_inst_i_4_n_0 ),
        .I3(\seg1_OBUF[6]_inst_i_6_n_0 ),
        .I4(displayctrl_OBUF),
        .I5(\seg1_OBUF[3]_inst_i_3_n_0 ),
        .O(seg1_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF4F4444)) 
    \seg1_OBUF[3]_inst_i_2 
       (.I0(B_OBUF[8]),
        .I1(\seg1_OBUF[2]_inst_i_3_n_0 ),
        .I2(B_OBUF[9]),
        .I3(\seg1_OBUF[2]_inst_i_2_n_0 ),
        .I4(B_OBUF[10]),
        .O(\seg1_OBUF[3]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    \seg1_OBUF[3]_inst_i_3 
       (.I0(\current_state_reg[2]_1 ),
        .I1(\seg1_OBUF[6]_inst_i_2_n_0 ),
        .I2(B_OBUF[8]),
        .I3(B_OBUF[9]),
        .O(\seg1_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D5DFF5D5D5D5D)) 
    \seg1_OBUF[4]_inst_i_1 
       (.I0(displayctrl_OBUF),
        .I1(\seg1_OBUF[5]_inst_i_2_n_0 ),
        .I2(\seg1_OBUF[4]_inst_i_2_n_0 ),
        .I3(B_OBUF[11]),
        .I4(B_OBUF[8]),
        .I5(\seg1_OBUF[4]_inst_i_3_n_0 ),
        .O(seg1_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \seg1_OBUF[4]_inst_i_2 
       (.I0(\seg1_OBUF[6]_inst_i_2_n_0 ),
        .I1(\current_state_reg[2]_1 ),
        .O(\seg1_OBUF[4]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \seg1_OBUF[4]_inst_i_3 
       (.I0(\current_state_reg[2]_1 ),
        .I1(\seg1_OBUF[2]_inst_i_3_n_0 ),
        .O(\seg1_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5FFF55FF5F5D555D)) 
    \seg1_OBUF[5]_inst_i_1 
       (.I0(displayctrl_OBUF),
        .I1(\seg1_OBUF[5]_inst_i_2_n_0 ),
        .I2(\current_state_reg[2]_1 ),
        .I3(\seg1_OBUF[6]_inst_i_2_n_0 ),
        .I4(\seg1_OBUF[5]_inst_i_3_n_0 ),
        .I5(\seg1_OBUF[5]_inst_i_4_n_0 ),
        .O(seg1_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \seg1_OBUF[5]_inst_i_2 
       (.I0(B_OBUF[9]),
        .I1(\seg1_OBUF[2]_inst_i_2_n_0 ),
        .O(\seg1_OBUF[5]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \seg1_OBUF[5]_inst_i_3 
       (.I0(B_OBUF[9]),
        .I1(B_OBUF[8]),
        .O(\seg1_OBUF[5]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \seg1_OBUF[5]_inst_i_4 
       (.I0(\seg1_OBUF[2]_inst_i_3_n_0 ),
        .I1(\current_state_reg[2]_1 ),
        .I2(\seg1_OBUF[2]_inst_i_2_n_0 ),
        .O(\seg1_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF2FFF0)) 
    \seg1_OBUF[6]_inst_i_1 
       (.I0(\seg1_OBUF[6]_inst_i_2_n_0 ),
        .I1(\current_state_reg[2]_1 ),
        .I2(\seg1_OBUF[6]_inst_i_3_n_0 ),
        .I3(\seg1_OBUF[6]_inst_i_4_n_0 ),
        .I4(\seg1_OBUF[6]_inst_i_5_n_0 ),
        .I5(\seg1_OBUF[6]_inst_i_6_n_0 ),
        .O(seg1_OBUF[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \seg1_OBUF[6]_inst_i_2 
       (.I0(\B_OBUF[11]_inst_i_2_n_0 ),
        .I1(\mem_reg[30][7]_1 ),
        .I2(\seg1_OBUF[6]_inst_i_7_n_0 ),
        .I3(addr_rs2_OBUF[1]),
        .I4(\B_OBUF[11]_inst_i_4_n_0 ),
        .O(\seg1_OBUF[6]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \seg1_OBUF[6]_inst_i_3 
       (.I0(\seg1_OBUF[2]_inst_i_2_n_0 ),
        .I1(\current_state_reg[2]_1 ),
        .I2(\seg1_OBUF[2]_inst_i_3_n_0 ),
        .I3(\seg1_OBUF[6]_inst_i_2_n_0 ),
        .O(\seg1_OBUF[6]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \seg1_OBUF[6]_inst_i_4 
       (.I0(\seg1_OBUF[6]_inst_i_2_n_0 ),
        .I1(\current_state_reg[2]_1 ),
        .I2(B_OBUF[9]),
        .I3(\seg1_OBUF[2]_inst_i_2_n_0 ),
        .I4(displayctrl_OBUF),
        .O(\seg1_OBUF[6]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \seg1_OBUF[6]_inst_i_5 
       (.I0(\seg1_OBUF[2]_inst_i_3_n_0 ),
        .I1(B_OBUF[8]),
        .O(\seg1_OBUF[6]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \seg1_OBUF[6]_inst_i_6 
       (.I0(B_OBUF[9]),
        .I1(\current_state_reg[2]_1 ),
        .I2(\seg1_OBUF[2]_inst_i_2_n_0 ),
        .I3(B_OBUF[11]),
        .O(\seg1_OBUF[6]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \seg1_OBUF[6]_inst_i_7 
       (.I0(\B_OBUF[11]_inst_i_9_n_0 ),
        .I1(addr_rs2_OBUF[0]),
        .I2(\B_OBUF[11]_inst_i_10_n_0 ),
        .O(\seg1_OBUF[6]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00FFD0FF55FFD0FF)) 
    \seg2_OBUF[0]_inst_i_1 
       (.I0(\current_state_reg[2]_2 ),
        .I1(\seg2_OBUF[4]_inst_i_2_n_0 ),
        .I2(\seg2_OBUF[0]_inst_i_2_n_0 ),
        .I3(displayctrl_OBUF),
        .I4(B_OBUF[7]),
        .I5(\seg2_OBUF[1]_inst_i_2_n_0 ),
        .O(seg2_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \seg2_OBUF[0]_inst_i_2 
       (.I0(\current_state_reg[2]_2 ),
        .I1(\seg2_OBUF[2]_inst_i_2_n_0 ),
        .I2(B_OBUF[5]),
        .O(\seg2_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555FDDDD55D5)) 
    \seg2_OBUF[1]_inst_i_1 
       (.I0(displayctrl_OBUF),
        .I1(\seg2_OBUF[1]_inst_i_2_n_0 ),
        .I2(B_OBUF[5]),
        .I3(\seg2_OBUF[2]_inst_i_2_n_0 ),
        .I4(\current_state_reg[2]_2 ),
        .I5(B_OBUF[7]),
        .O(seg2_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \seg2_OBUF[1]_inst_i_2 
       (.I0(B_OBUF[5]),
        .I1(B_OBUF[4]),
        .O(\seg2_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00447575FFFFFFFF)) 
    \seg2_OBUF[2]_inst_i_1 
       (.I0(\seg2_OBUF[2]_inst_i_2_n_0 ),
        .I1(\current_state_reg[2]_2 ),
        .I2(\seg2_OBUF[4]_inst_i_2_n_0 ),
        .I3(B_OBUF[5]),
        .I4(B_OBUF[7]),
        .I5(displayctrl_OBUF),
        .O(seg2_OBUF[2]));
  MUXF7 \seg2_OBUF[2]_inst_i_2 
       (.I0(\seg2_OBUF[2]_inst_i_3_n_0 ),
        .I1(\seg2_OBUF[2]_inst_i_4_n_0 ),
        .O(\seg2_OBUF[2]_inst_i_2_n_0 ),
        .S(\mem_reg[30][7]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg2_OBUF[2]_inst_i_3 
       (.I0(\B_OBUF[4]_inst_i_4_n_0 ),
        .I1(\B_OBUF[4]_inst_i_5_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[4]_inst_i_6_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[4]_inst_i_7_n_0 ),
        .O(\seg2_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF505F3F3F5050303)) 
    \seg2_OBUF[2]_inst_i_4 
       (.I0(\B_OBUF[4]_inst_i_9_n_0 ),
        .I1(\B_OBUF[4]_inst_i_8_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[4]_inst_i_10_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[4]_inst_i_11_n_0 ),
        .O(\seg2_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF04FFFF)) 
    \seg2_OBUF[3]_inst_i_1 
       (.I0(\seg2_OBUF[3]_inst_i_2_n_0 ),
        .I1(B_OBUF[7]),
        .I2(\seg2_OBUF[6]_inst_i_5_n_0 ),
        .I3(\seg2_OBUF[6]_inst_i_3_n_0 ),
        .I4(displayctrl_OBUF),
        .I5(\seg2_OBUF[3]_inst_i_3_n_0 ),
        .O(seg2_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h11F3)) 
    \seg2_OBUF[3]_inst_i_2 
       (.I0(B_OBUF[4]),
        .I1(B_OBUF[5]),
        .I2(\seg2_OBUF[2]_inst_i_2_n_0 ),
        .I3(\current_state_reg[2]_2 ),
        .O(\seg2_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0511000000000511)) 
    \seg2_OBUF[3]_inst_i_3 
       (.I0(\current_state_reg[2]_2 ),
        .I1(\seg2_OBUF[6]_inst_i_6_n_0 ),
        .I2(\seg2_OBUF[6]_inst_i_7_n_0 ),
        .I3(\mem_reg[30][7]_1 ),
        .I4(B_OBUF[4]),
        .I5(B_OBUF[5]),
        .O(\seg2_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5F0F0F0F5F0F2F2F)) 
    \seg2_OBUF[4]_inst_i_1 
       (.I0(\current_state_reg[2]_2 ),
        .I1(\seg2_OBUF[4]_inst_i_2_n_0 ),
        .I2(displayctrl_OBUF),
        .I3(\seg2_OBUF[5]_inst_i_2_n_0 ),
        .I4(B_OBUF[7]),
        .I5(B_OBUF[4]),
        .O(seg2_OBUF[4]));
  MUXF7 \seg2_OBUF[4]_inst_i_2 
       (.I0(\seg2_OBUF[4]_inst_i_3_n_0 ),
        .I1(\seg2_OBUF[4]_inst_i_4_n_0 ),
        .O(\seg2_OBUF[4]_inst_i_2_n_0 ),
        .S(\mem_reg[30][7]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg2_OBUF[4]_inst_i_3 
       (.I0(\B_OBUF[5]_inst_i_4_n_0 ),
        .I1(\B_OBUF[5]_inst_i_5_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[5]_inst_i_6_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[5]_inst_i_7_n_0 ),
        .O(\seg2_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF505F3F3F5050303)) 
    \seg2_OBUF[4]_inst_i_4 
       (.I0(\B_OBUF[5]_inst_i_9_n_0 ),
        .I1(\B_OBUF[5]_inst_i_8_n_0 ),
        .I2(addr_rs2_OBUF[1]),
        .I3(\B_OBUF[5]_inst_i_10_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[5]_inst_i_11_n_0 ),
        .O(\seg2_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF5FFF555D5F5D55)) 
    \seg2_OBUF[5]_inst_i_1 
       (.I0(displayctrl_OBUF),
        .I1(\seg2_OBUF[5]_inst_i_2_n_0 ),
        .I2(\current_state_reg[2]_2 ),
        .I3(B_OBUF[7]),
        .I4(\seg2_OBUF[5]_inst_i_3_n_0 ),
        .I5(\seg2_OBUF[6]_inst_i_5_n_0 ),
        .O(seg2_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \seg2_OBUF[5]_inst_i_2 
       (.I0(B_OBUF[5]),
        .I1(\seg2_OBUF[2]_inst_i_2_n_0 ),
        .O(\seg2_OBUF[5]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg2_OBUF[5]_inst_i_3 
       (.I0(B_OBUF[5]),
        .I1(B_OBUF[4]),
        .O(\seg2_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFDFFFD)) 
    \seg2_OBUF[6]_inst_i_1 
       (.I0(displayctrl_OBUF),
        .I1(\seg2_OBUF[6]_inst_i_2_n_0 ),
        .I2(\seg2_OBUF[6]_inst_i_3_n_0 ),
        .I3(\seg2_OBUF[6]_inst_i_4_n_0 ),
        .I4(\seg2_OBUF[6]_inst_i_5_n_0 ),
        .I5(B_OBUF[7]),
        .O(seg2_OBUF[6]));
  LUT6 #(
    .INIT(64'h0000000000005044)) 
    \seg2_OBUF[6]_inst_i_2 
       (.I0(\current_state_reg[2]_2 ),
        .I1(\seg2_OBUF[6]_inst_i_6_n_0 ),
        .I2(\seg2_OBUF[6]_inst_i_7_n_0 ),
        .I3(\mem_reg[30][7]_1 ),
        .I4(\seg2_OBUF[2]_inst_i_2_n_0 ),
        .I5(B_OBUF[5]),
        .O(\seg2_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000040400040004)) 
    \seg2_OBUF[6]_inst_i_3 
       (.I0(B_OBUF[5]),
        .I1(\current_state_reg[2]_2 ),
        .I2(\seg2_OBUF[2]_inst_i_2_n_0 ),
        .I3(\seg2_OBUF[6]_inst_i_6_n_0 ),
        .I4(\seg2_OBUF[6]_inst_i_7_n_0 ),
        .I5(\mem_reg[30][7]_1 ),
        .O(\seg2_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000511)) 
    \seg2_OBUF[6]_inst_i_4 
       (.I0(\current_state_reg[2]_2 ),
        .I1(\seg2_OBUF[6]_inst_i_6_n_0 ),
        .I2(\seg2_OBUF[6]_inst_i_7_n_0 ),
        .I3(\mem_reg[30][7]_1 ),
        .I4(B_OBUF[4]),
        .I5(B_OBUF[5]),
        .O(\seg2_OBUF[6]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \seg2_OBUF[6]_inst_i_5 
       (.I0(\seg2_OBUF[4]_inst_i_2_n_0 ),
        .I1(\current_state_reg[2]_2 ),
        .I2(\seg2_OBUF[2]_inst_i_2_n_0 ),
        .O(\seg2_OBUF[6]_inst_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \seg2_OBUF[6]_inst_i_6 
       (.I0(addr_rs2_OBUF[1]),
        .I1(\B_OBUF[7]_inst_i_3_n_0 ),
        .I2(\B_OBUF[7]_inst_i_2_n_0 ),
        .O(\seg2_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEE44FAFAEE445050)) 
    \seg2_OBUF[6]_inst_i_7 
       (.I0(addr_rs2_OBUF[1]),
        .I1(\B_OBUF[7]_inst_i_11_n_0 ),
        .I2(\B_OBUF[7]_inst_i_10_n_0 ),
        .I3(\B_OBUF[7]_inst_i_13_n_0 ),
        .I4(addr_rs2_OBUF[0]),
        .I5(\B_OBUF[7]_inst_i_12_n_0 ),
        .O(\seg2_OBUF[6]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFB3333333333F)) 
    \seg3_OBUF[0]_inst_i_1 
       (.I0(B_OBUF[2]),
        .I1(displayctrl_OBUF),
        .I2(B_OBUF[1]),
        .I3(B_OBUF[0]),
        .I4(\seg3_OBUF[6]_inst_i_2_n_0 ),
        .I5(\muxout_OBUF[3]_inst_i_2_n_0 ),
        .O(seg3_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFDD5555D)) 
    \seg3_OBUF[1]_inst_i_1 
       (.I0(displayctrl_OBUF),
        .I1(B_OBUF[0]),
        .I2(B_OBUF[1]),
        .I3(\seg3_OBUF[6]_inst_i_2_n_0 ),
        .I4(\muxout_OBUF[3]_inst_i_2_n_0 ),
        .O(seg3_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB3BBB3F3)) 
    \seg3_OBUF[2]_inst_i_1 
       (.I0(\muxout_OBUF[3]_inst_i_2_n_0 ),
        .I1(displayctrl_OBUF),
        .I2(B_OBUF[0]),
        .I3(B_OBUF[1]),
        .I4(B_OBUF[2]),
        .O(seg3_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h9486FFFF)) 
    \seg3_OBUF[3]_inst_i_1 
       (.I0(B_OBUF[1]),
        .I1(B_OBUF[0]),
        .I2(B_OBUF[2]),
        .I3(\muxout_OBUF[3]_inst_i_2_n_0 ),
        .I4(displayctrl_OBUF),
        .O(seg3_OBUF[3]));
  LUT6 #(
    .INIT(64'h557755575F775557)) 
    \seg3_OBUF[4]_inst_i_1 
       (.I0(displayctrl_OBUF),
        .I1(\seg3_OBUF[6]_inst_i_2_n_0 ),
        .I2(B_OBUF[0]),
        .I3(\muxout_OBUF[3]_inst_i_2_n_0 ),
        .I4(B_OBUF[1]),
        .I5(B_OBUF[2]),
        .O(seg3_OBUF[4]));
  LUT6 #(
    .INIT(64'h1AB1FFFF5011FFFF)) 
    \seg3_OBUF[5]_inst_i_1 
       (.I0(\muxout_OBUF[3]_inst_i_2_n_0 ),
        .I1(\seg3_OBUF[6]_inst_i_2_n_0 ),
        .I2(B_OBUF[1]),
        .I3(B_OBUF[0]),
        .I4(displayctrl_OBUF),
        .I5(B_OBUF[2]),
        .O(seg3_OBUF[5]));
  LUT6 #(
    .INIT(64'h010AFFFF5B00FFFF)) 
    \seg3_OBUF[6]_inst_i_1 
       (.I0(\muxout_OBUF[3]_inst_i_2_n_0 ),
        .I1(\seg3_OBUF[6]_inst_i_2_n_0 ),
        .I2(B_OBUF[1]),
        .I3(B_OBUF[0]),
        .I4(displayctrl_OBUF),
        .I5(B_OBUF[2]),
        .O(seg3_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00FF1B1B)) 
    \seg3_OBUF[6]_inst_i_2 
       (.I0(addr_rs2_OBUF[1]),
        .I1(\B_OBUF[2]_inst_i_2_n_0 ),
        .I2(\B_OBUF[2]_inst_i_3_n_0 ),
        .I3(\B_OBUF[2]_inst_i_4_n_0 ),
        .I4(\mem_reg[30][7]_1 ),
        .O(\seg3_OBUF[6]_inst_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    step_i_2
       (.I0(rst_IBUF),
        .O(p_0_in__0));
endmodule

module Generator
   (Q,
    SS,
    E,
    CLK);
  output [15:0]Q;
  input [0:0]SS;
  input [0:0]E;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire [15:0]Q;
  wire [0:0]SS;
  wire [0:0]p_0_out;

  LUT4 #(
    .INIT(16'h6996)) 
    \aleatorio_sal[0]_i_1 
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[10]),
        .I3(Q[15]),
        .O(p_0_out));
  FDSE #(
    .INIT(1'b1)) 
    \aleatorio_sal_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_0_out),
        .Q(Q[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \aleatorio_sal_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(Q[9]),
        .Q(Q[10]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \aleatorio_sal_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(Q[10]),
        .Q(Q[11]),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    \aleatorio_sal_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(Q[11]),
        .Q(Q[12]),
        .R(SS));
  FDSE #(
    .INIT(1'b1)) 
    \aleatorio_sal_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(Q[12]),
        .Q(Q[13]),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    \aleatorio_sal_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(Q[13]),
        .Q(Q[14]),
        .R(SS));
  FDSE #(
    .INIT(1'b1)) 
    \aleatorio_sal_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(Q[14]),
        .Q(Q[15]),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    \aleatorio_sal_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(Q[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \aleatorio_sal_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(Q[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \aleatorio_sal_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(Q[3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \aleatorio_sal_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(Q[4]),
        .R(SS));
  FDSE #(
    .INIT(1'b1)) 
    \aleatorio_sal_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(Q[5]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \aleatorio_sal_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(Q[6]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \aleatorio_sal_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(Q[7]),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    \aleatorio_sal_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(Q[8]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \aleatorio_sal_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(Q[8]),
        .Q(Q[9]),
        .R(SS));
endmodule

(* NotValidForBitStream *)
module TopFSM
   (clk,
    rst,
    ALUbotones,
    CambioModo,
    muxctrl,
    WEreg,
    WElfsr,
    addr_rd,
    addr_rs1,
    addr_rs2,
    aluctrl,
    displayctrl,
    LEDs,
    LFSRout,
    muxout,
    A,
    B,
    ALUout,
    seg0,
    seg1,
    seg2,
    seg3);
  input clk;
  input rst;
  input [3:0]ALUbotones;
  input CambioModo;
  output muxctrl;
  output WEreg;
  output WElfsr;
  output [4:0]addr_rd;
  output [4:0]addr_rs1;
  output [4:0]addr_rs2;
  output [1:0]aluctrl;
  output displayctrl;
  output [5:0]LEDs;
  output [15:0]LFSRout;
  output [15:0]muxout;
  output [15:0]A;
  output [15:0]B;
  output [15:0]ALUout;
  output [6:0]seg0;
  output [6:0]seg1;
  output [6:0]seg2;
  output [6:0]seg3;

  wire [15:0]A;
  wire ALU1_n_16;
  wire ALU1_n_17;
  wire ALU1_n_18;
  wire ALU1_n_19;
  wire ALU1_n_20;
  wire [3:0]ALUbotones;
  wire [3:0]ALUbotones_IBUF;
  wire [15:0]ALUout;
  wire [15:0]ALUout_OBUF;
  wire [15:0]A_OBUF;
  wire [15:0]B;
  wire [15:0]B_OBUF;
  wire Banco1_n_32;
  wire Banco1_n_40;
  wire Banco1_n_7;
  wire Banco1_n_70;
  wire Banco1_n_72;
  wire Banco1_n_73;
  wire Banco1_n_74;
  wire Banco1_n_75;
  wire Banco1_n_76;
  wire Banco1_n_77;
  wire Banco1_n_78;
  wire Banco1_n_79;
  wire Banco1_n_8;
  wire Banco1_n_80;
  wire Banco1_n_81;
  wire Banco1_n_82;
  wire Banco1_n_83;
  wire Banco1_n_84;
  wire Banco1_n_85;
  wire Banco1_n_86;
  wire Banco1_n_87;
  wire CambioModo;
  wire CambioModo_IBUF;
  wire FSM_n_22;
  wire FSM_n_42;
  wire FSM_n_43;
  wire FSM_n_44;
  wire FSM_n_51;
  wire FSM_n_52;
  wire FSM_n_58;
  wire FSM_n_59;
  wire FSM_n_60;
  wire FSM_n_61;
  wire FSM_n_62;
  wire FSM_n_63;
  wire FSM_n_64;
  wire FSM_n_65;
  wire FSM_n_66;
  wire FSM_n_67;
  wire FSM_n_68;
  wire FSM_n_69;
  wire FSM_n_70;
  wire FSM_n_71;
  wire FSM_n_72;
  wire FSM_n_73;
  wire FSM_n_74;
  wire FSM_n_75;
  wire FSM_n_76;
  wire FSM_n_77;
  wire FSM_n_78;
  wire FSM_n_79;
  wire FSM_n_82;
  wire FSM_n_84;
  wire FSM_n_85;
  wire FSM_n_86;
  wire FSM_n_87;
  wire FSM_n_88;
  wire FSM_n_89;
  wire FSM_n_90;
  wire FSM_n_91;
  wire [5:0]LEDs;
  wire [5:0]LEDs_OBUF;
  wire [15:0]LFSRout;
  wire [15:0]LFSRout_OBUF;
  wire WElfsr;
  wire WElfsr_OBUF;
  wire WEreg;
  wire WEreg_OBUF;
  wire [4:0]addr_rd;
  wire [4:0]addr_rd_OBUF;
  wire [4:0]addr_rs1;
  wire [4:0]addr_rs1_OBUF;
  wire [4:0]addr_rs2;
  wire [4:0]addr_rs2_OBUF;
  wire [1:0]aluctrl;
  wire [1:0]aluctrl_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire displayctrl;
  wire displayctrl_OBUF;
  wire mem;
  wire muxctrl;
  wire muxctrl_OBUF;
  wire [15:0]muxout;
  wire [15:0]muxout_OBUF;
  wire [15:0]p_0_in;
  wire p_0_in__0;
  wire [0:0]p_0_out__13;
  wire rst;
  wire rst_IBUF;
  wire [6:0]seg0;
  wire [6:0]seg0_OBUF;
  wire [6:0]seg1;
  wire [6:0]seg1_OBUF;
  wire [6:0]seg2;
  wire [6:0]seg2_OBUF;
  wire [6:0]seg3;
  wire [6:0]seg3_OBUF;

initial begin
 $sdf_annotate("Top_TB_time_synth.sdf",,,,"tool_control");
end
  ALU ALU1
       (.ALUbotones_IBUF(ALUbotones_IBUF[1:0]),
        .\ALUout_OBUF[12]_inst_i_1 ({Banco1_n_84,Banco1_n_85,Banco1_n_86,Banco1_n_87}),
        .\ALUout_OBUF[4]_inst_i_1 ({Banco1_n_76,Banco1_n_77,Banco1_n_78,Banco1_n_79}),
        .\ALUout_OBUF[8]_inst_i_1 ({Banco1_n_80,Banco1_n_81,Banco1_n_82,Banco1_n_83}),
        .A_OBUF(A_OBUF[14:0]),
        .DI(p_0_out__13),
        .S({Banco1_n_72,Banco1_n_73,Banco1_n_74,Banco1_n_75}),
        .\current_state_reg[1] (ALU1_n_16),
        .\current_state_reg[1]_0 (ALU1_n_17),
        .\current_state_reg[1]_1 (ALU1_n_18),
        .\current_state_reg[1]_2 (ALU1_n_19),
        .\current_state_reg[1]_3 (ALU1_n_20),
        .muxctrl_OBUF(muxctrl_OBUF),
        .p_0_in(p_0_in));
  IBUF \ALUbotones_IBUF[0]_inst 
       (.I(ALUbotones[0]),
        .O(ALUbotones_IBUF[0]));
  IBUF \ALUbotones_IBUF[1]_inst 
       (.I(ALUbotones[1]),
        .O(ALUbotones_IBUF[1]));
  IBUF \ALUbotones_IBUF[2]_inst 
       (.I(ALUbotones[2]),
        .O(ALUbotones_IBUF[2]));
  IBUF \ALUbotones_IBUF[3]_inst 
       (.I(ALUbotones[3]),
        .O(ALUbotones_IBUF[3]));
  OBUF \ALUout_OBUF[0]_inst 
       (.I(ALUout_OBUF[0]),
        .O(ALUout[0]));
  OBUF \ALUout_OBUF[10]_inst 
       (.I(ALUout_OBUF[10]),
        .O(ALUout[10]));
  OBUF \ALUout_OBUF[11]_inst 
       (.I(ALUout_OBUF[11]),
        .O(ALUout[11]));
  OBUF \ALUout_OBUF[12]_inst 
       (.I(ALUout_OBUF[12]),
        .O(ALUout[12]));
  OBUF \ALUout_OBUF[13]_inst 
       (.I(ALUout_OBUF[13]),
        .O(ALUout[13]));
  OBUF \ALUout_OBUF[14]_inst 
       (.I(ALUout_OBUF[14]),
        .O(ALUout[14]));
  OBUF \ALUout_OBUF[15]_inst 
       (.I(ALUout_OBUF[15]),
        .O(ALUout[15]));
  OBUF \ALUout_OBUF[1]_inst 
       (.I(ALUout_OBUF[1]),
        .O(ALUout[1]));
  OBUF \ALUout_OBUF[2]_inst 
       (.I(ALUout_OBUF[2]),
        .O(ALUout[2]));
  OBUF \ALUout_OBUF[3]_inst 
       (.I(ALUout_OBUF[3]),
        .O(ALUout[3]));
  OBUF \ALUout_OBUF[4]_inst 
       (.I(ALUout_OBUF[4]),
        .O(ALUout[4]));
  OBUF \ALUout_OBUF[5]_inst 
       (.I(ALUout_OBUF[5]),
        .O(ALUout[5]));
  OBUF \ALUout_OBUF[6]_inst 
       (.I(ALUout_OBUF[6]),
        .O(ALUout[6]));
  OBUF \ALUout_OBUF[7]_inst 
       (.I(ALUout_OBUF[7]),
        .O(ALUout[7]));
  OBUF \ALUout_OBUF[8]_inst 
       (.I(ALUout_OBUF[8]),
        .O(ALUout[8]));
  OBUF \ALUout_OBUF[9]_inst 
       (.I(ALUout_OBUF[9]),
        .O(ALUout[9]));
  OBUF \A_OBUF[0]_inst 
       (.I(A_OBUF[0]),
        .O(A[0]));
  OBUF \A_OBUF[10]_inst 
       (.I(A_OBUF[10]),
        .O(A[10]));
  OBUF \A_OBUF[11]_inst 
       (.I(A_OBUF[11]),
        .O(A[11]));
  OBUF \A_OBUF[12]_inst 
       (.I(A_OBUF[12]),
        .O(A[12]));
  OBUF \A_OBUF[13]_inst 
       (.I(A_OBUF[13]),
        .O(A[13]));
  OBUF \A_OBUF[14]_inst 
       (.I(A_OBUF[14]),
        .O(A[14]));
  OBUF \A_OBUF[15]_inst 
       (.I(A_OBUF[15]),
        .O(A[15]));
  OBUF \A_OBUF[1]_inst 
       (.I(A_OBUF[1]),
        .O(A[1]));
  OBUF \A_OBUF[2]_inst 
       (.I(A_OBUF[2]),
        .O(A[2]));
  OBUF \A_OBUF[3]_inst 
       (.I(A_OBUF[3]),
        .O(A[3]));
  OBUF \A_OBUF[4]_inst 
       (.I(A_OBUF[4]),
        .O(A[4]));
  OBUF \A_OBUF[5]_inst 
       (.I(A_OBUF[5]),
        .O(A[5]));
  OBUF \A_OBUF[6]_inst 
       (.I(A_OBUF[6]),
        .O(A[6]));
  OBUF \A_OBUF[7]_inst 
       (.I(A_OBUF[7]),
        .O(A[7]));
  OBUF \A_OBUF[8]_inst 
       (.I(A_OBUF[8]),
        .O(A[8]));
  OBUF \A_OBUF[9]_inst 
       (.I(A_OBUF[9]),
        .O(A[9]));
  OBUF \B_OBUF[0]_inst 
       (.I(B_OBUF[0]),
        .O(B[0]));
  OBUF \B_OBUF[10]_inst 
       (.I(B_OBUF[10]),
        .O(B[10]));
  OBUF \B_OBUF[11]_inst 
       (.I(B_OBUF[11]),
        .O(B[11]));
  OBUF \B_OBUF[12]_inst 
       (.I(B_OBUF[12]),
        .O(B[12]));
  OBUF \B_OBUF[13]_inst 
       (.I(B_OBUF[13]),
        .O(B[13]));
  OBUF \B_OBUF[14]_inst 
       (.I(B_OBUF[14]),
        .O(B[14]));
  OBUF \B_OBUF[15]_inst 
       (.I(B_OBUF[15]),
        .O(B[15]));
  OBUF \B_OBUF[1]_inst 
       (.I(B_OBUF[1]),
        .O(B[1]));
  OBUF \B_OBUF[2]_inst 
       (.I(B_OBUF[2]),
        .O(B[2]));
  OBUF \B_OBUF[3]_inst 
       (.I(B_OBUF[3]),
        .O(B[3]));
  OBUF \B_OBUF[4]_inst 
       (.I(B_OBUF[4]),
        .O(B[4]));
  OBUF \B_OBUF[5]_inst 
       (.I(B_OBUF[5]),
        .O(B[5]));
  OBUF \B_OBUF[6]_inst 
       (.I(B_OBUF[6]),
        .O(B[6]));
  OBUF \B_OBUF[7]_inst 
       (.I(B_OBUF[7]),
        .O(B[7]));
  OBUF \B_OBUF[8]_inst 
       (.I(B_OBUF[8]),
        .O(B[8]));
  OBUF \B_OBUF[9]_inst 
       (.I(B_OBUF[9]),
        .O(B[9]));
  Banco_Registros Banco1
       (.\ALUbotones[1] ({Banco1_n_76,Banco1_n_77,Banco1_n_78,Banco1_n_79}),
        .\ALUbotones[1]_0 ({Banco1_n_80,Banco1_n_81,Banco1_n_82,Banco1_n_83}),
        .ALUbotones_IBUF(ALUbotones_IBUF[2:0]),
        .\ALUout[3] (FSM_n_22),
        .ALUout_OBUF(ALUout_OBUF[3]),
        .A_OBUF(A_OBUF),
        .\A_OBUF[15]_inst_i_3_0 (FSM_n_58),
        .\A_OBUF[15]_inst_i_3_1 (FSM_n_82),
        .B_OBUF(B_OBUF),
        .\B_OBUF[1]_inst_i_2_0 (FSM_n_42),
        .\B_OBUF[1]_inst_i_2_1 (FSM_n_44),
        .CLK(clk_IBUF_BUFG),
        .D({muxout_OBUF[7],muxout_OBUF[3:0]}),
        .E(mem),
        .LEDs_OBUF(LEDs_OBUF[4]),
        .Q({LFSRout_OBUF[7],LFSRout_OBUF[3:0]}),
        .S({Banco1_n_72,Banco1_n_73,Banco1_n_74,Banco1_n_75}),
        .addr_rs1_OBUF(addr_rs1_OBUF[4:2]),
        .addr_rs2_OBUF(addr_rs2_OBUF[3:2]),
        .aluctrl_OBUF(aluctrl_OBUF[1]),
        .\current_state_reg[1] ({Banco1_n_84,Banco1_n_85,Banco1_n_86,Banco1_n_87}),
        .\current_state_reg[2] (Banco1_n_7),
        .\current_state_reg[2]_0 (Banco1_n_8),
        .\current_state_reg[2]_1 (Banco1_n_32),
        .\current_state_reg[2]_2 (Banco1_n_40),
        .\current_state_reg[2]_3 (Banco1_n_70),
        .displayctrl_OBUF(displayctrl_OBUF),
        .\mem_reg[10][15]_0 (FSM_n_71),
        .\mem_reg[11][15]_0 (FSM_n_70),
        .\mem_reg[12][15]_0 (FSM_n_77),
        .\mem_reg[13][15]_0 (FSM_n_62),
        .\mem_reg[14][15]_0 (FSM_n_75),
        .\mem_reg[15][15]_0 (FSM_n_74),
        .\mem_reg[16][15]_0 (FSM_n_65),
        .\mem_reg[17][0]_0 (FSM_n_87),
        .\mem_reg[18][15]_0 (FSM_n_69),
        .\mem_reg[19][0]_0 (FSM_n_89),
        .\mem_reg[1][15]_0 (FSM_n_66),
        .\mem_reg[20][15]_0 (FSM_n_73),
        .\mem_reg[21][15]_0 (FSM_n_72),
        .\mem_reg[22][15]_0 (FSM_n_52),
        .\mem_reg[23][15]_0 (FSM_n_51),
        .\mem_reg[24][15]_0 (FSM_n_64),
        .\mem_reg[25][0]_0 (FSM_n_86),
        .\mem_reg[26][15]_0 (FSM_n_68),
        .\mem_reg[27][15]_0 (FSM_n_67),
        .\mem_reg[28][15]_0 (FSM_n_60),
        .\mem_reg[29][15]_0 (FSM_n_63),
        .\mem_reg[2][15]_0 (FSM_n_59),
        .\mem_reg[30][0]_0 (ALU1_n_16),
        .\mem_reg[30][15]_0 ({muxout_OBUF[15:8],muxout_OBUF[6:4]}),
        .\mem_reg[30][15]_1 (FSM_n_79),
        .\mem_reg[30][1]_0 (ALU1_n_17),
        .\mem_reg[30][2]_0 (ALU1_n_18),
        .\mem_reg[30][3]_0 (ALU1_n_19),
        .\mem_reg[30][7]_0 (ALU1_n_20),
        .\mem_reg[30][7]_1 (FSM_n_43),
        .\mem_reg[31][15]_0 (FSM_n_61),
        .\mem_reg[3][0]_0 (FSM_n_90),
        .\mem_reg[4][0]_0 (FSM_n_85),
        .\mem_reg[5][0]_0 (FSM_n_91),
        .\mem_reg[6][15]_0 (FSM_n_76),
        .\mem_reg[7][0]_0 (FSM_n_84),
        .\mem_reg[8][0]_0 (FSM_n_88),
        .\mem_reg[9][15]_0 (FSM_n_78),
        .muxctrl_OBUF(muxctrl_OBUF),
        .p_0_in(p_0_in[3]),
        .p_0_in__0(p_0_in__0),
        .rst_IBUF(rst_IBUF),
        .seg0_OBUF(seg0_OBUF),
        .seg1_OBUF(seg1_OBUF),
        .seg2_OBUF(seg2_OBUF),
        .seg3_OBUF(seg3_OBUF));
  IBUF CambioModo_IBUF_inst
       (.I(CambioModo),
        .O(CambioModo_IBUF));
  fsm_mealy FSM
       (.ALUbotones_IBUF(ALUbotones_IBUF),
        .ALUout_OBUF({ALUout_OBUF[15:4],ALUout_OBUF[2:0]}),
        .A_OBUF({A_OBUF[15:4],A_OBUF[2:0]}),
        .B_OBUF({B_OBUF[13],B_OBUF[11],B_OBUF[9:7],B_OBUF[5:4],B_OBUF[2:0]}),
        .CLK(clk_IBUF_BUFG),
        .CambioModo_IBUF(CambioModo_IBUF),
        .DI(p_0_out__13),
        .E(mem),
        .LEDs_OBUF(LEDs_OBUF),
        .Q({LFSRout_OBUF[15:8],LFSRout_OBUF[6:4]}),
        .WEreg_OBUF(WEreg_OBUF),
        .addr_rd_OBUF(addr_rd_OBUF),
        .addr_rs1_OBUF(addr_rs1_OBUF),
        .addr_rs2_OBUF(addr_rs2_OBUF),
        .\aleatorio_sal_reg[15] ({muxout_OBUF[15:8],muxout_OBUF[6:4]}),
        .aluctrl_OBUF(aluctrl_OBUF),
        .\count_reg[1]_0 (FSM_n_42),
        .\current_state_reg[1]_0 (FSM_n_22),
        .\current_state_reg[1]_1 (FSM_n_44),
        .\current_state_reg[2]_0 (FSM_n_43),
        .\current_state_reg[3]_0 (WElfsr_OBUF),
        .displayctrl_OBUF(displayctrl_OBUF),
        .\mem_reg[30][10] (Banco1_n_32),
        .\mem_reg[30][12] (Banco1_n_70),
        .\mem_reg[30][14] (Banco1_n_8),
        .\mem_reg[30][15] (Banco1_n_7),
        .\mem_reg[30][6] (Banco1_n_40),
        .muxctrl_OBUF(muxctrl_OBUF),
        .\op_counter_reg[0]_0 (FSM_n_58),
        .\op_counter_reg[0]_1 (FSM_n_67),
        .\op_counter_reg[0]_10 (FSM_n_89),
        .\op_counter_reg[0]_2 (FSM_n_70),
        .\op_counter_reg[0]_3 (FSM_n_73),
        .\op_counter_reg[0]_4 (FSM_n_74),
        .\op_counter_reg[0]_5 (FSM_n_77),
        .\op_counter_reg[0]_6 (FSM_n_78),
        .\op_counter_reg[0]_7 (FSM_n_82),
        .\op_counter_reg[0]_8 (FSM_n_86),
        .\op_counter_reg[0]_9 (FSM_n_87),
        .\op_counter_reg[1]_0 (FSM_n_51),
        .\op_counter_reg[1]_1 (FSM_n_59),
        .\op_counter_reg[1]_2 (FSM_n_60),
        .\op_counter_reg[1]_3 (FSM_n_62),
        .\op_counter_reg[1]_4 (FSM_n_63),
        .\op_counter_reg[1]_5 (FSM_n_71),
        .\op_counter_reg[1]_6 (FSM_n_75),
        .\op_counter_reg[1]_7 (FSM_n_84),
        .\op_counter_reg[1]_8 (FSM_n_90),
        .p_0_in({p_0_in[15:4],p_0_in[2:0]}),
        .p_0_in__0(p_0_in__0),
        .rst_IBUF(rst_IBUF),
        .step_reg_0(FSM_n_52),
        .step_reg_1(FSM_n_61),
        .step_reg_10(FSM_n_85),
        .step_reg_11(FSM_n_88),
        .step_reg_12(FSM_n_91),
        .step_reg_2(FSM_n_64),
        .step_reg_3(FSM_n_65),
        .step_reg_4(FSM_n_66),
        .step_reg_5(FSM_n_68),
        .step_reg_6(FSM_n_69),
        .step_reg_7(FSM_n_72),
        .step_reg_8(FSM_n_76),
        .step_reg_9(FSM_n_79));
  OBUF \LEDs_OBUF[0]_inst 
       (.I(LEDs_OBUF[0]),
        .O(LEDs[0]));
  OBUF \LEDs_OBUF[1]_inst 
       (.I(LEDs_OBUF[1]),
        .O(LEDs[1]));
  OBUF \LEDs_OBUF[2]_inst 
       (.I(LEDs_OBUF[2]),
        .O(LEDs[2]));
  OBUF \LEDs_OBUF[3]_inst 
       (.I(LEDs_OBUF[3]),
        .O(LEDs[3]));
  OBUF \LEDs_OBUF[4]_inst 
       (.I(LEDs_OBUF[4]),
        .O(LEDs[4]));
  OBUF \LEDs_OBUF[5]_inst 
       (.I(LEDs_OBUF[5]),
        .O(LEDs[5]));
  Generator LFSR1
       (.CLK(clk_IBUF_BUFG),
        .E(WElfsr_OBUF),
        .Q(LFSRout_OBUF),
        .SS(p_0_in__0));
  OBUF \LFSRout_OBUF[0]_inst 
       (.I(LFSRout_OBUF[0]),
        .O(LFSRout[0]));
  OBUF \LFSRout_OBUF[10]_inst 
       (.I(LFSRout_OBUF[10]),
        .O(LFSRout[10]));
  OBUF \LFSRout_OBUF[11]_inst 
       (.I(LFSRout_OBUF[11]),
        .O(LFSRout[11]));
  OBUF \LFSRout_OBUF[12]_inst 
       (.I(LFSRout_OBUF[12]),
        .O(LFSRout[12]));
  OBUF \LFSRout_OBUF[13]_inst 
       (.I(LFSRout_OBUF[13]),
        .O(LFSRout[13]));
  OBUF \LFSRout_OBUF[14]_inst 
       (.I(LFSRout_OBUF[14]),
        .O(LFSRout[14]));
  OBUF \LFSRout_OBUF[15]_inst 
       (.I(LFSRout_OBUF[15]),
        .O(LFSRout[15]));
  OBUF \LFSRout_OBUF[1]_inst 
       (.I(LFSRout_OBUF[1]),
        .O(LFSRout[1]));
  OBUF \LFSRout_OBUF[2]_inst 
       (.I(LFSRout_OBUF[2]),
        .O(LFSRout[2]));
  OBUF \LFSRout_OBUF[3]_inst 
       (.I(LFSRout_OBUF[3]),
        .O(LFSRout[3]));
  OBUF \LFSRout_OBUF[4]_inst 
       (.I(LFSRout_OBUF[4]),
        .O(LFSRout[4]));
  OBUF \LFSRout_OBUF[5]_inst 
       (.I(LFSRout_OBUF[5]),
        .O(LFSRout[5]));
  OBUF \LFSRout_OBUF[6]_inst 
       (.I(LFSRout_OBUF[6]),
        .O(LFSRout[6]));
  OBUF \LFSRout_OBUF[7]_inst 
       (.I(LFSRout_OBUF[7]),
        .O(LFSRout[7]));
  OBUF \LFSRout_OBUF[8]_inst 
       (.I(LFSRout_OBUF[8]),
        .O(LFSRout[8]));
  OBUF \LFSRout_OBUF[9]_inst 
       (.I(LFSRout_OBUF[9]),
        .O(LFSRout[9]));
  OBUF WElfsr_OBUF_inst
       (.I(WElfsr_OBUF),
        .O(WElfsr));
  OBUF WEreg_OBUF_inst
       (.I(WEreg_OBUF),
        .O(WEreg));
  OBUF \addr_rd_OBUF[0]_inst 
       (.I(addr_rd_OBUF[0]),
        .O(addr_rd[0]));
  OBUF \addr_rd_OBUF[1]_inst 
       (.I(addr_rd_OBUF[1]),
        .O(addr_rd[1]));
  OBUF \addr_rd_OBUF[2]_inst 
       (.I(addr_rd_OBUF[2]),
        .O(addr_rd[2]));
  OBUF \addr_rd_OBUF[3]_inst 
       (.I(addr_rd_OBUF[3]),
        .O(addr_rd[3]));
  OBUF \addr_rd_OBUF[4]_inst 
       (.I(addr_rd_OBUF[4]),
        .O(addr_rd[4]));
  OBUF \addr_rs1_OBUF[0]_inst 
       (.I(addr_rs1_OBUF[0]),
        .O(addr_rs1[0]));
  OBUF \addr_rs1_OBUF[1]_inst 
       (.I(addr_rs1_OBUF[1]),
        .O(addr_rs1[1]));
  OBUF \addr_rs1_OBUF[2]_inst 
       (.I(addr_rs1_OBUF[2]),
        .O(addr_rs1[2]));
  OBUF \addr_rs1_OBUF[3]_inst 
       (.I(addr_rs1_OBUF[3]),
        .O(addr_rs1[3]));
  OBUF \addr_rs1_OBUF[4]_inst 
       (.I(addr_rs1_OBUF[4]),
        .O(addr_rs1[4]));
  OBUF \addr_rs2_OBUF[0]_inst 
       (.I(addr_rs2_OBUF[0]),
        .O(addr_rs2[0]));
  OBUF \addr_rs2_OBUF[1]_inst 
       (.I(addr_rs2_OBUF[1]),
        .O(addr_rs2[1]));
  OBUF \addr_rs2_OBUF[2]_inst 
       (.I(addr_rs2_OBUF[2]),
        .O(addr_rs2[2]));
  OBUF \addr_rs2_OBUF[3]_inst 
       (.I(addr_rs2_OBUF[3]),
        .O(addr_rs2[3]));
  OBUF \addr_rs2_OBUF[4]_inst 
       (.I(addr_rs2_OBUF[4]),
        .O(addr_rs2[4]));
  OBUF \aluctrl_OBUF[0]_inst 
       (.I(aluctrl_OBUF[0]),
        .O(aluctrl[0]));
  OBUF \aluctrl_OBUF[1]_inst 
       (.I(aluctrl_OBUF[1]),
        .O(aluctrl[1]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF displayctrl_OBUF_inst
       (.I(displayctrl_OBUF),
        .O(displayctrl));
  OBUF muxctrl_OBUF_inst
       (.I(muxctrl_OBUF),
        .O(muxctrl));
  OBUF \muxout_OBUF[0]_inst 
       (.I(muxout_OBUF[0]),
        .O(muxout[0]));
  OBUF \muxout_OBUF[10]_inst 
       (.I(muxout_OBUF[10]),
        .O(muxout[10]));
  OBUF \muxout_OBUF[11]_inst 
       (.I(muxout_OBUF[11]),
        .O(muxout[11]));
  OBUF \muxout_OBUF[12]_inst 
       (.I(muxout_OBUF[12]),
        .O(muxout[12]));
  OBUF \muxout_OBUF[13]_inst 
       (.I(muxout_OBUF[13]),
        .O(muxout[13]));
  OBUF \muxout_OBUF[14]_inst 
       (.I(muxout_OBUF[14]),
        .O(muxout[14]));
  OBUF \muxout_OBUF[15]_inst 
       (.I(muxout_OBUF[15]),
        .O(muxout[15]));
  OBUF \muxout_OBUF[1]_inst 
       (.I(muxout_OBUF[1]),
        .O(muxout[1]));
  OBUF \muxout_OBUF[2]_inst 
       (.I(muxout_OBUF[2]),
        .O(muxout[2]));
  OBUF \muxout_OBUF[3]_inst 
       (.I(muxout_OBUF[3]),
        .O(muxout[3]));
  OBUF \muxout_OBUF[4]_inst 
       (.I(muxout_OBUF[4]),
        .O(muxout[4]));
  OBUF \muxout_OBUF[5]_inst 
       (.I(muxout_OBUF[5]),
        .O(muxout[5]));
  OBUF \muxout_OBUF[6]_inst 
       (.I(muxout_OBUF[6]),
        .O(muxout[6]));
  OBUF \muxout_OBUF[7]_inst 
       (.I(muxout_OBUF[7]),
        .O(muxout[7]));
  OBUF \muxout_OBUF[8]_inst 
       (.I(muxout_OBUF[8]),
        .O(muxout[8]));
  OBUF \muxout_OBUF[9]_inst 
       (.I(muxout_OBUF[9]),
        .O(muxout[9]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF \seg0_OBUF[0]_inst 
       (.I(seg0_OBUF[0]),
        .O(seg0[0]));
  OBUF \seg0_OBUF[1]_inst 
       (.I(seg0_OBUF[1]),
        .O(seg0[1]));
  OBUF \seg0_OBUF[2]_inst 
       (.I(seg0_OBUF[2]),
        .O(seg0[2]));
  OBUF \seg0_OBUF[3]_inst 
       (.I(seg0_OBUF[3]),
        .O(seg0[3]));
  OBUF \seg0_OBUF[4]_inst 
       (.I(seg0_OBUF[4]),
        .O(seg0[4]));
  OBUF \seg0_OBUF[5]_inst 
       (.I(seg0_OBUF[5]),
        .O(seg0[5]));
  OBUF \seg0_OBUF[6]_inst 
       (.I(seg0_OBUF[6]),
        .O(seg0[6]));
  OBUF \seg1_OBUF[0]_inst 
       (.I(seg1_OBUF[0]),
        .O(seg1[0]));
  OBUF \seg1_OBUF[1]_inst 
       (.I(seg1_OBUF[1]),
        .O(seg1[1]));
  OBUF \seg1_OBUF[2]_inst 
       (.I(seg1_OBUF[2]),
        .O(seg1[2]));
  OBUF \seg1_OBUF[3]_inst 
       (.I(seg1_OBUF[3]),
        .O(seg1[3]));
  OBUF \seg1_OBUF[4]_inst 
       (.I(seg1_OBUF[4]),
        .O(seg1[4]));
  OBUF \seg1_OBUF[5]_inst 
       (.I(seg1_OBUF[5]),
        .O(seg1[5]));
  OBUF \seg1_OBUF[6]_inst 
       (.I(seg1_OBUF[6]),
        .O(seg1[6]));
  OBUF \seg2_OBUF[0]_inst 
       (.I(seg2_OBUF[0]),
        .O(seg2[0]));
  OBUF \seg2_OBUF[1]_inst 
       (.I(seg2_OBUF[1]),
        .O(seg2[1]));
  OBUF \seg2_OBUF[2]_inst 
       (.I(seg2_OBUF[2]),
        .O(seg2[2]));
  OBUF \seg2_OBUF[3]_inst 
       (.I(seg2_OBUF[3]),
        .O(seg2[3]));
  OBUF \seg2_OBUF[4]_inst 
       (.I(seg2_OBUF[4]),
        .O(seg2[4]));
  OBUF \seg2_OBUF[5]_inst 
       (.I(seg2_OBUF[5]),
        .O(seg2[5]));
  OBUF \seg2_OBUF[6]_inst 
       (.I(seg2_OBUF[6]),
        .O(seg2[6]));
  OBUF \seg3_OBUF[0]_inst 
       (.I(seg3_OBUF[0]),
        .O(seg3[0]));
  OBUF \seg3_OBUF[1]_inst 
       (.I(seg3_OBUF[1]),
        .O(seg3[1]));
  OBUF \seg3_OBUF[2]_inst 
       (.I(seg3_OBUF[2]),
        .O(seg3[2]));
  OBUF \seg3_OBUF[3]_inst 
       (.I(seg3_OBUF[3]),
        .O(seg3[3]));
  OBUF \seg3_OBUF[4]_inst 
       (.I(seg3_OBUF[4]),
        .O(seg3[4]));
  OBUF \seg3_OBUF[5]_inst 
       (.I(seg3_OBUF[5]),
        .O(seg3[5]));
  OBUF \seg3_OBUF[6]_inst 
       (.I(seg3_OBUF[6]),
        .O(seg3[6]));
endmodule

module fsm_mealy
   (displayctrl_OBUF,
    ALUout_OBUF,
    LEDs_OBUF,
    \current_state_reg[1]_0 ,
    aluctrl_OBUF,
    \aleatorio_sal_reg[15] ,
    muxctrl_OBUF,
    addr_rs2_OBUF,
    \count_reg[1]_0 ,
    \current_state_reg[2]_0 ,
    \current_state_reg[1]_1 ,
    E,
    addr_rd_OBUF,
    \op_counter_reg[1]_0 ,
    step_reg_0,
    addr_rs1_OBUF,
    \op_counter_reg[0]_0 ,
    \op_counter_reg[1]_1 ,
    \op_counter_reg[1]_2 ,
    step_reg_1,
    \op_counter_reg[1]_3 ,
    \op_counter_reg[1]_4 ,
    step_reg_2,
    step_reg_3,
    step_reg_4,
    \op_counter_reg[0]_1 ,
    step_reg_5,
    step_reg_6,
    \op_counter_reg[0]_2 ,
    \op_counter_reg[1]_5 ,
    step_reg_7,
    \op_counter_reg[0]_3 ,
    \op_counter_reg[0]_4 ,
    \op_counter_reg[1]_6 ,
    step_reg_8,
    \op_counter_reg[0]_5 ,
    \op_counter_reg[0]_6 ,
    step_reg_9,
    WEreg_OBUF,
    DI,
    \op_counter_reg[0]_7 ,
    \current_state_reg[3]_0 ,
    \op_counter_reg[1]_7 ,
    step_reg_10,
    \op_counter_reg[0]_8 ,
    \op_counter_reg[0]_9 ,
    step_reg_11,
    \op_counter_reg[0]_10 ,
    \op_counter_reg[1]_8 ,
    step_reg_12,
    CLK,
    p_0_in__0,
    CambioModo_IBUF,
    rst_IBUF,
    B_OBUF,
    A_OBUF,
    p_0_in,
    Q,
    \mem_reg[30][15] ,
    \mem_reg[30][14] ,
    \mem_reg[30][12] ,
    \mem_reg[30][10] ,
    \mem_reg[30][6] ,
    ALUbotones_IBUF);
  output displayctrl_OBUF;
  output [14:0]ALUout_OBUF;
  output [5:0]LEDs_OBUF;
  output \current_state_reg[1]_0 ;
  output [1:0]aluctrl_OBUF;
  output [10:0]\aleatorio_sal_reg[15] ;
  output muxctrl_OBUF;
  output [4:0]addr_rs2_OBUF;
  output \count_reg[1]_0 ;
  output \current_state_reg[2]_0 ;
  output \current_state_reg[1]_1 ;
  output [0:0]E;
  output [4:0]addr_rd_OBUF;
  output [0:0]\op_counter_reg[1]_0 ;
  output [0:0]step_reg_0;
  output [4:0]addr_rs1_OBUF;
  output \op_counter_reg[0]_0 ;
  output [0:0]\op_counter_reg[1]_1 ;
  output [0:0]\op_counter_reg[1]_2 ;
  output [0:0]step_reg_1;
  output [0:0]\op_counter_reg[1]_3 ;
  output [0:0]\op_counter_reg[1]_4 ;
  output [0:0]step_reg_2;
  output [0:0]step_reg_3;
  output [0:0]step_reg_4;
  output [0:0]\op_counter_reg[0]_1 ;
  output [0:0]step_reg_5;
  output [0:0]step_reg_6;
  output [0:0]\op_counter_reg[0]_2 ;
  output [0:0]\op_counter_reg[1]_5 ;
  output [0:0]step_reg_7;
  output [0:0]\op_counter_reg[0]_3 ;
  output [0:0]\op_counter_reg[0]_4 ;
  output [0:0]\op_counter_reg[1]_6 ;
  output [0:0]step_reg_8;
  output [0:0]\op_counter_reg[0]_5 ;
  output [0:0]\op_counter_reg[0]_6 ;
  output [0:0]step_reg_9;
  output WEreg_OBUF;
  output [0:0]DI;
  output \op_counter_reg[0]_7 ;
  output [0:0]\current_state_reg[3]_0 ;
  output [0:0]\op_counter_reg[1]_7 ;
  output [0:0]step_reg_10;
  output [0:0]\op_counter_reg[0]_8 ;
  output [0:0]\op_counter_reg[0]_9 ;
  output [0:0]step_reg_11;
  output [0:0]\op_counter_reg[0]_10 ;
  output [0:0]\op_counter_reg[1]_8 ;
  output [0:0]step_reg_12;
  input CLK;
  input p_0_in__0;
  input CambioModo_IBUF;
  input rst_IBUF;
  input [9:0]B_OBUF;
  input [14:0]A_OBUF;
  input [14:0]p_0_in;
  input [10:0]Q;
  input \mem_reg[30][15] ;
  input \mem_reg[30][14] ;
  input \mem_reg[30][12] ;
  input \mem_reg[30][10] ;
  input \mem_reg[30][6] ;
  input [3:0]ALUbotones_IBUF;

  wire [3:0]ALUbotones_IBUF;
  wire [14:0]ALUout_OBUF;
  wire [14:0]A_OBUF;
  wire [9:0]B_OBUF;
  wire CLK;
  wire CambioModo_IBUF;
  wire [0:0]DI;
  wire [0:0]E;
  wire [5:0]LEDs_OBUF;
  wire [10:0]Q;
  wire WEreg_OBUF;
  wire [4:0]addr_rd_OBUF;
  wire \addr_rd_OBUF[3]_inst_i_2_n_0 ;
  wire \addr_rd_OBUF[3]_inst_i_3_n_0 ;
  wire \addr_rd_OBUF[3]_inst_i_4_n_0 ;
  wire \addr_rd_OBUF[3]_inst_i_5_n_0 ;
  wire \addr_rd_OBUF[4]_inst_i_2_n_0 ;
  wire [4:0]addr_rs1_OBUF;
  wire [4:0]addr_rs2_OBUF;
  wire \addr_rs2_OBUF[0]_inst_i_3_n_0 ;
  wire \addr_rs2_OBUF[1]_inst_i_3_n_0 ;
  wire \addr_rs2_OBUF[1]_inst_i_4_n_0 ;
  wire \addr_rs2_OBUF[2]_inst_i_2_n_0 ;
  wire \addr_rs2_OBUF[2]_inst_i_3_n_0 ;
  wire \addr_rs2_OBUF[2]_inst_i_4_n_0 ;
  wire \addr_rs2_OBUF[3]_inst_i_2_n_0 ;
  wire \addr_rs2_OBUF[3]_inst_i_3_n_0 ;
  wire \addr_rs2_OBUF[3]_inst_i_4_n_0 ;
  wire \addr_rs2_OBUF[3]_inst_i_5_n_0 ;
  wire \addr_rs2_OBUF[4]_inst_i_3_n_0 ;
  wire \addr_rs2_OBUF[4]_inst_i_4_n_0 ;
  wire \addr_rs2_OBUF[4]_inst_i_5_n_0 ;
  wire [10:0]\aleatorio_sal_reg[15] ;
  wire [1:0]aluctrl_OBUF;
  wire [5:0]count;
  wire \count[5]_i_1_n_0 ;
  wire \count_reg[1]_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire [24:0]counttimer1;
  wire counttimer10;
  wire \counttimer10_inferred__0/i__carry__0_n_0 ;
  wire \counttimer10_inferred__0/i__carry__0_n_1 ;
  wire \counttimer10_inferred__0/i__carry__0_n_2 ;
  wire \counttimer10_inferred__0/i__carry__0_n_3 ;
  wire \counttimer10_inferred__0/i__carry__1_n_0 ;
  wire \counttimer10_inferred__0/i__carry__1_n_1 ;
  wire \counttimer10_inferred__0/i__carry__1_n_2 ;
  wire \counttimer10_inferred__0/i__carry__1_n_3 ;
  wire \counttimer10_inferred__0/i__carry__2_n_0 ;
  wire \counttimer10_inferred__0/i__carry__2_n_1 ;
  wire \counttimer10_inferred__0/i__carry__2_n_2 ;
  wire \counttimer10_inferred__0/i__carry__2_n_3 ;
  wire \counttimer10_inferred__0/i__carry__3_n_0 ;
  wire \counttimer10_inferred__0/i__carry__3_n_1 ;
  wire \counttimer10_inferred__0/i__carry__3_n_2 ;
  wire \counttimer10_inferred__0/i__carry__3_n_3 ;
  wire \counttimer10_inferred__0/i__carry__4_n_1 ;
  wire \counttimer10_inferred__0/i__carry__4_n_2 ;
  wire \counttimer10_inferred__0/i__carry__4_n_3 ;
  wire \counttimer10_inferred__0/i__carry_n_0 ;
  wire \counttimer10_inferred__0/i__carry_n_1 ;
  wire \counttimer10_inferred__0/i__carry_n_2 ;
  wire \counttimer10_inferred__0/i__carry_n_3 ;
  wire \counttimer1[24]_i_3_n_0 ;
  wire \counttimer1[24]_i_4_n_0 ;
  wire \counttimer1[24]_i_5_n_0 ;
  wire \counttimer1[24]_i_6_n_0 ;
  wire \counttimer1[24]_i_7_n_0 ;
  wire \counttimer1[24]_i_8_n_0 ;
  wire \counttimer1_reg_n_0_[0] ;
  wire \counttimer1_reg_n_0_[10] ;
  wire \counttimer1_reg_n_0_[11] ;
  wire \counttimer1_reg_n_0_[12] ;
  wire \counttimer1_reg_n_0_[13] ;
  wire \counttimer1_reg_n_0_[14] ;
  wire \counttimer1_reg_n_0_[15] ;
  wire \counttimer1_reg_n_0_[16] ;
  wire \counttimer1_reg_n_0_[17] ;
  wire \counttimer1_reg_n_0_[18] ;
  wire \counttimer1_reg_n_0_[19] ;
  wire \counttimer1_reg_n_0_[1] ;
  wire \counttimer1_reg_n_0_[20] ;
  wire \counttimer1_reg_n_0_[21] ;
  wire \counttimer1_reg_n_0_[22] ;
  wire \counttimer1_reg_n_0_[23] ;
  wire \counttimer1_reg_n_0_[24] ;
  wire \counttimer1_reg_n_0_[2] ;
  wire \counttimer1_reg_n_0_[3] ;
  wire \counttimer1_reg_n_0_[4] ;
  wire \counttimer1_reg_n_0_[5] ;
  wire \counttimer1_reg_n_0_[6] ;
  wire \counttimer1_reg_n_0_[7] ;
  wire \counttimer1_reg_n_0_[8] ;
  wire \counttimer1_reg_n_0_[9] ;
  wire [24:0]counttimer2;
  wire counttimer20_carry__0_n_0;
  wire counttimer20_carry__0_n_1;
  wire counttimer20_carry__0_n_2;
  wire counttimer20_carry__0_n_3;
  wire counttimer20_carry__0_n_4;
  wire counttimer20_carry__0_n_5;
  wire counttimer20_carry__0_n_6;
  wire counttimer20_carry__0_n_7;
  wire counttimer20_carry__1_n_0;
  wire counttimer20_carry__1_n_1;
  wire counttimer20_carry__1_n_2;
  wire counttimer20_carry__1_n_3;
  wire counttimer20_carry__1_n_4;
  wire counttimer20_carry__1_n_5;
  wire counttimer20_carry__1_n_6;
  wire counttimer20_carry__1_n_7;
  wire counttimer20_carry__2_n_0;
  wire counttimer20_carry__2_n_1;
  wire counttimer20_carry__2_n_2;
  wire counttimer20_carry__2_n_3;
  wire counttimer20_carry__2_n_4;
  wire counttimer20_carry__2_n_5;
  wire counttimer20_carry__2_n_6;
  wire counttimer20_carry__2_n_7;
  wire counttimer20_carry__3_n_0;
  wire counttimer20_carry__3_n_1;
  wire counttimer20_carry__3_n_2;
  wire counttimer20_carry__3_n_3;
  wire counttimer20_carry__3_n_4;
  wire counttimer20_carry__3_n_5;
  wire counttimer20_carry__3_n_6;
  wire counttimer20_carry__3_n_7;
  wire counttimer20_carry__4_n_1;
  wire counttimer20_carry__4_n_2;
  wire counttimer20_carry__4_n_3;
  wire counttimer20_carry__4_n_4;
  wire counttimer20_carry__4_n_5;
  wire counttimer20_carry__4_n_6;
  wire counttimer20_carry__4_n_7;
  wire counttimer20_carry_n_0;
  wire counttimer20_carry_n_1;
  wire counttimer20_carry_n_2;
  wire counttimer20_carry_n_3;
  wire counttimer20_carry_n_4;
  wire counttimer20_carry_n_5;
  wire counttimer20_carry_n_6;
  wire counttimer20_carry_n_7;
  wire \counttimer2[24]_i_1_n_0 ;
  wire \counttimer2[24]_i_3_n_0 ;
  wire \counttimer2[24]_i_4_n_0 ;
  wire \counttimer2[24]_i_5_n_0 ;
  wire \counttimer2[24]_i_6_n_0 ;
  wire \counttimer2[24]_i_7_n_0 ;
  wire \counttimer2_reg_n_0_[0] ;
  wire \counttimer2_reg_n_0_[10] ;
  wire \counttimer2_reg_n_0_[11] ;
  wire \counttimer2_reg_n_0_[12] ;
  wire \counttimer2_reg_n_0_[13] ;
  wire \counttimer2_reg_n_0_[14] ;
  wire \counttimer2_reg_n_0_[15] ;
  wire \counttimer2_reg_n_0_[16] ;
  wire \counttimer2_reg_n_0_[17] ;
  wire \counttimer2_reg_n_0_[18] ;
  wire \counttimer2_reg_n_0_[19] ;
  wire \counttimer2_reg_n_0_[1] ;
  wire \counttimer2_reg_n_0_[20] ;
  wire \counttimer2_reg_n_0_[21] ;
  wire \counttimer2_reg_n_0_[22] ;
  wire \counttimer2_reg_n_0_[23] ;
  wire \counttimer2_reg_n_0_[24] ;
  wire \counttimer2_reg_n_0_[2] ;
  wire \counttimer2_reg_n_0_[3] ;
  wire \counttimer2_reg_n_0_[4] ;
  wire \counttimer2_reg_n_0_[5] ;
  wire \counttimer2_reg_n_0_[6] ;
  wire \counttimer2_reg_n_0_[7] ;
  wire \counttimer2_reg_n_0_[8] ;
  wire \counttimer2_reg_n_0_[9] ;
  wire [3:0]current_state;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state[0]_i_3_n_0 ;
  wire \current_state[0]_i_4_n_0 ;
  wire \current_state[1]_i_2_n_0 ;
  wire \current_state[1]_i_3_n_0 ;
  wire \current_state[1]_i_4_n_0 ;
  wire \current_state[2]_i_2_n_0 ;
  wire \current_state[2]_i_3_n_0 ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[1]_1 ;
  wire \current_state_reg[2]_0 ;
  wire [0:0]\current_state_reg[3]_0 ;
  wire [24:1]data0;
  wire displayctrl_OBUF;
  wire done;
  wire done0;
  wire done_i_2_n_0;
  wire \mem[11][15]_i_2_n_0 ;
  wire \mem[12][15]_i_2_n_0 ;
  wire \mem[17][15]_i_2_n_0 ;
  wire \mem[18][15]_i_2_n_0 ;
  wire \mem[20][15]_i_2_n_0 ;
  wire \mem[28][15]_i_2_n_0 ;
  wire \mem[2][15]_i_2_n_0 ;
  wire \mem[4][15]_i_2_n_0 ;
  wire \mem_reg[30][10] ;
  wire \mem_reg[30][12] ;
  wire \mem_reg[30][14] ;
  wire \mem_reg[30][15] ;
  wire \mem_reg[30][6] ;
  wire muxctrl_OBUF;
  wire [3:0]next_state;
  wire [3:0]op_counter;
  wire op_counter0;
  wire \op_counter[0]_i_1_n_0 ;
  wire \op_counter[1]_i_1_n_0 ;
  wire \op_counter[2]_i_1_n_0 ;
  wire \op_counter[3]_i_2_n_0 ;
  wire \op_counter_reg[0]_0 ;
  wire [0:0]\op_counter_reg[0]_1 ;
  wire [0:0]\op_counter_reg[0]_10 ;
  wire [0:0]\op_counter_reg[0]_2 ;
  wire [0:0]\op_counter_reg[0]_3 ;
  wire [0:0]\op_counter_reg[0]_4 ;
  wire [0:0]\op_counter_reg[0]_5 ;
  wire [0:0]\op_counter_reg[0]_6 ;
  wire \op_counter_reg[0]_7 ;
  wire [0:0]\op_counter_reg[0]_8 ;
  wire [0:0]\op_counter_reg[0]_9 ;
  wire [0:0]\op_counter_reg[1]_0 ;
  wire [0:0]\op_counter_reg[1]_1 ;
  wire [0:0]\op_counter_reg[1]_2 ;
  wire [0:0]\op_counter_reg[1]_3 ;
  wire [0:0]\op_counter_reg[1]_4 ;
  wire [0:0]\op_counter_reg[1]_5 ;
  wire [0:0]\op_counter_reg[1]_6 ;
  wire [0:0]\op_counter_reg[1]_7 ;
  wire [0:0]\op_counter_reg[1]_8 ;
  wire [14:0]p_0_in;
  wire p_0_in__0;
  wire rdy;
  wire rdy4_out;
  wire rdy_reg_i_1_n_0;
  wire rst_IBUF;
  wire step;
  wire [0:0]step_reg_0;
  wire [0:0]step_reg_1;
  wire [0:0]step_reg_10;
  wire [0:0]step_reg_11;
  wire [0:0]step_reg_12;
  wire [0:0]step_reg_2;
  wire [0:0]step_reg_3;
  wire [0:0]step_reg_4;
  wire [0:0]step_reg_5;
  wire [0:0]step_reg_6;
  wire [0:0]step_reg_7;
  wire [0:0]step_reg_8;
  wire [0:0]step_reg_9;
  wire step_reg_n_0;
  wire timer15_out;
  wire timer1_reg_n_0;
  wire timer2;
  wire timer20;
  wire timer2_i_2_n_0;
  wire timer2_i_3_n_0;
  wire timer2_i_4_n_0;
  wire timer2_i_5_n_0;
  wire timer2_i_6_n_0;
  wire timer2_i_7_n_0;
  wire [3:3]\NLW_counttimer10_inferred__0/i__carry__4_CO_UNCONNECTED ;
  wire [3:3]NLW_counttimer20_carry__4_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFF80FC80FC80FC)) 
    \ALUout_OBUF[0]_inst_i_1 
       (.I0(LEDs_OBUF[4]),
        .I1(B_OBUF[0]),
        .I2(A_OBUF[0]),
        .I3(\current_state_reg[1]_0 ),
        .I4(p_0_in[0]),
        .I5(aluctrl_OBUF[1]),
        .O(ALUout_OBUF[0]));
  LUT6 #(
    .INIT(64'hFFFF40F540F540F5)) 
    \ALUout_OBUF[10]_inst_i_1 
       (.I0(\mem_reg[30][10] ),
        .I1(LEDs_OBUF[4]),
        .I2(A_OBUF[9]),
        .I3(\current_state_reg[1]_0 ),
        .I4(p_0_in[9]),
        .I5(aluctrl_OBUF[1]),
        .O(ALUout_OBUF[9]));
  LUT6 #(
    .INIT(64'hFFFF80FC80FC80FC)) 
    \ALUout_OBUF[11]_inst_i_1 
       (.I0(LEDs_OBUF[4]),
        .I1(B_OBUF[8]),
        .I2(A_OBUF[10]),
        .I3(\current_state_reg[1]_0 ),
        .I4(p_0_in[10]),
        .I5(aluctrl_OBUF[1]),
        .O(ALUout_OBUF[10]));
  LUT6 #(
    .INIT(64'hFFFF20F320F320F3)) 
    \ALUout_OBUF[12]_inst_i_1 
       (.I0(LEDs_OBUF[4]),
        .I1(\mem_reg[30][12] ),
        .I2(A_OBUF[11]),
        .I3(\current_state_reg[1]_0 ),
        .I4(p_0_in[11]),
        .I5(aluctrl_OBUF[1]),
        .O(ALUout_OBUF[11]));
  LUT6 #(
    .INIT(64'hFFFF80FC80FC80FC)) 
    \ALUout_OBUF[13]_inst_i_1 
       (.I0(LEDs_OBUF[4]),
        .I1(B_OBUF[9]),
        .I2(A_OBUF[12]),
        .I3(\current_state_reg[1]_0 ),
        .I4(p_0_in[12]),
        .I5(aluctrl_OBUF[1]),
        .O(ALUout_OBUF[12]));
  LUT6 #(
    .INIT(64'hFFFF40F540F540F5)) 
    \ALUout_OBUF[14]_inst_i_1 
       (.I0(\mem_reg[30][14] ),
        .I1(LEDs_OBUF[4]),
        .I2(A_OBUF[13]),
        .I3(\current_state_reg[1]_0 ),
        .I4(p_0_in[13]),
        .I5(aluctrl_OBUF[1]),
        .O(ALUout_OBUF[13]));
  LUT6 #(
    .INIT(64'hFFFF50D550D550D5)) 
    \ALUout_OBUF[15]_inst_i_1 
       (.I0(\current_state_reg[1]_0 ),
        .I1(LEDs_OBUF[4]),
        .I2(A_OBUF[14]),
        .I3(\mem_reg[30][15] ),
        .I4(p_0_in[14]),
        .I5(aluctrl_OBUF[1]),
        .O(ALUout_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ALUout_OBUF[15]_inst_i_2 
       (.I0(muxctrl_OBUF),
        .I1(ALUbotones_IBUF[0]),
        .O(\current_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFF80FC80FC80FC)) 
    \ALUout_OBUF[1]_inst_i_1 
       (.I0(LEDs_OBUF[4]),
        .I1(B_OBUF[1]),
        .I2(A_OBUF[1]),
        .I3(\current_state_reg[1]_0 ),
        .I4(p_0_in[1]),
        .I5(aluctrl_OBUF[1]),
        .O(ALUout_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFFF80FC80FC80FC)) 
    \ALUout_OBUF[2]_inst_i_1 
       (.I0(LEDs_OBUF[4]),
        .I1(B_OBUF[2]),
        .I2(A_OBUF[2]),
        .I3(\current_state_reg[1]_0 ),
        .I4(p_0_in[2]),
        .I5(aluctrl_OBUF[1]),
        .O(ALUout_OBUF[2]));
  LUT6 #(
    .INIT(64'hFFFF80FC80FC80FC)) 
    \ALUout_OBUF[4]_inst_i_1 
       (.I0(LEDs_OBUF[4]),
        .I1(B_OBUF[3]),
        .I2(A_OBUF[3]),
        .I3(\current_state_reg[1]_0 ),
        .I4(p_0_in[3]),
        .I5(aluctrl_OBUF[1]),
        .O(ALUout_OBUF[3]));
  LUT6 #(
    .INIT(64'hFFFF80FC80FC80FC)) 
    \ALUout_OBUF[5]_inst_i_1 
       (.I0(LEDs_OBUF[4]),
        .I1(B_OBUF[4]),
        .I2(A_OBUF[4]),
        .I3(\current_state_reg[1]_0 ),
        .I4(p_0_in[4]),
        .I5(aluctrl_OBUF[1]),
        .O(ALUout_OBUF[4]));
  LUT6 #(
    .INIT(64'hFFFF40F540F540F5)) 
    \ALUout_OBUF[6]_inst_i_1 
       (.I0(\mem_reg[30][6] ),
        .I1(LEDs_OBUF[4]),
        .I2(A_OBUF[5]),
        .I3(\current_state_reg[1]_0 ),
        .I4(p_0_in[5]),
        .I5(aluctrl_OBUF[1]),
        .O(ALUout_OBUF[5]));
  LUT6 #(
    .INIT(64'hFFFF80FC80FC80FC)) 
    \ALUout_OBUF[7]_inst_i_1 
       (.I0(LEDs_OBUF[4]),
        .I1(B_OBUF[5]),
        .I2(A_OBUF[6]),
        .I3(\current_state_reg[1]_0 ),
        .I4(p_0_in[6]),
        .I5(aluctrl_OBUF[1]),
        .O(ALUout_OBUF[6]));
  LUT6 #(
    .INIT(64'hFFFF80FC80FC80FC)) 
    \ALUout_OBUF[8]_inst_i_1 
       (.I0(LEDs_OBUF[4]),
        .I1(B_OBUF[6]),
        .I2(A_OBUF[7]),
        .I3(\current_state_reg[1]_0 ),
        .I4(p_0_in[7]),
        .I5(aluctrl_OBUF[1]),
        .O(ALUout_OBUF[7]));
  LUT6 #(
    .INIT(64'hFFFF80FC80FC80FC)) 
    \ALUout_OBUF[9]_inst_i_1 
       (.I0(LEDs_OBUF[4]),
        .I1(B_OBUF[7]),
        .I2(A_OBUF[8]),
        .I3(\current_state_reg[1]_0 ),
        .I4(p_0_in[8]),
        .I5(aluctrl_OBUF[1]),
        .O(ALUout_OBUF[8]));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \A_OBUF[15]_inst_i_14 
       (.I0(op_counter[0]),
        .I1(current_state[3]),
        .I2(current_state[0]),
        .I3(rst_IBUF),
        .I4(current_state[2]),
        .I5(current_state[1]),
        .O(\op_counter_reg[0]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \LEDs_OBUF[0]_inst_i_1 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(rst_IBUF),
        .O(LEDs_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \LEDs_OBUF[1]_inst_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(rst_IBUF),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .O(LEDs_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \LEDs_OBUF[2]_inst_i_1 
       (.I0(ALUbotones_IBUF[2]),
        .I1(muxctrl_OBUF),
        .I2(ALUbotones_IBUF[0]),
        .I3(ALUbotones_IBUF[1]),
        .O(LEDs_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \LEDs_OBUF[3]_inst_i_1 
       (.I0(ALUbotones_IBUF[2]),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[0]),
        .I3(muxctrl_OBUF),
        .O(LEDs_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \LEDs_OBUF[4]_inst_i_1 
       (.I0(muxctrl_OBUF),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[0]),
        .O(LEDs_OBUF[4]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \LEDs_OBUF[5]_inst_i_1 
       (.I0(ALUbotones_IBUF[0]),
        .I1(current_state[3]),
        .I2(current_state[0]),
        .I3(rst_IBUF),
        .I4(current_state[2]),
        .I5(current_state[1]),
        .O(LEDs_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00090000)) 
    WElfsr_OBUF_inst_i_1
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(rst_IBUF),
        .O(\current_state_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    WEreg_OBUF_inst_i_1
       (.I0(current_state[2]),
        .I1(rst_IBUF),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .O(WEreg_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h00D2)) 
    \addr_rd_OBUF[0]_inst_i_1 
       (.I0(step_reg_n_0),
        .I1(current_state[1]),
        .I2(op_counter[0]),
        .I3(\addr_rd_OBUF[3]_inst_i_3_n_0 ),
        .O(addr_rd_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h44411144)) 
    \addr_rd_OBUF[1]_inst_i_1 
       (.I0(\addr_rd_OBUF[3]_inst_i_3_n_0 ),
        .I1(op_counter[1]),
        .I2(step_reg_n_0),
        .I3(current_state[1]),
        .I4(op_counter[0]),
        .O(addr_rd_OBUF[1]));
  LUT6 #(
    .INIT(64'h4150415041145014)) 
    \addr_rd_OBUF[2]_inst_i_1 
       (.I0(\addr_rd_OBUF[3]_inst_i_3_n_0 ),
        .I1(op_counter[1]),
        .I2(op_counter[2]),
        .I3(op_counter[0]),
        .I4(step_reg_n_0),
        .I5(current_state[1]),
        .O(addr_rd_OBUF[2]));
  LUT6 #(
    .INIT(64'h0000000033332230)) 
    \addr_rd_OBUF[3]_inst_i_1 
       (.I0(\addr_rd_OBUF[3]_inst_i_2_n_0 ),
        .I1(\addr_rd_OBUF[3]_inst_i_3_n_0 ),
        .I2(\addr_rd_OBUF[3]_inst_i_4_n_0 ),
        .I3(step_reg_n_0),
        .I4(current_state[1]),
        .I5(\addr_rd_OBUF[3]_inst_i_5_n_0 ),
        .O(addr_rd_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hE718)) 
    \addr_rd_OBUF[3]_inst_i_2 
       (.I0(op_counter[0]),
        .I1(op_counter[1]),
        .I2(op_counter[2]),
        .I3(op_counter[3]),
        .O(\addr_rd_OBUF[3]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \addr_rd_OBUF[3]_inst_i_3 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(rst_IBUF),
        .I3(current_state[2]),
        .O(\addr_rd_OBUF[3]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h96A6)) 
    \addr_rd_OBUF[3]_inst_i_4 
       (.I0(op_counter[3]),
        .I1(op_counter[2]),
        .I2(op_counter[1]),
        .I3(op_counter[0]),
        .O(\addr_rd_OBUF[3]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h28222882)) 
    \addr_rd_OBUF[3]_inst_i_5 
       (.I0(current_state[1]),
        .I1(op_counter[3]),
        .I2(op_counter[2]),
        .I3(op_counter[1]),
        .I4(op_counter[0]),
        .O(\addr_rd_OBUF[3]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \addr_rd_OBUF[4]_inst_i_1 
       (.I0(current_state[2]),
        .I1(rst_IBUF),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .I4(\addr_rd_OBUF[4]_inst_i_2_n_0 ),
        .O(addr_rd_OBUF[4]));
  LUT6 #(
    .INIT(64'hCCFFCF33CCF3DF33)) 
    \addr_rd_OBUF[4]_inst_i_2 
       (.I0(step_reg_n_0),
        .I1(op_counter[3]),
        .I2(op_counter[0]),
        .I3(op_counter[2]),
        .I4(op_counter[1]),
        .I5(current_state[1]),
        .O(\addr_rd_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \addr_rs1_OBUF[0]_inst_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(rst_IBUF),
        .I3(current_state[0]),
        .I4(current_state[3]),
        .I5(op_counter[0]),
        .O(addr_rs1_OBUF[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_rs1_OBUF[1]_inst_i_1 
       (.I0(\op_counter_reg[0]_0 ),
        .O(addr_rs1_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hEBFF)) 
    \addr_rs1_OBUF[1]_inst_i_2 
       (.I0(\addr_rd_OBUF[3]_inst_i_3_n_0 ),
        .I1(op_counter[0]),
        .I2(op_counter[1]),
        .I3(current_state[1]),
        .O(\op_counter_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h82A0)) 
    \addr_rs1_OBUF[2]_inst_i_1 
       (.I0(muxctrl_OBUF),
        .I1(op_counter[0]),
        .I2(op_counter[2]),
        .I3(op_counter[1]),
        .O(addr_rs1_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hA02A0A80)) 
    \addr_rs1_OBUF[3]_inst_i_1 
       (.I0(muxctrl_OBUF),
        .I1(op_counter[0]),
        .I2(op_counter[1]),
        .I3(op_counter[2]),
        .I4(op_counter[3]),
        .O(addr_rs1_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h020A8080)) 
    \addr_rs1_OBUF[4]_inst_i_1 
       (.I0(muxctrl_OBUF),
        .I1(op_counter[1]),
        .I2(op_counter[2]),
        .I3(op_counter[0]),
        .I4(op_counter[3]),
        .O(addr_rs1_OBUF[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_rs2_OBUF[0]_inst_i_1 
       (.I0(\current_state_reg[1]_1 ),
        .O(addr_rs2_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \addr_rs2_OBUF[0]_inst_i_2 
       (.I0(\addr_rs2_OBUF[0]_inst_i_3_n_0 ),
        .I1(rst_IBUF),
        .O(\current_state_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFCDCCFFDFFDFCFFD)) 
    \addr_rs2_OBUF[0]_inst_i_3 
       (.I0(current_state[1]),
        .I1(current_state[3]),
        .I2(current_state[0]),
        .I3(op_counter[0]),
        .I4(current_state[2]),
        .I5(\count_reg_n_0_[0] ),
        .O(\addr_rs2_OBUF[0]_inst_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_rs2_OBUF[1]_inst_i_1 
       (.I0(\count_reg[1]_0 ),
        .O(addr_rs2_OBUF[1]));
  LUT6 #(
    .INIT(64'hB0BB0000FFFFFFFF)) 
    \addr_rs2_OBUF[1]_inst_i_2 
       (.I0(\addr_rs2_OBUF[3]_inst_i_2_n_0 ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\addr_rs2_OBUF[1]_inst_i_3_n_0 ),
        .I3(op_counter[1]),
        .I4(\addr_rs2_OBUF[1]_inst_i_4_n_0 ),
        .I5(rst_IBUF),
        .O(\count_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \addr_rs2_OBUF[1]_inst_i_3 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[0]),
        .O(\addr_rs2_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF36F9FFFFFFFF)) 
    \addr_rs2_OBUF[1]_inst_i_4 
       (.I0(op_counter[0]),
        .I1(op_counter[1]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(current_state[3]),
        .I5(current_state[0]),
        .O(\addr_rs2_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \addr_rs2_OBUF[2]_inst_i_1 
       (.I0(rst_IBUF),
        .I1(\addr_rs2_OBUF[3]_inst_i_2_n_0 ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\addr_rs2_OBUF[3]_inst_i_3_n_0 ),
        .I4(\addr_rs2_OBUF[2]_inst_i_2_n_0 ),
        .I5(\addr_rs2_OBUF[2]_inst_i_3_n_0 ),
        .O(addr_rs2_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \addr_rs2_OBUF[2]_inst_i_2 
       (.I0(op_counter[2]),
        .I1(op_counter[0]),
        .I2(op_counter[1]),
        .O(\addr_rs2_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF3963FFFFFFFF)) 
    \addr_rs2_OBUF[2]_inst_i_3 
       (.I0(op_counter[0]),
        .I1(op_counter[2]),
        .I2(op_counter[1]),
        .I3(current_state[1]),
        .I4(current_state[2]),
        .I5(\addr_rs2_OBUF[2]_inst_i_4_n_0 ),
        .O(\addr_rs2_OBUF[2]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr_rs2_OBUF[2]_inst_i_4 
       (.I0(current_state[0]),
        .I1(current_state[3]),
        .O(\addr_rs2_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \addr_rs2_OBUF[3]_inst_i_1 
       (.I0(rst_IBUF),
        .I1(\addr_rs2_OBUF[3]_inst_i_2_n_0 ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\addr_rs2_OBUF[3]_inst_i_3_n_0 ),
        .I4(\addr_rd_OBUF[3]_inst_i_2_n_0 ),
        .I5(\addr_rs2_OBUF[3]_inst_i_4_n_0 ),
        .O(addr_rs2_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \addr_rs2_OBUF[3]_inst_i_2 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .O(\addr_rs2_OBUF[3]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFF7D)) 
    \addr_rs2_OBUF[3]_inst_i_3 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .O(\addr_rs2_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF07E0F81F)) 
    \addr_rs2_OBUF[3]_inst_i_4 
       (.I0(current_state[1]),
        .I1(op_counter[0]),
        .I2(op_counter[1]),
        .I3(op_counter[2]),
        .I4(op_counter[3]),
        .I5(\addr_rs2_OBUF[3]_inst_i_5_n_0 ),
        .O(\addr_rs2_OBUF[3]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \addr_rs2_OBUF[3]_inst_i_5 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[0]),
        .O(\addr_rs2_OBUF[3]_inst_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_rs2_OBUF[4]_inst_i_1 
       (.I0(\current_state_reg[2]_0 ),
        .O(addr_rs2_OBUF[4]));
  LUT6 #(
    .INIT(64'hBBB3BBBBBBBBBBBB)) 
    \addr_rs2_OBUF[4]_inst_i_2 
       (.I0(\addr_rs2_OBUF[4]_inst_i_3_n_0 ),
        .I1(rst_IBUF),
        .I2(current_state[2]),
        .I3(current_state[3]),
        .I4(current_state[0]),
        .I5(\addr_rs2_OBUF[4]_inst_i_4_n_0 ),
        .O(\current_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFF3F53FFFFFF5F)) 
    \addr_rs2_OBUF[4]_inst_i_3 
       (.I0(\count_reg_n_0_[4] ),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[3]),
        .I5(\addr_rs2_OBUF[4]_inst_i_5_n_0 ),
        .O(\addr_rs2_OBUF[4]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h320C304C)) 
    \addr_rs2_OBUF[4]_inst_i_4 
       (.I0(op_counter[0]),
        .I1(op_counter[3]),
        .I2(op_counter[1]),
        .I3(op_counter[2]),
        .I4(current_state[1]),
        .O(\addr_rs2_OBUF[4]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h2664)) 
    \addr_rs2_OBUF[4]_inst_i_5 
       (.I0(op_counter[2]),
        .I1(op_counter[3]),
        .I2(op_counter[0]),
        .I3(op_counter[1]),
        .O(\addr_rs2_OBUF[4]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \aluctrl_OBUF[0]_inst_i_1 
       (.I0(muxctrl_OBUF),
        .I1(ALUbotones_IBUF[0]),
        .I2(ALUbotones_IBUF[2]),
        .I3(ALUbotones_IBUF[1]),
        .O(aluctrl_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \aluctrl_OBUF[1]_inst_i_1 
       (.I0(muxctrl_OBUF),
        .I1(ALUbotones_IBUF[0]),
        .I2(ALUbotones_IBUF[1]),
        .O(aluctrl_OBUF[1]));
  LUT6 #(
    .INIT(64'h00F700FF00FF00FF)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[5] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[3] ),
        .I5(\count_reg_n_0_[2] ),
        .O(count[0]));
  LUT6 #(
    .INIT(64'h55A255AA55AA55AA)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[5] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[3] ),
        .I5(\count_reg_n_0_[2] ),
        .O(count[1]));
  LUT6 #(
    .INIT(64'h55F755FFAA00AA00)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[5] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[3] ),
        .I5(\count_reg_n_0_[2] ),
        .O(count[2]));
  LUT6 #(
    .INIT(64'h55F7AA00FFFF0000)) 
    \count[3]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[5] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[3] ),
        .I5(\count_reg_n_0_[2] ),
        .O(count[3]));
  LUT6 #(
    .INIT(64'h66C4CCCCCCCCCCCC)) 
    \count[4]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[5] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[3] ),
        .I5(\count_reg_n_0_[2] ),
        .O(count[4]));
  LUT4 #(
    .INIT(16'h0004)) 
    \count[5]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[0]),
        .O(\count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \count[5]_i_2 
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count_reg_n_0_[2] ),
        .O(count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(\count[5]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(count[0]),
        .Q(\count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(\count[5]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(count[1]),
        .Q(\count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(\count[5]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(count[2]),
        .Q(\count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(\count[5]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(count[3]),
        .Q(\count_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(\count[5]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(count[4]),
        .Q(\count_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(\count[5]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(count[5]),
        .Q(\count_reg_n_0_[5] ));
  CARRY4 \counttimer10_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\counttimer10_inferred__0/i__carry_n_0 ,\counttimer10_inferred__0/i__carry_n_1 ,\counttimer10_inferred__0/i__carry_n_2 ,\counttimer10_inferred__0/i__carry_n_3 }),
        .CYINIT(\counttimer1_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\counttimer1_reg_n_0_[4] ,\counttimer1_reg_n_0_[3] ,\counttimer1_reg_n_0_[2] ,\counttimer1_reg_n_0_[1] }));
  CARRY4 \counttimer10_inferred__0/i__carry__0 
       (.CI(\counttimer10_inferred__0/i__carry_n_0 ),
        .CO({\counttimer10_inferred__0/i__carry__0_n_0 ,\counttimer10_inferred__0/i__carry__0_n_1 ,\counttimer10_inferred__0/i__carry__0_n_2 ,\counttimer10_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\counttimer1_reg_n_0_[8] ,\counttimer1_reg_n_0_[7] ,\counttimer1_reg_n_0_[6] ,\counttimer1_reg_n_0_[5] }));
  CARRY4 \counttimer10_inferred__0/i__carry__1 
       (.CI(\counttimer10_inferred__0/i__carry__0_n_0 ),
        .CO({\counttimer10_inferred__0/i__carry__1_n_0 ,\counttimer10_inferred__0/i__carry__1_n_1 ,\counttimer10_inferred__0/i__carry__1_n_2 ,\counttimer10_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\counttimer1_reg_n_0_[12] ,\counttimer1_reg_n_0_[11] ,\counttimer1_reg_n_0_[10] ,\counttimer1_reg_n_0_[9] }));
  CARRY4 \counttimer10_inferred__0/i__carry__2 
       (.CI(\counttimer10_inferred__0/i__carry__1_n_0 ),
        .CO({\counttimer10_inferred__0/i__carry__2_n_0 ,\counttimer10_inferred__0/i__carry__2_n_1 ,\counttimer10_inferred__0/i__carry__2_n_2 ,\counttimer10_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\counttimer1_reg_n_0_[16] ,\counttimer1_reg_n_0_[15] ,\counttimer1_reg_n_0_[14] ,\counttimer1_reg_n_0_[13] }));
  CARRY4 \counttimer10_inferred__0/i__carry__3 
       (.CI(\counttimer10_inferred__0/i__carry__2_n_0 ),
        .CO({\counttimer10_inferred__0/i__carry__3_n_0 ,\counttimer10_inferred__0/i__carry__3_n_1 ,\counttimer10_inferred__0/i__carry__3_n_2 ,\counttimer10_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\counttimer1_reg_n_0_[20] ,\counttimer1_reg_n_0_[19] ,\counttimer1_reg_n_0_[18] ,\counttimer1_reg_n_0_[17] }));
  CARRY4 \counttimer10_inferred__0/i__carry__4 
       (.CI(\counttimer10_inferred__0/i__carry__3_n_0 ),
        .CO({\NLW_counttimer10_inferred__0/i__carry__4_CO_UNCONNECTED [3],\counttimer10_inferred__0/i__carry__4_n_1 ,\counttimer10_inferred__0/i__carry__4_n_2 ,\counttimer10_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\counttimer1_reg_n_0_[24] ,\counttimer1_reg_n_0_[23] ,\counttimer1_reg_n_0_[22] ,\counttimer1_reg_n_0_[21] }));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counttimer1[0]_i_1 
       (.I0(\counttimer1_reg_n_0_[0] ),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[0]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[10]_i_1 
       (.I0(data0[10]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[10]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[11]_i_1 
       (.I0(data0[11]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[11]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[12]_i_1 
       (.I0(data0[12]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[12]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[13]_i_1 
       (.I0(data0[13]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[13]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[14]_i_1 
       (.I0(data0[14]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[14]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[15]_i_1 
       (.I0(data0[15]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[15]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[16]_i_1 
       (.I0(data0[16]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[16]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[17]_i_1 
       (.I0(data0[17]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[17]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[18]_i_1 
       (.I0(data0[18]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[18]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[19]_i_1 
       (.I0(data0[19]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[19]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[1]_i_1 
       (.I0(data0[1]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[20]_i_1 
       (.I0(data0[20]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[20]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[21]_i_1 
       (.I0(data0[21]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[21]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[22]_i_1 
       (.I0(data0[22]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[22]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[23]_i_1 
       (.I0(data0[23]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[23]));
  LUT4 #(
    .INIT(16'h4044)) 
    \counttimer1[24]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(counttimer10));
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[24]_i_2 
       (.I0(data0[24]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[24]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \counttimer1[24]_i_3 
       (.I0(\counttimer1[24]_i_4_n_0 ),
        .I1(\counttimer1_reg_n_0_[19] ),
        .I2(\counttimer1_reg_n_0_[6] ),
        .I3(\counttimer1_reg_n_0_[7] ),
        .I4(\counttimer1[24]_i_5_n_0 ),
        .O(\counttimer1[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counttimer1[24]_i_4 
       (.I0(\counttimer1_reg_n_0_[21] ),
        .I1(\counttimer1_reg_n_0_[23] ),
        .I2(\counttimer1_reg_n_0_[24] ),
        .I3(\counttimer1_reg_n_0_[12] ),
        .I4(\counttimer1[24]_i_6_n_0 ),
        .O(\counttimer1[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counttimer1[24]_i_5 
       (.I0(\counttimer1[24]_i_7_n_0 ),
        .I1(\counttimer1[24]_i_8_n_0 ),
        .I2(\counttimer1_reg_n_0_[14] ),
        .I3(\counttimer1_reg_n_0_[4] ),
        .I4(\counttimer1_reg_n_0_[9] ),
        .I5(\counttimer1_reg_n_0_[5] ),
        .O(\counttimer1[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counttimer1[24]_i_6 
       (.I0(\counttimer1_reg_n_0_[13] ),
        .I1(\counttimer1_reg_n_0_[2] ),
        .I2(\counttimer1_reg_n_0_[22] ),
        .I3(\counttimer1_reg_n_0_[11] ),
        .O(\counttimer1[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \counttimer1[24]_i_7 
       (.I0(\counttimer1_reg_n_0_[18] ),
        .I1(\counttimer1_reg_n_0_[3] ),
        .I2(\counttimer1_reg_n_0_[0] ),
        .I3(\counttimer1_reg_n_0_[1] ),
        .I4(\counttimer1_reg_n_0_[15] ),
        .I5(\counttimer1_reg_n_0_[20] ),
        .O(\counttimer1[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counttimer1[24]_i_8 
       (.I0(\counttimer1_reg_n_0_[16] ),
        .I1(\counttimer1_reg_n_0_[10] ),
        .I2(\counttimer1_reg_n_0_[17] ),
        .I3(\counttimer1_reg_n_0_[8] ),
        .O(\counttimer1[24]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[2]_i_1 
       (.I0(data0[2]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[2]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[3]_i_1 
       (.I0(data0[3]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[3]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[4]_i_1 
       (.I0(data0[4]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[4]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[5]_i_1 
       (.I0(data0[5]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[5]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[6]_i_1 
       (.I0(data0[6]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[6]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[7]_i_1 
       (.I0(data0[7]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[7]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[8]_i_1 
       (.I0(data0[8]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[8]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counttimer1[9]_i_1 
       (.I0(data0[9]),
        .I1(\counttimer1[24]_i_3_n_0 ),
        .O(counttimer1[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[0] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[0]),
        .Q(\counttimer1_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[10] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[10]),
        .Q(\counttimer1_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[11] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[11]),
        .Q(\counttimer1_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[12] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[12]),
        .Q(\counttimer1_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[13] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[13]),
        .Q(\counttimer1_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[14] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[14]),
        .Q(\counttimer1_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[15] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[15]),
        .Q(\counttimer1_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[16] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[16]),
        .Q(\counttimer1_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[17] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[17]),
        .Q(\counttimer1_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[18] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[18]),
        .Q(\counttimer1_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[19] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[19]),
        .Q(\counttimer1_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[1] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[1]),
        .Q(\counttimer1_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[20] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[20]),
        .Q(\counttimer1_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[21] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[21]),
        .Q(\counttimer1_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[22] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[22]),
        .Q(\counttimer1_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[23] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[23]),
        .Q(\counttimer1_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[24] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[24]),
        .Q(\counttimer1_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[2] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[2]),
        .Q(\counttimer1_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[3] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[3]),
        .Q(\counttimer1_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[4] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[4]),
        .Q(\counttimer1_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[5] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[5]),
        .Q(\counttimer1_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[6] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[6]),
        .Q(\counttimer1_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[7] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[7]),
        .Q(\counttimer1_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[8] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[8]),
        .Q(\counttimer1_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer1_reg[9] 
       (.C(CLK),
        .CE(counttimer10),
        .CLR(p_0_in__0),
        .D(counttimer1[9]),
        .Q(\counttimer1_reg_n_0_[9] ));
  CARRY4 counttimer20_carry
       (.CI(1'b0),
        .CO({counttimer20_carry_n_0,counttimer20_carry_n_1,counttimer20_carry_n_2,counttimer20_carry_n_3}),
        .CYINIT(\counttimer2_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counttimer20_carry_n_4,counttimer20_carry_n_5,counttimer20_carry_n_6,counttimer20_carry_n_7}),
        .S({\counttimer2_reg_n_0_[4] ,\counttimer2_reg_n_0_[3] ,\counttimer2_reg_n_0_[2] ,\counttimer2_reg_n_0_[1] }));
  CARRY4 counttimer20_carry__0
       (.CI(counttimer20_carry_n_0),
        .CO({counttimer20_carry__0_n_0,counttimer20_carry__0_n_1,counttimer20_carry__0_n_2,counttimer20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counttimer20_carry__0_n_4,counttimer20_carry__0_n_5,counttimer20_carry__0_n_6,counttimer20_carry__0_n_7}),
        .S({\counttimer2_reg_n_0_[8] ,\counttimer2_reg_n_0_[7] ,\counttimer2_reg_n_0_[6] ,\counttimer2_reg_n_0_[5] }));
  CARRY4 counttimer20_carry__1
       (.CI(counttimer20_carry__0_n_0),
        .CO({counttimer20_carry__1_n_0,counttimer20_carry__1_n_1,counttimer20_carry__1_n_2,counttimer20_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counttimer20_carry__1_n_4,counttimer20_carry__1_n_5,counttimer20_carry__1_n_6,counttimer20_carry__1_n_7}),
        .S({\counttimer2_reg_n_0_[12] ,\counttimer2_reg_n_0_[11] ,\counttimer2_reg_n_0_[10] ,\counttimer2_reg_n_0_[9] }));
  CARRY4 counttimer20_carry__2
       (.CI(counttimer20_carry__1_n_0),
        .CO({counttimer20_carry__2_n_0,counttimer20_carry__2_n_1,counttimer20_carry__2_n_2,counttimer20_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counttimer20_carry__2_n_4,counttimer20_carry__2_n_5,counttimer20_carry__2_n_6,counttimer20_carry__2_n_7}),
        .S({\counttimer2_reg_n_0_[16] ,\counttimer2_reg_n_0_[15] ,\counttimer2_reg_n_0_[14] ,\counttimer2_reg_n_0_[13] }));
  CARRY4 counttimer20_carry__3
       (.CI(counttimer20_carry__2_n_0),
        .CO({counttimer20_carry__3_n_0,counttimer20_carry__3_n_1,counttimer20_carry__3_n_2,counttimer20_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counttimer20_carry__3_n_4,counttimer20_carry__3_n_5,counttimer20_carry__3_n_6,counttimer20_carry__3_n_7}),
        .S({\counttimer2_reg_n_0_[20] ,\counttimer2_reg_n_0_[19] ,\counttimer2_reg_n_0_[18] ,\counttimer2_reg_n_0_[17] }));
  CARRY4 counttimer20_carry__4
       (.CI(counttimer20_carry__3_n_0),
        .CO({NLW_counttimer20_carry__4_CO_UNCONNECTED[3],counttimer20_carry__4_n_1,counttimer20_carry__4_n_2,counttimer20_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counttimer20_carry__4_n_4,counttimer20_carry__4_n_5,counttimer20_carry__4_n_6,counttimer20_carry__4_n_7}),
        .S({\counttimer2_reg_n_0_[24] ,\counttimer2_reg_n_0_[23] ,\counttimer2_reg_n_0_[22] ,\counttimer2_reg_n_0_[21] }));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counttimer2[0]_i_1 
       (.I0(\counttimer2_reg_n_0_[0] ),
        .I1(\counttimer2[24]_i_3_n_0 ),
        .O(counttimer2[0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[10]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__1_n_6),
        .O(counttimer2[10]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[11]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__1_n_5),
        .O(counttimer2[11]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[12]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__1_n_4),
        .O(counttimer2[12]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[13]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__2_n_7),
        .O(counttimer2[13]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[14]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__2_n_6),
        .O(counttimer2[14]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[15]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__2_n_5),
        .O(counttimer2[15]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[16]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__2_n_4),
        .O(counttimer2[16]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[17]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__3_n_7),
        .O(counttimer2[17]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[18]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__3_n_6),
        .O(counttimer2[18]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[19]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__3_n_5),
        .O(counttimer2[19]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[1]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry_n_7),
        .O(counttimer2[1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[20]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__3_n_4),
        .O(counttimer2[20]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[21]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__4_n_7),
        .O(counttimer2[21]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[22]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__4_n_6),
        .O(counttimer2[22]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[23]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__4_n_5),
        .O(counttimer2[23]));
  LUT4 #(
    .INIT(16'h0008)) 
    \counttimer2[24]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .I3(current_state[0]),
        .O(\counttimer2[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[24]_i_2 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__4_n_4),
        .O(counttimer2[24]));
  LUT6 #(
    .INIT(64'h0000000000004544)) 
    \counttimer2[24]_i_3 
       (.I0(\counttimer2[24]_i_4_n_0 ),
        .I1(\counttimer2_reg_n_0_[23] ),
        .I2(\counttimer2_reg_n_0_[22] ),
        .I3(\counttimer2_reg_n_0_[21] ),
        .I4(\counttimer2[24]_i_5_n_0 ),
        .I5(timer2_i_4_n_0),
        .O(\counttimer2[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \counttimer2[24]_i_4 
       (.I0(timer2_i_5_n_0),
        .I1(\counttimer2_reg_n_0_[5] ),
        .I2(\counttimer2_reg_n_0_[15] ),
        .I3(\counttimer2_reg_n_0_[17] ),
        .I4(\counttimer2_reg_n_0_[18] ),
        .O(\counttimer2[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \counttimer2[24]_i_5 
       (.I0(\counttimer2[24]_i_6_n_0 ),
        .I1(\counttimer2[24]_i_7_n_0 ),
        .I2(\counttimer2_reg_n_0_[20] ),
        .I3(\counttimer2_reg_n_0_[19] ),
        .I4(\counttimer2_reg_n_0_[8] ),
        .I5(\counttimer2_reg_n_0_[9] ),
        .O(\counttimer2[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFFFFFFF)) 
    \counttimer2[24]_i_6 
       (.I0(\counttimer2_reg_n_0_[12] ),
        .I1(\counttimer2_reg_n_0_[13] ),
        .I2(\counttimer2_reg_n_0_[7] ),
        .I3(\counttimer2_reg_n_0_[6] ),
        .I4(\counttimer2_reg_n_0_[11] ),
        .I5(\counttimer2_reg_n_0_[10] ),
        .O(\counttimer2[24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF4F)) 
    \counttimer2[24]_i_7 
       (.I0(\counttimer2_reg_n_0_[4] ),
        .I1(\counttimer2_reg_n_0_[3] ),
        .I2(\counttimer2_reg_n_0_[16] ),
        .I3(\counttimer2_reg_n_0_[14] ),
        .O(\counttimer2[24]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[2]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry_n_6),
        .O(counttimer2[2]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[3]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry_n_5),
        .O(counttimer2[3]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[4]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry_n_4),
        .O(counttimer2[4]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[5]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__0_n_7),
        .O(counttimer2[5]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[6]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__0_n_6),
        .O(counttimer2[6]));
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[7]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__0_n_5),
        .O(counttimer2[7]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[8]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__0_n_4),
        .O(counttimer2[8]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \counttimer2[9]_i_1 
       (.I0(\counttimer2[24]_i_3_n_0 ),
        .I1(\counttimer2_reg_n_0_[0] ),
        .I2(counttimer20_carry__1_n_7),
        .O(counttimer2[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[0] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[0]),
        .Q(\counttimer2_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[10] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[10]),
        .Q(\counttimer2_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[11] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[11]),
        .Q(\counttimer2_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[12] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[12]),
        .Q(\counttimer2_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[13] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[13]),
        .Q(\counttimer2_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[14] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[14]),
        .Q(\counttimer2_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[15] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[15]),
        .Q(\counttimer2_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[16] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[16]),
        .Q(\counttimer2_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[17] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[17]),
        .Q(\counttimer2_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[18] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[18]),
        .Q(\counttimer2_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[19] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[19]),
        .Q(\counttimer2_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[1] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[1]),
        .Q(\counttimer2_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[20] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[20]),
        .Q(\counttimer2_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[21] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[21]),
        .Q(\counttimer2_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[22] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[22]),
        .Q(\counttimer2_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[23] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[23]),
        .Q(\counttimer2_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[24] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[24]),
        .Q(\counttimer2_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[2] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[2]),
        .Q(\counttimer2_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[3] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[3]),
        .Q(\counttimer2_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[4] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[4]),
        .Q(\counttimer2_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[5] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[5]),
        .Q(\counttimer2_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[6] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[6]),
        .Q(\counttimer2_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[7] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[7]),
        .Q(\counttimer2_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[8] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[8]),
        .Q(\counttimer2_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counttimer2_reg[9] 
       (.C(CLK),
        .CE(\counttimer2[24]_i_1_n_0 ),
        .CLR(p_0_in__0),
        .D(counttimer2[9]),
        .Q(\counttimer2_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h8880FFFF)) 
    \current_state[0]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(\current_state[0]_i_2_n_0 ),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'hAEAEAEFEAEFEAEFE)) 
    \current_state[0]_i_2 
       (.I0(current_state[3]),
        .I1(\current_state[0]_i_3_n_0 ),
        .I2(current_state[2]),
        .I3(\current_state[0]_i_4_n_0 ),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(\current_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCC80CC83)) 
    \current_state[0]_i_3 
       (.I0(timer1_reg_n_0),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(CambioModo_IBUF),
        .I4(step_reg_n_0),
        .O(\current_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \current_state[0]_i_4 
       (.I0(current_state[0]),
        .I1(rdy),
        .I2(CambioModo_IBUF),
        .O(\current_state[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    \current_state[1]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[3]),
        .I2(\current_state[1]_i_2_n_0 ),
        .I3(\current_state[1]_i_3_n_0 ),
        .I4(\current_state[1]_i_4_n_0 ),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h11041404)) 
    \current_state[1]_i_2 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(CambioModo_IBUF),
        .I3(current_state[0]),
        .I4(timer1_reg_n_0),
        .O(\current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C0C0004040404)) 
    \current_state[1]_i_3 
       (.I0(done),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(CambioModo_IBUF),
        .I4(rdy),
        .I5(current_state[0]),
        .O(\current_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h110F000000000000)) 
    \current_state[1]_i_4 
       (.I0(CambioModo_IBUF),
        .I1(timer1_reg_n_0),
        .I2(timer2),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(current_state[2]),
        .O(\current_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h555555550000F333)) 
    \current_state[2]_i_1 
       (.I0(\current_state[2]_i_2_n_0 ),
        .I1(\current_state[2]_i_3_n_0 ),
        .I2(current_state[1]),
        .I3(CambioModo_IBUF),
        .I4(current_state[3]),
        .I5(current_state[2]),
        .O(next_state[2]));
  LUT6 #(
    .INIT(64'h0303030002020202)) 
    \current_state[2]_i_2 
       (.I0(done),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .I3(CambioModo_IBUF),
        .I4(rdy),
        .I5(current_state[0]),
        .O(\current_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hF1FF)) 
    \current_state[2]_i_3 
       (.I0(timer1_reg_n_0),
        .I1(CambioModo_IBUF),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .O(\current_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hAAA2)) 
    \current_state[3]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(next_state[3]));
  FDSE #(
    .INIT(1'b1)) 
    \current_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(current_state[0]),
        .S(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(p_0_in__0));
  FDSE #(
    .INIT(1'b1)) 
    \current_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state[3]),
        .Q(current_state[3]),
        .S(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h22022020)) 
    displayctrl_OBUF_inst_i_1
       (.I0(rst_IBUF),
        .I1(current_state[3]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(current_state[2]),
        .O(displayctrl_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    done_i_1
       (.I0(current_state[0]),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(done_i_2_n_0),
        .O(done0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    done_i_2
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[1] ),
        .O(done_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    done_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(done0),
        .Q(done));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \mem[0][15]_i_1 
       (.I0(addr_rd_OBUF[0]),
        .I1(addr_rd_OBUF[4]),
        .I2(addr_rd_OBUF[1]),
        .I3(addr_rd_OBUF[2]),
        .I4(addr_rd_OBUF[3]),
        .I5(\addr_rd_OBUF[3]_inst_i_3_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \mem[10][15]_i_1 
       (.I0(addr_rd_OBUF[1]),
        .I1(addr_rd_OBUF[2]),
        .I2(addr_rd_OBUF[3]),
        .I3(addr_rd_OBUF[0]),
        .I4(addr_rd_OBUF[4]),
        .O(\op_counter_reg[1]_5 ));
  LUT6 #(
    .INIT(64'h000000009A000000)) 
    \mem[11][15]_i_1 
       (.I0(op_counter[0]),
        .I1(current_state[1]),
        .I2(step_reg_n_0),
        .I3(addr_rd_OBUF[3]),
        .I4(\addr_rd_OBUF[4]_inst_i_2_n_0 ),
        .I5(\mem[11][15]_i_2_n_0 ),
        .O(\op_counter_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB9BDEFEB)) 
    \mem[11][15]_i_2 
       (.I0(op_counter[2]),
        .I1(op_counter[0]),
        .I2(current_state[1]),
        .I3(step_reg_n_0),
        .I4(op_counter[1]),
        .I5(\addr_rd_OBUF[3]_inst_i_3_n_0 ),
        .O(\mem[11][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002020000020002)) 
    \mem[12][15]_i_1 
       (.I0(\mem[12][15]_i_2_n_0 ),
        .I1(addr_rd_OBUF[1]),
        .I2(addr_rd_OBUF[4]),
        .I3(op_counter[0]),
        .I4(current_state[1]),
        .I5(step_reg_n_0),
        .O(\op_counter_reg[0]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem[12][15]_i_2 
       (.I0(addr_rd_OBUF[3]),
        .I1(addr_rd_OBUF[2]),
        .O(\mem[12][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[13][15]_i_1 
       (.I0(addr_rd_OBUF[2]),
        .I1(addr_rd_OBUF[3]),
        .I2(addr_rd_OBUF[0]),
        .I3(addr_rd_OBUF[1]),
        .I4(addr_rd_OBUF[4]),
        .O(\op_counter_reg[1]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \mem[14][15]_i_1 
       (.I0(\mem[4][15]_i_2_n_0 ),
        .I1(addr_rd_OBUF[1]),
        .I2(addr_rd_OBUF[0]),
        .I3(addr_rd_OBUF[3]),
        .O(\op_counter_reg[1]_6 ));
  LUT6 #(
    .INIT(64'h8008808000000000)) 
    \mem[15][15]_i_1 
       (.I0(\mem[4][15]_i_2_n_0 ),
        .I1(addr_rd_OBUF[1]),
        .I2(op_counter[0]),
        .I3(current_state[1]),
        .I4(step_reg_n_0),
        .I5(addr_rd_OBUF[3]),
        .O(\op_counter_reg[0]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \mem[16][15]_i_1 
       (.I0(addr_rd_OBUF[3]),
        .I1(addr_rd_OBUF[0]),
        .I2(addr_rd_OBUF[4]),
        .I3(addr_rd_OBUF[1]),
        .I4(addr_rd_OBUF[2]),
        .O(step_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00004144)) 
    \mem[17][15]_i_1 
       (.I0(addr_rd_OBUF[3]),
        .I1(op_counter[0]),
        .I2(current_state[1]),
        .I3(step_reg_n_0),
        .I4(\mem[17][15]_i_2_n_0 ),
        .O(\op_counter_reg[0]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \mem[17][15]_i_2 
       (.I0(addr_rd_OBUF[2]),
        .I1(addr_rd_OBUF[1]),
        .I2(addr_rd_OBUF[4]),
        .O(\mem[17][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055550451)) 
    \mem[18][15]_i_1 
       (.I0(addr_rd_OBUF[3]),
        .I1(step_reg_n_0),
        .I2(current_state[1]),
        .I3(op_counter[0]),
        .I4(\addr_rd_OBUF[3]_inst_i_3_n_0 ),
        .I5(\mem[18][15]_i_2_n_0 ),
        .O(step_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \mem[18][15]_i_2 
       (.I0(addr_rd_OBUF[1]),
        .I1(addr_rd_OBUF[2]),
        .I2(addr_rd_OBUF[4]),
        .O(\mem[18][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00004144)) 
    \mem[19][15]_i_1 
       (.I0(addr_rd_OBUF[3]),
        .I1(op_counter[0]),
        .I2(current_state[1]),
        .I3(step_reg_n_0),
        .I4(\mem[18][15]_i_2_n_0 ),
        .O(\op_counter_reg[0]_10 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \mem[1][15]_i_1 
       (.I0(addr_rd_OBUF[3]),
        .I1(addr_rd_OBUF[4]),
        .I2(addr_rd_OBUF[0]),
        .I3(addr_rd_OBUF[1]),
        .I4(addr_rd_OBUF[2]),
        .O(step_reg_4));
  LUT6 #(
    .INIT(64'h0001010000010001)) 
    \mem[20][15]_i_1 
       (.I0(addr_rd_OBUF[3]),
        .I1(addr_rd_OBUF[1]),
        .I2(\mem[20][15]_i_2_n_0 ),
        .I3(op_counter[0]),
        .I4(current_state[1]),
        .I5(step_reg_n_0),
        .O(\op_counter_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mem[20][15]_i_2 
       (.I0(\addr_rd_OBUF[4]_inst_i_2_n_0 ),
        .I1(addr_rd_OBUF[2]),
        .O(\mem[20][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \mem[21][15]_i_1 
       (.I0(addr_rd_OBUF[0]),
        .I1(addr_rd_OBUF[1]),
        .I2(addr_rd_OBUF[3]),
        .I3(addr_rd_OBUF[2]),
        .I4(\addr_rd_OBUF[4]_inst_i_2_n_0 ),
        .O(step_reg_7));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \mem[22][15]_i_1 
       (.I0(addr_rd_OBUF[3]),
        .I1(\addr_rd_OBUF[3]_inst_i_3_n_0 ),
        .I2(addr_rd_OBUF[2]),
        .I3(addr_rd_OBUF[4]),
        .I4(\mem[2][15]_i_2_n_0 ),
        .I5(addr_rd_OBUF[1]),
        .O(step_reg_0));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \mem[23][15]_i_1 
       (.I0(addr_rd_OBUF[1]),
        .I1(addr_rd_OBUF[0]),
        .I2(\addr_rd_OBUF[3]_inst_i_3_n_0 ),
        .I3(addr_rd_OBUF[3]),
        .I4(addr_rd_OBUF[2]),
        .I5(\addr_rd_OBUF[4]_inst_i_2_n_0 ),
        .O(\op_counter_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \mem[24][15]_i_1 
       (.I0(addr_rd_OBUF[0]),
        .I1(addr_rd_OBUF[3]),
        .I2(addr_rd_OBUF[4]),
        .I3(addr_rd_OBUF[1]),
        .I4(addr_rd_OBUF[2]),
        .O(step_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00008288)) 
    \mem[25][15]_i_1 
       (.I0(addr_rd_OBUF[3]),
        .I1(op_counter[0]),
        .I2(current_state[1]),
        .I3(step_reg_n_0),
        .I4(\mem[17][15]_i_2_n_0 ),
        .O(\op_counter_reg[0]_8 ));
  LUT6 #(
    .INIT(64'h00000000FF2D0000)) 
    \mem[26][15]_i_1 
       (.I0(step_reg_n_0),
        .I1(current_state[1]),
        .I2(op_counter[0]),
        .I3(\addr_rd_OBUF[3]_inst_i_3_n_0 ),
        .I4(addr_rd_OBUF[3]),
        .I5(\mem[18][15]_i_2_n_0 ),
        .O(step_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00009A00)) 
    \mem[27][15]_i_1 
       (.I0(op_counter[0]),
        .I1(current_state[1]),
        .I2(step_reg_n_0),
        .I3(addr_rd_OBUF[3]),
        .I4(\mem[18][15]_i_2_n_0 ),
        .O(\op_counter_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h00000000AABAEEAB)) 
    \mem[28][15]_i_1 
       (.I0(\addr_rd_OBUF[3]_inst_i_3_n_0 ),
        .I1(op_counter[1]),
        .I2(step_reg_n_0),
        .I3(current_state[1]),
        .I4(op_counter[0]),
        .I5(\mem[28][15]_i_2_n_0 ),
        .O(\op_counter_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \mem[28][15]_i_2 
       (.I0(\addr_rd_OBUF[4]_inst_i_2_n_0 ),
        .I1(addr_rd_OBUF[2]),
        .I2(addr_rd_OBUF[3]),
        .O(\mem[28][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011040010)) 
    \mem[29][15]_i_1 
       (.I0(\addr_rd_OBUF[3]_inst_i_3_n_0 ),
        .I1(op_counter[1]),
        .I2(step_reg_n_0),
        .I3(current_state[1]),
        .I4(op_counter[0]),
        .I5(\mem[28][15]_i_2_n_0 ),
        .O(\op_counter_reg[1]_4 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \mem[2][15]_i_1 
       (.I0(addr_rd_OBUF[2]),
        .I1(addr_rd_OBUF[1]),
        .I2(addr_rd_OBUF[4]),
        .I3(addr_rd_OBUF[3]),
        .I4(\mem[2][15]_i_2_n_0 ),
        .I5(\addr_rd_OBUF[3]_inst_i_3_n_0 ),
        .O(\op_counter_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \mem[2][15]_i_2 
       (.I0(op_counter[0]),
        .I1(current_state[1]),
        .I2(step_reg_n_0),
        .O(\mem[2][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080880800000000)) 
    \mem[30][15]_i_1 
       (.I0(\mem[12][15]_i_2_n_0 ),
        .I1(addr_rd_OBUF[1]),
        .I2(step_reg_n_0),
        .I3(current_state[1]),
        .I4(op_counter[0]),
        .I5(addr_rd_OBUF[4]),
        .O(step_reg_9));
  LUT6 #(
    .INIT(64'h0000000000C20010)) 
    \mem[31][15]_i_1 
       (.I0(step_reg_n_0),
        .I1(current_state[1]),
        .I2(op_counter[0]),
        .I3(\addr_rd_OBUF[3]_inst_i_3_n_0 ),
        .I4(op_counter[1]),
        .I5(\mem[28][15]_i_2_n_0 ),
        .O(step_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \mem[3][15]_i_1 
       (.I0(addr_rd_OBUF[2]),
        .I1(addr_rd_OBUF[1]),
        .I2(addr_rd_OBUF[4]),
        .I3(addr_rd_OBUF[3]),
        .I4(addr_rd_OBUF[0]),
        .O(\op_counter_reg[1]_8 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \mem[4][15]_i_1 
       (.I0(\mem[4][15]_i_2_n_0 ),
        .I1(addr_rd_OBUF[0]),
        .I2(addr_rd_OBUF[1]),
        .I3(addr_rd_OBUF[3]),
        .O(step_reg_10));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem[4][15]_i_2 
       (.I0(addr_rd_OBUF[2]),
        .I1(\addr_rd_OBUF[4]_inst_i_2_n_0 ),
        .O(\mem[4][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \mem[5][15]_i_1 
       (.I0(addr_rd_OBUF[0]),
        .I1(addr_rd_OBUF[1]),
        .I2(addr_rd_OBUF[3]),
        .I3(\mem[4][15]_i_2_n_0 ),
        .O(step_reg_12));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \mem[6][15]_i_1 
       (.I0(addr_rd_OBUF[3]),
        .I1(addr_rd_OBUF[0]),
        .I2(\mem[4][15]_i_2_n_0 ),
        .I3(addr_rd_OBUF[1]),
        .O(step_reg_8));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \mem[7][15]_i_1 
       (.I0(addr_rd_OBUF[1]),
        .I1(addr_rd_OBUF[0]),
        .I2(\addr_rd_OBUF[3]_inst_i_3_n_0 ),
        .I3(addr_rd_OBUF[3]),
        .I4(\mem[4][15]_i_2_n_0 ),
        .O(\op_counter_reg[1]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \mem[8][15]_i_1 
       (.I0(addr_rd_OBUF[0]),
        .I1(addr_rd_OBUF[4]),
        .I2(addr_rd_OBUF[1]),
        .I3(addr_rd_OBUF[2]),
        .I4(addr_rd_OBUF[3]),
        .O(step_reg_11));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem[9][15]_i_1 
       (.I0(\mem[2][15]_i_2_n_0 ),
        .I1(addr_rd_OBUF[3]),
        .I2(addr_rd_OBUF[1]),
        .I3(addr_rd_OBUF[4]),
        .I4(addr_rd_OBUF[2]),
        .O(\op_counter_reg[0]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    muxctrl_OBUF_inst_i_1
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(rst_IBUF),
        .I3(current_state[0]),
        .I4(current_state[3]),
        .O(muxctrl_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \muxout_OBUF[10]_inst_i_1 
       (.I0(ALUout_OBUF[9]),
        .I1(muxctrl_OBUF),
        .I2(Q[5]),
        .O(\aleatorio_sal_reg[15] [5]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \muxout_OBUF[11]_inst_i_1 
       (.I0(ALUout_OBUF[10]),
        .I1(muxctrl_OBUF),
        .I2(Q[6]),
        .O(\aleatorio_sal_reg[15] [6]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \muxout_OBUF[12]_inst_i_1 
       (.I0(ALUout_OBUF[11]),
        .I1(muxctrl_OBUF),
        .I2(Q[7]),
        .O(\aleatorio_sal_reg[15] [7]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \muxout_OBUF[13]_inst_i_1 
       (.I0(ALUout_OBUF[12]),
        .I1(muxctrl_OBUF),
        .I2(Q[8]),
        .O(\aleatorio_sal_reg[15] [8]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \muxout_OBUF[14]_inst_i_1 
       (.I0(ALUout_OBUF[13]),
        .I1(muxctrl_OBUF),
        .I2(Q[9]),
        .O(\aleatorio_sal_reg[15] [9]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \muxout_OBUF[15]_inst_i_1 
       (.I0(ALUout_OBUF[14]),
        .I1(muxctrl_OBUF),
        .I2(Q[10]),
        .O(\aleatorio_sal_reg[15] [10]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \muxout_OBUF[4]_inst_i_1 
       (.I0(ALUout_OBUF[3]),
        .I1(muxctrl_OBUF),
        .I2(Q[0]),
        .O(\aleatorio_sal_reg[15] [0]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \muxout_OBUF[5]_inst_i_1 
       (.I0(ALUout_OBUF[4]),
        .I1(muxctrl_OBUF),
        .I2(Q[1]),
        .O(\aleatorio_sal_reg[15] [1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \muxout_OBUF[6]_inst_i_1 
       (.I0(ALUout_OBUF[5]),
        .I1(muxctrl_OBUF),
        .I2(Q[2]),
        .O(\aleatorio_sal_reg[15] [2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \muxout_OBUF[8]_inst_i_1 
       (.I0(ALUout_OBUF[7]),
        .I1(muxctrl_OBUF),
        .I2(Q[3]),
        .O(\aleatorio_sal_reg[15] [3]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \muxout_OBUF[9]_inst_i_1 
       (.I0(ALUout_OBUF[8]),
        .I1(muxctrl_OBUF),
        .I2(Q[4]),
        .O(\aleatorio_sal_reg[15] [4]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0155)) 
    \op_counter[0]_i_1 
       (.I0(op_counter[0]),
        .I1(op_counter[1]),
        .I2(op_counter[2]),
        .I3(op_counter[3]),
        .O(\op_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0266)) 
    \op_counter[1]_i_1 
       (.I0(op_counter[0]),
        .I1(op_counter[1]),
        .I2(op_counter[2]),
        .I3(op_counter[3]),
        .O(\op_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \op_counter[2]_i_1 
       (.I0(op_counter[0]),
        .I1(op_counter[1]),
        .I2(op_counter[2]),
        .I3(op_counter[3]),
        .O(\op_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \op_counter[3]_i_1 
       (.I0(\current_state[0]_i_2_n_0 ),
        .I1(next_state[2]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .I5(current_state[0]),
        .O(op_counter0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h2044)) 
    \op_counter[3]_i_2 
       (.I0(op_counter[2]),
        .I1(op_counter[3]),
        .I2(op_counter[0]),
        .I3(op_counter[1]),
        .O(\op_counter[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_counter_reg[0] 
       (.C(CLK),
        .CE(op_counter0),
        .CLR(p_0_in__0),
        .D(\op_counter[0]_i_1_n_0 ),
        .Q(op_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \op_counter_reg[1] 
       (.C(CLK),
        .CE(op_counter0),
        .CLR(p_0_in__0),
        .D(\op_counter[1]_i_1_n_0 ),
        .Q(op_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \op_counter_reg[2] 
       (.C(CLK),
        .CE(op_counter0),
        .CLR(p_0_in__0),
        .D(\op_counter[2]_i_1_n_0 ),
        .Q(op_counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \op_counter_reg[3] 
       (.C(CLK),
        .CE(op_counter0),
        .CLR(p_0_in__0),
        .D(\op_counter[3]_i_2_n_0 ),
        .Q(op_counter[3]));
  LUT4 #(
    .INIT(16'hF4FF)) 
    p_2_out_carry_i_1
       (.I0(ALUbotones_IBUF[1]),
        .I1(ALUbotones_IBUF[2]),
        .I2(ALUbotones_IBUF[0]),
        .I3(muxctrl_OBUF),
        .O(DI));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    rdy_reg
       (.CLR(1'b0),
        .D(rdy_reg_i_1_n_0),
        .G(rdy4_out),
        .GE(1'b1),
        .Q(rdy));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    rdy_reg_i_1
       (.I0(ALUbotones_IBUF[0]),
        .I1(ALUbotones_IBUF[1]),
        .I2(ALUbotones_IBUF[3]),
        .I3(ALUbotones_IBUF[2]),
        .O(rdy_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    rdy_reg_i_2
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(rst_IBUF),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .O(rdy4_out));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    step_i_1
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(step_reg_n_0),
        .O(step));
  FDCE #(
    .INIT(1'b0)) 
    step_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(step),
        .Q(step_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00D00000)) 
    timer1_i_1
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .I4(\counttimer1[24]_i_3_n_0 ),
        .O(timer15_out));
  FDCE #(
    .INIT(1'b0)) 
    timer1_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(timer15_out),
        .Q(timer1_reg_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    timer2_i_1
       (.I0(timer2_i_2_n_0),
        .I1(\counttimer2[24]_i_1_n_0 ),
        .I2(timer2_i_3_n_0),
        .I3(timer2_i_4_n_0),
        .O(timer20));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    timer2_i_2
       (.I0(timer2_i_5_n_0),
        .I1(timer2_i_6_n_0),
        .I2(\counttimer2_reg_n_0_[19] ),
        .I3(\counttimer2_reg_n_0_[0] ),
        .I4(\counttimer2_reg_n_0_[21] ),
        .I5(\counttimer2_reg_n_0_[3] ),
        .O(timer2_i_2_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    timer2_i_3
       (.I0(\counttimer2_reg_n_0_[6] ),
        .I1(\counttimer2_reg_n_0_[7] ),
        .I2(\counttimer2_reg_n_0_[9] ),
        .I3(\counttimer2_reg_n_0_[15] ),
        .I4(\counttimer2_reg_n_0_[11] ),
        .I5(\counttimer2_reg_n_0_[10] ),
        .O(timer2_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFB)) 
    timer2_i_4
       (.I0(\counttimer2_reg_n_0_[14] ),
        .I1(\counttimer2_reg_n_0_[13] ),
        .I2(\counttimer2_reg_n_0_[1] ),
        .I3(timer2_i_7_n_0),
        .O(timer2_i_4_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    timer2_i_5
       (.I0(\counttimer2_reg_n_0_[24] ),
        .I1(\counttimer2_reg_n_0_[20] ),
        .I2(\counttimer2_reg_n_0_[22] ),
        .I3(\counttimer2_reg_n_0_[23] ),
        .O(timer2_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    timer2_i_6
       (.I0(\counttimer2_reg_n_0_[17] ),
        .I1(\counttimer2_reg_n_0_[12] ),
        .I2(\counttimer2_reg_n_0_[16] ),
        .I3(\counttimer2_reg_n_0_[18] ),
        .O(timer2_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    timer2_i_7
       (.I0(\counttimer2_reg_n_0_[8] ),
        .I1(\counttimer2_reg_n_0_[5] ),
        .I2(\counttimer2_reg_n_0_[4] ),
        .I3(\counttimer2_reg_n_0_[2] ),
        .O(timer2_i_7_n_0));
  FDCE #(
    .INIT(1'b0)) 
    timer2_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(p_0_in__0),
        .D(timer20),
        .Q(timer2));
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
