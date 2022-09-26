// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sun Sep 25 12:38:16 2022
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [10:0]addra;
  wire clka;
  wire [15:0]douta;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.43555 mW" *) 
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
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
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
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26464)
`pragma protect data_block
tkK5r3Ro1HbhhMV3INI7XQI608eG51e5DMQpVWcmNR4K58yoB60etFHXOmVyuUcDoxCPMdqTcY+X
La5lSmKxJz0ihObiHrFgK98WtPNeQdg9tbq1RRupa3EAIyy8UbZkI3F/WTk0WcGkwxErvMDEdZCE
QcqV3uAVHIuFGkMU4AOXPrX0rSz2vqe/KzZngZ0ZBfvtHWLSAzVncTEz1qMqXk3G0d5BnJ9iooRb
1dWSkdnsviu4B2HegDSoS91QLNRmHvatPskgmryxqD/jLf5XW8zYDYTYM7hpZksvx4H2xv2mYsiO
2ycL9UDwqNW+UYN6aaazHmnd8C2Ju9piUjvETJINYMNOoiK5skTzBipzhJvS5xvvjRc794Q6VUED
ytF1YWkIWrSmtW+sxHKMUDw8Zv/dbXfNoc8dAzwwcfjd6U1tj54ih42tSn5J7+0RoLkKnDHjnKcW
pGFPdntnorh9oCRK4Ut7xaqBbujn4pQyEAaSFTsL1X2+/cAcK9ndnI4F1TDYjFCUcwnp5HwhLA1q
7N7xHctGHaSIMFn4fsX/rFzNPlq2QTYgO7ONxVDqiyAZ5iSNtuWvUsQ+CwQa51F8xS54KqRn++kh
d+OaDyAwiGcNMn8ZFu6jhM/JDFjcxP67Mc7dLUKMur3XsarAqxX0kyltA2ucfngxhXx+pC+M3V/1
p3KJGRVSj8PyusUfRS6U29Jktgnnt8clWvdJQbakwhKlkQf4BEGniY6g+vbYvXOmKyde3DgfX1K9
BFUTNY1tvTntJwX87jnIKU9R/EJ+owecaQAXjQmYfDzn2jz6QCiF0GhoM7m7StRJgdi2yVdIi4Tj
HhIloUUZi8qkyaf8okDgrKrRY2W5kZ9GkBoKr4gmpvcBLXOe3C3VDH8vBdJTOYjz9l8hzapywjJQ
WYXZCEQ9O7WDRV7DcCR0DAdHL6ZCjknl1kOw5jP+ZDXXQXT0YBDqWL4mjg+G5VbbiGkESjSt20FE
u6zCBXQti+GVv4N4QvirzLktq4K1ayx7jQOS/oIKUUEXhdCJaQNoQWNOgIDePX+y8RXUxsUIokXT
sLVln4AKPpwbsrDioL+VPx1jr9yWFjfCC21kcFIXNgDZ15ykROuRX8c4NmKrVNNjcFBssZtIQlEP
Ifl2Q6a8WuqVErP/oSKWbsZ6fXOc+fzuawdUQXKAHj7krqbvO2g8QRRCYRWWlBEnH1FIPPx2KBSF
bl+TPO21I/57VWlVDXQERam69gWeGMN1TqUcFVByM1eFSxVmYzJg6SMSsdGwDgGcGZWMsqtONhoF
yADFNg7IUQYGurxIBTYWDje1k5rPFlm7YPqE0QmL+A3U+LCH41BitmIpgyjFrI/jJfKDPP10Hnsx
MtdLHgAJ5EeV3rcAx59vI5USjLtxRd+Dey27WQTcMvIedVbSHkKWbUd2VHx8th5MRWwRDNUBaKNr
YfDR0QvHmOfU1YKDU0w9ksvu+GcJP6Bp+RW8QUZ7qSr97cWkUcHztZllnIMvneMy//bmSBZs36Fm
I0iMSQyjfMRxAJDPTfS+7JlIa32WjOy5zInH0vhLkii61MFcPaL2tCJVgTPQnn6pTV9Lg/S+BmQB
t0EWJ0C26t35Eebj+jZknHCOlLPCsJpgXRjXKSNTqwdxOPS0QEFEJLjxtrM1Kk8G9PY62ErE9jHL
+r8pJRsr/xhHe8VVaUuYYXBJuqZZ2JKu9w/LcMQNDki6+jP4Oir8Y/3wnKsiaU2WGJXubQzoZ4AQ
ahwS5EK/b7dshgL3uINjcFfn+Ll9QD9qGZGyF65GDtvIc+5LAjO9F4Y6SO628Z8vherLC/a8CSEX
NsFnCBSmjSRBghcpmBU5iVysFCfYWBW9BLdoaTHeccgdlZ6k3cDPOjoF7z383OtF36oZCyU13Nb7
ml6kW04oiuPVnaP8QmtOkEiRRzMdzLbOhpbh7BkgHCddLGPML/J1VdCgQuQ9gTMdTno+uN7Fj0Cf
UGtmGsgly9ipp8tt5M6JPvGtYrXjgfvPHez5rfJ9O6BxlruWWRvsOPc9VFIBlLXaed3xAs13EiL7
X0yIEuRqcUm4lvzzrwRht7ag0aS82TgFSyHj7l1berevIIxAd1U7KvB75NhRmc/BLoo9Dc+YaUic
5GkoKdry+dqH4sF2Rwm0AeBz9/uMaeNb4Y63ANOKkTfwbt3jcVg3D7iyhVKZgTzYLMytwlb2ZoF8
fHWwmgidIoxRd25fwdc1Lctfbebk5Qu0cyjKw5OTDbAy9NUnhQvAphhsE/Q3f3KoJAy6otAjckHA
6QuPoX4NODNWJSGbYwZ1wtDS561A2vo6P9cM0nkQViDlWhSzWzBfaQ0W2kzgP6dkG3mmZ9xsbz1e
wEF99W8mkuV651gp0nE97tyjk56TRjsMnfbPrk+zES3/zblmGfX7hvQXTklj+mobKg8Sa83Il1eH
5FztIH7SnIZAdnHfhwpL/vKvvICeB9r8GCIIBL/vTnkCEcxdDP7QYvfWy1Go6GOwu+H3rJnGYOVb
u/X7Ob8uFaNQr35iwzUlg0z/0m23d/LO6Y9XwIKwfgxQF0YXm19O0hc/VLyCHklJ0so/gtCYN8fK
5AWaYzgHKKjnrxsaL1PG3CN/L0YOVLoAlYRK+YmHxuorxzYjlB7WUrlcEVRmNdXBPuh88We014Rs
+JggZ+k8NkqqTMKaZA3/vR740jVD7xcOM1KQ3pjuL2Am1NAxDG7Tw1ZJbltLRn73BpWbJ7uz6fdx
7NZhH+VzARoE6kCF44HWOur+L2weivn43t14BQ3/Z+rZ4e2ZFi7pdtpRu5W1kJvn2auZgtzqEu+q
UoeP2oQbk2e6IkNLTc5O32V2XHXcRtdczVbVHeByaOV2eSPVvwGPkOzfA1D9qyPSdNI0Tb16RSgU
F0aswCUzaOOOaAOt54z7NAqqW4DYJO2f9FruuKYQReP5pfo90JW2DFtdCspBOdR1fPEwShDbGTfe
bkDv2VxeS8Js0JnGlctv35EsDXtbOMeis2luviiSJRjFEUVLuW7O5sa/gtKxUh/0IBflteuT30t3
RQMzyOgbTmv06M5HJzC4OpyXiPfhS47XS1uy52Ao6kiZkWPxuNJsIijw3vzMSCkWPjxvP5XjWIsi
Ck/f3X8kue2l5znO5eSjttTAAMXIbms9c2xstR8jhShMHTvHZmYhyTQEWy+pAb8fvJSVZx6giNiS
A3IqXDqSPFzwz1SYtfVBfEVc/m7+1JwHrKcXVbj2KdkXpU2JC/oQnCMFuxM4fHfQNCZjWiuooiwN
8ZvRsBfxYEMcANZT8S/9FCSpz5Rve4RGESmyMfCOMWZlQT4U7FwWJ3jJ7Uu60rVl1/hCNAF2fs/e
FXV96y9MafTaItGIu4dPKMrAIQpOCgKcaEpW+rHlCZh7iRy74adDOV2QXItQz3sbEdZj0rFkGVnq
Yyq0kSSC18vWnikMjxbb9igrEQ7VOVhViSPOF0MVffs4A8rHMEfOvrI6rUlk3OoVS1sKoeAQdLYf
yGQLFw1hsl1DOi9lpbC5GZvE5pTzIqsE/86ABXMY1CW2F32C66+V0BYFYRO2kfMNgADxTs6ng6X5
Tv+rS+FLwgrEkXb6W4wzx/N7EYG5+dK4kQDY26oq6P4XCI+fAsiBVjrY0Q/OyT5SBDE8O8Ehfqgu
waFD8d/pfDhK6anxJ0/5vmwW9mdtvRrujv3xnxiaDh6I//OcuqXnooZwYO9SQrpuPsSEnmNRfkU/
Vg9U6Cr3Kf+50OR6ktTQp4GpRaA1B1lbsf4ESpFHMe4ZBtqL7j4k3+4LSoxjVBXPe+EtyoQxQDjz
aMFb5sWvU/zDLM010kHf27NVT4NupYt+i5tvjrJcOhD3J07bTy/t1eUe0olhj0cVdRIicIWwNTi9
zQNOYvAFgxdMrRCsh7lrOLoesAJp9RI5vdcjI5BG0lzbT1n74VRshpShw2FOKeRNNDtd+R0JjQkR
A9X9cSCoRg3bHhOdXFCcSVUdeLuJ/N7GuaabAx91RxKcg3TzXoJAi2j0U8NMeIic34c4zFclDlqL
Y0ad0jnz0TV3YnfsU1aFysH2M/fG+nOKoQtP4tYHa21R23mRZ49dj/SD1VmmD+u1Y3YFbPKKDU+S
dPoPPtBPzERSEhjqWsjRs00Ggf9jWh4LRXUF4+Cw22+cRQRTdq3WZbTHlDGDA9IzitH/4/QIeNn3
NH1gSRpTcprsFvdnIYOPRmeGZL5XrC4TFHT2SOaLn7K5i+oBe7e/7HoxpaRlLcLPDg2M3LFFNBhw
RMhobovbOJfJmBrpc9kZSoCWU2UQFliWUPK64IoREdNGnt6kVURAei+4OHW05hHrssvF/7M9VI9t
3j/9c2qIqDKO9qqSKv7WMEIeBhEfgwJmvvkrRfK0tL6A6pVmtA+YLCtNm1eVUE38Pwuaz/5Zri6l
gDAuXgNTcP3PrCGHjdUYH+rY1IxuHgC7ybifJc8D0phiP7wckMdPASv9xuBqYcabQS+ea/aFpxgb
OjLInU48a7kUBTsSaHwDmPNhTFdxzaK1iUE5QcQWX+dq8wmUZyh0cMzA/IgzF/XhLg3SfgvZ3ZiT
8Hdly4ftwwCLqTgSmJYvyeEitec3QcgXCSjWwEBH40SSZQ2eD0AZdEic1HQfbAjdlPsCaboYi9YS
lOQk0A0G4DX/kj1DZkviC3+3j+I8clJ4oXkvT9B8Y56MxnlGJoFjYjibO5rtpjkGOhmAh49iT16Z
Ojc0lnAjxf87ltzcWjOn3Guyngf6QjXf3cIs9CmokXVgfjguIV4xIkENRIHv3PVDMjJV8uEUIr8x
8UHHB4G0e25LiHp4wCgwTXPiPZ/Q4YGMJRK+77ekZe+1oLO9RKSeSexPA8SMpuXzSY7Xd2ALtldH
LpIkYmGIjnid/dr5U2vta05c9tMrpzlzplrQ3jNtEvCahAF5rKCNRN7bOMj+x0Pd2NhusiUXxXu1
59FfFePQ3Nn3q4dCHm0TOZxf+VAHcscL1dzawa1dMMdBZUNvwBZXVpO27hMNboSAQAjzfhRpQ5m+
xnJy0o+J4cyGz7YSvxIE6m9aBQ751F76A+ATwYhHFFygc19LwA5KyvOPgf4yCyhoI5vXxvsV217l
y5R798PvOJsjoRr19PFEE3q0KWKSbP3H45hmOhmMDq+IYQzOY+moDC5JiWfgsvJDSrF4sE0+5Klv
FXTFYKzXXDKV9kgwsxoql8RgtK3GoTfSg+SitxBj3LpF/ELBj+ubIJjlal14jW8RVX0dD41ZBrbp
qhBG7ToDN52Ro5SUX0RY4AVwgWoiyYyZeqxuZBVUTpbsJHTIFP14OsJVgowhwF6LqfWK/UcMK1f3
6a7si/qekZD5uCfIIf3uIKzr6H1mkM7ArjoSJEUcg6+y3VyIWonyOSIirHIzF5MrhhPqVoe/D0Sl
N6u7/w5/1W4klcdKfcHY9uviGBr6wMam+BNMMzud5uMoTEk8PIxJOlDEAJPHy7SORSf7Rm+E4GU2
Z6x7hdHfGtwPZO5fJ3LR+i6eHJ13ENYH3Z7NOpIjIKb/dicdHc9vfn9JyDnj8XwKZLpHIIWjZ7Pr
4Zg+zzKzJkgQRVrNVZUHW0dBsWpHcPE586lDPJ/epwWCIkLq9yuW8zf9sRMKLRzgVK4ZXYO8PXYb
S6OudVODp0eML3kdmQ036djh+yhGuVR5FZ4h1gplMALsrw3OkpITOmJlQ+IQ2bpJoQSkkg9rpSjA
Haj5E/o2H0zCTgS+9q7Iq9swl1opFi05DB/cs3GvhDQHZr687lrE2vhqXHAUwueA501g34XW7oB1
bLiiSDNBtnH8c9osiRpFsRUCKg0UjfUwot7wmimW91IOSQeNAaepiGAxDOze9RWh4O3aXZmlP6E2
2OaaB5qIMY7U1c9vcjYGc0Ocej1obdoAS2zFi2CEOR3FmDfXZEfQMFjdcTCr84Gms5dhPwPK8Cr2
yYb65mzc7iDk1eiQiI8nlEFXs7FHPwrlXCa0P92AlnOBOftXWGnjeExvZCxGC4odSnIw5583shFa
czE5y6FB8TKDqTVD4fdPEXVkD3tKIHpXnExqd9RKfxpyeaGA6UpveOKdiIAixlRMfoYByj1pdXqS
doPGQnEPh+uzcQpPk4zboSR9mqMD3TfM21VOOg2V9O8Jq0aNA14lXDlq5smdxfYf1Za1cYjo0tJW
f5jvKsAIljtglIc+Fbf6qcqr7zbksgqcSHAIuGYHMFhbt5kHwxy8hiL6Jk38xs0BML2xiN8BBLGA
hM9ESBVfcnacWgyYwkXzYZwCDMXPhLey9mshw3ePS1XzpSfG49iigvSuIv+zEdmgQo2XErODMjvm
iM3SN+GJiTvytUB8mMi70CSvq1qfqi9LzOzy0gBOxAxtNrzlT+8/cA1KttXwb7SFpDLLVnBw+idU
aaVZdGI6gOv3AWCnz3+L2mCVrRJto1MTpHj1o2cHJsXygfHGTLc/eIJ8SBJRdAF8Hrj0Tr/1v09Y
thf0bQl2lFYIRrPpOejtUQh0sg+ZqpB4JQZ4FQskQ2/C/FvHPk93ZXd8CB0MTgFID5Dw/zjkdNo9
LGIEUaXi0OeWH9M/WaadXxrvU1x62SSx1HK1o54vLUHgiznmQ+udZd4FN78haEyr0fcGv+riqHVq
AVOYE9ZzGn99HXjdceWT9rWp6c7cbpOTLRuAokQ+nmmhXWwHVqmalV17SSvGeOjVO0wBEYlbzHAQ
iWNl04kTRMDpLH43SkZcvd3ZvUALuBqG+1/KLm2rKFiFJCZQh9o+EYhqtMoYCuv+/S3acRA8dImb
pmH6HzZEYFz+qJcFxlqML1dAbsvzAviorH7RNxzKVvFJeTrackXOp7V9jrOUXkRkoY3Hz6lx9f0D
fXUMX1BKBG9FBASZwqVRT4hBD8wkwsQ2pSYzcgHi8zUADBxExbWNdkxBwkw0tGhjJOhzglKdfokD
0HOK8xuLeM0UDJGlVHCpXM6hlWOeasXM33xezQO5oFqzOulx0rV4KGYlR85YoAGXEbipc7+NJoYL
x2pBmhWa+qkFyfDrFznKNm4qva8zzk8qv2E4BUXHnH4+PC47cdyejtFlhEZKeXmxJd0oiKr2Dyjr
P2DLbWtuZrSMlLAbgTM7cYTw7aZ46DpVlBtwjTnH+nfPFuNZVS9nSIlGg5FR6qYBgY0cQYdgDIUU
2IiaMRv0Mo4vWt1Ayj4bdyZKqmFaQImlhHIuDq+JNW6oYFXCfdR3fn2+j1t+dBMOW6wkhR/S/hCO
jPZheB6fEOghn6uwj2pNUP303gFP30IFZ9XvINABOmB4thcJBHaRNnZv0T+xAvhWYqfN3zQamL0K
NjlsNsks5Vt/XIo260jIHpdd1+8UcA4vDK8nvYr9LxFjMzxewN8GcZmrYAU7R/VX1RiBOiK9mXWp
1WGhR1FCR6xNYyxKzI3dU5qDknxDVX6Ye5UMkUWpHocweWd/6q5mQeP9lEDd/KfGGPX4KpefuEiL
Sd/IqUk+cqfuWD6fErOnRMaoa3VOAKC9oLCXlhT525CiYf6vfYXrHY5wFlJ3Tkm+DlHHVPm/Muyl
0XlBX4CpgKwJCtcc3IoHJ7t5RmWpwEFd+PK0DqUWftqRYII5nh8H35xnFt4qc7lTApyt42hAyruN
1zWIX+WAsw4JY+orQLTY7L40RmfuPKdSb/4QMj6SBvovxXsKTmX1gaqyatpNdtpxahUUAqMvf3tQ
s2nGHcA41g4x3YnjBT1AlJw1+hPpCr1q1G4E53GLxHftWWUtahV8q/YaENAdRBTEN9fZ/xU3ttH1
GkZxfWh2oq5eKYbrdcwC850pZXE6fHOtyGOKtC9SPHP0LuUn5t0GrKgNUGOyWUyrxcv0r+HcGPKc
i4F+KhigexFLzNiTx0aKvzTgEEuW0I1o3IMfrPOn6fj5uhmXezYJWEEFoewD6l85GlT1u2r5Y0I3
6MEfrlkfFUjo9qWGIBI54iXzPhx6aELv2d4t8RZPcGxL0koS+QCEXD0HN5uABHb9U1VPFdfOo+WI
XpoORzOJrVGYSvVxXGxvgKwTd+QMlKrR1BLiBGHYxDTEO9NIUeZ9JVIczaQz+cKgKHD+qosYrYD/
aIY3qBF7QZ4elDZy9QolmLCbqw5g9eN0IKwkD358NScqmwHJj9Z9c0Qp9Bjcv3goCgdi0ecrZO93
7HWnczpfLmTtfJxYRY/3X3NGm0aBj2qvX/FTujkD5JyQYl0V7pyvkhU3cAjPAgVSmG3K6Cr52nqr
TVpnQBYl6iSCTct5RU4nxt+wFY+MvWDrhlH/pcw2DkIPVo3bdLRrYCKld98hmH5HpTCff+odgJh/
d+GyjD76NDDTUKIyGXFmAIO+dzM4foI32Vr0hCnSecLcl6V25nVynaTvh22l0ZrqcfvKs9j/fEXh
46Jurrg08gkJ5ybzLuDuKG3nusXbG3lFxL5BCCu2a8CDJ0gcYVVfRgjPdRl8GzCQWpb2YcJVgZHo
5JdIoGHAOofwAMR0wi4yqAZYLCPy/I1aDqzVQ+mmLz7c1x5j8fECz2N9geFeshRprCFCG6P8XDKn
XHxyUeVi/pGYjBQ+mLZZm22p0Nce+8G/Yv9JiOgnG/Pt0EZMO37WVMMu9naasmOGVYhLjyY0U3uj
Oww+CHq2zHL4M8ESnDWR5JoLSFzoqXa3w7BLSwKT1ncXTd+2JKliMMuziH7Et87IHahyNF47lY3z
f41VH9viztL/xT32NtzxwBiVeJ04lxlC6M4q5kHq2YZB4I6nuVYdmlg5TICZYve2JsL8QNMmpbcU
ZQDtbsuj7iydo+7FvaPiWv7sW25r9nwcHSo9A9VP9TIhapdQumqB1XqR5IxPCGkmB+T5ITdOwfHp
sr6di/I94Wq8MOiJw+Yy/6zkl9yfi7WAgVDCEOfTQyEuHRiXoLTpGrC+B4CqDmWNwrxtoEEwPe32
6ZtG5XWR/KsaVSvm9Lq4WShBBT3hQAw5PB0TOTxoknXecSke+66u9hSe8gMoVZVS4Bc+7XBxTbAc
OBd8YfShATB1vxgde45PaEciV6bBAS78RUOSdKn31OOCn8kdeoQqghQqU4qeWuxKyN7uQL55PQMw
7Uy4OsteQ54eOMSEL2n3KUDUZz7Go6/0Yb/QiVkaTzbM1HA4bsBj210/B64sQavew/2dh7OLYMrx
Jyb0NEb/ZEFQo0eWjPdKRXKCu6qohNRWZV9op2gFIlBNLgWjLRSxbxTuLBdC22nCxBIo+WW/l1FN
ORif96rQc3X4y3MxRXQ6Zk+UB01XO+XBG8+WckDyDgCQ8L9U5X28lP/3VxKV6tpcL3VIu5nIWAT5
NyUeJiq6JIudl3xTtCOh60XBJ6Y3Ln832WYKGkHjGQnxf4bBfqoFnOMEnHxX3fJH3JjzgtNlT7eW
QuN0GFPWIgzQHGp8EatHZlqQXoc8owXf/QC4jJlK4W7zqXm+maAdtQ7LcKrpBIdpJT1Oc2RYa1WZ
5yj+6bF4oae5t7tdVABngQmAsJ3driu2m8nVaa+NPzzTlIMNACWqaciGg6P5/rFEROdE9Qinaf68
0JWKnLExEQiYxVFCsiiZVbSa0cKbWRkmvIneYMnx/hFdT3fmLfQQblY7Smh7lM5lHBjPOGB0Uy1W
rEg26i7FgwM2ntO9wDuhcR6RSQTmEyaI32cSYvuX/nv9RTo1/srSITBdf4bpaxmrDLTxxwwz6zYG
pQE7AMqKhfH4KHW61HW60qY+kscF0sHats79yiJW2o2nJu1+5+/LwpG9P3hz/4CSU1E1QOoQOCOS
qzoFRFFxrpGsM1WNG6ok+f9Me5BWbn2OtgxC5DI4L92NLzEXOCuHXcPo6rFquWZatWQcsM2XIBCb
HOhy7oFuzxko/DQIlilcMZBGmUao+GPoOVQRxdez/3gexd/8yWsoSpaD76kW9t1njqwg7VcniX6/
WWIaXmmUhxEJ4fEGvtGDCso2Z1APBkw2fk7hqm7Py9gfNonBd2skkrLy1VeiaohiQYVpd134tZcM
K0TG6TamsCW69JMWVrqVfH6rqi3VsxolPe1r3uqcJ9cRA7VhLx0ow6ff6pSRbxEUB+o9dAM8V6BP
IYTzzTYhEVNVoybQ7SwQy9oZS/h3TcJIdYCm1ZkmPjtLAytIEEnUq5p03D9Gh/q+/Uc5KrCu9ZHi
FuHd2zCFnuGryiNkVVFbJ5JgPwoTPbH2XqV3ST047MQ7WGwk3ymP22L6oPSlSETDbBlGTEeU7xje
90j7NpPEp4GI5WzNvia6bnP+4B4hrCVwwdFDtZGfxtPrkr1BYE2vB8JNsOg5Ja6ZG3ocokW5RGSG
UhMqN6V2GC4rMEa/ZesVxQEibuzuhGwmLlNeo36s8yHflslCgVD5vFmemnwobZ1YJwp6xZz1g9Aj
ISbghA/k/ge/UbLj0YUpm9kjEegTvamp3b2iuUlktuVt8Eme/UYgZ1oMf9gjkOUgzxo29Evlgbau
HhbfiwAlK02GLT8uLL7dOD6pyO0WzKOI5I7QxBlnNQfyL752b/02RJWqjgFt9c+B4XOwN7XgRjck
igQq/6KF067MzvKM+/zt5Uztm5M+JefqMQ1W8xBpULOtiFcVnY5tZ19FqVsufhDgp2OyFfcQN6Xm
esUGtwhBsuAKqtx/XsSr4a+EJyDXJImKjLn3/7ysJ6x9f2kK0uKayE4DGuHtY+AECm5JGRHTDf+L
S+3ZLVUIxiQ1ew40oxubQPSmxkqgVvSFAS2DwGJLEcJzTQutqUhCEYCh8Yxl2mdWBuLaKwBurzDc
wQ7ZK9tqQmfxnjt/Qx1q0q/YK3J03aeI6MNeZ5gdBHDcNd8F1Bio/F83PScBttc2CQHfvMlXXb1U
0WgrJHuSx4DOBrW86iEbAApq69F86XlKqJu8CJq6MclA3JMRXkwxjMKtCi9S5EbjYf+jBHDdJFcc
g0XS8QuUty28eyHWKpxSvCGs4LhbDHAvEGbntcnVel3KMUy+MrjlKI9Bha9+gEC4cGmo2cAwxrDi
9YVSUMd8qqZ14d3uvsD+qBMY9yXwDFvR55CNYGhsCe5YWLmU0EOvirl7Dk65rN15sz35urZduA+K
AwVna3x6wyjReDrSpi2wcwJ+W98OJwONdAE6q0+g7xWuljlbUVlh/TOti5XiYkJt9bWtBBxKBcMH
X3mgjCqduYJoeZilbvnOVHoOYKPOjA4hxk+v+O71GtLSL5Up7dLiKiRrNuGHlyAa3cZN6B3pPHCL
17AqZy6eIKgycLrdOLPjQv2ONy+7J7oRBSI8QOJlECQycGMbalohVAIQin/CcMpRzx9FIDw4rI8m
cG/ZpJm2+SeECzxQfXjx/cfHuIbNi5XmlWdAi6yaET9izvdIdeGP0748K2FBp1tlakVH99bgHZCx
OtZoqcmy4xmHVLmjuec8GdCFHirtnrqLTj5yXEMCHR6F4lAkrF/tLJ9eVSRWXESZhAB8p4iNBzFD
MNFIl+S3Ybtl0hKIbMTyeSaWupZuELGQ2c9B12eo6DsmKo3HP9A7DwyozHYEQKiqUfT1vHKYovdW
crCvss6QIXCKDyw86DTQaVNpHToaPrbxQHam6lg31PpudIgFMJ25TyAlXSiD2O3XIA8VtFrxEs4m
jTzMpQP9GeST4tLf9iaR/xivHW+8ZMn27DlcHb9Yi+/V+ZdrGHwWJ9b5yIz7jVfuHMukTTOoEYvH
9+ggvUDwAuM6L/k7seCSwgCfQ9nXSSG+uV1ba9bEyW+E09rK/Z42xLt0jB9oDDpqk5h1PW3GFhTI
LYAsnb5NT4BL7ojvLjKIW2MS4XqIVTusA+Ghkk6OjHuErakMFL0Pv38sCJE6Nqx4GM7e1gT2B4TG
+dB47b21SQeLuTKdalQUayipNKzeSgsN7sbRSQUHyxEFgLHvoH/h2Be5hmcZOSmKUMGEf2DPjrsY
8LGxCpbfH+i15sb9hoBh+Or3PSTaeHBS8I6md2D4t43TZplLNtUfXPJfgxHESXXqcwmeZ9nsFtzU
Vx+rX0mzlIVApNzjfZJ+ImFmim9Ukqb3DzvVfEyeCWMmSmS++7AOcqDMRhbcQkuVLaS6nnO4s02A
zXLH4/hGvFebcV8k4Cg/cH8LeTq1uNkaf6xtnNWkLKj7UrxkJR6uvoGPXcw41DdBlQU4AwfhEYGH
Ij3il6RDkFzZlizkNTI/n2dHtWLSsGD1Q+6LxkZyrzN94UuosWAou4uSEcLjnkYakGCxgEbJIA+h
F6SKpILgKpcWe+jUFUVa5KwhagHgibP6tjARmOeuT+b49C9jRpq55HX7LV5GsuBpRaGGJjTPRv5V
z17iWcW4iDGBduQZCtDPz6iCqAk0HRqC+GmJOyNVGd6eOM+HbApM/vXYHanyIguT5vuXw2YUx6Wd
U88w2elO0xYNzO27n6ZXWFFnYYYYtb4/azwU3BpVHigR5pRRUtjV+YoWQw8jNJIyK0tzs+G9eksw
hMDLGU8Z8CEyb/kgPw8s0rI/HYqeIoeDoP4iivrfmcVHZeEEvL76mgrGY5JVxTnnZx+r2H1JqaBM
mYUHILhR9dh6ECsk1/49PaJAU+4kqLwCYQLTULh7wxqXA2f/qOkA+KfkMlNVYAyKEaFghDPqTNls
U183nQdXFhdDKgbEOuXoHA0mwlIGrei7osEK7/uOfEk56e4pU3eoxI+uZeVmPt2nyAcABDQ323kB
6SWsMi56P4MDBKd1gpG6dH5v1szAuJ5YbOim2ZXnDyUh/ov5H8l/Lql1eKzu2rMX25OCwhRQPGhp
t6bPxrOeK0nd8npP3jR+mea3xo62UqnFcKuxyQGFNyd+Krt0tG6ub5kFLxp/2z4untNodS9A2DYs
Qi9OJZxi2ymj7+VSNhPl5yeSYWbS+NtYPTvKm6ZxZQU/6fThvqhgOXUh3LkmaVf/huTdVp658W7E
3jZIuMxSYofWVVTxGJrVIhINredPFsvm4gcj9OBvViL343sRk453+ZVPSVDQZ+L2Dftshw6QUFtJ
zvLKv6woKwg+jWzxexWoRG4tnlA627itzkgC1X1Nt78T2OWGVoSXi7/xJ3AHKmd+XrX3PGqowFmv
wWibG7Fw2o6F11gVYJOrei0FJPfp5akSa0JCoIXI9GE+3dFzf46SJtZv2IQqdkQN2IUeiNQWPGv2
vnPFXzRSeHDC9toy1GlqkwrBjPyGsV8KcgdsGBOCsAEov4ZTt49YeEXpRtzwMF6AiLcv/C3MlQRA
otVyHGd4dauFdIi3K8PnMFdRlHWBFWI4VFyIMLBHXVRC0wUdDfN2uMIuZHHuAyUeEb1BYXZylON4
jBeYSAlhTSK5ENaW/+GqlfGIUs/gg4XKZcQzZCZg310I0j8XoAXtGq28kNxdPPsjrnO5/O8+qpOp
xDtzAuaAPFqDBFpotv0EJ2NM53JNLdrkJmJL79134NqTjo3VNsovWZqBhSLi6VNOO/KammH7gMWK
794vbYxsIGbG4LkLgN1wmnELNWISLb8JZvzoZ7E1CQseLGyQbOQ6bAQInU8ZEyYD3ATT6bAnc7b2
UKV3FVJgCuGMcxInlsek/82Dx9gxwFRTnY6TODnkknwn+HLX6uEhxgnEypwkUE0dGsy0G+/98TTC
wtvmrxrf+wV6ALQSJC8z+hSUeSh4YLJo9g1XZFpI5XftIjL/vKk5I/fnDEn/3CJSPsoVOZpH836g
2Js7mBsScdlD4TdNayFI+chi4NZMzbB90vuyVEzDZvBqysU/UHN3C0K5J7zFT68dGKSrf23T7KmB
HDsrI71oYL2H3PyTe3cvKiia28AiIO+a6R4Unj0X96buSmE5r+QfWI0/lv2POLbv8m+S3haXWFJn
oiyfzADp+b1S7pmr4nRDqyGtpfVivw8/IFaF1bkLGvvaq/r25Lr7jzhGWxAMe1tqBx9D8dv8cvRj
iLYoAaPY9nUR94qoSJ89flVNlWuzf6DeXmQj5Bpe4aCb3OCOgzf8yXTrLDRYou3l5MIoV8582+9k
BwYK5w21idD+BPtfutv1n8t1jZx/P3TDDPpRkhVZe+Vy2mCX1kzJPdvKbhpLXJWD+L3T6FnNvHek
Kv7/me8Za0GKfwc3yHN06CE573rwQHCAdtMiuJ/gkWhPoREUIuPi422SGzgjR4iy5EU/+CD8jBUj
OA0sMIuml/t8LcUHMHkf1MM2RZqaYIO+e6iN0sOCZsMoWQZKxZxWs6diSaJatJZV/mCza8kWy3Ry
3EPuKoEoVYqfEqCtNGYLuIjzy681qnnEvKCK5ssgLA5DzT9Zrg5mB+Ra4sbtk84/cccA956BXXAi
bwE0IoOoOQgndqdLLS8wPuQBFAWGvWrhZwGa1NWNU/y/ey8TqJKh5kHr+WvfTieGJaYmXbwC1N0R
M1Y3oVUKrbPd7Vs4xkudykXxGiVWLURdvDAg1f7NIpX9fRwnHoz/Lv8nrsX6vNTvWp2tN+8YPV+2
bBCIqj+QP7tNfc1r2NferTK5XEVXDJQs5v6ZEFHtadwEr6kgQ2MSl2XM0nVaXHixtMJD/Y1m4JVe
6S/99xZlqMXJ1qzQp27b+Xku+zY6iLZC/GSnDztWWURzX+CP3FjcYhQTv66+pFE1U3FTf6/GM5gZ
jpkPF68dj+z25/5ZQfbsh3XowynsOYfFPXKlxUZw2NMUY2Yls8fbhp04qVHfi6fI1OuFSOPC/PWj
Kr/Zih9trOx1920LAEGOcZousiV7WSBEEPXHrVVQIERw+rjOBOaEJh6rJPB7TZEJCnqFPnH8+kqr
hsTCW7YnyyrHtdHvlQjtxeDo9XE38yF6eX5mbL6MSnvhUH9KiizdTiJCUdzJ+i94o3gI1VVmLrDn
9oNKTNtVaC5PLC6KJEbk8Y1PjeLpzxWj94ncrslr51pEQ1td9o0Mas5fSM96rpUk3f1tjKHaP0CM
/7SDz63X+bemnwJFTIoK5EO9ULL0IdJdZGDy4Mnj6SwZF8BhxNiNtToRe/kq+1/2bQ5SpCEsCPH7
24qC6qL3JnW+Fr4pCq2Zd55fJFETia476E2ZylerDsP/0Ddn4N3gAH3u8jlhUS+7lCrkmZL+zhm3
8bqiKhAvlefRdYjwqlyVKS5cgTSZ6adWHliDRksieR3GuuaFsOo86vpe1yqESNmugvfH77pvRbEZ
5f5No01+gv93zpft8ruFbd/x88npvER/JvI2yVAKSje8ePtcUZhOh/y8acyvfmWWwc1LhyQVCORj
OksiVFBx1gGJiMwDIQMYyTrLXYzUksHdlBYH2+faLevE0rnB/eMAcviElxY2a0+GcjzI2COH0PXt
bxsTmI/0Nexg7q6eikabObE3sqgmy4TR15e44GK8s6mxp//YrpDQlVhLmVqilLWdg6Hu1bR6KHx3
XJlpVBuaDdb/HYWVTzP5ZBi3tlMatcuStb3vgCFohW7OfTspy+1Mvzsgk8mi0ffLXgLlPlTEH5bA
3maG3zFGz5dsNiEZNdPDOWiiH2C4z9KioFHAjRLBeQh+L5WoqPIIFngEvxkoSNT6X4m1VMiw/fx5
Pz6CRrJAiknwk+LD41eUGaDHqdyr+9g7mIHzvdxW08hEV75HwnN7JQYt1TGv3wBG37XqwwUjsh19
roHyXyARdaXJCq2YBi5TxfbHAMLRrGqwke6WES3gc4jHciHALXG9DxkW4cWSAMsXLWQqtJbIyBNi
LMpXld5FIIPjhSIrjmt8pkillypOV84St+e987WEsZMEiX44u3Ut+5vIiqdgDrplm7FZ/1spWF+h
eUTz0C8FeJyx2KS+lyhD0gYSfQAkDbFsYlkavMWdfW4Lq+NTU+yZ0jA0QqXC+KNFeBPRC/BWkHx/
yef75IuJvQBn19v8ev6+WMQ3zSNTrjUDH5lpYg3yx5zG5z42KbiKTeiJhN+vnOxEzEY+bFvNIpXi
BdE2mX5mAQ7DhHnEEdQrp211p46hXL+HhQ2gKztLRUFNQA3Tiq8mQ5BuCyiEm0YyQQcjR02arO/3
Q1dYThr2QHXveZ11rCjUtCL42xLnXM8eyTcEoUMPBhsFrIIGP5lxJ/12ieZTtMdI3kpE4fTkcNvl
p71X5bmpg8lzAL5DyNa3NV3fpZLkOB5ZDithekqSwYQeQAciF2a0P/HB5hiocOgU1rPjZzPfz2uM
obU6x9lw6DpYFAPI3AoxEi2oCvO9ghGvISiPafRqwWXVBc7qID981MlPuvO8iiLlUBCI1MIdTtn4
UEJ5KgLLfgfLTBk7UWyf3OeCTP8Uv3hzuxBNlv7am/MXvx50uuOvHI1mH/3aGoT2LNgzrcQiM+yh
2Qdj4i25Wh1y/wTQbL98zWXTlgb803oWabztEYW2iTqnufO/LyE1xV6GBWpnGm1PSNp8JQ5q71/m
k4ZJpNhtGKhX2NaggYdB9kJCem54gjtUS4H3cT2kENnFnK0uyKd9jpy9whsmwln/yAx8se5lZpMf
togQGGUYMQIZwzLmue1cCYNez53wAeJgBfi5H5EU/RXyoo7k5JvIsx+YK/tCyWgyNLFZVKZcQV+v
DdAg3n8zCnkUEhWIvIrgVYXJ9d10SVyNGuHuUehSXC0+oPLTkVHsstg8oblG6klsUO1A5gQddwxz
JkBr/7YF4vad2xF4taYmEhOTLotqzHnDr9YMDF4Q+uWSRLV6TVq1hbkQ/gWuiXkHioJPYfIAF8ND
OTXmmvGhZDwo0fiJB+c1j/UUSvPeWhtvdFEw7Fv9UoWX0x8VjKiMGeuDjvqQd611foI50fagtp0B
7tnaCC7twma7GEwPLKvtDb9m6B4+Q8yL49MM+Hw+yBBhULnQANXLLm5+eUyMBo0wELPl2lPyXN6C
X8w01KeYEoP5TmZhPuL9JeX9PpTMbpJEbc4OI/WyW1XeUNoZ1UOkwkmZ3w7r3DlxwjBF/fpwyY/o
pkF3QPl7A2kzdE74Wf3Mio43eR1HOqWzcvX59pu75tVxy/f0YDOCpg+fclpVNsoDel2C4zhGwmhL
IGi6m2WqZ8d0adou9zSEi2SGQIZyDRhJjQVT3NEJ0Psage/fGC5hRtXfjYOAV0Trdl6avV9Wv7P0
xgW9MIW69ZL6ib2lem8JZiKZ5t+JcbB8cPivyV089jEf+mDLHLSexLYBO/BoV5dpz2ouGnMZrE8v
JGsWSMhwJu8s/Yzzln1VO0o/3PLQMh6k5YYhs5MLotrEX+ID5RqET9u5ylqhjJd4D/zVvNPSnvPe
LO+9pa9Mze4g1G/QA8/g3vzScPcIbpKfFww9oN5kj+mt9GLWdadgwHd/qLWDGO8lFXfX/EfKtL5x
HfvwQqMsDr8OB4vBMP74FKs+wYZisfBr8/5Q0JEmwoLYGHCln89qxqLdJQJrJ5ARVjkLfvk3HVAE
T3bNSyhxPIDwxc/nv6hC7peP40j28GdbU8DWd+bmWsp/AkRBMwMqRFusQf70hAkQOaJiBpxDg1qJ
AEfYbRvmfytaq6gP1beYeUscosJbqYZNNvhsZZOuTnOQLUCR5nKsaYnd0+ZuUl3DerZPHCYMuocr
E7Nti4D+ttTZHt9UlRulZMMHlbXvCUSLsEL8FaamC4fpZB6B+lp+9Z0y5GmYWnicCjR3odu+OWoL
X+DiSHYtCBpRbo2y8CkQtqbHXUrjDNRRrzsOW8Y+n6L/7PFc1iTo0O7tsP6+NYD7N25jkdzQ2SAF
z8fYbbzz9DCsp6PINOPXVI1zMddGgaroeS7EZvf6ufgZgaXWX6uO+ZCoGal3MSb63068JbNDMBuH
gpi2yyCPvzN3hWabQEpKRzIIRVolLXz/oCUL3dhXRqYvK7LIvDDCMsr+TkVcnukgRuNLy1Cp+xWw
uq+z7+wfScECbfxQjPHePbv09h4U5wNoFnK+ju+v897tPu/+7G5lTDHD219an9bEvXCxptxmV2Lg
DtF5FTtkYVC8mTRURpSM0cDP7jaiuv3uXR3JmL1o0X74Vxf37X81AUCJZGAL6PER009Wa6TQs4E2
lX6UFTl3vCV94Y3NpCP0G5CvBoQmx4RbP05iof23BHLght6suawIrf2SPEofjsAgsoV2scpOVIxH
A8aHZ3nBFyMCQEW0AwmnANdBPzlj12cvh1Ef5FX32SEKadg6UpAOjxAKPh5F1x7mclOO6PRDwmM7
g5NmvYUQQk83ub1q5OhoRF/yGm0XGXgBzZM2Wl5emhrHQiIyx1ciktU7ruiTVdyK0xzeKctFZHbC
ckk6QvMYuNN58W1tu+Q6yMeuh3RA4E4t8n868SBnZBuj79fmkOeMVq8aWfxPggDSn7VgL0B3ikNC
NrnZJzgvHduFEy/mqPH5QmDA/yzO0ufL4Izds9Y+ysHkBoruvkOYvF3Bbqy4LLQ9jiLcSdQZs7/m
1577G3avlEtLTgHnp9tvbH9/wobjq+KnPkL1TTTsRzmgbCrziEkvbX6sCJFBKYUJL+Lx7aww/eK1
Z9PCBu9T72Ouwv/d7yRnBesAUTyv/siKm0VGYieNAA25WTQs8nJBlwn2vbvQJF7CjdJPxxVvdmL+
en7UvwdO9WIfetPXNPR6qoIx0ypJ+baDSQ0HhwbxU5wQvlWz4gIw9OTPBrz93ru7qigX/lJ6ucK8
6GuYrf8TS6X3bcuqUyi65FhA8GLEsWFBqRC4zovW9WZX7EtUVJ4uRwnAPS8q+gpce8dPpbiAazFJ
Qtpcb5SYW6B6CzktvVv+cJozvUxJ55RWtjotoNjHKQR0w4jXM+uMEUlYHAL9OQAALLHrKswKpc8Q
VGett5/VpJeDmlitS8/QcmWvCoouCXIr/C+PiRIKQMEZ/Rpo4om2QdcuhxtgiNMQiWDqRcGiWF7j
Bc/rEXlTdMuAdSkrzlxK27oQUcygHWwU70GeMdHsRGHUTCWWy4UAvHEoc6n1yLnkWGffCEpbatQe
VUrMo3mLqExrgZUEEzCwB/ayJpy+iJzV1OfIdsx5z8+6ChNrMXs1+N4nanlzTvv9ItadAvqbX7WB
oyVPCLscfbYgxk6k4k8WKVC6B2ys5LAEb1WqkrGeln6cFdRASbwlVqpAEsgYjN9HuqbmVoxuofSg
xOanpZtpXSaucJs1uBUB/T+NFAiScdl588iOkxAXKXDYNdr60dA8uYLkz2GYvBw7l7MbO3KFwJLw
u8d4nmkSntpmD5aHTBkjtmmQuzNvtnooEn025ccxQ4DenItPyaSsM5ZljZWkIWwSjITAdX35OGfJ
iA90cr8twAWHq52jgZ5y8+InTl4YBnqtQt2dn6kUEp9GwI13RY0k/vhKdu9w+qNsggvV7ihI3D3f
0TeyYTf4jPSek1YRlPnkK3NRMGGzCEWnUPcy9TtTMJLxke7UvWyyRgwog108DtPsR0yKJ+SBi7k+
6GJGYEC0WTfqXLnCUV7GS408i0o7MaTkIRjT/HLkosUmMMQDPDhoMaYskMkFWWDzpDt3Wd7cGf9K
gxxmnM/aFHk6RdKznLx8E3x8maZdN88KuqgakC/M6fWByUAzg6jxS1rHnscqkx2I2R53UHMaKTYc
SbjLJ+ez8Rc6KytW4fOYtqPFPzIVCT3VgjDsJ7mfu4Ki6OX4zZPvxhg+cD/bSdyV3jrR0iVhB/dA
2V7LxqFWtKgg8IKjSTVwSqF/X02UOCBFShOm908BbvjuZa8jqTRS++3FHqswbUFGFdvVLIYezGO8
6J/KIjBQGUWuUq30+ILhTmpOnHC06bHm9qJLK+XkF9IrI5yRUEoNgbWkkL7dK1ayCngwRxyRxvnH
1L98RJ7+6Mo1BpZMepA40MwZW6anZxK+DDzKVSsTVDPMc9x3Onk/U4xfVC2syqycKEifdvCA0gXd
XKwqC1KMia1eHuMOuiyMq/WBi/rOyak7W6/UMxx7J83QSryVjyKLxhft3VEsINHTI8wI7bCPK5bC
EkLvXvqLh70haUG4eNeaKeNt+7QQXGZ8RvDrM5/2rCV4Mt6xUaV4mk2NcGb9fwA4hiQhUxDPDtF0
Hj3OjkmewU2DS6J1kNrDlcO18xY3V4XMDjNj1ZDefbJKESQbCPmHIZ5FCL47DMdcjnLE7PdZ39Uy
y+0gU0cxbDLWYKVOQll0Zy9OwZ+eInwT9LD6tZ0ysikkdKuAF5riNCwtEOpUdrlp+RsDoAkBsWah
lUAc/km13CPT0UM4jaTJ1h316iC9hHTLlk9czcgPfbj+iqQwTsrCRl4R2Wgcjr/o9sO10wzOWDKA
tUUDb6CK9RVzcKQdv6g8LI+VZpkbw9G09k4nePCjOyaBS7mf1ZTVs2qX0ordWS09Q8EjN4V0qrWJ
EcGQblKw5Zy8JShjMRYIw1UayvB98aizhX3EKVKAmjzzOwAFt1FMpa5fxxaQ7vOzOeJe4sFKW/RW
VfsAi6SCReEKXs4zz1SbFG3mX9g4u8Ol3EGDBuQeo8y3xMRuACHpRXXW6jnNTTHvyX+5VWXSHMya
nyOH3LFBaZzUkFUYfKOF+FPmLi9t7yRVQs6Lum3By+QFPhpNWRY7KRSkYWwIwuNkm99a9cZPL0OK
NalnQXj2d5Lhi0uhqTBY0jyuj2koOsEWrtCvPQGmYWwQrFGuzE0UzYpyQtvjvDegnHel8oYy1MrB
a6Bpu/sJKUyTM0qikdoGPtwooD7JfeULNRevv+Nu6hPh+3C9LZ/tX+W8BCCv6fz9haHikMqCqeyW
dL9tCUH9M0UM7zrLXQpnZ+l2tzXEo6bipARCoivBYsZe2JIxpDPWkKWkMM4e7Vi9ozNdiv0CGSyk
HZ/pDbnmLa6Edme/4gdvr44CyKjUteP7lNdNMpSRJ9Ns9G4GohpcMbZhTKLjoZjrGAUBFLDDi0kZ
9uiyI0hV8BSKjM3FHe/FNU4fI8ptTANuU80WjyCV/Ws/oDEK8wk8RO0HGtB7ADNzeepnQIGiAp2n
0CfSBLYQKz+6yHuCrDLjn8jSVDgdZyDjBzdyDwf6iXmI4Il2Ya4ikwRSz46LFnMFhEvNFlBL8CJD
tiWiLfZySulLDhNWKzaT2fuSmGnU/cGmBC5kT77qdsVrkb8cHw+PRQrZX8gzQpzemyjAMcvwIABR
rhcnuj7y2e5uvSKpLgMhzJd4a+P+3jMaWvPPXLQmZx+wNJW/IRDaAR/9q63eH/G0+FsUqALJJkOJ
e9e+gLhfQp6WFAD8BZ8CqoWsLhqeAoE/aIEba5ye5mdGFnypVOgfkVN9d0uT8MFyzwYy1rgeked4
UezXOzZwtW567/zvl97XBoqSdoiAUQKq3PKUoSKP5Oi9KPshVZa1S3ZTvXS1ZnskgdAghclo6wlI
JuQAkh/JAvHUkFzXSZjv6sZJtjkgMbq8zUx1lP216ZiBX2aL+LpSk1CCscDv56O7srhJGcFwLkGf
Yh8DiW8XbAYQHupk+bVZ4jRNDccqAOJPfx9x6aG4uWGVlB2pp3DzJJ1xC9EOS544OYp4VolRolxe
b9ln7T/0P1mWISsapNRt4UPKTsSJY8Z1lKpbgn33JgjfeRlGb1oHsuQgjw2Vo2BVabAa8EL/z9Fv
z4hiBdx9SA9KxebgOSGCXJ8BDpJbEK6qp3kATdArhOyS2NDqPSaIJLc1AlbDLS6vRHJuMwhlWPrO
VkR6xDBQjFkdX3f1bRzF1NyRqNW9kjh4opuG6+t9UmKXLSmhI+OMyFtwh5XVeMemf5xIhg3BU1gy
9Rm1ncNiK8MIMcUE5zHhI49N5FjPnORLk0skVCE0761vLrnkwkKCThloWIxuD7xmAYKGy8GYN5fx
tgsLGmt7jJe6kC0Wi2xQoGa7SORB0sRrj8a5XYlHU6MsIW5FsPu6u8vsaJvUW34bfGPNX3qoDNJd
064445G0BeBE9Cae56COp9kcQjZXNXXut6+xfYxDuvnVojNZUNFUDiMD9A9W2Gv22ncIOPgbhLxT
sdagR3aw3tWutrUwpi3zj/Pq/f2/IK6/PRGI5Q7iv+/SJidXUqDX5DuuKsSiEt7AV+iCgf5is5xV
nVnz+rWJCnEghHjwA5h6apLKd0sAJ270ZurRAz64T/2lhOSBLxQEgY55jqpi/3onXoOubSA8mboz
KoGuhfM2lDLBJLwkVNHP4r5KZWSDvtoBDw+hSnK+bKllpYk2gYxJspjyYlJKmvIobPh6nxo5DzI7
nuO8JME/HkDf083vNIcmjw7hhA1bvemuwmEdsfh+12BJxiZG8LOOVXhw60hqOraSVLiNqlWYud/d
SNUSz/IJ0gW6km4fqTWmGBJSihU+MkpqOy85y+M+A6t2f2zNl1QEDc2Xsoux3kL0nBuYZ8eph/n4
fRwrfgbhaZkomTtbqjbkolrt4HaSHzWJcf1oR16A80aR8ehXwUc79uDjOQrl1aUS2x0A3Zpp3+mO
jV9QIBfhqQMRJGmBcTusjGDirwZic5RjX6IfxVz9HF/gzjyBJv3KLxQHdA65up4cNKTjwSqdmxBv
zUjDJkcSoVGtpWirc3A8aXqXYX4UQuFF2vwV3sFgQ3XGkAA8Rn9rRVmqMl4GNRfL3VN4jghRvKyn
oNZicmfTqi9BHEScosUPdpL6Uz4iShqVwT0n9l5lM3kSU/wic6Pvmh6NGCjlBDYSqbfGdl2Uhedg
kjDMeOSbXCR/Gj2QVUrf2CW3haEnqEN+kM2P2MMQpr7oOVMqHmwd49RXhEn4tve4MubE5gt95Lof
0F3QVEB4flz5sqqoCkyibXAIVQ56NsrjXFtij+HW6Sy9Tk7slu+mgCH7S6W3wUMHrIMF/hzMePJQ
9sLCOQ84qDW1JZtHUTYbVGzR0mULQj9QqIRvEvgpGGca01Ucpr1K4SNpSmB+imwQvlNjWrSX8KHF
6yNin4f4Rb4tSC346Z7wxc9KRnEOF1OVlTjuiUqLfovLL58CV4Cew4CkuFA9ccM1evlyOraT1qbd
6zKMPzcXb9TW588R/zPhRN057W0kDDuvAW08yIHwzzultydOdr5XEwcEEIkKLzquYpxYtXhYHoiE
6Ouf8Iv7EuhXLAQfW1TG97JLUnzq2eJTt+fFbG7EBB9F0lKMqQfqciYkuqUHxL+GKXxOepK5ehcq
a/w4FY0bBiJXUVE0bcM5h+g2YNXtcXitrFrm7bVvjKjuorR63CzhYxppH0Nblzlm/eCFJnpqAPD/
C7JF5NK0WqvSFdUHuyIURCea60iQF/vvVkoWMX7B1+6cJfFa34Wb6JZ0UyuqDJbVpfHHS66u8w5R
wNWNUUp5Tdoyki6UFRWA7XXhqAVPp2riM5tgWTrGH9isSD7DhuJ9umt50n0QDW0UJE4VYaJdS63l
gTS8XEQ//5gpZ1w82BhWljKnA3EdjfCLmz63elZZBi2xiEZjDB/as4dUQg81vX69cM5DtwsEWl09
F8kq5QDQu+iN+EBeHN8NZ/8gJFVMTWSrKXealX6VH8JP9YM0DbHqfZXo1Uw6Hi6HDVdLVyibmxdv
KVZ/b7GXyzMiwBwPZkWEktX59+WtruNwQTU3aRH0fn0jMXNBF6B74iXoLb29MTY6zTDqy18maSBX
Z/7kOIXH0CW2CLMwgI6vVWfMj35bPAcDWEq5pb8SF1Ug/wcRZy8XmfLANip0xfR9axTl2PeSUU/7
BXMYXLkNn9CBYl2uNaqQS6KGY1+CcX1zQ8jr2IHZmcDUmRCYUtvoDQVoz6pA7a240sNSZIjEnwCV
4d0CJqWCvvFzEdwm5ikCHkC7own7iJsdoqUzOACsQ3Ysd93/RkNAjzwv0jeMrCrZiRPefT8euVXh
b3gJbgm/RiT8fXJpqitdq8rcDjI9bZne14g99j4pPI0eACmrG+h/Qp1ykn4elZeCXkG0aOd04eUs
lLgxvCh7Ybwcy9yPKbkLB6qSiTsw95UEUDfl+7AJlbxcA3UfF+ZqHYUDAvCRu6EvFk/sxsTj6od4
HhOof0Nk388Dd52YO9HJ5ChaNLRoTe6Latg/9kjUboNx61rZ5DxDNjs0m4UMFBgQY2VViKoupjj0
AEG6Iyi1djV/P+duzU/VKJmkBn94l7gdkHZzmy8sWZk4oENy0RPMzu/XNOkIioUP83LjUw0SwIFs
s7rOFN/r6n4IjaJARSd5bAWEFuSCufNYQzj5XI+hMlKVsIThco5Y8IC8qy6hO8jsEzKbTN29s/+Z
c8Cf+EX5JTnC3M2YhEdZdl8G2syArABnDB9Qbr+Ry4erSNtSO5l86nJOYt+bVjHvbPPBrxuLt3sb
mcl3sOvkFphm0jedSw5F+5U7ctiCb6XPGIJPwfvF9BhmpCvEsKET+vunuAFqAkDkFLInnppu++o+
QF9vU1m0QD58pzw6Rr/68rSofs3n0WPPWTtuM/Ux5y+Z7c0T3VzsBu17dUsU5gE9CG/X6b1i9pOp
dl+o1I8ZsRGFJWvNgNNrCu7gU4HDMGehYIQTwX8eUX546i6LZUEb0GoDNrOK9/yHC8oXDB242DaA
KkmmWOn8Jm4nVfmrJVFr7ZAQhLK9NQAoM9SwXAYa1Y7fWyNTASCmZcyNbQT8Noua4/KyXtuVjp6h
YdFpVpARDJcCP54fTb1c2J0ghKXhk5nuIN0HSP4UGi6BZCXlF5AU7Ywf4IKlP7sBK3VeDl2pBVxQ
+fK85eDWTNKdfnpFJKXvvK/Cn/DApYfHiBmpdwkYHjfrYRbM5boXZlqofG4abNVIb+MCNz//P7IF
dajueIqXQpKYIJMw+KQJo3dckXrf+I7fp/XE1I4qU89OqerLt7qJALWgRkuEQgX+9T4g5D0qWzGX
URx87t62S9ROFzXHMBv18lldtGk1sHoxBsH1Bq74RbIoRc1vFWxIorHx8Ex+Ev3coE+vhbggrHam
3Tumw6HVwZFd6IhVrKpYtEMC7JW0wbKCC0VhOT/r+LAKLLe91ZSKszq/T6YYgY5yIOcbK4Ldb/VJ
3khjhYDw34auHf8mnsnc+BWzxBYj5Ss0YhOO0422Koq/qlev8uyN1t90MU45aFs5IWV08C0AudVN
Nf5Rn6/r+Dw7b8WP/+Cn2Wr2T2efebemHzyAmuvlJJpEU6jawDT7qv8ykoEcWB9aquh8gcVmDj2S
9oKXLjP9y7xLYDeyyYnLrYaQ+FqyuSchmo2dqbabtuZ7SSd4WJAcLFYsj3bPhkM8FofxpjixYOP0
muyz/PUL0lCH6VSElhINsLpjEKq8wANYFJo+FniJK5EpsBykmCFx14ycCsuk/FGdNeLKrAWN3i7K
DxOjx1szeiFaJTfqCE3fsIg+90cpZpiXP40Z7WJs6o/IvU4LV9vLyJitFWcWGRqjbKr0EuE2x9qv
LLdVsi0oQDXwqxrgJr4GFU3kJvkCUTakBMNqFiLDP2Lgtq3Zo98qSaJb8GfHx6oItg/gar2U7rFs
nlnn9q/HuqNzQsasImddQUW926QMIblEgAMb3n04c1mQ5rP2uBj7FVoxSVcUkMCKj/jyTmlPL09A
ZQw/lqO9S+t3SNPLWI9DvZoVNdzAqPCSjzNEDESrrORA1Sb1/D6qbFniRGkT1qWrgjdvSsjl5qVY
C9fZG9WvyAvmBcemn+GHOHTBEXq9u07mAa847Vxef5QqqJuh6mbWGPnT6idzTRfQUDMoY1dGRl5m
lHJVLNtdexopntfOLoslSD/DcTcusRMxUNEfcBfwedrEpJRKUnOqtHNJCNwnFI2Gbn0+Lp1PlZ3C
PkJ5963oPgIv5PEfqo0e9DDKceSh3dYoVm8Yexn3e0P/g+Zcn/KE1z19PODhXENAo5QC8xoY0gPW
faWOJ/fzV/qyX8S0aSvBxxUJf8dyuzahSq5sxiAPQ/BWi+4Dl+h1jfy5VCylUdfcbT83JB0V1Xuz
WACvJKYvSPGoti1fTNSmxSP/vmdlESYwRok3CKMwWXSUrqNeUQqN860E8mlXmIhK5+HGeNraKhfE
1kaOeW+gS38HIYRSIRQz3HtURKACdxxT2Mog9no/0/Y7yqluVWQ03CnfDPPObC7zSzQDYf7BDku+
4R4vVi5bUF74DfbKRfE1oW8FheGJIBH+gT0WlDmxnE7/JSBMZszxc18gMgFHNRtEmRuD0iIR3pr5
4R2o2pkemFty1oC1K4wjxs0yGjOkBGcJkSt8MGxLS+xEkwaklZ/RHohRtf0ra0JMfc+tBY6Wi9Ni
3RfzUIYTa47qrf7ujbCwwBNkru4ZO5eW98XQF6YSEMOU29FeA3FDL8n1ycb2XpzQs55d+2TyXrzq
qbCWM4CKgFIcxDM+GuZtHPYsFDJhGsB+zxHBPHNd4U31DL7/k4DByUIoVyT+F2sZbAoKByikgDcL
+sGXS/LL1jMCdd9WmlYx3Y8Ty+osf/H/3nXin4KYYd+iES0jaCqfNjVtAnbbxIRfMaBKxDKTRvp+
o0U+TG0ST9cr1z8tizQbFLYtlYe7hIOxVkYKtoumr1tkaTChfud4mcE0DDmrbbpEsLwnLo8YfonL
1gkYdXNfKNVNL9SNJlfTe34Z3141xZhRdQpdmu9UPpRdKS8Pb4EfyScR+sCwHiOpO9JKZhxk87mW
tzRFz6No3OobgieLbtrMD4TnPGCBENnyJ9ghQXKFMJvCM3cR+77QqmAbBzCaKMl5GlMHzLCDnesp
cYxsIbdghQtL54SBCAnW3PTVQrNZP/wIiNyHfV2lxEUBj3XV7nTioFLHx6jR4lRKXDmAjwV5wfSW
VP+g45bzMYU8EaOkzd1cSmdkovfsPi/p22aUbsZ1w78AmoMap7n93CuZtm9CEXboLFVXJS2jnoY1
QURDKDyalKifb+7dKH7GAjj1tW9HDEtFH3Cz98R8r+F+A8IrP3j8w9gbL7oiDcBhvuS7D9P2tsYH
vqSp/GXmnMXte54UHl23BNmhOuk2xUsqNAKDZ41V+MCSdYU+xntBIsupK8nkWxccJnwPr+21hwcF
PetGrN7DG7Qo49/0Ew1bLzYZRdESNfH1DeWl97GrflEP4e6Yz6KhNEzGE94ZgjSvZLmjCRcswrzp
s1GVQ38Izldc6VikyaR/XuhKBvWShx+kQFiXFo6PPjEvenX8uoffJkRrTdKLPjkXGFFLC2mZQ3Lp
SntKnampFg2M1zL3bXY22/nLIzfDKI2FGA8aa6Wg5zXSb7VJ+PwE/joiA9qVCPCSoYT7nltnDXES
Qbas8P+0DVZgGJNAY4mRVGEJb4sNSbEk8lkCQYxjZZWA58L+dvzL/yFVu6h7kphJ5G7/SL+Wc7ei
g4U+GFTVI7wR37jpmoC6dAPEvuAEHoDU9eCoejI0mqxOg/tlINKkM1t7rYfbdzsChKsMi5WkkeZC
3FidE3S3GXm0nyhWndpvmkRzDknF63PmIMTbFxDD0jdscjcLNHIc9ahgqX/f5hNiFgKd3KfTmCHW
90jeZ+AaZwLjbfg7o0PhbguuOOzGwrTedazQtbWOVMCY1Uuktk5zEgtSACQj5MF/Omy+VqT/QpwT
PE7XDSb4AfyOg9JbxTyz9P7JplsYgpI/kY6JdoqIhhADCNnUbHvZf7yFruGuynRxKOFoCF8mxrEs
CxfBOAiohlAd/rKphpFzn0AiHNUB0Z1krLiVTWdBlV5HQDBf9aJMcLVDiFYBMWS9hetI7CmI0KcH
hZxZtiOAdt0KSXcZ6P9lG1ETt0syY9F+GOkY20n6wlEiq/eP3rUGPg7l8C2s8VWX7CW+2CtbsGB0
Ckwx1Mvf3uEdhO5tPlMX1umE2BxHkmXYNPfZ2KGxcijZ2lvO0YvKpgym1iJVPBs8tzbohoMmN5id
S6dZHa5lIXkl8KvOMH64QcplhWKEYtvIMfynP39oDjTVUgAgYO+9NBrdun16bQ8zjeHrGLUxJQvC
r0jKpCD0R3bZipnro1TdTeUMXDaYGi6vkHuhj5GJgrbcOy3sCVcwFEsItQyn8gISUrWJz4waMGVr
d/8BqufbMe84qGBFPOkErqfRLkzxiVYppHFU2mCDG3yXapjDX/ptSaG3RPi1SKGOKLTRMdUsDZ1M
B96FeeEs3hzfdZhJsp4tge3/GM4016c4qiDcRALGR1zOJf/rgcA175OzpfZAjQ6AH+THfqONKcX7
lHKAz6nuww72ZqtPcBooFz9001NMb0SwHLcSmXwrG4TfZQbh9in9zimW+tKOry3RPs40HgixEIld
siBMvvB+hSebfDjKtq2GIMCjQ5heTqQwnQ5QVy9QsGFvXkDr16Z7jb81HbbaVXMFowXdozIVB6tr
wrQLwf/AbxUGO5zjwNLJ2A7Xph3j38fj5Kiw4vHmOCtfQk72OXe48vkEJboW1I20qlUJb1Jue54T
Ezsxw8wZORuM317wsPcfH4vGHaKB2md+vfVpJfmWTQCQz6YUFaj8qoKqDoicVPmYCSZhq71wWmPI
RXs9dGEL1u4TUGh5rg8IQtHtTWtRUZpLP09RuNCRetfk3LnCpHqsCWklYUseG2FTbrP3PUoMdfey
acPaU00VdDbkrRquQZ1k4bSE6bTcuqIqnuwoHVbkwr/hgeMKFrMSA96plgSJm3vi8tRznoPf87av
d5/KD5vak49FSllWx8fy1XVkg9VSoBj5FcdZJkRi0bCMwuGXMEeJ9n1/F586glzQaO0UYAQpVN1+
9B/lr+s9MUBRm5T17E4dGNqk+vFzr8T1eaj0NLGxTdCzP4n/pQF2vLl2SqMGZbHvHVa96h+Z2FFz
uJVyRPutQPzHeoDUMvSq6AMVq8QuXE1H4Z6VqCxMSLkKLdpaRisfcaX6YinJU0xVz2sApSO0s+X2
i3nFZE2ZQ+YDbs5cHivprLk/o8WJbmUA+gqJPtvRu6LeMnFnC4S3hE7x8sGY3IYB1t3vGRWwpex0
TM8E1Ayb04Ne32oaOoGggYGr6u/3gbp/1CqySKK5lUuIrdRbLCWp5yztwO2FDFl9JUept4THbm3g
ii2NEuqdMqRbsbYD/1BF6/SRl3e6POb1Sr9Jr0upfrePseQlmEQpN1N8OnJKZq7lLdkvVKirxZds
J2lOF8gy43Mtq7Hds9ZlkcZtZfalHh1bK+y/E1Q2KpeSShjD8XJCvssX8RwFicoodriqn4LLPmlv
23cPcRoa8nAcd2p5cUk+W6xEXmSsvzGqRkap2YemqqWxsUiYThU4fjMtTB1xVl8h6DzkTOc/Zxb3
gJwDQCLfKwXAAszBX46+RIOHNIq0H8KUgR0ndZnQ6cBwbBWApPXbjeiW53VAVhjVdtWjdJPLRh+Y
dl3YNh5Mq7Gy7sVuLv3IB53D3M57M6ScUbnLzF2ZaFP22cHVYOVJp8Tx+1VJ/Kf5/di+RHCF2xk5
2zFoZ7bmBM8vuHQjhPM6aFXOstMM3Dt4279IiyNimxMl0aC26Icz84dMwkk7jITrJ799h9eog1/n
lizRIXrAjHlS/ZhpP3gkeUFIFrzJx/bV0kfJKPnjM7483FKEqsidBgud/8dnyeJP2xhLcLRmLDBT
c3PHEVvylaVxr0rQAzxMlt6IBaiAECExR/FtfLuC0wuZEvqO5OFkChcAtsv/cYe09toQsdQIOOrG
o0HebzLVXm2HLDdUtxJlhWQS+npgXnXCp34NpmPzeGhaAQONXd1MMWFFZBHEQL8pqCDWa0DMrVf5
efnR6S9cZVHRt8rYkRxXRyXpdT30ZXVLVOcE+rUa5rgFuO0LJxg1iv472Q8KIXec6a9UtbAdhBH0
d1im/LRXNdOgivDmdoeXmhkwG7w4yyawNJTACctndyYlRbdtMpUqgWNl9tr++F5PBHO2N0q0Ejog
UiNfCDSmZIo1DH0VXoHvc6umt64vQqBEVO1Fr+hKk21tF1t3AYLrjRg2WoyMWGw/qtEDipwJgjhH
Dn2nXrQxRyZbKc1tsfQE4GHykbpNC7tl0YLtv1mw4CninNA0VkeBTNJgdw9nZl90poxatgfs13zt
t5pm7BbKgDHYlhl2MzMtSsG8njptGLhv/01TUDC70reRr4veZDs/jedKzpG+k3QaTr0NwhdW0Eo/
w4FjYcyUzc1Ljh9+lMdNcJgssn2+wCBHweMsWj7DAwdufxd4IQJN8HmjOVvUDg7+yScfTKI896Md
IM8HyA3Kdq3AV6THYm1J/Gh2ROPkkCGaQsozecjJ2KBMvxr5P/GQ1SVvsYrhe0W7LxXgU3W3WBlC
lbrxS9fuJjZ/3gCfE8s4UiXGnv6RbMFmR26s9zIahlEI3B0AetihzM9fZdvqo310icRmZ9QkQ0Nj
AvBo48K1jUkWv4ciW1h2yH+kYU0TYY2DTcDDcU9AMM1bE2MhNlnOZn354IxcH83ssjWMwBJjhWcM
CWEO6qb8N90ba78pLDNgLeOv+SNeFYPQLDeN4Hwxr3FpMHrFnFwoUebpYlrF+sRvYD7KuKbawJl1
9zz6K9mLxpbhFN85eE5aduf/S0WblzjT3OaoxPp/QgTEARMXs8vsRkTD0rukrPcpdnIGVrjlPVEs
5mATQRikKnFo5bSOPueIsc6GBvlD+lIDxf/rdiPB0h5SrI0gWsndhO4/Y5OQrzDHdx+MKNvUM3n+
uGYA3Uaxroxc/6fbeIgiMn/hvEXcfdtqRtK9APVeUrPb64mufd++NoKQsgKe59zckhsi0AkcYeIt
KYArlEJ8omph1+OFtn0sIBHO6kvyYunxeDtMC+tItMDcq3zkQuEnoE0VsZfYinn+MQQRxh6O9wZN
0E1qBDAijQTti7LKVv/wbp1rAVcISpbxbiBZ9S/34gF2rugAy8pah3f/biINbnBbQxmoINVfWiih
An8qzvAL35WVaERYAPzqLBrsCIxuf5R9vfiIaK5+0cGerwYDXx1uHXVtB6w59AXG1JU1Sj06l+x4
uXxy+cjkPEFW9d/B5fpJvwkPqdvpMQTYq4D/oS+sTqT2Uz1gpZLYORV5efrjs30s57PKN+Ofzt2e
/GL0q/QKFFpXdRES4zpbUTxvmpiUwpeGeQV9ON+fnNAUtAQkY0Q20GuhU1C97BZ9R4vyd1oCj4Tt
5Jc68LVE/E3Meg778nLkphP8ryzzfC6iGH6BfuNQ8Kw/BzfMElbmzGc3ETz+tf7b75GgBnKNHGop
DWFFS1PHnVb+SzT09PDdhxruJKmMxyoh6Da+63xPYyqEHpI+gXs2UZhUFHTJh9OHAXq3D6L/nJI+
WDqqK1NTI57lR/BD6B5QiyxvVgkuyCg3jYYY2/8Dqc6jQ8yjDYfHWBch0csLG6IECdZiT9MIhkOR
pDkH9nM9YHxFLqkYQ4W/rO+4ixK1ZY2t7JExzPyJFIxtOwYs+cAqQRntOEEYKjY+5GPv0USP10D+
J1+/4taYOlRiFndl26LGS3Z6DO3Bizci9NGWXJ7jr0NlxfGYHmV3KaJegpKUYK+lnCYb6x23t5Z6
Bpdu9LeJ6QS7RqYsIRCemeWWG2jp5aPhcRykBMB/jBKOVZ5Ilfet4T5eQR+eseyIHQnqhFNjrLkj
lVN0XDR7QZpG+StXRZ4hXmjRphCGZ5mfBI0aGZQ2rAv5Q8IDKuIaYJsvRuMEjZbHcgnd49n+LwO/
NSv7Px666PR7nad7m7RsCDYs9xRbUIvgb6m+2TCND0sovDFKaZOsTstoyUdUeSpwNzh3zGoT1U2y
k6NQubjt1RqZndQxJ42Y+nDRdmcayQRBzBv1wTmcBlG6Fsa7tMuB+yrFMFBBqplokEEG068zpCYW
efWIuOsGA2tmOKaghqCdDm1pflcd1KQzGPSvqYqubn2HxGd0FN+mPMlX9pUAHZwtznwXX1Y3fduK
fvVx1iXHpQ6E2lWZvB1RmzJ1PWdF/1R7Ez1r4F44+AbOUaES2oX3xOcEX8GKn5T/GFyB+TY2Z4MN
KL+Hj0dcH4u2GxZ0/wosjUSewY4TlmUrCDoMGe+4jFJYEWxAtuqSL4vU6Heh+s1rY9in72kXjeZb
ncNXFMJqnwxxFWmwxdDxgN1YPk9Prv1lkDTPGmuG4LI9ZFl6fNWEpz2G+j0eQlOI4BeHfYpUvRwM
QU97AJcLQyWM418dDNDgHwBh1G3Q3FqcdxmMc5jNPP0laqYiqa5BMsvBLUYRoc2s/nQ3t2a+JF08
z8lq3dXHsT/zVJPqWe5bXkBm4OvAry9tPkVU8/Kqw5ZKyoaSGxy0CJYqYn5iBuIs9B4A914LaYMq
9KkynpuQe5dvYfUDbxfVbO3RCkjragIuNmYoiACkOfwobpP8vi4rYR7zfNpe7xQEtqQJvfCYinlz
uYgT7VyEt0EQ3zF2y/Zv/5jiKPrbcmy9K9z00EzndPf9j4vEIUmmjSksxs4d/gaTv6TJtN3TmhFd
uiVqpuFLBS5atjehUxDCa9AGRNJUgi6OPlhB/4o7a8TdVwvFf7rbiSoI9hPywemOkUnrRsgbPcAW
6nbrAU2olgrgQJJeOg+/N7rhBtbdry/OAt6bFeejZB/cWYts/2C6IOV9LNNOWaAnxSzSUiWXYPua
yM9Nc+SPITZUvscQ4MmN1IzNVZu1YimhbjjFJTCc6LVh9WOiE1eHqzw7Aaj/0UQ6rTep/KPmQgVq
0RTvcfi+5J2QQy8e7nd8fBsZnpCmWd207NaBK6wnLOjdCqRg35S5ivZNZhz0WfzZsSmTkPSJm3d4
9kQDHaiAECbglLcNxcEU1lAN7wMImH/dHevQEKbtCLCwkS4lUUiWuwcdL8ZUMV5DMXucOBvneRK3
QbfDTYuUvbVqt8+3zd0L6GdVX8AQAPL4bpTz1bn/Ag4JWVUu8AgMndvqfGmUPxoNTkkCgS3H7Yy0
mdLQvjUI64kNkWQmMa+6kcbxbfl2ijdQtEvaFzFH7+vDceEav06DAutYQsDje/3ItgrM4G6zss7l
mxDYJpsLfHVdKcREEgp6unEFeBdobpE38jQHXonoT3lIo0/8UdkO/M5HvsGG50Bv6ykhG+2U6MQE
IKmx2qWXmHZgUCoYriwCSGvBSRwaYrro6/1tNH2vnZ8uJQ6tkTO3uSQV4YjwiG6GrYIcLDsZPMVv
44UmmFsjy02l8zzJ1LsM5F+auK2rhwloQIR3ATrXh+MaZ1BKNwd9qPzm8ni+WuXlX2UDQrR/ywtB
zlHJeLUBoBctxirM3K+GYrRAdRrwiVXqcJIqMpA90YTiNzshcZSJH4armlJV0hMma4qy7jV59wvv
1WNdCekKpUK0uuc6x4f1ZF/M1G5lPxjDrwLSTmm2buQnOg43myfI/5TN1eElyGazs7eW0GNdDiBJ
0+Lmm7qgpLWRXLkfPT0kNiyDz2llRwNhiBrjqWdvT0W/2p0d2nyVk6gIkM7NI19oRf9Lh2gsnFR2
MCd9ozqjnZnYi1yH//Ct9uLHF82sEWKcSyXstvQsInIrV3SQRlvfP+W5Yrkp1JJ9zd1HjVs8NXe8
W0g3qG9iJ+QE6gtfPFWb+gRctBVRNd0UnYRrgfSV3Y+hKvzUe6S0zy2FLLMX7heEUY1Ey/PwlJ+d
wZi68aUYgxIiDoudw28C0HVDeAb/GG+INkfj7tTgPdPKyqnblGtXvrOMcB5wmvXTjOSL1asPV35S
1dqj5nI9Ou6tHDFGc/mLYCeltCyxDK0FCwpbSwKjFfSvHmBTUQgtmBfG8UI5AVm5PbNYKdeUkEVj
c0w0ZvquHWtvg0ZzO9J5IMlE3yJoACjHhURzmAIhYk5JBHvLJascB1RVL/sNQukxb2tkzsGyrUR4
Aeaq+houyukq/Utf62K1q4jaJ7+Hp3nIaSinlnP1h/Cn+F89UZjnTu27y2YzHO7aO+Ymqg4hW9Vk
K696w66pDnM1LGSSm8Sr64imd60Ru6o9C2RjYo5HhTz5O+JvQwc40INYn94WyG3CTYk0WPoWHSbd
KHSU3VdYiD66dI0ohqhb4ToOU4Dq+ycCNgdXLW2/axP7BRO5cCLvCMekc8H612aYNU7+Bg5hYyhq
U789VvtBomkSjbc7pWziGtisLuyO8XoweJOX0EEfZ+0h/GURbzeP2gMrbVhUxgct16VqL9tB9dG9
Mo6aa+U8ixLDAWGewkgqAC+eAbgjyrdnICoR+1BfMb9jyYw4Nw5NBCMZ3k3+VFs1h8dGGOo56TJL
wguA1clbyWM0K4ZF80l3SnT+bVhh2dDTRMY64hEv9t6AsIMB/yjSaX6/Z8QMA0OxHZ7zD4UwCAjX
ldKlwi7hv+zG7qpsQ9BumZXdFFZOXszwY/akiS9tdTUx0fGl755aUU70HaKi/lkzdrdernjfwaUg
2Qez11l3aUmmxnY2/XRNzLPK0pW1Jqch+po5mXkXEOEK3NWDmnwJ4GJxTMhvyMGC2IJQP2WHjC4Z
fUOhOolz/ryAWaVBYWM3SNKRbSqQOXNgzAqHtBqnTnoHHFNPLZHi+asuO0WJ4UqQXHVMMJLL7m6t
MI3vZeUyfvzI5GEDOq8pX6bXXXZ0PDEAT7VVy9KWjNsiLRXLpLGRA60MBy84CHgLqVnwWjA7huHs
ARShQz72E26bLGbKj8tB4J7MYgooW7IFUgODLAEGdYuZu9wyPpkEsYPJZG59O9Yxd5Z2d3aEUqzV
OcT9h5Q7cc4qwBhYd7uPJ6SRhf7fO0ZZwC/WsViR9RIUK1OYdjxrzKMT8TWFHI5KwaL6XYUV/3qJ
eWkg/0WNwa0Y5LzF17ARhd/UQxI6+A7uvUSI9pAOAIwM6b8GfzZ1bTDl47r7As9Oe/EZvSJAo0+y
JnpyEBWcDkvgc4b0c8n959RTbqUXgNcdq4Lht0+GUgan+MAWGPMLfDgsKdCt8T+ai2X1GGcnL5oP
UdTE83rkox7fx/l9Jy2MZTm5CWAOBCj9N0DJkpHA8ZIGLcwmbtaBHvyaPqrVypdyi7Nm51N4p0oW
F7nYG6LffF/sPbAUgUZEANabfhqwVtMsJ4k2CBxVtv9sm37UJJqWgZ1mZlClBW1LNUcA3bjR6eDt
dN0MGuFBWkGELdWqgbPN/P1CY6XWcpGZChbEhPRuwDsKvwd5Twshs8oUIVHGyINrL8LvkHyAvuIH
uU2xc3Bh4mjxSaghESjfnYWI1EFD2e2SzdjTRVeVO3r7eJY5TWfhmgl4sNntljCFHeV+SWuN/Ch3
xwOYV1Af7xTGQw7u1gUvB1vxjLXRWQq0A4Hk5uBDBZrWNvOEHypduXSEQDEHuBV0/FpJgrHcBeB7
29kkle5SZl3e8+X946l0WHmLXN9i5YokjANblA7A/JP5y/lD0ItWjFOaf4hiH9j3nWIFCb1+WTj/
gdA+ftXuL6ip1RHb0l1LSbMR0LG5oQsmgdGCoa15AkyUWxbPCLTE4vJMb3JSu6jz85g6xZoaWoJa
RJzA0Yh537dCGYS3F9tegT8yxp1a9/8eA7UHrUUwO54GQAHCr8aanb56w+6K+fsT8IJGP786NrNH
6UiFUUEB+nTS3cUzbfJPAgz9xfUMJCuKQArDsbzDArWRa+tvPAgy1O5MMFcIrgKNfyri+zxE3NHp
6Wo2BAzNWz/x1RmlcuIXky4QluPwdGw5esLqJyhAnT7BureorPC3r0CfijB122NKJpNbqtSMuOIe
tSlyTh588ZiMk5bw52g4Ab/LQcPzWgzBUPFdNFqtdWCBz2ieoSg6+ySdqgUGU4+SKyY/RA5EdsKj
OZ+gLG67OptZjzG9izlKCA==
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
