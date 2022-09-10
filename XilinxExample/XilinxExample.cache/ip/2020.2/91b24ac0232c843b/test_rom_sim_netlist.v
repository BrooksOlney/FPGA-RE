// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Sep  9 23:01:13 2022
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
