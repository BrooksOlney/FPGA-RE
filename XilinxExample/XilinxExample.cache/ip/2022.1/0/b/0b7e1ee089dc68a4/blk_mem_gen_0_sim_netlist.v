// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sun Sep 25 12:53:05 2022
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 35776)
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
