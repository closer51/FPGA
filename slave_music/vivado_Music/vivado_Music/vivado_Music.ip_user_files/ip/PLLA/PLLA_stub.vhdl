-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Nov  3 03:11:22 2025
-- Host        : PC-1000-times running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top PLLA -prefix
--               PLLA_ PLLA_stub.vhdl
-- Design      : PLLA
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PLLA is
  Port ( 
    clkout0 : out STD_LOGIC;
    clkout1 : out STD_LOGIC;
    clkout2 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clkin : in STD_LOGIC
  );

end PLLA;

architecture stub of PLLA is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clkout0,clkout1,clkout2,locked,clkin";
begin
end;
