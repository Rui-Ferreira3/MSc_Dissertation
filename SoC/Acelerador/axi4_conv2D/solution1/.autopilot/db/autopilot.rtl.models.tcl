set SynModuleInfo {
  {SRCNAME axi4_conv2D_Pipeline_VITIS_LOOP_13_1_VITIS_LOOP_14_2 MODELNAME axi4_conv2D_Pipeline_VITIS_LOOP_13_1_VITIS_LOOP_14_2 RTLNAME axi4_conv2D_axi4_conv2D_Pipeline_VITIS_LOOP_13_1_VITIS_LOOP_14_2
    SUBMODULES {
      {MODELNAME axi4_conv2D_mul_8ns_8s_16_1_1 RTLNAME axi4_conv2D_mul_8ns_8s_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME axi4_conv2D_flow_control_loop_pipe_sequential_init RTLNAME axi4_conv2D_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME axi4_conv2D_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME axi4_conv2D MODELNAME axi4_conv2D RTLNAME axi4_conv2D IS_TOP 1
    SUBMODULES {
      {MODELNAME axi4_conv2D_gmem_m_axi RTLNAME axi4_conv2D_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME axi4_conv2D_control_s_axi RTLNAME axi4_conv2D_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
