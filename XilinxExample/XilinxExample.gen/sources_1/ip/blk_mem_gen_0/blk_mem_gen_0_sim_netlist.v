// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Sep  8 21:26:44 2022
// Host        : BrooksRig running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/Research/FPGA-RE/XilinxExample/XilinxExample.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18912)
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
