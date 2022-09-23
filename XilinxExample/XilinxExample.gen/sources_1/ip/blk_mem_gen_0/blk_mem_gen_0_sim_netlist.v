// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Thu Sep 22 18:44:24 2022
// Host        : broox1 running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim
//               /home/brookz/Research/FPGA-RE/XilinxExample/XilinxExample.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18016)
`pragma protect data_block
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
9aJlrg==
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
