// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="example_example,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a100t-csg324-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.300000,HLS_SYN_LAT=177,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=0,HLS_SYN_FF=1121,HLS_SYN_LUT=2004,HLS_VERSION=2022_2}" *)

module example (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_gmem_AWVALID,
        m_axi_gmem_AWREADY,
        m_axi_gmem_AWADDR,
        m_axi_gmem_AWID,
        m_axi_gmem_AWLEN,
        m_axi_gmem_AWSIZE,
        m_axi_gmem_AWBURST,
        m_axi_gmem_AWLOCK,
        m_axi_gmem_AWCACHE,
        m_axi_gmem_AWPROT,
        m_axi_gmem_AWQOS,
        m_axi_gmem_AWREGION,
        m_axi_gmem_AWUSER,
        m_axi_gmem_WVALID,
        m_axi_gmem_WREADY,
        m_axi_gmem_WDATA,
        m_axi_gmem_WSTRB,
        m_axi_gmem_WLAST,
        m_axi_gmem_WID,
        m_axi_gmem_WUSER,
        m_axi_gmem_ARVALID,
        m_axi_gmem_ARREADY,
        m_axi_gmem_ARADDR,
        m_axi_gmem_ARID,
        m_axi_gmem_ARLEN,
        m_axi_gmem_ARSIZE,
        m_axi_gmem_ARBURST,
        m_axi_gmem_ARLOCK,
        m_axi_gmem_ARCACHE,
        m_axi_gmem_ARPROT,
        m_axi_gmem_ARQOS,
        m_axi_gmem_ARREGION,
        m_axi_gmem_ARUSER,
        m_axi_gmem_RVALID,
        m_axi_gmem_RREADY,
        m_axi_gmem_RDATA,
        m_axi_gmem_RLAST,
        m_axi_gmem_RID,
        m_axi_gmem_RUSER,
        m_axi_gmem_RRESP,
        m_axi_gmem_BVALID,
        m_axi_gmem_BREADY,
        m_axi_gmem_BRESP,
        m_axi_gmem_BID,
        m_axi_gmem_BUSER,
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP
);

