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
vlib questa_lib/msim/axi_protocol_converter_v2_1_27
vlib questa_lib/msim/axi_clock_converter_v2_1_26
vlib questa_lib/msim/blk_mem_gen_v8_4_5
vlib questa_lib/msim/axi_dwidth_converter_v2_1_27

vmap xpm questa_lib/msim/xpm
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_27 questa_lib/msim/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 questa_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 questa_lib/msim/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 questa_lib/msim/axi_crossbar_v2_1_28
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_protocol_converter_v2_1_27 questa_lib/msim/axi_protocol_converter_v2_1_27
vmap axi_clock_converter_v2_1_26 questa_lib/msim/axi_clock_converter_v2_1_26
vmap blk_mem_gen_v8_4_5 questa_lib/msim/blk_mem_gen_v8_4_5
vmap axi_dwidth_converter_v2_1_27 questa_lib/msim/axi_dwidth_converter_v2_1_27

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93  \
"../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" \
"../../../bd/interconnect/ip/interconnect_xbar_0/sim/interconnect_xbar_0.v" \
"../../../bd/interconnect/sim/interconnect.v" \
"../../../bd/interconnect/ip/interconnect_s00_data_fifo_0/sim/interconnect_s00_data_fifo_0.v" \
"../../../bd/interconnect/ip/interconnect_s01_data_fifo_0/sim/interconnect_s01_data_fifo_0.v" \
"../../../bd/interconnect/ip/interconnect_s02_data_fifo_0/sim/interconnect_s02_data_fifo_0.v" \

vlog -work axi_protocol_converter_v2_1_27  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_26  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/b8be/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_5  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_27  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" \
"../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/4675/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" \
"../../../bd/interconnect/ip/interconnect_auto_us_df_0/sim/interconnect_auto_us_df_0.v" \
"../../../bd/interconnect/ip/interconnect_auto_ds_0/sim/interconnect_auto_ds_0.v" \
"../../../bd/interconnect/ip/interconnect_auto_pc_0/sim/interconnect_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

