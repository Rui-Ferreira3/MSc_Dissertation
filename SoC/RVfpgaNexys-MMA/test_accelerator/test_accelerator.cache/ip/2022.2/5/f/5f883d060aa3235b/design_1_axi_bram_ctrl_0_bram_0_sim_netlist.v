// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Feb  2 11:25:07 2024
// Host        : DESKTOP-3C6QEMK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_1_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52768)
`pragma protect data_block
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
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
