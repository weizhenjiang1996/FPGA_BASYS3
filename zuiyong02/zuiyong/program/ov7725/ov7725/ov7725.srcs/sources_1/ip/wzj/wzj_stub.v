// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Sun Aug 06 16:51:29 2017
// Host        : DESKTOP-0P80SNP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {f:/1___study/FPGA/The edge of the
//               recognition/zuiyong/zuiyong/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/wzj/wzj_stub.v}
// Design      : wzj
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "cordic_v6_0_10,Vivado 2016.1" *)
module wzj(aclk, s_axis_cartesian_tvalid, s_axis_cartesian_tdata, m_axis_dout_tvalid, m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_cartesian_tvalid,s_axis_cartesian_tdata[15:0],m_axis_dout_tvalid,m_axis_dout_tdata[15:0]" */;
  input aclk;
  input s_axis_cartesian_tvalid;
  input [15:0]s_axis_cartesian_tdata;
  output m_axis_dout_tvalid;
  output [15:0]m_axis_dout_tdata;
endmodule
