-makelib ies_lib/xil_defaultlib -sv \
  "C:/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../E1.srcs/sources_1/ip/ILA/sim/ILA.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

