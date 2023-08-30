vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/BD/ip/BD_swerv_wrapper_verilog_0_0/sim/BD_swerv_wrapper_verilog_0_0.v" \
"../../../bd/BD/ip/BD_intcon_wrapper_bd_0_0/sim/BD_intcon_wrapper_bd_0_0.v" \
"../../../bd/BD/ip/BD_gpio_wrapper_0_0/sim/BD_gpio_wrapper_0_0.v" \
"../../../bd/BD/ip/BD_syscon_wrapper_0_0/sim/BD_syscon_wrapper_0_0.v" \
"../../../bd/BD/ip/BD_bootrom_wrapper_0_0/sim/BD_bootrom_wrapper_0_0.v" \
"../../../bd/BD/ip/BD_bidirec_0_0/sim/BD_bidirec_0_0.v" \
"../../../bd/BD/ip/BD_bidirec_0_1/sim/BD_bidirec_0_1.v" \
"../../../bd/BD/ip/BD_bidirec_0_2/sim/BD_bidirec_0_2.v" \
"../../../bd/BD/ip/BD_bidirec_1_0/sim/BD_bidirec_1_0.v" \
"../../../bd/BD/ip/BD_bidirec_0_3/sim/BD_bidirec_0_3.v" \
"../../../bd/BD/ip/BD_bidirec_1_1/sim/BD_bidirec_1_1.v" \
"../../../bd/BD/ip/BD_bidirec_2_0/sim/BD_bidirec_2_0.v" \
"../../../bd/BD/ip/BD_bidirec_3_0/sim/BD_bidirec_3_0.v" \
"../../../bd/BD/ip/BD_bidirec_0_4/sim/BD_bidirec_0_4.v" \
"../../../bd/BD/ip/BD_bidirec_1_2/sim/BD_bidirec_1_2.v" \
"../../../bd/BD/ip/BD_bidirec_2_1/sim/BD_bidirec_2_1.v" \
"../../../bd/BD/ip/BD_bidirec_3_1/sim/BD_bidirec_3_1.v" \
"../../../bd/BD/ip/BD_bidirec_4_0/sim/BD_bidirec_4_0.v" \
"../../../bd/BD/ip/BD_bidirec_5_0/sim/BD_bidirec_5_0.v" \
"../../../bd/BD/ip/BD_bidirec_6_0/sim/BD_bidirec_6_0.v" \
"../../../bd/BD/ip/BD_bidirec_7_0/sim/BD_bidirec_7_0.v" \
"../../../bd/BD/ip/BD_bidirec_0_5/sim/BD_bidirec_0_5.v" \
"../../../bd/BD/ip/BD_bidirec_1_3/sim/BD_bidirec_1_3.v" \
"../../../bd/BD/ip/BD_bidirec_10_0/sim/BD_bidirec_10_0.v" \
"../../../bd/BD/ip/BD_bidirec_11_0/sim/BD_bidirec_11_0.v" \
"../../../bd/BD/ip/BD_bidirec_12_0/sim/BD_bidirec_12_0.v" \
"../../../bd/BD/ip/BD_bidirec_13_0/sim/BD_bidirec_13_0.v" \
"../../../bd/BD/ip/BD_bidirec_14_0/sim/BD_bidirec_14_0.v" \
"../../../bd/BD/ip/BD_bidirec_15_0/sim/BD_bidirec_15_0.v" \
"../../../bd/BD/ip/BD_bidirec_2_2/sim/BD_bidirec_2_2.v" \
"../../../bd/BD/ip/BD_bidirec_3_2/sim/BD_bidirec_3_2.v" \
"../../../bd/BD/ip/BD_bidirec_4_1/sim/BD_bidirec_4_1.v" \
"../../../bd/BD/ip/BD_bidirec_5_1/sim/BD_bidirec_5_1.v" \
"../../../bd/BD/ip/BD_bidirec_6_1/sim/BD_bidirec_6_1.v" \
"../../../bd/BD/ip/BD_bidirec_7_1/sim/BD_bidirec_7_1.v" \
"../../../bd/BD/ip/BD_bidirec_8_0/sim/BD_bidirec_8_0.v" \
"../../../bd/BD/ip/BD_bidirec_9_0/sim/BD_bidirec_9_0.v" \
"../../../bd/BD/sim/BD.v" \


vlog -work xil_defaultlib \
"glbl.v"

