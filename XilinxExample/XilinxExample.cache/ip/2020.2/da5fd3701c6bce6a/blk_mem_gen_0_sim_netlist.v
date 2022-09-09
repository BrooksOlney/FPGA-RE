// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Sep  8 21:26:44 2022
// Host        : BrooksRig running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [31:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
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
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "1" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.375199 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "aartix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
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
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18928)
`pragma protect data_block
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
TRqB2w==
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
