// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Thu Sep 22 18:44:23 2022
// Host        : broox1 running 64-bit Arch Linux
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
3KACHq7WFTbJkawpSLdAySYl7sc=
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
