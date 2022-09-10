// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Sep 10 00:03:37 2022
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [7:0]addra;
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
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3768 mW" *) 
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
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "aartix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19920)
`pragma protect data_block
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
Mf/PZo7ohdZftzKTf1akSf816lNFHeNXH/N7
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
