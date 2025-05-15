// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed May 14 17:41:44 2025
// Host        : DESKTOP-H2BA1LP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/XPC/Desktop/TallerDigitales/Lab2/Eje5/LFSR/LFSR.sim/sim_1/synth/func/xsim/LFSR_Tb_func_synth.v
// Design      : Generator
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module Generator
   (rst,
    clk,
    write,
    aleatorio);
  input rst;
  input clk;
  input write;
  output [15:0]aleatorio;

  wire [15:0]aleatorio;

  OBUF \aleatorio_OBUF[0]_inst 
       (.I(1'b0),
        .O(aleatorio[0]));
  OBUF \aleatorio_OBUF[10]_inst 
       (.I(1'b0),
        .O(aleatorio[10]));
  OBUF \aleatorio_OBUF[11]_inst 
       (.I(1'b0),
        .O(aleatorio[11]));
  OBUF \aleatorio_OBUF[12]_inst 
       (.I(1'b0),
        .O(aleatorio[12]));
  OBUF \aleatorio_OBUF[13]_inst 
       (.I(1'b0),
        .O(aleatorio[13]));
  OBUF \aleatorio_OBUF[14]_inst 
       (.I(1'b0),
        .O(aleatorio[14]));
  OBUF \aleatorio_OBUF[15]_inst 
       (.I(1'b0),
        .O(aleatorio[15]));
  OBUF \aleatorio_OBUF[1]_inst 
       (.I(1'b0),
        .O(aleatorio[1]));
  OBUF \aleatorio_OBUF[2]_inst 
       (.I(1'b0),
        .O(aleatorio[2]));
  OBUF \aleatorio_OBUF[3]_inst 
       (.I(1'b0),
        .O(aleatorio[3]));
  OBUF \aleatorio_OBUF[4]_inst 
       (.I(1'b0),
        .O(aleatorio[4]));
  OBUF \aleatorio_OBUF[5]_inst 
       (.I(1'b0),
        .O(aleatorio[5]));
  OBUF \aleatorio_OBUF[6]_inst 
       (.I(1'b0),
        .O(aleatorio[6]));
  OBUF \aleatorio_OBUF[7]_inst 
       (.I(1'b0),
        .O(aleatorio[7]));
  OBUF \aleatorio_OBUF[8]_inst 
       (.I(1'b0),
        .O(aleatorio[8]));
  OBUF \aleatorio_OBUF[9]_inst 
       (.I(1'b0),
        .O(aleatorio[9]));
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
