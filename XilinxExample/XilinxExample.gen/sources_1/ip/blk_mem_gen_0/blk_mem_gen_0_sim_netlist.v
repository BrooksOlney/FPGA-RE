// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Sep 21 20:38:22 2022
// Host        : DESKTOP-66PI62R running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_0 -prefix
//               blk_mem_gen_0_ blk_mem_gen_0_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25520)
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
