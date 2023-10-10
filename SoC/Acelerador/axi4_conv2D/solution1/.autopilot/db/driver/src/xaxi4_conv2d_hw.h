// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of image_in
//        bit 31~0 - image_in[31:0] (Read/Write)
// 0x14 : Data signal of image_in
//        bit 31~0 - image_in[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of image_out
//        bit 31~0 - image_out[31:0] (Read/Write)
// 0x20 : Data signal of image_out
//        bit 31~0 - image_out[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of weights
//        bit 31~0 - weights[31:0] (Read/Write)
// 0x2c : Data signal of weights
//        bit 31~0 - weights[63:32] (Read/Write)
// 0x30 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XAXI4_CONV2D_CONTROL_ADDR_IMAGE_IN_DATA  0x10
#define XAXI4_CONV2D_CONTROL_BITS_IMAGE_IN_DATA  64
#define XAXI4_CONV2D_CONTROL_ADDR_IMAGE_OUT_DATA 0x1c
#define XAXI4_CONV2D_CONTROL_BITS_IMAGE_OUT_DATA 64
#define XAXI4_CONV2D_CONTROL_ADDR_WEIGHTS_DATA   0x28
#define XAXI4_CONV2D_CONTROL_BITS_WEIGHTS_DATA   64
