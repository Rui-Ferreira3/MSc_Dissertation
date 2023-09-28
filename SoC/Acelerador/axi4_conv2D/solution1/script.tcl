############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project axi4_conv2D
set_top axi4_conv2D
add_files axi4_conv2D/axi4_conv2D.cpp
add_files axi4_conv2D/axi4_conv2D.h
add_files -tb axi4_conv2D/tb_axi4_conv2D.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7a100tcsg324-1}
create_clock -period 10 -name default
#source "./axi4_conv2D/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
