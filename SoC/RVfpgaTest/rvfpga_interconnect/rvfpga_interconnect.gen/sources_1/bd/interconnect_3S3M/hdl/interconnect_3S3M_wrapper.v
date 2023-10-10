//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Mon Oct  9 19:59:46 2023
//Host        : DESKTOP-8UFOBMP running 64-bit major release  (build 9200)
//Command     : generate_target interconnect_3S3M_wrapper.bd
//Design      : interconnect_3S3M_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module interconnect_3S3M_wrapper
  (clk_i,
  rst_ni,
  i_ifu_arid,
  i_ifu_araddr,
  i_ifu_arlen,
  i_ifu_arsize,
  i_ifu_arburst,
  i_ifu_arlock,
  i_ifu_arcache,
  i_ifu_arprot,
  i_ifu_arregion,
  i_ifu_arqos,
  i_ifu_arvalid,
  o_ifu_arready,
  o_ifu_rid,
  o_ifu_rdata,
  o_ifu_rresp,
  o_ifu_rlast,
  o_ifu_rvalid,
  i_ifu_rready,
  i_lsu_awid,
  i_lsu_awaddr,
  i_lsu_awlen,
  i_lsu_awsize,
  i_lsu_awburst,
  i_lsu_awlock,
  i_lsu_awcache,
  i_lsu_awprot,
  i_lsu_awregion,
  i_lsu_awqos,
  i_lsu_awvalid,
  o_lsu_awready,
  i_lsu_arid,
  i_lsu_araddr,
  i_lsu_arlen,
  i_lsu_arsize,
  i_lsu_arburst,
  i_lsu_arlock,
  i_lsu_arcache,
  i_lsu_arprot,
  i_lsu_arregion,
  i_lsu_arqos,
  i_lsu_arvalid,
  o_lsu_arready,
  i_lsu_wdata,
  i_lsu_wstrb,
  i_lsu_wlast,
  i_lsu_wvalid,
  o_lsu_wready,
  o_lsu_bid,
  o_lsu_bresp,
  o_lsu_bvalid,
  i_lsu_bready,
  o_lsu_rid,
  o_lsu_rdata,
  o_lsu_rresp,
  o_lsu_rlast,
  o_lsu_rvalid,
  i_lsu_rready,
  i_sb_awid,
  i_sb_awaddr,
  i_sb_awlen,
  i_sb_awsize,
  i_sb_awburst,
  i_sb_awlock,
  i_sb_awcache,
  i_sb_awprot,
  i_sb_awregion,
  i_sb_awqos,
  i_sb_awvalid,
  o_sb_awready,
  i_sb_arid,
  i_sb_araddr,
  i_sb_arlen,
  i_sb_arsize,
  i_sb_arburst,
  i_sb_arlock,
  i_sb_arcache,
  i_sb_arprot,
  i_sb_arregion,
  i_sb_arqos,
  i_sb_arvalid,
  o_sb_arready,
  i_sb_wdata,
  i_sb_wstrb,
  i_sb_wlast,
  i_sb_wvalid,
  o_sb_wready,
  o_sb_bid,
  o_sb_bresp,
  o_sb_bvalid,
  i_sb_bready,
  o_sb_rid,
  o_sb_rdata,
  o_sb_rresp,
  o_sb_rlast,
  o_sb_rvalid,
  i_sb_rready,
  o_io_awid,
  o_io_awaddr,
  o_io_awlen,
  o_io_awsize,
  o_io_awburst,
  o_io_awlock,
  o_io_awcache,
  o_io_awprot,
  o_io_awregion,
  o_io_awqos,
  o_io_awvalid,
  i_io_awready,
  o_io_arid,
  o_io_araddr,
  o_io_arlen,
  o_io_arsize,
  o_io_arburst,
  o_io_arlock,
  o_io_arcache,
  o_io_arprot,
  o_io_arregion,
  o_io_arqos,
  o_io_arvalid,
  i_io_arready,
  o_io_wdata,
  o_io_wstrb,
  o_io_wlast,
  o_io_wvalid,
  i_io_wready,
  i_io_bid,
  i_io_bresp,
  i_io_bvalid,
  o_io_bready,
  i_io_rid,
  i_io_rdata,
  i_io_rresp,
  i_io_rlast,
  i_io_rvalid,
  o_io_rready,
  o_ram_awid,
  o_ram_awaddr,
  o_ram_awlen,
  o_ram_awsize,
  o_ram_awburst,
  o_ram_awlock,
  o_ram_awcache,
  o_ram_awprot,
  o_ram_awregion,
  o_ram_awqos,
  o_ram_awvalid,
  i_ram_awready,
  o_ram_arid,
  o_ram_araddr,
  o_ram_arlen,
  o_ram_arsize,
  o_ram_arburst,
  o_ram_arlock,
  o_ram_arcache,
  o_ram_arprot,
  o_ram_arregion,
  o_ram_arqos,
  o_ram_arvalid,
  i_ram_arready,
  o_ram_wdata,
  o_ram_wstrb,
  o_ram_wlast,
  o_ram_wvalid,
  i_ram_wready,
  i_ram_bid,
  i_ram_bresp,
  i_ram_bvalid,
  o_ram_bready,
  i_ram_rid,
  i_ram_rdata,
  i_ram_rresp,
  i_ram_rlast,
  i_ram_rvalid,
  o_ram_rready);
  input  wire        clk_i;
  input  wire        rst_ni;
  input  wire  [2:0] i_ifu_arid;
  input  wire [31:0] i_ifu_araddr;
  input  wire  [7:0] i_ifu_arlen;
  input  wire  [2:0] i_ifu_arsize;
  input  wire  [1:0] i_ifu_arburst;
  input  wire        i_ifu_arlock;
  input  wire  [3:0] i_ifu_arcache;
  input  wire  [2:0] i_ifu_arprot;
  input  wire  [3:0] i_ifu_arregion;
  input  wire  [3:0] i_ifu_arqos;
  input  wire        i_ifu_arvalid;
  output wire        o_ifu_arready;
  output wire  [2:0] o_ifu_rid;
  output wire [63:0] o_ifu_rdata;
  output wire  [1:0] o_ifu_rresp;
  output wire        o_ifu_rlast;
  output wire        o_ifu_rvalid;
  input  wire        i_ifu_rready;
  input  wire  [3:0] i_lsu_awid;
  input  wire [31:0] i_lsu_awaddr;
  input  wire  [7:0] i_lsu_awlen;
  input  wire  [2:0] i_lsu_awsize;
  input  wire  [1:0] i_lsu_awburst;
  input  wire        i_lsu_awlock;
  input  wire  [3:0] i_lsu_awcache;
  input  wire  [2:0] i_lsu_awprot;
  input  wire  [3:0] i_lsu_awregion;
  input  wire  [3:0] i_lsu_awqos;
  input  wire        i_lsu_awvalid;
  output wire        o_lsu_awready;
  input  wire  [3:0] i_lsu_arid;
  input  wire [31:0] i_lsu_araddr;
  input  wire  [7:0] i_lsu_arlen;
  input  wire  [2:0] i_lsu_arsize;
  input  wire  [1:0] i_lsu_arburst;
  input  wire        i_lsu_arlock;
  input  wire  [3:0] i_lsu_arcache;
  input  wire  [2:0] i_lsu_arprot;
  input  wire  [3:0] i_lsu_arregion;
  input  wire  [3:0] i_lsu_arqos;
  input  wire        i_lsu_arvalid;
  output wire        o_lsu_arready;
  input  wire [63:0] i_lsu_wdata;
  input  wire  [7:0] i_lsu_wstrb;
  input  wire        i_lsu_wlast;
  input  wire        i_lsu_wvalid;
  output wire        o_lsu_wready;
  output wire  [3:0] o_lsu_bid;
  output wire  [1:0] o_lsu_bresp;
  output wire        o_lsu_bvalid;
  input  wire        i_lsu_bready;
  output wire  [3:0] o_lsu_rid;
  output wire [63:0] o_lsu_rdata;
  output wire  [1:0] o_lsu_rresp;
  output wire        o_lsu_rlast;
  output wire        o_lsu_rvalid;
  input  wire        i_lsu_rready;
  input  wire  [0:0] i_sb_awid;
  input  wire [31:0] i_sb_awaddr;
  input  wire  [7:0] i_sb_awlen;
  input  wire  [2:0] i_sb_awsize;
  input  wire  [1:0] i_sb_awburst;
  input  wire        i_sb_awlock;
  input  wire  [3:0] i_sb_awcache;
  input  wire  [2:0] i_sb_awprot;
  input  wire  [3:0] i_sb_awregion;
  input  wire  [3:0] i_sb_awqos;
  input  wire        i_sb_awvalid;
  output wire        o_sb_awready;
  input  wire  [0:0] i_sb_arid;
  input  wire [31:0] i_sb_araddr;
  input  wire  [7:0] i_sb_arlen;
  input  wire  [2:0] i_sb_arsize;
  input  wire  [1:0] i_sb_arburst;
  input  wire        i_sb_arlock;
  input  wire  [3:0] i_sb_arcache;
  input  wire  [2:0] i_sb_arprot;
  input  wire  [3:0] i_sb_arregion;
  input  wire  [3:0] i_sb_arqos;
  input  wire        i_sb_arvalid;
  output wire        o_sb_arready;
  input  wire [63:0] i_sb_wdata;
  input  wire  [7:0] i_sb_wstrb;
  input  wire        i_sb_wlast;
  input  wire        i_sb_wvalid;
  output wire        o_sb_wready;
  output wire  [0:0] o_sb_bid;
  output wire  [1:0] o_sb_bresp;
  output wire        o_sb_bvalid;
  input  wire        i_sb_bready;
  output wire  [0:0] o_sb_rid;
  output wire [63:0] o_sb_rdata;
  output wire  [1:0] o_sb_rresp;
  output wire        o_sb_rlast;
  output wire        o_sb_rvalid;
  input  wire        i_sb_rready;
  output wire  [5:0] o_io_awid;
  output wire [31:0] o_io_awaddr;
  output wire  [7:0] o_io_awlen;
  output wire  [2:0] o_io_awsize;
  output wire  [1:0] o_io_awburst;
  output wire        o_io_awlock;
  output wire  [3:0] o_io_awcache;
  output wire  [2:0] o_io_awprot;
  output wire  [3:0] o_io_awregion;
  output wire  [3:0] o_io_awqos;
  output wire        o_io_awvalid;
  input  wire        i_io_awready;
  output wire  [5:0] o_io_arid;
  output wire [31:0] o_io_araddr;
  output wire  [7:0] o_io_arlen;
  output wire  [2:0] o_io_arsize;
  output wire  [1:0] o_io_arburst;
  output wire        o_io_arlock;
  output wire  [3:0] o_io_arcache;
  output wire  [2:0] o_io_arprot;
  output wire  [3:0] o_io_arregion;
  output wire  [3:0] o_io_arqos;
  output wire        o_io_arvalid;
  input  wire        i_io_arready;
  output wire [63:0] o_io_wdata;
  output wire  [7:0] o_io_wstrb;
  output wire        o_io_wlast;
  output wire        o_io_wvalid;
  input  wire        i_io_wready;
  input  wire  [5:0] i_io_bid;
  input  wire  [1:0] i_io_bresp;
  input  wire        i_io_bvalid;
  output wire        o_io_bready;
  input  wire  [5:0] i_io_rid;
  input  wire [63:0] i_io_rdata;
  input  wire  [1:0] i_io_rresp;
  input  wire        i_io_rlast;
  input  wire        i_io_rvalid;
  output wire        o_io_rready;
  output wire  [5:0] o_ram_awid;
  output wire [31:0] o_ram_awaddr;
  output wire  [7:0] o_ram_awlen;
  output wire  [2:0] o_ram_awsize;
  output wire  [1:0] o_ram_awburst;
  output wire        o_ram_awlock;
  output wire  [3:0] o_ram_awcache;
  output wire  [2:0] o_ram_awprot;
  output wire  [3:0] o_ram_awregion;
  output wire  [3:0] o_ram_awqos;
  output wire        o_ram_awvalid;
  input  wire        i_ram_awready;
  output wire  [5:0] o_ram_arid;
  output wire [31:0] o_ram_araddr;
  output wire  [7:0] o_ram_arlen;
  output wire  [2:0] o_ram_arsize;
  output wire  [1:0] o_ram_arburst;
  output wire        o_ram_arlock;
  output wire  [3:0] o_ram_arcache;
  output wire  [2:0] o_ram_arprot;
  output wire  [3:0] o_ram_arregion;
  output wire  [3:0] o_ram_arqos;
  output wire        o_ram_arvalid;
  input  wire        i_ram_arready;
  output wire [63:0] o_ram_wdata;
  output wire  [7:0] o_ram_wstrb;
  output wire        o_ram_wlast;
  output wire        o_ram_wvalid;
  input  wire        i_ram_wready;
  input  wire  [5:0] i_ram_bid;
  input  wire  [1:0] i_ram_bresp;
  input  wire        i_ram_bvalid;
  output wire        o_ram_bready;
  input  wire  [5:0] i_ram_rid;
  input  wire [63:0] i_ram_rdata;
  input  wire  [1:0] i_ram_rresp;
  input  wire        i_ram_rlast;
  input  wire        i_ram_rvalid;
  output wire        o_ram_rready;

  wire clk_i;
  wire [31:0]ifu_araddr;
  wire [1:0]ifu_arburst;
  wire [3:0]ifu_arcache;
  wire [2:0]ifu_arid;
  wire [7:0]ifu_arlen;
  wire [0:0]ifu_arlock;
  wire [2:0]ifu_arprot;
  wire [3:0]ifu_arqos;
  wire ifu_arready;
  wire [3:0]ifu_arregion;
  wire [2:0]ifu_arsize;
  wire ifu_arvalid;
  wire [63:0]ifu_rdata;
  wire [2:0]ifu_rid;
  wire ifu_rlast;
  wire ifu_rready;
  wire [1:0]ifu_rresp;
  wire ifu_rvalid;
  wire [31:0]io_araddr;
  wire [1:0]io_arburst;
  wire [3:0]io_arcache;
  wire [5:0]io_arid;
  wire [7:0]io_arlen;
  wire [0:0]io_arlock;
  wire [2:0]io_arprot;
  wire [3:0]io_arqos;
  wire [0:0]io_arready;
  wire [3:0]io_arregion;
  wire [2:0]io_arsize;
  wire [0:0]io_arvalid;
  wire [31:0]io_awaddr;
  wire [1:0]io_awburst;
  wire [3:0]io_awcache;
  wire [5:0]io_awid;
  wire [7:0]io_awlen;
  wire [0:0]io_awlock;
  wire [2:0]io_awprot;
  wire [3:0]io_awqos;
  wire [0:0]io_awready;
  wire [3:0]io_awregion;
  wire [2:0]io_awsize;
  wire [0:0]io_awvalid;
  wire [5:0]io_bid;
  wire [0:0]io_bready;
  wire [1:0]io_bresp;
  wire [0:0]io_bvalid;
  wire [63:0]io_rdata;
  wire [5:0]io_rid;
  wire [0:0]io_rlast;
  wire [0:0]io_rready;
  wire [1:0]io_rresp;
  wire [0:0]io_rvalid;
  wire [63:0]io_wdata;
  wire [0:0]io_wlast;
  wire [0:0]io_wready;
  wire [7:0]io_wstrb;
  wire [0:0]io_wvalid;
  wire [31:0]lsu_araddr;
  wire [1:0]lsu_arburst;
  wire [3:0]lsu_arcache;
  wire [3:0]lsu_arid;
  wire [7:0]lsu_arlen;
  wire [0:0]lsu_arlock;
  wire [2:0]lsu_arprot;
  wire [3:0]lsu_arqos;
  wire lsu_arready;
  wire [3:0]lsu_arregion;
  wire [2:0]lsu_arsize;
  wire lsu_arvalid;
  wire [31:0]lsu_awaddr;
  wire [1:0]lsu_awburst;
  wire [3:0]lsu_awcache;
  wire [3:0]lsu_awid;
  wire [7:0]lsu_awlen;
  wire [0:0]lsu_awlock;
  wire [2:0]lsu_awprot;
  wire [3:0]lsu_awqos;
  wire lsu_awready;
  wire [3:0]lsu_awregion;
  wire [2:0]lsu_awsize;
  wire lsu_awvalid;
  wire [3:0]lsu_bid;
  wire lsu_bready;
  wire [1:0]lsu_bresp;
  wire lsu_bvalid;
  wire [63:0]lsu_rdata;
  wire [3:0]lsu_rid;
  wire lsu_rlast;
  wire lsu_rready;
  wire [1:0]lsu_rresp;
  wire lsu_rvalid;
  wire [63:0]lsu_wdata;
  wire lsu_wlast;
  wire lsu_wready;
  wire [7:0]lsu_wstrb;
  wire lsu_wvalid;
  wire [31:0]ram_araddr;
  wire [1:0]ram_arburst;
  wire [3:0]ram_arcache;
  wire [5:0]ram_arid;
  wire [7:0]ram_arlen;
  wire [0:0]ram_arlock;
  wire [2:0]ram_arprot;
  wire [3:0]ram_arqos;
  wire [0:0]ram_arready;
  wire [3:0]ram_arregion;
  wire [2:0]ram_arsize;
  wire [0:0]ram_arvalid;
  wire [31:0]ram_awaddr;
  wire [1:0]ram_awburst;
  wire [3:0]ram_awcache;
  wire [5:0]ram_awid;
  wire [7:0]ram_awlen;
  wire [0:0]ram_awlock;
  wire [2:0]ram_awprot;
  wire [3:0]ram_awqos;
  wire [0:0]ram_awready;
  wire [3:0]ram_awregion;
  wire [2:0]ram_awsize;
  wire [0:0]ram_awvalid;
  wire [5:0]ram_bid;
  wire [0:0]ram_bready;
  wire [1:0]ram_bresp;
  wire [0:0]ram_bvalid;
  wire [63:0]ram_rdata;
  wire [5:0]ram_rid;
  wire [0:0]ram_rlast;
  wire [0:0]ram_rready;
  wire [1:0]ram_rresp;
  wire [0:0]ram_rvalid;
  wire [63:0]ram_wdata;
  wire [0:0]ram_wlast;
  wire [0:0]ram_wready;
  wire [7:0]ram_wstrb;
  wire [0:0]ram_wvalid;
  wire rst_ni;
  wire [31:0]sb_araddr;
  wire [1:0]sb_arburst;
  wire [3:0]sb_arcache;
  wire [0:0]sb_arid;
  wire [7:0]sb_arlen;
  wire [0:0]sb_arlock;
  wire [2:0]sb_arprot;
  wire [3:0]sb_arqos;
  wire sb_arready;
  wire [3:0]sb_arregion;
  wire [2:0]sb_arsize;
  wire sb_arvalid;
  wire [31:0]sb_awaddr;
  wire [1:0]sb_awburst;
  wire [3:0]sb_awcache;
  wire [0:0]sb_awid;
  wire [7:0]sb_awlen;
  wire [0:0]sb_awlock;
  wire [2:0]sb_awprot;
  wire [3:0]sb_awqos;
  wire sb_awready;
  wire [3:0]sb_awregion;
  wire [2:0]sb_awsize;
  wire sb_awvalid;
  wire [0:0]sb_bid;
  wire sb_bready;
  wire [1:0]sb_bresp;
  wire sb_bvalid;
  wire [63:0]sb_rdata;
  wire [0:0]sb_rid;
  wire sb_rlast;
  wire sb_rready;
  wire [1:0]sb_rresp;
  wire sb_rvalid;
  wire [63:0]sb_wdata;
  wire sb_wlast;
  wire sb_wready;
  wire [7:0]sb_wstrb;
  wire sb_wvalid;

  interconnect_3S3M interconnect_3S3M_i
  (.clk_i          (clk_i),
    .rst_ni         (rst_ni),
    .ifu_arid     (i_ifu_arid),
    .ifu_araddr   (i_ifu_araddr),
    .ifu_arlen    (i_ifu_arlen),
    .ifu_arsize   (i_ifu_arsize),
    .ifu_arburst  (i_ifu_arburst),
    .ifu_arlock   (i_ifu_arlock),
    .ifu_arcache  (i_ifu_arcache),
    .ifu_arprot   (i_ifu_arprot),
    .ifu_arregion (i_ifu_arregion),
    .ifu_arqos    (i_ifu_arqos),
    .ifu_arvalid  (i_ifu_arvalid),
    .ifu_arready  (o_ifu_arready),
    .ifu_rid      (o_ifu_rid),
    .ifu_rdata    (o_ifu_rdata),
    .ifu_rresp    (o_ifu_rresp),
    .ifu_rlast    (o_ifu_rlast),
    .ifu_rvalid   (o_ifu_rvalid),
    .ifu_rready   (i_ifu_rready),
    .lsu_awid     (i_lsu_awid),
    .lsu_awaddr   (i_lsu_awaddr),
    .lsu_awlen    (i_lsu_awlen),
    .lsu_awsize   (i_lsu_awsize),
    .lsu_awburst  (i_lsu_awburst),
    .lsu_awlock   (i_lsu_awlock),
    .lsu_awcache  (i_lsu_awcache),
    .lsu_awprot   (i_lsu_awprot),
    .lsu_awregion (i_lsu_awregion),
    .lsu_awqos    (i_lsu_awqos),
    .lsu_awvalid  (i_lsu_awvalid),
    .lsu_awready  (o_lsu_awready),
    .lsu_arid     (i_lsu_arid),
    .lsu_araddr   (i_lsu_araddr),
    .lsu_arlen    (i_lsu_arlen),
    .lsu_arsize   (i_lsu_arsize),
    .lsu_arburst  (i_lsu_arburst),
    .lsu_arlock   (i_lsu_arlock),
    .lsu_arcache  (i_lsu_arcache),
    .lsu_arprot   (i_lsu_arprot),
    .lsu_arregion (i_lsu_arregion),
    .lsu_arqos    (i_lsu_arqos),
    .lsu_arvalid  (i_lsu_arvalid),
    .lsu_arready  (o_lsu_arready),
    .lsu_wdata    (i_lsu_wdata),
    .lsu_wstrb    (i_lsu_wstrb),
    .lsu_wlast    (i_lsu_wlast),
    .lsu_wvalid   (i_lsu_wvalid),
    .lsu_wready   (o_lsu_wready),
    .lsu_bid      (o_lsu_bid),
    .lsu_bresp    (o_lsu_bresp),
    .lsu_bvalid   (o_lsu_bvalid),
    .lsu_bready   (i_lsu_bready),
    .lsu_rid      (o_lsu_rid),
    .lsu_rdata    (o_lsu_rdata),
    .lsu_rresp    (o_lsu_rresp),
    .lsu_rlast    (o_lsu_rlast),
    .lsu_rvalid   (o_lsu_rvalid),
    .lsu_rready   (i_lsu_rready),
    .sb_awid      (i_sb_awid),
    .sb_awaddr    (i_sb_awaddr),
    .sb_awlen     (i_sb_awlen),
    .sb_awsize    (i_sb_awsize),
    .sb_awburst   (i_sb_awburst),
    .sb_awlock    (i_sb_awlock),
    .sb_awcache   (i_sb_awcache),
    .sb_awprot    (i_sb_awprot),
    .sb_awregion  (i_sb_awregion),
    .sb_awqos     (i_sb_awqos),
    .sb_awvalid   (i_sb_awvalid),
    .sb_awready   (o_sb_awready),
    .sb_arid      (i_sb_arid),
    .sb_araddr    (i_sb_araddr),
    .sb_arlen     (i_sb_arlen),
    .sb_arsize    (i_sb_arsize),
    .sb_arburst   (i_sb_arburst),
    .sb_arlock    (i_sb_arlock),
    .sb_arcache   (i_sb_arcache),
    .sb_arprot    (i_sb_arprot),
    .sb_arregion  (i_sb_arregion),
    .sb_arqos     (i_sb_arqos),
    .sb_arvalid   (i_sb_arvalid),
    .sb_arready   (o_sb_arready),
    .sb_wdata     (i_sb_wdata),
    .sb_wstrb     (i_sb_wstrb),
    .sb_wlast     (i_sb_wlast),
    .sb_wvalid    (i_sb_wvalid),
    .sb_wready    (o_sb_wready),
    .sb_bid       (o_sb_bid),
    .sb_bresp     (o_sb_bresp),
    .sb_bvalid    (o_sb_bvalid),
    .sb_bready    (i_sb_bready),
    .sb_rid       (o_sb_rid),
    .sb_rdata     (o_sb_rdata),
    .sb_rresp     (o_sb_rresp),
    .sb_rlast     (o_sb_rlast),
    .sb_rvalid    (o_sb_rvalid),
    .sb_rready    (i_sb_rready),
    .io_awid      (o_io_awid),
    .io_awaddr    (o_io_awaddr),
    .io_awlen     (o_io_awlen),
    .io_awsize    (o_io_awsize),
    .io_awburst   (o_io_awburst),
    .io_awlock    (o_io_awlock),
    .io_awcache   (o_io_awcache),
    .io_awprot    (o_io_awprot),
    .io_awregion  (o_io_awregion),
    .io_awqos     (o_io_awqos),
    .io_awvalid   (o_io_awvalid),
    .io_awready   (i_io_awready),
    .io_arid      (o_io_arid),
    .io_araddr    (o_io_araddr),
    .io_arlen     (o_io_arlen),
    .io_arsize    (o_io_arsize),
    .io_arburst   (o_io_arburst),
    .io_arlock    (o_io_arlock),
    .io_arcache   (o_io_arcache),
    .io_arprot    (o_io_arprot),
    .io_arregion  (o_io_arregion),
    .io_arqos     (o_io_arqos),
    .io_arvalid   (o_io_arvalid),
    .io_arready   (i_io_arready),
    .io_wdata     (o_io_wdata),
    .io_wstrb     (o_io_wstrb),
    .io_wlast     (o_io_wlast),
    .io_wvalid    (o_io_wvalid),
    .io_wready    (i_io_wready),
    .io_bid       (i_io_bid),
    .io_bresp     (i_io_bresp),
    .io_bvalid    (i_io_bvalid),
    .io_bready    (o_io_bready),
    .io_rid       (i_io_rid),
    .io_rdata     (i_io_rdata),
    .io_rresp     (i_io_rresp),
    .io_rlast     (i_io_rlast),
    .io_rvalid    (i_io_rvalid),
    .io_rready    (o_io_rready),
    .ram_awid     (o_ram_awid),
    .ram_awaddr   (o_ram_awaddr),
    .ram_awlen    (o_ram_awlen),
    .ram_awsize   (o_ram_awsize),
    .ram_awburst  (o_ram_awburst),
    .ram_awlock   (o_ram_awlock),
    .ram_awcache  (o_ram_awcache),
    .ram_awprot   (o_ram_awprot),
    .ram_awregion (o_ram_awregion),
    .ram_awqos    (o_ram_awqos),
    .ram_awvalid  (o_ram_awvalid),
    .ram_awready  (i_ram_awready),
    .ram_arid     (o_ram_arid),
    .ram_araddr   (o_ram_araddr),
    .ram_arlen    (o_ram_arlen),
    .ram_arsize   (o_ram_arsize),
    .ram_arburst  (o_ram_arburst),
    .ram_arlock   (o_ram_arlock),
    .ram_arcache  (o_ram_arcache),
    .ram_arprot   (o_ram_arprot),
    .ram_arregion (o_ram_arregion),
    .ram_arqos    (o_ram_arqos),
    .ram_arvalid  (o_ram_arvalid),
    .ram_arready  (i_ram_arready),
    .ram_wdata    (o_ram_wdata),
    .ram_wstrb    (o_ram_wstrb),
    .ram_wlast    (o_ram_wlast),
    .ram_wvalid   (o_ram_wvalid),
    .ram_wready   (i_ram_wready),
    .ram_bid      (i_ram_bid),
    .ram_bresp    (i_ram_bresp),
    .ram_bvalid   (i_ram_bvalid),
    .ram_bready   (ram_bready),
    .ram_rid      (i_ram_rid),
    .ram_rdata    (i_ram_rdata),
    .ram_rresp    (i_ram_rresp),
    .ram_rlast    (i_ram_rlast),
    .ram_rvalid   (i_ram_rvalid),
    .ram_rready   (o_ram_rready));
endmodule
