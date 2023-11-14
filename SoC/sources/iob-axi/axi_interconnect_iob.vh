wire        o_ifu_awready;
wire  [3:0] o_ifu_bid;
wire  [1:0] o_ifu_bresp;
wire        o_ifu_bvalid;
wire  [2:0] ifu_arid;
wire [31:0] ifu_araddr;
wire  [7:0] ifu_arlen;
wire  [2:0] ifu_arsize;
wire  [1:0] ifu_arburst;
wire        ifu_arlock;
wire  [3:0] ifu_arcache;
wire  [2:0] ifu_arprot;
wire  [3:0] ifu_arregion;
wire  [3:0] ifu_arqos;
wire        ifu_arvalid;
wire        ifu_arready;
wire  [2:0] ifu_rid;
wire [63:0] ifu_rdata;
wire  [1:0] ifu_rresp;
wire        ifu_rlast;
wire        ifu_rvalid;
wire        ifu_rready;
wire  [3:0] lsu_awid;
wire [31:0] lsu_awaddr;
wire  [7:0] lsu_awlen;
wire  [2:0] lsu_awsize;
wire  [1:0] lsu_awburst;
wire        lsu_awlock;
wire  [3:0] lsu_awcache;
wire  [2:0] lsu_awprot;
wire  [3:0] lsu_awregion;
wire  [3:0] lsu_awqos;
wire        lsu_awvalid;
wire        lsu_awready;
wire  [3:0] lsu_arid;
wire [31:0] lsu_araddr;
wire  [7:0] lsu_arlen;
wire  [2:0] lsu_arsize;
wire  [1:0] lsu_arburst;
wire        lsu_arlock;
wire  [3:0] lsu_arcache;
wire  [2:0] lsu_arprot;
wire  [3:0] lsu_arregion;
wire  [3:0] lsu_arqos;
wire        lsu_arvalid;
wire        lsu_arready;
wire [63:0] lsu_wdata;
wire  [7:0] lsu_wstrb;
wire        lsu_wlast;
wire        lsu_wvalid;
wire        lsu_wready;
wire  [3:0] lsu_bid;
wire  [1:0] lsu_bresp;
wire        lsu_bvalid;
wire        lsu_bready;
wire  [3:0] lsu_rid;
wire [63:0] lsu_rdata;
wire  [1:0] lsu_rresp;
wire        lsu_rlast;
wire        lsu_rvalid;
wire        lsu_rready;
wire  [0:0] sb_awid;
wire [31:0] sb_awaddr;
wire  [7:0] sb_awlen;
wire  [2:0] sb_awsize;
wire  [1:0] sb_awburst;
wire        sb_awlock;
wire  [3:0] sb_awcache;
wire  [2:0] sb_awprot;
wire  [3:0] sb_awregion;
wire  [3:0] sb_awqos;
wire        sb_awvalid;
wire        sb_awready;
wire  [0:0] sb_arid;
wire [31:0] sb_araddr;
wire  [7:0] sb_arlen;
wire  [2:0] sb_arsize;
wire  [1:0] sb_arburst;
wire        sb_arlock;
wire  [3:0] sb_arcache;
wire  [2:0] sb_arprot;
wire  [3:0] sb_arregion;
wire  [3:0] sb_arqos;
wire        sb_arvalid;
wire        sb_arready;
wire [63:0] sb_wdata;
wire  [7:0] sb_wstrb;
wire        sb_wlast;
wire        sb_wvalid;
wire        sb_wready;
wire  [0:0] sb_bid;
wire  [1:0] sb_bresp;
wire        sb_bvalid;
wire        sb_bready;
wire  [0:0] sb_rid;
wire [63:0] sb_rdata;
wire  [1:0] sb_rresp;
wire        sb_rlast;
wire        sb_rvalid;
wire        sb_rready;
wire  [5:0] io_awid;
wire [31:0] io_awaddr;
wire  [7:0] io_awlen;
wire  [2:0] io_awsize;
wire  [1:0] io_awburst;
wire        io_awlock;
wire  [3:0] io_awcache;
wire  [2:0] io_awprot;
wire  [3:0] io_awregion;
wire  [3:0] io_awqos;
wire        io_awvalid;
wire        io_awready;
wire  [5:0] io_arid;
wire [31:0] io_araddr;
wire  [7:0] io_arlen;
wire  [2:0] io_arsize;
wire  [1:0] io_arburst;
wire        io_arlock;
wire  [3:0] io_arcache;
wire  [2:0] io_arprot;
wire  [3:0] io_arregion;
wire  [3:0] io_arqos;
wire        io_arvalid;
wire        io_arready;
wire [63:0] io_wdata;
wire  [7:0] io_wstrb;
wire        io_wlast;
wire        io_wvalid;
wire        io_wready;
wire  [5:0] io_bid;
wire  [1:0] io_bresp;
wire        io_bvalid;
wire        io_bready;
wire  [5:0] io_rid;
wire [63:0] io_rdata;
wire  [1:0] io_rresp;
wire        io_rlast;
wire        io_rvalid;
wire        io_rready;
wire  [5:0] ram_awid;
wire [31:0] ram_awaddr;
wire  [7:0] ram_awlen;
wire  [2:0] ram_awsize;
wire  [1:0] ram_awburst;
wire        ram_awlock;
wire  [3:0] ram_awcache;
wire  [2:0] ram_awprot;
wire  [3:0] ram_awregion;
wire  [3:0] ram_awqos;
wire        ram_awvalid;
wire        ram_awready;
wire  [5:0] ram_arid;
wire [31:0] ram_araddr;
wire  [7:0] ram_arlen;
wire  [2:0] ram_arsize;
wire  [1:0] ram_arburst;
wire        ram_arlock;
wire  [3:0] ram_arcache;
wire  [2:0] ram_arprot;
wire  [3:0] ram_arregion;
wire  [3:0] ram_arqos;
wire        ram_arvalid;
wire        ram_arready;
wire [63:0] ram_wdata;
wire  [7:0] ram_wstrb;
wire        ram_wlast;
wire        ram_wvalid;
wire        ram_wready;
wire  [5:0] ram_bid;
wire  [1:0] ram_bresp;
wire        ram_bvalid;
wire        ram_bready;
wire  [5:0] ram_rid;
wire [63:0] ram_rdata;
wire  [1:0] ram_rresp;
wire        ram_rlast;
wire        ram_rvalid;
wire        ram_rready;

