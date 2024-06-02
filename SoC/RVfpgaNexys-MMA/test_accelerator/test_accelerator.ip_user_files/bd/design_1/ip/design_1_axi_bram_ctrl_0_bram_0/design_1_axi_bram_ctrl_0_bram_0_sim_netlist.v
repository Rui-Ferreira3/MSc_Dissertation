// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Feb  2 11:25:08 2024
// Host        : DESKTOP-3C6QEMK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/MSI/Rui/MSc_Dissertation/SoC/RVfpgaXilinxIntercon/test_accelerator/test_accelerator.gen/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_bram_0/design_1_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_1_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_axi_bram_ctrl_0_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [3:0]wea;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.3746 mW" *) 
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
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
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
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52896)
`pragma protect data_block
wMYp7cp+0fSf5OHOePYA02vCAJyTvbfxrgk7ba5XuXtSON6wYXqEprJZiC5+30wp6TafSFBtbeVL
XkGxdIh1vwOtI0mVc1LiTrAbBWGRz0pAKwe1VXo5GnOBiN7Tl5qheg6LEvNTLaumu9pfCTpuJUGl
t6UGJof7ecQw+rmkpBSXDqwzMPDRTzToI9rfeGVE9p1WrOujaYvM+DzI+N14RrkyPShGOH5BbjhX
1Ltoh+jx03/7p+WD+2eFC0tV/tknZ9iFFdBfpX2jYTb6Si4qpBI04e5Qhd3QBn187g12r1KENUZh
wYr7Lap7er99OkZNQyWmOwmqJHAsiFuuDN6mKHKXJbFt8x6467YOjz8ju7i/TthGJblRPAO98hPe
CRAvy8OXG4XWtvUjan3UzvVwzVEvhzAYqeZdYi26m/r/baYT/9iKDbr8HbKtuBTrZBtae7u3Qsxr
mgbTuSNl8DKiMVD6ytqxDoBvBuNzshwU7i6kxGk0/QG0EkIW7s7oEdjKQ85iUeeiUUqRkYc51pQY
I2TecL6pyA5gZ6/83EqLSAYx+1c9VLpc75seB+oiOOQ/CXgyT8CD7FQxuFlMMrkIt6ou0TdE6iDI
Jtsq10lsrJBvy0B8HzHY+TFzD415rU8UXn90E5KWok52mBUn6iJlKVKbtcFHY3T3JbjJ2mN13F2+
FP0nq+q8tbj8E0MYmDr7Oj1YvqsQXR6H+lY/Sq4naw0nGccMV1SakWECFeazGIu8EOtuXy1eFcTq
anc2r/mI/hTZKfczHEZXWxZyukH25LcbDMQpBYOJvqUFYX91+1yL5HU5ERxCYEQ5ScsUKoCUCQaM
7OnSSl9XLxZmvXJeEjZfi8a80fU+/4/Y+rVQ7O1LWcZVbMwpz8JwYEbdPr0znagh7VhR7VTtV1wn
ohHRtegtXLRBzUzB+C0BbGwS0rTy9XHHsatgjBLXgKsmUKrzkd9xaZ1+XZ5JWpGz/QvImcEYlZDr
qZzU95AHjXBj56Pdp7og/EFpfOGo17BANCLO7xhLs/yeRp6gqZX0iKgIO0KZsg7qzWR6tTSe3jlo
1S31jg4fU+fmyvrxMT9O7i2kvYZrkpTHy+yWJt6ezoUDGzF8uTlC82Vw+uAOA+ktlyeJmLZkGKQv
upZ1kSiYEg1SQkpzCHg6OytkaQWBmoPuZV1xaQoRzG5cQg5wf4FHN/4b+37ylckCuJ81VcPc1NGn
rrp27ihngCV5RfcciNrqJjlB2ZWPTC1bLCct+Sw+UWo/Qp5lTAS0Nvjnpk4GMyvl2TwYst9buiQA
zcst74hDPq180WsauOT8KvawmHAxB4OvGfEpHiEISmlRsRHyjsbilKP4mQELabsO/e4SpoxC7HGn
A7lEx4RZKDRjSi8VScBKBNx8XHv88OXtsJc4AmiPB6ITlFb+Yu7Th/bHvuFEa4qAGB0IIxFECZDh
Nx8KN4YvNXMA6+FOdj52kxi6N5ZqxRjDyHkvtIv9N9ENVsqbfZiNPBUuLAv21mUPiGR+eOBO4qhM
G0g0z3fDKqA7no8yD9g3RAyX6mOAICvtTHKbomuBdrCyAgiTZbIyprgaCqvASmRI9ymP0tTn3rEV
z35SDSYm9dIqbYyjq4FFuMfXWFC5K/ZKm4CeuSOfoOjjxASuDhIYJDAi12/dezuSE5LSSDMPjOLI
QTEL7nF6nea3JEIewY8nvbMBuxF8qsOMuu/FnsigZq2D9Z9a8VWnwKLV1n3T9V25RodvTNsvP9pI
R6kkJ5y6BJM8zzKBiBOc5K44gD3qccACKsuk6Dt243KFcwd0TDFF8T/QPAme6PNOhxb8m1wr7p8r
D/8x0RcgBioupLU2GTE4wkajHZexf4m/aw+knI8HFEsOufjlQCyKgtodT8NRqZCKxF+CfGEcggX/
m22WnyyG7msf/tSSK0yjTYPgw4BMV12Z6PVVcwhNx0Joo0j4QKbM4koLEerTQ/4lKmlDSblcwqs0
PSybbbtjFGLN/lYRo7fJXko1DVvieJAW/mXoFynxSPgguuK7+Dek8YPp0OfIngfc+GatZ/Ef1RIF
amXNGevJw1qHoUhaT+v09xb5I8Z3elK7RlOe4yJlw2obyP4G3xPj/4NuqcdbxjeVz97g1hQKGgKF
ckonfe3/psCNL9heqmE6qFrD9MXD9oUCb9VssBoAIG97FHJv+BoNgm04YoTQ58c9H635dbjvBd6J
Cley6oqN7KsJn2HeDn9xmSXjcNETEHL8NEPIuGLKqBtRTBCjQ2/J+GSuMro27fuAXSNDVK44Jin8
nEb7ZKVhYW/VCiJmvitWR9/PouWPh/fWanIEhWQgmJLMiOZGkyahkCGSHagSAUEJOQYXQE1nxkWe
3ZWrHpIM/oYqQyZKCd/aHXFjLwwmW+Etu216c3+FsC0in0ub7dx021dYyNg2wYyAI2d5XJyRo3tz
U2h/jxz4XavBNEA4rT+QfqvJ3B8dLE4u78X8c9YoWsfo/uAw9nJZn1Sf0bBe46TIAX48O9965OFz
6u8swGdsqbghqsUFr/PboXL7mFrussWSYCqifRY0TIx+my4yIJqJKNWH2ivmhOM7751jpg2cKFEu
sgwmO0EGFLM+12Qlcv5QTWo8pf7iPi1I3eoevz876mm5X6QVjLVolmdnHLIZFhnNSZ/Au9rIawtO
GBgd16MzlGCfogzwkEwAqzIZ/mCf1mnJNDIlo3MK12al8OGkyra5s/+lzLmQz22The0pCxwYF5Je
tR1+hLDDzL1qXm8vzBsTqX0bly4MPJGxMwM2S5m7wd44DjgBVnDAGrbLrT0vyVqdwCImxtc/0dR0
kcec/0gjtoVnDtRdAZscnR4lhKzUe3RFsZZCMVmapZxAOdW6SgpL38ur+XVSZspQNpk5cJghtjMT
qQH/7lqhxi08/Ho1c0bb1Zb4w8b8pgdEk44zCkcMEWxEVHvndEsHfvr83mz7zqpG3YiFdbpFixdb
M+CPdQ25808VdoP8jChKo+SbFd2FqoSgF0OQ2/EVi3pi4PlwUYZ2FzD7FCYt4g0xVgEMH0Nxnb+H
26R1u8ecRa4TimRaxok+lbhTMVu+Sex2Oqyf/yzMOjTWYY3193mm91PIuwD0QxVNFWAtRk9VWyav
VsU+BLg+RtgMBmhr0w+RQKodb4SYdLycV2+ohpIE6Uz1yLYLkIxt2zR/dTsSbAmOSM+F/evI3VQW
wIobGbT9CiOE38VR04y/AL6jK4ZLnAvnHrMfbEv7HffMSeHkzbv1ZQqgtRcMKsl/CvC482l99Ijv
2v7Inivo0Q8SeOgnEDZx7UzB1TeThr1M7eqWvcRDakIHbiCAmrRIWeUWmIjWMLvGtnTCI9zT6d09
z6ohhkZozqBqPZcNl4moEmajcvtGAOlDZ0aMBQq8339bU2Z+f3Tx9kvTkmMwmv9ibdQXzCsdpeow
elFDQ/oWN0NP+LW2n1fdfynIiemqCrHgtGMCfkF3amM+tNXgao3z/DPUeGbr9vzte0FUhnopi9Fl
bW5x3zZNoYucLZr8rv5Mnu6/MknLSiz8PeuVCkoMqUamMqxlia3+CEIFXSWggaKx4VfYLMYTPQUb
g9ZVGKLnDUpn7kYovR6rHtaIbJgKTBO+Juu/Lvkv98JbJ2Y9PTRVmLZTv1OC+FHOCRiRYOFckjpM
JjDL29KCMIcW4aA77iI4iiWhaU39e2bu0sEZS/3Wgc3pv1iGcz5XiDfaff9Ap8EtTGnq+bAbPwUs
jHLdTGy4SDFSFmowijCvx09Z+P2FZs6QNbqgxbuEzUQRLOUoDxN7BYkl0giPNCj3r0kDMF5Ps0IZ
LlEWjEznqZ3/Ymll2ztEF0TpITu1enqSTqWV0XjML7TprfJkTQ9Y4vg1/XAfbc0A5L2jU0yKvEJJ
cvLOsnzNnWiHimSa+8DbUvvzU9GIAIMmzOdP5iVvkP92FnRY77qCMIB7AdC372vOV25GSHvbSyWy
5+nhmURl1fP3ZWetYTe907rd0H/ChdICalRhaXXkxfbe6fbsPaD1GGpgSExX7oI9WPfaWCn73T4V
LNBWNA1S2wPaJ4ruLpboIOudepRIdH3Bz+4PoXVflJR8ffoaRHLpgLsTPC1zeac2kj71mp0nx98l
O5XgHiRiDdFaRPG9H4OH2QdkKk4x0V3c6xeCZpZC971XKT9/ADpjHwSryStHqa1pJCtZPrnCwSQa
OQhqu+WN3dipk91b5Z0NyR9nlRSxKW+zXi9nM9bQJCLyxsQwSnunb2H+NOLXVOGJUJ9+0gQ9WUOP
DVQ70ecTDEe5sEyaQqWJ7c2Y+MNfBeqkMno/ewKeVAGbW164/fvzdx6scPeYSCmB/eIxCStuT0f1
RHnWgmEtRXNLEr0CiJ0cN9+HO/R2GDjMFOVa5oQTJbDye96LFqMsOMeE4AZyywmFTwa5qum6HsqJ
fAWxgaloCUWa+b5Frbne8PuknWXXwb2f3LBnlQhaWXjZtfM43iz0cZ7H8V9t5sMLyz0h+QbzzevX
6SaU+U7D27KpC+q/oxLKuAEoKyBQdtnQSYOs1vw701cNUGSqkdpdZYBATIdJgfMxmQUhPi1ycucA
OLNDvt2N3f7PeVNwhro+3HGEEkHAgEDCeciR0Qi7fGsxILNyxWjQ/8cmYGA3tcw2+P+MD7PoAoOW
hlO0i6oMSxUSVcVs4u466Z3RtYYMmC25sr0t9UkyYisk11FDEt9yycD7TogaKSwfQuyzOIHOpYnb
ECLecZjO9UN3hD0PZo8DdxCRlakz8KJNyzhB9fygPsx0uVdUdTyfdc9a3nnxSfoBYKKmhpOizAwk
l0mY1tqtyH3wpta6Uv2NFILrOTt/Py3pJCf+kopc7t+T+Gwa5Mq4EHmwPxdwYJPM6kfWzmXsk3rG
sszRHq2b7mpyDFXqtF+KUSnoN0gbw9Ub7TwHtbZZolN0YFsumUXhr4GLMlavibIc4stdI04x9ld1
d7JdK6fdnH5N5aPWig4rh+AJ0d4aTQeWz6SpNfYyEnB78BX8DQhDqe0kDX2fMntlslVM2qhNk95n
0AUHNA0ynQNWWbaDWuUdD1GPgTyQUnOhqwO+aVmUbR0N4Cyg/w0/viI8/n2XTdAKnSklaWX5SLjr
ESfveACM8q7tG23mYALMvTzBeLBLY2a6TyXW9hWGbFWV0ntgcvAnl8vf/woJa3t4pZ1E6gUJJIGd
ExURn7SV7lXBE/pY6o7QVp80Gw0WcvMbJz+59SVYphawn1pZU9Ln8OlYQTuH+NpDt1Ct3gLOr2jp
poLzguEMtjCw8qbXAkrKG0+wJs5NB7bEX7E1US08sPIeBUtEklAqcs/zv64nXko+RIWF2QYE7Ol1
c9SDrH5czZTnTCVNu+e032CzU1U2FFoJJcv/kt3Jokjmw+pqRyCbRpQ9AXnwnAHURXvHuXETcUjy
DQkdBSE9GVB0gDKsr82MX26IGcnt6MqaRy91bp3Hi/gbwc8TwCMIo3IInQZ0zgiD/1p8OjEXDuGz
Q4fqkNtiID2dawFns3MGhs9XBnsCxLrwF4cnBeI+PQ3GbposDvvo+9qG7dM94BUjYi4heSDGNEpi
3NFQyisMtwvMmeKsQ1MJ4YuPiHv2mNzLi9djKTComA7mAmH0kslbcuofdt+U3ceFXBjOqBK4PeaW
1uDqDvK5/G3ZZixWvnbbpa8KPzZP4JYggDZevk1+lCByl9g/RRXPyAbZXKdmPg2+I90V4AexmjS1
fCqBoz3a5DEn6mgrtI2rq3znx2uZ3VXIViRzGH8xfLufWOvLmJtkdgih+Lp2Aflru7nY1kafhDqi
KPXFSIzq4DAAJACROBbUtUGw0U8rbcu9vrdma/7u7WpKAlkH/jc9WUsnEIcDBbtKT9ZhXc8t0ioK
DdkvLjzjH+ngc0XsaJFirR7JWZvSr9UZxRBlsrm4IItnhGJs+CSoTW0mHP1XKRz0VGLfEO+ztzyW
M3S91Guay9Y7AArPF5RnTSCkRxMISiSLSj4VLGY+5AvzX6usKYaBIMzLjWj5MAZdaIKQ2nSHFhjw
JKPq4LWO7hH0SL7E7ytJ2ARqh7oEhe2U8O57YkOeD+AwqT/G1QV6Y0h2dZOgihPTP6BhnX72PSHI
kfZCzDwF7wbyY2Ti3VbPmRki9yDE3GZZWbKyWwXn0aY/1NX6qefmpyhNn2CE4xA3hdN0PsveD2qQ
yYFDKj2GyrRi65mE3kBv+bLBFnJgYSjEq8Y5mAJwklneeYCmSt3gjOqbodfHqeTEsyVgjp3YxnRT
usKhEePae3RechOeI4sV9uWfTXdvBJfTsS9/qISI5N0GAdTgT+vBwIIopMktRvnK2IX/+6TyrUBQ
Cgur1sqhUMVa1SvkEqnj5O6eM9ojXN8L7Qdsrmd5E6fQ/U0/JCyRGbcvH0TiWn1zD1YZ7GcKLkfv
C2mSxoATFo1MNxxIS4IcqS7jcrc1UlWURJFjYJkqyZmMscyB0Z8QxJBA3uf5hTRLGPUzoBJ+SUeo
v7A2AV3wd+Qq4mlm3n3C4/V5TNsCFn0NiXZbdhE+kmCq8/viTfDY87t2zqHpRy6qTf56sBQE7DPR
0pa2QY5Aphq4eZ/LE7kYtwbDh5WqCa0f84evul3UWxFJmKnUTMVkQv+qlVZC0sJvn/74YFtXnlFW
mm5v8MGEnoye9UesmWxfyjYhkguV/uf17JADuoMOM2fLvfZqpzSA6iz/YIs/ASs4PmpXH3+NOOrn
igib66sydc7y+uqnfHLaAHKUmhQl4CAyElxRMhfeU+5U3ciCQ+E+yXxMX9Si0MjkDEnxZ0xNs3c9
6THpT231z84y2KSrIEgbcxjmuD0BRos7QUHIeg39NN+w1oLCTXWuoVmrJXbiHzfdLtyQkq10N1eO
a03bP1Z3ZdKhuWQrvoO+SO0YyZclzqtVJEZt/PK7/f6Dnml1dQ6dMBHX+r1J3W9gZ3V9n3mh9NQV
Q+xeHUjX2mEQHiz3GdwHDkMBc2GkY5hwli2fimG3/7TYVyEsgl+wUMwABOcIfpa9/PlP92Ilau3y
XPkmn7dxPAYs3m/x12wAwuYPZKdo58Jt95+aIlyfRRDAe7VQRNSly8+c7VFjQzHgltDU9E7B2tjA
+Qjye6vYbcWGcldeDfkCEcCQW/u8xt5odRG4sK8c6/JYv3wWXRe8TMYovBenVbiu1YGG3AfSKM0A
AmlDLBUl1puCJP7zZAkNpsvjaBt7YpgosaK/KXshR4dxvSVxGbQGQQ/99BS9lMwLQEjsH/ycjxa+
eEJbQ0DBDNJdNLBVShDKGPdc0L3T/Q+uHliOAEj8hluwHl3L+iaUQGsKc2gonO3OH+cr6i3iLOHv
3f/1iXfz5WCWIXMnBV/iBFQD5a6geOVXBVD7f4KmG+P2IwztIpMmou91m0RUbFPhAhqltzkNNy3y
aC4jSdeGHy9EcTfNMOU+Ck3SorUyCp5pQ00tfD70TKHMu557wdLB81rfZVhNlUFHb2EYkdM0jLkN
FHel5AoBZj9orfUoYEs7+xil8hJlY92eG+SOLHp0GJ/CE4ZLWjMOFjJUXk9oRjhoua1Gjc3RrFUh
zV/th4LrhXrDbbJbD5o4aMrgOs94nj9QKe1JFUjD+i7qoNlYBqWPCD587M+h20h2KHCJJ1SGvadd
V7I7ix8+NcYe86oK66rJxWdT/TiXMefuLRqfsQ3aQCnNm8kYLqmdcNVI4q7IvGX/vZYxwDwKbjP0
ysRaMtjtq0X73B1wGBGVG0Eg3HCh3PgppupEK0sR+qtPFXJOyOIGPk95RfAj3GXm23VcDSG+amQe
C29MsepusE0VxTQlu7R3mtme4r+K23oc1exTTaoga0ccBnwCq56tXi2CygyW+i1F2OZ7zLYhHwzz
DkOFaVAOewcBxZPEfsbce5ebWktLSLItCQ7wiMkzNxFvXj5hmHEusNgSF4hjO0OhUiVrGfV4GdPp
xVpYEXSZB3lt4zSiD9MDSXNRVASmhU46wgL905Fqk1iu81VaxCXpp2QrdSRog8nJUZTv1APnuYuX
ctzTif9BaDnKxpw3t2Am+x+yH1//h6Lv5/H/4n8rp99LLY+vh1ZGl87jAkG9dMgmkKpFDYUuw3PX
P/Hc4DHdqWPWjWiVAK4v2AbCJmsHmJJvaOhO2Wgf1S13tH/W+qM7s1fDDC4TP5vzAI/MrHrzdX3y
XorLUctwoP/eCNpT+j3RX7m397d5/Icrf5+PHlcxifg0T00poDHFqvBg9MV2sKsRFGWVnzqo+cnX
ICWG5cNW6/TeLJuaYuKKRTNLzHuyFIpUj3CRF+md4Sqbm+psj2CEwNYWQ4jjGFr02PBppnGerbgx
GTDjC9x9K60yjVBhQH3IGkoArw0s5J+VvMRWdvWQmdFsSkfxKpYDAJvC27LAF3qc45xiczAbn/2G
jhg2m5gXWlaLZFDf9Ur6Vv3UgzOqIEo1y8TXnVxnoQwT8WB/ijGyyjA/95nJltMezK2wujf+Mjv1
AKJhPw5j/djEJ8a3kHvYrbNvghy+8ltHwNcklB9qt2xy1h9QaVcZeIKiKga+Ny8hbib0DS1Xz4Cd
+GeV3aEaxxz0ec9A2ierkC0XbDlNjNPpk9QWlhyDz4n3fSW2lnHiHWbuxTDq+FoaTi2rqx/9cD0r
e5Aa4ON3cDYfl5xkA7X6encMwUiagxJHIpK7s2hHLzKNmTSyq4dZD85aB+PeDDPBlV69490kc92C
yYJqfXMAj4v1AMyGaFM0epkRUDFiD9vzxgCtrGv/uIInM1pPQmhbD8UN+jLV3zh7We3IZI6bq/0/
tX9uSosCMQXpn1RfdLfEjxWl2et891fBBus/OfFzzdDKMlRMv4mE8IVLpm4ptASxuaWnUcQngQd0
BsQ/I5Q/gRrQ/8dtWdOOXkJp3KOicB/G2ad+mc6ms0MbDRZzHQGFLmxJl+PP5BgqEwgSgbyythjG
MwINVdxbqvi63oLbtFg88aQoUdSAqWFgJltrqzmu9h3UFnwWJSXYdH/Y5tGS9s8EHfj6JKeJIxfP
dJlsPkzE7LYkQlJpEpm48HYyH6ZfENt3IRYNfNDeQhcDsQ28qx2jwq5b7bpzNNT9pSFsEA5P4TzH
WGEVXuse+aH8CTsl5qs5B0r/TS+s59so0y85YkbN9ANd94GQUC1SkUGdeazcs7/8mV46moHibGv+
qy110/DS4RY7RLCAmYAdeZpHiNGzCorcwVTHaRnlJrao/Ju+1rOw4jG40Oeqduat8pDnl1zFYFcs
gHIafGmL/nwJ9Ixm1vFbp3sXOFU2/5ccD5ICVb0imWeGZOr7M0JF5aicG09prRjUGZCnzV2ciLzQ
efueianSAqRwd1tx3NiP+W2WbFX6tYoe26G5uybAibIxmIQhWEfTsGYaF+pPGyOdu+6qzpw1Ptfr
cUG6mtaj+uVsm/wWrRjIWdEp6LAN+jP5kEqyacR6Ji0XNVTR2QR9A6wzJPlFZ+JQ+1oxqUx0cvBL
G/MNT4ikbK6iR8CyxbfGpoo9Ia/qK+yWWrJElDTe+uVnsQ5gVbmatDFLodGzSJqWNwldMTDN9zo2
vpVgMjuLkVJI9iLckvTy920Xgv5HhNJECa31R2B0/vWW/S+71O0KKyIxM//Jnyj5VdfNbbBPMhDd
HG4YQsZ+YRczmdJT1YqmLHIAa4xwQWcQflejYCP2HMruGaSoakaofWZIn1FjJA3qPmTdX8gQh8vx
+XgA8Rr07zkLxe7dbxR3qr1rUJES6I9/VkNgYBF26wFUbQv/E20KPlfEvcFeX4vjLoZNy6wz234S
gNJzh3NcJV8TowtJOJD8CdIAysKF8pbeopjDCNXO8uaOSkFdJTUAYKo4sCxlAudVIeSDRZphZo38
e7prz6ZBul4467GaP1k7hgclUqnPOcZiMIha58qEK3Cq/AuuWuMWctBuKBt2xYtXLMGMccnNtN9f
JkRX6y07GP2DexiyIBheWYrTi3h8Vyc4xf2HUfJTyYbZro9Mb+ll99F+vkcccoEIJOGjOYgyEfBF
SDda+YWe+dY9nzwq6vwmjF/QR0FIYBMfomjV+xCo7XTAEeotX6sIfbjHM6Nlbe14nkIARjsCsYjE
cSxZEFGF6U+hwMT1roL1H4ybQP/BAHm25jgq5wcIajOOsdxBj97+nHDEDPxeW2gL02Mm3+qJ2ztG
rI+54RoZzwOeUEnqArFs0M6MyN7VyUCTOU+g0+cxsD2KyhjuVTSvfBCM5oDT9nJKf9DITbNJ30YA
qOAy8ma2gxHqqiuhOkl89BwU0Vqf5guf9+a1uhrnZrj8GIk8UYdPAjREHHn6EUKj003GTcyGOBSi
OU3V8/B8+uNgWX/DViSUX8Ur5aFLOe3rZKLo5h6ZkOokIrmY+Tb87FOdvSfmyro2R5njAirrOYE1
qcCySRPW2Mtn7clMuIXk6gtLQqzli0Xk2IcROTQI9dYh5eYshpP+ocGCfNp/0uTm1xOk+4FMYMIw
wb3sH+KigKIynJAaEvvb41ERzDs2kfRW9Z1Lzw7u2HyFU4CYaALITG765N5cLGRXH0AWuSEg3jsb
LClPab8D+kMo3tp1ufpP1GpURHrEJTopvIkim48pxgpCL5pqdTywuuUz9FQYtpQ6YvK8e2v05a+5
28pEjCEzGlS5wjpUEt9gPVgMSkL6ijfv4npfTB6VWyxoeJ9aT85Lwg+8mpTluTdCWKSNKZ6xDLI2
kHSb4pyGc9Iw0jFxkJXr8na9Dz86Jt6kxY3HD//d7ru3r5s0bMcIZ/qPt9fDInbFdBhzqDLbeVeA
IjJhOpqu61mho1MrpeKZ/C1yJ8qOnM9asmyPVzrUJFthw2pTk0/wrSmcCHjK0Wap1PCCgAdtb2yk
34ja+lPYdbuIOsqjbgz+1Ll9sOFAo6UjzGCeoel3j1zolkdQwjiyBU7se+arBeVzCbph66nYXnVs
yO5Th3/Ps037+YEB4YlOShu0jWD+5/fSnavIqXjhNIOC0W6dKq4IAkIqXYkGxSr2c5jkY1EVQP6K
y1qEbKJYbNlI82awJNYDUtjHDIPvB+cBnGEgDzxj1J0n4LBWBDFk/ntV4tEv48wAh4TokEkJmp7w
QR1Md06N2z/6Ebp1TSDwjqQUHKk/ppQm/nUclxIe5dohABOeI0KHfp1XHnoJyK1pc3pQ0UXuSJNg
rZbDf15JOVcOFQ82FrLAQphOTmpdBs7MGXDoPBpnVWPy/81xZ8o63BTR8QrLz1zZ31jtPJO57QXg
ky5MAsvqMUv39/pV9U72bmVWsvdCxI/+9v3muzsMVECqvsWQ+sNSQpPsUly+Z4CDWU3H1FlqkuwE
IXbjzBZYZ1IJNNeCmKshXjYpQF1G98RdLOJIahalldKHUnRH4uDxfMg5HLA0O9Rvf2xPH31VwQOw
rVMCq4zDXsk3OjOZ8G7kkJlcF7Htj1lxjrvfxPW2xZ5fb8ctwKEcWnhEuEqWhPXn7OZLBTbsp+ZY
jizREcKJppLJrof5l20P4rpFnR4fH17bDCzcAx6YiSiOMNeAHlNjO5HH5B1x17x6Cau3nzYMrNob
fcRphh1quc6UDeTieTfQaXnd7pg5h6DoQGhWhC8CHUq5/XaFNRenM7ZlpHsZGu2yojqC5nOiSOHY
OXnAM/chvxjkYLVBiwb/8EjqF8ftR+Lt3JMzggQjDgixh9+OqRzZ8ZcIA/FoO19uqCx0yr6+KVl6
DiNwI5D6JF96HZO6f1PaHJNfuhR3vaxtyJ+uDjwYMO4kzrSP2OiVSmioGAHJ/2tMCA5iXhwc8hTo
jAoQ82SVc9yHQkIsNXlXVrxnLsvnGv442hmRNHpxF6QOpbIaU6R95JpQdzQ6WjcMXXEiY8nbsnVB
ZpsyRBKq0Ye89BE92c3jLsTFbTOH2Taa+nUsKCYz0Wt2zuFLgJr72kC2hOOWB+N/l1bg3OYy0bYU
J7BNQGjBfkEG/flMPned3f5h1nCEIuZVGM7S98tJ+AlGLslK2pdlGJZXVENpuA4xwOAETiDv+/RJ
5PQeulxHIJNSr8MJt9E6xh8JRuqqsWYJFzRAbliqPXsby1lEXC/ArVc2O/sz5gQa6cLbHw+Pou+l
+rhvfvtjfiWDoXR0n4dRA6+oVJv6f/kC4DS5t2bwF9+++xcHn+3k+lM2wifqb/S50BL0zXoKW7nt
zIg8m0nzNKItoXxISOhhMn/5NP4Jnx3SD5r4kIgDmyoAQYBPBFvaYNLsWgzUebLuZJKmmm1siVec
kNWRrpVsXBQgDkMX+E0v0+UqIbNwtqbmvz+Yxz9sIIyM6ghMg0nSw/8Umz1Fo7qaoKs4B2GTId8G
9dcb4X1fb/DTTRY1LdY92QjWaQFXFaisx15mQzionPnFNE/i/tzcoaHSwN7Glli9DPeJQAQwEUL+
YIBWy9Ju6j0flMicStR/LhH2MXnsT4AYMXSNaqKHty2NyAD0TPwpgpzYLIOfdjJhqBFdWyQELxxe
c6892Sz8LXwJVhft7lpuXt8kiNC3q1O4rgeIn/2jFgczjl5Ijdlr7VmG4rNc+RgxQtdnn6KQZIo/
DBi6MwHfKR+xBHrKA8zyl4slUO5RdVdyy9NpWfS7X4mqwtoBdhLrGVBVm7jDmBLOA5vlqhAnVDgK
T6AO03Xc4Q3INxItLIS61V6EaLZv9m5aj5sOANPunuwZ8wZ2lqyJKO2OzC1qYQ4fGYlZdDIIME3U
jKkTziJ1DUF8MND3edZahrYnZik5+XgkihkGDKzFVKfDHhud+FGk0Fzo9w4MKzysmGixUidbqXkf
cPwPncR6UcslgEKHqW1qscKPsa9cExCylBYsshN4KRTfV2s1FsYlTZliMbw8Ct6anS0oCwqJlhK2
BQzlRf+ruzVuyHn/YMm02sKdFZPPGwQclEDSLhAifnQjZhcP7X6lu4Eh8t9v3Wq+wz1RD8025a00
/2jZ6vobvwShp1wE1VvCN9gewamQbq9jYpKSou+Gb7E0fwcMoo6I8dxf+y3IOAZRpM+CrBWP+fSo
9T8pOGwJHTQ9405Zi8AOxqqpNwOPzP3UpvrVIW64uuuJHM86IWuqw1L3GmcmcZHOyuPW1THfZeVB
ILpqTwkEQvrHb5Xejv12t0uPNTj8+I7LhQqyn9oLUopOgqioUMlBHdVQLBin10zyPZ7NxH4U8au1
XfoTc0FjHLcCpyeEfkp9dAGoV9HZd63cls7dIMNmOxrxdXwBpmYh/OW/lof2IcKT+mqaRm2VkGoR
pQt014yA6p2pbdJwRw6SL1ptZz8RWW67WV246CyyLCcLw2J81UCHg4qRPgr4VQWhbvjI+UvRwkQu
ef/lX3ia8EFqnCzWHSIpu69WtTK7lL2PH129awd5Mo8EboWQwcLbRmVLXCNDERLYsx8GILyh8dqf
EUkVMBYj9J3AZ+NAsmptd3pJQtmd4csY6EHtjKmXizBsc2PEr3tWASovvPF8z+udaqcmrgCNPOeK
gOYw0JyRp/PZl+gVPcDuCz674OKmFpqbGiGydndAUAmVN4kA9uMDrXx06JJcsQQ5bLJBfVVWV7eR
O8SLBs/u1HbKjpYqNO1pBREdsG7/JFRQzPK2lZZSwE5PzS6A+9zZq7fCVlQeiJ8ZiMv4gU1GQmzL
bxRoemR8nZ+YWTCt6gb0IIQ1WajhqJBPPLgJAk9OJ4tXCRhNCWrVjDlBA8FApcax/cW4XMdPmlkE
N918S89GE6bx9jL3Hw65ICD6CMTOpkCh8rHQunFexvTDVmUqEHiQWh/eRTqTOpLZaQC/heV4rawU
jgHmuwjoY1up0isQUg4NP3fNAvaTQ5jOxfneEzFtMw1J9pqBnf74pRguUvDavNw0WPjt5ifeOd1x
EZamPHJ0JfGmKBtl73zorns7m55GD5nN6Rdv0yt5Gg38Ex7hMelysUFvo+KXUG2J3zG7EDB7H2bK
4oejgx1iJdGyhECMkfhDBhtlj0py5mzyf/lE6Cn2laSDD33vY9WK9YwxTp5kTTyLVKSPucxKoG97
QKPRgumwMWW7IXLt0lIZqDowIIItwHAYmcihAHxzUkkvsVyCV+FnI3FdpGcyFhxpVIJl4w1TB+v0
jLgEF3j/iLIJjAoLrjdQ7U3HjytrPnRAJomHdqyMk/vnlARGl1jM/UZCeg316l0WFX8bboXJXYNo
w1MYRe3NnQUUcMbekSwFVEhX8iTtaJRtxQl3iylvTd/7Q0lczS07GgKpWqlu7wEE8iSLwfu3muEY
a67VPlzYfJH4CIT+nEiZBasr/72wnJpfSVHhY7gFNC/W0E22Ti+silYncfdLIv2gGtfiWo1ACNX8
LPZtB0fdVXddFo4M9Yl7p9H+hpXc8RbZfqLeCVjipndR3Mg30zmFPBClsiF/XVjMLcSsWZJJNz1E
v6p4X42W9Dhh4jeKzHH+t3/VrXj2qSJ7kEZ+QBjdNbAy8eBy+HIKI00qvWcL422IyT3wUEh5QFiI
oXeURIJmJ8Df0wcBhX8DdoxJHnpE8f7L8UdU2BARHJkohf1JKltlEd8vjpnMb+AdY47P4wB1izow
l8o46jEVX5Qi1CJn8ARJxxtP2+ZOaYMXbJWC9ek9c/9ScBn1TXtDis0pznANZbZgu1zupzX+JS0V
If7q2D7U1HGeynH3e3FXvTb18dJbNH99CWlmaDUM4g4uMb5Qh2bAx/MukBQKRaB1o6pdYF72hnep
DiUE1rG2P2ob4deRK6MnELVLG4sQuwnaHl+zdwquxZgCV/508ucM6Oe/0QIPkWnNHnqRFtJYnuVd
ZrLKfJ2SSh5Z9q1Zr4BFElpxxHlmiAi7CZS0AaO3CgwM+dK15wYc5HK0umUPiUkyOGJWg99SDwhg
mURhaQFttchhGIrb3HFPWJxQZgNquUzHhMHLMIrQ6yrjoHxb8f5PUYKKw7uUC8LZ/MAyhuFVhYw2
Iyy7ibhkfvLCtXsUlJbG2zdzvQxtxAc00LDiTTsv/hRDHyP1vUB0BWhY4qYjzeJMJ7499rEU2rep
jScDYhHXtXvf9iDEYriHL7VGEmaX5/SWrO7koRJT5rnYEHUi3OQ+3Zzalk1GnA57W1lW1YqdHG8g
g7PM/dZg9jn7N7qq4IetKqxDydU73gOM6ovMpArgJur94XseREcl36Sag92eQEOFkixdoo/6Fngp
I94s7cRRq8szgRZQDGnH7VRzAmwhizLbNget4PKaChWrk2zir5t35mosKCD/3Wuj+iPbs8s+w/QO
Zv5hfCyX0y22/sAIYcCooxBF6rS/JNU4g/TPSViuoYJ8wO4GRhSYiA8jXYqjpPl/F8FIPznPZ2YK
X0tszFZdCiwGMJQMctRHVZ5WjeGDwhsLnkj2MWMQn6UDUU9OXxv7mUWFhKHo6KxqTeeTWgSfZibn
r+oGi62J4gXDiKRBbU8Z4xOjnKzloUpyiBWZ3BxNwcj9kmYFfEnjaXqOmcTWILHtQXfM8RWvD4wD
y3SUA++n5rBdzhAL87sfLbnjaqW5HOPWBJv/F/eJ1G9fntzoBjRICRO4eixKE5ZZ8rOzD5XI01rt
7CA5tAiNdrIbFgCQ+NklHA/com3+2ZQXM3tpftK87W6VrOnJq8miR6zzakzKF7PlALE0N8N7B51B
BZXMruJ1mnzey2LofYf2JZ+d/TZuThCaipDiU7rZXEIAAoTRJgIWR9opqfimNjTDazuNz0Ornf1L
8usmcC3AzolGUKfSCc3F/Ap8kitxu6qwnznzgRKQVq8eA3kz+JuGwLT2IMSgyGlOMNQgzHT/Sthl
P3xZ0rH9byX9vOWYnRsl9Ft/AFpdAfYK8YAgY0Gt3wm2FeHAc3Mo8cf3hejnihD/e9UKldEjwFar
V+Z+c6fFeUVHuHS8+1/QTO4gw1CzJ0qUWHdV3Y3qVFPJ0VUaC2qvwDdNkpRCoH/t75ignlKaw4NO
Gh8CzNqsrrEG+VVTxE6LybGJ8Xfiv8miam4+2hgJk4TgH92HGu4R/xeiue7qIp8poNliSEMuIANA
RB/Tzlu4+T8uqyas8QuU55DQSmEDIPKguVyDg0Y7fvmzpv/dd+FGjsyGkwFzKOpqHM3rCuxxObAQ
LVd/wq+t3auF/jIuSy3ZqZIlftj345a36NYdsPZi7HSM7/4diPnEm90KKSWAwg8i3nMOAUzNdw59
XPAIUCyVI68L8qcp+cZVa7OWQ3D3YXpuMkNt/0c3YTri1tElU9GermLw8aKRJqGQIo/PRaU8Auso
gTSbOpCD77rRZMdk+5Af3KqdmDOs78HMr/Zsw8YDL1X22cahU9faFdR9mUIFJDQOS0qfJoa9T7Nm
/Gu+lnn5IyyW6zEuO4Tjjew5V7nNYarIr8Gl1f1+3xc+oLYBsmyjCRRStUbDKk4D6bURQ1/uFzPT
rGWvJvoVEMe9sloeFdsldF3Dgf/uXb4ZulhYVfqcsXJVyjdVJ6X+WczRMumThmbQAvYQIfFXPBQA
Jb9vIYXmGSaLlLnZUfScf3tQ5U+UrNTFM/JqhYMrQs97hRRQSvbE6CV4Nn7QiKhfEqfNbgcEuPts
EAjzytVLfJhigzH4RDDZ3ZfDLJ2FB/Q6YPatvb5KolRX6MHXwfDKv+E2E+g/GX2KBQp9QNsdzF9W
zVFZGUzYtij++aCGo770tnTkWfmJCeTMKJySoVNmgOmJbHn33HLGvyE2wIW9qmCL/8VvPx7Lvgsu
HkYjHwqU9BTyezr1u3R7b9mpftzB4vL/orgH+6Q0gB5nayv7szYColZvWNq1LmBCjdTA4YXCqHYr
l7DWkTKjEsSe5XPQAuBVGbxDeOeyNKHrleJ792G81QZ4FRMJTLPKCaOhU7Pdn3z/WhFA+Ko99olk
twHSJKb4eJaqkCvM6pD6tE9NdlwdNRpfwuuHjbJap92Gi5fJ2pqMchak+loWe2w0YLlyQ7dsoqHH
ZQ03Jxeqyl0oxxtjex+jZdjAPk5XuRjog57181PDIOvehbTQw/Qeh/Wmvrc92JTPf05tyAPDeJT3
nlGFV8Uyh0V3BuO0R81J2+iEwIc2ic1wLTkJ3ft8JWzdySJrfwJ3yXasTbl1Wc9taAtVuLu22QN5
ZqhW4U03QWHoSV+qVlcDD6U8e+Ns8jbaGdaL3iUfGMhKRLor9cq9PRin/5xx/xkA9GNB8k2wNY+p
bnhlR7PYYndBd4n9uT2/NEJObU1XwJVoQs3VqBC5AiY7W3aqSQg2IVC0WIKsjTF7gU0wcW609Gy4
NUxJv4BRZAOwrvsgiJbBjG8LxcAbjagpwaYLRz/gEFbK68lzm2sE/0YmdI5lbMeF/n/DCk2T37Ik
uLJVy+6+Es/Ohtjmm+7w1inmrZi0qJK5jBt2GMpT1SWod9JBQVx3X6dDhdIOvd1O6IquFyzaPqI1
sT0R0TWrz7xmjbdYIBX1n/WHe0VSXrGkhDcyqAmFt3F89NPdUeb9+SotlsImetYDfDZtJuDmku3j
bH1ktJ7zBu9tR9YyFc71RkmhY++5PgdDytJcbVpl2qACoKoqdgMiifGyS+a6lz3zxE433uUD3oKB
bvK0iFL43u1r9ywHrQsrD1SUNwTY9e1mxL5vuYrYe7Ku8NdEqZCtatlm7dlWtdmx0AApuEmc4pe3
XuubVD2De/DglLyje+H/K86VUT+weqnMgx3eL7F2kSw93FSAQ6L1ey/JfjMHDQwvw8knCGGQs2n9
FwOHbCxiiBu3AD7VkrEhVLAm063qOZKd1odXGj70gJXIlnYbT4Cw6kZIIsaSlHtBuNgKWnJjJFhj
fT85u8h22KCz3qaB3n9ZwF5U3iHo4/kxJ9GEzS8RaL4JbcbNg0sSU+PLaPwLRbFFXheM0i1Ibptb
SEsnvK2I+I4CnBGde/vMGpEoPkMLPvz1UsIGx2zhWa+TPr28XJHEP42fvMnc2jcy52EptGuyBG88
AlFp4WG6CqcKmQNjr1JP2xnwL8RoBtuXQPkTQeWy+HfM4aPtSJZYUr8wfATh7s9POb7gCmDK/zKi
VuiS/JvH1zWxUqmDSdcziwDyUiSOGfl9vK6jd6SquVSNWhluhYmz+RT9SjH5zvGto0wWwXK3zfNf
cToR1MlNwo8WWfpbgFv4ZL7ysEo7CaCtNnM+9BWkbSvJEQNR7Em9y/ecXbYkotdMBFHgThpEwwMN
PVSjLE6uwmXxsxFvXtaUcRpNjAYerYFX9JZjBk5YRRa80u1xiTlfT7vhGiWIgl6FsMh84UZpskG9
HRMRvJIGY3nyTcIEhrCwXCGqBFaUadiGHWHwQOKp2KJbqPeIZIh72NDhNPJwgNl3gep23SkQvvhL
XuHrc9YlKAk8o8tKnXQz5vF6rnpoVt5jy4GMcW1XSyDtbfWynsnehz2mOF9dR9DUhsjMOXqKTs3k
09Bbu9qBHxzmwv2e3AGsrUKveQqv0PFRZLOunzY2wVrTLKb3lGlSkHxv4gScgldbjFB/Jcb+wsBH
kxhoocmhg0FOWOmSmL6f8hxaQ1GPoDD04fvfjxhj/E9WVpWrhExDGuLnRMcf979xlmOlBK8iCgqZ
3pjERrC/HPofeMFBa5+iMHjWe8WSjZx6tY2SszqLVtNXba1tvnXz5a0aA5e77+X3XzLvfU24F408
OZ/MT9BNm83npHxtlz8K9vocBD6pxnkRyp7/mVY10MplNCVbUVtIZg6xRSSn3hRCf1j8IGd3nYUM
lC75yDfG6DXVEu36UyRfKNaq1fO9+J05s0uHw5ArB8vKp9BlZEgoA24gAFr9fwC+s+i7W9vTdssp
yLVTpTtokNKLSszWMQhqKuDWZ2y72znnvHakW0NeuKyPQ4YdArZmdrXX0bnbgSVJ/pmmMgqnie1v
nOuNzg4We+DV3hLH8WVRud0CNO1zVHacS70MO+XvnxdupLJ3ggn1XGEdQgRSHbpS8Ol2pJUSXhGf
hwE8W9W9M+zDr8A5pm2hqj4oTgKfmiLELTkx4LyKwNjUwc5hXy0s8kKzAHFXs97pvW1i2nXVQwd5
Nts/CwTc8EJhVCdDf2PvbEFO23bC5mMZkhZ9yDr5h9BKqaiPnk7XoN7g+3hceBpB4iIFDE/aWsVI
KdqIhCmlgIfW+HvS8nQfzGo71D0zG+boKPw9atQAJ1Ptz08aTG4b+C7TvhjXlaUmKy+vm6n2D5rF
7XWplkaAOEhbZCUYwc1twrLs2X2wU0/3Rog3cfWqo6ZLhK1dMzie2LMZwpFrMFzpCJVZ4cuZzJgX
JbOQjCKN+AmIjB9XGZw03iC/MLWSUuVuxnu12KY5QSrEiCvwf7EWGZK7Nc/zdp7ZobXE2NqCuBtB
K623n4AXWsSnWewM57dOnrQshrcZakabxdNhHA+lCXkER9Vdq630BCg8JpNRu90TyJHGB5POi1E5
sC6lZKdVfrOxEmEyTX5KiUEkg3UGcF9mW6JCmDQCU0+s95g1jTE5ow3kmYivILWJo+oNM5WDwXY8
SNvHMq1R06z5AeJMCtNZFYEDoAW1HxHm01D9OAY0eLHExZJbeCCYs2tF6/5AmMAW+3UBY91XtzsL
JCHMXsb4tY6l9nh/d7UoyX99o8yTQp57tB2mvWkL7iSc1foghrrCrzDQ5dGsjl9kaZkT61UG6C3s
gIKtDfniYUsrfUVYQ+zp7PMhrR6avYKroh4J+6RzTRa10GAk27mznjMHemZBRbkRYLyOy6PFiKXb
2a0aMWZ4WOQvzPGfTvHtANMQepJC0JPPFNbfilKcX87MR7oHlRTYePY5Bow3Sy2hp1w4zKu+HwKA
uuu7MlxqEmzyGBYBQQ8MLKtdt4nFh3dbJz61MdcH5hNyUCNBoI+SnXi7gphf9EZr93m+BmUXOnRN
vK+n1dmm65nF0eUuicvUXwM7wGA3NbWcKQzRxpnpM8f4u38WcxeQT3dSC+/7h2Wa1usiIrjtbVVt
aE6uF1rqfVWx8VJdo9B13l+l81yYWGLN+CXzDklPruxC4mHzU8jhPsHpZGb6q0LpFGZcsFqFEFJu
/9TCOhZ2zFKPCScorVfLVllqgKAYctf4G8Tgoh98OjRSuykEw2hlf3Rejh5ybUtZ7i6ZL84rDCCU
6jfIxTmUNcwi148KnTQRMwoqeboa1WjH1BmE/aRwkSzfd0DsQBvfxwlD3QjRKs/eVgxGo1VqtvM9
DjRkCoBpC9B/u+eYe2Ea+ME6t2InCg6M0EofgQotRgRvRhx4aG+w361kWQgd/gsCMnkeBUdgtzg1
7w9ksJSW9QLVD6v2vl8XnjARd4Sd53J/9LygOhKtVgRwYqQ/90jzSS3it/7b0mJ1kG81nwS0lZ7m
JhOJchzhY2NeKP5X7Y3Jho+xDmObpBfq4wRoFKRQu955c2a1Sw5UOHDOwqQ+j9bz9Jgjb0006ShH
MEJIpNAj6t64DAAcvS0D4vSEUP5co4/Ul+U8prnhoHCeDHSs+i1m+IPOBvW2+CsgFVPFqb2Gum9O
Th0PTFzsCIDlpTy5JeXr8rGqRU7/lua6f0qjyD8h3KqJoTYnDXZwlj2jASRM9Pp/PXaWmGhao4g7
A2hUU30W9vs1RCZQUOUDSSNTp9kEzGsIqlgkiaD9GWLDG4bc9ZxMpG7w/XuqPo8LLxeHdwlmNmWz
eN87KbemWoaDhozNIicqvOvBwZJyRUBfIZwlJMrLd1Vu4BzlKc4Nk/Ssyathc9hy6fQU1CXP9jVO
dX1VNV/X8LWg3QudRNTgae/Pzy1ulUYE/M9lOHIkmaQIZu/vMVk5O1JZntvcTQF0ZtXZ9D6NEGNV
HoR1J4Gv5zeRGvOZJo9oM/iWsEjR6C3SaFkjwW2UGcwsvtZnTWwmzCe/I7Vx7QwO5FR1RH6sEkff
zdxZ1crcMTMh/LtoH80EfDLftmOPzO22e31kNcUVcAGSMyE+hl4kc1nZCzQTE7lgNuMV9b2NMv+O
4wCRk6i8I6oW5u7whxs3YqQQ+q7D8oOvd1abb+UwnVlz+WHb3bnMR0s+zSrnRjnLPjeQPcLkbt2S
qcswH3I0K+/CxK2cwIiWXwlJ0VFbzWF2hY1N19MTDwWbiZYk3xGoPG9eN0qWxTbzJOulucUzdB/c
T1Jixti2A8BRaty5zZWzj4ww5rQ733n+qW1LBohk2G7kG2zUU2FlwAlwI1qcEaEGhsWbNeauvWjb
ul4FvwEiiqQ6nbN1XaZypGY2bi1qRmf1Df2mKbo0lf7K33gfotbb0AznWaCsyL9pMfq/eE97BYsE
YAFLBpAkXWngd4ULhdktKEbCrLXwbWdaCD7q8/le56Mr2bXz65SzlRa+t9+9HQ9dEWK688+zpb6u
UFjBd2rM2jueRNxujwFM187TMq56hgQDE8pBs8uqbsDUzuZ2MSGV8JrFJHtamoXeUM099TFcAbLM
zC70useZl1vWD/scsrMwtgtOAy5a5GHvv41BqFA854EsRPm+7ehxlJsw/5DP2Bvn70PaEgEclMY3
T0BCPVZaeIpVu2+Gt3YkqLq6Z++K5RSWe1oKlqbmM2eAsLfUYnSUjewP7srQmWPzeUu1Br41Wdi6
jm6nDRDrST/qRcbJDKJTYFAKoqvw8HgD01LCfovAlUoTkcbyEIufcPLltsLbkiZcd9TU2xHLmAeI
3OLYLpH242Dml70pRJPuHqZwzpVN83RAhq4FCOPgNAxJmfMUfjUXLiJFA4DIMoiByvBqjYreIR0A
M74speV/KrvWIRNYQcapGnhkuB/QVMFqt8S1QzdVm2SqFv4/fdq3RVuek20fS7fcNlrZpUZ1lcB9
wMe7HQwyZnHT5NIJ7NK2IZDQ8nz/PlHmDJn18Dba/Ptlfbb19RX0AH4J4CjtU5251wDI6Fkshris
zxM5CIRGgABpT73gaCB2mILCNEv2kj/dP6wdOyPiIE/R7iYXSXOCFiLU2LXItElelXKnDhYTYgOQ
tcg5inH+aXxQO+pkNG3N539/AtuNgaUC3Mw8VURviSxS91TyBZtlVc3tJgwziMTwOxftUeXuaqh/
hln1CCQYuH5puitbKFQY4//vT3dqLQr0r2OP8O3RicijAx7tBLBATcZEV/tgt38W4lKH+n0GZPWs
U7g3vfalTBJMWufWYqFDKNNkjN5Ztj+IXI5KGkrPoWfIS4bTtmkK9TYFpCbWWUsxNAFnTkf4tkcc
fK2Ms/nlk05BRMokFAIhqBNIJ0rQKw0+7wpj5EhV9bFyz0Q+EeGp5VDYdzBv9yVHfUAnPm0YL1Px
hR8y+LeLUiDXjucuNuPicJAtIXwqfv2ryw281IAyIHCtjVZqADcoeFGiwii2OuabUwNrAbu1+KsR
rHvLLDsXL6sNPPPLVlwXyBrDGQYV1TDiIsojxqHXcjWLaapuIH1YS3zRN4YdHVwEyx/2gl2bHnvG
T61mLTanNiqylywBS5l5SFVW0kgRb0k+3G/x/JYY8FwzjcfUv5wMmyFJg0cwK0OPO4u35okXl9pZ
SpqEPcbiXQCxZKdW4Tg8E1+GLYVq5wormoVsjEV7UnmTxf7waow6oJBCcRw9/zpZvO77alYl1lh1
Ia+CYKaiBAJJcwDlM5qd0bW0tpM38diquJyKngD8aBBSBKqRi/5rvcZOqOZaTSuw7lZsqG5jo6zV
eU8zYpNxoGe0o9tuCGiiIwyD/Mv0sHnKOp1X6BpXrA+b10UAm5Iwxaa/3zCOwC8f+emCswMLY3qn
+jyu+w55F+xOEZrhsik26QyJWsph9OqYgOkVxl7ecr37jVP1d9ke5UCITrp2fWCFqyjCx+LHVFcX
9OvusGdXgsMw6loTdzsmn9fWfXdm8gNmVQujTDiNakiHlJalAAIIQodxe+8oLFz5iaPueRWDWJD0
AlHaw7qM5hcEzMyDmfLlGn2gWxGqZe2YfdqgYsG5qrfeiT9tmDHTuaetMJ9IFpdruEm99jMWU5C1
1ghPQbVM57cWPKgo1TYQXhRG+zN/fKFNJTyCKk+FTe+T+sI+SiJoTeeBxAkVmvUgf4iTZ2ypB/sh
eGo0HTsNXbSxVFMbZAHEAo9CBJyW+gkfjTlUoADIIljmEgrUL/C483cHn115t92+Jt9VwKSYJUie
UrufrmO14AJStP079RG4qHhLwLOh12HQcLHeSUq4Y1Mi+kJe3S3XyMKA3zMT9tQAEYc9p/Y8qcvt
h/IMhglbO6OIEDR+3iYT3zeb3/JOgCc33pZeaCny/aoOPnXFec6X+x+nzeFDtplzhL8GtXeoyuHk
Jljs330fLKYrtnyUUGPkkDWzt+HNrFyl88Ln2rQhtPl/+wIYv0A3urTzzgQzA38NXH6BlTktw6jY
lB75GY2dSYcYzfm3+3lGozh6J8ina0BfSIRQhfKdCxuNlLkudOE0Xexq8y1e5ItHeyKqrNQjQt+z
bqimN6dznnMG58m0PSHclo/oSwqWA6wNX0IYdKBnBgF4/6lpVZI0NN+Xxd3cSuLHPfHFxmoDsa76
zb6tnOgAZ9qWVG9wwM2yzsr1b2VqznxTiaqcnuZoe7jCcao2QxJSzFAMfbZbyQP2pzQprplFUqCV
Ru2UBE5Kkwmtjf7LLBs/WtPoF+Rkxv/4Je/bxH/zZLkQ6q4QUF0IvA7UwTJIj+vIui00M85HBG4N
oT9cAYDRG1mD14ZvP25bgExxmu1bIk8Zg7K9ZdiPCxl7BVm5QmgIQe6pJN5zPF/U9JorO3FSjcLo
sgKNzeL+bqHex6HFBcmeI4w2zHocv4H4k/H+qgvZVbZw0K0BswYhmRf9+VpSedmDH18yiLG0TeJ8
XwuNo7pyoPqNirz5jAL79hpN0ikqibJo204zCIN8Cohy8xVV5Mb2NwznigOTaGsgnSgf1EzCZ5sM
ELdrkNcqUuB+8hJ//TKi+JGHAEm6UYxfaqeoDPbsfIhsNjLn+AvLzMGcBPpZgUvpWauIHjGWBXCe
RvYstfmhQVL4zxSMpyusb6DBr0MUruJL7MMzia6XBmvJ+2MNVPkhSn13hVm+FWJafWhXfw6W9U2u
sxCipStja793lThASD/ZfhMYpkVgA7AiP7LTvIOxQUB/t/xBkbBYQHONYs+K54WoTmjebGI1DGPp
8AzOk8dOo4iSOeKp2Ej5e/nbSRMlWMcUEHtXVq3+i+CIGxhK5CUeQBuj6ynGlabPTMAKETTKEif5
tI8jCLSjBSKwanESzKV179W6P2bCiyqFBLeW+QqFETCYM9dAwe3Ww6PGtWZs14Ts0yfRtUJ1mcuz
eEWBZGoF+b4cMBgh0JCGR4I223KQSid5Fe0Z2/2HxQYHhbpcAkDV+0bbOe9PiTxFXbVGALF6Re4y
Yw0/k5ZxHUFM3OL00PUPkO/5tQI4h3VpLNvUiaMUdbAoxl7pPV5SGpVB5A+uBdvDIwn+L7sDAsie
sGG+lotuWt4VXvXZVJzjHEKCZi5CYQMhKDv8AmGOH/HUmeVaHUFvCkpxs+ncKRZ5Kxzj1Rf5Ttqf
MsF86va+ucP7lh/qCttyStUkZSoiCPV4DaHOGjSePzIRGIOSB/95FXh5hYjd2fCoW4Y3bJtpvyFS
9qNO8Qa+MlGLMGeQn4Ls3sXLJU6xPSQzdtuoo4MBPwIfWwudqJSIKcoeyGv302WLHvvH0SyPMSUw
7jQLtKAoyV9N0I6gHK02QLIgjT2i/lTDTZ3toZGdJDwH1dL4YnRTEnXDlG5wnkRZ6vmm/keSwuAo
H1xNLCLwVINbd4G+ZFa2OXimtZvu7wL/zLmIz6jFZwGY3kWFjrclakwiGUNQvLJVzszQU1cvxgiS
5H5OScNR/hHgZddfSvHzM8iYOSsrC7z1IfViXRi3NVxAewsaXFmBpiLiW8eg4BmggcKKlbut7jV3
YV7+V7B2Iryp/Drg6vidgB58vaSjqnjWC6KG9oWDT5PRhPovJr9Qk/jmYgkZ1NIa5FIMyiyn5oqe
W/sRKdCASunjVrQO8NDJsN2hHIX7RfZL+Tq0JPtLn9uiifQWnHwiV0MJll35QIxNj9pvjJyqKHrq
9sgQRTt+IH2L22USbgHucy0tDvt6qPJxcebrjIy2vfodRBWdfFeQOXEkZqvLRLJ7aoQSRl12c2jx
8cZ6pS3AJmjGbZo1m5i1iNhhk85aG0P7dxUqm7b2v30eC0XmVu0mwbHeRhi6GtGxNOU8RdvvhCMz
eKHi0Vphd8zEuW0DaqvIsH9sBoLRXMSFhjs+5hvRSYwHlfGX+pQ5F8TxdUV1SE+naiZS5cW6DlG6
Em90BB2YifliYsVLfdimQhAJ6WvbZ1IiuzCeDZOmqbCScsn7ADTa6JAVLBrBenUwCOBIuYbv0aRC
ODeQJzDkL5ULOEDIKzCUPUICHBz0dNe81zCEPTW+Qs7pFAawxywpsZOIKeFTuhdbVetRtkOFG22r
eK+dIv9ULUxrWz0f46cWWPW89t05CGwIZSDShfCJSrCllRDAf7J1Zc5gQmeHrvU97MVgesuF9YB7
gD+pTg9l0sIyboJou0EUUR4oxkGW0YbMTK6qejKh2qor2zAZ9YgKsMDiGNlwSW5e7COvkP3bdoGm
edb9/jxR2DhH8WQ+pQNs7Z0vsGQlxPI4Mb8k8lZfiWVXChep2dzjRGtEQr0RU4FK6kFcHJrxj3Xj
fd/5z9+Fry8/pj12mnN/PKJmrgjHJsvoJtNzVkf5+EETYmZW1/d4f9f2s3o2g2GpQ+lVrEoyN+nQ
qqdt0XQ3OQW+7qlQmyHCP0jP0EtHG+zXG0Jb2KIAXS+ynQr5bakt1PR0cqkcWN5zufgmwZGeqD32
ObyU9cFhO/8eemJ6S00tM62juBVRRlcRy/eNErTqh+M0y4KMzZddkhpxTSIUoj6PB7ZkRXNG3syu
C0ZmsQ75UZnAeFchvdjeIDADCSeFmq9dp244NZRYx2T3DAxWeVC/EpdZ6NYAi3pFCtU3KnA0baxQ
nPzOBt6dgfNQdtOEUqUSY7baOAymVYOTOMDje6qBUHOfppHjVU3eaWzk+hq3sZaLEOYU/KdBorXG
yEaSWvewNuI0rEQzPqgKpg7RsJSeqNZEZ8qnSzd+Yg+MvjVAx8CJoNTNnURqRHjEqs/PyQLcjLqF
B4LHZlU8yaeu3vCBpkr8IEp1u/cCE8gcXcxE+BFxXuN2rHHoubcSor+Slgq4mJC7U1xHAWLKBx2s
kHnejpIRXiWbOJadUpu9tW0CbeZg7oNQYM8OH/qT3Bi1gqiMhuGt9CMRH7PrfKSxEeVRbGVSnfmB
TeIVWER8IwTgHVklfLEIz1+CrYFSTZhKL02Tu4g03WWJAkHqE2V2G3t8fa29ql4kjOkNsVikE36a
avbZXoGcHVjrsvoJ2x0X4nPaQ4GoW9sTSq0Cl/W3IgiNws/sMAJ7KJet3mv0gfBawbiYVqyP/fuR
R5YHVLCfiEoq+Xg9mLjlXi5Mbul/nhpyCsNPxy0Y1513NsmygDDTjh2YDI6iAAIeQ417b31K4Fzg
W4XYjt7r+9nKeZzFwlWYHBRAuIYYUVpBLTf69NoIBKm0WfyBsiiT0wCNvIhWaTqJPJfiB12JMGZt
WIHjNtOv1SKPsAA5vS3XCc0smMneA5q1Ql2SeTgYOxTh3Q4mhNN4wh4XtoLgzimJLVu0n0sr8Kd8
uaN8zDC4z7vZgcnCY/Z2YupOSlncx5RRTQ58njI6ZpXdz0nPxsmb6v/YUdXf2hLQcgbgNQAghFai
q981uBHeohWH+QtEpucyWo0nuLltGE65WCGixSXSfIe+CE15+xXGXVnmzfUi74IpdmbMv6wMgDS0
U4yCxUUI1CQWS4f4luPJSTwN9kJSZnkYhNqmfTlbLHux2pxzF+l0nTzNUt3jHw33qDMwSud6B55B
R1ZxAefGL1kdtLJeAKG0HHkmkvk11HOv9eqtpHbyI8WEdHHgc8tSUG85w8HQ+6LCkZ3qyrikeTfr
gO/OFPO3hqTeiWG2NmvPVewaGyPRPPmgSsiRpBVFWSAIG53ZxGjrQVdGj9liIL8o1ljjI4K8dPWE
x84bNSlNg2BwVbhCtwBovRXqE7PvYQaducZE2wmPLwvwPtoaB6scBFMtrXyWeXlPID8uvkSc13w1
qm4Yq+z8Od8eN5CwWbWTdPQPoYUqXA22Yzp1rNoHpWUrhHq54D5KyLH2+ZmjlaS0DgXBjxxj5MRx
VOfa1O96HHuc53ev5sjp5bb3+gkWAsmxCctftnXX/kcJ9xnQToDkRKcX0EdymSuJasHhrC2f4zRY
JAwTIpvhFuaHtrfoYnMGRab9NoMTT3GC9/GU8v/9Tz0DctAWat1Mer0AqYYgolVaYryk/55wuXF/
VFvv7o0NJ5plpUEQBEKAIvx/YLrpPEemP0K3Rtg4cFMJcb+tGfCzzzkBzZogfnc6S4GZDstHzLxN
yt1T9l5B8TV+cfOqU+l4aiIOKLoQyZKG3QTwKiCsHLZ7cMb7WsBToCn0USXn2LAhUH3OBnPrhpMC
n3XQPYNzsiZeXZBJMvcyDCZynPqdyMomuM7D0M1dvxG7ZT8XcOCW5PkK0qhkzhfha+eyLA9N8Q2B
PPAyW1YqjGEGmG3Q00snYwJ/wCcQKWPn/5mRJIhKLwp88UJXqkh/y9uqLjqmev706buJoDa0qJFd
juwhzvTkq/96DYn7sEMTNN0xmI7BVLTK//N12aqonbOSO8sPzsrwC/pius18ckr2ytrYEuw+KMKy
brWpWvpxb9a0PC2rYWI2Gb76hsc8toAX0+K1Z+3YPAvc/lAW44r9XDmxbQrXa+i/iLMmNU1TRh9N
GRUMoZCVFmBaHn09dFHX/mEueQ1Pi653eYO+VKP2UbSB8s0q+v2KQ18QZUfh/KHaAT+kOfCqViqj
QKN6/YvvU5x8nKt65Bd3UzauMlzL99TllNavYGfTFxhNgB/e+Q1Aww3jN0p3vWkQsYkjyRGghjXj
ZnElfuZZLNxJwfHlASl6SWokMcQ2B7vz8m/Rueqre5fkGnGlGEnd5aMdh2wBKAxqKwTPH+moNyJl
GthGvNHoGmvLXWFQuSOPvQeVIqYyd4N+n3xLNuXjYLYu2jGCd3jhCYwGQEbu+UiHoNGS7htRXLpH
KYQbykK0xcjPvOCzdWQEsEjRwyZwS1oK6zu6J1QxTwZtxAmfVgNx7+cmhRUBTzRHB0nUiU3l05ry
sF2pdjb3i1H/2DwHj0dVk71L4gmufc5FhXcNfvlLIbppLDpqHxWdUPmYl/2br9XQVHvDhj/enttE
IUYyLRUBkwG2y7ZzXhIE2m4eqRMbfBsmZx14LgPpMiW3HuZ7JosCyiil17N1EX1GZe35DA0yysCW
qfvkzAI42IBrbamsemw2qFri4Y5sDgjqCKlpCK5kJs4mtPPNE5YZPwWCW3NbbxfkheBiZbgld2GP
sizshIpUpmMZphzzf7IhipCGArq36j75L1qO/r+/6eQFHR5sgCHKSEaigM/t5417Z2M6gWq3KZ2m
G8H/Ts92baAb+VPrksMoAOyfDffBcsWz/l6qHf7i8QmB5l4S57zbvMeIHBRWsc+l8lkbOp/wq7bR
iIywqdrPbFIB1bWWEhsOLaYYkTRdbzIab3Vi0wBlRjI8YeuveTVjIW3iBeaJ6yC4LLvvQtntC+Lu
9PJWTX4oKmtVwqiugwvJfKPgUNQXkK1c1Qa6thzNITuNPflLZVsvUBdT5774vh+LRyCn5kKI24BP
0SDKdl9jeDbyH3czDmRpu2NpbWo1XbsWajQ3W0dqJ5xMMtRL8QHjWxkgL7OUoKDcx4tW44lLI6YV
PGZ3KGT0cQVTXINS+GZ9BYZesvP1agM6c211cU5tMLmGSmDP/5O+jr7+/t3xGeiYOBlt9vjOBil5
Y6SN2tGds83mkvcV3j6gXLi//zvzDYutQve6jnZkcELr86huDM3hT/SkPLOtJEWQBA9i8CYaCwyU
sK2oUizXo9RjILmF+WVtWkILAm4RBZ/N9Oo8ZWyrmddIQAuQ4FJgu0ouAhUoc+eIEXKkkITXvrxM
gT+PN7Ba+AsKQE+o+185ThOFnT98yesr0Cgo94CeSK6Sax4hFxHq2H716gRVhMlo3xBJeIIGrYhG
Zm7omg5x71sVdmfEabWDQTbc/9yAHJSZhbMwV94iY88wwwjw0GUahrHmAv93NvfMR3ubDYcLTa53
t6YjfMvpDZt59cppFc7tR8P6de2XaDnFrAzCL29k/KUEPhlpGmsP3pQX4MfczdReQqbQe2SXhn3s
8SZOHZwI6xX6Q1TYO1Eyko5yqqYQjTjaY76TF0qe0mp0Zfex8tewqnqBxA3IZPPbAIHxELPFDf6+
GK2NIpGevelS5u9Yjh4qpOdFYxBmcgYeAU/W02l+DmCqFr6USFqWfJANpwl6rGVONJup/nsB2pv+
8ea2TYNFp34LMOkP9Dv55cb0YerC0rxLxj73+YRCLrx1pr7m3DPMzJJxJVDyzlHmpxUjL4TKpHJZ
dGKfYAWd9PNKInZF9eYJPBEkhKgS23K8J7KxmzhTATugfOmjqt8SRYrABg7Y2PuYtRjkTKZeIhhl
hxensyRre/oBAMWBA2GN/Dn1cTK41JGSkoDEhA7JnvT9NHM+5fDIURsQsVVJvh9Ok/H5KW8reCEs
bv6rKE1HSxtZN6DaWRG1NmpLO6DMJIFgsTQQYRpRY9W3+BLwI5GiqJw6dLHzp0Zrk4fH+e7iAenF
zmtq22lhxtwZ2N/jPMa/ygtliEtvyjDd5V8Pw8obmR9nF33IWiLImpnFNCIzdljP1db9EVmF+bbF
DaU2kE7xwwpcPhOdGdkuZmnMYYwfAvC75EQN0D2WzLRG4My1nkDlhIVL574Sfrr08MPJoQw2dl9z
LvWEkpNhXHb3nYrkPd5yiOUIFVdyVpmySV8GEPoMrZntD+PQnF8ulNeFVTZ2BGhMt+YeIRXu+XsD
GBZBz/kGAGDfOAtMFS/E9wG+zM3p4qPDJQreQBZYOdjK5cBsv2TCabFn8WobVmqujuoMl9ekFLRQ
BcKaQw7HHAT2CXkS3bShfxdEk+OJ90CJqI2yQGAuYTWgPaGti6DcXkj8ivvw4i9GY1QkL0l36DY8
CaDJlxdyqXJBYhBPAwOsJsudeelzJkdGNw+34SAPAiysFfPhzM/D7j0zUey9gd8glPprsfe6qA6L
+R0QD7/dnPAxZNXhuM5i9odmbtTjf6tDAC/pMpBYxD+502WcN5MtwjaXICGcNSXUYF49lVRgk9sz
MdBNnQqS0/KIhK2TyCm9gEI0fmU6UhjvVE7iyyn6u0tPY+fdywM/ZsZRuJ15GDsPc1N+eCw1OhBv
mExwz+9xBVWUOtF2dlW7Cvb34qTX2GSyxN6sbITnlR+mkK+Pw71BCdpaTzo7TCCrWnC8TqxsG32y
hvznPBCYgNTyR4AQKL5NXikWfByxDWw+6cIjNaB+eAVS7GFL1kATN+U++10UZY3cfH4lJmRvnwos
yMvZTssha514bpHq/e/5CtCFuYVLGQNFISrn9ZpyHnTyFEaSiujSy9J9ArWYqqjJG2AsaqyNwEyV
d/xqEi8swoOzYMOKbkp3sc2IqGiMd22jW1byCFvNBY8VcsgW5r9V6h5OoUK+b+K+IauW9cayVPgm
dVSFXG+KYPaiXMaB8RbUKyN0Tc4al7M+hU/otmoVZQ1qTTzitKTN5efj/MCEc3Gs4sNgJHByk/PE
s0zUKM1ttYtrn8nw2MQqA+QoMCdu3qtrNPzge7jF34lLhOS7Pi08O72nTS4vZmM32+fSUtE8KkPB
zmJQdUlKoG3wSfPeTE5QdV7MvjPb79lDTzeP0KoYhC0VdaG+n5Rd1B8MLfGKFv6CnoBnILRhsWGJ
zGmIOpE4OhPW9xpNBkcxDzUZd6QTX3F4UWaDnoorJ/ghot7gzK+CnHEcEHxTru0/DKpekjnjJUBp
rnIiVOVWBzlTv0aZPK0dSwg48vnsTPepnQsDrBtD01JSBD2soel/zEIqkNKwXGkMlMPhrZqa+5WF
mdNtCcSCbtMZAxkPaSEJkg6kczFecaGqdU5gb/Vcc1DOmOlwRFkvpt3iwGdCNaU5YEib+i8FCOW1
9K3Cr+vAx3N9/5FLvHX2PfuczZQBkGpW2BIjVjBNG3TKg9ieN6B59oohC9tWZ9C1jRrsMVV0RDDl
/g7tryqbnscKjEiwWPDLRqjTf/17njjRXOZk3Lsw7idbqJFdbRvJsW+Lvse2c5oAmgvGMKSynQXE
PbOlwh/D5Uw3/0MDgR0lg1WIDQAda6fdxePwKWBlmLKnoWlAN4id2xwrXsnnHav4nuUO8U5HZ45v
00aIbDcKP1CDt7LF4f1hzxhJceQ6V78OMmdptj21wqtb9iOdQHsFHuEHedNXuZ9+8mxQLNaofFev
O3SdfSxv48DhPf9EKodBucjt2fyS5gyemkWIg5PY6HKWxGiO8UM5gqtLb1f4MxcccAW29wlRey1M
vqwnZ9kDY3rcqgYZTMTDfl7KpqmntRpMp4Y3jOQAPkQh5sSdLttV7r9gqqAhwf3zBeOBm5ELQhFb
oRbJ5gS2PE+zcEJVhi5fDRa0uWzQDSeDTuA1NgYRToltasEmE000KerC+N17sH7yuMmVgAFX+pPx
yS3CeImWETjkZzNpkUHtOhUuT8wUO5FtXJYwx6G1Sqw35L2dPt0i7UjWIvAzfE0px9q0hYDM5iVe
hPOsTl6kV/kb6JWssXQ+xR5vr+tpIl6dhRluN3q7YiIWv8mYWKiLiHHgj0UFeVjC4YzT/hoEwcRH
vo/2kTTMBhA8eDdMi5Aug176VKMoNiGqpYhhyIazRshXsleRf4InMOznR4jXI3sGNGFJZEZMN6Po
wl/ee7cNz8v0vDkzLl2uUIDSS+yz8p3fT8dCVedp6ku93tCJboEqauP7ysl/odQS0hncGmeWX2IP
SqVtliD4wBLvZPEjj1PGHMlu+wOdS1jd+Cnmn/p2+JfseAyJiyW0D+20KIi+9YgpsdIyUtezn5FN
ziIZ/wrsHgrlKfwn+r5tjnboqwmvtPmXBzm+HUmj8o19sDK3MIT4pkBzMJ6ilVEV8OV5PKrQt/5q
BxYdiXi6TjULxOHZu5fWBTV5qzAjPqNRs2hweUolb+dvwF+s1ZJBW9DyNL9xmQUIQ5wRMcl68ZyP
vdIiLoc3DvLDHBaRtgybVe7A4qCl4aP01Psl72ZS2YUUAE/VmBJoz6tPXeZCrAjsUQ2+w8Qnirpi
344ky+CpHWK+kwSX+dwWBzp5VDgsExDPmymQYP3xHVFyy8DkI1xk7MAEkSWYS+gizK1a69IIuqgj
VR9mqXbR1PijMj+RLdNSbBUUiFvYCxdEirAZnQFTSWXdzq6GC3/dvsCq0sT4u0tmLR8g3YpJ47MT
NR+v53NMWdLd5VAlv8xEhvHECYDOEMofoo+FnHc+VWSNJTMfhcjwqIVk6W+2zO7gV/+d20SS+iBf
bCROM68p6tRyoN/k9loeT+2kH0g5EsYBBRJzUf86uL57pry3fKIap4FvwW5WxuOGoVw0MkelOypH
SILe7s4pAM+6f+9IbVIp8A3EZzR3KOYgOnUMb1+gB7HREDGyWz7wA5nPEmUJLsC15cehsugZgdci
gxdyK0BIUCR5/3+yDgTGdRj6gtPPBBPvGOiURYGW3GoA8qg1SAXt9AqhVTKTGmwpDJTIyOpfrVhW
sahYHIlkL49hIBwnB+Snwm+L3QIVlQgQtyjoo0/NiAoBzviwdUjyGHMs2dM6t3tWx/r1hID4j8A9
7fITXSbTlL6v5jc96JftGYbwmK9dTMqe1VH4dUQg8h9M9ewDBNNPBLRFFGXox+1JoEuqbgJnZ8Gx
Rp/TMoKYC+jSMpQQXebfNiLAF0AtNBIWM8W3g+PMdUwTUw0nqRg7Wv99U1vciKQZ1i0xbjq+c2uT
vnprzSBU2d961Wm9qpSufuj/pz9ZB8TYNisdd53jA/+9CJ/EtT2vTXwwNoOaNodbDl4IpkKHrQes
6PxTO4IfSwtUIJNZuu+ZVAqwbCY1+LNc53wQirYjNRAlHnaIRwLkD7PC3iWrNvq84zaLrmpFNLKM
lqw+Rv9sGNWOt9QDRYd7S90c0aOUTESxqPeSFmAMRERiHuujExwn5W83gXwXeduwQUUae8Ep5lhz
jVYZjRRslLHtQZZZGVU/Za2q+5p3XP5CF53abtALtCz+yjdJOdY5gQg/fJjn3/vFeCJvZCa/IVKl
mXs0AlowhoaYLFXO/Ilg52bTsF0sLgioImGLCspR/yRL7O+4ejHrn589Zoei5pdhO4ZdJcZC8S/E
CMYO9OhxuYNlec0tVKVPl/tLsv6Bt4srI+ERPN3q/+1iaGxQ9xHjRGfHs2vGucAg9wg1C9fDMvtx
WQA+F36EdXRYtK+rhpPJC6fpUeFamt4sDrgGiICWcJTD6opFxAfVLYgnDBTU98gNhwkYCHIwRKjm
i1U/OFErbaItld41MQMt/4niFmlQ3lBxIb2ExCVRphWYoSTmwVJkRIZdUTYOZN2nvh2+BE5tHpBa
ViVVabxV6CGefq/UDv7fQOIAYSChFvMpTK9P4TgDHpBc6kuu0aXJPF2zWtCu6Xlk7mcddD9bR5NT
Gf+dO5Wf920/JwoyjeRW0bJ2AHpLLwJx9FHw5Ye0KByKruHlssV1jyX6MVivvKZ7BTU01rU2mSP8
n0HYwEPC5cmNKAHALiK6EvTGRtC6q/jSp1bYAdwm0pLcbWD0dqiz8t7GcBBLEmHzK8IeYRK41IY6
u1PXoDrsJmyiVKQAiGL+qN7Ng2XXLRZJV56MQzIj+yRuXMaOI7b93C7KGZTfVy2JQ0ebrG4rZrlk
rWT2HOUeoV5SWb/QflXR8BrkdfaQGivSvOAMblR8e2z+am/iGgWpL69oEJJcZqGLyWlnj767jhCv
2OCY2vEJ/WwqxJR3JSUcuU2k3g5xTWlSydJwyeq3fTgymPbUr4fEv51vftWg4z/63CpdesJIoNJi
5nr1mkUGlcc94rl0qOt5NLz7s1IH9SyWDCu7N25P5gfuBoSpsugFfkU7hT6vQgfH28LK29i9LzF/
zskM25tH+Hys4iZx1E3fMsWMXZpKp0FPbVyl50MvbpiGkgs1WlaQ6tKXDQ+Ykrbi1S83CShkGRJ7
4vHlJ+GnNGoEr7FDlOMEsifswmuwhkrUL+AeEn5uOZOTbSK3udKohNTr/TPvMz4DB0yWm3saPT0t
KSQmiV1I2u0jyIOdE5qdMKwB2gkYWipALzvZsgbWHqnew2JcOeD0iUNt2DgEY/kjk6eRc1X8adQQ
8h1GEQZMKUjY+JfnR3qLlQlvVbCYtzpfjSOhuWP6lYx5Kt15RIgGLOYvPXZbD+wKhk57mCsF1WjA
spMvB0F7d4e/xWRZ1dIc7kqJhtcinxmEAU70p+rUJaqjDOuNOdg65tJ778ta7U4enMHuzKDUZJWw
zsEnwCY59pgGRQbVAr1Wz/gxX7oVsaF+9fOh/J8+vsHUEJx4qrqLbcGBWdB64pJpOGAoOkAnhjqR
J01kfi0loOisUsmc5jZiblMzJksRmveo2icmVNdBzUEYD4VJAgRlnMvxUJLwaGs5RHtGYkTdnbe1
mbaYrU0Z3ZSKaALkhR9RR1Ak5hJ1HIQUfe2dAt2NlsYoBseextExPBDVjJJMFHIEnUBDnMq8p1sA
u6ywF96YZK/TXpOsg/2E8O7v3CFB3Oo/lRCf3r0gArooeWQAjcckhXRhGFoO8YNRv8UBWsA/u7bT
bC0tyAQLkgzaTo26TVoFsCxxyelCK8rEEGVwUM9ly58xVsGxn4pPWquuW3tNJK1EIUP421kb1xL9
LiRotMcDv7wk7eyaSJ/oQ03fNuCiJU6Y0NG9iR7r6mBUa/3H8lki1w2aC+XdnrbpS5zmDRZu3l09
yBe6F4nLmMCFFpWW8XMZIVZlrQReU5r8YQCysKvJVhv/zi6G5kWjP8q4cdF1HsUgPkR/vSIlwAB9
bmRJwnY32MfRtff/tPqjYc1tHtmXgC8362R36a8fOYzGEo6eRxCIyORdyMHh4GYhQ58qZ+CoyVOo
2xFTQ5vvQLqGNMGlHA1a4iBqORN8puNYErvmsQ6vDw0Yw/nJn5DlM6qVol2ZTysxtlgj59/Vg2ca
FVNOACRSAiKdmE6K2iJ7KUbIIRhMVka/6kwAtyyZDIwthso+dvHqrhiDfsdbVWQ26cgKJUs4QRJK
XMh4cTzEh/Xp2uuYs3Nfd0p63lGpYHRe1jTN/olb5YAyJzZy/0SBkYE5aiD+8LiXESWjHLd+3cn5
55HaT1qtW+kFHNHmJs9MD3Y5AJGYY3wLFnPvinjmJqie1g89bdYMyHO2mm+0VhGRy46hMS4CiASH
bmso2o8HE4sYIFhEaCHH5dIMBvpOFE9yvcu4WoEXOM8qARDFXHXdrhtRlrgB5q/MZzn1FjN/8KYo
CHZE80Pk7fo+lV+6QsqSWfyhSW5MrG38H39dGlqJiP2bdm9MjIFoo1kpYQfbYaTimKPOSKMeuBJv
1usEWsWeQGAuwsKDwjNQ8tJrRoM22sDhiE/AaRD63GGZeOFNg/9+HSzwd5+6iIt0D3GTaum5+p1Q
FwSzArRTv3H41uyKF8rpKAZZZedv6wk2JkkrJSl4VBtqi1fhbQRgGO1pCJ1czZJ33CtOwWYK2sg5
3DnH7xJ1xxrdACz3te522/WgoltiinhxZRKvSiHZqGrMIKd0c3XlkrI+w6vuhEz2tJ0k7tmOMRx7
RCOjUBmqvKLEdg/72S0aNWwDf9KNJ8eT+MTzh10tvEcYmSkMV8Igdkts03xnsiwdXtSJFbdcTP4e
ul9UvJnf3JR1A4gEiXV/gl2mfaDOZx+7UQ0Yq7NiP1XDVFRGw/bKhFDRyG8QR0IvMVa8hexadLuZ
TAIcUqLdyOAJH49ylQplCIJJEYMWhP3+bNXap8FcquLd7gxoAavibltk+PWt+YsIVMJtZGYmMXoO
CN9eHyfwydj94UUPJ9K00bSOA6UuC3j1ytsocU8+Xn/8rqVJy5zNT3T9OYrapLI2qMMmRomM2dhO
FgAUYxXFANVb1ebDg11s7jRp4hVcfT+3sYbT+LP699rfyRRGGowNvhfmRs17qkBw+dSxhYVxTJWX
4Fl/3PAK3JdwvmhhYMS4EoILjEL7aW+32P1fR2Ljc2TbHXTWOkR7a1n2zduhJNOZjzn/sEWOWErJ
N+we/dmpBSpyB7zXWbACBJONH/pXVGW1q9AngsQ9OOzKM4OWynsSXJHBse3fFyu20B2rV+weLSb7
LakhzQ63PkIH7CNDV9D3ddiPXawPQAV3LNsdn3kyeNbVEhs4T8u1BmosceeDc52hjy/n4S08Vrf/
iG74D3+DAt6ErhPMuclf1UO9KGigV5Wd1xEr0Q4kL08L5ZjrGpJh4xvQ8geQ3cRm5LLH/SWUzykg
UTIzNI6L/0c4PLszNz27/1AJZa+zhNBq/A4C5glCvcEeOOzNH+GiKX0vk2SmfzqZx0iUtdaGzjk1
W+wqf5uPgebFkLbWr6FGqk+omeauNxVuQY7F9U2zP89on4gEM/SVGawzsqnpFB7LHMoYBLxRtf79
Myr/JOkTp3sFQ7/BhScUKlW22zmsAPGQaAZgVWcwgNK+CTpxdVCsW1uF+05vRUb1BNTPc/bdI5Gr
/TUwWsP4Nmq9tP825vLQHC/1NyCdtyTh3reSvMxus6DCn4z+VTd2TTyoUZuvkFF0XLTsq8hfqTrs
7QEd+0GVa2G/FWf1exyjlAT7U6zB8NiB8CIx1iXw/bpQOwUJGXueFxMdwgjfoxPcZdDdOMf4Nii6
D3+1Z0Q7xy876+1fNo4Z2jO49hNeDpCotpoJYC6bzDKirJJ71VJ8MGp+iXVuZ1LSQvnCvLUVG2nB
AZyJQuZi2R2KufUUdBtUsUDkt98nbyOEDdyfpnHmx3Ge3ZExB1UbT/gFiscz0tJRNpGLO8IrNidS
gtLTstFhSgrRB0ZTyjwXwlL9DbNqYV02IrUDYz2T8U5R9nuHYj75n5jgPo4pEkkL9w3k7kKVR8h7
vSQRhZD+FPU3BL+yfoIRkmxMF6qgBWH3/XdfsR2m0Zr+OLx0Aj+XPMMelwM+w0LTwML4cfL06OiA
aF9g3ojz5sqXMNEDXuM+F6TvLXavlyEbXsCrVgdsn55mXYLhVv8H6WvHPQqxc1x3tOdgHMtfJU6F
j6b792w5LesbxzdCk95JRHpjOiIbI4RsJ2ZNPYsAjt9qPVkvL7/OFAVj6rQ+GjKS825z+8bf9Rkl
dJDwp0J0Ssht9H3aOhhUqciupwuJCiHK0UjuKZ27ppuQpd1swYKmFKalOz09wINl+i4xkLNC7Kmg
pkUOcnJhHZgxiNKoy78/T5X1Pb0INzt9VPM/axIBKOEVWX2dLON/egdfff9Pl/0hUsmEl/3pnDJ/
lrd9QI+AX9uDOLjmpKiW32k/aFQ10Nf+7tNHijGNifexlw4ZNLODgB+uwAgEk25Cd8cLhPPqF4FP
O9fi3G6jbocTAscIH8BymEEAJdNfuod8yzBIyaxbk0VQl4dtnRg0LBP2+9C/CUBBN4T9NzyDKOcj
aTzlX5cc29YNFOv40VlH+0RVvmBF0gvTAovx/aSmnJAYtNDrbKgiMigVY1AKCqVqFTERInqEvRiM
63PuOrEnVSKmPWFRUttlBznbE4W5Seh/wgH3l5VE7hqBxSDtGMQz97n2g56Yk19ViwCdEX2yvz7M
Wk0oxs9e/xJxujBD0QSJUu6lIg3zhWKJc1sGXgIOHT9oghU0Ns0chMdvezueO80YwvonXa+qHHCA
3VHyJ0F8fJfBD2ZA+zFClqUBur26MEKIwd5mLaEfsv0RU9yuffOtRlcICQCPBVgrqhLynbnz8eH/
JkEc/iHjCC9tN6aIIZ00tPXlH83BSvy2rej7VSe0QPrK14yFLXt5mO3EMwUSDj+W6O14xH3kVwzM
XUkqZAQ6CtnPUNBREOZnfWY054FXGPROju7D/EWJiNrSpyxh4m2DywfLhtHgEVkm6cHjlIQutsLW
3y0/DxkrUPgn5eMBLMqPOrPM6RnoRIw+MZlwRDVD3cWp9P1/u6mO5S317wAbzom+PrD61F+7cHj0
E53vbIEsoB5O3SywqM/7m8pSFB5XWokddF3FWtWwwoT5W6oAMRnCarphcgeXFPDike9sRN+L5xJg
iDCqm802wikIleyJNJssWJjjkCHi8BFNbYLHy2CYYpN9ILkIb6FjjwMKC42GuVNaesJvKjZt6LCg
9mGrVT2nvoJ7XEO7iAwDPalgxvXvhV1V9cfoshsavWXCTK3psI4jLHe0neKhXN9r5Zj0B5ISrm3U
D7468Qfo4oxg+yJ6Aec7T2ORP7YCakS7d8KemkbK5SKAP4xmJ/s7dAEiE2ZeSHrsvBCu8lm/Gs10
FhCeUXB9ibU907TEpjDQr4BwEeWEmcIHJcD+F9CncRk7VpWnxb86o0Y5cO/Wp+Ds5llHgh2cpTfP
uUiEHKWqVU5YFoJRxJtbXHJ36/Ih34W5WIYLvVyOG7zQv64O0U3H+00+5txgSQCuecOBx71/lP+W
zchWR2V4txupvJY3/nKFWpEGtblLe8vpY9kZbNafnbccCLd/njwUZysE0Fl3wWBFH9YuCTohEYoN
PZG5B2t4+fQ/t5IeyNcyl1ErkpkoMj/h5LXw9K3qsNCCxiv9GDlj+KGRZaLY/r4EFqmIVzHQ8bF+
/rz4QfHVrbz+hhxM54e3w3gMDMXzzcJ95DhjWIB+fakArYMSo+ahq0FFMxBVHvoziGMZe676vnHL
VW98HdjDvzszOreMGn+XtPaD2glQ/8PbWOlz06W2wY5iyefnBvBU/L/qZ6YggrmrRgRQK9rfVML0
SuUKSdCXi9OFE9Z4G1uFyJ5Ki/cJNPy3DurtHU/alGDMv1bNbsrepeuyj8jf7z3OcbRE3DvwIwjx
4Q7aXbOBEAQSt0BUFG2A18MWEYjr4ou/XlcOSojpHA0KNWjd9tS6jKZvv2qe8Q4p8EaTM8AtSd3q
uohaS1PyFnhl/z6PLvxoFfqqMWZHhP75jY6IejRULBXEnigzOSPxC8Wot89GwHmRWkzMCiRIl1kw
oEZUzuPrkPWmKSDMFeJ+96AgG2A3rkw+SomK1tAzsABhI4PjzLov0vE/Ud9Lo3S/uSz8p4MVR0qQ
oczqdCyUiAqzU7OAJgQggwZrPEtC/q3DKl1xH8z+s7OD2ciKoHmBYtVGNzBzUfkh0BxtermwhtvD
I+8i1H21y0WkCVyhcCt9/0+H7jsqXNGC5bNBW6O7KXtIVlvs9UT87BiYsUd5rHgPjUirLmJ1I93Q
RVQuFuCnndpLwoSrtNfc2FackrnA7w71lYMSAKqHZiABh/cAZ3OCF6W340ry+rkMNPnx/PNK2Yrm
6T9SZazQiER4+t4p2LAd+cxpvkOH5/0hhwamJSPE4n/VXKResasDJu7HixTzRfW8DFWui9DPrU90
NSgUUkl4LgvEHPZgz6ygJOqsYV7TAXpdmpKLTQiS3Bcb+87G791jsFQeYNVH4Y7DM7+ANxRV3lYb
WIhqZb4fqZVNg+daMJ3ULgLJDgwZDM20bRgU1rgRW3uou2SGRHJO94z65FWuexEVmNcxHPbrJrIB
nQx99tiNRrulLtUM1/sqY85dUC8loPn9e1BZi1g8HgvjBGHpWkqohJk8CSmytWUIzWSldD0D07SN
7bg/XQwbai11V7/biQyAVRUwqk5bNAwqxSwT2YRtXwQQBP+VgdlFkSyZ79Emjyai9WDDE9kNFmK4
2wgDdMVfNpKqSVEGRW9sALN5T6HkR+/wzguJ51ba9VVkFHzcJBHVy9sSP3yugD1/+PZo+1cqGklR
jKqs1GCKTmmF+KDIqNqvmyjFHiCsBYhF+GXca7PVOP4MwB7IpgJ4AzynhuKNrBRaw1E46S2DB852
Xdc9AgkaLP2ETlpjF+ZnR0cE/TODaJsUmHGuFtVRsrpStady6DoLYvNhvo2Rer2QqZZRWMB9oiI7
jMh1MeVCiOY0ePL9ANsDIW3yu3IanUuXqTUEIxq/NZHmcyI0BKutkuizjUPdPw1ZmDBDa+HhRmSq
lcB4XOOh6FJ0Hs5+QzewQ+JBN+Bdn6ncbP9/0WJeWQ8Hi/HZMivbu7xK9fDMZ6I2gZvjtbZYiiNf
tfTWTaqwBf6QIDzIESeisKkjWGLM+mQfEG1Yl05xH85qwmodrsoqCIBtOo43N8P3DJPWGRZ01Z0O
OPOdSwdBsTbpZZi4bToGEm7uaBbb+n6vgmH1Y5VwUYTjg7ZqSPBHsEyHZN6X3H4k1A4gzi+b8/Jw
uZ0fv/OKYALgwVxdtDNydZ3MsVM1vOqXPCZOopOd1GKTrovmaJW/aUrIspt19hMLfao95zk0eo2s
NtnEUUthmNENDgqwVynnhTg7iElHJGtGnXx5uqAIx6qMnIDXrR2kf4D+MnoUaMoTf6bxsOaBeHUH
HvTBjFmx2E/n3Qebq9fwMdPP0FPnwVNS//OJfoBcD6bArb7YNsj97w+4IrJo4jl61T28kvNwE4ZL
CVsw1QAE5NzvocjPx9uonuTrH8hNY55wb6QT3Gtc0PoYoLz82OlNH/Mn3ES4kQUA1V4jdmsCJSD4
lciI2651DxtZN+YUOw9b5A/DxrkuX2HCl1rvRXTnWBx4kng2jCJ+11QJQhYEB9B8Lf9fgkXBoLwV
0+PqyVWJZv3Y9JjMdzHNwBzKyF52rxb1tS219YEXKYEqdzQ2XBiNCS9iVntJ/tnPleCenYY6DMIJ
z3cNvCW59D2WYOxnSpBxqM9LOm9y09u9Ph3pkcHNx2dM/1S6fNNIcvGN2OVzncNGQCDrVWBkuVcH
jeOq/kdVRmTX8+ve0yXP6DMq1mr1eg3TAZyqSD/kHeeLYw7RC15th9Fly5VLPxa8+CWaqoSSC47o
tPX4iwkbyIDmPrlMDZplW0/Wpm+W2cpDniDp9vSTN33d/5xT2cbYeGBlSiNj0dIatAsa+wj9vG8o
rAtvFVKc5GPF3n0865CNQ2oiMzXDDm0REB5D2Ns60skO6/9BgecLAEoaUL1UwrIZKFhOAYzFWJid
4cv2mkG0z8f4cJRezK2LMyYrt4hfq5wYBEWmTDCmOBr9wjsjHrc0wkhVixQQU8q0OZwQE/woUYGI
OuXEUA2xF392kTYWd/rleHQFg0UUdXS6Ef6VFLXI7rWMz/Q6dw6rqH9UmgHR9FMiW7L125Y1Dj1e
b7ikjTxmXoIAj2ftJ8lGERV/Ff+OzrwLo3QqcJs3HwmtABHFf+UgjAdeVgBBgym8l8SAr6JlFEWb
SRcS4kCHdYezjcaJa5aitJcxZEo19zkwZHkW1z7YjyQuQLXl7apcnyP0c4PH/Qos64u/16KMtTzF
+T8dyhJ88kNaT6oWLgKiLUdvJuRXZhC8KzxfutSIuzu1qrR9slqx0KDxjnFdhiy5Vgxwqw5WmCVk
zSWouoSflIrq+v+eKHl17cN5ynnjPN2iojaw/VgCs+2/T0dDGHRUTD1OdXPqRc52MUdom1QYP9x2
LfF1h4u72enqDPIDKA3sZkrRmTy7IBJNdtdhDqnDtGWMgRqn0u0QUTClet0h5nkOswnK5K7hXL//
LitJe5wn1+25EFje2pE8aC9vqSAYd9mishEMDOeg/66atfQDbyCIjFJQR2FGAULuwQdofRA2u31R
nMivPQmF7G4ylcNOcPX/dQywWR3Mht9/JnHwCY2qwuZMWMTHFobpntJ5w6dY9ZvQkAJg3v4WgRyk
9P4VyjOkPP6v2WzVkqxNxV7nQXXe4YQfH+XbGROw+K1hwO3qcRlQWQI3Fo/x5GJCVpmF6FLDw/y5
G44ifKOGAgYUW0ScjvHwxnrUPOM3DdJ3QAzIy3p7U9Tw1j+60J+bpvAq/n47LP9SjcbJQXbGqaaN
Dd39XlBoMJDbF6zLFcC/m1AsJyvZs7o9ASSPf268wz5qmaHni/Ynkwuzea/p/as2cAnwvnbbxSBu
IuJ+jwZ9t+UMSM4AS4TwllIEkHWDFcHaLmyx8+I2rgsFL0Uh9T3HqLN1wqNV5JdkCzAGfl8H6YXS
ZxFKtDpwL/hpXXFgJsTiOmNBJ4QGWpTIw7Qi6ueasN9ZcTTp+9WeKEqz6qFNodqHv7DoqGTQoiRO
YfhpKadpmjbqWxOO0loLZ0HjIk8kxgjwCMsCVmB4i+jvCSQIJ76NttxtEF3OCAz0mpAfO8XNl+ov
YuFS+CQNIgjws6aZMhgpzdmzMWGpFA93Vlc8nG6DmF5bX87G/wdUCRltxCb9IsHehR5k8K+jRdXK
SQFd6/tqxbluN/t3ooEq3IEomzz2SMVp3UQDVqdnB87poqWQIELXQ+XgCuo3kBdClF5VCSa94glz
sZOOmeMusvJKoBhaVyBk6d8YTyuMi2hVTRaxhhbm9Sw0hmFSjB/1A4fH2rh+qBg1x56Z4bKk/h5W
xrb8HIuKQsNRk/F5U+3rXhgibVAadejJllZPeQ5kiKjKXj+ZPmxOpc7X8vohqkQgpKu+RETeu6ZB
j2LKMoCYXvVkCJG3BUayD74MC+AUYfvtIHdHPFG8BCtfIV6h0LFluEb8gWcH/StjgKU0Ei0NuWhW
cAQAe+aLobHKLARRQMX8DKNTvAnL+Bpq0HNxdFarTh9ehZ2fWBkjeEen2kgxv+LpXDLHoNL2vBv4
7inBwcc/2SIRag9XSbNu1/tbZAD87nGqDBMRpsUMx1f0TMRCrDmb2cMYskmtGHBAMBm5hYSNs+Yq
0n6uEoVnnZIlTu32O3Tg5hwcR10tk39V574IUwLKbOu74FbffIHkSKdVY9c29R0dfcgOGnOX/mq7
OuPlkLVg9vneMhwgZOKrGy+1MHYw+digzKQhip+cP3IpzHc8u/s8tdofw6HQpQ9RWXd8x5vmKWKO
hioibJkJcSyfRzOCKS1yVqN0GJ6u7plZftlpLAVceyRE7NxZEz8+/aaFyc8/oYYop3GMiVUihiO7
HCoYUwxpEdy19gXDvgWsG8Cf8oy5BDjQyxdG6Xwvc1H9a8A1Ttw/jnchYgxvtlo+zqgSt1O57SjR
+jNxu79ATdfs7fejs+28otEEo31qoE4bIQP3laN30jx6Che3LBagkyyEh0XIPp+Fid4Usm3RDLZu
MI8wufAsjolPrEa+D6w3/IQjqM2VRA/DEwtXxcnJ6LBOmEnlXzC/7FGMFioFwdfUinilIFAK7KHZ
pMgK6AKoxAVCewiZzhn0EqkFbTuVEWvdmILuPRPc6j+RmNpmXHeUJWYunD/OCi+D3By56Ah0crHT
gkEsw7KJ/YaA41A5srGaK1zePRgfKTztTjRr6ylxOzFw4hctfltIkPmLCxTxtGtNbH1oTFPNTvdu
xVFXp7DjDvOyPu/ikFq/7BElCVWmt1GpuiADw99IS9gTa1Q7GrMycGPLp/32ciFNiLu95+zIaV8z
fvS4hllgV9vk+Imd62eSn2jKbXMHNPM4IXaDNuilcpbVG3NX1IBjDAcRayXnzT0xAzp4Wa9ckQHs
37CXB+VvOV9LSSx7WdNMDJ5iDGadohmb9xTX1yF6FB0POZsEtYpx99DLi1rl0G09umoG57vb486o
aVOpaUz9gyfFpMOBNIHrxPCzrMdAtWL85Ud4GW2lkAiaSnthma18ZbHH/lyPiqBM7K9y9981PPSZ
PDB0dbPn+h4CXoFaSLJOhoDusZQhuWYAKCA8aHZCS6WRJ0mn1wjxEBZpHUVW3R+MIQ9R+n53qpX2
Gb/fkO2PYOxDwDNTXxBzLrMvAhHs/ja2xLt3Xc2n8NlkFTUfIoI23fkZVB80jcMYniOx6p8+RwQN
Fu6TyoB5KMb6D8Z5pWuUk8PmqmUrq1PIZO4It124hATW1PHrjJKZIadqjzPX5CxQL10/miay5un2
30O0ptYz1eW7uF+SV9gTXg385UzUYYDhLmVJ/ljnCWhGzky4MrtJPeZuXHdfpMD2VdNXs0swMRtj
9hIwchfflJWbN08zS5m6Wzw28CHseCvSuWxqZ35oe2SX/kVd7l4q6oKKCksxhV8Pz8akWcqWlJpB
FiNV8hYwg79uTBMY8W0sKW7NpucVBh+tUSyYocKyv+T6m7Ek/JRrsQepVe/kxUIsEecuMbUEWQXd
arQJwXaJ2r4RLcV00F2bjZsJm2M3O7tcgHS+tnL4jn+hYgfDnE/8M2jP3KAQKPuuSmyaSW9LhaCr
nAhSjWBc6+0cD9BvPXRwAWEw4AoipQtPDfloX2oE1tDba6NWUGCAVnIbSN/6MLbD8lR1dvylxHkO
Mcf8KbOZX/TQZoVO2/BuG6xPKiyEtqXAZ+qKQ5xr3+tFvuwScQoHtx/DubVl2ldiXj7UQCj09yQR
KKNyCvqGMdeWaV8n3kLxWfZDbjFAQW5MNq6q5tO8PZAC2NYqihw/l6dLrxWTJNsxXUIUZfd+AKGX
2z55/1xFFccTPeaUlUf0FEQhJJHCQHIqcD2WnYmEUnVoTfPqPBh7VIB3y3rDHO7oZl8o9d8v8wPA
aRtQDvq5TCI+VlvwQ/KUyh9ozB2slA6MNs1akvrcY3TEY8IMQq/vYHkAiuBtqnkBFIshMBoNLiNM
Lr2BcVHP9jLD0yYo6ZKkLyYlys+9oCWDVybJiC2w7c8jlNQdlouOm87ivyRYkk3LCzEHAcUbj01G
n9MyMBfyanSvqAZedT42H5cS1retFG0Qq/9Up8dMOJChmeuVC+RN3Wq7wF5WvXZIKjSPQBFhtKFI
8y6Gk6dCILhtzJuc/snSaTMluXsf4wT589rlbjgfUwGwAIAL7EK8yHPbkoiQOa2WhyPW5Lkrgxqt
vfMIaXMtMjgwLfE+XfZ6SzETo7x46v0ermtDFbvoRXvTLBnQYky9jr54LSP/y9JCCV5ZoU//DX3V
qHGiH1/CEoQ4un/eV69uH8y8Q9BIExSBDdnnS9NUBbhyM2hiIxNHevBtASK8zKspUQdRoyjGECFP
DbyD+4btu2VewEqIlBUefds/PwXjCeRbZbADt6ZyaDb6g6HHWDAaSVKN0ZbnYInGDI7KJUfK4uNh
zEDUkRSprc88T0xKvk0x//CTybn/LGEsHVrY9htT/8CI4Q5hjEB0F8PUmvQ82ym3fJfh1htEln9S
rcFtLWoxpS6lALvaENII+Q2AoucJgU3sSXvYFk+I7H827xYRvpbeejVbx93ktN2v/pUC8BlopkhP
YtyOsQZ6Jhmop5C9SX9A3ewh9z6/3ZzSfGqIeks602LNFfDhMNHAuJ9a9MkWxEXAM0CAGJzcGMRE
yVQMD/OIXrGLc6zQ/WqKi+RwsPb4H/irdmu3cFBMnGgKn8KkkOJ8w7+FuJVqc1iHh4HQMNDrvcLs
S3bEnYBoutlqgfrRyt32tSY5p0w2dp6A4VVrFdSvL0gA/Bd3QHUglZkVo+CoXqUo0IpZesUdNZbZ
41aih1M4uKpiTwZ8VJ9A+0YzkEQFyG9bGJiaLVhmt2tETYVAlMfo2PXipFR46BEeGucaxhU2zdgh
YTMujSEV0ljfDePU5/1xbZwCRWgVdziVyIjpYUh2E7yjecHsULmwO2wW8pObssUyWiKZ8j+stL6I
753Ry/s8tMpUQ0L/qcHLmsQnJgD7NxoUc+P4zr9d/TcPCENXvnrZjNt4mDa9Xs5HCeXyfpFIPaEk
h7NoT8U5+C6fVG8Z54dd011w14oNbboOabWMsuEN0R+7OY58PR4fYDE59HB8WYa/g6vGHqHLInc2
LTlnCshDAkl90DBWs4Kgp1fRY18/Ag122YZ6GsJ79s9jojjYIh2vcHDYYy7YAckHoTmpq0Z8wyi5
CDpXRXZSa0warmHXb/DozjkEgFJJXcRidvA98ULU9IXTRX98Mi3KhVu/tirw3blop/+8FhbCLsQw
dzj8kAqOAdj1N9obRFKba1BHq9/vWYl2q0BvY0n6PYifxDFMhI4/jNz9RRAmq9UZJb6FyW6JcP8K
Phhbhf7zxYnFsEGq7osptCSqLZ44sAGxaA0S9wOmEqicQtKpEMuLFqksWkXJg69OBPcTyKkRPlFh
gxWsk9hkrxd6oRRxwfwWjfY/vEo4H2qPyzp8B1RPok5YXOpxGkpfroly3Au26iUIOL44YxpwqImg
AHwnB76ARvVxzfU11a2NIAofHHiKdvYxsjtudm1wfIdPondp0fBG+hYIEGmghSqJI9fV58UBSahn
8XGbUspb2jaQmXDbvXf3M5pHV1IsBSntZuEX3g47Y4L/hCMIjKQXZKjtprzwWNFxwhnjMl1DH1HH
HKlVo8uVOiddyAHkjKZ0WZat+TtsfVsKmCFx+DhQ3oUrNGqjaxB4emHaSQMZL9LOMzEaSpVUncgm
2BvG8j9Ha1LHE23AQZ2kCieb+hkkHKBnUVwXbfD8Cvmwp9rQIxmUWh/8dK9O7ndemDB6xEbGKjt3
k8JCh0zN9ucc1KTW+VEDIWVVfm6IOegCIYck/BSACO9zkhIYV1hvV/s6fyjwWKfVawCdbilboZoD
/k4ffRu3CbpmJGApPep38jbtV6SzniYjcUlrUxb2oQwr/osG4DyGLw9JMX596Ps1GQPMRTZ3JqS7
+Opzp5GgWXe0nClaQfp2WNzICt8Ctwr1E8nHgG2Na5P3jJuyZAJ+e56watemaQXt+rjSp6tz20jv
iIHSLPVbUJQDUim8g3tHopK/xbEgksDp7nH1UdG9BJegwuPlTrYgd/hpeZZv7UOBe71nrcGxsUPe
pyEid0qedP5kpzVtJjHu4Z/04anAi5/ksUhY+HBnW0zA2pVjbo2xaMKb3sP9T5MA/0kTi023qppW
5oTaPKQFu6tt6YQVXmD9Xgz1Z2+OYs4ByMYDbpqKSC0uUJIBdq/JjbFjacCQ0ju675QOr0ddb0sr
lT8iIcW4YVXV2u+X++DtrB5H5XWpLGrGicdxbdlOM9Vrer24hLfYgSHXQforf3/VkYR50AjD13r5
y7hElyfP0BeEfgwRxsCHKAvetjwk6UR7eCdMt3C102Gq15izb2s3vSyPLUAPBM8hxNJWJXWD9Wx2
7NG2sn+v9KaW2YrxrsaUSosx6YKdHpxn9aNoB45Zi0EYIwwZdjYAg7p5PZtLJ3bBwYHH0yUtDBfr
nSA5WZTmXyxOndlB0NMPzifDvB2OXE0W7drIuVNu5abzytI3Ud4WTgYUjMD4LbjVTJthP4/2pJMM
/Y4HsETEdmrQLXEXps9wm9uiLWMAzbWhQG8VphV2l0mp++sm8eoTqcY8Fx3ueFcGOTyu/hYxJ1Y+
z0ILFZ7H5D8e7UiFgAIktNKoDn1B6PWEnC6B9AH5UCaQuboEPwRRgkk+xzi+EqDe6yFUWiWc87f9
Kxyo1HpH40dvyXSDg27eTEIvPsOeUwXZrY2lQxMgHuzQlkl1VvgFvL+yEv5cVH91ZKthkK/A8R8W
R2No9K0Jy1Nf/bgPJRLd9nLHPPU7+7T6yAu4vAe0DVojk1Au263n9OqCKRWLdZCURwRA9h+ELk99
F4DxEHShKL+0zhKl6X3af9wdv9yHD34gZnEO3XJ44+Camt1P2xs/8yKWA6EWj7XP8i0eIGQtI4qW
YSFvhKw8QlRaTzORs5GmQhUsTrMbsfAQB3HerWtfX7l2EaHWE8YQcMYw8FhOivv8DVKKdMAi380K
mh/hQ2KztGf0uv8MOgx9yy03lS4Jn349c5uJyTasV8zykAAms4Ys3SWsUQlDju90kL9kN/FQNoKo
I3q/F5bPDe3CaYQabqFK7/ODb9HEzsrFhqn8fcgq2YH025n1eIj/qJOgyEzg10MgBOV7sG5/7BOg
7oBl/oGFbIGVMUOJ/qmHpSbtmSUzDXRNn1+QXskeAGe5PNTN+zGiJ2rJNLJHFh224tv4VkVBLKT1
yi7r6ZJNihhmiX/1gG8l2babgnSxZuN8/FqNlFR9t03qBRwtzTMl/5RX9sYNAR9SQQE+2Tej6jYc
NXLjBxgWVmUlWb6e5tpIe+zdXFnoqBHmhFLVeqitZ08GuIaa0mnwPM9DyOCO/L2DVtUq6Sxbd0fg
wWyUuPlBbslGFdIHECxzFF/dCLJtb9y3c0pixRi0loNz9KZjE1MbLN5CEtjvErLFzs3gu75N3tXl
t2JKn6r3UW3UmzfQIzXwpvZW6iuuKj7sfmGFF/sKEAKnE9NF/NWmip/zM79QW4DMTDJS0JJyCf7X
HMIO1k1/fzypRR2mY4cJJlfrHgF6Svi9qXTxd5PxckKMYAJpbsY9aS4+ZnMEkELV5wnixuNq67El
ttt47SQ8JmF6/c78A1/iS6PmeA9rXpHH0kSXtqnE5LNyt1VpYJDMN0x+E/zOe9X/1PKESTXHVDmp
H7tXzA5gDfdfKRZPm1JtElNGi9sEK/2et1gbERohY9CarQ2OJx10vRUFulpdIVgdgxilm+MPLDUx
xMENL23JwSxTcj7ybPCKzyQOLxtRaD/w+KZuHP7+bWOUJ886pU9tSm0abHYzQi2E8hGnwzupwkbC
sIUGjloAhf85Qg8qBEEZPgZU0GR37BNSQaxU/GQYbXqnV36lx7Ed0mQMhBfaFJ6Fh5tLxpbc/zsx
G4UQUqDx/V8x3hTlk01IU4ArGqzUMuFyZNPJfwyjUv0ISJXiSxbvoxXrmIpzPlFk1Us1R5K6uBGP
sH3INu+X0mIldzgP2aLcT5i0qqMqXevdS8+U1L/Bht4xoHQJziHFp/t9DOburu7fpc87dcdm7qyF
hXH7Tq7mm09S46BVWA+jOP/GNZpaC85c7HCzQ2u+4WjzkGIUAT3o8P7DfxpDp1Z5dxzygYzbRgZD
Omkt2tCIPJmrmN1FniC26y5yfNVsGJNfL500F+5uTOQLfWdnUQpbg3iRYUtihYJyKM56gZ9gsMbq
4WiFs1g5FVZGhielAkXcTzBDcXLZLHAn8tZcI0/ZcmsTpeRJVbhAAC+7KH8yoay5KseNoc2hSiRA
IVNSzHCutFtLZ+Q3Lu6gKNcgJ9Kh149PsjgPy8zm3VxP6NfjQLJOMwkoLyTq/nOd8AYC9IjufS68
PwMbQoI9/9NVdoGfvUwgf0zcd6XK2QwqlJJS0beO0fLu36TX5aM9gbAgs6m1P4dLMkVVDsTYA33J
vPvgVYDBCrkxLkjKQTrYGcEIh1lI1Lb9/B8uM2KSMn5FP/IO5I4E7LRoESoOOf3zyLSkSiExftXy
ZKJYDuA+Ub6evmVVtoEf6Xr+Uj2SPdhI78jI8MWYARapvIdYnuYe+10f6ueTNJ0N5NBjTU0LRoUZ
wnDpsvfjOGEdtZcfS3j1ciussCH5XDcdG4xLPx9q0Xfrxv1DQCmmfwVns+g31uAZre4V2zhOgQMm
Difu/muww5AEULmoMQydcXOoGRiWv9QjiMrE0PryGKb1KHj6WE3IreNj8XYJZonXJAwhYyu3x/Lu
uZPpQa2wobbcgs2gWVRRZgfbbiYQboygEcG1uXuSBbLWBHLCjqaqM8yMUjiWEFrlNDKr38gTSyWH
M7n9tOXOAu6BU3TpqJ/g+UHrESuIIPpHyLQ4eLbTgCjk4a0rS+O+L+hKGLzZXquRGsPopvG/4yfO
QiGyQg49Y6Y3TZM7bCtt1UYs/lkmBPUvOXQ5gazEyVYl9reOmukJH7y6paSscR5fDtTeEluG8F0T
IsqYjb3l+owHEW6BoYTZ1Z/IdV9Lz0iTcw+MPO1kB+eI9wr6N0vD5ys3U3hkMPByZjdYJhaR2hJc
Pz26Csd0LnGI2ziLiuXJXirfKDHpjC7XbWjm99UmR1jEZyEblRsdDfP1oqu8LbBKE2UM5f5sHi93
WktmsNmc66Den0aMXz+LoZhTb1tLZLBoKHuFdnUxw0ExgLNiKwDIl++11uedmUUBGYhYUiMS75eE
2c2jhA2Av9hPTou4w6KrZFl/AULrpRCzfedg0edvvzsLK+sjW+QpZTRFMFLy7EPW+TKKQiEsCv/x
Y9UIPQmIGnVwv3emHg4sUn9x59TgAGabC0E0SBoSbXWhfoafXjxB8rCRypnOwtT9YmgzN+WQC0nL
ZNDySJahwnzzyzdZNANdZuuQKXSdsHPTBmmPgxnRs3AC8i5xkaoXRB1YSz2eNrhTa5TiNpr5soCF
S0+6pqOclN9oYoTfp4lwHzlQosCCMKYbv4nrv8DyjRxj3xEPhgBbP846eghaKevB8lOH7vG6CEke
yU6qFyW42zDJz1MFEoS+lRsn8LBhuNWPs7pYnF38BmmHNEcvnz+t8mmbTBymdprMpLZ3D7wtt1YR
doEeCmJGbO+6EJ6fu2/HXqNOmuocEHfBFZqTLQezhZQmAbbtw3Bv8t7jt0ls39SUuqwHiAn9GvD2
LP66usIuW2HWvvH3b7Xixr/6e4+zmGh1QaWcM73J7LB7MYG8PlFI4BQGfD9Vj+zj6Gk7xMbVO4nP
AKyW+U3PNqD0WU0hWR63X1zw4eyJpKIbrE3Xt8yPyuijTGeSv9nzINP9RN0XQStytEfSmQMiUKBW
BR1dPsaCUv4w2TLRwScSkWetbDqdNpSS1mN3bTrCrTLiew9cdCuwrsUSADZCigRXEs+hbAt1fdIC
qAVHA3mSrKEhnusqZBpI2o8yv07jaKt5LD/LLuMzCz3yLsg5YcLqRA9taqFyQzXn8OKTwDznSMhh
nFEXb/2tTbqusxI6vQ4/Xyjs+gQDnNKTcNSC3yxEO52DNTzG02BlTWymUa3Y0EfVcf51FySmdVAC
ukMJnMhDGZ68H5soEISfTJwjuL2RZeCJdzxj9Zf9HbBCEOg0Q31judLoxNNAdpnPYiDvqiNiaFvV
2xyWOTqQrJDKjj6ZKSQM6zjVQZvsmvShADk2hH367lGynjKUxPBMbb7haGLzHSqUziYg0OyaNA9K
6i3tUwyjnbzgkUla4/5dCyxuKVC07cPCjxVjwZoOKwcLnuX0W8waWHbVWuk8W9HghwoE2dvrmbZG
mTNmyc5WdKe13ANRiTjH3F05CCGxlOBIdN2D6hueUTs24X7cm8hAEJr3fWF0H5niIuHtFn6fotLg
XiPx6MhIAoetvBDVIOG1ujK19dz0Jj+vhkU4Brpa3ZrEYJ+DJtjdepYY+4EJR7QSC6mOLa0BUG7P
NeJSButHUvMeaQj//lWJKC1paUKFje6DNpD4iPNgcEEArtnovjEmJxz/HYJom18spdezedYQZBfs
owyQSMdm85B5ZlcezwvN59hyxGxlDa6BCnahZheZWNj3KAQrZW7GcG4qRKNxgRccMHJv+aNVr7Qt
UgojiWqsEk3Wxt9VVZ0UnWNu6tcumLKjqotBUeHjTPcxjmJPQdnmCzDBf1D7GgpF1RTJYnCuaKsS
jViocFZDbc+ghZUt6xC+Tm3BSWxjUCQ/aUUB4sQfSVspCs8a/y2ShHXZa67HKBSyETjGrI7CNG93
/0zmm0N2ZfMKEVb9PvAcyRw7y0AgrPOuXCGDmZqslEfJ7IYhxgGSe7/z09z1UchBl7Uhh6zHFUE6
r41FLyLCEDJJPNdsZlh7mDUh3mlLD0FOECidhdl64PEIzd9y74LUTfXgwDZth4FdGLyxwOlpE502
1/G4E5m2PugGy8XO0JHLIJLsxAQNscOb1IfcMyFCVcZFBuizbIdvBHLAhkMK6Mka/d/O0ef8TwAO
u2tdH/wBhjEXNChgWKBz2jXhWVFAEIOgffsnwuNaZa4pTP4ddKiCEtOmHhVcSg5Y1yHxn0IHZ+Ji
bBKjg/7jR3Ji91hhXxkUU4jMsnlo78ky25xItWux8bz30vkqlOUVt9U/FP3tnakltSuYp2o/dyPq
Cevy2eG/HCcSqcIxXMdoW235fE33GJqmj27W+46ZBmojLwn0GO0o3A5EEvxuis8oLtyOfOGTwYPl
GEuHqZLTjASvV5OExwhfo1OhR2A3sFXMu36nasXas/KbgKrazNDK40yO4LaiQTKClEcuns03LnP/
rwzjXxmZztUuEkQb9Q5DYZ7R8fcnsn5P7ng13cAqe43HdJ0BCAgoao0kIrJiLlHPc2STiZNHQ2nG
1L9fEdQ7snrKi9ljji9X0Z2jZkMRXqHIODZIaBu0hKR38XYeUUnQMyR2w5qDPBvEkBBJxZUcWSTk
t/2LnTT/SzEd4Pjcm4DI14gUWnUjJyN1Xj4Mx73XPIa0Si+aiOYUTgzDVwwHrdtZoNxz4rm5rj3F
j1OofzI+wiTq0QgDmFWQ+8eLeWeQMm9XuxU3ch5MZQ3i3k21pRgAF49Yu+npJr/kXlsh4NQQzMMb
Mo+w4xhfuxJ1bzm4kxIBxsKdBn8ZySF0BgQgWlQk8S784jMYf+STwWW+PHwqT6ex0GyvBZMEVKE8
5QGGSTlVdWghFbxqlbl4tyu5YPYeQWSfCrYd+dEvpqrfA4qqQwbXX09OTirlhdP/TcMtNm4tOGCs
iS7OpeNyqV53nvTH+2qd9exBvXw6QAuiwUiXBfQwAO1WdBUnqUj5tx8e+qJTXZMbzi+NKbPyqHJM
E6fggSVSAXCzgATDaZ4wCazki9RYpqekUZTU8zdU5WdzQfhKE5LWK9YgIOEeJxeuMSmf3wkbNsWX
qdDMFxhwNxhoOnGRz5BGLJW8ntbd7VHJglTA57zEzYokbhre9WGgH/IBBMEx9nnQtD9a20rD+yzc
lG6sQJewahqaxk+OQohJtEru4P6fkBchqlDMUzTCsEd2gGKQcpvOr4SvbsIf/EgmXuiEZx7j5IR3
qD/xnfs160fSQEYaDqHTzN0BZK+9auoB67my8ZkiFLEq3rW2XvVPYVJI2d7y9mxkyATF7szR5ieB
nL7otmeDzPf2LBk5Ka1W2mNC/tkp80ZDymKwdLYgELDaaqSD8oJ45BvD/0y7GNhGV0tFRY92Fo+s
/B3EHjXKfSIVnHGY0qxQyFNKhHX3DG2DamFQvbxa+UhN+dPyJBjPjiQvZYcXKIUpyEvvHsskKHft
QxBn8ppX3a+Y12v9dZND8ViAJJOyfrHvu1gKbLzWGknnZYbj1sBQVb8TQSaO+vdMgYBsnt731jUA
n2ErNhkGGTjaWjmcH8Gx5F9R4Z5t7LnKo5lvuNu78fbP6oOJnY3shgXef6UIfsqga2UzyIJntCIc
RNv0l/rjInDTFiM6yO17c2r91XvmdQ6qTQ3Lt+u9V7dRyE+y059X/nQ33KrNQbP/INwmTYJrtnNT
rKdZFGapzRhQvyqwckKsjPlcn8+v/PnxKDe6JHMHxZEje/tDc49dQKx+PsbEu9sdLLuRuDeWssMi
H3/8CxeDPmHF2AeE4YlbuMKq6jfZ0bFwkHkv3oeZh4wh5/QWgAOzRMiIJc0V9FAHd2soYBsYGouE
7WQNewq3Nbalvr+IOc0yk4i2ZsMHzVrSjeBRjMj5ud1ZdEOnugrj+7UVvu9D0T6Ree8/YwmA2Zvs
YXYWn6FoeJ+F3l7drayWBaFYmYIplIL6cTxCBclfgKBC0+YMrFH59SMLf/nvAObfhBAuKJgBmUlk
9T00gDza7kQ8TKAfZy3vRt6/4rqa4fZbXXB2aBJ7RMiA32aQ2eUGMGjpNd2MqPX80S3CWIQYEgnK
DFfx3kzv6UHNsJVXoPbAUk0lPdqmRJ8CdwtYv2RKFpmIns3Pm+jgMTKaHcCrNqw9ToProzFLb7lE
C5SVszU+7YyRvD5J6YAprfKM+v628Ji1wmdzsEi/r6nhz93iF6tUH8KodHowIA0wwjuJ2kLokrWr
07GrvAU+6anC8qlCkqM5m+tOi+sTr3Aq104NZeiXLEumnUVMFPBg5ojdj/G9BSjigpWOHtU8iNgQ
poxr/pK5di97EDMW4o4Si5+aZRPdto/PxxvD6GrBndoXuiZLulC0e4tJJhi/1vOgIxjUnCqiWvXx
ioMCW44kXAGtYsK4uDMEJC0DFtjdSjU8KMgWKalme1RHVVXQGNYqQUKNxgjHPP+bpnZL5zPH0f/I
LEeFReYQKTb9Jl377xA9WMZWtJlALrhxDPoe2uwDj7RgX3PB/jz+JN8rkLo7Nbi4xPpEQ55/MNZg
3kDQU8zW2euBcAIJcjz6dSSQokmRAJI5iSG74lklRhs8nR06/wqrBJ9EMLt+pWqM5lCBp3KAqh6W
XGXfJdbhClY/n4D5UaCQXj1i1d9Ujp3fQX6xdHC15jUhKetbbFKoHvrjzwivHR0qu7xhCIED9Npy
aHU7apo9cLekYwWKdww/I2WN6Uc3ZVHtZR93vbH3qum8SVQ3yE5XjAyTb07Dxbzdjrr9o2u55V7H
GwTd6weVQ8zphioT1x4Dy4b1dTBHDBFD+ZTz0/BYeay7VV8EFDSyjE54JywQBTsu7kKu391cIyCs
YELDRPMu3y0UgvjF9a8KnoXvsB1odAQ8CPYpX5JQAFhqQorQs3aT08G6Vl4tvsbbDnjRoPU3rCdj
QNZFSdqC+fReDtA5MvfLNJgLHUI4ZaHVVsnQYmJbrmziUw8SeqjlwN+7/eBsqUaX1eG4pejyv47C
X3c8rm/KmP3OekTf/CuR7UHeH7jpIvj+Y07y8Sc1UWAwOAw4JFcP5rBcEodisQbO7v45JWFG1wzX
HPhauncK7t3Gc9wPpyhDNna4Qoi9NPkyFw7zpIkt+Jql+vARxbc2W7ekHanG5AfKpiE7OfC/o+qj
OjXLmxLxGKAaLXvhFMz2FS1TVZ4R8oXm/dorLGNg6RNvsibq0dnhGaCC3F8I/S9GT4sFhtLCYZGY
3TRumHftAdF4jBmnIHVQKx8eA74Q5M3niZCQ+8AbUpo7cirTqRXesdYkBZBMZww6pnzed7wSWrSU
MiPJYOQgTDU431uplieArA1bgCR5L5PRUECPRblDmr5W6SIXwTkxYc4sy6SPlBLwYfm7EwIePkaH
3Slphay3WL0GaYIdhFKBk258LT0i2pk036pgppVHOoUAKPVzXivWNZKCXtDgCdXXiXtUDLeYI/Fk
CWOT+mh0Lxi2cGcRhhL2RX+pn/8p+zjLa0oabUbNFySdmonDBrwjg/E0XxZxVw9ATTnLSy6sOO39
6jK5jpGQb3baINJaw7eRAz7zfdsAcK5nmJLkaXNqP+Yge+p1D1ZPkdgrlCFDDnwzZ6/lJpRhiPtr
xtBWuZXkOW7BSFJGa2xCqB6GskaOldJBa01ehJ+F3DQ92vPxbupjqv5d4CEgctiapEcWV2n7g27U
af++fULcm4zlhMT12MLWE78GYcK5uCcfOAOY+hYI/jQxEMmRZMr/vNYZceTovwaUxx3oVKGxU4qn
vGmmRdbaqobRqpu1lzUFHC02g38zPBTvXYjJQe7o5m7JPGsFdh0fiwxuinkmJJNwiDo4P0hOP+nt
BQjfLCwCZCTqfAfgg0L/TXulnsz7IIC16Wke5FxkdkbuSdopBW94n8pGfeiYQ5cZ9ciFcivdreu4
w0B84TJQqwWA1HeT3A+5VwiVkLW3ExmfVc4TV9csjncnoTXCAo7NmOcG8xZTcy3Rj4WDhpHR4bIb
5Tf8ZBiOLpXlNRfPqztRGXEP5Sv0nUfhvLQajADFJzKKbXYi5pb1wr9gSLExgohI0y5O8ZofvJAh
VxnbS9wRZgamd/nQvQR5xYRdzhP1HQNCZk2TCMWfFkW6NjCONS+HwGMNer63EGWpOxQsgdXKek9t
p7mLaWeuqQT3LwaZaV39K5h19JWS6Mvkj60alWAs7wKokASVaSgSkHCOFYlsMAGgGcmwfM4lhRvC
gDa1nSC5av7GVoufEbappBHzXCKn3gsGvv4okWFR5mUXFTqsIgnBEZAoBMbwvK+mrE6WfbHPXpxG
arHkaNO194ZeLMOwfEngtkGBYsDl+7aVrxlofDNBHYVZx+euIWl7rY670tJ6Zp6J/RgVbeqtetCE
jLtuITA0NhdBOBfmZX8HgkYAK6VNsrlVqOTQ0ID66uzDz1SmjD+b0ukWTE2o0AxrfLLDmoqgn6A6
gFM1G0CpgjEIZNpEobie6lrpHpTUvLczPis6jmGJ90Aparuw5ie+OGjD2p66qySRRjeUgTkj2wc7
+UDjEcqXg3S0Imsm9GdJvzs/78hOOoFCEa8aAFDaPb/G6dJKlahC8FvOqrW/qN0rv0Fu7Vm9unu/
Mbm+k8DSv5OeiGOyL0iuWrHAmEH3Secu0Mo4UNzZ172xuLNriUoogokSM09V1+odMEO48QwjLrZI
yVrAGjyKeavBafy08uYxut/AFYCw191QLZYOJS7OD+LsE6Af2/K6sMmcLJ3Y4H+O1CwOWKCmekps
qrm3hN0oeknvyUm3X1gDsJWCAv5yAZViLDkb886r8HHv+Ioj2YnGZYKhMj38SamlBgLJFJdz3PFo
RLtRBL9n51dFG6ZF1j/582f6Em3KNVFdaaHdoYE4INeatwUFlq55b6bSR7moT7QX0hL0OxELgAYa
0ADLhwcfBh/HmvZCU1rjlaAOujRQYWjWTPSHUmbgikhqGHyoB4diyqktKr6dOe+POUit7+6wfaqf
nKq6qxKy6zNMkZAlZMn9jsIbeMDrBZk+jkKUCb8Rd42xDiyfYPlNbeQQXxnVGM2P1tusDmE3BPY3
HCCBv1BIsfgHvbuJKmygLI43/Y2J91lT3GhaZ+PhsL8FveCX6VXOxPsNPcwP4iLNz5I1C7xSJ5fN
17i25t+tZy6/h5E5xf3ygnvA197pZna38md80UwN2jPOblLUOEXHF+XynEDGa1qgK3fmF6cy2i+Z
hU6iIYscuT9q3xSlGqpiQlS1g0cTzJck2plLXC+l7iFbSC7ptTwA9YewnRZ/R0DG58ht4es8b3jt
oKwXgc324yKGpkOS1GtvC4Lr2lrsN2wJc85L/4JmwTrHcHp1RbgUIr+saRRvrfw3uJpuPFMkRCoU
G4hKeTzOtcZMzuyoSA24ZqFn8w1zLZDy/9mUKGdjx1ujjA+BwgUJk+oW/lD3445vOcxC0nbQQVE5
5D7zR1Nox1FtAEFjdFZnUkRbfh4+FwRZ86skaJPmk58IWM1e6y5JaGo77SRNIrrQ3V4CRAJSwX6v
sYwlhin/MS7rZo75g2GfCT2pApStu0khBTLq2HYtRNfhv0VPHavbRz7Lyjze1RvrqrSknNf6JKK1
DvB1EaYAxTSp6TbFdJDs0ljgoOoqvQPJm4IAOJRyDgO6uQA6YnGtSVPCmE28IvxUkG3afb/833TK
vftcmGutaHkwUvDPt2MHq4O0murAihaT5szY5MqxVOIejTM9Jv/5vjgY+on6JuLoJzXhVlACUWv2
wNyIlMoizTFouT7S3IpAx7rD4JTrH1BYdpKJLI6VCI8MXyi22vXFOQ7KYb28ZZCfswcQypuYD91Y
cEIi+N3WK5iUQToXYHASZwmWIZsfy2WlT/O5z6U/g5wo6fr4Vg4b0npRnum1sw0QInD8fQzRqZDd
UdqQVAYOVkOBKBoDKILceOs6ObfZQ8DXzBaL6scth7zcwnIhF+UEGqknv07VL1fejgmtO6tUZ87f
mroNONJOv9r05GFf8vK8PBKFiPaxBNB2HNWQEUj2i+YemcjlTExzSqmHYCUmntg0YC5lmNAYe1Lj
PtUUHPUcd0AedHW0f8gR+7HbBumWnKGC0WSZqoJyEHPxXJm8f6mn+f3/JCmMa31lkErHGDeeVMGD
3ZLnT7IkMXEUFIsJ3tIwXhusClyFJ8GuStciKuwHvnyKBrLtk2vFad65VBH74pkinjkS0qdPl/NW
Rse20vzmmUlF385lBluXjs7+XAfz08hcnCKiz8UirSuzkByGGgmoP/1eQa/l2LrFTV0GXW7Z6pnu
RjnDN3EP2RRY1gjbH0FhOWO6qeKVJuHaanZiU1WLtRvUS1voP1K5aG6RB/yT1hWjhOf+hElZCBaf
hHKkQaNuXoC/YkxRfufHgAQgbswFfxIGYPTkIJSNDLeAj4FFydD9exe9K49j7C/UZlAgQI/icCcP
8wP9e5GDGZaRFZD/hGHdl0BEMTD93poYHwLzuYzxi05aaR340vBlj51JsvfahjDXCwgKCzpLBx6d
4xeR+ntzKyfagmN8e5lIhR+p0tGQrXBdeaYjbavtT0vPgbcP1p6haPaj6JwBWl9OM+MQQd/bgPsW
FqCRCmy5lriA0VDhe997xqVjWctzTo8VOfK20CPA0+lX6IZ/V8N3ECMvM0PN4boT6AodROm5AcxJ
hDkVRtdroCdppBZg8PEzvmL58OvdTVkTtXA9MSjRQpKBaT1TCk8zTar/61XsgBw1hjtuPF4erPjT
eSlN+n87z1ndvscHLLKuT2Y3befi4GvLyPf2rY2U3q+e/NLkuZaqRWsrd8pF+oJTxHtcMQugkGpT
FsehakHTSJVJCm1QWjCV/uxAn8HxngmbfUsRlqN1ZqvHfffAxlKAzFFJE7WCqUCHWAu/K9Sor8/Y
fn6qDMoDobH/5bz9q0Ne3wJYFFwrI1+cXB9uU9BlJxvp8SasgRHh/l143WPQEHbJmIBD7gedSCjA
TBElTCwe6luGwEirSO0Q+lqRcR93seHRuA9vENLxiCzx3NIhmWwHqefgZebRPGgUBtuu5gMV43Le
R5IZULyrh5+hfJjPn1xYzLgW1X1CCqC/7alUCqrEgjH6RkwBAtpt6pXT2UDWH+Hmua+sQH5BhlCZ
WmGw1m21fNpyXv/5HbAL9+F890Hxsa9xhnR6v7UYbJZvJ01tqA6kOD+EZeoYTcmYYGEsXQnOLajx
lkfThh5ve68vytUS1ct7EkPLDl5iLSkq1u1gSMAWxrpczpBq/wSGJ+KRwRVHgdswLxhsaU09cPdK
SgISRa9mKXWKP1hzzUe2QO65Zo05lLnfNLrtTfBB4n+UfvGUzzagkKlPRYt9po+tveIicGY+0m5l
J/ymOXBKEDWsFiK/uQRWemh/c6OCQbFLdmu7NefrZ7q15XpRE9TsupMQaOhZ0YK/4RArz9RuvRBy
TVpS7DflOHkD3Du6bWi3+g60cccwdXkz0VLE/Ywjyetx/6V3P4AhaWFQTgCw/GTFMbQdfoM5DPvY
BeAgseCJ5fukEeFmuswPjYhQ8jFKEbum878GVvPlUt/viT6KPP4Ljb2k4llZzIq7E3HKNL+C8Lmw
/JoylzEAvbgm7GI59hR5+daxCCnZRUaRNZmzTYf+AG1S8SaWu/TGep3FCojqhfKn4ED2Zzm1kFUH
8VV4FMGQDwjLXnVewDZu3Tw5kVYmPRUEo1f+ZQre2Lb+6rkyIleXcrMkULuwDoGUuN5obwWOCSIy
/MhwgMODRnNtP+0Vzb3Z4kOqgF1VLmHCtgGb9e+aLBA0biJ9BPL0R/QoJ3IyOk0JkgCaXGfJNwc9
sFgAhPwzevOyhVkPQRWWXNB6AvCGZCk2LiuHkqYlqmSwGikG2OvZ92YTSkq0HLRqaQS8YECSgpsn
TIkEO8aTTFnRd13of0StiPOHm0wRXLyrskHP8/mz3Cxaj84QB6Yxx1CZkaIt4i5pBIkP4rYskSzW
FgGfy/r2fhiugF6g+PXsmbOabCEmdW6k74Rf5lf3lRr1Q3EVfNwXnJPf9WtT64oRahKYTx+oAVXU
BUlRjsgbeC0zz5nlM5YCL4Xh5Lp+HW05oSvYzlwbMAcnOeSQX+I8a79MZg+FGI9EgNc/gJBm8Ifu
mkHAS0XQlxqRGG9ciUGmwUhIp/60hLA0bMkZX2sDTCSFoRzk5wAM/5xjYyCwfHtMrGg74ao5Qx28
n5PpY0gVjHqHPgLuxwyS8OnQ9wv/0bPHxjI12uJ+HDgI8pTdorc7VWTANNV2ZTWFP4tDbLBHTlW0
bgI5PVnDhSIcJ3w7iy5XIHgtLqq3I4rroRzKdgcQ9eQJJT/XmG+g1sSnpRt5f4+/KGjBgy8wLrZn
hd70B/I8E+6bU3EN/Ld811JWjwvQ8Mkmr3O5Z0NhWS9c6Sx72hxtF8b7gIA5VqXvaEjPfjzNPCSI
Nv6ns+Yb7/EfJcTYpVq2OW13tQg4phJ5LZ8VJvFcBHe1BVLQc8+jmCRTNmaKK0GytcejqpexuSOA
8GPQz2w1fzJXErO2vyNH/CQyzfsQq/p7hYnL9wVMECypBpxIJafIjThrt3l7cRuvOlKywxNLKQKu
espbD0cxzmL9sXApJjXjHp+kI/idy+zVI6fpsy2/a3oOuC8m4m0xMS7BCyXu+Vtt2+ynP0h9ExSX
5yIpuY+VkxuwGCAS7cmcpCtLikwMz+U2l3D6KOZoD40PKPLBXmxQGFg9nrhjAjfiCaJ5H+BEv/z4
iEbsVXboxaZyPhGKFGG5przMbd5wknN2suRG2LHOCwLxE1oZVqwi7u8relPMGt4MFsgh6qSdMa8b
XK5P5lhQQim48+Q+YGu2soKiTEikYo6O3/2KF5Ph4xbUJi6iypBGYCYEbtPH1t7PumLQMCRlxCsG
9fH3t7qrvtRCCVbnM/2xRkE8e9rhoNGMQPMjNjWado+dnxH/z/0EknkL/fkuQid647Ap66rJElOs
OZRJuni3ptN42aYxNqZ4J6v+p41B44TAZqLaFoF2biT7Pgrj3q2qIdWt5me03W28qIASv/+StQ3r
XvEXlRy4M4hr4asdQxqAO2k/2PLZuWgn6F9uVAxbh9624Z24+GNgvtj4Gbs8PwlDP8C75Rn77CIw
RhHMV6kg0UBFvCVVueWGzBeodSRcStXA83fRa64KQ2RcniSQ79tZl6LxzxgYgF7fZIBBbFiQmuYp
ooN+22Ba9E1iplBW45wpQYlvij/rbGukBBttvBWad+WcncsN539Ehc3+zGVkHv1EkAS6Vl0Upa0M
l7QQABrCD+xaW/mHs84mQrchQYWa7SuBg7bch9E84vMWv78eogFSmoD9kX/T8YUYbLZtswan7n+5
sgt8hPRhR4oZkFn3cLY0PzABZJWUI4cagtkXs147ptrXh13QJ/yn2dB7k6a4F7Dr7j7Loj2Yjpga
NLNmgTfNlNrjCSrT8o9DTBc+L0Rf4D54I0f1OwO3pgPrhbmVBgwZHKm8HrNoLsk0FOuIkySHAo2Z
tPXrU7U2h/dZ2GVHx6bQkgYRsCRDwCaiO9zPX/ffWlPnLPbDtrQta2MQq5+/O+gGhdL0rBz1KoIh
GLuysW/wwZM00lrO4bBtjlCL6fx+Tk+zwYFLZI+CxBWDn4Xwaf0J70LXfhibLhIevODU9G0iCZfO
QpApZWb/Wto4NrheBl2vIsOHNutm4HmjmsF1qT9Xa280UQl2Kz7G6N8Sn9+KL0HbLNJzOoGG4kaR
FoNa8ZWQFx/j79lIPlIqJzOmmXU9g0Wp15Vt6kpsDO0yQnvlknFnIsrl5tdQzPNVfH9oNXSydvda
hwgWd/WXRRgaMw2oCLbZ6gARTjUdUp+C/VTPopi3v9rOQVtF2R8xavEeLLTgVZsKqVb+JcpiiBpi
F98WKD9OytxciBfyn/1yjHK3T1Ua3Jb71ppCZvmdHw64ZA4NQjr0/mArGKrxHyuG/VRsABngJo1S
iMjYIV9Kfq96uz44fzYCwP9M61tNCfb8xMZZHYQyWJJnYgAXtVrO7MeiMZTNslYnacQOJZZMZ9b4
rDUUmJ1XIiS9phS1WC3slTh8iK8qUIylq73zCFm0rqk8L9oogKrdGmcxmD+aU/AydVGIXHDgXQHn
cjS4KoZ36hdxisuNojoOIzs2ULcWhsPrcjuC4o5UqU7D0M4KmUJVVipnAae7D06NLrH/t8wY4Yrt
QLlVkP2gxQJ/7rWRAOBn3/77yxDwmEmUoEIdhCpnmkzpzbYmYCvUDFRWUK1tUX2BYylcXqSzZyyU
bBVP8Ff1RqQCFnvX+pjUAXgNHVg5CfBbFEn8AyI060Y62meuzIa8UNAfkrwVniRyb5PUxfR+fWBW
vxCBKDO57kgW5XBHvXnkULkucvEtBPVkJb8CgNSOsw8Wnr0prp8lvBopS1gXzjQCEiCEoFpXB9Jd
X1U5xtZFJ/RxyIg7cjBMrRWkpocSNrqg8of5lKlV0kq1d7GiPpBxmdQAeFTuC1ayE/vVvOHZZGLN
i7HxEYbf9LiU7qNO+sYnazxLpi7kUaLdf+tuzYCnb9nQEBPs5oRhtTym7o9Ge36gR1YTkEQMf+Bh
YPYRbZfbd50/4BhWM4MNh41/SXT22tQyIV6c38yTwVIiGhau1XoUwmY7UH4tuE0k7Iohsykls0nL
M0rpWO8R0IKGDEnedyC5czmHyX9/R0xu+NtTOnu3HQkDtD0zJCIEWZBVWuJV9rnf8/DW78tC9kFH
kBilW14QPytVnxXfQyXyX6FHNASJ/vCGRMu188hDfn3mR3wuXJRdtGQUVtVgvxDzoDTjg8Tr4CS1
Q7HMa31WkC2Hv9jeur4oclBBxVxuByilueLMWEpqJLe3PVKGtSBWZidHoidKFS5sdW7uhTp7Y2P2
tdVdeB8j9UhuA++jYrkjqzHDcuks+WW+d040ugjTJugLFBYCUOaHuEs5t5jsUgbPwx7uKDJ2WN0L
DWfijSYMzNnCBvrMa5Ca/Y1dLis8M0+DTQd7XoUMV1kXI4XaNWaQlc82oPPGJ6VoBWvKHkcNYf9B
ZxToCgOF4afaDvavmcEd1DKheh07g5aFbgEV260/353CHRzwX57psbokzTA9NqofTIJlN2nEN4xN
7j2jBTkgmVhQ23jLBXHjV/Rfce/bzfZXDX2DMoJRclKnNP7Yc761ULmhEM3YPz0EvJ0ZgXMoQ6j5
gRddpio8kiP+xEigyiIQc3V0f7bx+uw5eNcdgaCUmUeuVvicRxdsBi9QlY7HR9siwweyQD4uojxG
eJPn/4zXDrrKVwpAyrzbUDQ/uVJrLAd9NOm9uHVM81s0dB6Iv7o/oRkzjCkXfwJiaxdtblot/vzU
5FTg3t7UnJLy6C+KFsZhCqchFbOO6WKhC92iObr5FiimWkf1JktXBm/UofvAoGaE53ewSFYr0wOh
P+WqNk5FfxYVBXb46dN7JDhFXGNpqWq3zNgiVun6iLX6sYmEbWa3TKw2liFnLnvAYk6u4JgxJFZR
eOpE364NtcAtkNkgq8j0FcuRcQHPjwaAtJUPtulScMgf7YljerKEEAdwnw8LRxJqp+4gNt+8/dnB
sAMpxLotFSu2mCP6k/SbhVWFxglyCkEY/Tv12BbnCKeMKT/WErYe7lV/kdRmhU3I0+HF8NW/aBfU
DzYriv7QCx2XUPDH1Ev4B2bLJJ49KLnYE31rlY4NzJDXpKGlL+1w0rOlZgaHzV6iCb3f8v9lJ4HF
lt0QSPLTzv/brrOxU3YBqmP8pp6JaskoAsqCWS9dG63bd7R60V3nqHeXojtwJKf0zaKnwZvsb9Bq
mNo67LXj+OfEDzr0xJ6g59Msonj5fug5/C45jeCyf1C9hajzmibxTpRlXX72vNjO63dkuiVJwf7L
pN3TTCA598hesOtNo3qn2h/GX76VfsAOycjSSrdP3S8rvoTeZdODQh18E/Lbc2c6Juc3g7+rqUZF
D+0JL5L3FVsROsu3HywTanSHkpwFfafUskr/bX9+GE4/BUw/CydgWmqMRg/SVcSmLoEiwLz52X86
e/catZaP3ITgTgBTbWF/NM7uoIdy7+6l46sGw+aWhddmAIbduTyXq3mwCjAbYvw7iJYygchassKX
PLHfHjfbvTAHI2V6MG8Ch10MUnAx9WVbzAVEX863k6caDN/ZZZ7YmBRiD2vY6uaeEv5A+XpHws9f
NDBZeNE/dwJABws+r9qFaI57nykuS/lLxGBCFS7M7L9f59v+e1Iwcfm9XgWHdmekpnfnwxC05aAK
zADmKrit/TFjJhV+y5QPc/N9CSo2nUf2gICBJoN7rGfsiJThValM1srXvcaSzKXQpqUciWV/xyPv
AAuF5rIbnp8OC6PzfkY2bZ0i1Xt45YPciDROFWzj9vtwBmhlybLQ8fD8xx25dFbs8EJjGptV5L6/
Zw9sqTA0F0JuUqfz6lwvDbAGcLJEnoQYuwE1KUFRft2NQTofgrFoAuo0wH+AvmVKsvXGdTIlPAy8
kpQecMUL2d9HdOAxDXFvbNpliT94LVHJwbsxOEiWaToB5HcD61zs0KfZz7Ob3iRFRcz5JQMwlbvd
S1av5h/k68vPV0tQEAqnMSKrkpW7hQ8xeYwX7tsD27EQguebHJD14P61uah6kZbYyiqkMT69oWrC
6ryNJGbUnizwRQmkNqHKTwLSdlUdSnzB99rwrqaIHAaJ48veZ7pHS3iYp3mRbTrNXXsSCLS0SDXM
puvLIWGJ+y6rlo/BYRw9XeJ68dJetygJiIW1/NV5wjRvO7PSC3IDAR59GM4AFTmIkpA4pWH/aaJW
bwxVDcWzTcDcKiBfEfkyAux6oBfIzjmylYB3xrHrEbp4YCULHL+j9smqRWvhXCE6oxAt2ywrEpfq
CP3Mn3a13K3hcEE7jC7/HBD9kK+kYf20V8sPbFve5msaEtWrY6mNbjA1ov+HAnYKA5Q9vzNrEqgb
4nOVzlWFHTLKASk6sOXk8+IelhO+8+EzZY4PV06GpTFXT2tPPU562cY4uTx8eCQ+NSxgdCRsVrtM
5KZAHcR6OJTAdWADmZ2i4z1etw5tNiTqYLoE7+R3Cbn0bKTH7UpZNQnbtwEngJqkpCCHvKI/Y0iO
HSPgkEdFkrgjhqutpFBQB6RdllDr3ewnEB1zg24W+Mjrb70ez9tjmLdwTgIFMvSZD2D1zVaDJdzS
G+5jHPpWw3N9EeerTCX8+DDioEo59o6cXeXHlC9gBfIDoC2bsDlNwGvjTI5n2rFOGncapN/c20lg
pBdp51JnqBVFovFkpC3Sg7QNajGkbvvoqA0MvR/Dz6UiH7ldkJRxhlfYBBVAyyAZn71m4Ncz7yxM
ynNf+rR5rpeOQuIezkSyyGQzNmGyQ+DFLY9FBCVOx9CkoXJ0QHpriVNrCP3neauT5jkljTZ9CRHP
ruifi9h9SAO1um6NgfAI8NyFeERX2KBSbE9MYh/u+M802P51qTom5c+S0ApBjJ5wi42uBc1ebebc
8ILB8qOmbT02E1XmRwS0ZQHI5Qa4MavPyR7vN8+ho6Vh3en+0Mn/YORU8YOMoM7QnL/R5jsTgohO
91HrFta7Fg25cfhzUWea79FIr7H15PmMASrEDbgWTBPZFX0QItER8ElWJGioZY+SH9F1UBRbz9Iu
BaxvYj3HNgrH5KKPD9vsudaILZTkfRhek6ykpu1G1e1yvOAm7+62ESFZkqEbslMtiDsaYGz9j3Q5
TIOdGWoMFhElmsBCySYjokZzjO1qYBvbs7yd0H616pjjGcLcO/6Akvx+CSIj6FvOOHwyjuTtP/uV
AlbHDq9TOpx1qm3+TT7UZJFTHuMn7E40nuSLfGmwtNB2a9HbzUrOsVBv2QwCy6vx9M1Jy8MtOLsj
3wsROb2Xs8SSQ4HcaN+YmHtZRCpLHXzjfIoxQnHnvmy7kWgn0/AHNCmuD7lS4ZhakrjgS1pd+34W
nm1xpy31MUtfF1I/J887sNxc8xSZ1zsLlbUNQKFMSqT2udY0HJaR/+Zl5PCjuGcbFRjJqnY2ex0Y
PlBUYL0YVwkITh5oZu5pF8wxLJHQ4ys3dELUZtfYZvzkZgIDwF6ieIjwowKQYsDqM/i5Wd8GKg7E
2uTCb2dk7iJXs/wmED+D+kiytTcdyAu2JRBcEN5lFuntHoc+RkJuvU6vtz2URa6KRc6ilWi/n4CR
JxCGp3ZV2+nPv6XIAdBd1HKe6HJbBzeI5220FHHGpq0YLTMExMrnqsOtIxJ4ftUigo0OtWqBotrj
6BZB9kRrV6HZKFRhIp5vHejRVHQ96yZ/jO+M0iaOD42nUNVqh5GNjpjAVIF1P+FvLzCrw866B07e
RDW6hX/6xlQCe0ZSf7VsyRBkgNtRUDUAZ6Lj+OkvU/BB0P94oZ90Txr6C5+tZah8uvFzkbDcqEA7
o8tgzzm3hkwEXizEUsrU2X2fyxLSuJ14iI8TtEx/Wa8IXzbK7aJAj3aMcUszJEmaC/qioQn+2rvH
tLktvzlSty+bIATrCl+BZKrN5yz46hM7Q1PcG94LHR07HMxkVFzM3L7DqaHBvjjR+LjyDgBjVv4Q
l7DNZNcvGr/RJ36652ssd3nC3Jp7btM/62wvcy3QptJS5k/zQwJLC129Hi+vb2SU1FlX1H2NZstk
554y/nNIrREvnwl5PZ8wspIyoQDUzQC89U4uTGbvZQBG0/WcX8ICP980Grzii1tz/ux3B45kUn2j
gP5w/QZMBEp19xLOBgQ9W0nBBlGkqFqGVo7z2KlRnGaJDurxaMGQmcZMu4Nmh+LE0YaRXLj+Lof2
5ZXmOEiS19Gto8+Dm3DrNvYveYT/igLqQ3sr5NNzK7DvDoZ62g82lxN/S+UgWzcSNxPAyN3oyQR7
FJ1QfLAuISloQAMZgonJmZ8m3Rttsh58u7NOTkbFe86CiZDQRuytYFkwY1OsBqMNvPyh9Fk6hMlL
GhyBLk5oR7OO4tZl1b1Aciq9j87pVNb/gvJ8QH8wq3DiZNJa4lT3SOieJN1iYJedNp8XxLG3MrGf
CPyTpf8bPgGVgxaVCD6TuMeZJZ9MlUG7tbGFXvWO+w1yOWPTegRveIIhF4dMiawubVjSyRg+Y01+
g5bdv3f7fjjV27lg4GBCjCiIx3SxOUDYItVV8wq3uW3v8fyh8ntkfB7WumMH7EN1Z1Dbi3hp4bxD
7DVQS69bC4xPDvCG7Yb60WuBHVfXsWzNg8ULsEankmEoAmCXymPTGwJ4M+PLQgrE/wMFkrE/GmuK
3yeeGg2KvQ30euT5GFAIK3YHluXy6KczVGhJkzFe6KLiDL1VO9NGAuE9cBkakthLtmPldD8UrVZK
nnZeweVieLN8bB31+RnC+7528Jz4lol3gYw0tuNPOnb9Xcv+jrNs5Y+q6DVO9LbtoGkyRyaZYjE0
/+Q618lSdMtKS1dQy0aUHFSli+QsoaCN+nZf1cI6AHlbnwmmE0v59M/quEejVe7lWBwBRYqqwfqP
kROHrYvIVvk2sJazspGBcCvI3p//UJv2cg/5n+7Ve4OQsdi6Jvo+j8w9E/zt/E3RVup3hw71PwxT
ZvkYOEuEl0vbWV1PEl/hOm0pV/g2WStJv8q2vKTakOwVtBxRcbYErWHgaKnNjpOCuxHRNwIQh2Hk
nJJKJq4ELMpULmkjGG+egiw7QQc1nUkGmNA1tmNd0c+PQRdnSoT7BBvbc9bm0B4S3XujcE/TqRlu
yY9HKvEZy2bgqCM6UswW4uJ+GauMkz6ghyo6VoApPNk3rexhmtajc+b21oXa330OA4xOTkIwMTvE
oQvRNOuDquSheONZH4al1WV0mxoU9EkUFMBr0pA0Ftwr5RTZbjBWwpEKc6Rq1HmyvmT6qt5mIpOU
85ugSB2yxfa5h3KiCmpI6uoNFqjys3tZrLsQ/ntkJ8nqF0BKvflDFQ14cIfxlqZNfmWCzBd384sm
q89NM1wNgxPz+U9kYOOGV+xSsumHyymIbg6ZFodfv4L4v1+hJ3UqsX7GO9xCuj+kOotH4zkbUT1P
GlfUIbbesuOWLY665zZ6ysJMMssNXW969MPI8hEs36SnYRK432Dvf7IQHX9C3Cg+uTCAwuzIbydW
IgRXrkalh91pxyNEqeTdLTOlMj3RSHFzkzrHHCbTO9gWr16bjnQhouKB5klP48PTjWyLopXvRFwB
W43lO9xtN3nASTwvcP9BPIsIxH8ljwdlEIei6tSIlQG8f+7dVcZ8i6C4/WKmBxGMttIxybpT4QO5
zs3e2ihgm4+nSvSCwhelefQrEqdoZl3KntmPZNYtDRIfomrDn2odPFuSbjg5HS8fsNfAAieq2qBr
WMrGE39+6G0dtw1LZsBJQF9OTEVYtvEnQY37fkmhZekzX8hXIWVscMnjGpjUopuI5+GA84Ga02hi
Igb0o1DGfhty6Kpir+ofTXb16LrqpovtuRajfK1VWlCaZ4vZh5jYAeH5WcWrVXFRSl/b6nPG8rui
S44I6+2S00iAhyj1Zow0QyQBhgTsowGB42ocysJKYbfdnP0bt1Uo80qBZdbK3Dt/CnqfBwLa7VeO
wbm0BbuLsfJcWLRokXIsgR0gfzqsuDicArDYywg7MvWIGytV/1Wt6Ajz7L6Hy432vUJtYCMByYfp
+oW6TMgrTG81whhej2ujMPHlqtFaycJbHhn+wGTZRnuQhMm7G+Pj4cab3vJ7Sa559OT2W3+rmnNy
rw7uChYlrYUcep3DRlK8rnngAc+z6nPrrzyDKU6z0SYnbbt+D7/YEr1UcoysTCK4YcygVXaVLYPr
9Jhz+oGuKWPoWFEXImbC+Fx1TEYfbe8uUmiIBo26/imm9+Tr/dSKMIlatGUX+WbtAzheYi/luTVk
rYAnyOCTcjiKp7ivxQKVttlIb4TOGIgH3u7Z27g+z78TJLqPzqJz0R1Tp+7k69Cs0CVGGez4J4Gs
wbWEnXeFlb8DDALpZzV/qO3gJKp9UjzVl1ZAL6SXk8QPVdhU/VONoCKHrN/dbmfSG/cajO46Fmca
5Wv/OBXKH0C5I2vupqydy/fPsjATyT5ZqRtqXHwHAiDqjBJA+PBoz8nDUeXIXZ7u/Ums1m+x4/XR
gLI2xD3xTBpSAX+Per+A8SxF2EDT5jsC6wn8yUUeyu+TxDkQSYUBZUg4k1LNL+VG5hryX92WHzwU
gFbX1Dto8rFiU7TrAq6C2OQYzBEZ1MyeWTp26Wc13Jn1vJYc7KOdv8BlL4tRrmGamYr6KXeBDtjB
cx9y/r2E+v4VVKcCK+DnHvYIFDCjmwGud2NHGj50CLZcL2ASQ+jF84Q8xQqJawS2jjJ+8JkW0oO6
zLubel0qFPXO1imciIyRSobNTXc7PYv+ouY8lhPeRATcqImZsd9XQci/pqtzVBuB+9bn6jsC1Z6C
NmKUIs+hB7sncg36/eQU+5oLcV37a+jg8qFG1MiTkxI57wlXzJyP1sTPOS51PIwF6cS35ajIBJkz
NkD9g2Ati7WfcEi617diu7NyLgOEh1nL6TLIqG6+Pd1Dw+GHIL595pkNQKS+LRFPGV9wjD/LCcOE
folvNK91xsm9aMfj6jchLb4NKDF8mAkSAPlUsb0Gx2MZ3ZgBNLzITLmASNsfXzea2Xx4bi0lhRu6
Xu1mj4uRGvd9Cy+a6BI3F2NDkzFsq22VzkbUGg5rLF5/NIuu+w76Pdyuxya/3UHQzM0ddT8NS3Zb
vv3NO+OzAr14DIEhTqeB/o00G/a9ZBcQPyeb0G5a3a6xt5AjWhPQugu1Zqjh3tcQV62Y4HnVLpZl
f25Xv2sdlKaa8kwp7RHdh1IElIRzuZQb/ZSWMzq8tmw93fZlQ8wDohRc/9R32rwKKuvi/mgk3BK3
yVvYRE1eopEWdWxBDfSDqBDdK2Lugf8zGppDJonxYUixBs17dNKZ3TmEMzmer1PpWa401agOdz4Q
jkZzRoE0veN2bLgbLV8Z4HJiBeCKM0AOwfjrDGZ0g02siuGp67YSP+1UkXyeiBMfHAILDfIUQOz3
B2+PDAsTkqbCwSjixEzyR1wK6S3ee9Mfk62WZF7r6w/3GBWOz5jS13gLH5n+/AFgE0LeurKGJxkb
Kj5PySiqRLw/q0gEFalLmF1mzlxeqSUmsGDsk3F4F7u1ELhvK1mAuOB4vL9m8XNp9OgHGKo9YUU2
xyw1Lc80P9UlSVYl+47WY1ePbNwAHMpwdYW54X7cbXup7Ksu40ZwB7YuTJBkEV2jdB7m/y3jGOBn
H1Igm9gA7F4rOdeilwmMuy+vX5reHFg/XXuitDlJ+7GShZvcIXwZ00qJEnngMPSkp3f9v1EfTAPh
kCvnmg5yVcfUDdHCMT43E80u0wNkI7Zxr8w7QkBP160bdRIjRQBK0rNunslUrwa9gw9nwL9d7Tuh
cKkhrjn5DjzJ/qvrOuvLKFpc8zWrYHBjrZarN+cd6nh9ieRlv+WHtSTFE3HG5rNOA58sKvBzYisN
m2YuN0kBDc4wrSED/TLuFDcG+IhsVQoPg5S/Hut3VP3hbwJPbATarR3hZte+GEEsThDS5dtbZTb4
aai4yGsWMh/aD6XNdZwxXgqQhvJ999+bpArRyv5ewlxakT/j5FyOiRyYQTjr9+NHxI9X9pmDdBTb
kExwkCRkKONygJ9u81gDW5xiSYBvL0gu1gdjlSqtUM1g2RYwLoB/vBPZ48H+EGLZGgblZUsvZN1s
7uDkaY6VgCDkOEIuaD5FE4ANRIZc/XQaPOV2sIlaQDc3JPxHj0GFtT0MYm/hSimVlvYVpcPZqAKU
E4AgSY5aSG1RyBLbwj/qTPBqeIfLnZQgzp4aauw0PSHraw1fm71g0u5gPIXsUxnP4RA4nV5nMyG7
lQt16Gzvnz3yeuxDjyxMlysnA2GEm37mEx78GgYz7dEi3QFwPMg6nOOQ16fdHHsS47YTXrDJ+9f5
OTmLpRaahn4LGp+3kR7hhKekflcHbygnJhzkZiVdZDwlSVp17WjXpbJvPysXDVZkwAPpuaAslLvC
G011I3EWn1S1yO1SUnDCEBh2YgDz40on9P41QD17cVowwm2A1FStWSgdsleR3fLF5L0OXX9UIALu
9V5YlF8PS/9osPaVoR0tD2smZIsN1o1KVRXK2wAZvR6C7e0oMeZUmRfiMTXSAa4aQ4SCghgESPBh
sllb/++2LY8sHRDK+j73pScO5mTpFMBrlwPuhrFZpRE37mbLAhBZvAH9Vc/JkLquYraS4KXbK98C
NLZBzOIjeXKXwuXrw9SZNBSbbUmCwYc2G3qCSCiDAhHHtin35nZ6pKXYg5nrlswtOEqiHqs0IOGW
huPdM91pkf/gKFtmlGQhxMECWfCqhQDSsGel+jNZ4iUpSaOj22R+sTLQLnj+KsTWHg80TPyX/abv
78EzpPBRxLD5yzE9N2MpuZZ9vQQO7OwVQn7GIbCaQBju5Z4VIuWDiRdJTLctMfdbo1c8iodGAx5Q
F06ypn4sVI2lJvzqFSoF+hO/G8CBlsN6ISxqkewAII47kLl6Q3NeQTlaDbtEtoM4oFRsv+qZEHlw
B0cD4PGfT8Xiv0Q4YE1kkAnP1Ahh5cmaSKonLbKwb3a71psyRXQ8uymO0A9by/cFczQxeEwiLpDP
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
