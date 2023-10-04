// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XAXI4_CONV2D_H
#define XAXI4_CONV2D_H

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
#include "xaxi4_conv2d_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XAxi4_conv2d_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XAxi4_conv2d;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAxi4_conv2d_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAxi4_conv2d_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAxi4_conv2d_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAxi4_conv2d_ReadReg(BaseAddress, RegOffset) \
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
int XAxi4_conv2d_Initialize(XAxi4_conv2d *InstancePtr, u16 DeviceId);
XAxi4_conv2d_Config* XAxi4_conv2d_LookupConfig(u16 DeviceId);
int XAxi4_conv2d_CfgInitialize(XAxi4_conv2d *InstancePtr, XAxi4_conv2d_Config *ConfigPtr);
#else
int XAxi4_conv2d_Initialize(XAxi4_conv2d *InstancePtr, const char* InstanceName);
int XAxi4_conv2d_Release(XAxi4_conv2d *InstancePtr);
#endif


void XAxi4_conv2d_Set_image_in(XAxi4_conv2d *InstancePtr, u64 Data);
u64 XAxi4_conv2d_Get_image_in(XAxi4_conv2d *InstancePtr);
void XAxi4_conv2d_Set_image_out(XAxi4_conv2d *InstancePtr, u64 Data);
u64 XAxi4_conv2d_Get_image_out(XAxi4_conv2d *InstancePtr);
void XAxi4_conv2d_Set_weights(XAxi4_conv2d *InstancePtr, u64 Data);
u64 XAxi4_conv2d_Get_weights(XAxi4_conv2d *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
