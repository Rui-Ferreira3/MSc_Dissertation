# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
# Tool Version Limit: 2019.12
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XMatprod" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_BUS1_BASEADDR" \
        "C_S_AXI_BUS1_HIGHADDR"

    xdefine_config_file $drv_handle "xmatprod_g.c" "XMatprod" \
        "DEVICE_ID" \
        "C_S_AXI_BUS1_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XMatprod" \
        "DEVICE_ID" \
        "C_S_AXI_BUS1_BASEADDR" \
        "C_S_AXI_BUS1_HIGHADDR"
}

