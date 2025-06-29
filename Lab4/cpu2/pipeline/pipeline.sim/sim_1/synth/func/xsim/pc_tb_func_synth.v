// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Jun 27 12:39:36 2025
// Host        : DESKTOP-H2BA1LP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/XPC/Desktop/TallerDigitales/Lab4/cpu2/pipeline/pipeline.sim/sim_1/synth/func/xsim/pc_tb_func_synth.v
// Design      : cpu
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Program_Counter
   (PCNext_OBUF,
    clk_IBUF_BUFG,
    rst_IBUF);
  output [29:0]PCNext_OBUF;
  input clk_IBUF_BUFG;
  input rst_IBUF;

  wire [31:2]PCF;
  wire [29:0]PCNext_OBUF;
  wire clk_IBUF_BUFG;
  wire [22:22]p_0_in;
  wire \pc_4_adder/C_12 ;
  wire \pc_4_adder/C_17 ;
  wire \pc_4_adder/C_22 ;
  wire \pc_4_adder/C_27 ;
  wire \pc_4_adder/C_7 ;
  wire rst_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \PCNext_OBUF[10]_inst_i_1 
       (.I0(PCF[8]),
        .I1(\pc_4_adder/C_7 ),
        .I2(PCF[9]),
        .I3(PCF[10]),
        .O(PCNext_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PCNext_OBUF[11]_inst_i_1 
       (.I0(PCF[9]),
        .I1(\pc_4_adder/C_7 ),
        .I2(PCF[8]),
        .I3(PCF[10]),
        .I4(PCF[11]),
        .O(PCNext_OBUF[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \PCNext_OBUF[12]_inst_i_1 
       (.I0(PCF[10]),
        .I1(PCF[8]),
        .I2(\pc_4_adder/C_7 ),
        .I3(PCF[9]),
        .I4(PCF[11]),
        .I5(PCF[12]),
        .O(PCNext_OBUF[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \PCNext_OBUF[12]_inst_i_2 
       (.I0(PCF[7]),
        .I1(PCF[5]),
        .I2(PCF[3]),
        .I3(PCF[2]),
        .I4(PCF[4]),
        .I5(PCF[6]),
        .O(\pc_4_adder/C_7 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PCNext_OBUF[13]_inst_i_1 
       (.I0(\pc_4_adder/C_12 ),
        .I1(PCF[13]),
        .O(PCNext_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PCNext_OBUF[14]_inst_i_1 
       (.I0(\pc_4_adder/C_12 ),
        .I1(PCF[13]),
        .I2(PCF[14]),
        .O(PCNext_OBUF[12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \PCNext_OBUF[15]_inst_i_1 
       (.I0(PCF[13]),
        .I1(\pc_4_adder/C_12 ),
        .I2(PCF[14]),
        .I3(PCF[15]),
        .O(PCNext_OBUF[13]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PCNext_OBUF[16]_inst_i_1 
       (.I0(PCF[14]),
        .I1(\pc_4_adder/C_12 ),
        .I2(PCF[13]),
        .I3(PCF[15]),
        .I4(PCF[16]),
        .O(PCNext_OBUF[14]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \PCNext_OBUF[17]_inst_i_1 
       (.I0(PCF[15]),
        .I1(PCF[13]),
        .I2(\pc_4_adder/C_12 ),
        .I3(PCF[14]),
        .I4(PCF[16]),
        .I5(PCF[17]),
        .O(PCNext_OBUF[15]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \PCNext_OBUF[17]_inst_i_2 
       (.I0(PCF[12]),
        .I1(PCF[10]),
        .I2(PCF[8]),
        .I3(\pc_4_adder/C_7 ),
        .I4(PCF[9]),
        .I5(PCF[11]),
        .O(\pc_4_adder/C_12 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PCNext_OBUF[18]_inst_i_1 
       (.I0(\pc_4_adder/C_17 ),
        .I1(PCF[18]),
        .O(PCNext_OBUF[16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PCNext_OBUF[19]_inst_i_1 
       (.I0(\pc_4_adder/C_17 ),
        .I1(PCF[18]),
        .I2(PCF[19]),
        .O(PCNext_OBUF[17]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \PCNext_OBUF[20]_inst_i_1 
       (.I0(PCF[18]),
        .I1(\pc_4_adder/C_17 ),
        .I2(PCF[19]),
        .I3(PCF[20]),
        .O(PCNext_OBUF[18]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PCNext_OBUF[21]_inst_i_1 
       (.I0(PCF[19]),
        .I1(\pc_4_adder/C_17 ),
        .I2(PCF[18]),
        .I3(PCF[20]),
        .I4(PCF[21]),
        .O(PCNext_OBUF[19]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \PCNext_OBUF[22]_inst_i_1 
       (.I0(PCF[20]),
        .I1(PCF[18]),
        .I2(\pc_4_adder/C_17 ),
        .I3(PCF[19]),
        .I4(PCF[21]),
        .I5(PCF[22]),
        .O(PCNext_OBUF[20]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \PCNext_OBUF[22]_inst_i_2 
       (.I0(PCF[17]),
        .I1(PCF[15]),
        .I2(PCF[13]),
        .I3(\pc_4_adder/C_12 ),
        .I4(PCF[14]),
        .I5(PCF[16]),
        .O(\pc_4_adder/C_17 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PCNext_OBUF[23]_inst_i_1 
       (.I0(\pc_4_adder/C_22 ),
        .I1(PCF[23]),
        .O(PCNext_OBUF[21]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PCNext_OBUF[24]_inst_i_1 
       (.I0(\pc_4_adder/C_22 ),
        .I1(PCF[23]),
        .I2(PCF[24]),
        .O(PCNext_OBUF[22]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \PCNext_OBUF[25]_inst_i_1 
       (.I0(PCF[23]),
        .I1(\pc_4_adder/C_22 ),
        .I2(PCF[24]),
        .I3(PCF[25]),
        .O(PCNext_OBUF[23]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PCNext_OBUF[26]_inst_i_1 
       (.I0(PCF[24]),
        .I1(\pc_4_adder/C_22 ),
        .I2(PCF[23]),
        .I3(PCF[25]),
        .I4(PCF[26]),
        .O(PCNext_OBUF[24]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \PCNext_OBUF[27]_inst_i_1 
       (.I0(PCF[25]),
        .I1(PCF[23]),
        .I2(\pc_4_adder/C_22 ),
        .I3(PCF[24]),
        .I4(PCF[26]),
        .I5(PCF[27]),
        .O(PCNext_OBUF[25]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \PCNext_OBUF[27]_inst_i_2 
       (.I0(PCF[22]),
        .I1(PCF[20]),
        .I2(PCF[18]),
        .I3(\pc_4_adder/C_17 ),
        .I4(PCF[19]),
        .I5(PCF[21]),
        .O(\pc_4_adder/C_22 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PCNext_OBUF[28]_inst_i_1 
       (.I0(\pc_4_adder/C_27 ),
        .I1(PCF[28]),
        .O(PCNext_OBUF[26]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PCNext_OBUF[29]_inst_i_1 
       (.I0(\pc_4_adder/C_27 ),
        .I1(PCF[28]),
        .I2(PCF[29]),
        .O(PCNext_OBUF[27]));
  LUT1 #(
    .INIT(2'h1)) 
    \PCNext_OBUF[2]_inst_i_1 
       (.I0(PCF[2]),
        .O(PCNext_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \PCNext_OBUF[30]_inst_i_1 
       (.I0(PCF[28]),
        .I1(\pc_4_adder/C_27 ),
        .I2(PCF[29]),
        .I3(PCF[30]),
        .O(PCNext_OBUF[28]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PCNext_OBUF[31]_inst_i_1 
       (.I0(PCF[29]),
        .I1(\pc_4_adder/C_27 ),
        .I2(PCF[28]),
        .I3(PCF[30]),
        .I4(PCF[31]),
        .O(PCNext_OBUF[29]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \PCNext_OBUF[31]_inst_i_2 
       (.I0(PCF[27]),
        .I1(PCF[25]),
        .I2(PCF[23]),
        .I3(\pc_4_adder/C_22 ),
        .I4(PCF[24]),
        .I5(PCF[26]),
        .O(\pc_4_adder/C_27 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PCNext_OBUF[3]_inst_i_1 
       (.I0(PCF[2]),
        .I1(PCF[3]),
        .O(PCNext_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PCNext_OBUF[4]_inst_i_1 
       (.I0(PCF[2]),
        .I1(PCF[3]),
        .I2(PCF[4]),
        .O(PCNext_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \PCNext_OBUF[5]_inst_i_1 
       (.I0(PCF[3]),
        .I1(PCF[2]),
        .I2(PCF[4]),
        .I3(PCF[5]),
        .O(PCNext_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PCNext_OBUF[6]_inst_i_1 
       (.I0(PCF[4]),
        .I1(PCF[2]),
        .I2(PCF[3]),
        .I3(PCF[5]),
        .I4(PCF[6]),
        .O(PCNext_OBUF[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \PCNext_OBUF[7]_inst_i_1 
       (.I0(PCF[5]),
        .I1(PCF[3]),
        .I2(PCF[2]),
        .I3(PCF[4]),
        .I4(PCF[6]),
        .I5(PCF[7]),
        .O(PCNext_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PCNext_OBUF[8]_inst_i_1 
       (.I0(\pc_4_adder/C_7 ),
        .I1(PCF[8]),
        .O(PCNext_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PCNext_OBUF[9]_inst_i_1 
       (.I0(\pc_4_adder/C_7 ),
        .I1(PCF[8]),
        .I2(PCF[9]),
        .O(PCNext_OBUF[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \PC_Out[22]_i_1 
       (.I0(PCNext_OBUF[20]),
        .I1(rst_IBUF),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[8]),
        .Q(PCF[10]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[9]),
        .Q(PCF[11]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[10]),
        .Q(PCF[12]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[11]),
        .Q(PCF[13]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[12]),
        .Q(PCF[14]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[13]),
        .Q(PCF[15]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[14]),
        .Q(PCF[16]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[15]),
        .Q(PCF[17]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[16]),
        .Q(PCF[18]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[17]),
        .Q(PCF[19]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[18]),
        .Q(PCF[20]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[19]),
        .Q(PCF[21]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in),
        .Q(PCF[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[21]),
        .Q(PCF[23]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[22]),
        .Q(PCF[24]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[23]),
        .Q(PCF[25]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[24]),
        .Q(PCF[26]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[25]),
        .Q(PCF[27]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[26]),
        .Q(PCF[28]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[27]),
        .Q(PCF[29]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[0]),
        .Q(PCF[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[28]),
        .Q(PCF[30]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[29]),
        .Q(PCF[31]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[1]),
        .Q(PCF[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[2]),
        .Q(PCF[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[3]),
        .Q(PCF[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[4]),
        .Q(PCF[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[5]),
        .Q(PCF[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[6]),
        .Q(PCF[8]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \PC_Out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PCNext_OBUF[7]),
        .Q(PCF[9]),
        .R(rst_IBUF));
endmodule

(* NotValidForBitStream *)
module cpu
   (clk,
    rst,
    Result,
    InstrF,
    PCNext);
  input clk;
  input rst;
  output [31:0]Result;
  output [31:0]InstrF;
  output [31:0]PCNext;

  wire [31:0]InstrF;
  wire [0:0]InstrF_OBUF;
  wire [31:0]PCNext;
  wire [31:2]PCNext_OBUF;
  wire [31:0]Result;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire rst;
  wire rst_IBUF;

  OBUF \InstrF_OBUF[0]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[0]));
  OBUF \InstrF_OBUF[10]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[10]));
  OBUF \InstrF_OBUF[11]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[11]));
  OBUF \InstrF_OBUF[12]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[12]));
  OBUF \InstrF_OBUF[13]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[13]));
  OBUF \InstrF_OBUF[14]_inst 
       (.I(1'b0),
        .O(InstrF[14]));
  OBUF \InstrF_OBUF[15]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[15]));
  OBUF \InstrF_OBUF[16]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[16]));
  OBUF \InstrF_OBUF[17]_inst 
       (.I(1'b0),
        .O(InstrF[17]));
  OBUF \InstrF_OBUF[18]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[18]));
  OBUF \InstrF_OBUF[19]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[19]));
  OBUF \InstrF_OBUF[1]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[1]));
  OBUF \InstrF_OBUF[20]_inst 
       (.I(1'b0),
        .O(InstrF[20]));
  OBUF \InstrF_OBUF[21]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[21]));
  OBUF \InstrF_OBUF[22]_inst 
       (.I(1'b0),
        .O(InstrF[22]));
  OBUF \InstrF_OBUF[23]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[23]));
  OBUF \InstrF_OBUF[24]_inst 
       (.I(1'b0),
        .O(InstrF[24]));
  OBUF \InstrF_OBUF[25]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[25]));
  OBUF \InstrF_OBUF[26]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[26]));
  OBUF \InstrF_OBUF[27]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[27]));
  OBUF \InstrF_OBUF[28]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[28]));
  OBUF \InstrF_OBUF[29]_inst 
       (.I(1'b0),
        .O(InstrF[29]));
  OBUF \InstrF_OBUF[2]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[2]));
  OBUF \InstrF_OBUF[30]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[30]));
  OBUF \InstrF_OBUF[31]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[31]));
  OBUF \InstrF_OBUF[3]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[3]));
  OBUF \InstrF_OBUF[4]_inst 
       (.I(1'b0),
        .O(InstrF[4]));
  OBUF \InstrF_OBUF[5]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[5]));
  OBUF \InstrF_OBUF[6]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[6]));
  OBUF \InstrF_OBUF[7]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[7]));
  OBUF \InstrF_OBUF[8]_inst 
       (.I(1'b0),
        .O(InstrF[8]));
  OBUF \InstrF_OBUF[9]_inst 
       (.I(InstrF_OBUF),
        .O(InstrF[9]));
  OBUF \PCNext_OBUF[0]_inst 
       (.I(1'b0),
        .O(PCNext[0]));
  OBUF \PCNext_OBUF[10]_inst 
       (.I(PCNext_OBUF[10]),
        .O(PCNext[10]));
  OBUF \PCNext_OBUF[11]_inst 
       (.I(PCNext_OBUF[11]),
        .O(PCNext[11]));
  OBUF \PCNext_OBUF[12]_inst 
       (.I(PCNext_OBUF[12]),
        .O(PCNext[12]));
  OBUF \PCNext_OBUF[13]_inst 
       (.I(PCNext_OBUF[13]),
        .O(PCNext[13]));
  OBUF \PCNext_OBUF[14]_inst 
       (.I(PCNext_OBUF[14]),
        .O(PCNext[14]));
  OBUF \PCNext_OBUF[15]_inst 
       (.I(PCNext_OBUF[15]),
        .O(PCNext[15]));
  OBUF \PCNext_OBUF[16]_inst 
       (.I(PCNext_OBUF[16]),
        .O(PCNext[16]));
  OBUF \PCNext_OBUF[17]_inst 
       (.I(PCNext_OBUF[17]),
        .O(PCNext[17]));
  OBUF \PCNext_OBUF[18]_inst 
       (.I(PCNext_OBUF[18]),
        .O(PCNext[18]));
  OBUF \PCNext_OBUF[19]_inst 
       (.I(PCNext_OBUF[19]),
        .O(PCNext[19]));
  OBUF \PCNext_OBUF[1]_inst 
       (.I(1'b0),
        .O(PCNext[1]));
  OBUF \PCNext_OBUF[20]_inst 
       (.I(PCNext_OBUF[20]),
        .O(PCNext[20]));
  OBUF \PCNext_OBUF[21]_inst 
       (.I(PCNext_OBUF[21]),
        .O(PCNext[21]));
  OBUF \PCNext_OBUF[22]_inst 
       (.I(PCNext_OBUF[22]),
        .O(PCNext[22]));
  OBUF \PCNext_OBUF[23]_inst 
       (.I(PCNext_OBUF[23]),
        .O(PCNext[23]));
  OBUF \PCNext_OBUF[24]_inst 
       (.I(PCNext_OBUF[24]),
        .O(PCNext[24]));
  OBUF \PCNext_OBUF[25]_inst 
       (.I(PCNext_OBUF[25]),
        .O(PCNext[25]));
  OBUF \PCNext_OBUF[26]_inst 
       (.I(PCNext_OBUF[26]),
        .O(PCNext[26]));
  OBUF \PCNext_OBUF[27]_inst 
       (.I(PCNext_OBUF[27]),
        .O(PCNext[27]));
  OBUF \PCNext_OBUF[28]_inst 
       (.I(PCNext_OBUF[28]),
        .O(PCNext[28]));
  OBUF \PCNext_OBUF[29]_inst 
       (.I(PCNext_OBUF[29]),
        .O(PCNext[29]));
  OBUF \PCNext_OBUF[2]_inst 
       (.I(PCNext_OBUF[2]),
        .O(PCNext[2]));
  OBUF \PCNext_OBUF[30]_inst 
       (.I(PCNext_OBUF[30]),
        .O(PCNext[30]));
  OBUF \PCNext_OBUF[31]_inst 
       (.I(PCNext_OBUF[31]),
        .O(PCNext[31]));
  OBUF \PCNext_OBUF[3]_inst 
       (.I(PCNext_OBUF[3]),
        .O(PCNext[3]));
  OBUF \PCNext_OBUF[4]_inst 
       (.I(PCNext_OBUF[4]),
        .O(PCNext[4]));
  OBUF \PCNext_OBUF[5]_inst 
       (.I(PCNext_OBUF[5]),
        .O(PCNext[5]));
  OBUF \PCNext_OBUF[6]_inst 
       (.I(PCNext_OBUF[6]),
        .O(PCNext[6]));
  OBUF \PCNext_OBUF[7]_inst 
       (.I(PCNext_OBUF[7]),
        .O(PCNext[7]));
  OBUF \PCNext_OBUF[8]_inst 
       (.I(PCNext_OBUF[8]),
        .O(PCNext[8]));
  OBUF \PCNext_OBUF[9]_inst 
       (.I(PCNext_OBUF[9]),
        .O(PCNext[9]));
  OBUF \Result_OBUF[0]_inst 
       (.I(1'b0),
        .O(Result[0]));
  OBUF \Result_OBUF[10]_inst 
       (.I(1'b0),
        .O(Result[10]));
  OBUF \Result_OBUF[11]_inst 
       (.I(1'b0),
        .O(Result[11]));
  OBUF \Result_OBUF[12]_inst 
       (.I(1'b0),
        .O(Result[12]));
  OBUF \Result_OBUF[13]_inst 
       (.I(1'b0),
        .O(Result[13]));
  OBUF \Result_OBUF[14]_inst 
       (.I(1'b0),
        .O(Result[14]));
  OBUF \Result_OBUF[15]_inst 
       (.I(1'b0),
        .O(Result[15]));
  OBUF \Result_OBUF[16]_inst 
       (.I(1'b0),
        .O(Result[16]));
  OBUF \Result_OBUF[17]_inst 
       (.I(1'b0),
        .O(Result[17]));
  OBUF \Result_OBUF[18]_inst 
       (.I(1'b0),
        .O(Result[18]));
  OBUF \Result_OBUF[19]_inst 
       (.I(1'b0),
        .O(Result[19]));
  OBUF \Result_OBUF[1]_inst 
       (.I(1'b0),
        .O(Result[1]));
  OBUF \Result_OBUF[20]_inst 
       (.I(1'b0),
        .O(Result[20]));
  OBUF \Result_OBUF[21]_inst 
       (.I(1'b0),
        .O(Result[21]));
  OBUF \Result_OBUF[22]_inst 
       (.I(1'b0),
        .O(Result[22]));
  OBUF \Result_OBUF[23]_inst 
       (.I(1'b0),
        .O(Result[23]));
  OBUF \Result_OBUF[24]_inst 
       (.I(1'b0),
        .O(Result[24]));
  OBUF \Result_OBUF[25]_inst 
       (.I(1'b0),
        .O(Result[25]));
  OBUF \Result_OBUF[26]_inst 
       (.I(1'b0),
        .O(Result[26]));
  OBUF \Result_OBUF[27]_inst 
       (.I(1'b0),
        .O(Result[27]));
  OBUF \Result_OBUF[28]_inst 
       (.I(1'b0),
        .O(Result[28]));
  OBUF \Result_OBUF[29]_inst 
       (.I(1'b0),
        .O(Result[29]));
  OBUF \Result_OBUF[2]_inst 
       (.I(1'b0),
        .O(Result[2]));
  OBUF \Result_OBUF[30]_inst 
       (.I(1'b0),
        .O(Result[30]));
  OBUF \Result_OBUF[31]_inst 
       (.I(1'b0),
        .O(Result[31]));
  OBUF \Result_OBUF[3]_inst 
       (.I(1'b0),
        .O(Result[3]));
  OBUF \Result_OBUF[4]_inst 
       (.I(1'b0),
        .O(Result[4]));
  OBUF \Result_OBUF[5]_inst 
       (.I(1'b0),
        .O(Result[5]));
  OBUF \Result_OBUF[6]_inst 
       (.I(1'b0),
        .O(Result[6]));
  OBUF \Result_OBUF[7]_inst 
       (.I(1'b0),
        .O(Result[7]));
  OBUF \Result_OBUF[8]_inst 
       (.I(1'b0),
        .O(Result[8]));
  OBUF \Result_OBUF[9]_inst 
       (.I(1'b0),
        .O(Result[9]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  instrmem imem
       (.InstrF_OBUF(InstrF_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF));
  Program_Counter pc
       (.PCNext_OBUF(PCNext_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule

module instrmem
   (InstrF_OBUF,
    rst_IBUF,
    clk_IBUF_BUFG);
  output [0:0]InstrF_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;

  wire [0:0]InstrF_OBUF;
  wire clk_IBUF_BUFG;
  wire rst_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \RD_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b1),
        .Q(InstrF_OBUF),
        .R(rst_IBUF));
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
