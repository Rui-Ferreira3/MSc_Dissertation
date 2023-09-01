-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Aug 31 16:53:29 2023
-- Host        : DESKTOP-8UFOBMP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Rui/Rui/MSc_Dissertation/SoC/base/project/project.gen/sources_1/bd/BD/ip/BD_bidirec_6_1/BD_bidirec_6_1_sim_netlist.vhdl
-- Design      : BD_bidirec_6_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_bidirec_6_1 is
  port (
    oe : in STD_LOGIC;
    inp : in STD_LOGIC;
    outp : out STD_LOGIC;
    bidir : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BD_bidirec_6_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BD_bidirec_6_1 : entity is "BD_bidirec_6_1,bidirec,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of BD_bidirec_6_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of BD_bidirec_6_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of BD_bidirec_6_1 : entity is "bidirec,Vivado 2022.2";
end BD_bidirec_6_1;

architecture STRUCTURE of BD_bidirec_6_1 is
  signal \^bidir\ : STD_LOGIC;
begin
  bidir <= \^bidir\;
  outp <= \^bidir\;
bidir_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => inp,
      I1 => oe,
      O => \^bidir\
    );
end STRUCTURE;
