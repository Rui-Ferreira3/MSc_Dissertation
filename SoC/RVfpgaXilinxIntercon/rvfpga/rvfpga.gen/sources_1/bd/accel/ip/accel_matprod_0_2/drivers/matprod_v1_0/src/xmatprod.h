// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMATPROD_H
#define XMATPROD_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmatprod_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Bus1_BaseAddress;
} XMatprod_Config;
#endif

typedef struct {
    u64 Bus1_BaseAddress;
    u32 IsReady;
} XMatprod;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMatprod_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMatprod_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMatprod_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMatprod_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XMatprod_Initialize(XMatprod *InstancePtr, u16 DeviceId);
XMatprod_Config* XMatprod_LookupConfig(u16 DeviceId);
int XMatprod_CfgInitialize(XMatprod *InstancePtr, XMatprod_Config *ConfigPtr);
#else
int XMatprod_Initialize(XMatprod *InstancePtr, const char* InstanceName);
int XMatprod_Release(XMatprod *InstancePtr);
#endif

void XMatprod_Start(XMatprod *InstancePtr);
u32 XMatprod_IsDone(XMatprod *InstancePtr);
u32 XMatprod_IsIdle(XMatprod *InstancePtr);
u32 XMatprod_IsReady(XMatprod *InstancePtr);
void XMatprod_EnableAutoRestart(XMatprod *InstancePtr);
void XMatprod_DisableAutoRestart(XMatprod *InstancePtr);

void XMatprod_Set_m1(XMatprod *InstancePtr, u64 Data);
u64 XMatprod_Get_m1(XMatprod *InstancePtr);
void XMatprod_Set_m2(XMatprod *InstancePtr, u64 Data);
u64 XMatprod_Get_m2(XMatprod *InstancePtr);
void XMatprod_Set_m3(XMatprod *InstancePtr, u64 Data);
u64 XMatprod_Get_m3(XMatprod *InstancePtr);
void XMatprod_Set_N1(XMatprod *InstancePtr, u32 Data);
u32 XMatprod_Get_N1(XMatprod *InstancePtr);
void XMatprod_Set_N2(XMatprod *InstancePtr, u32 Data);
u32 XMatprod_Get_N2(XMatprod *InstancePtr);
void XMatprod_Set_N3(XMatprod *InstancePtr, u32 Data);
u32 XMatprod_Get_N3(XMatprod *InstancePtr);

void XMatprod_InterruptGlobalEnable(XMatprod *InstancePtr);
void XMatprod_InterruptGlobalDisable(XMatprod *InstancePtr);
void XMatprod_InterruptEnable(XMatprod *InstancePtr, u32 Mask);
void XMatprod_InterruptDisable(XMatprod *InstancePtr, u32 Mask);
void XMatprod_InterruptClear(XMatprod *InstancePtr, u32 Mask);
u32 XMatprod_InterruptGetEnabled(XMatprod *InstancePtr);
u32 XMatprod_InterruptGetStatus(XMatprod *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
