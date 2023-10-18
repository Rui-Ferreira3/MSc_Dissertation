vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_27
vlib modelsim_lib/msim/fifo_generator_v13_2_7
vlib modelsim_lib/msim/axi_data_fifo_v2_1_26
vlib modelsim_lib/msim/axi_crossbar_v2_1_28
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_27 modelsim_lib/msim/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 modelsim_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 modelsim_lib/msim/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 modelsim_lib/msim/axi_crossbar_v2_1_28
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/ec67/hdl" \
"../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/ec67/hdl" \
"../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -incr -mfcu  "+incdir+../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/ec67/hdl" \
"../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/ec67/hdl" \
"../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93  \
"../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu  "+incdir+../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/ec67/hdl" \
"../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -incr -mfcu  "+incdir+../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/ec67/hdl" \
"../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -incr -mfcu  "+incdir+../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/ec67/hdl" \
"../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/ec67/hdl" \
"../../../bd/interconnect3s2m/ip/interconnect3s2m_xbar_0/sim/interconnect3s2m_xbar_0.v" \
"../../../bd/interconnect3s2m/sim/interconnect3s2m.v" \
"../../../bd/interconnect3s2m/ip/interconnect3s2m_s00_data_fifo_0/sim/interconnect3s2m_s00_data_fifo_0.v" \
"../../../bd/interconnect3s2m/ip/interconnect3s2m_s01_data_fifo_0/sim/interconnect3s2m_s01_data_fifo_0.v" \
"../../../bd/interconnect3s2m/ip/interconnect3s2m_s02_data_fifo_0/sim/interconnect3s2m_s02_data_fifo_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

