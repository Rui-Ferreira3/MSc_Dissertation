vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xbip_utils_v3_0_10
vlib questa_lib/msim/axi_utils_v2_0_6
vlib questa_lib/msim/xbip_pipe_v3_0_6
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib questa_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib questa_lib/msim/xbip_bram18k_v3_0_6
vlib questa_lib/msim/mult_gen_v12_0_18
vlib questa_lib/msim/floating_point_v7_1_15

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xbip_utils_v3_0_10 questa_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 questa_lib/msim/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 questa_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 questa_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 questa_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 questa_lib/msim/mult_gen_v12_0_18
vmap floating_point_v7_1_15 questa_lib/msim/floating_point_v7_1_15

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../rvfpga.gen/sources_1/bd/accel/ip/accel_matprod_0_3/drivers/matprod_v1_0/src" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/accel/ip/accel_matprod_0_3/drivers/matprod_v1_0/src" \
"../../../bd/accel/sim/accel.v" \

vcom -work xbip_utils_v3_0_10  -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6  -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6  -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4  -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6  -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6  -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6  -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18  -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_15  -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/22f8/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_15  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/accel/ip/accel_matprod_0_3/drivers/matprod_v1_0/src" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/22f8/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../rvfpga.gen/sources_1/bd/accel/ip/accel_matprod_0_3/drivers/matprod_v1_0/src" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/5754/hdl/verilog/matprod_BUS1_s_axi.v" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/5754/hdl/verilog/matprod_fadd_32ns_32ns_32_4_full_dsp_1.v" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/5754/hdl/verilog/matprod_flow_control_loop_pipe_sequential_init.v" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/5754/hdl/verilog/matprod_fmul_32ns_32ns_32_2_max_dsp_1.v" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/5754/hdl/verilog/matprod_gmem_m_axi.v" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/5754/hdl/verilog/matprod_m1_buffer_RAM_AUTO_1R1W.v" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/5754/hdl/verilog/matprod_mac_muladd_10s_10s_10ns_10_4_1.v" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/5754/hdl/verilog/matprod_mac_muladd_10s_10s_10s_10_4_1.v" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/5754/hdl/verilog/matprod_matprod_Pipeline_1.v" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/5754/hdl/verilog/matprod_matprod_Pipeline_2.v" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/5754/hdl/verilog/matprod_matprod_Pipeline_4.v" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/5754/hdl/verilog/matprod_matprod_Pipeline_VITIS_LOOP_26_1.v" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/5754/hdl/verilog/matprod_mul_32s_32s_32_1_1.v" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/5754/hdl/verilog/matprod.v" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/5754/hdl/ip/matprod_fadd_32ns_32ns_32_4_full_dsp_1_ip.v" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/5754/hdl/ip/matprod_fmul_32ns_32ns_32_2_max_dsp_1_ip.v" \
"../../../bd/accel/ip/accel_matprod_0_3/sim/accel_matprod_0_3.v" \

vlog -work xil_defaultlib \
"glbl.v"

