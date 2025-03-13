// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Mar 11 14:51:13 2025
// Host        : Hella running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/sdany/OneDrive/Documents/Eje1/Ejercicio1/Ejercicio1.sim/sim_1/impl/func/xsim/TB_Eje1_func_impl.v
// Design      : TopEje1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "8c8fa3b6" *) 
(* NotValidForBitStream *)
module TopEje1
   (swt,
    boton,
    LEDs);
  input [15:0]swt;
  input [3:0]boton;
  output [15:0]LEDs;

  wire [15:0]LEDs;
  wire [15:0]LEDs_OBUF;
  wire [3:0]boton;
  wire [3:0]boton_IBUF;
  wire [15:0]swt;
  wire [15:0]swt_IBUF;

  OBUF \LEDs_OBUF[0]_inst 
       (.I(LEDs_OBUF[0]),
        .O(LEDs[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LEDs_OBUF[0]_inst_i_1 
       (.I0(swt_IBUF[0]),
        .I1(boton_IBUF[0]),
        .O(LEDs_OBUF[0]));
  OBUF \LEDs_OBUF[10]_inst 
       (.I(LEDs_OBUF[10]),
        .O(LEDs[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LEDs_OBUF[10]_inst_i_1 
       (.I0(swt_IBUF[10]),
        .I1(boton_IBUF[2]),
        .O(LEDs_OBUF[10]));
  OBUF \LEDs_OBUF[11]_inst 
       (.I(LEDs_OBUF[11]),
        .O(LEDs[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LEDs_OBUF[11]_inst_i_1 
       (.I0(swt_IBUF[11]),
        .I1(boton_IBUF[2]),
        .O(LEDs_OBUF[11]));
  OBUF \LEDs_OBUF[12]_inst 
       (.I(LEDs_OBUF[12]),
        .O(LEDs[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LEDs_OBUF[12]_inst_i_1 
       (.I0(swt_IBUF[12]),
        .I1(boton_IBUF[3]),
        .O(LEDs_OBUF[12]));
  OBUF \LEDs_OBUF[13]_inst 
       (.I(LEDs_OBUF[13]),
        .O(LEDs[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LEDs_OBUF[13]_inst_i_1 
       (.I0(swt_IBUF[13]),
        .I1(boton_IBUF[3]),
        .O(LEDs_OBUF[13]));
  OBUF \LEDs_OBUF[14]_inst 
       (.I(LEDs_OBUF[14]),
        .O(LEDs[14]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LEDs_OBUF[14]_inst_i_1 
       (.I0(swt_IBUF[14]),
        .I1(boton_IBUF[3]),
        .O(LEDs_OBUF[14]));
  OBUF \LEDs_OBUF[15]_inst 
       (.I(LEDs_OBUF[15]),
        .O(LEDs[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LEDs_OBUF[15]_inst_i_1 
       (.I0(swt_IBUF[15]),
        .I1(boton_IBUF[3]),
        .O(LEDs_OBUF[15]));
  OBUF \LEDs_OBUF[1]_inst 
       (.I(LEDs_OBUF[1]),
        .O(LEDs[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LEDs_OBUF[1]_inst_i_1 
       (.I0(swt_IBUF[1]),
        .I1(boton_IBUF[0]),
        .O(LEDs_OBUF[1]));
  OBUF \LEDs_OBUF[2]_inst 
       (.I(LEDs_OBUF[2]),
        .O(LEDs[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LEDs_OBUF[2]_inst_i_1 
       (.I0(swt_IBUF[2]),
        .I1(boton_IBUF[0]),
        .O(LEDs_OBUF[2]));
  OBUF \LEDs_OBUF[3]_inst 
       (.I(LEDs_OBUF[3]),
        .O(LEDs[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LEDs_OBUF[3]_inst_i_1 
       (.I0(swt_IBUF[3]),
        .I1(boton_IBUF[0]),
        .O(LEDs_OBUF[3]));
  OBUF \LEDs_OBUF[4]_inst 
       (.I(LEDs_OBUF[4]),
        .O(LEDs[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LEDs_OBUF[4]_inst_i_1 
       (.I0(swt_IBUF[4]),
        .I1(boton_IBUF[1]),
        .O(LEDs_OBUF[4]));
  OBUF \LEDs_OBUF[5]_inst 
       (.I(LEDs_OBUF[5]),
        .O(LEDs[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LEDs_OBUF[5]_inst_i_1 
       (.I0(swt_IBUF[5]),
        .I1(boton_IBUF[1]),
        .O(LEDs_OBUF[5]));
  OBUF \LEDs_OBUF[6]_inst 
       (.I(LEDs_OBUF[6]),
        .O(LEDs[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LEDs_OBUF[6]_inst_i_1 
       (.I0(swt_IBUF[6]),
        .I1(boton_IBUF[1]),
        .O(LEDs_OBUF[6]));
  OBUF \LEDs_OBUF[7]_inst 
       (.I(LEDs_OBUF[7]),
        .O(LEDs[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LEDs_OBUF[7]_inst_i_1 
       (.I0(swt_IBUF[7]),
        .I1(boton_IBUF[1]),
        .O(LEDs_OBUF[7]));
  OBUF \LEDs_OBUF[8]_inst 
       (.I(LEDs_OBUF[8]),
        .O(LEDs[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LEDs_OBUF[8]_inst_i_1 
       (.I0(swt_IBUF[8]),
        .I1(boton_IBUF[2]),
        .O(LEDs_OBUF[8]));
  OBUF \LEDs_OBUF[9]_inst 
       (.I(LEDs_OBUF[9]),
        .O(LEDs[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LEDs_OBUF[9]_inst_i_1 
       (.I0(swt_IBUF[9]),
        .I1(boton_IBUF[2]),
        .O(LEDs_OBUF[9]));
  IBUF \boton_IBUF[0]_inst 
       (.I(boton[0]),
        .O(boton_IBUF[0]));
  IBUF \boton_IBUF[1]_inst 
       (.I(boton[1]),
        .O(boton_IBUF[1]));
  IBUF \boton_IBUF[2]_inst 
       (.I(boton[2]),
        .O(boton_IBUF[2]));
  IBUF \boton_IBUF[3]_inst 
       (.I(boton[3]),
        .O(boton_IBUF[3]));
  IBUF \swt_IBUF[0]_inst 
       (.I(swt[0]),
        .O(swt_IBUF[0]));
  IBUF \swt_IBUF[10]_inst 
       (.I(swt[10]),
        .O(swt_IBUF[10]));
  IBUF \swt_IBUF[11]_inst 
       (.I(swt[11]),
        .O(swt_IBUF[11]));
  IBUF \swt_IBUF[12]_inst 
       (.I(swt[12]),
        .O(swt_IBUF[12]));
  IBUF \swt_IBUF[13]_inst 
       (.I(swt[13]),
        .O(swt_IBUF[13]));
  IBUF \swt_IBUF[14]_inst 
       (.I(swt[14]),
        .O(swt_IBUF[14]));
  IBUF \swt_IBUF[15]_inst 
       (.I(swt[15]),
        .O(swt_IBUF[15]));
  IBUF \swt_IBUF[1]_inst 
       (.I(swt[1]),
        .O(swt_IBUF[1]));
  IBUF \swt_IBUF[2]_inst 
       (.I(swt[2]),
        .O(swt_IBUF[2]));
  IBUF \swt_IBUF[3]_inst 
       (.I(swt[3]),
        .O(swt_IBUF[3]));
  IBUF \swt_IBUF[4]_inst 
       (.I(swt[4]),
        .O(swt_IBUF[4]));
  IBUF \swt_IBUF[5]_inst 
       (.I(swt[5]),
        .O(swt_IBUF[5]));
  IBUF \swt_IBUF[6]_inst 
       (.I(swt[6]),
        .O(swt_IBUF[6]));
  IBUF \swt_IBUF[7]_inst 
       (.I(swt[7]),
        .O(swt_IBUF[7]));
  IBUF \swt_IBUF[8]_inst 
       (.I(swt[8]),
        .O(swt_IBUF[8]));
  IBUF \swt_IBUF[9]_inst 
       (.I(swt[9]),
        .O(swt_IBUF[9]));
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
