// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// BUS1
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of m1
//        bit 31~0 - m1[31:0] (Read/Write)
// 0x14 : Data signal of m1
//        bit 31~0 - m1[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of m2
//        bit 31~0 - m2[31:0] (Read/Write)
// 0x20 : Data signal of m2
//        bit 31~0 - m2[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of m3
//        bit 31~0 - m3[31:0] (Read/Write)
// 0x2c : Data signal of m3
//        bit 31~0 - m3[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of N1
//        bit 31~0 - N1[31:0] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of N2
//        bit 31~0 - N2[31:0] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of N3
//        bit 31~0 - N3[31:0] (Read/Write)
// 0x48 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMATPROD_BUS1_ADDR_AP_CTRL 0x00
#define XMATPROD_BUS1_ADDR_GIE     0x04
#define XMATPROD_BUS1_ADDR_IER     0x08
#define XMATPROD_BUS1_ADDR_ISR     0x0c
#define XMATPROD_BUS1_ADDR_M1_DATA 0x10
#define XMATPROD_BUS1_BITS_M1_DATA 64
#define XMATPROD_BUS1_ADDR_M2_DATA 0x1c
#define XMATPROD_BUS1_BITS_M2_DATA 64
#define XMATPROD_BUS1_ADDR_M3_DATA 0x28
#define XMATPROD_BUS1_BITS_M3_DATA 64
#define XMATPROD_BUS1_ADDR_N1_DATA 0x34
#define XMATPROD_BUS1_BITS_N1_DATA 32
#define XMATPROD_BUS1_ADDR_N2_DATA 0x3c
#define XMATPROD_BUS1_BITS_N2_DATA 32
#define XMATPROD_BUS1_ADDR_N3_DATA 0x44
#define XMATPROD_BUS1_BITS_N3_DATA 32

