-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "03/27/2019 23:29:22"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FIFObufferWC IS
    PORT (
	CLK : IN std_logic;
	storeData : IN std_logic;
	store_ID : IN std_logic;
	sendData : IN std_logic;
	dataIn : IN std_logic_vector(15 DOWNTO 0);
	dataOut : OUT std_logic_vector(7 DOWNTO 0);
	empty : OUT std_logic
	);
END FIFObufferWC;

-- Design Ports Information
-- dataOut[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[1]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[4]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[5]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[6]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[7]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- empty	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[8]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- store_ID	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[9]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[10]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[11]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[12]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[5]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[13]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[6]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[14]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[7]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[15]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- storeData	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendData	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FIFObufferWC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_storeData : std_logic;
SIGNAL ww_store_ID : std_logic;
SIGNAL ww_sendData : std_logic;
SIGNAL ww_dataIn : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_empty : std_logic;
SIGNAL \state.STOREID~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \dataOut[4]~output_o\ : std_logic;
SIGNAL \dataOut[5]~output_o\ : std_logic;
SIGNAL \dataOut[6]~output_o\ : std_logic;
SIGNAL \dataOut[7]~output_o\ : std_logic;
SIGNAL \empty~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \store_ID~input_o\ : std_logic;
SIGNAL \sendData~input_o\ : std_logic;
SIGNAL \storeData~input_o\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \state.STOREID~q\ : std_logic;
SIGNAL \state.STOREID~clkctrl_outclk\ : std_logic;
SIGNAL \dataIn[8]~input_o\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \state.STORE~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \state.SEND~q\ : std_logic;
SIGNAL \FS[1]~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \FS[2]~2_combout\ : std_logic;
SIGNAL \NS[0]~7_combout\ : std_logic;
SIGNAL \NS[1]~8_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \NS[2]~5_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \NS[3]~6_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \OS[1]~0_combout\ : std_logic;
SIGNAL \OS[1]~1_combout\ : std_logic;
SIGNAL \OS[1]~4_combout\ : std_logic;
SIGNAL \OS[1]~5_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \OS[2]~7_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \OS[3]~6_combout\ : std_logic;
SIGNAL \NS[0]~0_combout\ : std_logic;
SIGNAL \OS[2]~2_combout\ : std_logic;
SIGNAL \OS[0]~3_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \NS[0]~1_combout\ : std_logic;
SIGNAL \NS[0]~4_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \FS[3]~3_combout\ : std_logic;
SIGNAL \NS[0]~2_combout\ : std_logic;
SIGNAL \NS[0]~3_combout\ : std_logic;
SIGNAL \FS[0]~0_combout\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \datArray[12][3]~12_combout\ : std_logic;
SIGNAL \datArray[12][0]~q\ : std_logic;
SIGNAL \datArray[6][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \datArray[6][4]~4_combout\ : std_logic;
SIGNAL \datArray[6][0]~q\ : std_logic;
SIGNAL \datArray[7][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \datArray[7][2]~7_combout\ : std_logic;
SIGNAL \datArray[7][0]~q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \datArray[4][2]~6_combout\ : std_logic;
SIGNAL \datArray[4][0]~q\ : std_logic;
SIGNAL \datArray[5][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \datArray[5][0]~5_combout\ : std_logic;
SIGNAL \datArray[5][0]~q\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \datArray[0][4]~10_combout\ : std_logic;
SIGNAL \datArray[0][0]~q\ : std_logic;
SIGNAL \datArray[1][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \datArray[1][3]~9_combout\ : std_logic;
SIGNAL \datArray[1][0]~q\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \datArray[3][1]~11_combout\ : std_logic;
SIGNAL \datArray[3][0]~q\ : std_logic;
SIGNAL \datArray[2][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \datArray[2][3]~8_combout\ : std_logic;
SIGNAL \datArray[2][0]~q\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \datArray[9][7]~0_combout\ : std_logic;
SIGNAL \datArray[9][0]~q\ : std_logic;
SIGNAL \datArray[11][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \datArray[11][0]~3_combout\ : std_logic;
SIGNAL \datArray[11][0]~q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \datArray[10][1]~1_combout\ : std_logic;
SIGNAL \datArray[10][0]~q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \datArray[8][6]~2_combout\ : std_logic;
SIGNAL \datArray[8][0]~q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \dataOut[0]$latch~combout\ : std_logic;
SIGNAL \dataIn[9]~input_o\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \datArray[12][1]~q\ : std_logic;
SIGNAL \datArray[11][1]~feeder_combout\ : std_logic;
SIGNAL \datArray[11][1]~q\ : std_logic;
SIGNAL \datArray[10][1]~q\ : std_logic;
SIGNAL \datArray[9][1]~feeder_combout\ : std_logic;
SIGNAL \datArray[9][1]~q\ : std_logic;
SIGNAL \datArray[8][1]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \datArray[2][1]~feeder_combout\ : std_logic;
SIGNAL \datArray[2][1]~q\ : std_logic;
SIGNAL \datArray[3][1]~q\ : std_logic;
SIGNAL \datArray[0][1]~q\ : std_logic;
SIGNAL \datArray[1][1]~q\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \datArray[5][1]~feeder_combout\ : std_logic;
SIGNAL \datArray[5][1]~q\ : std_logic;
SIGNAL \datArray[7][1]~feeder_combout\ : std_logic;
SIGNAL \datArray[7][1]~q\ : std_logic;
SIGNAL \datArray[4][1]~q\ : std_logic;
SIGNAL \datArray[6][1]~feeder_combout\ : std_logic;
SIGNAL \datArray[6][1]~q\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \dataOut[1]$latch~combout\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \dataIn[10]~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \datArray[12][2]~feeder_combout\ : std_logic;
SIGNAL \datArray[12][2]~q\ : std_logic;
SIGNAL \datArray[7][2]~feeder_combout\ : std_logic;
SIGNAL \datArray[7][2]~q\ : std_logic;
SIGNAL \datArray[6][2]~q\ : std_logic;
SIGNAL \datArray[4][2]~q\ : std_logic;
SIGNAL \datArray[5][2]~feeder_combout\ : std_logic;
SIGNAL \datArray[5][2]~q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \datArray[1][2]~q\ : std_logic;
SIGNAL \datArray[3][2]~q\ : std_logic;
SIGNAL \datArray[0][2]~q\ : std_logic;
SIGNAL \datArray[2][2]~feeder_combout\ : std_logic;
SIGNAL \datArray[2][2]~q\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \datArray[9][2]~feeder_combout\ : std_logic;
SIGNAL \datArray[9][2]~q\ : std_logic;
SIGNAL \datArray[11][2]~q\ : std_logic;
SIGNAL \datArray[10][2]~q\ : std_logic;
SIGNAL \datArray[8][2]~q\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \dataOut[2]$latch~combout\ : std_logic;
SIGNAL \dataIn[11]~input_o\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \datArray[12][3]~feeder_combout\ : std_logic;
SIGNAL \datArray[12][3]~q\ : std_logic;
SIGNAL \datArray[2][3]~feeder_combout\ : std_logic;
SIGNAL \datArray[2][3]~q\ : std_logic;
SIGNAL \datArray[3][3]~q\ : std_logic;
SIGNAL \datArray[0][3]~q\ : std_logic;
SIGNAL \datArray[1][3]~q\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \datArray[7][3]~feeder_combout\ : std_logic;
SIGNAL \datArray[7][3]~q\ : std_logic;
SIGNAL \datArray[5][3]~feeder_combout\ : std_logic;
SIGNAL \datArray[5][3]~q\ : std_logic;
SIGNAL \datArray[4][3]~q\ : std_logic;
SIGNAL \datArray[6][3]~q\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \datArray[11][3]~feeder_combout\ : std_logic;
SIGNAL \datArray[11][3]~q\ : std_logic;
SIGNAL \datArray[10][3]~q\ : std_logic;
SIGNAL \datArray[9][3]~feeder_combout\ : std_logic;
SIGNAL \datArray[9][3]~q\ : std_logic;
SIGNAL \datArray[8][3]~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \dataOut[3]$latch~combout\ : std_logic;
SIGNAL \dataIn[12]~input_o\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \datArray[6][4]~feeder_combout\ : std_logic;
SIGNAL \datArray[6][4]~q\ : std_logic;
SIGNAL \datArray[4][4]~q\ : std_logic;
SIGNAL \datArray[5][4]~feeder_combout\ : std_logic;
SIGNAL \datArray[5][4]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \datArray[7][4]~feeder_combout\ : std_logic;
SIGNAL \datArray[7][4]~q\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \datArray[12][4]~feeder_combout\ : std_logic;
SIGNAL \datArray[12][4]~q\ : std_logic;
SIGNAL \datArray[3][4]~q\ : std_logic;
SIGNAL \datArray[1][4]~q\ : std_logic;
SIGNAL \datArray[0][4]~q\ : std_logic;
SIGNAL \datArray[2][4]~feeder_combout\ : std_logic;
SIGNAL \datArray[2][4]~q\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \datArray[9][4]~feeder_combout\ : std_logic;
SIGNAL \datArray[9][4]~q\ : std_logic;
SIGNAL \datArray[11][4]~q\ : std_logic;
SIGNAL \datArray[10][4]~feeder_combout\ : std_logic;
SIGNAL \datArray[10][4]~q\ : std_logic;
SIGNAL \datArray[8][4]~q\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \dataOut[4]$latch~combout\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \dataIn[13]~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \datArray[12][5]~feeder_combout\ : std_logic;
SIGNAL \datArray[12][5]~q\ : std_logic;
SIGNAL \datArray[2][5]~feeder_combout\ : std_logic;
SIGNAL \datArray[2][5]~q\ : std_logic;
SIGNAL \datArray[3][5]~q\ : std_logic;
SIGNAL \datArray[0][5]~q\ : std_logic;
SIGNAL \datArray[1][5]~feeder_combout\ : std_logic;
SIGNAL \datArray[1][5]~q\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \datArray[7][5]~feeder_combout\ : std_logic;
SIGNAL \datArray[7][5]~q\ : std_logic;
SIGNAL \datArray[5][5]~feeder_combout\ : std_logic;
SIGNAL \datArray[5][5]~q\ : std_logic;
SIGNAL \datArray[4][5]~q\ : std_logic;
SIGNAL \datArray[6][5]~feeder_combout\ : std_logic;
SIGNAL \datArray[6][5]~q\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \datArray[11][5]~feeder_combout\ : std_logic;
SIGNAL \datArray[11][5]~q\ : std_logic;
SIGNAL \datArray[10][5]~q\ : std_logic;
SIGNAL \datArray[9][5]~feeder_combout\ : std_logic;
SIGNAL \datArray[9][5]~q\ : std_logic;
SIGNAL \datArray[8][5]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \dataOut[5]$latch~combout\ : std_logic;
SIGNAL \dataIn[14]~input_o\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \datArray[7][6]~feeder_combout\ : std_logic;
SIGNAL \datArray[7][6]~q\ : std_logic;
SIGNAL \datArray[4][6]~q\ : std_logic;
SIGNAL \datArray[5][6]~feeder_combout\ : std_logic;
SIGNAL \datArray[5][6]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \datArray[6][6]~feeder_combout\ : std_logic;
SIGNAL \datArray[6][6]~q\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \datArray[12][6]~feeder_combout\ : std_logic;
SIGNAL \datArray[12][6]~q\ : std_logic;
SIGNAL \datArray[9][6]~feeder_combout\ : std_logic;
SIGNAL \datArray[9][6]~q\ : std_logic;
SIGNAL \datArray[11][6]~q\ : std_logic;
SIGNAL \datArray[10][6]~feeder_combout\ : std_logic;
SIGNAL \datArray[10][6]~q\ : std_logic;
SIGNAL \datArray[8][6]~q\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \datArray[0][6]~q\ : std_logic;
SIGNAL \datArray[2][6]~feeder_combout\ : std_logic;
SIGNAL \datArray[2][6]~q\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \datArray[3][6]~q\ : std_logic;
SIGNAL \datArray[1][6]~feeder_combout\ : std_logic;
SIGNAL \datArray[1][6]~q\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \dataOut[6]$latch~combout\ : std_logic;
SIGNAL \dataIn[15]~input_o\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \datArray[12][7]~feeder_combout\ : std_logic;
SIGNAL \datArray[12][7]~q\ : std_logic;
SIGNAL \datArray[11][7]~feeder_combout\ : std_logic;
SIGNAL \datArray[11][7]~q\ : std_logic;
SIGNAL \datArray[10][7]~q\ : std_logic;
SIGNAL \datArray[9][7]~q\ : std_logic;
SIGNAL \datArray[8][7]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \datArray[2][7]~feeder_combout\ : std_logic;
SIGNAL \datArray[2][7]~q\ : std_logic;
SIGNAL \datArray[3][7]~q\ : std_logic;
SIGNAL \datArray[1][7]~q\ : std_logic;
SIGNAL \datArray[0][7]~q\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \datArray[5][7]~feeder_combout\ : std_logic;
SIGNAL \datArray[5][7]~q\ : std_logic;
SIGNAL \datArray[7][7]~feeder_combout\ : std_logic;
SIGNAL \datArray[7][7]~q\ : std_logic;
SIGNAL \datArray[4][7]~q\ : std_logic;
SIGNAL \datArray[6][7]~feeder_combout\ : std_logic;
SIGNAL \datArray[6][7]~q\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \dataOut[7]$latch~combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Selector126~0_combout\ : std_logic;
SIGNAL \empty$latch~combout\ : std_logic;
SIGNAL OS : std_logic_vector(3 DOWNTO 0);
SIGNAL NS : std_logic_vector(3 DOWNTO 0);
SIGNAL FS : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_storeData <= storeData;
ww_store_ID <= store_ID;
ww_sendData <= sendData;
ww_dataIn <= dataIn;
dataOut <= ww_dataOut;
empty <= ww_empty;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\state.STOREID~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \state.STOREID~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y0_N23
\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[0]$latch~combout\,
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[1]$latch~combout\,
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[2]$latch~combout\,
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[3]$latch~combout\,
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\dataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[4]$latch~combout\,
	devoe => ww_devoe,
	o => \dataOut[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\dataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[5]$latch~combout\,
	devoe => ww_devoe,
	o => \dataOut[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\dataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[6]$latch~combout\,
	devoe => ww_devoe,
	o => \dataOut[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\dataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[7]$latch~combout\,
	devoe => ww_devoe,
	o => \dataOut[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\empty~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \empty$latch~combout\,
	devoe => ww_devoe,
	o => \empty~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X14_Y0_N1
\store_ID~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_store_ID,
	o => \store_ID~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\sendData~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sendData,
	o => \sendData~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\storeData~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_storeData,
	o => \storeData~input_o\);

-- Location: LCCOMB_X9_Y4_N28
\state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~13_combout\ = (!\state.IDLE~q\ & ((\sendData~input_o\) # ((\store_ID~input_o\) # (\storeData~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sendData~input_o\,
	datab => \store_ID~input_o\,
	datac => \state.IDLE~q\,
	datad => \storeData~input_o\,
	combout => \state~13_combout\);

-- Location: FF_X9_Y4_N29
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LCCOMB_X9_Y4_N30
\state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~10_combout\ = (\store_ID~input_o\ & !\state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \store_ID~input_o\,
	datad => \state.IDLE~q\,
	combout => \state~10_combout\);

-- Location: FF_X9_Y4_N31
\state.STOREID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STOREID~q\);

-- Location: CLKCTRL_G18
\state.STOREID~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \state.STOREID~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \state.STOREID~clkctrl_outclk\);

-- Location: IOIBUF_X27_Y0_N1
\dataIn[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(8),
	o => \dataIn[8]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

-- Location: LCCOMB_X9_Y4_N18
\state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~11_combout\ = (!\store_ID~input_o\ & (!\state.IDLE~q\ & \storeData~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \store_ID~input_o\,
	datab => \state.IDLE~q\,
	datad => \storeData~input_o\,
	combout => \state~11_combout\);

-- Location: FF_X8_Y4_N25
\state.STORE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \state~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STORE~q\);

-- Location: LCCOMB_X9_Y4_N16
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.STORE~q\ & ((\dataIn[0]~input_o\))) # (!\state.STORE~q\ & (\dataIn[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[8]~input_o\,
	datab => \dataIn[0]~input_o\,
	datad => \state.STORE~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X9_Y4_N6
\state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~12_combout\ = (\sendData~input_o\ & (!\storeData~input_o\ & (!\store_ID~input_o\ & !\state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sendData~input_o\,
	datab => \storeData~input_o\,
	datac => \store_ID~input_o\,
	datad => \state.IDLE~q\,
	combout => \state~12_combout\);

-- Location: FF_X9_Y4_N7
\state.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SEND~q\);

-- Location: LCCOMB_X8_Y4_N10
\FS[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FS[1]~1_combout\ = (\NS[0]~4_combout\ & (((FS(1))))) # (!\NS[0]~4_combout\ & (!\state.SEND~q\ & (FS(0) $ (FS(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NS[0]~4_combout\,
	datab => FS(0),
	datac => FS(1),
	datad => \state.SEND~q\,
	combout => \FS[1]~1_combout\);

-- Location: FF_X8_Y4_N11
\FS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FS[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FS(1));

-- Location: LCCOMB_X7_Y4_N30
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = FS(2) $ (((FS(0) & FS(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FS(0),
	datac => FS(1),
	datad => FS(2),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X8_Y4_N12
\FS[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FS[2]~2_combout\ = (\NS[0]~4_combout\ & (((FS(2))))) # (!\NS[0]~4_combout\ & (\Add0~0_combout\ & ((!\state.SEND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NS[0]~4_combout\,
	datab => \Add0~0_combout\,
	datac => FS(2),
	datad => \state.SEND~q\,
	combout => \FS[2]~2_combout\);

-- Location: FF_X8_Y4_N13
\FS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FS[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FS(2));

-- Location: LCCOMB_X8_Y4_N22
\NS[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS[0]~7_combout\ = (NS(0) & (\NS[0]~3_combout\ & (\NS[0]~1_combout\))) # (!NS(0) & (\state.STORE~q\ & ((!\NS[0]~1_combout\) # (!\NS[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NS[0]~3_combout\,
	datab => \NS[0]~1_combout\,
	datac => NS(0),
	datad => \state.STORE~q\,
	combout => \NS[0]~7_combout\);

-- Location: FF_X8_Y4_N23
\NS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \NS[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NS(0));

-- Location: LCCOMB_X8_Y4_N14
\NS[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS[1]~8_combout\ = (\NS[0]~4_combout\ & (((NS(1))))) # (!\NS[0]~4_combout\ & (\state.STORE~q\ & (NS(1) $ (NS(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NS[0]~4_combout\,
	datab => \state.STORE~q\,
	datac => NS(1),
	datad => NS(0),
	combout => \NS[1]~8_combout\);

-- Location: FF_X8_Y4_N15
\NS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \NS[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NS(1));

-- Location: LCCOMB_X9_Y4_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = NS(2) $ (((NS(0) & NS(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NS(2),
	datab => NS(0),
	datad => NS(1),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X8_Y4_N20
\NS[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS[2]~5_combout\ = (\NS[0]~4_combout\ & (((NS(2))))) # (!\NS[0]~4_combout\ & (\Add1~0_combout\ & ((\state.STORE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NS[0]~4_combout\,
	datab => \Add1~0_combout\,
	datac => NS(2),
	datad => \state.STORE~q\,
	combout => \NS[2]~5_combout\);

-- Location: FF_X8_Y4_N21
\NS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \NS[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NS(2));

-- Location: LCCOMB_X9_Y4_N22
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = NS(3) $ (((NS(1) & (NS(0) & NS(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NS(1),
	datab => NS(0),
	datac => NS(2),
	datad => NS(3),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X8_Y4_N16
\NS[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS[3]~6_combout\ = (\NS[0]~4_combout\ & (((NS(3))))) # (!\NS[0]~4_combout\ & (\state.STORE~q\ & ((\Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NS[0]~4_combout\,
	datab => \state.STORE~q\,
	datac => NS(3),
	datad => \Add1~1_combout\,
	combout => \NS[3]~6_combout\);

-- Location: FF_X8_Y4_N17
\NS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \NS[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NS(3));

-- Location: LCCOMB_X8_Y4_N4
\process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!FS(2) & (!NS(2) & (!FS(3) & !NS(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(2),
	datab => NS(2),
	datac => FS(3),
	datad => NS(3),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X9_Y4_N26
\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!FS(1) & (!FS(0) & (!NS(1) & !NS(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(1),
	datab => FS(0),
	datac => NS(1),
	datad => NS(0),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X9_Y4_N24
\OS[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OS[1]~0_combout\ = (\state.STOREID~q\ & (((!\process_0~1_combout\) # (!\process_0~0_combout\)) # (!\process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STOREID~q\,
	datab => \process_0~2_combout\,
	datac => \process_0~0_combout\,
	datad => \process_0~1_combout\,
	combout => \OS[1]~0_combout\);

-- Location: LCCOMB_X8_Y5_N26
\OS[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OS[1]~1_combout\ = (\state.STORE~q\) # (!\state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IDLE~q\,
	datad => \state.STORE~q\,
	combout => \OS[1]~1_combout\);

-- Location: LCCOMB_X9_Y4_N12
\OS[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OS[1]~4_combout\ = (\OS[1]~0_combout\) # ((\state.STORE~q\) # (!\state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OS[1]~0_combout\,
	datab => \state.STORE~q\,
	datad => \state.IDLE~q\,
	combout => \OS[1]~4_combout\);

-- Location: LCCOMB_X8_Y5_N0
\OS[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OS[1]~5_combout\ = (\OS[1]~4_combout\ & (((OS(1))))) # (!\OS[1]~4_combout\ & (\OS[2]~2_combout\ & (OS(0) $ (OS(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OS[1]~4_combout\,
	datab => OS(0),
	datac => OS(1),
	datad => \OS[2]~2_combout\,
	combout => \OS[1]~5_combout\);

-- Location: FF_X8_Y5_N1
\OS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \OS[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OS(1));

-- Location: LCCOMB_X9_Y5_N20
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = OS(2) $ (((OS(0) & OS(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(2),
	datac => OS(0),
	datad => OS(1),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X8_Y5_N22
\OS[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OS[2]~7_combout\ = (\OS[1]~4_combout\ & (((OS(2))))) # (!\OS[1]~4_combout\ & (\OS[2]~2_combout\ & (\Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OS[2]~2_combout\,
	datab => \Add2~1_combout\,
	datac => OS(2),
	datad => \OS[1]~4_combout\,
	combout => \OS[2]~7_combout\);

-- Location: FF_X8_Y5_N23
\OS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \OS[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OS(2));

-- Location: LCCOMB_X9_Y5_N10
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = OS(3) $ (((OS(1) & (OS(0) & OS(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(1),
	datab => OS(3),
	datac => OS(0),
	datad => OS(2),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X8_Y5_N2
\OS[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OS[3]~6_combout\ = (\OS[1]~4_combout\ & (((OS(3))))) # (!\OS[1]~4_combout\ & (\OS[2]~2_combout\ & (\Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OS[2]~2_combout\,
	datab => \Add2~0_combout\,
	datac => OS(3),
	datad => \OS[1]~4_combout\,
	combout => \OS[3]~6_combout\);

-- Location: FF_X8_Y5_N3
\OS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \OS[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OS(3));

-- Location: LCCOMB_X9_Y5_N30
\NS[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS[0]~0_combout\ = (!OS(1) & (OS(3) & (OS(2) & !OS(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(1),
	datab => OS(3),
	datac => OS(2),
	datad => OS(0),
	combout => \NS[0]~0_combout\);

-- Location: LCCOMB_X9_Y5_N16
\OS[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OS[2]~2_combout\ = (!\NS[0]~0_combout\ & \state.SEND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \NS[0]~0_combout\,
	datad => \state.SEND~q\,
	combout => \OS[2]~2_combout\);

-- Location: LCCOMB_X8_Y5_N18
\OS[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OS[0]~3_combout\ = (\OS[1]~0_combout\ & (((OS(0))))) # (!\OS[1]~0_combout\ & ((\OS[1]~1_combout\ & (OS(0))) # (!\OS[1]~1_combout\ & (!OS(0) & \OS[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OS[1]~0_combout\,
	datab => \OS[1]~1_combout\,
	datac => OS(0),
	datad => \OS[2]~2_combout\,
	combout => \OS[0]~3_combout\);

-- Location: FF_X8_Y5_N19
\OS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \OS[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OS(0));

-- Location: LCCOMB_X8_Y5_N24
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!OS(0) & (!OS(3) & (!OS(2) & !OS(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => OS(3),
	datac => OS(2),
	datad => OS(1),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X8_Y4_N6
\NS[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS[0]~1_combout\ = (((!\process_0~1_combout\) # (!\process_0~0_combout\)) # (!\process_0~2_combout\)) # (!\state.STOREID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STOREID~q\,
	datab => \process_0~2_combout\,
	datac => \process_0~0_combout\,
	datad => \process_0~1_combout\,
	combout => \NS[0]~1_combout\);

-- Location: LCCOMB_X8_Y4_N24
\NS[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS[0]~4_combout\ = (\NS[0]~3_combout\ & \NS[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NS[0]~3_combout\,
	datab => \NS[0]~1_combout\,
	combout => \NS[0]~4_combout\);

-- Location: LCCOMB_X7_Y4_N24
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = FS(3) $ (((FS(0) & (FS(1) & FS(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(3),
	datab => FS(0),
	datac => FS(1),
	datad => FS(2),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X8_Y4_N2
\FS[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FS[3]~3_combout\ = (\NS[0]~4_combout\ & (((FS(3))))) # (!\NS[0]~4_combout\ & (\Add0~1_combout\ & ((!\state.SEND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NS[0]~4_combout\,
	datab => \Add0~1_combout\,
	datac => FS(3),
	datad => \state.SEND~q\,
	combout => \FS[3]~3_combout\);

-- Location: FF_X8_Y4_N3
\FS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FS[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FS(3));

-- Location: LCCOMB_X7_Y4_N4
\NS[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS[0]~2_combout\ = (FS(3) & (!FS(1) & (FS(2) & !FS(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(3),
	datab => FS(1),
	datac => FS(2),
	datad => FS(0),
	combout => \NS[0]~2_combout\);

-- Location: LCCOMB_X8_Y4_N26
\NS[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS[0]~3_combout\ = (\state.SEND~q\ & (!\NS[0]~0_combout\ & ((\NS[0]~2_combout\) # (!\state.STORE~q\)))) # (!\state.SEND~q\ & (((\NS[0]~2_combout\)) # (!\state.STORE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SEND~q\,
	datab => \state.STORE~q\,
	datac => \NS[0]~2_combout\,
	datad => \NS[0]~0_combout\,
	combout => \NS[0]~3_combout\);

-- Location: LCCOMB_X8_Y4_N18
\FS[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FS[0]~0_combout\ = (FS(0) & (\NS[0]~3_combout\ & (\NS[0]~1_combout\))) # (!FS(0) & (!\state.SEND~q\ & ((!\NS[0]~1_combout\) # (!\NS[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NS[0]~3_combout\,
	datab => \NS[0]~1_combout\,
	datac => FS(0),
	datad => \state.SEND~q\,
	combout => \FS[0]~0_combout\);

-- Location: FF_X8_Y4_N19
\FS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \FS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FS(0));

-- Location: LCCOMB_X10_Y5_N16
\Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = (!FS(0) & (!FS(1) & (FS(2) & FS(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(0),
	datab => FS(1),
	datac => FS(2),
	datad => FS(3),
	combout => \Decoder0~12_combout\);

-- Location: LCCOMB_X10_Y5_N14
\datArray[12][3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[12][3]~12_combout\ = (\state.STOREID~q\ & \Decoder0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STOREID~q\,
	datad => \Decoder0~12_combout\,
	combout => \datArray[12][3]~12_combout\);

-- Location: FF_X10_Y5_N15
\datArray[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector10~0_combout\,
	sload => VCC,
	ena => \datArray[12][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[12][0]~q\);

-- Location: LCCOMB_X10_Y5_N8
\datArray[6][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[6][0]~feeder_combout\ = \Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector10~0_combout\,
	combout => \datArray[6][0]~feeder_combout\);

-- Location: LCCOMB_X8_Y4_N0
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (FS(1) & (!FS(0) & (!FS(3) & FS(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(1),
	datab => FS(0),
	datac => FS(3),
	datad => FS(2),
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X10_Y5_N22
\datArray[6][4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[6][4]~4_combout\ = (!\state.SEND~q\ & (\state.IDLE~q\ & \Decoder0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SEND~q\,
	datab => \state.IDLE~q\,
	datad => \Decoder0~4_combout\,
	combout => \datArray[6][4]~4_combout\);

-- Location: FF_X10_Y5_N9
\datArray[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[6][0]~feeder_combout\,
	ena => \datArray[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[6][0]~q\);

-- Location: LCCOMB_X11_Y5_N28
\datArray[7][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[7][0]~feeder_combout\ = \Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector10~0_combout\,
	combout => \datArray[7][0]~feeder_combout\);

-- Location: LCCOMB_X11_Y5_N20
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (FS(1) & (FS(0) & (FS(2) & !FS(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(1),
	datab => FS(0),
	datac => FS(2),
	datad => FS(3),
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X11_Y5_N18
\datArray[7][2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[7][2]~7_combout\ = (\state.IDLE~q\ & (!\state.SEND~q\ & \Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datac => \state.SEND~q\,
	datad => \Decoder0~7_combout\,
	combout => \datArray[7][2]~7_combout\);

-- Location: FF_X11_Y5_N29
\datArray[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[7][0]~feeder_combout\,
	ena => \datArray[7][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[7][0]~q\);

-- Location: LCCOMB_X8_Y5_N10
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!FS(0) & (!FS(1) & (FS(2) & !FS(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(0),
	datab => FS(1),
	datac => FS(2),
	datad => FS(3),
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X8_Y5_N12
\datArray[4][2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[4][2]~6_combout\ = (!\state.SEND~q\ & (\state.IDLE~q\ & \Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.SEND~q\,
	datac => \state.IDLE~q\,
	datad => \Decoder0~6_combout\,
	combout => \datArray[4][2]~6_combout\);

-- Location: FF_X8_Y5_N17
\datArray[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector10~0_combout\,
	sload => VCC,
	ena => \datArray[4][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[4][0]~q\);

-- Location: LCCOMB_X10_Y4_N0
\datArray[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[5][0]~feeder_combout\ = \Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector10~0_combout\,
	combout => \datArray[5][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y4_N14
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!FS(1) & (FS(0) & (!FS(3) & FS(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(1),
	datab => FS(0),
	datac => FS(3),
	datad => FS(2),
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X10_Y4_N20
\datArray[5][0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[5][0]~5_combout\ = (!\state.SEND~q\ & (\state.IDLE~q\ & \Decoder0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.SEND~q\,
	datac => \state.IDLE~q\,
	datad => \Decoder0~5_combout\,
	combout => \datArray[5][0]~5_combout\);

-- Location: FF_X10_Y4_N1
\datArray[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[5][0]~feeder_combout\,
	ena => \datArray[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[5][0]~q\);

-- Location: LCCOMB_X8_Y5_N16
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (OS(0) & ((OS(1)) # ((\datArray[5][0]~q\)))) # (!OS(0) & (!OS(1) & (\datArray[4][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => OS(1),
	datac => \datArray[4][0]~q\,
	datad => \datArray[5][0]~q\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X9_Y5_N26
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (OS(1) & ((\Mux7~2_combout\ & ((\datArray[7][0]~q\))) # (!\Mux7~2_combout\ & (\datArray[6][0]~q\)))) # (!OS(1) & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(1),
	datab => \datArray[6][0]~q\,
	datac => \datArray[7][0]~q\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X7_Y4_N20
\Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (!FS(0) & (!FS(1) & (!FS(2) & !FS(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(0),
	datab => FS(1),
	datac => FS(2),
	datad => FS(3),
	combout => \Decoder0~10_combout\);

-- Location: LCCOMB_X7_Y4_N10
\datArray[0][4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[0][4]~10_combout\ = (!\state.SEND~q\ & (\state.IDLE~q\ & \Decoder0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.SEND~q\,
	datac => \state.IDLE~q\,
	datad => \Decoder0~10_combout\,
	combout => \datArray[0][4]~10_combout\);

-- Location: FF_X9_Y5_N25
\datArray[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector10~0_combout\,
	sload => VCC,
	ena => \datArray[0][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[0][0]~q\);

-- Location: LCCOMB_X9_Y4_N2
\datArray[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[1][0]~feeder_combout\ = \Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector10~0_combout\,
	combout => \datArray[1][0]~feeder_combout\);

-- Location: LCCOMB_X9_Y4_N20
\Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (!FS(2) & (FS(0) & (!FS(3) & !FS(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(2),
	datab => FS(0),
	datac => FS(3),
	datad => FS(1),
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X9_Y4_N8
\datArray[1][3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[1][3]~9_combout\ = (!\state.SEND~q\ & (\state.IDLE~q\ & \Decoder0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SEND~q\,
	datab => \state.IDLE~q\,
	datad => \Decoder0~9_combout\,
	combout => \datArray[1][3]~9_combout\);

-- Location: FF_X9_Y4_N3
\datArray[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[1][0]~feeder_combout\,
	ena => \datArray[1][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[1][0]~q\);

-- Location: LCCOMB_X9_Y5_N24
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (OS(1) & (OS(0))) # (!OS(1) & ((OS(0) & ((\datArray[1][0]~q\))) # (!OS(0) & (\datArray[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(1),
	datab => OS(0),
	datac => \datArray[0][0]~q\,
	datad => \datArray[1][0]~q\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X7_Y4_N12
\Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (!FS(3) & (!FS(2) & (FS(1) & FS(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(3),
	datab => FS(2),
	datac => FS(1),
	datad => FS(0),
	combout => \Decoder0~11_combout\);

-- Location: LCCOMB_X7_Y4_N2
\datArray[3][1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[3][1]~11_combout\ = (!\state.SEND~q\ & (\state.IDLE~q\ & \Decoder0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.SEND~q\,
	datac => \state.IDLE~q\,
	datad => \Decoder0~11_combout\,
	combout => \datArray[3][1]~11_combout\);

-- Location: FF_X9_Y5_N7
\datArray[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector10~0_combout\,
	sload => VCC,
	ena => \datArray[3][1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[3][0]~q\);

-- Location: LCCOMB_X6_Y4_N8
\datArray[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[2][0]~feeder_combout\ = \Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector10~0_combout\,
	combout => \datArray[2][0]~feeder_combout\);

-- Location: LCCOMB_X7_Y4_N22
\Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (!FS(3) & (!FS(2) & (FS(1) & !FS(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(3),
	datab => FS(2),
	datac => FS(1),
	datad => FS(0),
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X6_Y4_N20
\datArray[2][3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[2][3]~8_combout\ = (\state.IDLE~q\ & (!\state.SEND~q\ & \Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IDLE~q\,
	datac => \state.SEND~q\,
	datad => \Decoder0~8_combout\,
	combout => \datArray[2][3]~8_combout\);

-- Location: FF_X6_Y4_N9
\datArray[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[2][0]~feeder_combout\,
	ena => \datArray[2][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[2][0]~q\);

-- Location: LCCOMB_X9_Y5_N6
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (OS(1) & ((\Mux7~4_combout\ & (\datArray[3][0]~q\)) # (!\Mux7~4_combout\ & ((\datArray[2][0]~q\))))) # (!OS(1) & (\Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(1),
	datab => \Mux7~4_combout\,
	datac => \datArray[3][0]~q\,
	datad => \datArray[2][0]~q\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X9_Y5_N4
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (OS(2) & ((OS(3)) # ((\Mux7~3_combout\)))) # (!OS(2) & (!OS(3) & ((\Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(2),
	datab => OS(3),
	datac => \Mux7~3_combout\,
	datad => \Mux7~5_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X7_Y5_N12
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (FS(3) & (!FS(1) & (!FS(2) & FS(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(3),
	datab => FS(1),
	datac => FS(2),
	datad => FS(0),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X7_Y5_N6
\datArray[9][7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[9][7]~0_combout\ = (\state.IDLE~q\ & (!\state.SEND~q\ & \Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IDLE~q\,
	datac => \state.SEND~q\,
	datad => \Decoder0~0_combout\,
	combout => \datArray[9][7]~0_combout\);

-- Location: FF_X7_Y5_N5
\datArray[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector10~0_combout\,
	sload => VCC,
	ena => \datArray[9][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[9][0]~q\);

-- Location: LCCOMB_X7_Y6_N28
\datArray[11][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[11][0]~feeder_combout\ = \Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector10~0_combout\,
	combout => \datArray[11][0]~feeder_combout\);

-- Location: LCCOMB_X7_Y4_N0
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (FS(0) & (FS(1) & (!FS(2) & FS(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(0),
	datab => FS(1),
	datac => FS(2),
	datad => FS(3),
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X7_Y6_N10
\datArray[11][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[11][0]~3_combout\ = (!\state.SEND~q\ & (\state.IDLE~q\ & \Decoder0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.SEND~q\,
	datac => \state.IDLE~q\,
	datad => \Decoder0~3_combout\,
	combout => \datArray[11][0]~3_combout\);

-- Location: FF_X7_Y6_N29
\datArray[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[11][0]~feeder_combout\,
	ena => \datArray[11][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[11][0]~q\);

-- Location: LCCOMB_X7_Y4_N16
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!FS(0) & (FS(1) & (!FS(2) & FS(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(0),
	datab => FS(1),
	datac => FS(2),
	datad => FS(3),
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X8_Y6_N20
\datArray[10][1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[10][1]~1_combout\ = (\state.IDLE~q\ & (!\state.SEND~q\ & \Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \state.SEND~q\,
	datad => \Decoder0~1_combout\,
	combout => \datArray[10][1]~1_combout\);

-- Location: FF_X8_Y6_N13
\datArray[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector10~0_combout\,
	sload => VCC,
	ena => \datArray[10][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[10][0]~q\);

-- Location: LCCOMB_X7_Y4_N14
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!FS(0) & (!FS(1) & (!FS(2) & FS(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(0),
	datab => FS(1),
	datac => FS(2),
	datad => FS(3),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X8_Y6_N12
\datArray[8][6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[8][6]~2_combout\ = (\state.IDLE~q\ & (!\state.SEND~q\ & \Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \state.SEND~q\,
	datad => \Decoder0~2_combout\,
	combout => \datArray[8][6]~2_combout\);

-- Location: FF_X8_Y6_N31
\datArray[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector10~0_combout\,
	sload => VCC,
	ena => \datArray[8][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[8][0]~q\);

-- Location: LCCOMB_X8_Y6_N30
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (OS(1) & ((\datArray[10][0]~q\) # ((OS(0))))) # (!OS(1) & (((\datArray[8][0]~q\ & !OS(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[10][0]~q\,
	datab => OS(1),
	datac => \datArray[8][0]~q\,
	datad => OS(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X9_Y5_N28
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (OS(0) & ((\Mux7~0_combout\ & ((\datArray[11][0]~q\))) # (!\Mux7~0_combout\ & (\datArray[9][0]~q\)))) # (!OS(0) & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => \datArray[9][0]~q\,
	datac => \datArray[11][0]~q\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X9_Y5_N22
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (OS(3) & ((\Mux7~6_combout\ & (\datArray[12][0]~q\)) # (!\Mux7~6_combout\ & ((\Mux7~1_combout\))))) # (!OS(3) & (((\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[12][0]~q\,
	datab => OS(3),
	datac => \Mux7~6_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X9_Y5_N18
\dataOut[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut[0]$latch~combout\ = (GLOBAL(\state.STOREID~clkctrl_outclk\) & (\dataOut[0]$latch~combout\)) # (!GLOBAL(\state.STOREID~clkctrl_outclk\) & ((\Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataOut[0]$latch~combout\,
	datac => \state.STOREID~clkctrl_outclk\,
	datad => \Mux7~7_combout\,
	combout => \dataOut[0]$latch~combout\);

-- Location: IOIBUF_X0_Y12_N8
\dataIn[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(9),
	o => \dataIn[9]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

-- Location: LCCOMB_X7_Y5_N30
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state.STORE~q\ & ((\dataIn[1]~input_o\))) # (!\state.STORE~q\ & (\dataIn[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[9]~input_o\,
	datab => \dataIn[1]~input_o\,
	datad => \state.STORE~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X10_Y5_N23
\datArray[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector9~0_combout\,
	sload => VCC,
	ena => \datArray[12][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[12][1]~q\);

-- Location: LCCOMB_X7_Y6_N14
\datArray[11][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[11][1]~feeder_combout\ = \Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector9~0_combout\,
	combout => \datArray[11][1]~feeder_combout\);

-- Location: FF_X7_Y6_N15
\datArray[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[11][1]~feeder_combout\,
	ena => \datArray[11][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[11][1]~q\);

-- Location: FF_X8_Y6_N1
\datArray[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector9~0_combout\,
	sload => VCC,
	ena => \datArray[10][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[10][1]~q\);

-- Location: LCCOMB_X7_Y5_N14
\datArray[9][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[9][1]~feeder_combout\ = \Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector9~0_combout\,
	combout => \datArray[9][1]~feeder_combout\);

-- Location: FF_X7_Y5_N15
\datArray[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[9][1]~feeder_combout\,
	ena => \datArray[9][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[9][1]~q\);

-- Location: FF_X8_Y6_N3
\datArray[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector9~0_combout\,
	sload => VCC,
	ena => \datArray[8][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[8][1]~q\);

-- Location: LCCOMB_X8_Y6_N2
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (OS(1) & (((OS(0))))) # (!OS(1) & ((OS(0) & (\datArray[9][1]~q\)) # (!OS(0) & ((\datArray[8][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[9][1]~q\,
	datab => OS(1),
	datac => \datArray[8][1]~q\,
	datad => OS(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X8_Y6_N0
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (OS(1) & ((\Mux6~0_combout\ & (\datArray[11][1]~q\)) # (!\Mux6~0_combout\ & ((\datArray[10][1]~q\))))) # (!OS(1) & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[11][1]~q\,
	datab => OS(1),
	datac => \datArray[10][1]~q\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X6_Y4_N6
\datArray[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[2][1]~feeder_combout\ = \Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector9~0_combout\,
	combout => \datArray[2][1]~feeder_combout\);

-- Location: FF_X6_Y4_N7
\datArray[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[2][1]~feeder_combout\,
	ena => \datArray[2][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[2][1]~q\);

-- Location: FF_X6_Y5_N23
\datArray[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector9~0_combout\,
	sload => VCC,
	ena => \datArray[3][1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[3][1]~q\);

-- Location: FF_X6_Y5_N1
\datArray[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector9~0_combout\,
	sload => VCC,
	ena => \datArray[0][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[0][1]~q\);

-- Location: FF_X9_Y4_N17
\datArray[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector9~0_combout\,
	sload => VCC,
	ena => \datArray[1][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[1][1]~q\);

-- Location: LCCOMB_X6_Y5_N0
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (OS(1) & (OS(0))) # (!OS(1) & ((OS(0) & ((\datArray[1][1]~q\))) # (!OS(0) & (\datArray[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(1),
	datab => OS(0),
	datac => \datArray[0][1]~q\,
	datad => \datArray[1][1]~q\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X6_Y5_N22
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (OS(1) & ((\Mux6~4_combout\ & ((\datArray[3][1]~q\))) # (!\Mux6~4_combout\ & (\datArray[2][1]~q\)))) # (!OS(1) & (((\Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[2][1]~q\,
	datab => OS(1),
	datac => \datArray[3][1]~q\,
	datad => \Mux6~4_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X10_Y4_N30
\datArray[5][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[5][1]~feeder_combout\ = \Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector9~0_combout\,
	combout => \datArray[5][1]~feeder_combout\);

-- Location: FF_X10_Y4_N31
\datArray[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[5][1]~feeder_combout\,
	ena => \datArray[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[5][1]~q\);

-- Location: LCCOMB_X11_Y5_N2
\datArray[7][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[7][1]~feeder_combout\ = \Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector9~0_combout\,
	combout => \datArray[7][1]~feeder_combout\);

-- Location: FF_X11_Y5_N3
\datArray[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[7][1]~feeder_combout\,
	ena => \datArray[7][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[7][1]~q\);

-- Location: FF_X8_Y5_N7
\datArray[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector9~0_combout\,
	sload => VCC,
	ena => \datArray[4][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[4][1]~q\);

-- Location: LCCOMB_X10_Y5_N12
\datArray[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[6][1]~feeder_combout\ = \Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector9~0_combout\,
	combout => \datArray[6][1]~feeder_combout\);

-- Location: FF_X10_Y5_N13
\datArray[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[6][1]~feeder_combout\,
	ena => \datArray[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[6][1]~q\);

-- Location: LCCOMB_X8_Y5_N6
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (OS(0) & (OS(1))) # (!OS(0) & ((OS(1) & ((\datArray[6][1]~q\))) # (!OS(1) & (\datArray[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => OS(1),
	datac => \datArray[4][1]~q\,
	datad => \datArray[6][1]~q\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X7_Y5_N28
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (OS(0) & ((\Mux6~2_combout\ & ((\datArray[7][1]~q\))) # (!\Mux6~2_combout\ & (\datArray[5][1]~q\)))) # (!OS(0) & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[5][1]~q\,
	datab => OS(0),
	datac => \datArray[7][1]~q\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X6_Y5_N12
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (OS(3) & (((OS(2))))) # (!OS(3) & ((OS(2) & ((\Mux6~3_combout\))) # (!OS(2) & (\Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => OS(3),
	datac => OS(2),
	datad => \Mux6~3_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X6_Y5_N2
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (OS(3) & ((\Mux6~6_combout\ & (\datArray[12][1]~q\)) # (!\Mux6~6_combout\ & ((\Mux6~1_combout\))))) # (!OS(3) & (((\Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(3),
	datab => \datArray[12][1]~q\,
	datac => \Mux6~1_combout\,
	datad => \Mux6~6_combout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X6_Y5_N30
\dataOut[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut[1]$latch~combout\ = (GLOBAL(\state.STOREID~clkctrl_outclk\) & (\dataOut[1]$latch~combout\)) # (!GLOBAL(\state.STOREID~clkctrl_outclk\) & ((\Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut[1]$latch~combout\,
	datab => \state.STOREID~clkctrl_outclk\,
	datad => \Mux6~7_combout\,
	combout => \dataOut[1]$latch~combout\);

-- Location: IOIBUF_X5_Y0_N15
\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\dataIn[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(10),
	o => \dataIn[10]~input_o\);

-- Location: LCCOMB_X7_Y4_N8
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.STORE~q\ & (\dataIn[2]~input_o\)) # (!\state.STORE~q\ & ((\dataIn[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STORE~q\,
	datac => \dataIn[2]~input_o\,
	datad => \dataIn[10]~input_o\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X10_Y5_N18
\datArray[12][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[12][2]~feeder_combout\ = \Selector8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector8~0_combout\,
	combout => \datArray[12][2]~feeder_combout\);

-- Location: FF_X10_Y5_N19
\datArray[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[12][2]~feeder_combout\,
	ena => \datArray[12][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[12][2]~q\);

-- Location: LCCOMB_X11_Y5_N0
\datArray[7][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[7][2]~feeder_combout\ = \Selector8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector8~0_combout\,
	combout => \datArray[7][2]~feeder_combout\);

-- Location: FF_X11_Y5_N1
\datArray[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[7][2]~feeder_combout\,
	ena => \datArray[7][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[7][2]~q\);

-- Location: FF_X10_Y5_N25
\datArray[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector8~0_combout\,
	sload => VCC,
	ena => \datArray[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[6][2]~q\);

-- Location: FF_X8_Y5_N27
\datArray[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector8~0_combout\,
	sload => VCC,
	ena => \datArray[4][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[4][2]~q\);

-- Location: LCCOMB_X10_Y4_N4
\datArray[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[5][2]~feeder_combout\ = \Selector8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector8~0_combout\,
	combout => \datArray[5][2]~feeder_combout\);

-- Location: FF_X10_Y4_N5
\datArray[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[5][2]~feeder_combout\,
	ena => \datArray[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[5][2]~q\);

-- Location: LCCOMB_X9_Y5_N8
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (OS(1) & (OS(0))) # (!OS(1) & ((OS(0) & ((\datArray[5][2]~q\))) # (!OS(0) & (\datArray[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(1),
	datab => OS(0),
	datac => \datArray[4][2]~q\,
	datad => \datArray[5][2]~q\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X10_Y5_N24
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (OS(1) & ((\Mux5~0_combout\ & (\datArray[7][2]~q\)) # (!\Mux5~0_combout\ & ((\datArray[6][2]~q\))))) # (!OS(1) & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(1),
	datab => \datArray[7][2]~q\,
	datac => \datArray[6][2]~q\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: FF_X9_Y4_N13
\datArray[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector8~0_combout\,
	sload => VCC,
	ena => \datArray[1][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[1][2]~q\);

-- Location: FF_X6_Y5_N9
\datArray[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector8~0_combout\,
	sload => VCC,
	ena => \datArray[3][1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[3][2]~q\);

-- Location: FF_X5_Y5_N13
\datArray[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector8~0_combout\,
	sload => VCC,
	ena => \datArray[0][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[0][2]~q\);

-- Location: LCCOMB_X6_Y4_N24
\datArray[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[2][2]~feeder_combout\ = \Selector8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector8~0_combout\,
	combout => \datArray[2][2]~feeder_combout\);

-- Location: FF_X6_Y4_N25
\datArray[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[2][2]~feeder_combout\,
	ena => \datArray[2][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[2][2]~q\);

-- Location: LCCOMB_X5_Y5_N12
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (OS(0) & (OS(1))) # (!OS(0) & ((OS(1) & ((\datArray[2][2]~q\))) # (!OS(1) & (\datArray[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => OS(1),
	datac => \datArray[0][2]~q\,
	datad => \datArray[2][2]~q\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X6_Y5_N8
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (OS(0) & ((\Mux5~4_combout\ & ((\datArray[3][2]~q\))) # (!\Mux5~4_combout\ & (\datArray[1][2]~q\)))) # (!OS(0) & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => \datArray[1][2]~q\,
	datac => \datArray[3][2]~q\,
	datad => \Mux5~4_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X7_Y5_N18
\datArray[9][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[9][2]~feeder_combout\ = \Selector8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector8~0_combout\,
	combout => \datArray[9][2]~feeder_combout\);

-- Location: FF_X7_Y5_N19
\datArray[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[9][2]~feeder_combout\,
	ena => \datArray[9][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[9][2]~q\);

-- Location: FF_X7_Y6_N23
\datArray[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector8~0_combout\,
	sload => VCC,
	ena => \datArray[11][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[11][2]~q\);

-- Location: FF_X8_Y6_N21
\datArray[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector8~0_combout\,
	sload => VCC,
	ena => \datArray[10][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[10][2]~q\);

-- Location: FF_X7_Y6_N25
\datArray[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector8~0_combout\,
	sload => VCC,
	ena => \datArray[8][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[8][2]~q\);

-- Location: LCCOMB_X7_Y6_N24
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (OS(1) & ((\datArray[10][2]~q\) # ((OS(0))))) # (!OS(1) & (((\datArray[8][2]~q\ & !OS(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[10][2]~q\,
	datab => OS(1),
	datac => \datArray[8][2]~q\,
	datad => OS(0),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X7_Y6_N22
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (OS(0) & ((\Mux5~2_combout\ & ((\datArray[11][2]~q\))) # (!\Mux5~2_combout\ & (\datArray[9][2]~q\)))) # (!OS(0) & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[9][2]~q\,
	datab => OS(0),
	datac => \datArray[11][2]~q\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X6_Y5_N10
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (OS(2) & (OS(3))) # (!OS(2) & ((OS(3) & ((\Mux5~3_combout\))) # (!OS(3) & (\Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(2),
	datab => OS(3),
	datac => \Mux5~5_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X6_Y5_N4
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (OS(2) & ((\Mux5~6_combout\ & (\datArray[12][2]~q\)) # (!\Mux5~6_combout\ & ((\Mux5~1_combout\))))) # (!OS(2) & (((\Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(2),
	datab => \datArray[12][2]~q\,
	datac => \Mux5~1_combout\,
	datad => \Mux5~6_combout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X6_Y5_N16
\dataOut[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut[2]$latch~combout\ = (GLOBAL(\state.STOREID~clkctrl_outclk\) & (\dataOut[2]$latch~combout\)) # (!GLOBAL(\state.STOREID~clkctrl_outclk\) & ((\Mux5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataOut[2]$latch~combout\,
	datac => \Mux5~7_combout\,
	datad => \state.STOREID~clkctrl_outclk\,
	combout => \dataOut[2]$latch~combout\);

-- Location: IOIBUF_X0_Y5_N22
\dataIn[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(11),
	o => \dataIn[11]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

-- Location: LCCOMB_X7_Y5_N4
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.STORE~q\ & ((\dataIn[3]~input_o\))) # (!\state.STORE~q\ & (\dataIn[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[11]~input_o\,
	datab => \dataIn[3]~input_o\,
	datad => \state.STORE~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X10_Y5_N20
\datArray[12][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[12][3]~feeder_combout\ = \Selector7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector7~0_combout\,
	combout => \datArray[12][3]~feeder_combout\);

-- Location: FF_X10_Y5_N21
\datArray[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[12][3]~feeder_combout\,
	ena => \datArray[12][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[12][3]~q\);

-- Location: LCCOMB_X6_Y4_N18
\datArray[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[2][3]~feeder_combout\ = \Selector7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector7~0_combout\,
	combout => \datArray[2][3]~feeder_combout\);

-- Location: FF_X6_Y4_N19
\datArray[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[2][3]~feeder_combout\,
	ena => \datArray[2][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[2][3]~q\);

-- Location: FF_X6_Y5_N21
\datArray[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector7~0_combout\,
	sload => VCC,
	ena => \datArray[3][1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[3][3]~q\);

-- Location: FF_X6_Y5_N19
\datArray[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector7~0_combout\,
	sload => VCC,
	ena => \datArray[0][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[0][3]~q\);

-- Location: FF_X9_Y4_N1
\datArray[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector7~0_combout\,
	sload => VCC,
	ena => \datArray[1][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[1][3]~q\);

-- Location: LCCOMB_X6_Y5_N18
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (OS(1) & (OS(0))) # (!OS(1) & ((OS(0) & ((\datArray[1][3]~q\))) # (!OS(0) & (\datArray[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(1),
	datab => OS(0),
	datac => \datArray[0][3]~q\,
	datad => \datArray[1][3]~q\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X6_Y5_N20
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (OS(1) & ((\Mux4~4_combout\ & ((\datArray[3][3]~q\))) # (!\Mux4~4_combout\ & (\datArray[2][3]~q\)))) # (!OS(1) & (((\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[2][3]~q\,
	datab => OS(1),
	datac => \datArray[3][3]~q\,
	datad => \Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X11_Y5_N6
\datArray[7][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[7][3]~feeder_combout\ = \Selector7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector7~0_combout\,
	combout => \datArray[7][3]~feeder_combout\);

-- Location: FF_X11_Y5_N7
\datArray[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[7][3]~feeder_combout\,
	ena => \datArray[7][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[7][3]~q\);

-- Location: LCCOMB_X10_Y4_N22
\datArray[5][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[5][3]~feeder_combout\ = \Selector7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector7~0_combout\,
	combout => \datArray[5][3]~feeder_combout\);

-- Location: FF_X10_Y4_N23
\datArray[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[5][3]~feeder_combout\,
	ena => \datArray[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[5][3]~q\);

-- Location: FF_X8_Y5_N5
\datArray[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector7~0_combout\,
	sload => VCC,
	ena => \datArray[4][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[4][3]~q\);

-- Location: FF_X7_Y5_N11
\datArray[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector7~0_combout\,
	sload => VCC,
	ena => \datArray[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[6][3]~q\);

-- Location: LCCOMB_X8_Y5_N4
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (OS(0) & (OS(1))) # (!OS(0) & ((OS(1) & ((\datArray[6][3]~q\))) # (!OS(1) & (\datArray[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => OS(1),
	datac => \datArray[4][3]~q\,
	datad => \datArray[6][3]~q\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X7_Y5_N24
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (OS(0) & ((\Mux4~2_combout\ & (\datArray[7][3]~q\)) # (!\Mux4~2_combout\ & ((\datArray[5][3]~q\))))) # (!OS(0) & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[7][3]~q\,
	datab => OS(0),
	datac => \datArray[5][3]~q\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X6_Y5_N14
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (OS(2) & (((OS(3)) # (\Mux4~3_combout\)))) # (!OS(2) & (\Mux4~5_combout\ & (!OS(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(2),
	datab => \Mux4~5_combout\,
	datac => OS(3),
	datad => \Mux4~3_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X7_Y6_N0
\datArray[11][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[11][3]~feeder_combout\ = \Selector7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector7~0_combout\,
	combout => \datArray[11][3]~feeder_combout\);

-- Location: FF_X7_Y6_N1
\datArray[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[11][3]~feeder_combout\,
	ena => \datArray[11][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[11][3]~q\);

-- Location: FF_X8_Y6_N15
\datArray[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector7~0_combout\,
	sload => VCC,
	ena => \datArray[10][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[10][3]~q\);

-- Location: LCCOMB_X7_Y5_N0
\datArray[9][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[9][3]~feeder_combout\ = \Selector7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector7~0_combout\,
	combout => \datArray[9][3]~feeder_combout\);

-- Location: FF_X7_Y5_N1
\datArray[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[9][3]~feeder_combout\,
	ena => \datArray[9][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[9][3]~q\);

-- Location: FF_X8_Y6_N29
\datArray[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector7~0_combout\,
	sload => VCC,
	ena => \datArray[8][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[8][3]~q\);

-- Location: LCCOMB_X8_Y6_N28
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (OS(1) & (((OS(0))))) # (!OS(1) & ((OS(0) & (\datArray[9][3]~q\)) # (!OS(0) & ((\datArray[8][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[9][3]~q\,
	datab => OS(1),
	datac => \datArray[8][3]~q\,
	datad => OS(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X8_Y6_N14
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (OS(1) & ((\Mux4~0_combout\ & (\datArray[11][3]~q\)) # (!\Mux4~0_combout\ & ((\datArray[10][3]~q\))))) # (!OS(1) & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[11][3]~q\,
	datab => OS(1),
	datac => \datArray[10][3]~q\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X6_Y5_N28
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (OS(3) & ((\Mux4~6_combout\ & (\datArray[12][3]~q\)) # (!\Mux4~6_combout\ & ((\Mux4~1_combout\))))) # (!OS(3) & (((\Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[12][3]~q\,
	datab => OS(3),
	datac => \Mux4~6_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X6_Y5_N26
\dataOut[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut[3]$latch~combout\ = (GLOBAL(\state.STOREID~clkctrl_outclk\) & (\dataOut[3]$latch~combout\)) # (!GLOBAL(\state.STOREID~clkctrl_outclk\) & ((\Mux4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut[3]$latch~combout\,
	datac => \state.STOREID~clkctrl_outclk\,
	datad => \Mux4~7_combout\,
	combout => \dataOut[3]$latch~combout\);

-- Location: IOIBUF_X0_Y7_N1
\dataIn[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(12),
	o => \dataIn[12]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\dataIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

-- Location: LCCOMB_X7_Y5_N8
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.STORE~q\ & ((\dataIn[4]~input_o\))) # (!\state.STORE~q\ & (\dataIn[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[12]~input_o\,
	datab => \dataIn[4]~input_o\,
	datad => \state.STORE~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X10_Y5_N10
\datArray[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[6][4]~feeder_combout\ = \Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector6~0_combout\,
	combout => \datArray[6][4]~feeder_combout\);

-- Location: FF_X10_Y5_N11
\datArray[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[6][4]~feeder_combout\,
	ena => \datArray[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[6][4]~q\);

-- Location: FF_X8_Y5_N29
\datArray[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector6~0_combout\,
	sload => VCC,
	ena => \datArray[4][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[4][4]~q\);

-- Location: LCCOMB_X10_Y4_N16
\datArray[5][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[5][4]~feeder_combout\ = \Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector6~0_combout\,
	combout => \datArray[5][4]~feeder_combout\);

-- Location: FF_X10_Y4_N17
\datArray[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[5][4]~feeder_combout\,
	ena => \datArray[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[5][4]~q\);

-- Location: LCCOMB_X8_Y5_N28
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (OS(0) & ((OS(1)) # ((\datArray[5][4]~q\)))) # (!OS(0) & (!OS(1) & (\datArray[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => OS(1),
	datac => \datArray[4][4]~q\,
	datad => \datArray[5][4]~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X11_Y5_N24
\datArray[7][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[7][4]~feeder_combout\ = \Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector6~0_combout\,
	combout => \datArray[7][4]~feeder_combout\);

-- Location: FF_X11_Y5_N25
\datArray[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[7][4]~feeder_combout\,
	ena => \datArray[7][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[7][4]~q\);

-- Location: LCCOMB_X5_Y5_N22
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (OS(1) & ((\Mux3~0_combout\ & ((\datArray[7][4]~q\))) # (!\Mux3~0_combout\ & (\datArray[6][4]~q\)))) # (!OS(1) & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[6][4]~q\,
	datab => OS(1),
	datac => \Mux3~0_combout\,
	datad => \datArray[7][4]~q\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X10_Y5_N0
\datArray[12][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[12][4]~feeder_combout\ = \Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector6~0_combout\,
	combout => \datArray[12][4]~feeder_combout\);

-- Location: FF_X10_Y5_N1
\datArray[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[12][4]~feeder_combout\,
	ena => \datArray[12][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[12][4]~q\);

-- Location: FF_X6_Y5_N31
\datArray[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector6~0_combout\,
	sload => VCC,
	ena => \datArray[3][1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[3][4]~q\);

-- Location: FF_X9_Y4_N9
\datArray[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector6~0_combout\,
	sload => VCC,
	ena => \datArray[1][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[1][4]~q\);

-- Location: FF_X5_Y5_N25
\datArray[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector6~0_combout\,
	sload => VCC,
	ena => \datArray[0][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[0][4]~q\);

-- Location: LCCOMB_X6_Y4_N4
\datArray[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[2][4]~feeder_combout\ = \Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector6~0_combout\,
	combout => \datArray[2][4]~feeder_combout\);

-- Location: FF_X6_Y4_N5
\datArray[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[2][4]~feeder_combout\,
	ena => \datArray[2][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[2][4]~q\);

-- Location: LCCOMB_X5_Y5_N24
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (OS(0) & (OS(1))) # (!OS(0) & ((OS(1) & ((\datArray[2][4]~q\))) # (!OS(1) & (\datArray[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => OS(1),
	datac => \datArray[0][4]~q\,
	datad => \datArray[2][4]~q\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X5_Y5_N2
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (OS(0) & ((\Mux3~4_combout\ & (\datArray[3][4]~q\)) # (!\Mux3~4_combout\ & ((\datArray[1][4]~q\))))) # (!OS(0) & (((\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => \datArray[3][4]~q\,
	datac => \datArray[1][4]~q\,
	datad => \Mux3~4_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X7_Y5_N26
\datArray[9][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[9][4]~feeder_combout\ = \Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector6~0_combout\,
	combout => \datArray[9][4]~feeder_combout\);

-- Location: FF_X7_Y5_N27
\datArray[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[9][4]~feeder_combout\,
	ena => \datArray[9][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[9][4]~q\);

-- Location: FF_X7_Y6_N5
\datArray[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector6~0_combout\,
	sload => VCC,
	ena => \datArray[11][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[11][4]~q\);

-- Location: LCCOMB_X8_Y6_N22
\datArray[10][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[10][4]~feeder_combout\ = \Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector6~0_combout\,
	combout => \datArray[10][4]~feeder_combout\);

-- Location: FF_X8_Y6_N23
\datArray[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[10][4]~feeder_combout\,
	ena => \datArray[10][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[10][4]~q\);

-- Location: FF_X7_Y6_N19
\datArray[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector6~0_combout\,
	sload => VCC,
	ena => \datArray[8][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[8][4]~q\);

-- Location: LCCOMB_X7_Y6_N18
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (OS(0) & (((OS(1))))) # (!OS(0) & ((OS(1) & (\datArray[10][4]~q\)) # (!OS(1) & ((\datArray[8][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[10][4]~q\,
	datab => OS(0),
	datac => \datArray[8][4]~q\,
	datad => OS(1),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X7_Y6_N4
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (OS(0) & ((\Mux3~2_combout\ & ((\datArray[11][4]~q\))) # (!\Mux3~2_combout\ & (\datArray[9][4]~q\)))) # (!OS(0) & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[9][4]~q\,
	datab => OS(0),
	datac => \datArray[11][4]~q\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X5_Y5_N28
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (OS(3) & (((OS(2)) # (\Mux3~3_combout\)))) # (!OS(3) & (\Mux3~5_combout\ & (!OS(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(3),
	datab => \Mux3~5_combout\,
	datac => OS(2),
	datad => \Mux3~3_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X5_Y5_N10
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (OS(2) & ((\Mux3~6_combout\ & ((\datArray[12][4]~q\))) # (!\Mux3~6_combout\ & (\Mux3~1_combout\)))) # (!OS(2) & (((\Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \datArray[12][4]~q\,
	datac => OS(2),
	datad => \Mux3~6_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X5_Y5_N16
\dataOut[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut[4]$latch~combout\ = (GLOBAL(\state.STOREID~clkctrl_outclk\) & (\dataOut[4]$latch~combout\)) # (!GLOBAL(\state.STOREID~clkctrl_outclk\) & ((\Mux3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataOut[4]$latch~combout\,
	datac => \state.STOREID~clkctrl_outclk\,
	datad => \Mux3~7_combout\,
	combout => \dataOut[4]$latch~combout\);

-- Location: IOIBUF_X3_Y0_N1
\dataIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\dataIn[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(13),
	o => \dataIn[13]~input_o\);

-- Location: LCCOMB_X7_Y5_N10
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.STORE~q\ & (\dataIn[5]~input_o\)) # (!\state.STORE~q\ & ((\dataIn[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[5]~input_o\,
	datab => \dataIn[13]~input_o\,
	datad => \state.STORE~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X10_Y5_N26
\datArray[12][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[12][5]~feeder_combout\ = \Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector5~0_combout\,
	combout => \datArray[12][5]~feeder_combout\);

-- Location: FF_X10_Y5_N27
\datArray[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[12][5]~feeder_combout\,
	ena => \datArray[12][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[12][5]~q\);

-- Location: LCCOMB_X6_Y4_N30
\datArray[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[2][5]~feeder_combout\ = \Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector5~0_combout\,
	combout => \datArray[2][5]~feeder_combout\);

-- Location: FF_X6_Y4_N31
\datArray[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[2][5]~feeder_combout\,
	ena => \datArray[2][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[2][5]~q\);

-- Location: FF_X5_Y5_N27
\datArray[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector5~0_combout\,
	sload => VCC,
	ena => \datArray[3][1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[3][5]~q\);

-- Location: FF_X5_Y5_N1
\datArray[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector5~0_combout\,
	sload => VCC,
	ena => \datArray[0][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[0][5]~q\);

-- Location: LCCOMB_X9_Y4_N4
\datArray[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[1][5]~feeder_combout\ = \Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector5~0_combout\,
	combout => \datArray[1][5]~feeder_combout\);

-- Location: FF_X9_Y4_N5
\datArray[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[1][5]~feeder_combout\,
	ena => \datArray[1][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[1][5]~q\);

-- Location: LCCOMB_X5_Y5_N0
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (OS(0) & ((OS(1)) # ((\datArray[1][5]~q\)))) # (!OS(0) & (!OS(1) & (\datArray[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => OS(1),
	datac => \datArray[0][5]~q\,
	datad => \datArray[1][5]~q\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X5_Y5_N26
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (OS(1) & ((\Mux2~4_combout\ & ((\datArray[3][5]~q\))) # (!\Mux2~4_combout\ & (\datArray[2][5]~q\)))) # (!OS(1) & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[2][5]~q\,
	datab => OS(1),
	datac => \datArray[3][5]~q\,
	datad => \Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X11_Y5_N26
\datArray[7][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[7][5]~feeder_combout\ = \Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector5~0_combout\,
	combout => \datArray[7][5]~feeder_combout\);

-- Location: FF_X11_Y5_N27
\datArray[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[7][5]~feeder_combout\,
	ena => \datArray[7][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[7][5]~q\);

-- Location: LCCOMB_X10_Y4_N26
\datArray[5][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[5][5]~feeder_combout\ = \Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector5~0_combout\,
	combout => \datArray[5][5]~feeder_combout\);

-- Location: FF_X10_Y4_N27
\datArray[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[5][5]~feeder_combout\,
	ena => \datArray[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[5][5]~q\);

-- Location: FF_X8_Y5_N9
\datArray[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector5~0_combout\,
	sload => VCC,
	ena => \datArray[4][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[4][5]~q\);

-- Location: LCCOMB_X7_Y5_N2
\datArray[6][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[6][5]~feeder_combout\ = \Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector5~0_combout\,
	combout => \datArray[6][5]~feeder_combout\);

-- Location: FF_X7_Y5_N3
\datArray[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[6][5]~feeder_combout\,
	ena => \datArray[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[6][5]~q\);

-- Location: LCCOMB_X8_Y5_N8
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (OS(0) & (OS(1))) # (!OS(0) & ((OS(1) & ((\datArray[6][5]~q\))) # (!OS(1) & (\datArray[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => OS(1),
	datac => \datArray[4][5]~q\,
	datad => \datArray[6][5]~q\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X9_Y5_N14
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (OS(0) & ((\Mux2~2_combout\ & (\datArray[7][5]~q\)) # (!\Mux2~2_combout\ & ((\datArray[5][5]~q\))))) # (!OS(0) & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => \datArray[7][5]~q\,
	datac => \datArray[5][5]~q\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X5_Y5_N8
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (OS(2) & ((OS(3)) # ((\Mux2~3_combout\)))) # (!OS(2) & (!OS(3) & (\Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(2),
	datab => OS(3),
	datac => \Mux2~5_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X7_Y6_N2
\datArray[11][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[11][5]~feeder_combout\ = \Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector5~0_combout\,
	combout => \datArray[11][5]~feeder_combout\);

-- Location: FF_X7_Y6_N3
\datArray[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[11][5]~feeder_combout\,
	ena => \datArray[11][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[11][5]~q\);

-- Location: FF_X8_Y6_N9
\datArray[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector5~0_combout\,
	sload => VCC,
	ena => \datArray[10][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[10][5]~q\);

-- Location: LCCOMB_X7_Y5_N20
\datArray[9][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[9][5]~feeder_combout\ = \Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector5~0_combout\,
	combout => \datArray[9][5]~feeder_combout\);

-- Location: FF_X7_Y5_N21
\datArray[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[9][5]~feeder_combout\,
	ena => \datArray[9][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[9][5]~q\);

-- Location: FF_X8_Y6_N7
\datArray[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector5~0_combout\,
	sload => VCC,
	ena => \datArray[8][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[8][5]~q\);

-- Location: LCCOMB_X8_Y6_N6
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (OS(1) & (((OS(0))))) # (!OS(1) & ((OS(0) & (\datArray[9][5]~q\)) # (!OS(0) & ((\datArray[8][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[9][5]~q\,
	datab => OS(1),
	datac => \datArray[8][5]~q\,
	datad => OS(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X8_Y6_N8
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (OS(1) & ((\Mux2~0_combout\ & (\datArray[11][5]~q\)) # (!\Mux2~0_combout\ & ((\datArray[10][5]~q\))))) # (!OS(1) & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[11][5]~q\,
	datab => OS(1),
	datac => \datArray[10][5]~q\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X5_Y5_N30
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (OS(3) & ((\Mux2~6_combout\ & (\datArray[12][5]~q\)) # (!\Mux2~6_combout\ & ((\Mux2~1_combout\))))) # (!OS(3) & (((\Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[12][5]~q\,
	datab => OS(3),
	datac => \Mux2~6_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X5_Y5_N6
\dataOut[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut[5]$latch~combout\ = (GLOBAL(\state.STOREID~clkctrl_outclk\) & (\dataOut[5]$latch~combout\)) # (!GLOBAL(\state.STOREID~clkctrl_outclk\) & ((\Mux2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut[5]$latch~combout\,
	datac => \Mux2~7_combout\,
	datad => \state.STOREID~clkctrl_outclk\,
	combout => \dataOut[5]$latch~combout\);

-- Location: IOIBUF_X11_Y0_N15
\dataIn[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(14),
	o => \dataIn[14]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\dataIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

-- Location: LCCOMB_X7_Y4_N18
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.STORE~q\ & ((\dataIn[6]~input_o\))) # (!\state.STORE~q\ & (\dataIn[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataIn[14]~input_o\,
	datac => \state.STORE~q\,
	datad => \dataIn[6]~input_o\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X11_Y5_N12
\datArray[7][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[7][6]~feeder_combout\ = \Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector4~0_combout\,
	combout => \datArray[7][6]~feeder_combout\);

-- Location: FF_X11_Y5_N13
\datArray[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[7][6]~feeder_combout\,
	ena => \datArray[7][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[7][6]~q\);

-- Location: FF_X8_Y5_N31
\datArray[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector4~0_combout\,
	sload => VCC,
	ena => \datArray[4][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[4][6]~q\);

-- Location: LCCOMB_X10_Y4_N12
\datArray[5][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[5][6]~feeder_combout\ = \Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector4~0_combout\,
	combout => \datArray[5][6]~feeder_combout\);

-- Location: FF_X10_Y4_N13
\datArray[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[5][6]~feeder_combout\,
	ena => \datArray[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[5][6]~q\);

-- Location: LCCOMB_X8_Y5_N30
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (OS(0) & ((OS(1)) # ((\datArray[5][6]~q\)))) # (!OS(0) & (!OS(1) & (\datArray[4][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => OS(1),
	datac => \datArray[4][6]~q\,
	datad => \datArray[5][6]~q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X10_Y5_N4
\datArray[6][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[6][6]~feeder_combout\ = \Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector4~0_combout\,
	combout => \datArray[6][6]~feeder_combout\);

-- Location: FF_X10_Y5_N5
\datArray[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[6][6]~feeder_combout\,
	ena => \datArray[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[6][6]~q\);

-- Location: LCCOMB_X8_Y5_N20
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (OS(1) & ((\Mux1~0_combout\ & (\datArray[7][6]~q\)) # (!\Mux1~0_combout\ & ((\datArray[6][6]~q\))))) # (!OS(1) & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[7][6]~q\,
	datab => OS(1),
	datac => \Mux1~0_combout\,
	datad => \datArray[6][6]~q\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X10_Y5_N6
\datArray[12][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[12][6]~feeder_combout\ = \Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector4~0_combout\,
	combout => \datArray[12][6]~feeder_combout\);

-- Location: FF_X10_Y5_N7
\datArray[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[12][6]~feeder_combout\,
	ena => \datArray[12][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[12][6]~q\);

-- Location: LCCOMB_X7_Y5_N16
\datArray[9][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[9][6]~feeder_combout\ = \Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector4~0_combout\,
	combout => \datArray[9][6]~feeder_combout\);

-- Location: FF_X7_Y5_N17
\datArray[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[9][6]~feeder_combout\,
	ena => \datArray[9][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[9][6]~q\);

-- Location: FF_X7_Y6_N31
\datArray[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector4~0_combout\,
	sload => VCC,
	ena => \datArray[11][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[11][6]~q\);

-- Location: LCCOMB_X8_Y6_N4
\datArray[10][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[10][6]~feeder_combout\ = \Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector4~0_combout\,
	combout => \datArray[10][6]~feeder_combout\);

-- Location: FF_X8_Y6_N5
\datArray[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[10][6]~feeder_combout\,
	ena => \datArray[10][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[10][6]~q\);

-- Location: FF_X7_Y6_N13
\datArray[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector4~0_combout\,
	sload => VCC,
	ena => \datArray[8][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[8][6]~q\);

-- Location: LCCOMB_X7_Y6_N12
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (OS(1) & ((\datArray[10][6]~q\) # ((OS(0))))) # (!OS(1) & (((\datArray[8][6]~q\ & !OS(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(1),
	datab => \datArray[10][6]~q\,
	datac => \datArray[8][6]~q\,
	datad => OS(0),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X7_Y6_N30
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (OS(0) & ((\Mux1~2_combout\ & ((\datArray[11][6]~q\))) # (!\Mux1~2_combout\ & (\datArray[9][6]~q\)))) # (!OS(0) & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[9][6]~q\,
	datab => OS(0),
	datac => \datArray[11][6]~q\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: FF_X6_Y5_N25
\datArray[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector4~0_combout\,
	sload => VCC,
	ena => \datArray[0][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[0][6]~q\);

-- Location: LCCOMB_X6_Y4_N0
\datArray[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[2][6]~feeder_combout\ = \Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector4~0_combout\,
	combout => \datArray[2][6]~feeder_combout\);

-- Location: FF_X6_Y4_N1
\datArray[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[2][6]~feeder_combout\,
	ena => \datArray[2][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[2][6]~q\);

-- Location: LCCOMB_X6_Y5_N24
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (OS(0) & (OS(1))) # (!OS(0) & ((OS(1) & ((\datArray[2][6]~q\))) # (!OS(1) & (\datArray[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => OS(1),
	datac => \datArray[0][6]~q\,
	datad => \datArray[2][6]~q\,
	combout => \Mux1~4_combout\);

-- Location: FF_X6_Y5_N7
\datArray[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector4~0_combout\,
	sload => VCC,
	ena => \datArray[3][1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[3][6]~q\);

-- Location: LCCOMB_X9_Y4_N10
\datArray[1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[1][6]~feeder_combout\ = \Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector4~0_combout\,
	combout => \datArray[1][6]~feeder_combout\);

-- Location: FF_X9_Y4_N11
\datArray[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[1][6]~feeder_combout\,
	ena => \datArray[1][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[1][6]~q\);

-- Location: LCCOMB_X6_Y5_N6
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (OS(0) & ((\Mux1~4_combout\ & (\datArray[3][6]~q\)) # (!\Mux1~4_combout\ & ((\datArray[1][6]~q\))))) # (!OS(0) & (\Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => \Mux1~4_combout\,
	datac => \datArray[3][6]~q\,
	datad => \datArray[1][6]~q\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X5_Y5_N20
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (OS(2) & (OS(3))) # (!OS(2) & ((OS(3) & (\Mux1~3_combout\)) # (!OS(3) & ((\Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(2),
	datab => OS(3),
	datac => \Mux1~3_combout\,
	datad => \Mux1~5_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X5_Y5_N14
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (OS(2) & ((\Mux1~6_combout\ & ((\datArray[12][6]~q\))) # (!\Mux1~6_combout\ & (\Mux1~1_combout\)))) # (!OS(2) & (((\Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \datArray[12][6]~q\,
	datac => OS(2),
	datad => \Mux1~6_combout\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X5_Y5_N4
\dataOut[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut[6]$latch~combout\ = (GLOBAL(\state.STOREID~clkctrl_outclk\) & (\dataOut[6]$latch~combout\)) # (!GLOBAL(\state.STOREID~clkctrl_outclk\) & ((\Mux1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataOut[6]$latch~combout\,
	datac => \Mux1~7_combout\,
	datad => \state.STOREID~clkctrl_outclk\,
	combout => \dataOut[6]$latch~combout\);

-- Location: IOIBUF_X1_Y0_N22
\dataIn[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(15),
	o => \dataIn[15]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\dataIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

-- Location: LCCOMB_X7_Y5_N22
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.STORE~q\ & ((\dataIn[7]~input_o\))) # (!\state.STORE~q\ & (\dataIn[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[15]~input_o\,
	datac => \dataIn[7]~input_o\,
	datad => \state.STORE~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X10_Y5_N30
\datArray[12][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[12][7]~feeder_combout\ = \Selector3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector3~0_combout\,
	combout => \datArray[12][7]~feeder_combout\);

-- Location: FF_X10_Y5_N31
\datArray[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[12][7]~feeder_combout\,
	ena => \datArray[12][3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[12][7]~q\);

-- Location: LCCOMB_X7_Y6_N8
\datArray[11][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[11][7]~feeder_combout\ = \Selector3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector3~0_combout\,
	combout => \datArray[11][7]~feeder_combout\);

-- Location: FF_X7_Y6_N9
\datArray[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[11][7]~feeder_combout\,
	ena => \datArray[11][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[11][7]~q\);

-- Location: FF_X8_Y6_N11
\datArray[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector3~0_combout\,
	sload => VCC,
	ena => \datArray[10][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[10][7]~q\);

-- Location: FF_X7_Y5_N31
\datArray[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector3~0_combout\,
	sload => VCC,
	ena => \datArray[9][7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[9][7]~q\);

-- Location: FF_X8_Y6_N17
\datArray[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector3~0_combout\,
	sload => VCC,
	ena => \datArray[8][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[8][7]~q\);

-- Location: LCCOMB_X8_Y6_N16
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (OS(1) & (((OS(0))))) # (!OS(1) & ((OS(0) & (\datArray[9][7]~q\)) # (!OS(0) & ((\datArray[8][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(1),
	datab => \datArray[9][7]~q\,
	datac => \datArray[8][7]~q\,
	datad => OS(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X8_Y6_N10
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (OS(1) & ((\Mux0~0_combout\ & (\datArray[11][7]~q\)) # (!\Mux0~0_combout\ & ((\datArray[10][7]~q\))))) # (!OS(1) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[11][7]~q\,
	datab => OS(1),
	datac => \datArray[10][7]~q\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X6_Y4_N26
\datArray[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[2][7]~feeder_combout\ = \Selector3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector3~0_combout\,
	combout => \datArray[2][7]~feeder_combout\);

-- Location: FF_X6_Y4_N27
\datArray[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[2][7]~feeder_combout\,
	ena => \datArray[2][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[2][7]~q\);

-- Location: FF_X7_Y4_N27
\datArray[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector3~0_combout\,
	sload => VCC,
	ena => \datArray[3][1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[3][7]~q\);

-- Location: FF_X9_Y4_N19
\datArray[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector3~0_combout\,
	sload => VCC,
	ena => \datArray[1][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[1][7]~q\);

-- Location: FF_X7_Y4_N29
\datArray[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector3~0_combout\,
	sload => VCC,
	ena => \datArray[0][4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[0][7]~q\);

-- Location: LCCOMB_X7_Y4_N28
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (OS(1) & (((OS(0))))) # (!OS(1) & ((OS(0) & (\datArray[1][7]~q\)) # (!OS(0) & ((\datArray[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[1][7]~q\,
	datab => OS(1),
	datac => \datArray[0][7]~q\,
	datad => OS(0),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X7_Y4_N26
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (OS(1) & ((\Mux0~4_combout\ & ((\datArray[3][7]~q\))) # (!\Mux0~4_combout\ & (\datArray[2][7]~q\)))) # (!OS(1) & (((\Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[2][7]~q\,
	datab => OS(1),
	datac => \datArray[3][7]~q\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X10_Y4_N10
\datArray[5][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[5][7]~feeder_combout\ = \Selector3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector3~0_combout\,
	combout => \datArray[5][7]~feeder_combout\);

-- Location: FF_X10_Y4_N11
\datArray[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[5][7]~feeder_combout\,
	ena => \datArray[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[5][7]~q\);

-- Location: LCCOMB_X11_Y5_N22
\datArray[7][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[7][7]~feeder_combout\ = \Selector3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector3~0_combout\,
	combout => \datArray[7][7]~feeder_combout\);

-- Location: FF_X11_Y5_N23
\datArray[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[7][7]~feeder_combout\,
	ena => \datArray[7][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[7][7]~q\);

-- Location: FF_X8_Y5_N15
\datArray[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector3~0_combout\,
	sload => VCC,
	ena => \datArray[4][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[4][7]~q\);

-- Location: LCCOMB_X10_Y5_N28
\datArray[6][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray[6][7]~feeder_combout\ = \Selector3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector3~0_combout\,
	combout => \datArray[6][7]~feeder_combout\);

-- Location: FF_X10_Y5_N29
\datArray[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray[6][7]~feeder_combout\,
	ena => \datArray[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \datArray[6][7]~q\);

-- Location: LCCOMB_X8_Y5_N14
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (OS(0) & (OS(1))) # (!OS(0) & ((OS(1) & ((\datArray[6][7]~q\))) # (!OS(1) & (\datArray[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => OS(1),
	datac => \datArray[4][7]~q\,
	datad => \datArray[6][7]~q\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X9_Y5_N12
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (OS(0) & ((\Mux0~2_combout\ & ((\datArray[7][7]~q\))) # (!\Mux0~2_combout\ & (\datArray[5][7]~q\)))) # (!OS(0) & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => \datArray[5][7]~q\,
	datac => \datArray[7][7]~q\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X8_Y6_N18
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (OS(3) & (OS(2))) # (!OS(3) & ((OS(2) & ((\Mux0~3_combout\))) # (!OS(2) & (\Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(3),
	datab => OS(2),
	datac => \Mux0~5_combout\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X8_Y6_N24
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (OS(3) & ((\Mux0~6_combout\ & (\datArray[12][7]~q\)) # (!\Mux0~6_combout\ & ((\Mux0~1_combout\))))) # (!OS(3) & (((\Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray[12][7]~q\,
	datab => \Mux0~1_combout\,
	datac => OS(3),
	datad => \Mux0~6_combout\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X8_Y6_N26
\dataOut[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut[7]$latch~combout\ = (GLOBAL(\state.STOREID~clkctrl_outclk\) & (\dataOut[7]$latch~combout\)) # (!GLOBAL(\state.STOREID~clkctrl_outclk\) & ((\Mux0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut[7]$latch~combout\,
	datac => \state.STOREID~clkctrl_outclk\,
	datad => \Mux0~7_combout\,
	combout => \dataOut[7]$latch~combout\);

-- Location: LCCOMB_X8_Y4_N28
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!NS(1) & (NS(3) & (!NS(0) & NS(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NS(1),
	datab => NS(3),
	datac => NS(0),
	datad => NS(2),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X8_Y4_N8
\Selector126~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector126~0_combout\ = (!\state.STOREID~q\ & ((\process_0~0_combout\) # (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STOREID~q\,
	datac => \process_0~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \Selector126~0_combout\);

-- Location: LCCOMB_X8_Y4_N30
\empty$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \empty$latch~combout\ = (\Selector126~0_combout\ & ((!\Equal4~0_combout\))) # (!\Selector126~0_combout\ & (\empty$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector126~0_combout\,
	datac => \empty$latch~combout\,
	datad => \Equal4~0_combout\,
	combout => \empty$latch~combout\);

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;

ww_dataOut(4) <= \dataOut[4]~output_o\;

ww_dataOut(5) <= \dataOut[5]~output_o\;

ww_dataOut(6) <= \dataOut[6]~output_o\;

ww_dataOut(7) <= \dataOut[7]~output_o\;

ww_empty <= \empty~output_o\;
END structure;


