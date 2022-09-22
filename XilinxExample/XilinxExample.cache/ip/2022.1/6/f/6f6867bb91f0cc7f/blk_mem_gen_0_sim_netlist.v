// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Sep 21 20:38:22 2022
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
M1hn
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
