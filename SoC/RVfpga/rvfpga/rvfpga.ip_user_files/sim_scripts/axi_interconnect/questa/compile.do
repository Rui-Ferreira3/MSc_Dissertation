vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_27
vlib questa_lib/msim/fifo_generator_v13_2_7
vlib questa_lib/msim/axi_data_fifo_v2_1_26
vlib questa_lib/msim/axi_crossbar_v2_1_28
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_27 questa_lib/msim/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 questa_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 questa_lib/msim/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 questa_lib/msim/axi_crossbar_v2_1_28
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93  \
"../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl" \
"../../../bd/axi_interconnect/ip/axi_interconnect_xbar_0/sim/axi_interconnect_xbar_0.v" \
"../../../bd/axi_interconnect/sim/axi_interconnect.v" \
"../../../bd/axi_interconnect/ip/axi_interconnect_s00_data_fifo_0/sim/axi_interconnect_s00_data_fifo_0.v" \
"../../../bd/axi_interconnect/ip/axi_interconnect_s01_data_fifo_0/sim/axi_interconnect_s01_data_fifo_0.v" \
"../../../bd/axi_interconnect/ip/axi_interconnect_s02_data_fifo_0/sim/axi_interconnect_s02_data_fifo_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

