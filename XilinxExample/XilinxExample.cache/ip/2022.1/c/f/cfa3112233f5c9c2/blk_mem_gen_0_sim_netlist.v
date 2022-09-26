// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Sep 24 11:39:16 2022
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
rUjL
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
