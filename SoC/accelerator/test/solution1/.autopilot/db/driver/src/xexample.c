// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xexample.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XExample_CfgInitialize(XExample *InstancePtr, XExample_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XExample_Set_a(XExample *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExample_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_CONTROL_ADDR_A_DATA, (u32)(Data));
    XExample_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XExample_Get_a(XExample *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExample_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_CONTROL_ADDR_A_DATA);
    Data += (u64)XExample_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

