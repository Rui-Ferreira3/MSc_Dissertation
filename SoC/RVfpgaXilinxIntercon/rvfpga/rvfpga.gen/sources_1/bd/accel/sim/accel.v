//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Tue Apr  2 21:16:00 2024
//Host        : DESKTOP-3C6QEMK running 64-bit major release  (build 9200)
//Command     : generate_target accel.bd
//Design      : accel
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "accel,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=accel,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "accel.hwdef" *) 
module accel
   (accel_ctrl_araddr,
    accel_ctrl_arready,
    accel_ctrl_arvalid,
    accel_ctrl_awaddr,
    accel_ctrl_awready,
    accel_ctrl_awvalid,
    accel_ctrl_bready,
    accel_ctrl_bresp,
    accel_ctrl_bvalid,
    accel_ctrl_rdata,
    accel_ctrl_rready,
    accel_ctrl_rresp,
    accel_ctrl_rvalid,
    accel_ctrl_wdata,
    accel_ctrl_wready,
    accel_ctrl_wstrb,
    accel_ctrl_wvalid,
    accel_irq,
    accel_mem_araddr,
    accel_mem_arburst,
    accel_mem_arcache,
    accel_mem_arid,
    accel_mem_arlen,
    accel_mem_arlock,
    accel_mem_arprot,
    accel_mem_arqos,
    accel_mem_arready,
    accel_mem_arregion,
    accel_mem_arsize,
    accel_mem_arvalid,
    accel_mem_awaddr,
    accel_mem_awburst,
    accel_mem_awcache,
    accel_mem_awid,
    accel_mem_awlen,
    accel_mem_awlock,
    accel_mem_awprot,
    accel_mem_awqos,
    accel_mem_awready,
    accel_mem_awregion,
    accel_mem_awsize,
    accel_mem_awvalid,
    accel_mem_bid,
    accel_mem_bready,
    accel_mem_bresp,
    accel_mem_bvalid,
    accel_mem_rdata,
    accel_mem_rid,
    accel_mem_rlast,
    accel_mem_rready,
    accel_mem_rresp,
    accel_mem_rvalid,
    accel_mem_wdata,
    accel_mem_wid,
    accel_mem_wlast,
    accel_mem_wready,
    accel_mem_wstrb,
    accel_mem_wvalid,
    clk,
    rst);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_ctrl ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME accel_ctrl, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN accel_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [5:0]accel_ctrl_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_ctrl ARREADY" *) output accel_ctrl_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_ctrl ARVALID" *) input accel_ctrl_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_ctrl AWADDR" *) input [5:0]accel_ctrl_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_ctrl AWREADY" *) output accel_ctrl_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_ctrl AWVALID" *) input accel_ctrl_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_ctrl BREADY" *) input accel_ctrl_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_ctrl BRESP" *) output [1:0]accel_ctrl_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_ctrl BVALID" *) output accel_ctrl_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_ctrl RDATA" *) output [31:0]accel_ctrl_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_ctrl RREADY" *) input accel_ctrl_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_ctrl RRESP" *) output [1:0]accel_ctrl_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_ctrl RVALID" *) output accel_ctrl_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_ctrl WDATA" *) input [31:0]accel_ctrl_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_ctrl WREADY" *) output accel_ctrl_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_ctrl WSTRB" *) input [3:0]accel_ctrl_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_ctrl WVALID" *) input accel_ctrl_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.ACCEL_IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.ACCEL_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output [0:0]accel_irq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME accel_mem, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN accel_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]accel_mem_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem ARBURST" *) output [1:0]accel_mem_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem ARCACHE" *) output [3:0]accel_mem_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem ARID" *) output [0:0]accel_mem_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem ARLEN" *) output [7:0]accel_mem_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem ARLOCK" *) output [1:0]accel_mem_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem ARPROT" *) output [2:0]accel_mem_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem ARQOS" *) output [3:0]accel_mem_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem ARREADY" *) input accel_mem_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem ARREGION" *) output [3:0]accel_mem_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem ARSIZE" *) output [2:0]accel_mem_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem ARVALID" *) output accel_mem_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem AWADDR" *) output [31:0]accel_mem_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem AWBURST" *) output [1:0]accel_mem_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem AWCACHE" *) output [3:0]accel_mem_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem AWID" *) output [0:0]accel_mem_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem AWLEN" *) output [7:0]accel_mem_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem AWLOCK" *) output [1:0]accel_mem_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem AWPROT" *) output [2:0]accel_mem_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem AWQOS" *) output [3:0]accel_mem_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem AWREADY" *) input accel_mem_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem AWREGION" *) output [3:0]accel_mem_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem AWSIZE" *) output [2:0]accel_mem_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem AWVALID" *) output accel_mem_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem BID" *) input [0:0]accel_mem_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem BREADY" *) output accel_mem_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem BRESP" *) input [1:0]accel_mem_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem BVALID" *) input accel_mem_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem RDATA" *) input [31:0]accel_mem_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem RID" *) input [0:0]accel_mem_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem RLAST" *) input accel_mem_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem RREADY" *) output accel_mem_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem RRESP" *) input [1:0]accel_mem_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem RVALID" *) input accel_mem_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem WDATA" *) output [31:0]accel_mem_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem WID" *) output [0:0]accel_mem_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem WLAST" *) output accel_mem_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem WREADY" *) input accel_mem_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem WSTRB" *) output [3:0]accel_mem_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 accel_mem WVALID" *) output accel_mem_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF accel_mem:accel_ctrl, ASSOCIATED_RESET rst, CLK_DOMAIN accel_ap_clk_0, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst;

  wire [5:0]accel_ctrl_1_ARADDR;
  wire accel_ctrl_1_ARREADY;
  wire accel_ctrl_1_ARVALID;
  wire [5:0]accel_ctrl_1_AWADDR;
  wire accel_ctrl_1_AWREADY;
  wire accel_ctrl_1_AWVALID;
  wire accel_ctrl_1_BREADY;
  wire [1:0]accel_ctrl_1_BRESP;
  wire accel_ctrl_1_BVALID;
  wire [31:0]accel_ctrl_1_RDATA;
  wire accel_ctrl_1_RREADY;
  wire [1:0]accel_ctrl_1_RRESP;
  wire accel_ctrl_1_RVALID;
  wire [31:0]accel_ctrl_1_WDATA;
  wire accel_ctrl_1_WREADY;
  wire [3:0]accel_ctrl_1_WSTRB;
  wire accel_ctrl_1_WVALID;
  wire clk_1;
  wire matprod_0_interrupt;
  wire [31:0]matprod_0_m_axi_gmem_ARADDR;
  wire [1:0]matprod_0_m_axi_gmem_ARBURST;
  wire [3:0]matprod_0_m_axi_gmem_ARCACHE;
  wire [0:0]matprod_0_m_axi_gmem_ARID;
  wire [7:0]matprod_0_m_axi_gmem_ARLEN;
  wire [1:0]matprod_0_m_axi_gmem_ARLOCK;
  wire [2:0]matprod_0_m_axi_gmem_ARPROT;
  wire [3:0]matprod_0_m_axi_gmem_ARQOS;
  wire matprod_0_m_axi_gmem_ARREADY;
  wire [3:0]matprod_0_m_axi_gmem_ARREGION;
  wire [2:0]matprod_0_m_axi_gmem_ARSIZE;
  wire matprod_0_m_axi_gmem_ARVALID;
  wire [31:0]matprod_0_m_axi_gmem_AWADDR;
  wire [1:0]matprod_0_m_axi_gmem_AWBURST;
  wire [3:0]matprod_0_m_axi_gmem_AWCACHE;
  wire [0:0]matprod_0_m_axi_gmem_AWID;
  wire [7:0]matprod_0_m_axi_gmem_AWLEN;
  wire [1:0]matprod_0_m_axi_gmem_AWLOCK;
  wire [2:0]matprod_0_m_axi_gmem_AWPROT;
  wire [3:0]matprod_0_m_axi_gmem_AWQOS;
  wire matprod_0_m_axi_gmem_AWREADY;
  wire [3:0]matprod_0_m_axi_gmem_AWREGION;
  wire [2:0]matprod_0_m_axi_gmem_AWSIZE;
  wire matprod_0_m_axi_gmem_AWVALID;
  wire [0:0]matprod_0_m_axi_gmem_BID;
  wire matprod_0_m_axi_gmem_BREADY;
  wire [1:0]matprod_0_m_axi_gmem_BRESP;
  wire matprod_0_m_axi_gmem_BVALID;
  wire [31:0]matprod_0_m_axi_gmem_RDATA;
  wire [0:0]matprod_0_m_axi_gmem_RID;
  wire matprod_0_m_axi_gmem_RLAST;
  wire matprod_0_m_axi_gmem_RREADY;
  wire [1:0]matprod_0_m_axi_gmem_RRESP;
  wire matprod_0_m_axi_gmem_RVALID;
  wire [31:0]matprod_0_m_axi_gmem_WDATA;
  wire [0:0]matprod_0_m_axi_gmem_WID;
  wire matprod_0_m_axi_gmem_WLAST;
  wire matprod_0_m_axi_gmem_WREADY;
  wire [3:0]matprod_0_m_axi_gmem_WSTRB;
  wire matprod_0_m_axi_gmem_WVALID;
  wire rst_1;

  assign accel_ctrl_1_ARADDR = accel_ctrl_araddr[5:0];
  assign accel_ctrl_1_ARVALID = accel_ctrl_arvalid;
  assign accel_ctrl_1_AWADDR = accel_ctrl_awaddr[5:0];
  assign accel_ctrl_1_AWVALID = accel_ctrl_awvalid;
  assign accel_ctrl_1_BREADY = accel_ctrl_bready;
  assign accel_ctrl_1_RREADY = accel_ctrl_rready;
  assign accel_ctrl_1_WDATA = accel_ctrl_wdata[31:0];
  assign accel_ctrl_1_WSTRB = accel_ctrl_wstrb[3:0];
  assign accel_ctrl_1_WVALID = accel_ctrl_wvalid;
  assign accel_ctrl_arready = accel_ctrl_1_ARREADY;
  assign accel_ctrl_awready = accel_ctrl_1_AWREADY;
  assign accel_ctrl_bresp[1:0] = accel_ctrl_1_BRESP;
  assign accel_ctrl_bvalid = accel_ctrl_1_BVALID;
  assign accel_ctrl_rdata[31:0] = accel_ctrl_1_RDATA;
  assign accel_ctrl_rresp[1:0] = accel_ctrl_1_RRESP;
  assign accel_ctrl_rvalid = accel_ctrl_1_RVALID;
  assign accel_ctrl_wready = accel_ctrl_1_WREADY;
  assign accel_irq[0] = matprod_0_interrupt;
  assign accel_mem_araddr[31:0] = matprod_0_m_axi_gmem_ARADDR;
  assign accel_mem_arburst[1:0] = matprod_0_m_axi_gmem_ARBURST;
  assign accel_mem_arcache[3:0] = matprod_0_m_axi_gmem_ARCACHE;
  assign accel_mem_arid[0] = matprod_0_m_axi_gmem_ARID;
  assign accel_mem_arlen[7:0] = matprod_0_m_axi_gmem_ARLEN;
  assign accel_mem_arlock[1:0] = matprod_0_m_axi_gmem_ARLOCK;
  assign accel_mem_arprot[2:0] = matprod_0_m_axi_gmem_ARPROT;
  assign accel_mem_arqos[3:0] = matprod_0_m_axi_gmem_ARQOS;
  assign accel_mem_arregion[3:0] = matprod_0_m_axi_gmem_ARREGION;
  assign accel_mem_arsize[2:0] = matprod_0_m_axi_gmem_ARSIZE;
  assign accel_mem_arvalid = matprod_0_m_axi_gmem_ARVALID;
  assign accel_mem_awaddr[31:0] = matprod_0_m_axi_gmem_AWADDR;
  assign accel_mem_awburst[1:0] = matprod_0_m_axi_gmem_AWBURST;
  assign accel_mem_awcache[3:0] = matprod_0_m_axi_gmem_AWCACHE;
  assign accel_mem_awid[0] = matprod_0_m_axi_gmem_AWID;
  assign accel_mem_awlen[7:0] = matprod_0_m_axi_gmem_AWLEN;
  assign accel_mem_awlock[1:0] = matprod_0_m_axi_gmem_AWLOCK;
  assign accel_mem_awprot[2:0] = matprod_0_m_axi_gmem_AWPROT;
  assign accel_mem_awqos[3:0] = matprod_0_m_axi_gmem_AWQOS;
  assign accel_mem_awregion[3:0] = matprod_0_m_axi_gmem_AWREGION;
  assign accel_mem_awsize[2:0] = matprod_0_m_axi_gmem_AWSIZE;
  assign accel_mem_awvalid = matprod_0_m_axi_gmem_AWVALID;
  assign accel_mem_bready = matprod_0_m_axi_gmem_BREADY;
  assign accel_mem_rready = matprod_0_m_axi_gmem_RREADY;
  assign accel_mem_wdata[31:0] = matprod_0_m_axi_gmem_WDATA;
  assign accel_mem_wid[0] = matprod_0_m_axi_gmem_WID;
  assign accel_mem_wlast = matprod_0_m_axi_gmem_WLAST;
  assign accel_mem_wstrb[3:0] = matprod_0_m_axi_gmem_WSTRB;
  assign accel_mem_wvalid = matprod_0_m_axi_gmem_WVALID;
  assign clk_1 = clk;
  assign matprod_0_m_axi_gmem_ARREADY = accel_mem_arready;
  assign matprod_0_m_axi_gmem_AWREADY = accel_mem_awready;
  assign matprod_0_m_axi_gmem_BID = accel_mem_bid[0];
  assign matprod_0_m_axi_gmem_BRESP = accel_mem_bresp[1:0];
  assign matprod_0_m_axi_gmem_BVALID = accel_mem_bvalid;
  assign matprod_0_m_axi_gmem_RDATA = accel_mem_rdata[31:0];
  assign matprod_0_m_axi_gmem_RID = accel_mem_rid[0];
  assign matprod_0_m_axi_gmem_RLAST = accel_mem_rlast;
  assign matprod_0_m_axi_gmem_RRESP = accel_mem_rresp[1:0];
  assign matprod_0_m_axi_gmem_RVALID = accel_mem_rvalid;
  assign matprod_0_m_axi_gmem_WREADY = accel_mem_wready;
  assign rst_1 = rst;
  accel_matprod_0_8 matprod_0
       (.ap_clk(clk_1),
        .ap_rst_n(rst_1),
        .interrupt(matprod_0_interrupt),
        .m_axi_gmem_ARADDR(matprod_0_m_axi_gmem_ARADDR),
        .m_axi_gmem_ARBURST(matprod_0_m_axi_gmem_ARBURST),
        .m_axi_gmem_ARCACHE(matprod_0_m_axi_gmem_ARCACHE),
        .m_axi_gmem_ARID(matprod_0_m_axi_gmem_ARID),
        .m_axi_gmem_ARLEN(matprod_0_m_axi_gmem_ARLEN),
        .m_axi_gmem_ARLOCK(matprod_0_m_axi_gmem_ARLOCK),
        .m_axi_gmem_ARPROT(matprod_0_m_axi_gmem_ARPROT),
        .m_axi_gmem_ARQOS(matprod_0_m_axi_gmem_ARQOS),
        .m_axi_gmem_ARREADY(matprod_0_m_axi_gmem_ARREADY),
        .m_axi_gmem_ARREGION(matprod_0_m_axi_gmem_ARREGION),
        .m_axi_gmem_ARSIZE(matprod_0_m_axi_gmem_ARSIZE),
        .m_axi_gmem_ARVALID(matprod_0_m_axi_gmem_ARVALID),
        .m_axi_gmem_AWADDR(matprod_0_m_axi_gmem_AWADDR),
        .m_axi_gmem_AWBURST(matprod_0_m_axi_gmem_AWBURST),
        .m_axi_gmem_AWCACHE(matprod_0_m_axi_gmem_AWCACHE),
        .m_axi_gmem_AWID(matprod_0_m_axi_gmem_AWID),
        .m_axi_gmem_AWLEN(matprod_0_m_axi_gmem_AWLEN),
        .m_axi_gmem_AWLOCK(matprod_0_m_axi_gmem_AWLOCK),
        .m_axi_gmem_AWPROT(matprod_0_m_axi_gmem_AWPROT),
        .m_axi_gmem_AWQOS(matprod_0_m_axi_gmem_AWQOS),
        .m_axi_gmem_AWREADY(matprod_0_m_axi_gmem_AWREADY),
        .m_axi_gmem_AWREGION(matprod_0_m_axi_gmem_AWREGION),
        .m_axi_gmem_AWSIZE(matprod_0_m_axi_gmem_AWSIZE),
        .m_axi_gmem_AWVALID(matprod_0_m_axi_gmem_AWVALID),
        .m_axi_gmem_BID(matprod_0_m_axi_gmem_BID),
        .m_axi_gmem_BREADY(matprod_0_m_axi_gmem_BREADY),
        .m_axi_gmem_BRESP(matprod_0_m_axi_gmem_BRESP),
        .m_axi_gmem_BVALID(matprod_0_m_axi_gmem_BVALID),
        .m_axi_gmem_RDATA(matprod_0_m_axi_gmem_RDATA),
        .m_axi_gmem_RID(matprod_0_m_axi_gmem_RID),
        .m_axi_gmem_RLAST(matprod_0_m_axi_gmem_RLAST),
        .m_axi_gmem_RREADY(matprod_0_m_axi_gmem_RREADY),
        .m_axi_gmem_RRESP(matprod_0_m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(matprod_0_m_axi_gmem_RVALID),
        .m_axi_gmem_WDATA(matprod_0_m_axi_gmem_WDATA),
        .m_axi_gmem_WID(matprod_0_m_axi_gmem_WID),
        .m_axi_gmem_WLAST(matprod_0_m_axi_gmem_WLAST),
        .m_axi_gmem_WREADY(matprod_0_m_axi_gmem_WREADY),
        .m_axi_gmem_WSTRB(matprod_0_m_axi_gmem_WSTRB),
        .m_axi_gmem_WVALID(matprod_0_m_axi_gmem_WVALID),
        .s_axi_BUS1_ARADDR(accel_ctrl_1_ARADDR),
        .s_axi_BUS1_ARREADY(accel_ctrl_1_ARREADY),
        .s_axi_BUS1_ARVALID(accel_ctrl_1_ARVALID),
        .s_axi_BUS1_AWADDR(accel_ctrl_1_AWADDR),
        .s_axi_BUS1_AWREADY(accel_ctrl_1_AWREADY),
        .s_axi_BUS1_AWVALID(accel_ctrl_1_AWVALID),
        .s_axi_BUS1_BREADY(accel_ctrl_1_BREADY),
        .s_axi_BUS1_BRESP(accel_ctrl_1_BRESP),
        .s_axi_BUS1_BVALID(accel_ctrl_1_BVALID),
        .s_axi_BUS1_RDATA(accel_ctrl_1_RDATA),
        .s_axi_BUS1_RREADY(accel_ctrl_1_RREADY),
        .s_axi_BUS1_RRESP(accel_ctrl_1_RRESP),
        .s_axi_BUS1_RVALID(accel_ctrl_1_RVALID),
        .s_axi_BUS1_WDATA(accel_ctrl_1_WDATA),
        .s_axi_BUS1_WREADY(accel_ctrl_1_WREADY),
        .s_axi_BUS1_WSTRB(accel_ctrl_1_WSTRB),
        .s_axi_BUS1_WVALID(accel_ctrl_1_WVALID));
endmodule
