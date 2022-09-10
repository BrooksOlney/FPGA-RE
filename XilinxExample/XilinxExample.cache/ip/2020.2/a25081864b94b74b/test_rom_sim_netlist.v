// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Sep 10 00:58:12 2022
// Host        : BrooksRig running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ test_rom_sim_netlist.v
// Design      : test_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7a12tcpg238-2I
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
