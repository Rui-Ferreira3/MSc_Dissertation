// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Jan  9 23:27:34 2024
// Host        : DESKTOP-8GAVNOH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ interconnect_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : interconnect_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "interconnect_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54704)
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
