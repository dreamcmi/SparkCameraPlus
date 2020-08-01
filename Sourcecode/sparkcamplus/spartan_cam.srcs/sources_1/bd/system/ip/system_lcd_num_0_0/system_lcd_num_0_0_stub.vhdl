-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Jul 28 11:47:46 2020
-- Host        : WIN-PHF0MALM9JS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_lcd_num_0_0/system_lcd_num_0_0_stub.vhdl
-- Design      : system_lcd_num_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s15ftgb196-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_lcd_num_0_0 is
  Port ( 
    num : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ardi_io : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end system_lcd_num_0_0;

architecture stub of system_lcd_num_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "num[3:0],ardi_io[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "lcd_num,Vivado 2018.3";
begin
end;
