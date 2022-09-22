// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Sep 21 20:38:23 2022
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
