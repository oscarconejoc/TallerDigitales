// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module FIFO_Prueba (
  clk,
  srst,
  din,
  wr_en,
  rd_en,
  dout,
  full,
  overflow,
  empty,
  underflow,
  data_count
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 core_clk CLK" *)
  (* X_INTERFACE_MODE = "slave core_clk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN , ASSOCIATED_BUSIF , ASSOCIATED_PORT , ASSOCIATED_RESET , INSERT_VIP 0" *)
  input clk;
  (* X_INTERFACE_IGNORE = "true" *)
  input srst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *)
  (* X_INTERFACE_MODE = "slave FIFO_WRITE" *)
  input [7:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *)
  input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *)
  (* X_INTERFACE_MODE = "slave FIFO_READ" *)
  input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *)
  output [7:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *)
  output full;
  (* X_INTERFACE_IGNORE = "true" *)
  output overflow;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *)
  output empty;
  (* X_INTERFACE_IGNORE = "true" *)
  output underflow;
  (* X_INTERFACE_IGNORE = "true" *)
  output [8:0]data_count;

  // stub module has no contents

endmodule