//
// AXI interconnect {I, D} -> {peripheral, internal, external}
//

localparam NoMasters   = 32'd2;    // How many Axi Masters there are
localparam NoSlaves    = 32'd3;    // How many Axi Slaves  there are

localparam AxiIdWidthMasters =  32'd6;
localparam AxiAddrWidth      =  32'd32;    // Axi Address Width
localparam AxiDataWidth      =  32'd64;    // Axi Data Width

axi_interconnect_iob #(
  .ID_WIDTH  (AxiIdWidthMasters),
  .DATA_WIDTH(AxiDataWidth),
  .ADDR_WIDTH(AxiAddrWidth),
  .S_COUNT   (NoSlaves),
  .M_COUNT   (NoMasters)
) axi_intercon (
  .clk(clk),
  .rst(rst_n),

  .m_axi_awid({io_awid, ram_awid}),
  .m_axi_awaddr({io_awaddr, ram_awaddr}),
  .m_axi_awlen({io_awlen, ram_awlen}),
  .m_axi_awsize({io_awsize, ram_awsize}),
  .m_axi_awburst({io_awburst, ram_awburst}),
  .m_axi_awlock({io_awlock, ram_awlock}),
  .m_axi_awcache({io_awcache, ram_awcache}),
  .m_axi_awprot({io_awprot, ram_awprot}),
  .m_axi_awregion({io_awregion, ram_awregion}),
  .m_axi_awqos({io_awqos, ram_awqos}),
  .m_axi_awvalid({io_awvalid, ram_awvalid}),
  .m_axi_awready({io_awready, ram_awready}),
  
  .m_axi_wdata({io_wdata, ram_wdata}),
  .m_axi_wstrb({io_wstrb, ram_wstrb}),
  .m_axi_wlast({io_wlast, ram_wlast}),
  .m_axi_wvalid({io_wvalid, ram_wvalid}),
  .m_axi_wready({io_wready, ram_wready}),
  
  .m_axi_bid({io_bid, ram_bid}),
  .m_axi_bresp({io_bresp, ram_bresp}),
  .m_axi_bvalid({io_bvalid, ram_bvalid}),
  .m_axi_bready({io_bready, ram_bready}),
  
  .m_axi_arid({io_arid, ram_arid}),
  .m_axi_araddr({io_araddr, ram_araddr}),
  .m_axi_arlen({io_arlen, ram_arlen}),
  .m_axi_arsize({io_arsize, ram_arsize}),
  .m_axi_arburst({io_arburst, ram_arburst}),
  .m_axi_arlock({io_arlock, ram_arlock}),
  .m_axi_arcache({io_arcache, ram_arcache}),
  .m_axi_arprot({io_arprot, ram_arprot}),
  .m_axi_arregion({io_arregion, ram_arregion}),
  .m_axi_arqos({io_arqos, ram_arqos}),
  .m_axi_arvalid({io_arvalid, ram_arvalid}),
  .m_axi_arready({io_arready, ram_arready}),
  
  .m_axi_rid({io_rid, ram_rid}),
  .m_axi_rdata({io_rdata, ram_rdata}),
  .m_axi_rresp({io_rresp, ram_rresp}),
  .m_axi_rlast({io_rlast, ram_rlast}),
  .m_axi_rvalid({io_rvalid, ram_rvalid}),
  .m_axi_rready({io_rready, ram_rready}),

  .s_axi_awid({4'd0, lsu_awid, sb_awid}),
  .s_axi_awaddr({32'd0, lsu_awaddr, sb_awaddr}),
  .s_axi_awlen({8'd0, lsu_awlen, sb_awlen}),
  .s_axi_awsize({3'd0, lsu_awsize, sb_awsize}),
  .s_axi_awburst({2'd0, lsu_awburst, sb_awburst}),
  .s_axi_awlock({1'd0, lsu_awlock, sb_awlock}),
  .s_axi_awcache({4'd0, lsu_awcache, sb_awcache}),
  .s_axi_awprot({3'd0, lsu_awprot, sb_awprot}),
//  .s_axi_awregion({4'd0, lsu_awregion, sb_awregion}),
  .s_axi_awqos({4'd0, lsu_awqos, sb_awqos}),
  .s_axi_awvalid({1'd0, lsu_awvalid, sb_awvalid}),
  .s_axi_awready({o_ifu_awready, lsu_awready, sb_awready}),
  
  .s_axi_wdata({64'd0, lsu_wdata, sb_wdata}),
  .s_axi_wstrb({8'd0, lsu_wstrb, sb_wstrb}),
  .s_axi_wlast({1'd0, lsu_wlast, sb_wlast}),
  .s_axi_wvalid({1'd0, lsu_wvalid, sb_wvalid}),
  .s_axi_wready({1'd0, lsu_wready, sb_wready}),
  
  .s_axi_bid({o_ifu_bid, lsu_bid, sb_bid}),
  .s_axi_bresp({o_ifu_bresp, lsu_bresp, sb_bresp}),
  .s_axi_bvalid({o_ifu_bvalid, lsu_bvalid, sb_bvalid}),
  .s_axi_bready({1'd0, lsu_bready, sb_bready}),
  
  .s_axi_arid({ifu_arid, lsu_arid, sb_arid}),
  .s_axi_araddr({ifu_araddr, lsu_araddr, sb_araddr}),
  .s_axi_arlen({ifu_arlen, lsu_arlen, sb_arlen}),
  .s_axi_arsize({ifu_arsize, lsu_arsize, sb_arsize}),
  .s_axi_arburst({ifu_arburst, lsu_arburst, sb_arburst}),
  .s_axi_arlock({ifu_arlock, lsu_arlock, sb_arlock}),
  .s_axi_arcache({ifu_arcache, lsu_arcache, sb_arcache}),
  .s_axi_arprot({ifu_arprot, lsu_arprot, sb_arprot}),
//  .s_axi_arregion({ifu_arregion, lsu_arregion, sb_arregion}),
  .s_axi_arqos({ifu_arqos, lsu_arqos, sb_arqos}),
  .s_axi_arvalid({ifu_arvalid, lsu_arvalid, sb_arvalid}),
  .s_axi_arready({ifu_arready, lsu_arready, sb_arready}),
  
  .s_axi_rid({ifu_rid, lsu_rid, sb_rid}),
  .s_axi_rdata({ifu_rdata, lsu_rdata, sb_rdata}),
  .s_axi_rresp({ifu_rresp, lsu_rresp, sb_rresp}),
  .s_axi_rlast({ifu_rlast, lsu_rlast, sb_rlast}),
  .s_axi_rvalid({ifu_rvalid, lsu_rvalid, sb_rvalid}),
  .s_axi_rready({ifu_rready, lsu_rready, sb_rready})

  //optional signals
//      .s_axi_awuser(2'b00),
//      .s_axi_wuser (2'b00),
//      .s_axi_aruser(2'b00),
//      .m_axi_buser (3'b000),
//      .m_axi_ruser (3'b000)
);
