create_project prj -part xc7a100t-csg324-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "C:/Users/catia/Rui/MSc_Dissertation/SoC/accelerator/first_accel/solution1/syn/verilog/matprod_fadd_32ns_32ns_32_4_full_dsp_1_ip.tcl"
source "C:/Users/catia/Rui/MSc_Dissertation/SoC/accelerator/first_accel/solution1/syn/verilog/matprod_fmul_32ns_32ns_32_2_max_dsp_1_ip.tcl"
