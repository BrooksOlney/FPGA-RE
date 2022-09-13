// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Sep 12 01:33:04 2022
// Host        : DESKTOP-66PI62R running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tftg256-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [7:0]douta;
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
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
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
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
        .ena(ena),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25824)
`pragma protect data_block
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
LIOX
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
