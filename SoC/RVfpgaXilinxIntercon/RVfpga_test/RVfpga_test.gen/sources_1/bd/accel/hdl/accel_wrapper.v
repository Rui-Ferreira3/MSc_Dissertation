//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Tue Jan  9 20:01:31 2024
//Host        : DESKTOP-8GAVNOH running 64-bit major release  (build 9200)
//Command     : generate_target accel_wrapper.bd
//Design      : accel_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module accel_wrapper
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
  input [6:0]accel_ctrl_araddr;
  output accel_ctrl_arready;
  input accel_ctrl_arvalid;
  input [6:0]accel_ctrl_awaddr;
  output accel_ctrl_awready;
  input accel_ctrl_awvalid;
  input accel_ctrl_bready;
  output [1:0]accel_ctrl_bresp;
  output accel_ctrl_bvalid;
  output [31:0]accel_ctrl_rdata;
  input accel_ctrl_rready;
  output [1:0]accel_ctrl_rresp;
  output accel_ctrl_rvalid;
  input [31:0]accel_ctrl_wdata;
  output accel_ctrl_wready;
  input [3:0]accel_ctrl_wstrb;
  input accel_ctrl_wvalid;
  output [63:0]accel_mem_araddr;
  output [1:0]accel_mem_arburst;
  output [3:0]accel_mem_arcache;
  output [3:0]accel_mem_arid;
  output [7:0]accel_mem_arlen;
  output [1:0]accel_mem_arlock;
  output [2:0]accel_mem_arprot;
  output [3:0]accel_mem_arqos;
  input accel_mem_arready;
  output [3:0]accel_mem_arregion;
  output [2:0]accel_mem_arsize;
  output accel_mem_arvalid;
  output [63:0]accel_mem_awaddr;
  output [1:0]accel_mem_awburst;
  output [3:0]accel_mem_awcache;
  output [3:0]accel_mem_awid;
  output [7:0]accel_mem_awlen;
  output [1:0]accel_mem_awlock;
  output [2:0]accel_mem_awprot;
  output [3:0]accel_mem_awqos;
  input accel_mem_awready;
  output [3:0]accel_mem_awregion;
  output [2:0]accel_mem_awsize;
  output accel_mem_awvalid;
  input [3:0]accel_mem_bid;
  output accel_mem_bready;
  input [1:0]accel_mem_bresp;
  input accel_mem_bvalid;
  input [63:0]accel_mem_rdata;
  input [3:0]accel_mem_rid;
  input accel_mem_rlast;
  output accel_mem_rready;
  input [1:0]accel_mem_rresp;
  input accel_mem_rvalid;
  output [63:0]accel_mem_wdata;
  output [3:0]accel_mem_wid;
  output accel_mem_wlast;
  input accel_mem_wready;
  output [7:0]accel_mem_wstrb;
  output accel_mem_wvalid;
  input clk;
  input rst;

  wire [6:0]accel_ctrl_araddr;
  wire accel_ctrl_arready;
  wire accel_ctrl_arvalid;
  wire [6:0]accel_ctrl_awaddr;
  wire accel_ctrl_awready;
  wire accel_ctrl_awvalid;
  wire accel_ctrl_bready;
  wire [1:0]accel_ctrl_bresp;
  wire accel_ctrl_bvalid;
  wire [31:0]accel_ctrl_rdata;
  wire accel_ctrl_rready;
  wire [1:0]accel_ctrl_rresp;
  wire accel_ctrl_rvalid;
  wire [31:0]accel_ctrl_wdata;
  wire accel_ctrl_wready;
  wire [3:0]accel_ctrl_wstrb;
  wire accel_ctrl_wvalid;
  wire [63:0]accel_mem_araddr;
  wire [1:0]accel_mem_arburst;
  wire [3:0]accel_mem_arcache;
  wire [3:0]accel_mem_arid;
  wire [7:0]accel_mem_arlen;
  wire [1:0]accel_mem_arlock;
  wire [2:0]accel_mem_arprot;
  wire [3:0]accel_mem_arqos;
  wire accel_mem_arready;
  wire [3:0]accel_mem_arregion;
  wire [2:0]accel_mem_arsize;
  wire accel_mem_arvalid;
  wire [63:0]accel_mem_awaddr;
  wire [1:0]accel_mem_awburst;
  wire [3:0]accel_mem_awcache;
  wire [3:0]accel_mem_awid;
  wire [7:0]accel_mem_awlen;
  wire [1:0]accel_mem_awlock;
  wire [2:0]accel_mem_awprot;
  wire [3:0]accel_mem_awqos;
  wire accel_mem_awready;
  wire [3:0]accel_mem_awregion;
  wire [2:0]accel_mem_awsize;
  wire accel_mem_awvalid;
  wire [3:0]accel_mem_bid;
  wire accel_mem_bready;
  wire [1:0]accel_mem_bresp;
  wire accel_mem_bvalid;
  wire [63:0]accel_mem_rdata;
  wire [3:0]accel_mem_rid;
  wire accel_mem_rlast;
  wire accel_mem_rready;
  wire [1:0]accel_mem_rresp;
  wire accel_mem_rvalid;
  wire [63:0]accel_mem_wdata;
  wire [3:0]accel_mem_wid;
  wire accel_mem_wlast;
  wire accel_mem_wready;
  wire [7:0]accel_mem_wstrb;
  wire accel_mem_wvalid;
  wire clk;
  wire rst;

  accel accel_i
       (.accel_ctrl_araddr(accel_ctrl_araddr),
        .accel_ctrl_arready(accel_ctrl_arready),
        .accel_ctrl_arvalid(accel_ctrl_arvalid),
        .accel_ctrl_awaddr(accel_ctrl_awaddr),
        .accel_ctrl_awready(accel_ctrl_awready),
        .accel_ctrl_awvalid(accel_ctrl_awvalid),
        .accel_ctrl_bready(accel_ctrl_bready),
        .accel_ctrl_bresp(accel_ctrl_bresp),
        .accel_ctrl_bvalid(accel_ctrl_bvalid),
        .accel_ctrl_rdata(accel_ctrl_rdata),
        .accel_ctrl_rready(accel_ctrl_rready),
        .accel_ctrl_rresp(accel_ctrl_rresp),
        .accel_ctrl_rvalid(accel_ctrl_rvalid),
        .accel_ctrl_wdata(accel_ctrl_wdata),
        .accel_ctrl_wready(accel_ctrl_wready),
        .accel_ctrl_wstrb(accel_ctrl_wstrb),
        .accel_ctrl_wvalid(accel_ctrl_wvalid),
        .accel_mem_araddr(accel_mem_araddr),
        .accel_mem_arburst(accel_mem_arburst),
        .accel_mem_arcache(accel_mem_arcache),
        .accel_mem_arid(accel_mem_arid),
        .accel_mem_arlen(accel_mem_arlen),
        .accel_mem_arlock(accel_mem_arlock),
        .accel_mem_arprot(accel_mem_arprot),
        .accel_mem_arqos(accel_mem_arqos),
        .accel_mem_arready(accel_mem_arready),
        .accel_mem_arregion(accel_mem_arregion),
        .accel_mem_arsize(accel_mem_arsize),
        .accel_mem_arvalid(accel_mem_arvalid),
        .accel_mem_awaddr(accel_mem_awaddr),
        .accel_mem_awburst(accel_mem_awburst),
        .accel_mem_awcache(accel_mem_awcache),
        .accel_mem_awid(accel_mem_awid),
        .accel_mem_awlen(accel_mem_awlen),
        .accel_mem_awlock(accel_mem_awlock),
        .accel_mem_awprot(accel_mem_awprot),
        .accel_mem_awqos(accel_mem_awqos),
        .accel_mem_awready(accel_mem_awready),
        .accel_mem_awregion(accel_mem_awregion),
        .accel_mem_awsize(accel_mem_awsize),
        .accel_mem_awvalid(accel_mem_awvalid),
        .accel_mem_bid(accel_mem_bid),
        .accel_mem_bready(accel_mem_bready),
        .accel_mem_bresp(accel_mem_bresp),
        .accel_mem_bvalid(accel_mem_bvalid),
        .accel_mem_rdata(accel_mem_rdata),
        .accel_mem_rid(accel_mem_rid),
        .accel_mem_rlast(accel_mem_rlast),
        .accel_mem_rready(accel_mem_rready),
        .accel_mem_rresp(accel_mem_rresp),
        .accel_mem_rvalid(accel_mem_rvalid),
        .accel_mem_wdata(accel_mem_wdata),
        .accel_mem_wid(accel_mem_wid),
        .accel_mem_wlast(accel_mem_wlast),
        .accel_mem_wready(accel_mem_wready),
        .accel_mem_wstrb(accel_mem_wstrb),
        .accel_mem_wvalid(accel_mem_wvalid),
        .clk(clk),
        .rst(rst));
endmodule
