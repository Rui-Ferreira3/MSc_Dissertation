-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_27 \
  "../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_26 \
  "../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_28 \
  "../../../../rvfpga.gen/sources_1/bd/axi_interconnect/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_interconnect/ip/axi_interconnect_xbar_0/sim/axi_interconnect_xbar_0.v" \
  "../../../bd/axi_interconnect/sim/axi_interconnect.v" \
  "../../../bd/axi_interconnect/ip/axi_interconnect_s00_data_fifo_0/sim/axi_interconnect_s00_data_fifo_0.v" \
  "../../../bd/axi_interconnect/ip/axi_interconnect_s01_data_fifo_0/sim/axi_interconnect_s01_data_fifo_0.v" \
  "../../../bd/axi_interconnect/ip/axi_interconnect_s02_data_fifo_0/sim/axi_interconnect_s02_data_fifo_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib
