set_property SRC_FILE_INFO {cfile:c:/VivadoProjects/Eje_4_Ahora_Si/Eje_4_Ahora_Si.gen/sources_1/ip/clock_16MHz/clock_16MHz.xdc rfile:../../../Eje_4_Ahora_Si.gen/sources_1/ip/clock_16MHz/clock_16MHz.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
