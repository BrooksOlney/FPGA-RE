// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Sep 12 01:23:43 2022
// Host        : DESKTOP-66PI62R running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ test_rom_sim_netlist.v
// Design      : test_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tftg256-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "test_rom,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [7:0]douta;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.326399 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
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
  (* C_INIT_FILE = "test_rom.mem" *) 
  (* C_INIT_FILE_NAME = "test_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "aartix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25536)
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
