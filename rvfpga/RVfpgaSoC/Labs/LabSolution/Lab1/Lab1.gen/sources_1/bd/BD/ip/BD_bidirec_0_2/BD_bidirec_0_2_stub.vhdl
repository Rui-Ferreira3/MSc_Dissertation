-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Sat Aug 26 14:34:33 2023
-- Host        : DESKTOP-8UFOBMP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Rui/Rui/MSc_Dissertation/rvfpga/RVfpgaSoC/Labs/LabSolution/Lab1/Lab1.gen/sources_1/bd/BD/ip/BD_bidirec_0_2/BD_bidirec_0_2_stub.vhdl
-- Design      : BD_bidirec_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BD_bidirec_0_2 is
  Port ( 
    oe : in STD_LOGIC;
    inp : in STD_LOGIC;
    outp : out STD_LOGIC;
    bidir : out STD_LOGIC
  );

end BD_bidirec_0_2;

architecture stub of BD_bidirec_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "oe,inp,outp,bidir";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bidirec,Vivado 2022.2";
begin
end;
