// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmatprod.h"

extern XMatprod_Config XMatprod_ConfigTable[];

XMatprod_Config *XMatprod_LookupConfig(u16 DeviceId) {
	XMatprod_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMATPROD_NUM_INSTANCES; Index++) {
		if (XMatprod_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMatprod_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMatprod_Initialize(XMatprod *InstancePtr, u16 DeviceId) {
	XMatprod_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMatprod_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMatprod_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

