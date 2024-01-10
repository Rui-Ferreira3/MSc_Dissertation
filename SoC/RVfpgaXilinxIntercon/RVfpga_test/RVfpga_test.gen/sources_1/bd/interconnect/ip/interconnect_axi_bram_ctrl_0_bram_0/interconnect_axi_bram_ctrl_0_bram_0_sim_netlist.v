// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Jan  9 23:27:35 2024
// Host        : DESKTOP-8GAVNOH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/catia/Rui/MSc_Dissertation/SoC/RVfpgaXilinxIntercon/RVfpga_test/RVfpga_test.gen/sources_1/bd/interconnect/ip/interconnect_axi_bram_ctrl_0_bram_0/interconnect_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : interconnect_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "interconnect_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module interconnect_axi_bram_ctrl_0_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 64, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [7:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [63:0]dina;
  wire [63:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [7:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [63:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.9299 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "64" *) 
  (* C_READ_WIDTH_B = "64" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "8" *) 
  (* C_WEB_WIDTH = "8" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  interconnect_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:3],1'b0,1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[63:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54896)
`pragma protect data_block
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
bSTY4wM=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
