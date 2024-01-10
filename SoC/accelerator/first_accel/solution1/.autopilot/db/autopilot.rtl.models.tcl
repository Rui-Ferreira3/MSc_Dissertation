set SynModuleInfo {
  {SRCNAME matprod_Pipeline_1 MODELNAME matprod_Pipeline_1 RTLNAME matprod_matprod_Pipeline_1
    SUBMODULES {
      {MODELNAME matprod_flow_control_loop_pipe_sequential_init RTLNAME matprod_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME matprod_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME matprod_Pipeline_2 MODELNAME matprod_Pipeline_2 RTLNAME matprod_matprod_Pipeline_2}
  {SRCNAME matprod_Pipeline_VITIS_LOOP_26_1 MODELNAME matprod_Pipeline_VITIS_LOOP_26_1 RTLNAME matprod_matprod_Pipeline_VITIS_LOOP_26_1
    SUBMODULES {
      {MODELNAME matprod_dadd_64ns_64ns_64_4_full_dsp_1 RTLNAME matprod_dadd_64ns_64ns_64_4_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME matprod_dmul_64ns_64ns_64_4_max_dsp_1 RTLNAME matprod_dmul_64ns_64ns_64_4_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME matprod_mac_muladd_10s_10s_10s_10_4_1 RTLNAME matprod_mac_muladd_10s_10s_10s_10_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME matprod_mac_muladd_10s_10s_10ns_10_4_1 RTLNAME matprod_mac_muladd_10s_10s_10ns_10_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME matprod_Pipeline_4 MODELNAME matprod_Pipeline_4 RTLNAME matprod_matprod_Pipeline_4}
  {SRCNAME matprod MODELNAME matprod RTLNAME matprod IS_TOP 1
    SUBMODULES {
      {MODELNAME matprod_mul_32s_32s_32_1_1 RTLNAME matprod_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME matprod_m1_buffer_RAM_AUTO_1R1W RTLNAME matprod_m1_buffer_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME matprod_gmem_m_axi RTLNAME matprod_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME matprod_BUS1_s_axi RTLNAME matprod_BUS1_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
