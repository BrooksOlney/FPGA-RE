// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Sep 24 13:41:17 2022
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [10:0]addra;
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
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.2196 mW" *) 
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
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
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
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18032)
`pragma protect data_block
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
mC4q9UKznwEQITN4IkTFzDKea1w=
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
