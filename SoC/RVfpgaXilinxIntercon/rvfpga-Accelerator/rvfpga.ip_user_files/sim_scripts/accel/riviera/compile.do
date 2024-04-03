vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_dsp48_multadd_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_18
vlib riviera/floating_point_v7_1_15

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 riviera/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 riviera/mult_gen_v12_0_18
vmap floating_point_v7_1_15 riviera/floating_point_v7_1_15

vlog -work xpm  -sv2k12 "+incdir+../../../../rvfpga.gen/sources_1/bd/accel/ip/accel_matprod_0_4/drivers/matprod_v1_0/src" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../rvfpga.gen/sources_1/bd/accel/ip/accel_matprod_0_4/drivers/matprod_v1_0/src" \
"../../../bd/accel/sim/accel.v" \

vcom -work xbip_utils_v3_0_10 -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_15 -93  \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/22f8/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_15  -v2k5 "+incdir+../../../../rvfpga.gen/sources_1/bd/accel/ip/accel_matprod_0_4/drivers/matprod_v1_0/src" \
"../../../../rvfpga.gen/sources_1/bd/accel/ipshared/22f8/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../rvfpga.gen/sources_1/bd/accel/ip/accel_matprod_0_4/drivers/matprod_v1_0/src" \
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

vlog -work xil_defaultlib \
"glbl.v"
