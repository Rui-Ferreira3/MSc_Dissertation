//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Fri Oct 20 15:52:15 2023
//Host        : DESKTOP-8UFOBMP running 64-bit major release  (build 9200)
//Command     : generate_target interconnect_wrapper.bd
//Design      : interconnect_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module interconnect_wrapper
   (clk,
    ifu_araddr,
    ifu_arburst,
    ifu_arcache,
    ifu_arid,
    ifu_arlen,
    ifu_arlock,
    ifu_arprot,
    ifu_arqos,
    ifu_arready,
    ifu_arregion,
    ifu_arsize,
    ifu_arvalid,
    ifu_rdata,
    ifu_rid,
    ifu_rlast,
    ifu_rready,
    ifu_rresp,
    ifu_rvalid,
    io_araddr,
    io_arburst,
    io_arcache,
    io_arid,
    io_arlen,
    io_arlock,
    io_arprot,
    io_arqos,
    io_arready,
    io_arregion,
    io_arsize,
    io_arvalid,
    io_awaddr,
    io_awburst,
    io_awcache,
    io_awid,
    io_awlen,
    io_awlock,
    io_awprot,
    io_awqos,
    io_awready,
    io_awregion,
    io_awsize,
    io_awvalid,
    io_bid,
    io_bready,
    io_bresp,
    io_bvalid,
    io_rdata,
    io_rid,
    io_rlast,
    io_rready,
    io_rresp,
    io_rvalid,
    io_wdata,
    io_wlast,
    io_wready,
    io_wstrb,
    io_wvalid,
    lsu_araddr,
    lsu_arburst,
    lsu_arcache,
    lsu_arid,
    lsu_arlen,
    lsu_arlock,
    lsu_arprot,
    lsu_arqos,
    lsu_arready,
    lsu_arregion,
    lsu_arsize,
    lsu_arvalid,
    lsu_awaddr,
    lsu_awburst,
    lsu_awcache,
    lsu_awid,
    lsu_awlen,
    lsu_awlock,
    lsu_awprot,
    lsu_awqos,
    lsu_awready,
    lsu_awregion,
    lsu_awsize,
    lsu_awvalid,
    lsu_bid,
    lsu_bready,
    lsu_bresp,
    lsu_bvalid,
    lsu_rdata,
    lsu_rid,
    lsu_rlast,
    lsu_rready,
    lsu_rresp,
    lsu_rvalid,
    lsu_wdata,
    lsu_wlast,
    lsu_wready,
    lsu_wstrb,
    lsu_wvalid,
    ram_araddr,
    ram_arburst,
    ram_arcache,
    ram_arid,
    ram_arlen,
    ram_arlock,
    ram_arprot,
    ram_arqos,
    ram_arready,
    ram_arregion,
    ram_arsize,
    ram_arvalid,
    ram_awaddr,
    ram_awburst,
    ram_awcache,
    ram_awid,
    ram_awlen,
    ram_awlock,
    ram_awprot,
    ram_awqos,
    ram_awready,
    ram_awregion,
    ram_awsize,
    ram_awvalid,
    ram_bid,
    ram_bready,
    ram_bresp,
    ram_bvalid,
    ram_rdata,
    ram_rid,
    ram_rlast,
    ram_rready,
    ram_rresp,
    ram_rvalid,
    ram_wdata,
    ram_wlast,
    ram_wready,
    ram_wstrb,
    ram_wvalid,
    rst,
    sb_araddr,
    sb_arburst,
    sb_arcache,
    sb_arid,
    sb_arlen,
    sb_arlock,
    sb_arprot,
    sb_arqos,
    sb_arready,
    sb_arregion,
    sb_arsize,
    sb_arvalid,
    sb_awaddr,
    sb_awburst,
    sb_awcache,
    sb_awid,
    sb_awlen,
    sb_awlock,
    sb_awprot,
    sb_awqos,
    sb_awready,
    sb_awregion,
    sb_awsize,
    sb_awvalid,
    sb_bid,
    sb_bready,
    sb_bresp,
    sb_bvalid,
    sb_rdata,
    sb_rid,
    sb_rlast,
    sb_rready,
    sb_rresp,
    sb_rvalid,
    sb_wdata,
    sb_wlast,
    sb_wready,
    sb_wstrb,
    sb_wvalid);
  input clk;
  input [31:0]ifu_araddr;
  input [1:0]ifu_arburst;
  input [3:0]ifu_arcache;
  input [2:0]ifu_arid;
  input [7:0]ifu_arlen;
  input [0:0]ifu_arlock;
  input [2:0]ifu_arprot;
  input [3:0]ifu_arqos;
  output ifu_arready;
  input [3:0]ifu_arregion;
  input [2:0]ifu_arsize;
  input ifu_arvalid;
  output [63:0]ifu_rdata;
  output [2:0]ifu_rid;
  output ifu_rlast;
  input ifu_rready;
  output [1:0]ifu_rresp;
  output ifu_rvalid;
  output [31:0]io_araddr;
  output [1:0]io_arburst;
  output [3:0]io_arcache;
  output [5:0]io_arid;
  output [7:0]io_arlen;
  output [0:0]io_arlock;
  output [2:0]io_arprot;
  output [3:0]io_arqos;
  input [0:0]io_arready;
  output [3:0]io_arregion;
  output [2:0]io_arsize;
  output [0:0]io_arvalid;
  output [31:0]io_awaddr;
  output [1:0]io_awburst;
  output [3:0]io_awcache;
  output [5:0]io_awid;
  output [7:0]io_awlen;
  output [0:0]io_awlock;
  output [2:0]io_awprot;
  output [3:0]io_awqos;
  input [0:0]io_awready;
  output [3:0]io_awregion;
  output [2:0]io_awsize;
  output [0:0]io_awvalid;
  input [5:0]io_bid;
  output [0:0]io_bready;
  input [1:0]io_bresp;
  input [0:0]io_bvalid;
  input [63:0]io_rdata;
  input [5:0]io_rid;
  input [0:0]io_rlast;
  output [0:0]io_rready;
  input [1:0]io_rresp;
  input [0:0]io_rvalid;
  output [63:0]io_wdata;
  output [0:0]io_wlast;
  input [0:0]io_wready;
  output [7:0]io_wstrb;
  output [0:0]io_wvalid;
  input [31:0]lsu_araddr;
  input [1:0]lsu_arburst;
  input [3:0]lsu_arcache;
  input [3:0]lsu_arid;
  input [7:0]lsu_arlen;
  input [0:0]lsu_arlock;
  input [2:0]lsu_arprot;
  input [3:0]lsu_arqos;
  output lsu_arready;
  input [3:0]lsu_arregion;
  input [2:0]lsu_arsize;
  input lsu_arvalid;
  input [31:0]lsu_awaddr;
  input [1:0]lsu_awburst;
  input [3:0]lsu_awcache;
  input [3:0]lsu_awid;
  input [7:0]lsu_awlen;
  input [0:0]lsu_awlock;
  input [2:0]lsu_awprot;
  input [3:0]lsu_awqos;
  output lsu_awready;
  input [3:0]lsu_awregion;
  input [2:0]lsu_awsize;
  input lsu_awvalid;
  output [3:0]lsu_bid;
  input lsu_bready;
  output [1:0]lsu_bresp;
  output lsu_bvalid;
  output [63:0]lsu_rdata;
  output [3:0]lsu_rid;
  output lsu_rlast;
  input lsu_rready;
  output [1:0]lsu_rresp;
  output lsu_rvalid;
  input [63:0]lsu_wdata;
  input lsu_wlast;
  output lsu_wready;
  input [7:0]lsu_wstrb;
  input lsu_wvalid;
  output [31:0]ram_araddr;
  output [1:0]ram_arburst;
  output [3:0]ram_arcache;
  output [5:0]ram_arid;
  output [7:0]ram_arlen;
  output [0:0]ram_arlock;
  output [2:0]ram_arprot;
  output [3:0]ram_arqos;
  input [0:0]ram_arready;
  output [3:0]ram_arregion;
  output [2:0]ram_arsize;
  output [0:0]ram_arvalid;
  output [31:0]ram_awaddr;
  output [1:0]ram_awburst;
  output [3:0]ram_awcache;
  output [5:0]ram_awid;
  output [7:0]ram_awlen;
  output [0:0]ram_awlock;
  output [2:0]ram_awprot;
  output [3:0]ram_awqos;
  input [0:0]ram_awready;
  output [3:0]ram_awregion;
  output [2:0]ram_awsize;
  output [0:0]ram_awvalid;
  input [5:0]ram_bid;
  output [0:0]ram_bready;
  input [1:0]ram_bresp;
  input [0:0]ram_bvalid;
  input [63:0]ram_rdata;
  input [5:0]ram_rid;
  input [0:0]ram_rlast;
  output [0:0]ram_rready;
  input [1:0]ram_rresp;
  input [0:0]ram_rvalid;
  output [63:0]ram_wdata;
  output [0:0]ram_wlast;
  input [0:0]ram_wready;
  output [7:0]ram_wstrb;
  output [0:0]ram_wvalid;
  input rst;
  input [31:0]sb_araddr;
  input [1:0]sb_arburst;
  input [3:0]sb_arcache;
  input [0:0]sb_arid;
  input [7:0]sb_arlen;
  input [0:0]sb_arlock;
  input [2:0]sb_arprot;
  input [3:0]sb_arqos;
  output sb_arready;
  input [3:0]sb_arregion;
  input [2:0]sb_arsize;
  input sb_arvalid;
  input [31:0]sb_awaddr;
  input [1:0]sb_awburst;
  input [3:0]sb_awcache;
  input [0:0]sb_awid;
  input [7:0]sb_awlen;
  input [0:0]sb_awlock;
  input [2:0]sb_awprot;
  input [3:0]sb_awqos;
  output sb_awready;
  input [3:0]sb_awregion;
  input [2:0]sb_awsize;
  input sb_awvalid;
  output [0:0]sb_bid;
  input sb_bready;
  output [1:0]sb_bresp;
  output sb_bvalid;
  output [63:0]sb_rdata;
  output [0:0]sb_rid;
  output sb_rlast;
  input sb_rready;
  output [1:0]sb_rresp;
  output sb_rvalid;
  input [63:0]sb_wdata;
  input sb_wlast;
  output sb_wready;
  input [7:0]sb_wstrb;
  input sb_wvalid;

  wire clk;
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
  wire rst;
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

  interconnect interconnect_i
       (.clk(clk),
        .ifu_araddr(ifu_araddr),
        .ifu_arburst(ifu_arburst),
        .ifu_arcache(ifu_arcache),
        .ifu_arid(ifu_arid),
        .ifu_arlen(ifu_arlen),
        .ifu_arlock(ifu_arlock),
        .ifu_arprot(ifu_arprot),
        .ifu_arqos(ifu_arqos),
        .ifu_arready(ifu_arready),
        .ifu_arregion(ifu_arregion),
        .ifu_arsize(ifu_arsize),
        .ifu_arvalid(ifu_arvalid),
        .ifu_rdata(ifu_rdata),
        .ifu_rid(ifu_rid),
        .ifu_rlast(ifu_rlast),
        .ifu_rready(ifu_rready),
        .ifu_rresp(ifu_rresp),
        .ifu_rvalid(ifu_rvalid),
        .io_araddr(io_araddr),
        .io_arburst(io_arburst),
        .io_arcache(io_arcache),
        .io_arid(io_arid),
        .io_arlen(io_arlen),
        .io_arlock(io_arlock),
        .io_arprot(io_arprot),
        .io_arqos(io_arqos),
        .io_arready(io_arready),
        .io_arregion(io_arregion),
        .io_arsize(io_arsize),
        .io_arvalid(io_arvalid),
        .io_awaddr(io_awaddr),
        .io_awburst(io_awburst),
        .io_awcache(io_awcache),
        .io_awid(io_awid),
        .io_awlen(io_awlen),
        .io_awlock(io_awlock),
        .io_awprot(io_awprot),
        .io_awqos(io_awqos),
        .io_awready(io_awready),
        .io_awregion(io_awregion),
        .io_awsize(io_awsize),
        .io_awvalid(io_awvalid),
        .io_bid(io_bid),
        .io_bready(io_bready),
        .io_bresp(io_bresp),
        .io_bvalid(io_bvalid),
        .io_rdata(io_rdata),
        .io_rid(io_rid),
        .io_rlast(io_rlast),
        .io_rready(io_rready),
        .io_rresp(io_rresp),
        .io_rvalid(io_rvalid),
        .io_wdata(io_wdata),
        .io_wlast(io_wlast),
        .io_wready(io_wready),
        .io_wstrb(io_wstrb),
        .io_wvalid(io_wvalid),
        .lsu_araddr(lsu_araddr),
        .lsu_arburst(lsu_arburst),
        .lsu_arcache(lsu_arcache),
        .lsu_arid(lsu_arid),
        .lsu_arlen(lsu_arlen),
        .lsu_arlock(lsu_arlock),
        .lsu_arprot(lsu_arprot),
        .lsu_arqos(lsu_arqos),
        .lsu_arready(lsu_arready),
        .lsu_arregion(lsu_arregion),
        .lsu_arsize(lsu_arsize),
        .lsu_arvalid(lsu_arvalid),
        .lsu_awaddr(lsu_awaddr),
        .lsu_awburst(lsu_awburst),
        .lsu_awcache(lsu_awcache),
        .lsu_awid(lsu_awid),
        .lsu_awlen(lsu_awlen),
        .lsu_awlock(lsu_awlock),
        .lsu_awprot(lsu_awprot),
        .lsu_awqos(lsu_awqos),
        .lsu_awready(lsu_awready),
        .lsu_awregion(lsu_awregion),
        .lsu_awsize(lsu_awsize),
        .lsu_awvalid(lsu_awvalid),
        .lsu_bid(lsu_bid),
        .lsu_bready(lsu_bready),
        .lsu_bresp(lsu_bresp),
        .lsu_bvalid(lsu_bvalid),
        .lsu_rdata(lsu_rdata),
        .lsu_rid(lsu_rid),
        .lsu_rlast(lsu_rlast),
        .lsu_rready(lsu_rready),
        .lsu_rresp(lsu_rresp),
        .lsu_rvalid(lsu_rvalid),
        .lsu_wdata(lsu_wdata),
        .lsu_wlast(lsu_wlast),
        .lsu_wready(lsu_wready),
        .lsu_wstrb(lsu_wstrb),
        .lsu_wvalid(lsu_wvalid),
        .ram_araddr(ram_araddr),
        .ram_arburst(ram_arburst),
        .ram_arcache(ram_arcache),
        .ram_arid(ram_arid),
        .ram_arlen(ram_arlen),
        .ram_arlock(ram_arlock),
        .ram_arprot(ram_arprot),
        .ram_arqos(ram_arqos),
        .ram_arready(ram_arready),
        .ram_arregion(ram_arregion),
        .ram_arsize(ram_arsize),
        .ram_arvalid(ram_arvalid),
        .ram_awaddr(ram_awaddr),
        .ram_awburst(ram_awburst),
        .ram_awcache(ram_awcache),
        .ram_awid(ram_awid),
        .ram_awlen(ram_awlen),
        .ram_awlock(ram_awlock),
        .ram_awprot(ram_awprot),
        .ram_awqos(ram_awqos),
        .ram_awready(ram_awready),
        .ram_awregion(ram_awregion),
        .ram_awsize(ram_awsize),
        .ram_awvalid(ram_awvalid),
        .ram_bid(ram_bid),
        .ram_bready(ram_bready),
        .ram_bresp(ram_bresp),
        .ram_bvalid(ram_bvalid),
        .ram_rdata(ram_rdata),
        .ram_rid(ram_rid),
        .ram_rlast(ram_rlast),
        .ram_rready(ram_rready),
        .ram_rresp(ram_rresp),
        .ram_rvalid(ram_rvalid),
        .ram_wdata(ram_wdata),
        .ram_wlast(ram_wlast),
        .ram_wready(ram_wready),
        .ram_wstrb(ram_wstrb),
        .ram_wvalid(ram_wvalid),
        .rst(rst),
        .sb_araddr(sb_araddr),
        .sb_arburst(sb_arburst),
        .sb_arcache(sb_arcache),
        .sb_arid(sb_arid),
        .sb_arlen(sb_arlen),
        .sb_arlock(sb_arlock),
        .sb_arprot(sb_arprot),
        .sb_arqos(sb_arqos),
        .sb_arready(sb_arready),
        .sb_arregion(sb_arregion),
        .sb_arsize(sb_arsize),
        .sb_arvalid(sb_arvalid),
        .sb_awaddr(sb_awaddr),
        .sb_awburst(sb_awburst),
        .sb_awcache(sb_awcache),
        .sb_awid(sb_awid),
        .sb_awlen(sb_awlen),
        .sb_awlock(sb_awlock),
        .sb_awprot(sb_awprot),
        .sb_awqos(sb_awqos),
        .sb_awready(sb_awready),
        .sb_awregion(sb_awregion),
        .sb_awsize(sb_awsize),
        .sb_awvalid(sb_awvalid),
        .sb_bid(sb_bid),
        .sb_bready(sb_bready),
        .sb_bresp(sb_bresp),
        .sb_bvalid(sb_bvalid),
        .sb_rdata(sb_rdata),
        .sb_rid(sb_rid),
        .sb_rlast(sb_rlast),
        .sb_rready(sb_rready),
        .sb_rresp(sb_rresp),
        .sb_rvalid(sb_rvalid),
        .sb_wdata(sb_wdata),
        .sb_wlast(sb_wlast),
        .sb_wready(sb_wready),
        .sb_wstrb(sb_wstrb),
        .sb_wvalid(sb_wvalid));
endmodule
