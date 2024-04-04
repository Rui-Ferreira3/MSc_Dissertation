############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project first_accel
set_top matprod
add_files first_accel/matprod.cpp
add_files first_accel/matprod.h
add_files -tb first_accel/tb_matprod.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7a100t-csg324-1}
create_clock -period 20 -name default
config_export -display_name accelerator -format ip_catalog -output C:/Users/MSI/Rui/MSc_Dissertation/SoC/accelerator/ips -rtl verilog -vivado_clock 20
config_interface -m_axi_addr64=0
source "./first_accel/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog -output C:/Users/MSI/Rui/MSc_Dissertation/SoC/accelerator/ips
