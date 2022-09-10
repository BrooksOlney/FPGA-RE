// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Sep  9 22:08:00 2022
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [9:0]addra;
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
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.1884 mW" *) 
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
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "aartix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18400)
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
