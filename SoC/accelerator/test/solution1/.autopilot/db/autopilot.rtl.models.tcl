set SynModuleInfo {
  {SRCNAME example_Pipeline_1 MODELNAME example_Pipeline_1 RTLNAME example_example_Pipeline_1
    SUBMODULES {
      {MODELNAME example_flow_control_loop_pipe_sequential_init RTLNAME example_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME example_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME example_Pipeline_VITIS_LOOP_39_1 MODELNAME example_Pipeline_VITIS_LOOP_39_1 RTLNAME example_example_Pipeline_VITIS_LOOP_39_1}
  {SRCNAME example_Pipeline_3 MODELNAME example_Pipeline_3 RTLNAME example_example_Pipeline_3}
  {SRCNAME example MODELNAME example RTLNAME example IS_TOP 1
    SUBMODULES {
      {MODELNAME example_buff_RAM_AUTO_1R1W RTLNAME example_buff_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME example_gmem_m_axi RTLNAME example_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME example_control_s_axi RTLNAME example_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
