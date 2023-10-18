vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_27
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/axi_data_fifo_v2_1_26
vlib activehdl/axi_crossbar_v2_1_28
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_27 activehdl/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 activehdl/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 activehdl/axi_crossbar_v2_1_28
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -v2k5 "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"../../../bd/axi_interconnect/ip/axi_interconnect_xbar_0/sim/axi_interconnect_xbar_0.v" \
"../../../bd/axi_interconnect/sim/axi_interconnect.v" \
"../../../bd/axi_interconnect/ip/axi_interconnect_s00_data_fifo_0/sim/axi_interconnect_s00_data_fifo_0.v" \
"../../../bd/axi_interconnect/ip/axi_interconnect_s01_data_fifo_0/sim/axi_interconnect_s01_data_fifo_0.v" \
"../../../bd/axi_interconnect/ip/axi_interconnect_s02_data_fifo_0/sim/axi_interconnect_s02_data_fifo_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

