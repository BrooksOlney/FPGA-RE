// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Sep 12 01:33:05 2022
// Host        : DESKTOP-66PI62R running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Research/FPGA-RE/XilinxExample/XilinxExample.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tftg256-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25808)
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
