## Copyright (C) 1991-2008 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.

## VENDOR "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 8.1 Build 163 10/28/2008 SJ Web Edition"

## DATE "10/05/2020 13:47:14"

## 
## Device: Altera EP2C5T144C8 Package TQFP144
## 

## 
## This Tcl script should be used for PrimeTime (Verilog) only
## 

## This file can be sourced in primetime

set report_default_significant_digits 3
set hierarchy_separator .

set quartus_root "c:/altera/81/quartus/"
set search_path [list . [format "%s%s" $quartus_root "eda/synopsys/primetime/lib"]  ]

set link_path [list *  cycloneii_lcell_comb_lib.db  cycloneii_lcell_ff_lib.db  cycloneii_asynch_io_lib.db  bb2_lib.db  cycloneii_ram_internal_lib.db  cycloneii_memory_register_lib.db  cycloneii_memory_addr_register_lib.db  cycloneii_clk_delay_ctrl_lib.db  cycloneii_clk_delay_cal_ctrl_lib.db  cycloneii_mac_out_lib.db cycloneii_mac_mult_internal_lib.db  cycloneii_mac_register_lib.db  cycloneii_pll_lib.db  alt_vtl.db]

read_verilog  cycloneii_all_pt.v 

##########################
## DESIGN ENTRY SECTION ##
##########################

read_verilog  8X300.vo
current_design N8X300
link
## Set variable timing_propagate_single_condition_min_slew to false only for versions 2004.06 and earlier
regexp {([1-9][0-9][0-9][0-9]\.[0-9][0-9])} $sh_product_version dummy version
if { [string compare "2004.06" $version ] != -1 } {
   set timing_propagate_single_condition_min_slew false
}
set_operating_conditions -analysis_type single
read_sdf 8X300_v.sdo

################################
## TIMING CONSTRAINTS SECTION ##
################################


## Start clock definition ##
# WARNING:  The required clock period is not set. The default value (100 ns) is used. 
create_clock -period 100.000 -waveform {0.000 50.000} [get_ports { clk } ] -name clk  

set_propagated_clock [all_clocks]
## End clock definition ##

## Start create collections ##
## End create collections ##

## Start global settings ##
## End global settings ##

## Start collection commands definition ##

## End collection commands definition ##

## Start individual pin commands definition ##
## End individual pin commands definition ##

## Start Output pin capacitance definition ##
set_load -pin_load 0 [get_ports { A[0] } ]
set_load -pin_load 0 [get_ports { A[10] } ]
set_load -pin_load 0 [get_ports { A[11] } ]
set_load -pin_load 0 [get_ports { A[12] } ]
set_load -pin_load 0 [get_ports { A[1] } ]
set_load -pin_load 0 [get_ports { A[2] } ]
set_load -pin_load 0 [get_ports { A[3] } ]
set_load -pin_load 0 [get_ports { A[4] } ]
set_load -pin_load 0 [get_ports { A[5] } ]
set_load -pin_load 0 [get_ports { A[6] } ]
set_load -pin_load 0 [get_ports { A[7] } ]
set_load -pin_load 0 [get_ports { A[8] } ]
set_load -pin_load 0 [get_ports { A[9] } ]
set_load -pin_load 0 [get_ports { IO_SC } ]
set_load -pin_load 0 [get_ports { IO_WC } ]
set_load -pin_load 0 [get_ports { IO_n_LB_r } ]
set_load -pin_load 0 [get_ports { IO_n_LB_w } ]
set_load -pin_load 0 [get_ports { IO_n_RB_r } ]
set_load -pin_load 0 [get_ports { IO_n_RB_w } ]
set_load -pin_load 0 [get_ports { n_IV_out[0] } ]
set_load -pin_load 0 [get_ports { n_IV_out[1] } ]
set_load -pin_load 0 [get_ports { n_IV_out[2] } ]
set_load -pin_load 0 [get_ports { n_IV_out[3] } ]
set_load -pin_load 0 [get_ports { n_IV_out[4] } ]
set_load -pin_load 0 [get_ports { n_IV_out[5] } ]
set_load -pin_load 0 [get_ports { n_IV_out[6] } ]
set_load -pin_load 0 [get_ports { n_IV_out[7] } ]
## End Output pin capacitance definition ##

## Start clock uncertainty definition ##
## End clock uncertainty definition ##

## Start Multicycle and Cut Path definition ##
## End Multicycle and Cut Path definition ##

## Destroy Collections ##

update_timing
