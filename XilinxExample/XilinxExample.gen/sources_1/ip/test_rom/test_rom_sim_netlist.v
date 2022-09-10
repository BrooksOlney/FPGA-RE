// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Sep 10 00:58:12 2022
// Host        : BrooksRig running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/Research/FPGA-RE/XilinxExample/XilinxExample.gen/sources_1/ip/test_rom/test_rom_sim_netlist.v
// Design      : test_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "test_rom,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module test_rom
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
  test_rom_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25472)
`pragma protect data_block
sEEOzS4K1k2wVNArfzawMFCe6Qhyi6CqPOInN36FZrfBw13Fxq4cxuLjO6FNDu3m/Swxv2cl6nOg
HLt3CXtOavlu6NvUs/J3SIDqSNeC6a4CtFj2OyufGcdvcyXiz4jPit+evFtyY/JQjf//DN6ebsIW
qch/oohSLwIg9BiMevNY0uS9I9Sgzbc4IUos3PlaAaM4LUH/WRSCzRMKpRrcXGQfF+MEqL01yvct
UWLNuB5rosUWbPvxB4T2k0dmvzuaUe6umT7sefSRZ9tI4b3gOdKpq8znf1vCsXSFlSsmtdcmr3oL
XHy7jqaGg+b9yLMIUKR/aFaSuALhZKkyh3qhZ3SakR+tGKazEzXvmKPxUorKt7W7ma0uQUyt+4hW
aI7MkzXS43I9ZL336dzLGGQQVgSH5dS9IjWo3wflkGpZ5t9/eRjLRz/T7qSNR78gl97ScC+4sUtz
W6iKNkAMO2QK1gVHMnAhWR0Tbf4BK6LnEgFmJPcrxUdiMkS5l8KFWtgFJxAc7t+PRj9LE8Hhztvt
wSJhrZUBorjTCQIzQ6eL9ysdzS+rliLQH/HXVikNybmWoVMkOnVYNvaDOK+DCM2unIxWIUw207p+
mpl4/SiDjUiBETJQdXfu66op3LjnWCqL/1/uGMIB7TvOklQjxbzoqzXgeZWgKmcPjzXKJuUpTKkc
lz66p0ZcwbuPs+hVsygY5EQ9WsS5NEW9Ekgky3OaoVM7pXk/40tOLHHzwW/rYcCTbGb7lQyfWVQL
8vqRP8QnOh+2XPEUtrD3VR+49km883QbGJPKLc7tusB4BmfqhKtm3i2E2a2iwc1oNAAJjGurwE0i
nZ5w92BXN1wfaTXCpDHq4hZfEukF/tUErjlyBO7I7eUvSQCnsMzUgRcNdAx3f0AxVfOSAS8roneH
fQ4zF1CJLJy9AR6BJL1xSmYdE6m+HCRM2oudqkujdOGptLtRto+d1l05GCV5TY/5onEd1R6CQsEL
z8fcX/hqO8vHKcNpPvCkdy4g70s43PsJxeEDquP0uqE/viU2gCYX4PnbwYoVEpZ6eKjtTLV7e1N+
Nhe7TsFhkKsI3IaOPU2cJQ5ANDwwX2yhxXzviMz+sKckC470pvZzBSW3J8am0OssBS/zNFot8CWb
GQ4Z/uKmliY6Cv/DVX6sOdWItNPrVcKaww3MtQiFCkpqrLaC0CvJlb3aJkvl8G1FVNgk0vJbU9EX
Pcb9jnPH6BPVSBskFKzirme/iUIokWwvO2bDdexu6tDDgHjjs3fMt958wi2W6EhT+aVazVerH9Nt
RnqRMV1GVUDREri6pTfQeIYCr24FD7BKjNVAKmw/waMY1K4680aKVM21yit5bbOsGen69lnP3Ta1
FNqU1pz9SrNGjw2jzs6whzdfZ6cBMDsPfPJCWqDzjo7V6Vj+6CBuGA2fhotN4YRm/v4rBkMuhmSr
lVmAeh1YZ9qc7jBUP+DB3kYylvb6KlM+Ra+KgjhyQu8VSIbgXUXQaCYDk+hurJg5zTwE/1vNTw0+
5PFO2K54Ffj1F/KmjZ6bXz9UwYNfto49eBgBe/4a4hVJ3mp4IMN21VHa+C4dkz4YvbWTB6yzgTVa
Q3c8RT0PcebbfZQ+J2SLWbOMezvm4W0x6fFGMv8tmqGrV0082i3diX7sK8Ah4akwPlvSh8ZD+dxZ
nwDZsrcBrR15LBFPMCvitZWjHDo+Dxy/sNdvbDLlj29E0cxQn4gP0tihsFIblm2v6HlFvs2/mE3k
/sZzdmztMBJ9q72NcFFZktC2xnX+ey6IhmvPqVTW7kXP+NpBw3RItutCOGIDXjgX2biXuaJ+ucBw
9oqckhLXvu6ew/2AN+BUZqy4lfYS/I1k8wJH3SBCzS6I9Nqr13DL9DVBrzg8VMwx2C9LdP8RfkwF
LwenUyM51M2W2DqfJ5vumr4HBBMbpKb9dBc5EqcVsX8nlQucRDsn+U2bcIpoiYl582BXu6C8Gg+S
epFV9S0L4S8mPzfW8M4rSyG0JV+GKs+7tluK3390WmLElkoHpENizbT8fmMmYpX9kIKvamVw078I
0JGanzZzFc1a21Ax8eEvPEOezPNuZPh+JsPrNPJ/1eNK1n2SQ6Z41JK4eZk6Vfz9hCUhJCT3Nnbg
g1yQ8nNcWH5Zv+Itbn0PFw28QrPeZEcruYzJ4WFAdPT1FgwCgbwJ7U4CzJIQ087/0WK0qwUGiper
WGg1XGghiptYmlSWZIytDk3JDJngzjjbFUa7WfGGIlBgub0pBqMrG5l5eTmRCCRT68iUIUmzawEv
62iA4oCLDmCxElG7wp9xUVegYhI8eCAQ8GoU/JdeouqHSNILd7+ZJayss2jgJa90oUqQbrwlNbQG
XT57ZAc520pRc/Ntcy6zVs7uzu8yaIgJzbWeGbLAoe5vMAaSbGLXn23W/x5Iqd/xt2NZfi4WwlTJ
X3qy6tDDNHlqQLoVnaWllE9I3rNkNuwlI3c6G27XJImJeNGleSfQ1mV7ro5akgQKGh0oG2+I3Sne
d7uwIl7Nivi4gjpG+4g7QPVsyE1pkzgvd/JcCERecvuG9CznfijcjuLP6x1BQSUrHk20rUeS4eR9
DyOsjDGGkxeZvtHRUoSw8xECYyICxNRoXPppTPpVa9MYXs4vt7f5RU1b9XfwGhjznbbh0JXpXgY4
Y2GrOS3Xkoaf//fgXvai19Bm2CP6rtMXrnifKpM4Cngx67DSZ9rXB1b8o4zzIFYRW7477EqXhmwY
UTcW06CXbf28OtX8BWNtiVt2ueMSWEx9Qj06IyFQ/ulxsve/H/QmTao8cyTf2yD/j+SDJTobTXLS
AvQ1NHe03AVE1TUcE3KJGHeV+PtRTAYUXffcNm/Xru7Wi6HkuiPG2KRPeDq8+CvQnMVts4lbDkwJ
Zd1Jhlqh0cVERU9VImVliso/0gvfxVaAAkx0HCrlpEdcqLNo5lJ838tkThN5oqtzAdSjMwN8Uo2V
/x8yQh3Vd2krzVl8X9GD82+RQKvOznpXSh4AxJ8PakNWI0gJTy8JKG1cZvzrVxQe/yUR/Ol6famB
VpGeJ8dBX2G2HMecQIuI70KuwPC2+Mz6CojMiWBp9jISeQQWo1ijwccq9VWIJ11iuKFbWpwCSscJ
23W13ezcZJd4+G7ciUS/K68BejOata/oDXlXAIxpNKw57u0OVBo/c6mGrrr/pPp9ot/0oaHZU/qr
MsEFdI/5sjUDnyZY8xrZOQi6wqENY4cQXEoCrflItIr3a8ACIYITd9bRihPDdyLWvVr+9GGOTlpD
ph2f0BctAr8mRqP0ObLZ5rU1r7tUlEM75bTQL7vF+BtJZ1jHJr3gH5k13INTJdEfYpGfk2dMDLja
feVhTqdEVk607jZFAuefzENQGiTFWn8JJfEk8vyk2T7qSzDVEa4SLRES6E+HCnC1KMnDlge1G2/2
VVpXt9M6UCMGJQI+JsScFXRIO7ZMNYw40E1ULUoShqyQXqJZIGWvBztFkIQ293yHC9yZumg1VloX
khW3ZWue2zk2dY953AXm4VomG3aHbLTTOGege1QxW5p7l3o6M/EMfwSBRlL/JmU/+JgGyRR4Bl56
6x+Sq3x3LlJFipX814CdzojTdW4BpKZPawHMLcJohde6HyLvEtLBdnGwbkoOpDEdHwEm+XU9PWj5
uO8lYn4HAYOmBFsrjRqT8gQEm/0Mzx3m9N5/9mFGC26d4Y2EHuFPjS88+1a3tsWEtVWc865Can7O
Mor6ZVFcuVjIosH9D2ujifyPQ8rm0TIsFxOThM/T+LiK2hgN6oERQ79YHUl+Wll57F1zPd3FHpNU
KliC9lOmHtk9jmQ2O5AkCT5S03+XEWScphTc6apqC+xnQQTit7pPDbSXC9EFPDSkrywZxB5cMXp8
uQg8CK/V3mtGHRbOpJCjnA+7XS1IRGbKYOg9cDxTiurcUiytwO6URedVWuFtEaq902FE5EfrJLIk
UWW1J2fkaEDDlWvF5y3Ct94vucLtTF45Pb9OIKISVSAbguXd4nH2sg7Zt1r6WcZwGV5++ASBJPU0
QPYDpr54HvAHjWywx8Re4TOw0HTi/GvFU0flGBzi3lTiWjI/5vVl5jyXQUnO3lCZG+JFw8RLK7EH
YBqlQZcXbK2E5O1qnND0bZXwwv6hVM8uFgX3Pj7IMZoz0wK17kLBbxIviZ4yy3k7ogswL/Z+OmL7
3tVEw+FnBm/kY8TdrOLaO82ez/fPY/CpB3bdgjz5JMzUUmUKEtjmiubHpFWUDLGgp3n+K7BX1xFD
8Js+1xCSdQR666ee/I2zN3l/Qog6BRixfSRaWU3C8oZx9iw2p4dGRIiWmaReCFOt0j3X9nMcPi9H
9ZwEcfCCAfsjsjkh/p4WgWQmhfUUWRqaPBKMRdmr+Dix4sfC73UqL/g+zK70U9V9t9Bxcu++r9+y
uhdgIgcNxQSIE1ZnASSJyoNeonNsRroiEB3XASWeEeZek/4rl4UhLNpJzTeSbpa2aWbBFJS08KI7
5PqnWnHqC9EnAfQciZ5xbC18M0tlrvaVbMnUCOkaZnhFIVsKB0K61C0rqmB3FYZ9SzJB7PmUlZFg
SRovo25sKPBGxtCLQ47tWh9Fdy74xRDcil+eGZ0I2BZujPSg/vtYu1jyygng7RuBEvWV5ImoStUk
ingpNDFTYGpUxPFNqupNGSVjdOObvHdutNIPharpIZxhP2ylQChvuxr+ZEXWI7UL27K7QKF4GYXS
1prFh3HqVQx7+IcmKqkspRigQ6rWXsqJx6hjSxkDNvheHpCtWJiQdGNQQ/I8gAIAy1h1W3LnuC/5
qMGSRhRy3B8gPrdUCxIb9mvCEvLCfJZ+t3vJeVBGGKil2SlU+9UevHDy78U0+q9sAUXfUc67qN8o
6BSxwZFyCVMiJU4DFM5OdhFPrbHJzkYHVebCo+Dc6fnq39dIIovw9DZpZlNMr2KFrzfTB1tWeN/M
CwJJbxnKVyisD3/mWoSS2zH46EV7fwYmwAHLdpsOn3FhJVBlNN+e0lehhIojS4z+nmpT/XibBtN9
dPCHqDqwkZ9PIS6jF2W4hSoIZQnIhm7N5vzGwfDUyt8pyoHjcYiBQ+8/kTwIdSknu+HfDpZwpppe
Cc1SHrCPBuvX7LjU1LKMq0VRxPvZyrPAOUm9P64vNmqWvLp3B298Uurai4zkHvIXf1roheMYvXYS
YTS/rLBFJiZKBe8o0R1rU1iX6ZIKXWx168MexzOPsVd1A1fVdTM64ypegh2wmbVTqF6ucpoOxLyw
oescCyVF0e1P7aVUnPs4PhNpJIJPXj5pcV1G39tihKdF3vpPOhdboue8VcgXqFx/OGuZLGAYlX6q
GYQcFaJlyRnl2HtFl3Jssl/qGVJqZEKFQ+pLdBWshiJ9+ZuBldkwJqNV7bXE8ndmE3aXRTLmcFks
BISn27LuUqzdthFa+MlFYJ42IcuqCOWQGpJru9/yl+/Qb+i5RtPpTQl6o7vHPjZPKX5AJiwN0Adc
QTO9NlDs2a2AIiAVHVg5spmA6iP7HZ5+uS+ZfobetVkZrQSDYhkHAUC0vmkoz9YR5PG3es8gumvm
jYexE0SmMkwbd3wKiNCKz2dVNFXV4akBepQ9P/4N8kxih8JEcpeu69Q04fAzoeEY5L/b4Lxvs33L
bonw21Or9qEUwyutqwAB5b/JR4O8gay6LLAdvvTDEB59RhjVAOCJtIYjp/T0gy1jnZaAEmmTx1N8
UZtMRg1jsVopekNbWaftP641cY/WFt6BozSqVmeFXrPNGpYHbgePPvGo3CVi2fNhXTsN4nwEAZLz
LXaeIo1Ddr9U5YoqESYu8w+zcHduQa7zi86ajxu8/eMxrlnQ3tLS8dVn++z4ASWYiXyxS0okeom+
fize22VVLTL7ke9lm6JUT/PtWsTAy1Rh8xvHjLFHr3tQfE50N75ghXyih98pC1mRTTRpAAbUd9Ch
FNqSCWl13lO/rKjivuCEEtWCKYEAwu3lKLylrDw2FYCktHgc1InuN434SUMA47Xt2tqO+4bpXRdm
HiH/zzNbff733VK2HG7S07Lmm2lVpvSVUjTzZR5Jpj7Ikp5t02HHVXiS3OmNRaBOU5k2GGZhTjZW
1dhgYvxALrfpSLjJ2lOLT7mhxx0+mehi5YhrpFXfCZ0k3B3BvIDTLrF8cGki6mVnmVyfutl2YDr/
s80rPtwCy0WDcUCk9RnIrt50CSnIOC7f55EjTO1GrQnLcuJCHCDhnlhqKskjMag/RBnwblIourML
JhYATJUbCkbjqu1JCScs0O+RQyPLJgFEFbWV92xAqeftQD2jACif4qcH8B5gDMLfUS2oDd+cfo+C
GmLl1gPwip5L5rcT0FRFH63ePHNmDMYK3mqbWF8LprTjAugOdT0AS3vm1xF/NFjC4bhuU3HTi1Tq
fIYtUM0LwsoqEfOCqwgWYbHxwLTh2LMIAwwrJkqOreA9GM3NhJO8olgCY8uJSRdytyT95ixvOEaf
mW+Rx35cXKIuf29eLaCbxtSCPZH99b4P5D9Ar7aOu9o9mfZOwMUdxN1vGquRGxQS3+ov8rJVTSUi
D7vKU2a/fqjV1ndmFL95w9gRZgT/vxK3BKL53pFGciP6ioPyA9qd/mIgNdUrwIYjZHSgBrYxywz+
kf+Bn7rXq59ygMIoiqtkWOUHdHVQT8axYkhOUUBCwnDsD7GRBfXMpJhvM6M+t9lZMCr5WsLeWHlk
b3nlRLssmBVMjyDKdt+qFwTt3HBsCI9/WIr+/EKxjpqpyJndZaUApAM1Jf3Bp/dauq8TyUqFWv0h
nxTndoTf8PX8koHCGAslnOMbltlko1dxPlOjmsvi4nN58a0j7dLIz8ewmiOmwv7qBxCsIqv4lyvM
KzNIvAiKRGjo/Yop5VAoT0xvB1IdTepDQo68pbDy8Vj4OeTcsjF2O5eMcd+tCyLOdQ07haCz1L3p
aLamGQ8mfxudsdKAghZA0JAPo2KCFV9gQEFtJlaZCQclIVATGdWujuiO+o8s66cUTTqsfmEVkjG4
KyY3zLMq/e2kcoQwko0hviXtpWSaVaEr9Axzmb024+cdg/+sYVuqN150EPkqPZXR8HfyNYLaifNm
tfHFBIrjAxWN+Cy1IzJ416XVIip7o6z17EHjZnbpdqu5paqIOk51sdDsmG/8MiM8z4N0g2LoI4/8
9XFX1MmlvKVQVBi/Y/o2GENH/Ec+jMpWuUfh1qyhGSyJrrKYcHOby5K1NWyVDkVzbrVbbZXGfXVb
HsHxGWBMc8m+88EeYrbpRmqQsme0zJASe+/gV72/rVdTSUB1GLCvVfhqyv88M0NmrAz50IV+tp7C
uPkW0s8MzfBrj+YqI7UI/X8R4kdjspVOyC4pjHFnBfL8jMSwHzQMa6fV3FKc/N0qJHhh7SEn2r+i
LpyrXCufHzjgaYfGm5Q848i/JWs6hbTaqQNIyzTtp/5Jj/vUhtHr6jNoX0E7XEBLqdeTChVGjLYR
tGklMi3Vsl99cQmK018rFgPoA1nDRX+pV0aG+Kh1hhg7HW43s9oPTEGGKMBZFwCV8fSy7FkXbhq0
mtg+JiPLJviCCk4medlnKUBcXjpeP8Di+dfFNNEUIJOvueYVOnXREln7nIUsNbWpBiHTyC1aeVQW
xc8gLE5jGxsAe+uKVUR1Kqpa4xEdaqVNKwfwmKQFu0qB5nR4fpphvFItGMwEObYjJRAvYRmAFjS3
0krmWF1ldfV7e4Cd59eSShEJuqvbird0WtMhBggb5lc3b/27R1C4BFdbOOxNITPedF0JJWdzaqwH
VgBXolkbStzanRUCg4NUuFknCHNvKhKNzdL3Q04XFvZXZzirn/kyED6Doky3RozJNvxcfQcebMft
O7HcQQQnn3Mc+baYuo5TnwHvAdqcqrUQp7dYJYPtciBdM69A1+6YRphHVgWKl+np+tI//JOeqOlq
QSL2waT3oeay8guGlc/QvZC7ALu6lkXcUho8MvAr20FCAEuk0+jSr2c3FbzPGYaw0z4RcdS2QYJO
CbZtSXPs8/D7/cZ+DZT5OgOwELWf7ifkH2pOEh5bUyOs+i2aiVGlsEKXEWmvQR00jyHylpF37qq/
bx2aMKe1TAOADc8FOg8KWCnuqdb+z70s2TR6t2loiO/ywp6lpbOwZPIE3gJcjUlb9rHnAg4NKmNg
GFiN5HfY9bJnLrIdQIffey2pcr1Ffnqha5696yot7P0mtOBiQ6a0sH6eZ+o2rF5JGHps5qcfUd/l
eFnKFiLzjsUV2y6yfCiHMeCQ3aLfYyZv1VN3GqqImx57epkgiFTKyn9a/SsKXyL3EOB44xA/tCz5
QIsUi9RCBxVND9eWQ5NyRTJY2/5WViOSIsGvu4HMJNOHzGOGm1lztuUlUk/C+l/F7zwt3v8OGOgh
ArNwE/SVI3SGvoMOnnkKZuANZOWmFqzBmjSgHSRjmmjvQPcKzxXfwBFllFMnASjtF4lyLL2Zp17m
ExUI/H14hW811n7gZA+kX0zzt9oW1XFCh+K4ihEsUltQMDYVRnPxLp2IAf6KCI0mA85MBwo1eTEi
9Oc13olC8zNEz2B1OnFolcJbqV/XQmmOPhjGLWhiJ/LHQLhutv6kb+jLsffVGlTiYIJ+05VIYoJC
2I/VytcQEl5zajNJPBFzJFPi/sD/2XULAzHWd6jl9A+FOcJkPPv6squq2Xh6yMGEC+Otn8WK11Ht
hxTsGH26zPmqvdey38zYGHvWvD62DkmHoLf/6gZcBt3hFN22HN0BzAqaQbZ4bxoTKhSZA9jsa5mM
kbxPA5uVDgzO9u2trzUMHZwTm1SroODSTHURbh4g0VgxoBpOUtyEE3t1g3eBn5CjXdM31n8rJmIR
iip7MJW987QMXzIBgDvkABa5cO2zxdxEUfHvF+czIg58kzQJ6q+6BtIi4veSnVhv/tJNHDS1g1v5
uGnpxY5I0A5X2j+DjIajQt2gdnmC30DnyUzj6G7kU7VXtTXqiVTRiIaaZ0ZfLk9JwduzbAIUmAm7
9oxCrpJoyKcixj4m1oKn6aLqdqUqYW+NE/q+clYht7QrPd/6vFWBDXEUDemBtlIscgiehZwhlnMd
QF6083Eo0MDRsC2aRf8D7Q87wbd8RPq1p97UGJl6vIk/4EMoDTIvD3fW7egIIQPkRKRp/zlg7po3
944/ObmTHxc1Wi0NVk8GwZwJ+2mB4xNd6Hm2WIn7n4cgQKbeoGgui4s7+e0GIoQ7mvHbXqCUk1p7
9wW+l8wCtWJ583OeCwVUFcsu7SZq6hflbv91no7LSA1IEdFJsmzmH2itY4oOIusdZB2fkXhzBIHZ
c7RoBoFii9zWgOHxbSniqrbOZWIPKlrTKaOc9qpVOfL9vZ2w2H0At083mZi1rZJTGXJPqNEVKIql
H7ghQEbCqz3WTH+oHCU41XFTMSUdnCkxF1tjA3uHeYypIsJ++yNyhBqOIuM3n0qyCZk1u8T+kIq2
u+sFXPs26t9mrPmTKp/kj6ZZNMRHwJtr56E2lYCECABgqQuvqwlPSz7AA8nfIv6eyvPilXCaG55P
QZRdcqhcr/liLEQ4ekutx8tkyNwubjJRaEC3nTw/qnpaKB+1S8+aieL/rupAHeG2++XW/7e9DhnN
YOlwfKKbM7KKl9XnOkueHKH7yNYVVHvXJfxtB8pb8atYoafFjYGtrLo1f870aPGCZtxZIpgRQpO2
mJpeEfrXmGGiYqn62pc2X9gC9TABzAEyrDxiIvq1En8qgJP3RFZcQSDDc1Pz6BZ4SxIvAXPlcr8y
Z+yxkAVK6+fdggF9Xc2n07IbXPotQVYksMCHu2yh9V30sFDeTB98kP3Nc/i468Mlto4ZWnBWwVQ4
PzKaWQ4YkF6lbj4hqU91dPObjEgdK6zUv47cx5LWR3MmsDtyOZEkxbh6s47/mqllVBUE4B7WX5gO
0P1NA08UvQl7excTo9kD8FxetfvDATr/b8pVOBlDZuRHqkyyYvyuWQOayZ8jQbAH1sHFc1jDvyIC
wVdggmJ5WcSZrH2jS8l0RL3OZQNlqnAJn3L3YHgd4yPUf0KyoxEBtOVKdk3sySRrsrDcHN3g5fTk
nAzIGQ/58HtjaaHIz1z8dCLxgGMeGF/QapII1vflk8m0eY5U2A1+7hQmwo8E1TOR3vLVqhKoK5Pu
pwEsYlXrCG+ZuGcPQhIqiMOmMfiAwlpH3iRO1ZoGaaGIQ1UbDrB4C87iEvBy19uyMd71PbHIAtcT
+MKvVYNW9q4d04x1SHFN/cruox/O9K+mAuxkgXSzIqeeonAil+udoRiweHLAY3G9S6DBFjRXJ/vj
wq7qroGzdiGJ9jWtKPIi+dsRTx8BPfxXL/igWTz0g//iyyvwp6T7DPfHa3fhCrI3nt8a+9zk0UJ7
p+ldBv0VLVks+Vft1QWfnmoCxUbeSBwh4akw41rehLsU0VZfC9xB+wZHBKbNuT4gGRzIOX+Iw4A6
1OuOGr9r82Rv5XGtloIOtD7S8AlLpEvD/96hE/UXU5v4pJeebmmMmJZXlU2qUmpBQAcSTPVf0afe
KOL7iC8yxmYSIf3YNODoC+5+M6q7ahewO1u0Y9yGOX3jNspGAG/++X9IfWSwAtwkkLVcuKlsPp5p
IVgP6IfzekzX+HcUArSwhwA1Yo7lpCJV8gz54jOcuauwuv8FxngYl1F8HDyeKZ45hp0iYQEb77XA
WaJYBx24SziUkLMAD9ep3SKJ0x5JA73DrTO50JsCb3v6Y30IXZhee1hWAsrxXB+MeL8sf4TghakH
+rWH0U6XOEMRkFubGxZFmAW68GekpbGSxOEiub/zSN4sPF6IM/aCAu+0In6+h/96lYTrxhqkC6xG
SJ8u43DO0NeB2kmd1VzEDZRAArNilTiXVZZhrqWG4XSJ6VlPg396p4ienedBgzZImDtoJsric1wG
hBoeorF3RWkPj413DlGbnsbpNnTubh5TqVFhxMFYUJ46IzZc77+ECX9mAYOaoH5sy7nMJPY4UPY8
+kL31GCSSnJwYm0LC8bOr9vHUCX2WnuDLVHCzv6cBm+dYxALSIlfpIU1eWxCR4UGmLWyc6o8WQAF
shoEe3Vgn2MHt+hsTx0WkbvgVnYuclN9DtfKSaWmR/8EoPVh3swOranVhcStJF9hTD8n1qnUx46I
otY+Ewa1Vg+N4vneNunwQ97TKdIpAzEDQS9kUvmA89VXy9wD9vEXMvp11tLjYsNQuzwyAKNHxAfr
HD8e7w7CnsWOPQNLa1DSunYDSG57NuKucdFY69EFiv7DjWrQwSG4xdsASQ8F9WnHtgrxKJj21L4b
VzvOmHeFEodm1YDXEoWe7HXRMSsbHRR9DdniLpYESQ78+Z6yNgZYTB1YYGnx5Ydh6wgbsU+6A5gA
YmoyhJm0dK0WDnxM4sSSW+UH/AuBM+KlVlKH0W8J2PUQkO/YsrMRaHrPdX6AGUrVgFi91HB3s3pJ
VyRkBtTxjvR/YCFd2vpNrCXvVQIfhhVUki4Isvwuty6r+p5rUXOymMb7CPWgKrm56bP/tDfYun4j
D8mCpS4lWbp4kVGhwRXSURVvwqZkxc4udyKaUffiZe5dwvy1K6wlTa/Q2le7pPwUUGm2HFN+CzIT
viqaiw0U6SbU0m+dGwADwEexFFpUN4fCsSYhXyMEk9MWJkN7dxBSCqnTVKmpBddlB0chbrqppDL+
g78UxzCqyhWga9pknks6yuSP01K87izoFaOt1gSzHLJx6b42G6wZFLRCkI8rYLaBIM5CxvM6d4vE
lHlIPnTOOUG6ZWjqevEIdG6XDzMls7dP1TAEeQNWbr1iaPVCzYEhQrZ68rz4NnNnEEeD/BC2Xum7
XaR53baVNjE69qV3A92LAc0LE0vfNGgQ7o+hBUsD/TIzKVLNn+cwhS0u7Wp0B9EQ8nw24fFiHqz+
slal2qcgl66f2SgcvxDaYv4bELfyQtWLHMXKJl5N6Z7doFd1+99Z4FiD1hFD3gJwds+1t163z41I
cez07XPAXR9wrQE2Q0RzgTfB5HxQFa2GJIYmvq/3lQK94nwAvpIHD9zMQWivLqnfUQfmhQgIv2x4
GkY4skFF+Kbb/vG8S+Yt8NQTrVh3pfmO2aBKzSPdxdvHxdDvGV+2PxmDbOTwfN+QkLuHd1+qIM6z
C3uUA0Fu1XLa91aQjHy0/F4jDdAFmYFGrfhJYgoa9LEpPbPWTBNyeIotimOBs/6EJtBAg9WMSJE4
nN+00ALVEtzueD8kjFY1ZqiHuOQ7DdbZX+m28orGyokdiOOO37zam/KajJTpkW+VbaC/xfQbzI1Y
d9pCiAHeBxh+6F6wrKz+wXX24NW0Q65GvOkmiQtM1IkYNbkcvZXZXLw9V9cOrZd/LQMZJiG2IMIq
4E5NJyOB1asUErUltNg5VGJROe+Gx6jnZpGfqAZAUrtDoeNpg4nW8ARw+bqLS8uJWVfbEm/lEEUC
x3d3z8tdsA6UIki9C85jGbguvPxcHQYPZG/3F+/4KaJAhaQ5LN4qS1KqXA9M0q3zoWZmp9FhdbTf
0hwLDaIFUG9aYLvuJaOgx8ay5s6vizAPBzvth4grZNGHO0BTyE8oJnKHHW2zIzxcFBXFz24mjU+N
li/zYPSe/dFmRU1UGPSTv0empq5Qmr7zXsyugjEcIfUWbzfpcJoHpEs0oIHf5wjHOyM2y7exnGaa
9btEkGJpCbVT6axFisP8puS78+LIihbwsJ+l7tmdOgeMWR6AwZ09+sEobVziiiZRmIF+q3M6ELrh
zFUmcKXQ31HDCGfdT7uHr6NhrEhjoDXt+yOxdGQAXcGTrcCEdMouQtZVjeNb0EDNqwG5+xqaAOIa
BACg7dZC64Oan2Ssns6TfHP2OB+0smyWGcPexFoJrK/evJK0glAS7YjPK5VRyLTP3RgoYwBWI1bB
BmhYhryGt4MOPjAtxY9Hdc7Kgj+VJLtc3jNZyXC3Od72k1kKKLMChW25UIKYySNmzMwjlELvmA5l
h3KSTTfltxtrnkGCQgy50y4gTtCxBZzFSuerPGdekHmYfvErRirNMioXDFYz2rwAw2cIQkNWwKUT
qWLnfmH5oE4O0nd7Q/aMTZl95phtF9+9pwIlB9sn1vHrDD4PNXI18/BBcKasvMozrxkA1B/TyDq6
m15XQPJ9rcT+Q1U/2jQhPSzdT5al8ZH+wtWgpfih9QaN5kgzlJMCcYJwackcrvHuAQA8PDBbd8qt
GBK+ewhkqW09EJ1lcYSQ2uusGcP2xaeOb9EerJMqkSvP6z31eNjAjA2pzPj92mPGfLoRZGQBfoW4
6sdqevKgPTLqxKXvO6lENhYX+dDa8xi1JfhpsYF6J4gwCrGps8P8vphe8a/M3fkFQoFQp5ELK8mm
VbJEOf/5gT8jEQntr4gAh0SDOxiY7ORVJj3a2aHYekwYYqD5I1O7Ag7/5x3LamJ1+RoKBdMsL97L
5hxnbpxyHo37L/wEi0nI8GIZ1f+QhH6/dabcifahZu7UbyZgMBuIxYYy+n9HIjz2KDaA15uL2ZWt
JeFyyDOpuwrtRyNsTH0ynMnVHCqsA5n0ivkHjrHdn/Py93y+SSAF4e2ubgSFblFhbN6saX2qVaXD
WZTLee3h5Qxgkrt8b9Xf3SyYkxktrLXJTeqRd5lb9tsif170G3RUoWCBnJT4WwymIolGD2tPFJzv
+08Z4eR5ESsi0RziuMG6/Wc13MBI/LdspOxT8FpFHSEanCedej1Q8BTWjiSBEKIOiuGqJj/Y3e3a
BhI3I1tIqD//vVasT9Z0gKaZs05zGcc+hU841bWXp7xQ+jI7y4svmMeK4Rt7MQNypdMDTOL7SdtO
rhMlvMyHM0R/no6CWASpl8lLEFAxM2iArk/HSOE2R07vcrEML5RKhvjQRBsj1lzpWoLrhPmno+Y9
A4VBFcYCmmo4o2uOpAMFnvLb5mOQFC40stQGtt3jzmwee7wmC6edSf5N68bz4g4qaFJjWrNWyyWX
iafgLB506vq9uEjNFhx1n9teUg0QpExL5ybeJyi7F9KPy7U51piLZKSYK2GuM3n3OwUBkq1REoAq
/GWhkZyvwNb02SkMffWbQSDylPAktcF2fXuD6dhzqgQfvVQ6YZ9p3csudc1HMlbkaLGAAozyoNra
rUxAmcA6bhwB5y2XsHxIRLWoU7tnIXb5vDRyoHrGtHu2HX0QoGpZjOY7ywBcL5M6bivaFdpNH8Vw
tuVBI2i0XqjKyBjuHGKp8+cVVjYBa0W0PnyUN06qleePnxgMom/u0GyVSka3T+9GAlJmBMpEGJ9C
7OxCjAKuI+kLA0RWAtb6RyWOmm2MayxdYGlBpMroO0qqBtbEeU9OmYgfevz3HXTb4xyG6n52IFs5
HBo1rjrBg8Mh3A+Uixuej/GHgJbbx9yMhYoZC54epKRvNAUq1JGnyVOxt1ONaEbp7OC94gTb8Ogs
Bu4usa+5ytTIFQeQfsRfPbOUR05ZK1v9V+kUsrIrcDE/RF7GqHC5ITXkxIDqaiGO9Aou3mTLl+6q
5ZaxfjUzLGDW20WnP176/Y4iALYozqm3V/A49IReYuWL2fZ8izY+YS9+Jk1DS1E5OkbFZuNaoRxg
RJXBo9cQkZqfZEHRbpofoJROuRMyf+b4Qkc+/hBXtHxXz5B/TUqwXJ+TaXZG6hoyv11C0PgXe/WI
qPUFRuPvwKUxi1OVuljCpNwqjrNciSxwN4Kd1KUlaDQnwvBAuvAfAiGziM3ip+9+OIV6tRGsgBYr
tlAkW4X1PZjiA2wEkOUGGJBYcwCNsdrarcgG6UrH2ZpVRFW1eZRm5miWHZREUWWVkR8LHKymp8/I
s/hDMLZ8yv9Bs3pNMrALuSKU4wbkWdE9FqFif7ttUVyuQsQ2e/GNzQLVECO/Bf2SGmYqr33ANeNc
stOsChCOtURqj6qjSYhi4gppRMepYeZJO6D01+Pu9LRibPyn/Gu1Ufclvrvoqd0dQqvGURYk5JjV
oPhYO13IUhspXcdr0WUo8LXUfgGyckEgy2XBSMryhfsLaF3Dyqn5wvC0vwTLdJ8iDfR8nKNuVPU9
v+P4m2YW2CQzQZklBYnxpjJLSRNZ4WN/Os6Ts59hmwtKEUXA5WGwV7/h/VEEhCfoEQrffCbtkFIS
Mw8JiBoEAHUVlNumtjMpG1i6zhWdpqr3U+P5XpV58vsEkbjXh7UyTCIl5Rpzhqip9x/CNNv8EUSY
j9bV8zuKrCrWEsLhIKanUneQ21f+G/gui6DyE17tlCm3PNl2/Xku2/9DNtnPdFWk9MgLZh6tOKmY
q4vM6hgUrEiOS+aOXlqStA99Dyd1M0eCkiVbwhvZ9WiW5AJQjpISfqGlSgcI0u6ID2bN64WJ68Bv
DMdpveBCotkdC5Kv2sNeFa0Gb2IC0kmxiOW+JaV0tJhfv3ErMbk0bIYCH9csb4lvHh7a11HMoaUC
CHuGMjB7LObGqlEx+gHONOxPYHGW4duRNYPJtJzNxfk66kPavp0yAXVGp315YjMJmtiGdp1FXUXF
LFQyKYKLHvHrtJFkjIetkP2qi1oaCVMMjlTBhU4fQcN04FYkMmBpxwBaP/4zhF1S/EPUUyjveM+9
5a9+6+sdWLbJ7S6Ba6vKJZjP4DFoo3NubDFpoQQ6EpYFDBSQwbBHMNZj6iJa+l9jwHjpkHs03Uqw
knR07Qiw4RFxJ094HJpaKDViteYh78nPM1Z0M/9TKfT99iKC1FsCsvAuYukbn8w3VIwaxdtw3HrN
QIrHBHMZVReaN9JPz+IvKmwzDj1Ai5WDmfzrYieTi2SoXIp9SPOuOnkxzqQQha04O92r7j9tptGO
kJ5rfglPb7Bfechphv1AgPMNtS84mn130H0d7M4GzDIu/069TsSOBe2/LUHe0rNGPNH6mliHp8LY
0oQpyRw2rUBf84vVkcxoy+qSsymtU+/hjrOL8qJmfsoEeRJ2te9YpgevX+mOaFqCBtfYdx2oZ2LA
GAYLL6kl8AFTfHCc41dcMfzlILHaCgoy1Zjgx0/QOCE5SSPIic9BycB/Ro4hzowZKngmkSLP0FMQ
4qFprdszMlFNqeBkYXEbWywfcmIGMbSoV9ir+jGN7ReQB1ASyoJHKuenjdH4Y9HU7R7m0aZgqI9X
WbAfu/MkTvp5vIgHVOXyL7GN3OOLi3LtMpGEE3AFO10mgl4w1UjR/klUoFDWCF62F+Q1ya0pJV8K
1g/cqw+iqAUpn9ygZq15bTbcl+e+J6vUeXHjHvMhfEnSTWMzrQn7fylHRjymnC8Sd0Uh8qHfi7/u
d2HCWMxT87nu+meZHSK0SDJmWzP3jWZMqyyl9taI9jsjhQb9J+CyqhgaWVYbbkVID1gBqWZSMH2m
cv7DNHDRhV+d4LF4mlT9jAQjs5HX0D2RDbUseNfgvhUu79MHKe3FHsAVW5fLnn9SK37J9ZTxo2O7
Ihvta+hGH9vbV84mIr5RixZpIofw6NhX+CexNfYK/aPdtJFHYZsU2EZL8ZXaZdST79+q7rEoOcHY
bUF13NNkCQJ29KAbKASXxPjInxgxqjHyigLoIPH3k5/mmNeH5EgUXmYFC2jB/YZK7V+1+gdo41E4
NIso7/sPZb+fBFcdCagy1VnaWhCnuAJA68xCNSanwaZ7qGvBCxYmYGQ4n/m+SLiuox4N2/6xdQog
Omxk9tfeYhXWFb8qGLWJeV4cBE9ingKAhldYYxTqH5R1+EcOK1x3EynSDd3UWV6JHkpOFoLBui9a
SuZQA4Sd9ILEoCbpdyVKp6AYrT+A2NMsQOjVEoOXdIPDJGok0buScWbgsBuebaPt1T+FQsgpT+mI
9LA56HSiStsk4XjceHuu/tI1lbeu648ItAmPmuRX7Hm/vK1plovFXbBjhyKN4E1AViERc1ZUezd5
aLtbwM7DKhaC+2sjzqPAvphVWRfb9BujBAAIynbALpQ2vRp2GUer6CQfDW3nZs0YB3NU3yB229fb
PPafI3mVHLSTpL9ovK7ZgS7ZFues9rXTY66E35OdI6aSSW02Htv2kTiEiGDLa60LynmVSZCCCIJ7
GyLI1LiaefwgQWWugdS1ikFf+KInav+Rwu/53Ydy5PltFiyxw13bytnfbhRdSx3OQrLgy7rDOOW8
oK58B1nmIEqI6y48Bs1uBOa4HB+X2+OVeFHSbqkTFDJl2wIllngFZNOD9x29fmEegwMTOYbQdBsu
AX9PjZ8gXsnFcGPigUzttDqYGiontdhKb92c8mTMGlFEXKhQqkIUOGaBq7+grJpW49vtsrIvMdmu
CYrNJstduPXhFYzFuEKEkrwwSw1/sMNTcLtJYaJCLtQSz21ljnaGLiLAjurSfbsWK6pZ6Ac06CON
TG0If4OkGp6ofd6K4chLRIy+tUMmC2nbiDAKq2AKjXIxO8g7P0LwtcAU6HpgCbfbTZAHRg6l0a2h
OHa4EJ8YrDGH1cNM/PpInYsS3RBizT0fex7vBD/qmJzMj7GoV3hmrW9Yt2+Z3MintS5QM/yS+Pak
WoTz5AcVpirln5SiHZF1INi8moQr6e0hHj1gxqyuSa8c4xkuc5jJI7o0yvW26JFI3QvzoBvELJOL
ZIyg4Z2hXTwwEmWCXQdcSd+De7ESSJTXHWMs3Z97mqP5S8mdiiKLRVABHMVznHpEywbXf6hI8XWX
XtJG/S1XAf6GvRZXVLqMNLmFMvGPcznRrjhIvKPkOEHOwC4rbXZG28OCod1u0qyRuMTfS2c4s4kQ
8BvuJ8dd/lV9XioOj26Y5maQvotDbB4Apj3ucF0/Ncq91l4MFDDlUkp7zGZQL36xiTbCYddiaxt5
Iu3+Ha9uKWJRfRR5nEbJKubGSOn47F86iHxyzHytZlMduDY5objZBxDC99fLATcfPNvygVnZ1Kdi
o1oserZ57JUOupm0eJsHT7HV8tNNCMTGtJ1stkf1WjjWe/7E6Q3huAsYXEB76uVHL9MKbxy1Lkan
n26zskVwXZvUAG2jBtGjuGfU/GvK/X8rGeWYj09f4ic9u2+ucV/7QiSYDS+PxKuY8L6mmaowAu6p
II4Y7MRuVkQIxwWC/6vtREK72AXX2WxeEI2IkRbqSIJKwJTRMMWxtN0rZiqVHOeqho5Eowxo2rYd
kZQi4Prq0RR7BJNgFjvkDqiJ86EG5ozubVSx9zdhVP68xqNff029l6a6vfWRtmoPfeAuoOn4ZOue
/YTedFQlEXtp8xdw40xcfV+NW4QhZqo6t3UFCxA89ayC0VRhbARkzh23upYhZ0Lz+o1Iolgr3ZA9
G0RNRz9FvTx2VJv0dgV5Jy8ue/cjBtY7bELEhNBDMncRfcTdua6IM7mdP7gyUtkRjWjv0+ebEaDn
T+QotKgXligVJ249UyU7F1FMHjnyp1oOF/W0id/a48v/+HQQg3Uar88l2kK3VwFl0Jo9ADgivg2k
KhmsU6B4lVDaAt15umb4CI/XlFk2oybtOS6lr5jzjtuNYIB7+KEjf/RldaKEOaP6ocTg708Ekkmm
Fx89B/SJWBNM+K7MKjrL3AoZ5DA/P8LcgH+0ckfV9qym7xEt394IpPcAqDAlGN41mO0e3WzTvjiR
L5p7MU9UhUBSj6cgHkX67pSjOSPKz0zyCM4hvH0V0FwPYq2IZp1jSq8+ehCXTpoA286Qd4Z5N1Nb
Jy0kGp0VbyHycqvLLjUiUpcgO2J60mYjtzGy1dM5CB4bbHR8Z/4o5wnkHhKChcn3I63H2BUtf+C2
gkL+4RJtPhUm9Cn9plTFET5KvBbrDov1zRnR8HHs08yHywQwSJjBwG2NoQau3txuC17bYMsbLcJE
ZxjgVaYHUKfTHH8GKtnRjCIEPBJ3SctUY5OfuRnfo1cK9bJHrnzet7CQaok1x4fU/9woDU5od3bI
zQdDMYsEdwb6EK9qO3elPU8zGI2AfapzEcGfjlQsoZU40oTfYR9mtZZ+D/HGHXDsVgSS851J+Cnq
XztXON+F9LStjwigqMF06aZ/aSyoNIfVE9WdrEliq543PLlJO4FM+NFEFwgajqh9zNQmrOoIl6uv
mmrWpg4wIk+eycu8orVVe4EjkfQmSlL1qMluhPz4XR02nLUrBA/kk5OWCc3UuWye36Um9qXo30Ff
5Ti0ZNCBchYq3y9oTCj6J7iYtvgJ9q3F1EwWhk0USUDNipwIRN8LEDIHWjpvt/XZZ11cMJGWHqZE
3bn6GVBfm/Jfpo/veq0CxPPIPIk+rjnFXc41aE4gTi4uzDwFcGuyPU9XWxjFRvqeGyVc7uPFFCL6
7UhAm9U2FXSuK4SHCC8iIXK1rZKQbvKLDDSQK99BZYoCHYDFc3EEWNOo9q6GZybLOoID1+D9pJ4s
7xzGjKEC+0IH9uFxyYsTDq8//RfiWNh7ASRMBfAjcTPDFANdYsCzeSaS6KAQVrbs+aoEt5fmCjIq
othtmVpNOgBVvLr3is+Gs/wmN66Up4Or1DKNlTv7xnssd3NpLAVHIe87jd1zWlmIi1FgpH+F7sWo
uJNw7YeiTTwCgPg/oMDY1e37SGjbaLUWE1hH4lJ33ChcD3LxoY/2rAvkbWYcUUpJxUYFbGHyhtVe
MupOYbYnzgp9r72DkbPg8te2axh+lxmeN+EUqQcrmcDQyAeLfj3UMS2ab5ng8y9gbUg0JKIo352X
A+/ClrNqpNdCuNbygc70McKsPCABX5e//7wQSpizmLf73Y6PuQg6kjVwFOpoylu+GnA60CJsbNmY
8+2ooOWVH1md4hODLIONOV2JwfhOQcEWq+QyKnL1q3cHmCqBDCcwYKimsmhdVqIPlJ1/Yuv920o8
Xz8oBAelI143AD3hF3GfCWJhk3MS0Yh6l1mCXLwhH9waFk/3Qgh5m+tRUnc7Pk5dGykgigZtcGsx
AyAW7xZRskAKNqO3zNmzGO8MVQs0dUlMkWOigl727LMM+Q38/CshfjModA0b5q1laFkdLaBXzCc5
a0SqG3RXTz7xGlgOCod5PdgpgO1sJL15McBnGWzttqnz21JwbL2ISKbrXAXgF1vokSOjOPXyR2l3
Ya6IBU3l22OrX7295LWHIhBnXO9JDbiTIJgjVQBCpwkRk5TbAl/v6sWzebwbABjmBhYFLPIB5yD7
/ol1ew9F3kT5rO+2j7UftDNCyGXOaHlVAgtR74Gy0x3z+jMU9Be1MC8hdKuzlAWeL1RG3ANOc8Dq
fcs94fEVZXxFQuurzyMWBfVxEs3NfqjO+RGrARqLh3AhT2eO5s7ubbQ5k+nWIZ5VDj/qOiURWtR/
ld3DHwRfWQ/5lj2DmpfNQAON69pMvJCSb1e5myhpUUce6jlCFr3UsomFoZKi4s4dFIhJH/NlFC8o
iMHheusze2VFJvKgeHOFMKGwqo+cjAgZy5mMvJpTyIRVx7S3ljI8cJM+uHQjNw0QuZzqB613TcOa
1T5pRQ5rKBdjw1dVZoGjcR+iSrjtEgtbQZrB+SHxOeZ1UkOa8zoWPe2RYXzPcjgxTd9EBuPukh3C
ledO7Hl6MdgsY8ylqo8Sa7RIr9CtufZQXXgCSAcKytH4TOb0w4MIdCVnqbTb1pxiLaabA2Nz3HIU
dT4yKk2XabQyWoBwzWEqtPvZCzF6MFXCLEi6Cxldjw23ecATYgwSSEEe9zh3muFagVNEabCRCFHc
M7nMimW00heN64w8eAW7R/fHmnI6/yCaUR4G/mTsa2gAQaPv2wlRF94DYEOh1B/YWt3tEQMXXOKb
Hb0ZNCoF39ZkoIwyPS+WWzmeyBjurXzprXD0OARRI9jr6hgDec/vahpDcs6LancxmShViUYsPig3
5WyQqiAEKA+8fsv8LH8czr4oTMQOkOoqgsE5jsyd2aRcPCnpjB3Y2G45I5Sci+7Vwbsv67Bpn+dc
ySRfjMBYVBSDTIg8lmWCIyZAKBHrSkS0jlAs9p6uVC8NxhGvrCXrNw5YDO9eJXBZLJdlM9NE5AR9
Zq4j8HvZbo2CNHLvlAr2zCPkD2YgHf2+WdSaDIY6Pbl1iADjh10uWo6qU5rOAyMoB+ircEfEYw7l
FzZmmoSGSPsrpnQjzYzeePyJrAw9nnYUbsFGPAApf2p0XEH6Dl1G3kvDukvDq8k9peRi2PC1/EiY
Wd8eX3JErMi5Go3AIFoPsaEFwneATaCmTmET96yawYpGhiY7HoTREZPtFtJwTuYyxBIZe+wZ+8Vg
+Lx3etxIkHGVfSUFUpwLHxosbPTwI8F+KYJR54BVkyJsF9ivorHpwVwU1oelorXCG9RxrLy3KI3l
jrnS7ghJVklTS0KYD/bsFUWGrUPC9vEU3IeJZgQu60/676YttkxSo19TQdl2NaBeDC+065y6KPuG
3boxGx+Vca0WK23SLwR3zKiqJ0CVUxjq2/dlm9Ud4UwiZJZ3WSFOl2JodBF97+NeNaBp1EIvAMxP
w6LOzxV+bSH2GxoUELBvVS+q5D8I3l7ygWhjh3EUKpdl6OEA5ORNqXcFyI+Nus62TMfMMObhHKes
AN5CTeqxp+q52Vmps0bwm1d8AgSnvDoG+PuSLut8s7xVP9xVPLRA4En8tktemz3Myucao8EGnvKF
ZoPSe8PXqJ8FUJJc0cIJFCu/wXPDhkKiJnsxr1mbqFN4bz5l9Y3xLX6JxIizQ4e0ol3AbjYcpi52
rEp8anN5oCExcWdG8jG47sBJwBJHE5EE0QSMw4obzTpu6GX/YrKB/iBXB+z/8pVohZxYm+/BxZRe
ikkHnUdE8u7tUM+IjzzStOCEzhjefWZ31rNXKOl+BpOI8WZ2PXcY99Et4vIIi4OB+gmBG5CaCw8u
APXsdLA66UqqgWC/fURvQhjQ3VrL7ebm9DiuREB0ZMJWS9jeWOO0qTDP9wlTDAj308Kv5EC4GlFU
HPGcypjLEp+BIZ2mgSVW8YsKiM0VW9IA95Q6sC9baG3V5bAewgw5XNK39f+gDh218P5d0vU+4Twl
wb3V1tDjCulZixXoU5n/p2ZhR/E5Ne+s56Y8B/IBHCAaHLEb8JH8Gp2ZeoT8WOIoEK5LHmE/sbQV
++oqOyLjvRxZ7mi2vkVIv7YRVgNP0T/0vWSodq4CZNcuiFR8cqdA+bM6XYZ/79VYcNYuyap7iUJF
xBWBvxNC1G9top2UYZqeKtm7FTTYhBvW4yShI3hLlZxDbIa8WWm8pvXhgsh8ACqXZXG6WFepkBVy
P6yRd4VwFq7YObeJCFTAzNU6gYMfZpbgTsUmOtGrON3plYqt5dC2ehg8/j8M2S/V1unldjWaUJNB
6h8y4Wasuzq7eu0pCEkVMt0kArSRBNET0TZszew9U/czYPuNYuDZ5Uxs/4tJxLtoeiErqPjq/7rY
edRaaOkJWTUnOTDV9fUTh6+s9+7nnmxifYasfKT0HLE8NRPdSZSQLJ6RWzcwCxtpVeALJVVBXgyy
6p4DbaEdXXw3OuYWlAqaqsoebmGBZUbSFajrZWwart0Ri3DlSuf3lBwlfrAs72Vd4L8+cw7D1LGF
Chr7tJOkRIbpcxvGrUdhFXnqIkAIOFhCDf8zDvbXvlBktnowG826bnAm/zgM4GpSEDJSwqR0AjE5
62irZOcSCLkBX4qCvAs/V4LXIfdaRW6FwQEaSbaSrmpIqg2OW+1s9h+bSgM1UaH/6Yk08cIWh1PB
zBAZ6Sk0z/ZIiFrX48wPRxpeXCmX/JLgjsH+YR6Zh/rJJ7m7d4ktq8cqCIps2a1hynTPp7dhX/VH
QzzdmhhObwUQO0O2ichL+ng4al3LRmyCQavsne0BzaUr6x2S14rcWhomnt16+rLa+tZnZ8RM0H+/
fLAoCA0mraCzfkYr4TgPA5K+Sh/P3MCAa0Sn/44pgTn9hVpF+/39nub6sHtYxkD0vTOKtTALMS1w
SYFEW7zE82ctdlN1HAfr/shOjlW5+wzDMgfZCICcWGgZOW/msgb8tjlw3tHiTD+yRHkRN7syEKyk
TjRfVDaIXJbF5G/IjO20l579RK5hAdIOSUru1VVzeYm3L8m5TBRQ0J3rzduC07HEoJX0/iJjIq11
uNLrKBnDrWb8uqDLCNE4XBz3Sci+rc6hEdnUSIT17/gznBOOjvgW2lJWBxhJjpBxwJWQkIOsdTTs
TOAKgHaHZuXLxPQP4ZyQR1Y+/sdK1kuUtoKG4skTBD/DLPZ+SgrVQWUhJQzwxFSved969xPc7eAT
aDoQF22gUz6Hx/0T/IK3n2j+jB9FChncTvYuX6MhpQNFA3z/r5qvCvbvrROmhbvgMiVcXCYIVu2P
oa+LpQulkPSojmsPs1KdgAh5MXI0N6rqokEWZKHNI/5yF1At+9QPDzckHaHAVUER+jNwtL7GgvdO
bOzyZSt0tTy+NQjfW1nSFkO/OrPpagrNynVaEO8USqG+1VJwyQWNxQTpIASCJcSpYlAGulVq4Oye
dFwD9HDWYSb+dGjzAPBJq+ynjnDWollYfyJyk6gHnfansMDPiJ0Nt0YuVkKjlq6RHPfWDrv2M9J1
2dfJH90FmIAZ4vwVELtNsZU21VgCGUTA93twMfPZs5g/1gwSW4CaDp5FE8fO25rDARi2z8Mf6E+s
TgaWUo7rq7fGZrOTTBqYMYs0LrQc/U/l+0HCPVSZV149h5+RTqMB57Pd015O1XY+zFEOZdq2YMp0
B1ltFN+gpoU8zvEznvTH8AuUAQ/iWoEi+7IYo2OSFiad0ovDGPkVFiSGw9JETOsniw9ECAtDcHxi
cI0zbixpfCwTjIUT/aHW1+r757k0Mn1r7HcJTevVdluOewq18E6vgGe/6zBmBwa/DTtZonH/IV6J
8Io+n4eXDJkvIAK2y4/Pgzq51+vjTITxC7PLGsxwNWGBER6yyU63i00vBPwVHr2u9mdUEUHFTR/d
19jyWJXgXA5zRByMVZsTeLNu9UxwOiHDiPtAofe+dCdqBPv+lRLXTXaPtsPadATDOmAXV06/c9yJ
f5jmA/BH0eesOQHJA/AKSihSz7uVRcN79mT7SPt9lwhqXCRVpg6kcx5WarzaybvtIdwAsxxmWLOq
ebUfCjlLJEQY1fXHPRAGDaoiMMFBGpbMaPP/ljQM8gGjRi/N2wD7J25/7AK+GxXCbEmUUnOi1f+t
BhYLkCBReJIbNkw+JXVtHPiv3zLhNzPnGbM7DWctjE20ZMVXIjsSwNOtywAggJWomNPshZGrkock
O7uxsfFphHOJipSP/Ir1JUguvxLReOXmeu5XuKT2jh8WjRLjzKMR6cdBPdQrG1TaT4uzHjnK0jRz
9bBsGl35LAdPmXyY8HhtAiPZ8r0CXPjtBO3ftIJeHxoNrwi+uW6wkhOHaoVOngzFgd3paIat/jHO
7ZS9V/pVdx3/0zYx4cBBLXCyPiktOMFrlFZ7a5Gyh7XKJFC0NfavWSvVsGH8KzJgrtfDrolcmWlf
iYyi2aQ2Dx1FkorRFqhzIrdCV7clrXjPZppiryHu4fRlWGl+6Hg7lN3lDefamLiJj7XG1aVHcf5J
QebeL3YdN9DMXM4ZpZuoIjEm0E9uZphlyDUO1DpanPqT9keUoWH51NIeBEZWlcUqQefHyzrauJFF
Jev9YTaAe8Oloq1kNA/oqLj+nKkTOF1oSMbiM8zlOcQEOmnFrj59ZAJSzUaLzIKfUdlaUk6M3fza
PjFxv8d5LhF8E0VXh9fhTaUSYNRP5gvEi4Fvtagc12MqS7VDfm/PM/CP+CgKsDQkJtPsqZ0gKQid
dLFWLniKh+7Ws+o6LewvlSOFo9x090K0uJYOPTkA+QVWsv2t3zJCz/1zuzexRJiLIXWLod+fKxZF
LqAct4O3HaEtmFoAy4CtyeD39pUNfeycwx/dkbNL/lYvmn4k7vQ/PS/AxXdySEoglscHur3SsSWD
grouxEyd76XvP95E+XF607voq2Z7af/X5MD2s3E2ka4U9s6U+OvRjhgRxG2NocEgFgQxyxWRcqQ8
MRERLtOUhxzIXbaVVVaaJ2l58XUee8Y8rMVXW4ZhWkQZh3xuptV9WfVwTU/A64965rxMC6YF0OEV
y0lZlNmLlf0m/9tB/oE82oUZcjVt/gcinw/U1De6jeI2/VTTFCDfMRtrwE5c9UXGowhZUpp9c8et
B5eGZlHcVXY1+hZ4V4DkJISDCn59+rNoPuo+3+j5vG0Bjw2cZxAwWG11qClAyl+sxLAn1Vsf1Lyh
wES3y4teOeFolV6AHmfoOF4FllSzmxpg4Y5xx2/pz8ubMxPnMIm1qN6AZ5IdtltjShkJYdbzAUCG
OhWqmfEr6dYJJOdvYNwVn0ttKWRD3jKadUQyPA6znTKj8YklhqmwJbq8fjX2k7VNFgBKnac78P61
3RwTriQ2g8DBG+AMAWTsqnx1C/nsedwbs5pB+ilQTtqjHP+dyltdUQMhfmNbfHGBGjVvsIUBt0Hu
oKghJUEnjscV2ft5NxrzUMoA4wq21a69uEg4gLPXCzSb9+FmUO8E5s6JHErYhkUhQ+so2UsoRGU+
6E9yZY5Jk1PUb6Ik5zY1Zj//wqpEQv3rZ7yNYGxtekp5Fd3PLi9kQusutJMML58g5zIwf1HeJHvz
3Wco70dJROeuDgRUNRVBLEA9EmJUWZnW+ZI9U8ZkBrgCTvEoM+TFd0T1sE5H8nYc0+NzFA/XoXhU
rrQJzxb8A0JsU9qixjCSivYkyNXnJsiO695Z/jM3hzJrc8zKkucnMViMyYzIQ0dM4XT0DjGPbQu2
dNZtiWxnm+omMLF+0CGjh5IEFT59rn0Ef8a2qcTBUJFVd9ZKv7buPE+VEgN2cEfPmModBXv/y2Zq
PN7hfJI8KlsE1xtjGg2MbT2Kmg34q68OgZnHsyAmxdpz4tAJw9T9LZTNBlumyeMtBODjoiC1YrKX
u6dcSMjz5N0BA6JYP6sUGZkV+cfbvIVOyUA2bia+HyhUweaDYd9U/TUhYHWxid3hPmow7i3ZqVSw
DhOkEK/dGt8ce1RZvDzoRN6748jYxJj05SOvjiiyjgx88FH5/Vb4FqtpwmK66lQFWj+gJ18JnN2b
N5r0QworGpmqb0p1avghRlfreUGsqdZ4smx5rQV8ZbXVNSiYqrNZmEDbnz0vb0tfAISyxcYBEvua
HuD48ujHMLJUoDMlOpy4LYs18XYYO98cAqPj1XQ7MXktCYD7abnaBlQQAOXx8KTTWBIwRRnZve5u
JOu8rowSxoQ8YVNfUmiq4NhWg5lDAyTxWWa4hs9WAUUyM5JWP2seFJekE/ZCKMnXPXgXtwtHhjxd
oUwVuEVItlqU++tPRp+U+nD6J4wRkCOaH69MAdSZTE5cHH5c3uTSJeTimg8DMy5WGyUOiB1JMJrE
WiGFp8z+w6Lg+fmhdXW3JPGr6LrTwYEseoxQ8pvCpFyxDZDbY/JyRwr8y6R42/H5VlgwaV9DK4xj
G5ZzAeRb69QEXiLu9dk/2OqpJbvCkYeASbMNqGcOsjH6Yn5QEd104BBM7j4u6dcx4gFpvWZOTEBH
uPase+vtdjEs9s1dDxezRjNbEUZquIq6/Iy1HBtp9Xj7SdWb1agpH181Ecb1yFAuV0uZrdD2Yc7x
N0ZUyObLp63LY/KjjrUadbmvdbYLwLgWyf7SXDUqJOiRvB04M+WVBRUcNgQFf61kUtKyICNniEiy
8/h+Y6kIt30VnHNlA8Y6JjvXYd7IJvAsAwNCI8QPPFBUevGme7cb3ZoVZKxcj/aQAny5JlgovRuc
pbGjz/xCd0OhWXmlSK0MRfqFKx7vnMgDT4l+nay5EUxrHF2O0UrAyaInIVaMcQfC1f8BYpPS/jDz
hCX+86btoLJt3a3AMM5Rl9IPdLX+nHhZckbshOVOZPNFkiu0olRE8wwDyE4tMqFzary8p+29rLvb
5QRz6XwvnkEwrZjZk9t0AjmHFBggqkL+swO8qlqYZlA/kbCY706uLMx0NsfmNBDs2oaKaZEpwtK5
VVhNEn71lWjwu8fBeWn5ct00Geu2hSSRyAw5NWL+GjG1ADkTT9k03tVfIEWNh1j0CtwoW6SXi3pZ
SHyR+FIK50gba8ENIG11IZiAYS26tXEPiAX7cOZiVm+ArOGSwK1pTUs5t3R6JkKG7Cw8pKdW2Vdn
w9ZiSbCJahzoA9AS0NirzDzBSFa8cKpT2RDlkkMr0jBIenImkjaaWiaaOILfJYBopuOtfKaXW+T4
qrx/wlN2z1NFu0K1gXR0jfKxtXAmgTEMYT6JJBHh5NybG89+DZ/v7Tt6giBxEMkREGjsF2jflPYY
J164xOmawmwVh/bPnAHH4gwvq/eGUomi9EpwFj5LvX7v2cRMyEAh3+PIwK2oC+InH/VZKvuIS2rG
azWQRRYm8zysCRkm1cozOQ80TwAY8ZCIov8Xi5c9c5shvDqnoXAVf/7kkEL/xMKA4C7L5bdcWL4J
WJ79kHWkCynfc2VyagHlVQR+G3s8KhFJQmTloC1HwxEZ5w5JnvTPNKcEn6OOzwK6psr7b9Cf/GF0
oXdmeu4PU0TDb89tsgds9Y7tyXg8v+l+iKrYP3iWh0FUK5SKe6WeLJupYbOo35SyFPs4+Ci34R6I
MJEvLHYdMNH7rO0WqB0IOJz//tHuo7AQKGCp5W0vuvQJRYZ2O/mwIhUmKFXDIfxkpwCVeEiDN0IR
AUmh5zo5kAcDUyQGEPzeA49le7oFBXk6MN4B/bLsslYKkaH60BsExEdd4o54hIAqt+RE6yTjwBwG
i/U3AZFmYN0gfWznZAn19uhc/F5Xw8gM8CXQ3wqvg9PePrSuVONpMt6Og5vjsuU7rAxbZz98ADM3
hn2buRLlbGDi3tJzYSPkLjxO0ChCmAQdHIKUxgCOA/gNUmqXNjg2hdUYE0v8mGpkMdTBmffvct//
tQw6C3AahNHjRB7slHvNxNn64jlxXPCh5qQoePn0t28MInYJj4QDHxEAkkOPYM0Pe1cDAjPuXqv5
r/zebcGP1i8ZnSVTBrEuEaNOPt8/vCT/9sFqyW9O1NynyKWRTZe37D1AHICAWJeP3SAjw2GwUXgE
6jxqkxVx8S/hAl3EiVKocI4EyoKWClfJhv3aZiYkXPq3YU2ImdzZc/K9sSdA9gmJ4B/FcTsrxKVd
JkUVe6KfunAWTt1lTfFnRVKqzr0kTmJ/tziyXVGOYUI0Z+wNADvWn8ZKE0pCDNQlJAusoEyWu48y
FWqk5oSTGcgdy2r/Ubp3bmqcl1DrqwK6xf+eUDA0YrHjqdO7YZZkS2xCBwFHAV38rc1y/xpjXOVF
RliFGstPRHzeuaRzBXOu1+sj08kxPjmeX0mlZkuQjMaslOODfojUGo7lYIxxEzUiUIrET+X2LWwi
S0RzVQOD+Ef5QFo4l4OcYIlPAWfg7FZ8J5LihUJjDBoFPfV0R9lhPha37r55SER3U8paz4SM/bhX
Mr7gtLoHg+82kuM9df6cRmET0e4fDMIHLBOnVMmpfM7/mATSZIoK5MOHrkgN7bo3ZNMWCUAGj1Av
L8WN3ZZTq9Xz6/XHlApBmROG+dogn9g38isUD1kD12+uFSkWlBzkuG/jYi/b49aXBMWvXMWggs9B
aDR4jlfb2gm0e3bgGwK3veHHwSu+uNJ5mke4Nw1C+r+/ME5l8nJwNAqdGnpgXmXGOv++YGmdU9sc
Veh9XiE+Jm3ab+sR/ehdJnjCWbwGCxoGCYYOmE8HhTL8DxLVIPLdwlQim5RJ7rOOBiu1bodU12f4
Bb3/vWzZU5hsdl9y4/5ENykg6Vrjd+Jkgzdo2dx61t2lTIlEG1oPZ/euUFBKNxLdvGBe1KKzSTJR
ur0Ll961TFyShyqIPNRMJQrJ7krkQGw3VLHJs162OgGORFMMfVNRKNssbw1WmiTI8z5+plOGgxLX
ro5xbdhtP5pzR5ezzKvN3J3RQ6j2YfHeF0ti94U5VClkOOpnwrg4tDpMpABbgR3x9o0SPYuq1B25
vO7MurKF4LuyTGbk/Tu7roAMzkTpjw4P0DKCd9ap1Snq7NyCH576/tKwfAc3zx+t4+nnFqNjyxRz
CnG6cKyqCnLBa16MtqEYzm6Y0H541x/8xBHIeSEXzNEzUAIjyXw8MF9kkItrsFQY2DC8ZkTr9aWQ
ywsD08Qr8Wm9rH06ALMCCRWlZO+9huTLGauq7dtBBQufSa2pJj6zWEXmpsjzlpatxJ9kJlQVgpQP
wu024CRpMRU7PMNJLTcLqE+PGXigtEkQk8HY9bBKNDq72vUe3NGvxma2G5gBBdU3M1Q0BavmvpGv
yuFT+ZQ+dTawLmgvqS0OX4lTefuktjjx3zJU7JUcWKXzKhEid7OroVl29cailgMKnhZlpbKbViGX
m6Rh7RBRguynU1D9eEV6FLvoxcxbK9cJg2y5s8Cd4HKx//lOKfXqPG65KPftEcfeE91X05l3KNbw
AVX9G3Yka2pSM9E0qMYQd3lgHHstadQMFYrAz+uc5sxw85k5Pt3QnEzgwJvRncMVn1oDabSnqgcK
xsoDInpJ9Gjr7s00kUbyqXXducOi/HBUn5/rhx/IyP4oKBv+t+NISM0W6NqAi+H39v70+UpC5FXl
pUTvPi1onwwTXP0/WRs9WHp8JVI+NXXUI+7zCVAs01PTY95CokMz6pOQRXZIHU+jUSTVkgtGGmSL
XfiqUKnP+ar9+/t7jFEypej9IvpH3Oqg/FC8Du+3lJe5aQAWAz8lMogbuIEjZ61GrlTXqF+UyFwS
gKJBI3AAhIwBcGgeuiuLDQ1W3vZHTFTCJBc96IP9ACU1Z6I9bvW8AgchRYi2jGIHvduWvrzmtA7B
pgTFZcRP9h+Np63QVtjf+flas10F5LaC6Y9KMwaUxUPBnNy3pT5afsL+ndiKzKM7pENztKG/tG2J
rJR5LZNptLRq2W+lDKdMytrgUvhrdR1VM+zQ6vS+ty6oBUVZM8fTq8ieeSNSchqzOfs1rznQUnSR
eJ+Lh2dXazVGVPP2QOeIQzfV031eCTkgxeXkkKbP3ovkHDpFXRt/IIX5WojHZzFvKK5TOxQOEYPU
DfXkg8vZ4/gy8u636YN4vmejqKvQ+Qon6q7wAidLob93qyG6fFuhz66b7bXBH1ES3iYKSSdd3nqV
eW0WLyxmxL5b11KNhfB7Ht33QfrrmeOZDz0l2ChdGnvCClyG0OLSzQS10fNwgW/CwTslO2RKmkJz
zIlDnw435rehnEAzwRXb1U8ZiSN0brrcqYCihN1poBAxo5fCwoTKKsigl3ZfY9ZuroBb48dG/eqi
U+qEAZkF3WMNUqoifp0vjTK2HFBEacwVmA5KJANfWdJJV5Fl9Q9AEMBBOvtVMoa62JYIK/dVoWVe
ykUVKkqWN6WVJ7VzLvtlfwVJbL3Y2Q/y6Gf5/RW/PSfPXRsJIHsahqFwByICmT3jk1c0P9Lld10J
aFNEa9Z9j/z+K9zT1qhFtiC+AMc8JxgVg2lWq5ajAExE5MHVVjhIA65a48JR1TQff1Z7MXw+SnA4
0h9PPc0Atg67pKyh4M7lhD9FYgd+Ans4Dmzveaacb8GsOK67EMGiVcYX/+IAIw/KQ6m4JAfliAWk
Ix9eAE3vW5HiIur9Lrqe321eT2ELzAp3QniEqS8wn0oKrWN+yjGJcz8+wfJ9Buq72B02Ps5WGKw9
W+Fb4ru7yIK/zfquMpM1Nbm60nlO6Z7jsNklSvwZoIeQKqZi3ipwTz2MxEtqjVzEkrU9bmz7F/hb
zYRq+6YiDgMIkNEjutrg4MvyTNhZqNRLkpbtRntZZQKcI9QwZIPlX91RY+ru1JVrh1/CIVl2rE1w
hnyhoSdknz9CLbNhksDsCa+tAp1s9GbN2c6wdj6E5SaNs3GhSG2QMdTaN/DWTQGQnoFQYRad1tOh
qLmE+khOaR/glp4+RlqQlDUWTfd4wKajMzEzvZEMNA2CUhW20Rx6/nszMahYMq1yyCPWheamonrl
vp77ICURkaEouA/B5JfmAyEmQn9Dtp+uW/4+VliYfno6KOvAmc/KQr3qaGzjgkT9AudEo85IohdL
yzDCPeKVM30WT60qKRRHZAlg2764cuWHm0Z6sU97iEaI5gKANKQ6aRysquFrXKnWRT7IEMy0EmNw
Mmr9MoBF2GaenhkjQuFIwNIsKFUdGRTd63Yurgzix2KB5M0eSfRniitqEEzss5APO+PK/IyHi36w
rB5DI4YntrvlVdr8tqF54jHeNp2tuTjOA+0Di5NGAsfmEw6RDuw3h/tnyyJVXOGleoLalsSW/Coa
erk+4d+6OlgaB0cQDgkOrfK2BhUexqJtuSlJqo4kw8j6okbQjrMqJNePUN+8DfOUKrCht5QMSIxg
+Jj1/z6lmoXWSf+bHcRG2lakiavtYJEWEEobxnyvHee8NrPHSR8Wfdc8qMIvnpFneO7RRP7/JAy0
dVZ8eEV+SkOYO4mzLFC6PDlSQ1IpocK0wwULj3W9XekQdVDHqbiHm6cUluL0p43esfk6XCFkXa8A
u+V2bUtkLc74tV9Ac/rcdXdQq8rWq4Rgb+wv+nBf4Aq/CXmvQIxtZKfY0kwGYALoWIH9yvId5k8v
0llwWfyxI0kiwPe28036Tcg65dklDggDKR53HJWFeA0skxMluE6dk8qfUJLl/GWAxu8MW9d5lAi1
DfH94CQCAkjz+qNz5/Mc0Oc5ujiQtRgxxG0GvVeIkFoAGDSCNBq02lh5X/FrVQlKKZQU9nySo72Y
lV+MUyMNBYUm4Wl4eGx6bg47QXmQh1M2w8EJbfkXtjwuIkEwQvMP3xEX8Xc8Ke1lcID8pio1mHQ5
PcjghJ864faoUqSLaxFcJrgBxudjwHX7fau9g3YY6B/Ulhr4yE8zI9AmglwfwO94npngidSrFEH1
vxH0WCkyl1baqm2xGFpHeeaBLP31mn9I4pHxmEVSiH6BgkLWTgRyrdwyT5QpQvd3sbZl7VT6ab2Q
SjDi7M3RQ478K0mAMbJaM1U5BF9O2xK4vwMVf2b6NMaCtw4Jm7xP01HxUOQR6Hb00Guzdmbz5ED+
FZUqfEUnOoazNQ8exTbgaurRhI2lH9jyvs65mJp66zrbhbhAKaKKcT3MHeTwAU+0v9OCCDiFyGJB
6zPXQRwcNMhEiS5JfEZVqm/pbCilYTW6p7ecLRVg9ELvEUNpqnOu2JaaD4rUSb5VUdYnahj568zK
JqAG7TXTb2DwKRPR5L2G8p6jedh+IQJdckgj3TzlW5jvrJRwNisCBhc9r+qe8p4N/xpMelHXzqsK
U2c9sXwYRpVwn0zlUuU+Yg2FxIQja/qMaguz8B4Tmefqy/e2Odz8Db81POG37AVadaMu383pgdQa
j4PhmrHzG03/nCQVsfDWpLwnaUG+RO21CvulwrrTLpQHL5Oo2D7K8c6N5ZxAqY09rIo3m7oqs9QG
j2QPEbsc2qWwb/Fy7kf1HijF2Psa/BcqzUK7xLDed4hmAeDFqGFxr9EgwnToqytd+D2Xnwyzz7FD
rWzb/A9Z0T6PQ0f+b3Be3hORqQ1AeUJuJxVNXebRXD4eDcOzJCbLE4SPa0lg33aftk+oPV2jFsdp
M8c7Qf3XkQ3tg2hLxFavHc1a5tk4mjtW/DizHpxtnTxTk5U+UH19Z52wI3jUXLbVkoUUOPIgYUb0
/dQQXxTLLX2su0Ws+39ZmbOspLClkTCMpxaqK4gQivOi+dnkELlqPjm/5MDkDghEzdvikuA2tvz7
TRYv/Pg/cqnEQV5hs6jQYBDjc173mhbf44WrRhEfPdP3gbp0ZYQgK5Eop1QGEc16I/W5/CeCeE3H
32ID5dgV7CkGM0tmTXZyMxP1MAkP92ol6VL4DP9u19OL95fpTvdE7Wz/bL4xR5X3UuYyLdBtUZpc
6qboUULwkLqDm02jlNkKQ9DfmDr5ckU1rDTY6nE7BDNJt/DFFoRShDL+RRpqSVL+eM754AygNPRP
UV5p+hMmASP8Z79053bxZQpE4xJxviIKgsAY0mF5uw+r1KNWiHc/G+NY0WM5PgDw4TT8FXP235OP
sgv+Wdk19BO56L/fYs7eencRDn8lFZ11BJsHXuYpgxKSonT0x75Bibkaa/HMzQ0/kbwcd7NOpf5A
vT+wglN6hKkiMwE003X1YBeElOy4IXs5f94B614HNauYVfpg7wWH2JNjIRwgLct4PXR6Ah93dwSY
evJTQV/UauCRm7sAtABoMPj7CB3GbdMMIx4ltTR/7ir265HAGRYfc5kE8jCRyMeHHUXBIWFhTk0/
zFm4tPZyLWYsWC8vx+rsLbKB1QXNM00ewjwbkAhsaDsIHd3oPu9ZesfwkmG+KjxE7F0AB/Pr+3qg
rLAHofuKKvOjiGxc6awBTWH7xJAnZUUyMdntlmxeA14vcA4nxMphDLmjUuqQwCbXIXGq/BTtytg3
MzBPlqjV0shAclFuQJHU39U8/XHLoC3/QJAkrn5lPcRNfYS5zag6wQJsDasPhbzeITCBTXOnWJi4
SEyhiV2y2CnuBRADCtlQFEuIojrF/G509CzY4uKh4HnhR0XJMJEZaSCBDK2MZpB0sKdboGva4dTW
1ieRQAlpMGEw9gDXp6vMp8GCvNIWNgsfv5Unc1h0XYrmqYWx7gyof8wa3h82zjaRVtbF1Mk2jlc6
6oJIs1H2SM+Zj0HCTK/4OfGAimazwzGFEfeeGbTqBnRBRFnSpW+kzlFnnfWPBV+p3HoN2gkpRU2l
QLtOYMJ/x+Xn0x8ZZtzRX32DP3TL9xIrq0PvAValFDAHqYoScHktM0KCF6c/QAI9xu5tpWZWagB6
yYYkcWlmnSo4Du7w+NXbSIz1Zd/GVM53i/8ICyCxGoal6hOCfWcQjbZONF24B3+Z+t/RssrFuAlf
D/3IANNdrJoUxa3e6pYqDMBjnxgCBB4ujwfSVoYAUuIc4THjvqVmWIm0FBTPBTs6UBB41pEzG5YC
H/fWn1Ehy764THpiXb1bU8EK9ZjrzoqwNb0274EcmFTo9h5w00+vYfacFTknWECapSpSPluVUtro
B5/WdD6yPtLqBGNyO1qCAYppp8fmk+TevnqRRz0z6tJfGAGrM5RX5t3ND5pQtsSaIeY9ZDuJtiEt
MLWNyKHIBLSbu0G0d7UWfVpNWYztszDHo4hG5vA9r+MwIVDAZXR5a9fP/zKRJnOjAgmprUUtcPro
rJErF8elGLB+kq504SIVPeZM4wtCBbOaf6CMtzcjLfRh4wI521JPHJb4CsA56BZDgxE=
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
