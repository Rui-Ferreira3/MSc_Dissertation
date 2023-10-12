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

interconnect3s2m_wrapper interconnect3S2m_wrapper
   (.clk          (clk),
    .rst         (rst_n),
    .ifu_arid     (ifu_arid),
    .ifu_araddr   (ifu_araddr),
    .ifu_arlen    (ifu_arlen),
    .ifu_arsize   (ifu_arsize),
    .ifu_arburst  (ifu_arburst),
    .ifu_arlock   (ifu_arlock),
    .ifu_arcache  (ifu_arcache),
    .ifu_arprot   (ifu_arprot),
    .ifu_arregion (ifu_arregion),
    .ifu_arqos    (ifu_arqos),
    .ifu_arvalid  (ifu_arvalid),
    .ifu_arready  (ifu_arready),
    .ifu_rid      (ifu_rid),
    .ifu_rdata    (ifu_rdata),
    .ifu_rresp    (ifu_rresp),
    .ifu_rlast    (ifu_rlast),
    .ifu_rvalid   (ifu_rvalid),
    .ifu_rready   (ifu_rready),
    .lsu_awid     (lsu_awid),
    .lsu_awaddr   (lsu_awaddr),
    .lsu_awlen    (lsu_awlen),
    .lsu_awsize   (lsu_awsize),
    .lsu_awburst  (lsu_awburst),
    .lsu_awlock   (lsu_awlock),
    .lsu_awcache  (lsu_awcache),
    .lsu_awprot   (lsu_awprot),
    .lsu_awregion (lsu_awregion),
    .lsu_awqos    (lsu_awqos),
    .lsu_awvalid  (lsu_awvalid),
    .lsu_awready  (lsu_awready),
    .lsu_arid     (lsu_arid),
    .lsu_araddr   (lsu_araddr),
    .lsu_arlen    (lsu_arlen),
    .lsu_arsize   (lsu_arsize),
    .lsu_arburst  (lsu_arburst),
    .lsu_arlock   (lsu_arlock),
    .lsu_arcache  (lsu_arcache),
    .lsu_arprot   (lsu_arprot),
    .lsu_arregion (lsu_arregion),
    .lsu_arqos    (lsu_arqos),
    .lsu_arvalid  (lsu_arvalid),
    .lsu_arready  (lsu_arready),
    .lsu_wdata    (lsu_wdata),
    .lsu_wstrb    (lsu_wstrb),
    .lsu_wlast    (lsu_wlast),
    .lsu_wvalid   (lsu_wvalid),
    .lsu_wready   (lsu_wready),
    .lsu_bid      (lsu_bid),
    .lsu_bresp    (lsu_bresp),
    .lsu_bvalid   (lsu_bvalid),
    .lsu_bready   (lsu_bready),
    .lsu_rid      (lsu_rid),
    .lsu_rdata    (lsu_rdata),
    .lsu_rresp    (lsu_rresp),
    .lsu_rlast    (lsu_rlast),
    .lsu_rvalid   (lsu_rvalid),
    .lsu_rready   (lsu_rready),
    .sb_awid      (sb_awid),
    .sb_awaddr    (sb_awaddr),
    .sb_awlen     (sb_awlen),
    .sb_awsize    (sb_awsize),
    .sb_awburst   (sb_awburst),
    .sb_awlock    (sb_awlock),
    .sb_awcache   (sb_awcache),
    .sb_awprot    (sb_awprot),
    .sb_awregion  (sb_awregion),
    .sb_awqos     (sb_awqos),
    .sb_awvalid   (sb_awvalid),
    .sb_awready   (sb_awready),
    .sb_arid      (sb_arid),
    .sb_araddr    (sb_araddr),
    .sb_arlen     (sb_arlen),
    .sb_arsize    (sb_arsize),
    .sb_arburst   (sb_arburst),
    .sb_arlock    (sb_arlock),
    .sb_arcache   (sb_arcache),
    .sb_arprot    (sb_arprot),
    .sb_arregion  (sb_arregion),
    .sb_arqos     (sb_arqos),
    .sb_arvalid   (sb_arvalid),
    .sb_arready   (sb_arready),
    .sb_wdata     (sb_wdata),
    .sb_wstrb     (sb_wstrb),
    .sb_wlast     (sb_wlast),
    .sb_wvalid    (sb_wvalid),
    .sb_wready    (sb_wready),
    .sb_bid       (sb_bid),
    .sb_bresp     (sb_bresp),
    .sb_bvalid    (sb_bvalid),
    .sb_bready    (sb_bready),
    .sb_rid       (sb_rid),
    .sb_rdata     (sb_rdata),
    .sb_rresp     (sb_rresp),
    .sb_rlast     (sb_rlast),
    .sb_rvalid    (sb_rvalid),
    .sb_rready    (sb_rready),
    .io_awid      (io_awid),
    .io_awaddr    (io_awaddr),
    .io_awlen     (io_awlen),
    .io_awsize    (io_awsize),
    .io_awburst   (io_awburst),
    .io_awlock    (io_awlock),
    .io_awcache   (io_awcache),
    .io_awprot    (io_awprot),
    .io_awregion  (io_awregion),
    .io_awqos     (io_awqos),
    .io_awvalid   (io_awvalid),
    .io_awready   (io_awready),
    .io_arid      (io_arid),
    .io_araddr    (io_araddr),
    .io_arlen     (io_arlen),
    .io_arsize    (io_arsize),
    .io_arburst   (io_arburst),
    .io_arlock    (io_arlock),
    .io_arcache   (io_arcache),
    .io_arprot    (io_arprot),
    .io_arregion  (io_arregion),
    .io_arqos     (io_arqos),
    .io_arvalid   (io_arvalid),
    .io_arready   (io_arready),
    .io_wdata     (io_wdata),
    .io_wstrb     (io_wstrb),
    .io_wlast     (io_wlast),
    .io_wvalid    (io_wvalid),
    .io_wready    (io_wready),
    .io_bid       (io_bid),
    .io_bresp     (io_bresp),
    .io_bvalid    (io_bvalid),
    .io_bready    (io_bready),
    .io_rid       (io_rid),
    .io_rdata     (io_rdata),
    .io_rresp     (io_rresp),
    .io_rlast     (io_rlast),
    .io_rvalid    (io_rvalid),
    .io_rready    (io_rready),
    .ram_awid     (ram_awid),
    .ram_awaddr   (ram_awaddr),
    .ram_awlen    (ram_awlen),
    .ram_awsize   (ram_awsize),
    .ram_awburst  (ram_awburst),
    .ram_awlock   (ram_awlock),
    .ram_awcache  (ram_awcache),
    .ram_awprot   (ram_awprot),
    .ram_awregion (ram_awregion),
    .ram_awqos    (ram_awqos),
    .ram_awvalid  (ram_awvalid),
    .ram_awready  (ram_awready),
    .ram_arid     (ram_arid),
    .ram_araddr   (ram_araddr),
    .ram_arlen    (ram_arlen),
    .ram_arsize   (ram_arsize),
    .ram_arburst  (ram_arburst),
    .ram_arlock   (ram_arlock),
    .ram_arcache  (ram_arcache),
    .ram_arprot   (ram_arprot),
    .ram_arregion (ram_arregion),
    .ram_arqos    (ram_arqos),
    .ram_arvalid  (ram_arvalid),
    .ram_arready  (ram_arready),
    .ram_wdata    (ram_wdata),
    .ram_wstrb    (ram_wstrb),
    .ram_wlast    (ram_wlast),
    .ram_wvalid   (ram_wvalid),
    .ram_wready   (ram_wready),
    .ram_bid      (ram_bid),
    .ram_bresp    (ram_bresp),
    .ram_bvalid   (ram_bvalid),
    .ram_bready   (ram_bready),
    .ram_rid      (ram_rid),
    .ram_rdata    (ram_rdata),
    .ram_rresp    (ram_rresp),
    .ram_rlast    (ram_rlast),
    .ram_rvalid   (ram_rvalid),
    .ram_rready   (ram_rready));