-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_6 \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_6 \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_multadd_v3_0_6 \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_6 \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_18 \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_1_15 \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/22f8/hdl/floating_point_v7_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_1_15 \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/22f8/hdl/floating_point_v7_1_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/e30c/hdl/verilog/matprod_BUS1_s_axi.v" \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/e30c/hdl/verilog/matprod_dadd_64ns_64ns_64_8_full_dsp_1.v" \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/e30c/hdl/verilog/matprod_dmul_64ns_64ns_64_7_max_dsp_1.v" \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/e30c/hdl/verilog/matprod_flow_control_loop_pipe_sequential_init.v" \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/e30c/hdl/verilog/matprod_gmem_m_axi.v" \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/e30c/hdl/verilog/matprod_m1_buffer_RAM_AUTO_1R1W.v" \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/e30c/hdl/verilog/matprod_mac_muladd_10s_10s_10ns_10_4_1.v" \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/e30c/hdl/verilog/matprod_mac_muladd_10s_10s_10s_10_4_1.v" \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/e30c/hdl/verilog/matprod_matprod_Pipeline_1.v" \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/e30c/hdl/verilog/matprod_matprod_Pipeline_2.v" \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/e30c/hdl/verilog/matprod_matprod_Pipeline_4.v" \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/e30c/hdl/verilog/matprod_matprod_Pipeline_VITIS_LOOP_26_1.v" \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/e30c/hdl/verilog/matprod_mul_32s_32s_32_2_1.v" \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/e30c/hdl/verilog/matprod.v" \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/e30c/hdl/ip/matprod_dadd_64ns_64ns_64_8_full_dsp_1_ip.v" \
  "../../../../RVfpga_test.gen/sources_1/bd/accel/ipshared/e30c/hdl/ip/matprod_dmul_64ns_64ns_64_7_max_dsp_1_ip.v" \
  "../../../bd/accel/ip/accel_matprod_0_2/sim/accel_matprod_0_2.v" \
  "../../../bd/accel/sim/accel.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

