// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmatprod.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMatprod_CfgInitialize(XMatprod *InstancePtr, XMatprod_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Bus1_BaseAddress = ConfigPtr->Bus1_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMatprod_Start(XMatprod *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatprod_ReadReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_AP_CTRL) & 0x80;
    XMatprod_WriteReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMatprod_IsDone(XMatprod *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatprod_ReadReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMatprod_IsIdle(XMatprod *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatprod_ReadReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMatprod_IsReady(XMatprod *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatprod_ReadReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMatprod_EnableAutoRestart(XMatprod *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatprod_WriteReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_AP_CTRL, 0x80);
}

void XMatprod_DisableAutoRestart(XMatprod *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatprod_WriteReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_AP_CTRL, 0);
}

void XMatprod_Set_m1(XMatprod *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatprod_WriteReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_M1_DATA, Data);
}

u32 XMatprod_Get_m1(XMatprod *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatprod_ReadReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_M1_DATA);
    return Data;
}

void XMatprod_Set_m2(XMatprod *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatprod_WriteReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_M2_DATA, Data);
}

u32 XMatprod_Get_m2(XMatprod *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatprod_ReadReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_M2_DATA);
    return Data;
}

void XMatprod_Set_m3(XMatprod *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatprod_WriteReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_M3_DATA, Data);
}

u32 XMatprod_Get_m3(XMatprod *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatprod_ReadReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_M3_DATA);
    return Data;
}

void XMatprod_Set_N1(XMatprod *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatprod_WriteReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_N1_DATA, Data);
}

u32 XMatprod_Get_N1(XMatprod *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatprod_ReadReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_N1_DATA);
    return Data;
}

void XMatprod_Set_N2(XMatprod *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatprod_WriteReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_N2_DATA, Data);
}

u32 XMatprod_Get_N2(XMatprod *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatprod_ReadReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_N2_DATA);
    return Data;
}

void XMatprod_Set_N3(XMatprod *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatprod_WriteReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_N3_DATA, Data);
}

u32 XMatprod_Get_N3(XMatprod *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatprod_ReadReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_N3_DATA);
    return Data;
}

void XMatprod_InterruptGlobalEnable(XMatprod *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatprod_WriteReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_GIE, 1);
}

void XMatprod_InterruptGlobalDisable(XMatprod *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatprod_WriteReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_GIE, 0);
}

void XMatprod_InterruptEnable(XMatprod *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMatprod_ReadReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_IER);
    XMatprod_WriteReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_IER, Register | Mask);
}

void XMatprod_InterruptDisable(XMatprod *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMatprod_ReadReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_IER);
    XMatprod_WriteReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_IER, Register & (~Mask));
}

void XMatprod_InterruptClear(XMatprod *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatprod_WriteReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_ISR, Mask);
}

u32 XMatprod_InterruptGetEnabled(XMatprod *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMatprod_ReadReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_IER);
}

u32 XMatprod_InterruptGetStatus(XMatprod *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMatprod_ReadReg(InstancePtr->Bus1_BaseAddress, XMATPROD_BUS1_ADDR_ISR);
}

