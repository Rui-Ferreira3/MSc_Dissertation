//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Fri Feb  2 11:23:52 2024
//Host        : DESKTOP-3C6QEMK running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (aclk,
    aresetn,
    rsta_busy);
  input aclk;
  input aresetn;
  output rsta_busy;

  wire aclk;
  wire aresetn;
  wire rsta_busy;

  design_1 design_1_i
       (.aclk(aclk),
        .aresetn(aresetn),
        .rsta_busy(rsta_busy));
endmodule
