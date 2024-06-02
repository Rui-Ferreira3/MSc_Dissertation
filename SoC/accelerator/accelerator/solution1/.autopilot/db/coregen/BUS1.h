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
// 0x14 : reserved
// 0x18 : Data signal of m2
//        bit 31~0 - m2[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of m3
//        bit 31~0 - m3[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of N1
//        bit 31~0 - N1[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of N2
//        bit 31~0 - N2[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of N3
//        bit 31~0 - N3[31:0] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define BUS1_ADDR_AP_CTRL 0x00
#define BUS1_ADDR_GIE     0x04
#define BUS1_ADDR_IER     0x08
#define BUS1_ADDR_ISR     0x0c
#define BUS1_ADDR_M1_DATA 0x10
#define BUS1_BITS_M1_DATA 32
#define BUS1_ADDR_M2_DATA 0x18
#define BUS1_BITS_M2_DATA 32
#define BUS1_ADDR_M3_DATA 0x20
#define BUS1_BITS_M3_DATA 32
#define BUS1_ADDR_N1_DATA 0x28
#define BUS1_BITS_N1_DATA 32
#define BUS1_ADDR_N2_DATA 0x30
#define BUS1_BITS_N2_DATA 32
#define BUS1_ADDR_N3_DATA 0x38
#define BUS1_BITS_N3_DATA 32
