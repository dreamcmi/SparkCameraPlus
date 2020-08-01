// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jul 28 11:53:49 2020
// Host        : WIN-PHF0MALM9JS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_bayer2rgb_0_0_stub.v
// Design      : system_bayer2rgb_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bayer2rgb,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, data_in, hsync_in, vsync_in, de_in, hdata, 
  vdata, hsync_out, vsync_out, de_out, data_out)
/* synthesis syn_black_box black_box_pad_pin="clk,data_in[7:0],hsync_in,vsync_in,de_in,hdata[11:0],vdata[10:0],hsync_out,vsync_out,de_out,data_out[23:0]" */;
  input clk;
  input [7:0]data_in;
  input hsync_in;
  input vsync_in;
  input de_in;
  input [11:0]hdata;
  input [10:0]vdata;
  output hsync_out;
  output vsync_out;
  output de_out;
  output [23:0]data_out;
endmodule
