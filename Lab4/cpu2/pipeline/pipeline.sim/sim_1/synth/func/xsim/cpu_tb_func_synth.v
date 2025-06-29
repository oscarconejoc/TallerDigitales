// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Jun 27 13:28:15 2025
// Host        : DESKTOP-H2BA1LP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/XPC/Desktop/TallerDigitales/Lab4/cpu2/pipeline/pipeline.sim/sim_1/synth/func/xsim/cpu_tb_func_synth.v
// Design      : cpu
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Program_Counter
   (PCF_OBUF,
    clk_IBUF_BUFG,
    rst_IBUF,
    PCNext_IBUF);
  output [31:0]PCF_OBUF;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input [31:0]PCNext_IBUF;

  wire [31:0]PCF_OBUF;
  wire [31:0]PCNext_IBUF;
  wire clk_IBUF_BUFG;
  wire [22:22]p_0_in;
  wire rst_IBUF;

  LUT2 #(
    .INIT(4'hE)) 
    \PC_Out[22]_i_1 
       (.I0(PCNext_IBUF[22]),
        .I1(rst_IBUF),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[0]),
        .Q(PCF_OBUF[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[10]),
        .Q(PCF_OBUF[10]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[11]),
        .Q(PCF_OBUF[11]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[12]),
        .Q(PCF_OBUF[12]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[13]),
        .Q(PCF_OBUF[13]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[14]),
        .Q(PCF_OBUF[14]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[15]),
        .Q(PCF_OBUF[15]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[16]),
        .Q(PCF_OBUF[16]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[17]),
        .Q(PCF_OBUF[17]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[18]),
        .Q(PCF_OBUF[18]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[19]),
        .Q(PCF_OBUF[19]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[1]),
        .Q(PCF_OBUF[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[20]),
        .Q(PCF_OBUF[20]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[21]),
        .Q(PCF_OBUF[21]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in),
        .Q(PCF_OBUF[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[23]),
        .Q(PCF_OBUF[23]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[24]),
        .Q(PCF_OBUF[24]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[25]),
        .Q(PCF_OBUF[25]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[26]),
        .Q(PCF_OBUF[26]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[27]),
        .Q(PCF_OBUF[27]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[28]),
        .Q(PCF_OBUF[28]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[29]),
        .Q(PCF_OBUF[29]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[2]),
        .Q(PCF_OBUF[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[30]),
        .Q(PCF_OBUF[30]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[31]),
        .Q(PCF_OBUF[31]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[3]),
        .Q(PCF_OBUF[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[4]),
        .Q(PCF_OBUF[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[5]),
        .Q(PCF_OBUF[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[6]),
        .Q(PCF_OBUF[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[7]),
        .Q(PCF_OBUF[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[8]),
        .Q(PCF_OBUF[8]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_IBUF[9]),
        .Q(PCF_OBUF[9]),
        .R(rst_IBUF));
endmodule

(* NotValidForBitStream *)
module cpu
   (clk,
    rst,
    Result,
    InstrF,
    PCNext,
    PCNextF,
    PCPlus4,
    PCF);
  input clk;
  input rst;
  output [31:0]Result;
  output [31:0]InstrF;
  input [31:0]PCNext;
  output [31:0]PCNextF;
  output [31:0]PCPlus4;
  output [31:0]PCF;

  wire [31:0]InstrF;
  wire [31:0]PCF;
  wire [31:0]PCF_OBUF;
  wire [31:0]PCNext;
  wire [31:0]PCNextF;
  wire [31:0]PCNext_IBUF;
  wire [31:0]PCPlus4;
  wire [31:0]Result;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire rst;
  wire rst_IBUF;

  OBUFT \InstrF_OBUF[0]_inst 
       (.I(1'b0),
        .O(InstrF[0]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[10]_inst 
       (.I(1'b0),
        .O(InstrF[10]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[11]_inst 
       (.I(1'b0),
        .O(InstrF[11]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[12]_inst 
       (.I(1'b0),
        .O(InstrF[12]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[13]_inst 
       (.I(1'b0),
        .O(InstrF[13]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[14]_inst 
       (.I(1'b0),
        .O(InstrF[14]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[15]_inst 
       (.I(1'b0),
        .O(InstrF[15]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[16]_inst 
       (.I(1'b0),
        .O(InstrF[16]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[17]_inst 
       (.I(1'b0),
        .O(InstrF[17]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[18]_inst 
       (.I(1'b0),
        .O(InstrF[18]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[19]_inst 
       (.I(1'b0),
        .O(InstrF[19]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[1]_inst 
       (.I(1'b0),
        .O(InstrF[1]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[20]_inst 
       (.I(1'b0),
        .O(InstrF[20]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[21]_inst 
       (.I(1'b0),
        .O(InstrF[21]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[22]_inst 
       (.I(1'b0),
        .O(InstrF[22]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[23]_inst 
       (.I(1'b0),
        .O(InstrF[23]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[24]_inst 
       (.I(1'b0),
        .O(InstrF[24]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[25]_inst 
       (.I(1'b0),
        .O(InstrF[25]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[26]_inst 
       (.I(1'b0),
        .O(InstrF[26]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[27]_inst 
       (.I(1'b0),
        .O(InstrF[27]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[28]_inst 
       (.I(1'b0),
        .O(InstrF[28]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[29]_inst 
       (.I(1'b0),
        .O(InstrF[29]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[2]_inst 
       (.I(1'b0),
        .O(InstrF[2]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[30]_inst 
       (.I(1'b0),
        .O(InstrF[30]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[31]_inst 
       (.I(1'b0),
        .O(InstrF[31]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[3]_inst 
       (.I(1'b0),
        .O(InstrF[3]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[4]_inst 
       (.I(1'b0),
        .O(InstrF[4]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[5]_inst 
       (.I(1'b0),
        .O(InstrF[5]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[6]_inst 
       (.I(1'b0),
        .O(InstrF[6]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[7]_inst 
       (.I(1'b0),
        .O(InstrF[7]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[8]_inst 
       (.I(1'b0),
        .O(InstrF[8]),
        .T(1'b1));
  OBUFT \InstrF_OBUF[9]_inst 
       (.I(1'b0),
        .O(InstrF[9]),
        .T(1'b1));
  OBUF \PCF_OBUF[0]_inst 
       (.I(PCF_OBUF[0]),
        .O(PCF[0]));
  OBUF \PCF_OBUF[10]_inst 
       (.I(PCF_OBUF[10]),
        .O(PCF[10]));
  OBUF \PCF_OBUF[11]_inst 
       (.I(PCF_OBUF[11]),
        .O(PCF[11]));
  OBUF \PCF_OBUF[12]_inst 
       (.I(PCF_OBUF[12]),
        .O(PCF[12]));
  OBUF \PCF_OBUF[13]_inst 
       (.I(PCF_OBUF[13]),
        .O(PCF[13]));
  OBUF \PCF_OBUF[14]_inst 
       (.I(PCF_OBUF[14]),
        .O(PCF[14]));
  OBUF \PCF_OBUF[15]_inst 
       (.I(PCF_OBUF[15]),
        .O(PCF[15]));
  OBUF \PCF_OBUF[16]_inst 
       (.I(PCF_OBUF[16]),
        .O(PCF[16]));
  OBUF \PCF_OBUF[17]_inst 
       (.I(PCF_OBUF[17]),
        .O(PCF[17]));
  OBUF \PCF_OBUF[18]_inst 
       (.I(PCF_OBUF[18]),
        .O(PCF[18]));
  OBUF \PCF_OBUF[19]_inst 
       (.I(PCF_OBUF[19]),
        .O(PCF[19]));
  OBUF \PCF_OBUF[1]_inst 
       (.I(PCF_OBUF[1]),
        .O(PCF[1]));
  OBUF \PCF_OBUF[20]_inst 
       (.I(PCF_OBUF[20]),
        .O(PCF[20]));
  OBUF \PCF_OBUF[21]_inst 
       (.I(PCF_OBUF[21]),
        .O(PCF[21]));
  OBUF \PCF_OBUF[22]_inst 
       (.I(PCF_OBUF[22]),
        .O(PCF[22]));
  OBUF \PCF_OBUF[23]_inst 
       (.I(PCF_OBUF[23]),
        .O(PCF[23]));
  OBUF \PCF_OBUF[24]_inst 
       (.I(PCF_OBUF[24]),
        .O(PCF[24]));
  OBUF \PCF_OBUF[25]_inst 
       (.I(PCF_OBUF[25]),
        .O(PCF[25]));
  OBUF \PCF_OBUF[26]_inst 
       (.I(PCF_OBUF[26]),
        .O(PCF[26]));
  OBUF \PCF_OBUF[27]_inst 
       (.I(PCF_OBUF[27]),
        .O(PCF[27]));
  OBUF \PCF_OBUF[28]_inst 
       (.I(PCF_OBUF[28]),
        .O(PCF[28]));
  OBUF \PCF_OBUF[29]_inst 
       (.I(PCF_OBUF[29]),
        .O(PCF[29]));
  OBUF \PCF_OBUF[2]_inst 
       (.I(PCF_OBUF[2]),
        .O(PCF[2]));
  OBUF \PCF_OBUF[30]_inst 
       (.I(PCF_OBUF[30]),
        .O(PCF[30]));
  OBUF \PCF_OBUF[31]_inst 
       (.I(PCF_OBUF[31]),
        .O(PCF[31]));
  OBUF \PCF_OBUF[3]_inst 
       (.I(PCF_OBUF[3]),
        .O(PCF[3]));
  OBUF \PCF_OBUF[4]_inst 
       (.I(PCF_OBUF[4]),
        .O(PCF[4]));
  OBUF \PCF_OBUF[5]_inst 
       (.I(PCF_OBUF[5]),
        .O(PCF[5]));
  OBUF \PCF_OBUF[6]_inst 
       (.I(PCF_OBUF[6]),
        .O(PCF[6]));
  OBUF \PCF_OBUF[7]_inst 
       (.I(PCF_OBUF[7]),
        .O(PCF[7]));
  OBUF \PCF_OBUF[8]_inst 
       (.I(PCF_OBUF[8]),
        .O(PCF[8]));
  OBUF \PCF_OBUF[9]_inst 
       (.I(PCF_OBUF[9]),
        .O(PCF[9]));
  OBUFT \PCNextF_OBUF[0]_inst 
       (.I(1'b0),
        .O(PCNextF[0]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[10]_inst 
       (.I(1'b0),
        .O(PCNextF[10]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[11]_inst 
       (.I(1'b0),
        .O(PCNextF[11]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[12]_inst 
       (.I(1'b0),
        .O(PCNextF[12]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[13]_inst 
       (.I(1'b0),
        .O(PCNextF[13]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[14]_inst 
       (.I(1'b0),
        .O(PCNextF[14]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[15]_inst 
       (.I(1'b0),
        .O(PCNextF[15]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[16]_inst 
       (.I(1'b0),
        .O(PCNextF[16]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[17]_inst 
       (.I(1'b0),
        .O(PCNextF[17]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[18]_inst 
       (.I(1'b0),
        .O(PCNextF[18]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[19]_inst 
       (.I(1'b0),
        .O(PCNextF[19]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[1]_inst 
       (.I(1'b0),
        .O(PCNextF[1]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[20]_inst 
       (.I(1'b0),
        .O(PCNextF[20]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[21]_inst 
       (.I(1'b0),
        .O(PCNextF[21]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[22]_inst 
       (.I(1'b0),
        .O(PCNextF[22]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[23]_inst 
       (.I(1'b0),
        .O(PCNextF[23]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[24]_inst 
       (.I(1'b0),
        .O(PCNextF[24]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[25]_inst 
       (.I(1'b0),
        .O(PCNextF[25]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[26]_inst 
       (.I(1'b0),
        .O(PCNextF[26]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[27]_inst 
       (.I(1'b0),
        .O(PCNextF[27]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[28]_inst 
       (.I(1'b0),
        .O(PCNextF[28]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[29]_inst 
       (.I(1'b0),
        .O(PCNextF[29]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[2]_inst 
       (.I(1'b0),
        .O(PCNextF[2]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[30]_inst 
       (.I(1'b0),
        .O(PCNextF[30]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[31]_inst 
       (.I(1'b0),
        .O(PCNextF[31]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[3]_inst 
       (.I(1'b0),
        .O(PCNextF[3]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[4]_inst 
       (.I(1'b0),
        .O(PCNextF[4]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[5]_inst 
       (.I(1'b0),
        .O(PCNextF[5]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[6]_inst 
       (.I(1'b0),
        .O(PCNextF[6]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[7]_inst 
       (.I(1'b0),
        .O(PCNextF[7]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[8]_inst 
       (.I(1'b0),
        .O(PCNextF[8]),
        .T(1'b1));
  OBUFT \PCNextF_OBUF[9]_inst 
       (.I(1'b0),
        .O(PCNextF[9]),
        .T(1'b1));
  IBUF \PCNext_IBUF[0]_inst 
       (.I(PCNext[0]),
        .O(PCNext_IBUF[0]));
  IBUF \PCNext_IBUF[10]_inst 
       (.I(PCNext[10]),
        .O(PCNext_IBUF[10]));
  IBUF \PCNext_IBUF[11]_inst 
       (.I(PCNext[11]),
        .O(PCNext_IBUF[11]));
  IBUF \PCNext_IBUF[12]_inst 
       (.I(PCNext[12]),
        .O(PCNext_IBUF[12]));
  IBUF \PCNext_IBUF[13]_inst 
       (.I(PCNext[13]),
        .O(PCNext_IBUF[13]));
  IBUF \PCNext_IBUF[14]_inst 
       (.I(PCNext[14]),
        .O(PCNext_IBUF[14]));
  IBUF \PCNext_IBUF[15]_inst 
       (.I(PCNext[15]),
        .O(PCNext_IBUF[15]));
  IBUF \PCNext_IBUF[16]_inst 
       (.I(PCNext[16]),
        .O(PCNext_IBUF[16]));
  IBUF \PCNext_IBUF[17]_inst 
       (.I(PCNext[17]),
        .O(PCNext_IBUF[17]));
  IBUF \PCNext_IBUF[18]_inst 
       (.I(PCNext[18]),
        .O(PCNext_IBUF[18]));
  IBUF \PCNext_IBUF[19]_inst 
       (.I(PCNext[19]),
        .O(PCNext_IBUF[19]));
  IBUF \PCNext_IBUF[1]_inst 
       (.I(PCNext[1]),
        .O(PCNext_IBUF[1]));
  IBUF \PCNext_IBUF[20]_inst 
       (.I(PCNext[20]),
        .O(PCNext_IBUF[20]));
  IBUF \PCNext_IBUF[21]_inst 
       (.I(PCNext[21]),
        .O(PCNext_IBUF[21]));
  IBUF \PCNext_IBUF[22]_inst 
       (.I(PCNext[22]),
        .O(PCNext_IBUF[22]));
  IBUF \PCNext_IBUF[23]_inst 
       (.I(PCNext[23]),
        .O(PCNext_IBUF[23]));
  IBUF \PCNext_IBUF[24]_inst 
       (.I(PCNext[24]),
        .O(PCNext_IBUF[24]));
  IBUF \PCNext_IBUF[25]_inst 
       (.I(PCNext[25]),
        .O(PCNext_IBUF[25]));
  IBUF \PCNext_IBUF[26]_inst 
       (.I(PCNext[26]),
        .O(PCNext_IBUF[26]));
  IBUF \PCNext_IBUF[27]_inst 
       (.I(PCNext[27]),
        .O(PCNext_IBUF[27]));
  IBUF \PCNext_IBUF[28]_inst 
       (.I(PCNext[28]),
        .O(PCNext_IBUF[28]));
  IBUF \PCNext_IBUF[29]_inst 
       (.I(PCNext[29]),
        .O(PCNext_IBUF[29]));
  IBUF \PCNext_IBUF[2]_inst 
       (.I(PCNext[2]),
        .O(PCNext_IBUF[2]));
  IBUF \PCNext_IBUF[30]_inst 
       (.I(PCNext[30]),
        .O(PCNext_IBUF[30]));
  IBUF \PCNext_IBUF[31]_inst 
       (.I(PCNext[31]),
        .O(PCNext_IBUF[31]));
  IBUF \PCNext_IBUF[3]_inst 
       (.I(PCNext[3]),
        .O(PCNext_IBUF[3]));
  IBUF \PCNext_IBUF[4]_inst 
       (.I(PCNext[4]),
        .O(PCNext_IBUF[4]));
  IBUF \PCNext_IBUF[5]_inst 
       (.I(PCNext[5]),
        .O(PCNext_IBUF[5]));
  IBUF \PCNext_IBUF[6]_inst 
       (.I(PCNext[6]),
        .O(PCNext_IBUF[6]));
  IBUF \PCNext_IBUF[7]_inst 
       (.I(PCNext[7]),
        .O(PCNext_IBUF[7]));
  IBUF \PCNext_IBUF[8]_inst 
       (.I(PCNext[8]),
        .O(PCNext_IBUF[8]));
  IBUF \PCNext_IBUF[9]_inst 
       (.I(PCNext[9]),
        .O(PCNext_IBUF[9]));
  OBUFT \PCPlus4_OBUF[0]_inst 
       (.I(1'b0),
        .O(PCPlus4[0]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[10]_inst 
       (.I(1'b0),
        .O(PCPlus4[10]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[11]_inst 
       (.I(1'b0),
        .O(PCPlus4[11]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[12]_inst 
       (.I(1'b0),
        .O(PCPlus4[12]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[13]_inst 
       (.I(1'b0),
        .O(PCPlus4[13]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[14]_inst 
       (.I(1'b0),
        .O(PCPlus4[14]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[15]_inst 
       (.I(1'b0),
        .O(PCPlus4[15]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[16]_inst 
       (.I(1'b0),
        .O(PCPlus4[16]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[17]_inst 
       (.I(1'b0),
        .O(PCPlus4[17]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[18]_inst 
       (.I(1'b0),
        .O(PCPlus4[18]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[19]_inst 
       (.I(1'b0),
        .O(PCPlus4[19]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[1]_inst 
       (.I(1'b0),
        .O(PCPlus4[1]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[20]_inst 
       (.I(1'b0),
        .O(PCPlus4[20]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[21]_inst 
       (.I(1'b0),
        .O(PCPlus4[21]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[22]_inst 
       (.I(1'b0),
        .O(PCPlus4[22]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[23]_inst 
       (.I(1'b0),
        .O(PCPlus4[23]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[24]_inst 
       (.I(1'b0),
        .O(PCPlus4[24]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[25]_inst 
       (.I(1'b0),
        .O(PCPlus4[25]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[26]_inst 
       (.I(1'b0),
        .O(PCPlus4[26]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[27]_inst 
       (.I(1'b0),
        .O(PCPlus4[27]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[28]_inst 
       (.I(1'b0),
        .O(PCPlus4[28]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[29]_inst 
       (.I(1'b0),
        .O(PCPlus4[29]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[2]_inst 
       (.I(1'b0),
        .O(PCPlus4[2]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[30]_inst 
       (.I(1'b0),
        .O(PCPlus4[30]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[31]_inst 
       (.I(1'b0),
        .O(PCPlus4[31]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[3]_inst 
       (.I(1'b0),
        .O(PCPlus4[3]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[4]_inst 
       (.I(1'b0),
        .O(PCPlus4[4]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[5]_inst 
       (.I(1'b0),
        .O(PCPlus4[5]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[6]_inst 
       (.I(1'b0),
        .O(PCPlus4[6]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[7]_inst 
       (.I(1'b0),
        .O(PCPlus4[7]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[8]_inst 
       (.I(1'b0),
        .O(PCPlus4[8]),
        .T(1'b1));
  OBUFT \PCPlus4_OBUF[9]_inst 
       (.I(1'b0),
        .O(PCPlus4[9]),
        .T(1'b1));
  OBUFT \Result_OBUF[0]_inst 
       (.I(1'b0),
        .O(Result[0]),
        .T(1'b1));
  OBUFT \Result_OBUF[10]_inst 
       (.I(1'b0),
        .O(Result[10]),
        .T(1'b1));
  OBUFT \Result_OBUF[11]_inst 
       (.I(1'b0),
        .O(Result[11]),
        .T(1'b1));
  OBUFT \Result_OBUF[12]_inst 
       (.I(1'b0),
        .O(Result[12]),
        .T(1'b1));
  OBUFT \Result_OBUF[13]_inst 
       (.I(1'b0),
        .O(Result[13]),
        .T(1'b1));
  OBUFT \Result_OBUF[14]_inst 
       (.I(1'b0),
        .O(Result[14]),
        .T(1'b1));
  OBUFT \Result_OBUF[15]_inst 
       (.I(1'b0),
        .O(Result[15]),
        .T(1'b1));
  OBUFT \Result_OBUF[16]_inst 
       (.I(1'b0),
        .O(Result[16]),
        .T(1'b1));
  OBUFT \Result_OBUF[17]_inst 
       (.I(1'b0),
        .O(Result[17]),
        .T(1'b1));
  OBUFT \Result_OBUF[18]_inst 
       (.I(1'b0),
        .O(Result[18]),
        .T(1'b1));
  OBUFT \Result_OBUF[19]_inst 
       (.I(1'b0),
        .O(Result[19]),
        .T(1'b1));
  OBUFT \Result_OBUF[1]_inst 
       (.I(1'b0),
        .O(Result[1]),
        .T(1'b1));
  OBUFT \Result_OBUF[20]_inst 
       (.I(1'b0),
        .O(Result[20]),
        .T(1'b1));
  OBUFT \Result_OBUF[21]_inst 
       (.I(1'b0),
        .O(Result[21]),
        .T(1'b1));
  OBUFT \Result_OBUF[22]_inst 
       (.I(1'b0),
        .O(Result[22]),
        .T(1'b1));
  OBUFT \Result_OBUF[23]_inst 
       (.I(1'b0),
        .O(Result[23]),
        .T(1'b1));
  OBUFT \Result_OBUF[24]_inst 
       (.I(1'b0),
        .O(Result[24]),
        .T(1'b1));
  OBUFT \Result_OBUF[25]_inst 
       (.I(1'b0),
        .O(Result[25]),
        .T(1'b1));
  OBUFT \Result_OBUF[26]_inst 
       (.I(1'b0),
        .O(Result[26]),
        .T(1'b1));
  OBUFT \Result_OBUF[27]_inst 
       (.I(1'b0),
        .O(Result[27]),
        .T(1'b1));
  OBUFT \Result_OBUF[28]_inst 
       (.I(1'b0),
        .O(Result[28]),
        .T(1'b1));
  OBUFT \Result_OBUF[29]_inst 
       (.I(1'b0),
        .O(Result[29]),
        .T(1'b1));
  OBUFT \Result_OBUF[2]_inst 
       (.I(1'b0),
        .O(Result[2]),
        .T(1'b1));
  OBUFT \Result_OBUF[30]_inst 
       (.I(1'b0),
        .O(Result[30]),
        .T(1'b1));
  OBUFT \Result_OBUF[31]_inst 
       (.I(1'b0),
        .O(Result[31]),
        .T(1'b1));
  OBUFT \Result_OBUF[3]_inst 
       (.I(1'b0),
        .O(Result[3]),
        .T(1'b1));
  OBUFT \Result_OBUF[4]_inst 
       (.I(1'b0),
        .O(Result[4]),
        .T(1'b1));
  OBUFT \Result_OBUF[5]_inst 
       (.I(1'b0),
        .O(Result[5]),
        .T(1'b1));
  OBUFT \Result_OBUF[6]_inst 
       (.I(1'b0),
        .O(Result[6]),
        .T(1'b1));
  OBUFT \Result_OBUF[7]_inst 
       (.I(1'b0),
        .O(Result[7]),
        .T(1'b1));
  OBUFT \Result_OBUF[8]_inst 
       (.I(1'b0),
        .O(Result[8]),
        .T(1'b1));
  OBUFT \Result_OBUF[9]_inst 
       (.I(1'b0),
        .O(Result[9]),
        .T(1'b1));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  Program_Counter pc
       (.PCF_OBUF(PCF_OBUF),
        .PCNext_IBUF(PCNext_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
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
