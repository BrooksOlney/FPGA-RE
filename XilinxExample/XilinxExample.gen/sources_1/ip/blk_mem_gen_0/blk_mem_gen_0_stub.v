// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Sep  8 21:26:44 2022
// Host        : BrooksRig running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/Research/FPGA-RE/XilinxExample/XilinxExample.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_stub.v
// Design      : blk_mem_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *)
module blk_mem_gen_0(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[3:0],douta[31:0]" */;
  input clka;
  input ena;
  input [3:0]addra;
  output [31:0]douta;
endmodule