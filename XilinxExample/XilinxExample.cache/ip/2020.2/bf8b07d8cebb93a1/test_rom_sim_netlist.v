// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Sep  9 22:49:42 2022
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [10:0]addra;
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
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.2196 mW" *) 
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
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
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
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "aartix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17760)
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
