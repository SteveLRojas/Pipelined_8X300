create_clock -period 7.5 [get_ports clk]
derive_pll_clocks
set_input_delay -clock clk -max 3 [all_inputs]
set_input_delay -clock clk -min 2 [all_inputs]
set_output_delay -clock clk -max 3 [all_outputs]
set_output_delay -clock clk -min 2 [all_outputs]
