// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xaxi4_conv2d.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAxi4_conv2d_CfgInitialize(XAxi4_conv2d *InstancePtr, XAxi4_conv2d_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAxi4_conv2d_Set_image_in(XAxi4_conv2d *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi4_conv2d_WriteReg(InstancePtr->Control_BaseAddress, XAXI4_CONV2D_CONTROL_ADDR_IMAGE_IN_DATA, (u32)(Data));
    XAxi4_conv2d_WriteReg(InstancePtr->Control_BaseAddress, XAXI4_CONV2D_CONTROL_ADDR_IMAGE_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XAxi4_conv2d_Get_image_in(XAxi4_conv2d *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi4_conv2d_ReadReg(InstancePtr->Control_BaseAddress, XAXI4_CONV2D_CONTROL_ADDR_IMAGE_IN_DATA);
    Data += (u64)XAxi4_conv2d_ReadReg(InstancePtr->Control_BaseAddress, XAXI4_CONV2D_CONTROL_ADDR_IMAGE_IN_DATA + 4) << 32;
    return Data;
}

void XAxi4_conv2d_Set_image_out(XAxi4_conv2d *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi4_conv2d_WriteReg(InstancePtr->Control_BaseAddress, XAXI4_CONV2D_CONTROL_ADDR_IMAGE_OUT_DATA, (u32)(Data));
    XAxi4_conv2d_WriteReg(InstancePtr->Control_BaseAddress, XAXI4_CONV2D_CONTROL_ADDR_IMAGE_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XAxi4_conv2d_Get_image_out(XAxi4_conv2d *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi4_conv2d_ReadReg(InstancePtr->Control_BaseAddress, XAXI4_CONV2D_CONTROL_ADDR_IMAGE_OUT_DATA);
    Data += (u64)XAxi4_conv2d_ReadReg(InstancePtr->Control_BaseAddress, XAXI4_CONV2D_CONTROL_ADDR_IMAGE_OUT_DATA + 4) << 32;
    return Data;
}

void XAxi4_conv2d_Set_weights(XAxi4_conv2d *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi4_conv2d_WriteReg(InstancePtr->Control_BaseAddress, XAXI4_CONV2D_CONTROL_ADDR_WEIGHTS_DATA, (u32)(Data));
    XAxi4_conv2d_WriteReg(InstancePtr->Control_BaseAddress, XAXI4_CONV2D_CONTROL_ADDR_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XAxi4_conv2d_Get_weights(XAxi4_conv2d *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi4_conv2d_ReadReg(InstancePtr->Control_BaseAddress, XAXI4_CONV2D_CONTROL_ADDR_WEIGHTS_DATA);
    Data += (u64)XAxi4_conv2d_ReadReg(InstancePtr->Control_BaseAddress, XAXI4_CONV2D_CONTROL_ADDR_WEIGHTS_DATA + 4) << 32;
    return Data;
}

