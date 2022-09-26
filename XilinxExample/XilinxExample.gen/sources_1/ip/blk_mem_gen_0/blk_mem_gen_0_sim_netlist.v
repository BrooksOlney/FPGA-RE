// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sun Sep 25 12:53:06 2022
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [9:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [9:0]douta;
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
  wire [9:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_18K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.456799 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
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
  (* C_READ_DEPTH_A = "3200" *) 
  (* C_READ_DEPTH_B = "3200" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "10" *) 
  (* C_READ_WIDTH_B = "10" *) 
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
  (* C_WRITE_DEPTH_A = "3200" *) 
  (* C_WRITE_DEPTH_B = "3200" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "10" *) 
  (* C_WRITE_WIDTH_B = "10" *) 
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
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[9:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[9:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 35632)
`pragma protect data_block
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
TwPBF+c8LQ==
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
