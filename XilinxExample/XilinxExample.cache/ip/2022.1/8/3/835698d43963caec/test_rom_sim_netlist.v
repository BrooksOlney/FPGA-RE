// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sun Sep 11 22:57:32 2022
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
