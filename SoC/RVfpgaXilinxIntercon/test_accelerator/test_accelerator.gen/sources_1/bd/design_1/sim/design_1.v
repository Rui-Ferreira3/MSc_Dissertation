//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Fri Feb  2 11:23:52 2024
//Host        : DESKTOP-3C6QEMK running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_bram_cntlr_cnt=1,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (aclk,
    aresetn,
    rsta_busy);
  input aclk;
  input aresetn;
  output rsta_busy;

  wire aclk_1;
  wire aresetn_1;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire axi_bram_ctrl_0_bram_rsta_busy;
  wire [31:0]axi_vip_0_M_AXI_ARADDR;
  wire axi_vip_0_M_AXI_ARREADY;
  wire axi_vip_0_M_AXI_ARVALID;
  wire [31:0]axi_vip_0_M_AXI_AWADDR;
  wire axi_vip_0_M_AXI_AWREADY;
  wire axi_vip_0_M_AXI_AWVALID;
  wire axi_vip_0_M_AXI_BREADY;
  wire [1:0]axi_vip_0_M_AXI_BRESP;
  wire axi_vip_0_M_AXI_BVALID;
  wire [31:0]axi_vip_0_M_AXI_RDATA;
  wire axi_vip_0_M_AXI_RREADY;
  wire [1:0]axi_vip_0_M_AXI_RRESP;
  wire axi_vip_0_M_AXI_RVALID;
  wire [31:0]axi_vip_0_M_AXI_WDATA;
  wire axi_vip_0_M_AXI_WREADY;
  wire [3:0]axi_vip_0_M_AXI_WSTRB;
  wire axi_vip_0_M_AXI_WVALID;
  wire [31:0]matprod_0_m_axi_gmem_ARADDR;
  wire [1:0]matprod_0_m_axi_gmem_ARBURST;
  wire [3:0]matprod_0_m_axi_gmem_ARCACHE;
  wire [0:0]matprod_0_m_axi_gmem_ARID;
  wire [7:0]matprod_0_m_axi_gmem_ARLEN;
  wire [1:0]matprod_0_m_axi_gmem_ARLOCK;
  wire [2:0]matprod_0_m_axi_gmem_ARPROT;
  wire matprod_0_m_axi_gmem_ARREADY;
  wire [2:0]matprod_0_m_axi_gmem_ARSIZE;
  wire matprod_0_m_axi_gmem_ARVALID;
  wire [31:0]matprod_0_m_axi_gmem_AWADDR;
  wire [1:0]matprod_0_m_axi_gmem_AWBURST;
  wire [3:0]matprod_0_m_axi_gmem_AWCACHE;
  wire [0:0]matprod_0_m_axi_gmem_AWID;
  wire [7:0]matprod_0_m_axi_gmem_AWLEN;
  wire [1:0]matprod_0_m_axi_gmem_AWLOCK;
  wire [2:0]matprod_0_m_axi_gmem_AWPROT;
  wire matprod_0_m_axi_gmem_AWREADY;
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
  wire matprod_0_m_axi_gmem_WLAST;
  wire matprod_0_m_axi_gmem_WREADY;
  wire [3:0]matprod_0_m_axi_gmem_WSTRB;
  wire matprod_0_m_axi_gmem_WVALID;

  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  assign rsta_busy = axi_bram_ctrl_0_bram_rsta_busy;
  design_1_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(aclk_1),
        .s_axi_araddr(matprod_0_m_axi_gmem_ARADDR[12:0]),
        .s_axi_arburst(matprod_0_m_axi_gmem_ARBURST),
        .s_axi_arcache(matprod_0_m_axi_gmem_ARCACHE),
        .s_axi_aresetn(aresetn_1),
        .s_axi_arid(matprod_0_m_axi_gmem_ARID),
        .s_axi_arlen(matprod_0_m_axi_gmem_ARLEN),
        .s_axi_arlock(matprod_0_m_axi_gmem_ARLOCK[0]),
        .s_axi_arprot(matprod_0_m_axi_gmem_ARPROT),
        .s_axi_arready(matprod_0_m_axi_gmem_ARREADY),
        .s_axi_arsize(matprod_0_m_axi_gmem_ARSIZE),
        .s_axi_arvalid(matprod_0_m_axi_gmem_ARVALID),
        .s_axi_awaddr(matprod_0_m_axi_gmem_AWADDR[12:0]),
        .s_axi_awburst(matprod_0_m_axi_gmem_AWBURST),
        .s_axi_awcache(matprod_0_m_axi_gmem_AWCACHE),
        .s_axi_awid(matprod_0_m_axi_gmem_AWID),
        .s_axi_awlen(matprod_0_m_axi_gmem_AWLEN),
        .s_axi_awlock(matprod_0_m_axi_gmem_AWLOCK[0]),
        .s_axi_awprot(matprod_0_m_axi_gmem_AWPROT),
        .s_axi_awready(matprod_0_m_axi_gmem_AWREADY),
        .s_axi_awsize(matprod_0_m_axi_gmem_AWSIZE),
        .s_axi_awvalid(matprod_0_m_axi_gmem_AWVALID),
        .s_axi_bid(matprod_0_m_axi_gmem_BID),
        .s_axi_bready(matprod_0_m_axi_gmem_BREADY),
        .s_axi_bresp(matprod_0_m_axi_gmem_BRESP),
        .s_axi_bvalid(matprod_0_m_axi_gmem_BVALID),
        .s_axi_rdata(matprod_0_m_axi_gmem_RDATA),
        .s_axi_rid(matprod_0_m_axi_gmem_RID),
        .s_axi_rlast(matprod_0_m_axi_gmem_RLAST),
        .s_axi_rready(matprod_0_m_axi_gmem_RREADY),
        .s_axi_rresp(matprod_0_m_axi_gmem_RRESP),
        .s_axi_rvalid(matprod_0_m_axi_gmem_RVALID),
        .s_axi_wdata(matprod_0_m_axi_gmem_WDATA),
        .s_axi_wlast(matprod_0_m_axi_gmem_WLAST),
        .s_axi_wready(matprod_0_m_axi_gmem_WREADY),
        .s_axi_wstrb(matprod_0_m_axi_gmem_WSTRB),
        .s_axi_wvalid(matprod_0_m_axi_gmem_WVALID));
  design_1_axi_bram_ctrl_0_bram_0 axi_bram_ctrl_0_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rsta_busy(axi_bram_ctrl_0_bram_rsta_busy),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
  design_1_axi_vip_0_0 axi_vip_0
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axi_araddr(axi_vip_0_M_AXI_ARADDR),
        .m_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_0_M_AXI_AWADDR),
        .m_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_0_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .m_axi_rready(axi_vip_0_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .m_axi_wready(axi_vip_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_0_M_AXI_WVALID));
  design_1_matprod_0_0 matprod_0
       (.ap_clk(aclk_1),
        .ap_rst_n(aresetn_1),
        .m_axi_gmem_ARADDR(matprod_0_m_axi_gmem_ARADDR),
        .m_axi_gmem_ARBURST(matprod_0_m_axi_gmem_ARBURST),
        .m_axi_gmem_ARCACHE(matprod_0_m_axi_gmem_ARCACHE),
        .m_axi_gmem_ARID(matprod_0_m_axi_gmem_ARID),
        .m_axi_gmem_ARLEN(matprod_0_m_axi_gmem_ARLEN),
        .m_axi_gmem_ARLOCK(matprod_0_m_axi_gmem_ARLOCK),
        .m_axi_gmem_ARPROT(matprod_0_m_axi_gmem_ARPROT),
        .m_axi_gmem_ARREADY(matprod_0_m_axi_gmem_ARREADY),
        .m_axi_gmem_ARSIZE(matprod_0_m_axi_gmem_ARSIZE),
        .m_axi_gmem_ARVALID(matprod_0_m_axi_gmem_ARVALID),
        .m_axi_gmem_AWADDR(matprod_0_m_axi_gmem_AWADDR),
        .m_axi_gmem_AWBURST(matprod_0_m_axi_gmem_AWBURST),
        .m_axi_gmem_AWCACHE(matprod_0_m_axi_gmem_AWCACHE),
        .m_axi_gmem_AWID(matprod_0_m_axi_gmem_AWID),
        .m_axi_gmem_AWLEN(matprod_0_m_axi_gmem_AWLEN),
        .m_axi_gmem_AWLOCK(matprod_0_m_axi_gmem_AWLOCK),
        .m_axi_gmem_AWPROT(matprod_0_m_axi_gmem_AWPROT),
        .m_axi_gmem_AWREADY(matprod_0_m_axi_gmem_AWREADY),
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
        .m_axi_gmem_WLAST(matprod_0_m_axi_gmem_WLAST),
        .m_axi_gmem_WREADY(matprod_0_m_axi_gmem_WREADY),
        .m_axi_gmem_WSTRB(matprod_0_m_axi_gmem_WSTRB),
        .m_axi_gmem_WVALID(matprod_0_m_axi_gmem_WVALID),
        .s_axi_BUS1_ARADDR(axi_vip_0_M_AXI_ARADDR[5:0]),
        .s_axi_BUS1_ARREADY(axi_vip_0_M_AXI_ARREADY),
        .s_axi_BUS1_ARVALID(axi_vip_0_M_AXI_ARVALID),
        .s_axi_BUS1_AWADDR(axi_vip_0_M_AXI_AWADDR[5:0]),
        .s_axi_BUS1_AWREADY(axi_vip_0_M_AXI_AWREADY),
        .s_axi_BUS1_AWVALID(axi_vip_0_M_AXI_AWVALID),
        .s_axi_BUS1_BREADY(axi_vip_0_M_AXI_BREADY),
        .s_axi_BUS1_BRESP(axi_vip_0_M_AXI_BRESP),
        .s_axi_BUS1_BVALID(axi_vip_0_M_AXI_BVALID),
        .s_axi_BUS1_RDATA(axi_vip_0_M_AXI_RDATA),
        .s_axi_BUS1_RREADY(axi_vip_0_M_AXI_RREADY),
        .s_axi_BUS1_RRESP(axi_vip_0_M_AXI_RRESP),
        .s_axi_BUS1_RVALID(axi_vip_0_M_AXI_RVALID),
        .s_axi_BUS1_WDATA(axi_vip_0_M_AXI_WDATA),
        .s_axi_BUS1_WREADY(axi_vip_0_M_AXI_WREADY),
        .s_axi_BUS1_WSTRB(axi_vip_0_M_AXI_WSTRB),
        .s_axi_BUS1_WVALID(axi_vip_0_M_AXI_WVALID));
endmodule
