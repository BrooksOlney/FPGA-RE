// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Sep 21 19:50:53 2022
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
TDUh
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
