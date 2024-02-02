vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_27
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/axi_data_fifo_v2_1_26
vlib activehdl/axi_crossbar_v2_1_28
vlib activehdl/xil_defaultlib
vlib activehdl/axi_vip_v1_1_13
vlib activehdl/axi_protocol_converter_v2_1_27
vlib activehdl/axi_clock_converter_v2_1_26
vlib activehdl/blk_mem_gen_v8_4_5
vlib activehdl/axi_dwidth_converter_v2_1_27

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_27 activehdl/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 activehdl/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 activehdl/axi_crossbar_v2_1_28
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_vip_v1_1_13 activehdl/axi_vip_v1_1_13
vmap axi_protocol_converter_v2_1_27 activehdl/axi_protocol_converter_v2_1_27
vmap axi_clock_converter_v2_1_26 activehdl/axi_clock_converter_v2_1_26
vmap blk_mem_gen_v8_4_5 activehdl/blk_mem_gen_v8_4_5
vmap axi_dwidth_converter_v2_1_27 activehdl/axi_dwidth_converter_v2_1_27

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -v2k5 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/interconnect/ip/interconnect_xbar_0/sim/interconnect_xbar_0.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/interconnect/ip/interconnect_axi_vip_0_0/sim/interconnect_axi_vip_0_0_pkg.sv" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/interconnect/ip/interconnect_axi_vip_0_0/sim/interconnect_axi_vip_0_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/interconnect/ip/interconnect_s00_data_fifo_0/sim/interconnect_s00_data_fifo_0.v" \
"../../../bd/interconnect/ip/interconnect_s01_data_fifo_0/sim/interconnect_s01_data_fifo_0.v" \
"../../../bd/interconnect/ip/interconnect_s02_data_fifo_0/sim/interconnect_s02_data_fifo_0.v" \

vlog -work axi_protocol_converter_v2_1_27  -v2k5 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_26  -v2k5 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/b8be/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_27  -v2k5 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/4675/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test_rvfpga.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/interconnect/ip/interconnect_auto_us_df_0/sim/interconnect_auto_us_df_0.v" \
"../../../bd/interconnect/ip/interconnect_auto_us_df_1/sim/interconnect_auto_us_df_1.v" \
"../../../bd/interconnect/ip/interconnect_auto_ds_0/sim/interconnect_auto_ds_0.v" \
"../../../bd/interconnect/ip/interconnect_auto_pc_0/sim/interconnect_auto_pc_0.v" \
"../../../bd/interconnect/sim/interconnect.v" \

vlog -work xil_defaultlib \
"glbl.v"