parameter    ap_ST_fsm_state1 = 19'd1;
parameter    ap_ST_fsm_state2 = 19'd2;
parameter    ap_ST_fsm_state3 = 19'd4;
parameter    ap_ST_fsm_state4 = 19'd8;
parameter    ap_ST_fsm_state5 = 19'd16;
parameter    ap_ST_fsm_state6 = 19'd32;
parameter    ap_ST_fsm_state7 = 19'd64;
parameter    ap_ST_fsm_state8 = 19'd128;
parameter    ap_ST_fsm_state9 = 19'd256;
parameter    ap_ST_fsm_state10 = 19'd512;
parameter    ap_ST_fsm_state11 = 19'd1024;
parameter    ap_ST_fsm_state12 = 19'd2048;
parameter    ap_ST_fsm_state13 = 19'd4096;
parameter    ap_ST_fsm_state14 = 19'd8192;
parameter    ap_ST_fsm_state15 = 19'd16384;
parameter    ap_ST_fsm_state16 = 19'd32768;
parameter    ap_ST_fsm_state17 = 19'd65536;
parameter    ap_ST_fsm_state18 = 19'd131072;
parameter    ap_ST_fsm_state19 = 19'd262144;
parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 5;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_GMEM_ID_WIDTH = 1;
parameter    C_M_AXI_GMEM_ADDR_WIDTH = 64;
parameter    C_M_AXI_GMEM_DATA_WIDTH = 32;
parameter    C_M_AXI_GMEM_AWUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_ARUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_WUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_RUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_BUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_USER_VALUE = 0;
parameter    C_M_AXI_GMEM_PROT_VALUE = 0;
parameter    C_M_AXI_GMEM_CACHE_VALUE = 3;
parameter    C_M_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_GMEM_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_gmem_AWVALID;
input   m_axi_gmem_AWREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_AWADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_AWID;
output  [7:0] m_axi_gmem_AWLEN;
output  [2:0] m_axi_gmem_AWSIZE;
output  [1:0] m_axi_gmem_AWBURST;
output  [1:0] m_axi_gmem_AWLOCK;
output  [3:0] m_axi_gmem_AWCACHE;
output  [2:0] m_axi_gmem_AWPROT;
output  [3:0] m_axi_gmem_AWQOS;
output  [3:0] m_axi_gmem_AWREGION;
output  [C_M_AXI_GMEM_AWUSER_WIDTH - 1:0] m_axi_gmem_AWUSER;
output   m_axi_gmem_WVALID;
input   m_axi_gmem_WREADY;
output  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_WDATA;
output  [C_M_AXI_GMEM_WSTRB_WIDTH - 1:0] m_axi_gmem_WSTRB;
output   m_axi_gmem_WLAST;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_WID;
output  [C_M_AXI_GMEM_WUSER_WIDTH - 1:0] m_axi_gmem_WUSER;
output   m_axi_gmem_ARVALID;
input   m_axi_gmem_ARREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_ARADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_ARID;
output  [7:0] m_axi_gmem_ARLEN;
output  [2:0] m_axi_gmem_ARSIZE;
output  [1:0] m_axi_gmem_ARBURST;
output  [1:0] m_axi_gmem_ARLOCK;
output  [3:0] m_axi_gmem_ARCACHE;
output  [2:0] m_axi_gmem_ARPROT;
output  [3:0] m_axi_gmem_ARQOS;
output  [3:0] m_axi_gmem_ARREGION;
output  [C_M_AXI_GMEM_ARUSER_WIDTH - 1:0] m_axi_gmem_ARUSER;
input   m_axi_gmem_RVALID;
output   m_axi_gmem_RREADY;
input  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_RDATA;
input   m_axi_gmem_RLAST;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_RID;
input  [C_M_AXI_GMEM_RUSER_WIDTH - 1:0] m_axi_gmem_RUSER;
input  [1:0] m_axi_gmem_RRESP;
input   m_axi_gmem_BVALID;
output   m_axi_gmem_BREADY;
input  [1:0] m_axi_gmem_BRESP;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_BID;
input  [C_M_AXI_GMEM_BUSER_WIDTH - 1:0] m_axi_gmem_BUSER;
input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [18:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] a;
reg    gmem_blk_n_AR;
wire    ap_CS_fsm_state2;
reg    gmem_blk_n_AW;
wire    ap_CS_fsm_state11;
reg    gmem_blk_n_B;
wire    ap_CS_fsm_state19;
reg   [61:0] trunc_ln_reg_120;
reg   [63:0] gmem_addr_reg_127;
reg   [5:0] buff_address0;
reg    buff_ce0;
reg    buff_we0;
reg   [31:0] buff_d0;
wire   [31:0] buff_q0;
reg    buff_ce1;
wire   [31:0] buff_q1;
wire    grp_example_Pipeline_1_fu_79_ap_start;
wire    grp_example_Pipeline_1_fu_79_ap_done;
wire    grp_example_Pipeline_1_fu_79_ap_idle;
wire    grp_example_Pipeline_1_fu_79_ap_ready;
wire    grp_example_Pipeline_1_fu_79_m_axi_gmem_AWVALID;
wire   [63:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_AWADDR;
wire   [0:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_AWID;
wire   [31:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_AWLEN;
wire   [2:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_AWSIZE;
wire   [1:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_AWBURST;
wire   [1:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_AWLOCK;
wire   [3:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_AWCACHE;
wire   [2:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_AWPROT;
wire   [3:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_AWQOS;
wire   [3:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_AWREGION;
wire   [0:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_AWUSER;
wire    grp_example_Pipeline_1_fu_79_m_axi_gmem_WVALID;
wire   [31:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_WDATA;
wire   [3:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_WSTRB;
wire    grp_example_Pipeline_1_fu_79_m_axi_gmem_WLAST;
wire   [0:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_WID;
wire   [0:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_WUSER;
wire    grp_example_Pipeline_1_fu_79_m_axi_gmem_ARVALID;
wire   [63:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_ARADDR;
wire   [0:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_ARID;
wire   [31:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_ARLEN;
wire   [2:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_ARSIZE;
wire   [1:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_ARBURST;
wire   [1:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_ARLOCK;
wire   [3:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_ARCACHE;
wire   [2:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_ARPROT;
wire   [3:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_ARQOS;
wire   [3:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_ARREGION;
wire   [0:0] grp_example_Pipeline_1_fu_79_m_axi_gmem_ARUSER;
wire    grp_example_Pipeline_1_fu_79_m_axi_gmem_RREADY;
wire    grp_example_Pipeline_1_fu_79_m_axi_gmem_BREADY;
wire   [5:0] grp_example_Pipeline_1_fu_79_buff_address0;
wire    grp_example_Pipeline_1_fu_79_buff_ce0;
wire    grp_example_Pipeline_1_fu_79_buff_we0;
wire   [31:0] grp_example_Pipeline_1_fu_79_buff_d0;
wire    grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_start;
wire    grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_done;
wire    grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_idle;
wire    grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_ready;
wire   [5:0] grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_address0;
wire    grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_ce0;
wire    grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_we0;
wire   [31:0] grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_d0;
wire   [5:0] grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_address1;
wire    grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_ce1;
wire    grp_example_Pipeline_3_fu_92_ap_start;
wire    grp_example_Pipeline_3_fu_92_ap_done;
wire    grp_example_Pipeline_3_fu_92_ap_idle;
wire    grp_example_Pipeline_3_fu_92_ap_ready;
wire    grp_example_Pipeline_3_fu_92_m_axi_gmem_AWVALID;
wire   [63:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_AWADDR;
wire   [0:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_AWID;
wire   [31:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_AWLEN;
wire   [2:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_AWSIZE;
wire   [1:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_AWBURST;
wire   [1:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_AWLOCK;
wire   [3:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_AWCACHE;
wire   [2:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_AWPROT;
wire   [3:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_AWQOS;
wire   [3:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_AWREGION;
wire   [0:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_AWUSER;
wire    grp_example_Pipeline_3_fu_92_m_axi_gmem_WVALID;
wire   [31:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_WDATA;
wire   [3:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_WSTRB;
wire    grp_example_Pipeline_3_fu_92_m_axi_gmem_WLAST;
wire   [0:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_WID;
wire   [0:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_WUSER;
wire    grp_example_Pipeline_3_fu_92_m_axi_gmem_ARVALID;
wire   [63:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_ARADDR;
wire   [0:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_ARID;
wire   [31:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_ARLEN;
wire   [2:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_ARSIZE;
wire   [1:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_ARBURST;
wire   [1:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_ARLOCK;
wire   [3:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_ARCACHE;
wire   [2:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_ARPROT;
wire   [3:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_ARQOS;
wire   [3:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_ARREGION;
wire   [0:0] grp_example_Pipeline_3_fu_92_m_axi_gmem_ARUSER;
wire    grp_example_Pipeline_3_fu_92_m_axi_gmem_RREADY;
wire    grp_example_Pipeline_3_fu_92_m_axi_gmem_BREADY;
wire   [5:0] grp_example_Pipeline_3_fu_92_buff_address0;
wire    grp_example_Pipeline_3_fu_92_buff_ce0;
reg    gmem_AWVALID;
wire    gmem_AWREADY;
reg   [63:0] gmem_AWADDR;
reg   [31:0] gmem_AWLEN;
reg    gmem_WVALID;
wire    gmem_WREADY;
reg    gmem_ARVALID;
wire    gmem_ARREADY;
reg   [63:0] gmem_ARADDR;
reg   [31:0] gmem_ARLEN;
wire    gmem_RVALID;
reg    gmem_RREADY;
wire   [31:0] gmem_RDATA;
wire   [8:0] gmem_RFIFONUM;
wire    gmem_BVALID;
reg    gmem_BREADY;
reg    grp_example_Pipeline_1_fu_79_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg    grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_start_reg;
wire    ap_CS_fsm_state12;
reg    grp_example_Pipeline_3_fu_92_ap_start_reg;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire  signed [63:0] sext_ln37_fu_110_p1;
reg   [18:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
reg    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
reg    ap_ST_fsm_state19_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 19'd1;
#0 grp_example_Pipeline_1_fu_79_ap_start_reg = 1'b0;
#0 grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_start_reg = 1'b0;
#0 grp_example_Pipeline_3_fu_92_ap_start_reg = 1'b0;
end

example_buff_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 50 ),
    .AddressWidth( 6 ))
buff_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(buff_address0),
    .ce0(buff_ce0),
    .we0(buff_we0),
    .d0(buff_d0),
    .q0(buff_q0),
    .address1(grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_address1),
    .ce1(buff_ce1),
    .q1(buff_q1)
);

example_example_Pipeline_1 grp_example_Pipeline_1_fu_79(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_example_Pipeline_1_fu_79_ap_start),
    .ap_done(grp_example_Pipeline_1_fu_79_ap_done),
    .ap_idle(grp_example_Pipeline_1_fu_79_ap_idle),
    .ap_ready(grp_example_Pipeline_1_fu_79_ap_ready),
    .m_axi_gmem_AWVALID(grp_example_Pipeline_1_fu_79_m_axi_gmem_AWVALID),
    .m_axi_gmem_AWREADY(1'b0),
    .m_axi_gmem_AWADDR(grp_example_Pipeline_1_fu_79_m_axi_gmem_AWADDR),
    .m_axi_gmem_AWID(grp_example_Pipeline_1_fu_79_m_axi_gmem_AWID),
    .m_axi_gmem_AWLEN(grp_example_Pipeline_1_fu_79_m_axi_gmem_AWLEN),
    .m_axi_gmem_AWSIZE(grp_example_Pipeline_1_fu_79_m_axi_gmem_AWSIZE),
    .m_axi_gmem_AWBURST(grp_example_Pipeline_1_fu_79_m_axi_gmem_AWBURST),
    .m_axi_gmem_AWLOCK(grp_example_Pipeline_1_fu_79_m_axi_gmem_AWLOCK),
    .m_axi_gmem_AWCACHE(grp_example_Pipeline_1_fu_79_m_axi_gmem_AWCACHE),
    .m_axi_gmem_AWPROT(grp_example_Pipeline_1_fu_79_m_axi_gmem_AWPROT),
    .m_axi_gmem_AWQOS(grp_example_Pipeline_1_fu_79_m_axi_gmem_AWQOS),
    .m_axi_gmem_AWREGION(grp_example_Pipeline_1_fu_79_m_axi_gmem_AWREGION),
    .m_axi_gmem_AWUSER(grp_example_Pipeline_1_fu_79_m_axi_gmem_AWUSER),
    .m_axi_gmem_WVALID(grp_example_Pipeline_1_fu_79_m_axi_gmem_WVALID),
    .m_axi_gmem_WREADY(1'b0),
    .m_axi_gmem_WDATA(grp_example_Pipeline_1_fu_79_m_axi_gmem_WDATA),
    .m_axi_gmem_WSTRB(grp_example_Pipeline_1_fu_79_m_axi_gmem_WSTRB),
    .m_axi_gmem_WLAST(grp_example_Pipeline_1_fu_79_m_axi_gmem_WLAST),
    .m_axi_gmem_WID(grp_example_Pipeline_1_fu_79_m_axi_gmem_WID),
    .m_axi_gmem_WUSER(grp_example_Pipeline_1_fu_79_m_axi_gmem_WUSER),
    .m_axi_gmem_ARVALID(grp_example_Pipeline_1_fu_79_m_axi_gmem_ARVALID),
    .m_axi_gmem_ARREADY(gmem_ARREADY),
    .m_axi_gmem_ARADDR(grp_example_Pipeline_1_fu_79_m_axi_gmem_ARADDR),
    .m_axi_gmem_ARID(grp_example_Pipeline_1_fu_79_m_axi_gmem_ARID),
    .m_axi_gmem_ARLEN(grp_example_Pipeline_1_fu_79_m_axi_gmem_ARLEN),
    .m_axi_gmem_ARSIZE(grp_example_Pipeline_1_fu_79_m_axi_gmem_ARSIZE),
    .m_axi_gmem_ARBURST(grp_example_Pipeline_1_fu_79_m_axi_gmem_ARBURST),
    .m_axi_gmem_ARLOCK(grp_example_Pipeline_1_fu_79_m_axi_gmem_ARLOCK),
    .m_axi_gmem_ARCACHE(grp_example_Pipeline_1_fu_79_m_axi_gmem_ARCACHE),
    .m_axi_gmem_ARPROT(grp_example_Pipeline_1_fu_79_m_axi_gmem_ARPROT),
    .m_axi_gmem_ARQOS(grp_example_Pipeline_1_fu_79_m_axi_gmem_ARQOS),
    .m_axi_gmem_ARREGION(grp_example_Pipeline_1_fu_79_m_axi_gmem_ARREGION),
    .m_axi_gmem_ARUSER(grp_example_Pipeline_1_fu_79_m_axi_gmem_ARUSER),
    .m_axi_gmem_RVALID(gmem_RVALID),
    .m_axi_gmem_RREADY(grp_example_Pipeline_1_fu_79_m_axi_gmem_RREADY),
    .m_axi_gmem_RDATA(gmem_RDATA),
    .m_axi_gmem_RLAST(1'b0),
    .m_axi_gmem_RID(1'd0),
    .m_axi_gmem_RFIFONUM(gmem_RFIFONUM),
    .m_axi_gmem_RUSER(1'd0),
    .m_axi_gmem_RRESP(2'd0),
    .m_axi_gmem_BVALID(1'b0),
    .m_axi_gmem_BREADY(grp_example_Pipeline_1_fu_79_m_axi_gmem_BREADY),
    .m_axi_gmem_BRESP(2'd0),
    .m_axi_gmem_BID(1'd0),
    .m_axi_gmem_BUSER(1'd0),
    .sext_ln37(trunc_ln_reg_120),
    .buff_address0(grp_example_Pipeline_1_fu_79_buff_address0),
    .buff_ce0(grp_example_Pipeline_1_fu_79_buff_ce0),
    .buff_we0(grp_example_Pipeline_1_fu_79_buff_we0),
    .buff_d0(grp_example_Pipeline_1_fu_79_buff_d0)
);

example_example_Pipeline_VITIS_LOOP_39_1 grp_example_Pipeline_VITIS_LOOP_39_1_fu_87(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_start),
    .ap_done(grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_done),
    .ap_idle(grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_idle),
    .ap_ready(grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_ready),
    .buff_address0(grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_address0),
    .buff_ce0(grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_ce0),
    .buff_we0(grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_we0),
    .buff_d0(grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_d0),
    .buff_address1(grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_address1),
    .buff_ce1(grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_ce1),
    .buff_q1(buff_q1)
);

example_example_Pipeline_3 grp_example_Pipeline_3_fu_92(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_example_Pipeline_3_fu_92_ap_start),
    .ap_done(grp_example_Pipeline_3_fu_92_ap_done),
    .ap_idle(grp_example_Pipeline_3_fu_92_ap_idle),
    .ap_ready(grp_example_Pipeline_3_fu_92_ap_ready),
    .m_axi_gmem_AWVALID(grp_example_Pipeline_3_fu_92_m_axi_gmem_AWVALID),
    .m_axi_gmem_AWREADY(gmem_AWREADY),
    .m_axi_gmem_AWADDR(grp_example_Pipeline_3_fu_92_m_axi_gmem_AWADDR),
    .m_axi_gmem_AWID(grp_example_Pipeline_3_fu_92_m_axi_gmem_AWID),
    .m_axi_gmem_AWLEN(grp_example_Pipeline_3_fu_92_m_axi_gmem_AWLEN),
    .m_axi_gmem_AWSIZE(grp_example_Pipeline_3_fu_92_m_axi_gmem_AWSIZE),
    .m_axi_gmem_AWBURST(grp_example_Pipeline_3_fu_92_m_axi_gmem_AWBURST),
    .m_axi_gmem_AWLOCK(grp_example_Pipeline_3_fu_92_m_axi_gmem_AWLOCK),
    .m_axi_gmem_AWCACHE(grp_example_Pipeline_3_fu_92_m_axi_gmem_AWCACHE),
    .m_axi_gmem_AWPROT(grp_example_Pipeline_3_fu_92_m_axi_gmem_AWPROT),
    .m_axi_gmem_AWQOS(grp_example_Pipeline_3_fu_92_m_axi_gmem_AWQOS),
    .m_axi_gmem_AWREGION(grp_example_Pipeline_3_fu_92_m_axi_gmem_AWREGION),
    .m_axi_gmem_AWUSER(grp_example_Pipeline_3_fu_92_m_axi_gmem_AWUSER),
    .m_axi_gmem_WVALID(grp_example_Pipeline_3_fu_92_m_axi_gmem_WVALID),
    .m_axi_gmem_WREADY(gmem_WREADY),
    .m_axi_gmem_WDATA(grp_example_Pipeline_3_fu_92_m_axi_gmem_WDATA),
    .m_axi_gmem_WSTRB(grp_example_Pipeline_3_fu_92_m_axi_gmem_WSTRB),
    .m_axi_gmem_WLAST(grp_example_Pipeline_3_fu_92_m_axi_gmem_WLAST),
    .m_axi_gmem_WID(grp_example_Pipeline_3_fu_92_m_axi_gmem_WID),
    .m_axi_gmem_WUSER(grp_example_Pipeline_3_fu_92_m_axi_gmem_WUSER),
    .m_axi_gmem_ARVALID(grp_example_Pipeline_3_fu_92_m_axi_gmem_ARVALID),
    .m_axi_gmem_ARREADY(1'b0),
    .m_axi_gmem_ARADDR(grp_example_Pipeline_3_fu_92_m_axi_gmem_ARADDR),
    .m_axi_gmem_ARID(grp_example_Pipeline_3_fu_92_m_axi_gmem_ARID),
    .m_axi_gmem_ARLEN(grp_example_Pipeline_3_fu_92_m_axi_gmem_ARLEN),
    .m_axi_gmem_ARSIZE(grp_example_Pipeline_3_fu_92_m_axi_gmem_ARSIZE),
    .m_axi_gmem_ARBURST(grp_example_Pipeline_3_fu_92_m_axi_gmem_ARBURST),
    .m_axi_gmem_ARLOCK(grp_example_Pipeline_3_fu_92_m_axi_gmem_ARLOCK),
    .m_axi_gmem_ARCACHE(grp_example_Pipeline_3_fu_92_m_axi_gmem_ARCACHE),
    .m_axi_gmem_ARPROT(grp_example_Pipeline_3_fu_92_m_axi_gmem_ARPROT),
    .m_axi_gmem_ARQOS(grp_example_Pipeline_3_fu_92_m_axi_gmem_ARQOS),
    .m_axi_gmem_ARREGION(grp_example_Pipeline_3_fu_92_m_axi_gmem_ARREGION),
    .m_axi_gmem_ARUSER(grp_example_Pipeline_3_fu_92_m_axi_gmem_ARUSER),
    .m_axi_gmem_RVALID(1'b0),
    .m_axi_gmem_RREADY(grp_example_Pipeline_3_fu_92_m_axi_gmem_RREADY),
    .m_axi_gmem_RDATA(32'd0),
    .m_axi_gmem_RLAST(1'b0),
    .m_axi_gmem_RID(1'd0),
    .m_axi_gmem_RFIFONUM(9'd0),
    .m_axi_gmem_RUSER(1'd0),
    .m_axi_gmem_RRESP(2'd0),
    .m_axi_gmem_BVALID(gmem_BVALID),
    .m_axi_gmem_BREADY(grp_example_Pipeline_3_fu_92_m_axi_gmem_BREADY),
    .m_axi_gmem_BRESP(2'd0),
    .m_axi_gmem_BID(1'd0),
    .m_axi_gmem_BUSER(1'd0),
    .sext_ln37(trunc_ln_reg_120),
    .buff_address0(grp_example_Pipeline_3_fu_92_buff_address0),
    .buff_ce0(grp_example_Pipeline_3_fu_92_buff_ce0),
    .buff_q0(buff_q0)
);

example_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .a(a)
);

example_gmem_m_axi #(
    .CONSERVATIVE( 1 ),
    .USER_MAXREQS( 5 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_GMEM_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_GMEM_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_GMEM_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_GMEM_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_GMEM_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_GMEM_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_GMEM_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_GMEM_BUSER_WIDTH ),
    .C_USER_VALUE( C_M_AXI_GMEM_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_GMEM_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_GMEM_CACHE_VALUE ),
    .USER_RFIFONUM_WIDTH( 9 ),
    .USER_DW( 32 ),
    .USER_AW( 64 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ))
gmem_m_axi_U(
    .AWVALID(m_axi_gmem_AWVALID),
    .AWREADY(m_axi_gmem_AWREADY),
    .AWADDR(m_axi_gmem_AWADDR),
    .AWID(m_axi_gmem_AWID),
    .AWLEN(m_axi_gmem_AWLEN),
    .AWSIZE(m_axi_gmem_AWSIZE),
    .AWBURST(m_axi_gmem_AWBURST),
    .AWLOCK(m_axi_gmem_AWLOCK),
    .AWCACHE(m_axi_gmem_AWCACHE),
    .AWPROT(m_axi_gmem_AWPROT),
    .AWQOS(m_axi_gmem_AWQOS),
    .AWREGION(m_axi_gmem_AWREGION),
    .AWUSER(m_axi_gmem_AWUSER),
    .WVALID(m_axi_gmem_WVALID),
    .WREADY(m_axi_gmem_WREADY),
    .WDATA(m_axi_gmem_WDATA),
    .WSTRB(m_axi_gmem_WSTRB),
    .WLAST(m_axi_gmem_WLAST),
    .WID(m_axi_gmem_WID),
    .WUSER(m_axi_gmem_WUSER),
    .ARVALID(m_axi_gmem_ARVALID),
    .ARREADY(m_axi_gmem_ARREADY),
    .ARADDR(m_axi_gmem_ARADDR),
    .ARID(m_axi_gmem_ARID),
    .ARLEN(m_axi_gmem_ARLEN),
    .ARSIZE(m_axi_gmem_ARSIZE),
    .ARBURST(m_axi_gmem_ARBURST),
    .ARLOCK(m_axi_gmem_ARLOCK),
    .ARCACHE(m_axi_gmem_ARCACHE),
    .ARPROT(m_axi_gmem_ARPROT),
    .ARQOS(m_axi_gmem_ARQOS),
    .ARREGION(m_axi_gmem_ARREGION),
    .ARUSER(m_axi_gmem_ARUSER),
    .RVALID(m_axi_gmem_RVALID),
    .RREADY(m_axi_gmem_RREADY),
    .RDATA(m_axi_gmem_RDATA),
    .RLAST(m_axi_gmem_RLAST),
    .RID(m_axi_gmem_RID),
    .RUSER(m_axi_gmem_RUSER),
    .RRESP(m_axi_gmem_RRESP),
    .BVALID(m_axi_gmem_BVALID),
    .BREADY(m_axi_gmem_BREADY),
    .BRESP(m_axi_gmem_BRESP),
    .BID(m_axi_gmem_BID),
    .BUSER(m_axi_gmem_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(gmem_ARVALID),
    .I_ARREADY(gmem_ARREADY),
    .I_ARADDR(gmem_ARADDR),
    .I_ARLEN(gmem_ARLEN),
    .I_RVALID(gmem_RVALID),
    .I_RREADY(gmem_RREADY),
    .I_RDATA(gmem_RDATA),
    .I_RFIFONUM(gmem_RFIFONUM),
    .I_AWVALID(gmem_AWVALID),
    .I_AWREADY(gmem_AWREADY),
    .I_AWADDR(gmem_AWADDR),
    .I_AWLEN(gmem_AWLEN),
    .I_WVALID(gmem_WVALID),
    .I_WREADY(gmem_WREADY),
    .I_WDATA(grp_example_Pipeline_3_fu_92_m_axi_gmem_WDATA),
    .I_WSTRB(grp_example_Pipeline_3_fu_92_m_axi_gmem_WSTRB),
    .I_BVALID(gmem_BVALID),
    .I_BREADY(gmem_BREADY)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_example_Pipeline_1_fu_79_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_example_Pipeline_1_fu_79_ap_start_reg <= 1'b1;
        end else if ((grp_example_Pipeline_1_fu_79_ap_ready == 1'b1)) begin
            grp_example_Pipeline_1_fu_79_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_example_Pipeline_3_fu_92_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_example_Pipeline_3_fu_92_ap_start_reg <= 1'b1;
        end else if ((grp_example_Pipeline_3_fu_92_ap_ready == 1'b1)) begin
            grp_example_Pipeline_3_fu_92_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_start_reg <= 1'b0;
    end else begin
        if (((gmem_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
            grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_start_reg <= 1'b1;
        end else if ((grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_ready == 1'b1)) begin
            grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        gmem_addr_reg_127 <= sext_ln37_fu_110_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        trunc_ln_reg_120 <= {{a[63:2]}};
    end
end

always @ (*) begin
    if ((grp_example_Pipeline_1_fu_79_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end

always @ (*) begin
    if ((gmem_AWREADY == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end

assign ap_ST_fsm_state13_blk = 1'b0;

always @ (*) begin
    if ((grp_example_Pipeline_3_fu_92_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end

assign ap_ST_fsm_state15_blk = 1'b0;

assign ap_ST_fsm_state16_blk = 1'b0;

assign ap_ST_fsm_state17_blk = 1'b0;

assign ap_ST_fsm_state18_blk = 1'b0;

always @ (*) begin
    if ((gmem_BVALID == 1'b0)) begin
        ap_ST_fsm_state19_blk = 1'b1;
    end else begin
        ap_ST_fsm_state19_blk = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((gmem_ARREADY == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((gmem_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((gmem_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_address0 = grp_example_Pipeline_3_fu_92_buff_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_address0 = grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_address0 = grp_example_Pipeline_1_fu_79_buff_address0;
    end else begin
        buff_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        buff_ce0 = grp_example_Pipeline_3_fu_92_buff_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_ce0 = grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_ce0 = grp_example_Pipeline_1_fu_79_buff_ce0;
    end else begin
        buff_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_ce1 = grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_ce1;
    end else begin
        buff_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_d0 = grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_d0 = grp_example_Pipeline_1_fu_79_buff_d0;
    end else begin
        buff_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buff_we0 = grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_buff_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        buff_we0 = grp_example_Pipeline_1_fu_79_buff_we0;
    end else begin
        buff_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((gmem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        gmem_ARADDR = sext_ln37_fu_110_p1;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        gmem_ARADDR = grp_example_Pipeline_1_fu_79_m_axi_gmem_ARADDR;
    end else begin
        gmem_ARADDR = 'bx;
    end
end

always @ (*) begin
    if (((gmem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        gmem_ARLEN = 32'd50;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        gmem_ARLEN = grp_example_Pipeline_1_fu_79_m_axi_gmem_ARLEN;
    end else begin
        gmem_ARLEN = 'bx;
    end
end

always @ (*) begin
    if (((gmem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        gmem_ARVALID = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        gmem_ARVALID = grp_example_Pipeline_1_fu_79_m_axi_gmem_ARVALID;
    end else begin
        gmem_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((gmem_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        gmem_AWADDR = gmem_addr_reg_127;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        gmem_AWADDR = grp_example_Pipeline_3_fu_92_m_axi_gmem_AWADDR;
    end else begin
        gmem_AWADDR = 'bx;
    end
end

always @ (*) begin
    if (((gmem_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        gmem_AWLEN = 32'd50;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        gmem_AWLEN = grp_example_Pipeline_3_fu_92_m_axi_gmem_AWLEN;
    end else begin
        gmem_AWLEN = 'bx;
    end
end

always @ (*) begin
    if (((gmem_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        gmem_AWVALID = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        gmem_AWVALID = grp_example_Pipeline_3_fu_92_m_axi_gmem_AWVALID;
    end else begin
        gmem_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((gmem_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
        gmem_BREADY = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        gmem_BREADY = grp_example_Pipeline_3_fu_92_m_axi_gmem_BREADY;
    end else begin
        gmem_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        gmem_RREADY = grp_example_Pipeline_1_fu_79_m_axi_gmem_RREADY;
    end else begin
        gmem_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13))) begin
        gmem_WVALID = grp_example_Pipeline_3_fu_92_m_axi_gmem_WVALID;
    end else begin
        gmem_WVALID = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        gmem_blk_n_AR = m_axi_gmem_ARREADY;
    end else begin
        gmem_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        gmem_blk_n_AW = m_axi_gmem_AWREADY;
    end else begin
        gmem_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        gmem_blk_n_B = m_axi_gmem_BVALID;
    end else begin
        gmem_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((gmem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (grp_example_Pipeline_1_fu_79_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((gmem_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((grp_example_Pipeline_3_fu_92_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            if (((gmem_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_example_Pipeline_1_fu_79_ap_start = grp_example_Pipeline_1_fu_79_ap_start_reg;

assign grp_example_Pipeline_3_fu_92_ap_start = grp_example_Pipeline_3_fu_92_ap_start_reg;

assign grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_start = grp_example_Pipeline_VITIS_LOOP_39_1_fu_87_ap_start_reg;

assign sext_ln37_fu_110_p1 = $signed(trunc_ln_reg_120);

endmodule //example