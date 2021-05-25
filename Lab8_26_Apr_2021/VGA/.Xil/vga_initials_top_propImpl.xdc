set_property SRC_FILE_INFO {cfile:c:/Users/Ahiezer/Documents/GitHub/ECE4304_SPRING_2021_GROUP_E/Lab8_26_Apr_2021/VGA/VGA.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc rfile:../VGA.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:CLK_GEN_PLL/inst} [current_design]
current_instance CLK_GEN_PLL/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
