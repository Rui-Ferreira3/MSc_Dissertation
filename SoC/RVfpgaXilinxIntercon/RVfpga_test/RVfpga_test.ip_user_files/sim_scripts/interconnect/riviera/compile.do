vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_27
vlib riviera/fifo_generator_v13_2_7
vlib riviera/axi_data_fifo_v2_1_26
vlib riviera/axi_crossbar_v2_1_28
vlib riviera/xil_defaultlib
vlib riviera/axi_vip_v1_1_13
vlib riviera/axi_protocol_converter_v2_1_27
vlib riviera/axi_clock_converter_v2_1_26
vlib riviera/blk_mem_gen_v8_4_5
vlib riviera/axi_dwidth_converter_v2_1_27
vlib riviera/axi_bram_ctrl_v4_1_7

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_27 riviera/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 riviera/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 riviera/axi_crossbar_v2_1_28
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_vip_v1_1_13 riviera/axi_vip_v1_1_13
vmap axi_protocol_converter_v2_1_27 riviera/axi_protocol_converter_v2_1_27
vmap axi_clock_converter_v2_1_26 riviera/axi_clock_converter_v2_1_26
vmap blk_mem_gen_v8_4_5 riviera/blk_mem_gen_v8_4_5
vmap axi_dwidth_converter_v2_1_27 riviera/axi_dwidth_converter_v2_1_27
vmap axi_bram_ctrl_v4_1_7 riviera/axi_bram_ctrl_v4_1_7

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

vlog -work xpm  -sv2k12 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -v2k5 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/interconnect/ip/interconnect_xbar_0/sim/interconnect_xbar_0.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/interconnect/ip/interconnect_axi_vip_0_0/sim/interconnect_axi_vip_0_0_pkg.sv" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/interconnect/ip/interconnect_axi_vip_0_0/sim/interconnect_axi_vip_0_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/interconnect/sim/interconnect.v" \
"../../../bd/interconnect/ip/interconnect_s00_data_fifo_0/sim/interconnect_s00_data_fifo_0.v" \
"../../../bd/interconnect/ip/interconnect_s01_data_fifo_0/sim/interconnect_s01_data_fifo_0.v" \
"../../../bd/interconnect/ip/interconnect_s02_data_fifo_0/sim/interconnect_s02_data_fifo_0.v" \
"../../../bd/interconnect/ip/interconnect_s03_data_fifo_0/sim/interconnect_s03_data_fifo_0.v" \
"../../../bd/interconnect/ip/interconnect_s04_data_fifo_0/sim/interconnect_s04_data_fifo_0.v" \

vlog -work axi_protocol_converter_v2_1_27  -v2k5 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_26  -v2k5 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/b8be/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_27  -v2k5 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/4675/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/interconnect/ip/interconnect_auto_ds_0/sim/interconnect_auto_ds_0.v" \
"../../../bd/interconnect/ip/interconnect_auto_pc_0/sim/interconnect_auto_pc_0.v" \

vcom -work axi_bram_ctrl_v4_1_7 -93  \
"../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/f80b/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/interconnect/ip/interconnect_axi_bram_ctrl_0_0/sim/interconnect_axi_bram_ctrl_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RVfpga_test.gen/sources_1/bd/interconnect/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/interconnect/ip/interconnect_axi_bram_ctrl_0_bram_0/sim/interconnect_axi_bram_ctrl_0_bram_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

