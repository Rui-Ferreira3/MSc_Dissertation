-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Jan  9 23:27:35 2024
-- Host        : DESKTOP-8GAVNOH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/catia/Rui/MSc_Dissertation/SoC/RVfpgaXilinxIntercon/RVfpga_test/RVfpga_test.gen/sources_1/bd/interconnect/ip/interconnect_axi_bram_ctrl_0_bram_0/interconnect_axi_bram_ctrl_0_bram_0_stub.vhdl
-- Design      : interconnect_axi_bram_ctrl_0_bram_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity interconnect_axi_bram_ctrl_0_bram_0 is
  Port ( 
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rsta_busy : out STD_LOGIC
  );

end interconnect_axi_bram_ctrl_0_bram_0;

architecture stub of interconnect_axi_bram_ctrl_0_bram_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,rsta,ena,wea[7:0],addra[31:0],dina[63:0],douta[63:0],rsta_busy";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_5,Vivado 2022.2";
begin
end;
