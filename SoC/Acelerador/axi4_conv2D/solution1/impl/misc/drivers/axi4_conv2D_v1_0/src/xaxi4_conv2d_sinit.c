// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xaxi4_conv2d.h"

extern XAxi4_conv2d_Config XAxi4_conv2d_ConfigTable[];

XAxi4_conv2d_Config *XAxi4_conv2d_LookupConfig(u16 DeviceId) {
	XAxi4_conv2d_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAXI4_CONV2D_NUM_INSTANCES; Index++) {
		if (XAxi4_conv2d_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAxi4_conv2d_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAxi4_conv2d_Initialize(XAxi4_conv2d *InstancePtr, u16 DeviceId) {
	XAxi4_conv2d_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAxi4_conv2d_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAxi4_conv2d_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

