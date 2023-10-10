-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_27 \
  "../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_26 \
  "../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_28 \
  "../../../../rvfpga_interconnect3s2m.gen/sources_1/bd/interconnect3s2m/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/interconnect3s2m/ip/interconnect3s2m_xbar_0/sim/interconnect3s2m_xbar_0.v" \
  "../../../bd/interconnect3s2m/sim/interconnect3s2m.v" \
  "../../../bd/interconnect3s2m/ip/interconnect3s2m_s00_data_fifo_0/sim/interconnect3s2m_s00_data_fifo_0.v" \
  "../../../bd/interconnect3s2m/ip/interconnect3s2m_s01_data_fifo_0/sim/interconnect3s2m_s01_data_fifo_0.v" \
  "../../../bd/interconnect3s2m/ip/interconnect3s2m_s02_data_fifo_0/sim/interconnect3s2m_s02_data_fifo_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

