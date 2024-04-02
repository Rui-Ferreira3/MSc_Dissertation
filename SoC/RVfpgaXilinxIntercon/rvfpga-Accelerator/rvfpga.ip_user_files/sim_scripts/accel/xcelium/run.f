-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/accel/sim/accel.v" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_6 \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_6 \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_multadd_v3_0_6 \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_6 \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_18 \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_1_15 \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/22f8/hdl/floating_point_v7_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_1_15 \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/22f8/hdl/floating_point_v7_1_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b87e/hdl/verilog/matprod_BUS1_s_axi.v" \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b87e/hdl/verilog/matprod_fadd_32ns_32ns_32_4_full_dsp_1.v" \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b87e/hdl/verilog/matprod_flow_control_loop_pipe_sequential_init.v" \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b87e/hdl/verilog/matprod_fmul_32ns_32ns_32_2_max_dsp_1.v" \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b87e/hdl/verilog/matprod_gmem_m_axi.v" \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b87e/hdl/verilog/matprod_m1_buffer_RAM_AUTO_1R1W.v" \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b87e/hdl/verilog/matprod_mac_muladd_10s_10s_10ns_10_4_1.v" \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b87e/hdl/verilog/matprod_matprod_Pipeline_VITIS_LOOP_23_1.v" \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b87e/hdl/verilog/matprod_matprod_Pipeline_VITIS_LOOP_24_2.v" \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b87e/hdl/verilog/matprod_matprod_Pipeline_VITIS_LOOP_28_5.v" \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b87e/hdl/verilog/matprod_matprod_Pipeline_VITIS_LOOP_37_6.v" \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b87e/hdl/verilog/matprod_mul_10s_10s_10_1_1.v" \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b87e/hdl/verilog/matprod_mul_32ns_32ns_64_1_1.v" \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b87e/hdl/verilog/matprod_mul_32s_32s_32_1_1.v" \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b87e/hdl/verilog/matprod.v" \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b87e/hdl/ip/matprod_fadd_32ns_32ns_32_4_full_dsp_1_ip.v" \
  "../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b87e/hdl/ip/matprod_fmul_32ns_32ns_32_2_max_dsp_1_ip.v" \
  "../../../bd/accel/ip/accel_matprod_0_4/sim/accel_matprod_0_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

