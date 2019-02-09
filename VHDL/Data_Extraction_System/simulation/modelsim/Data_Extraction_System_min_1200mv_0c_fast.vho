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

-- DATE "02/09/2019 18:40:21"

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

ENTITY 	Data_Extraction_System IS
    PORT (
	CS : OUT std_logic;
	CLK_50MHz : IN std_logic;
	MISO : IN std_logic;
	MISO_MPU : IN std_logic;
	MSTR_CLK : OUT std_logic;
	MOSI : OUT std_logic;
	MPU_CS : OUT std_logic;
	MPU_MSTR_CLK : OUT std_logic;
	MPU_MOSI : OUT std_logic;
	LED0 : OUT std_logic;
	LED1 : OUT std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic;
	LED4 : OUT std_logic;
	LED5 : OUT std_logic;
	LED6 : OUT std_logic;
	LED7 : OUT std_logic
	);
END Data_Extraction_System;

-- Design Ports Information
-- CS	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSTR_CLK	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MOSI	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MPU_CS	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MPU_MSTR_CLK	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MPU_MOSI	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED0	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED1	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED2	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED3	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED4	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED5	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED6	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50MHz	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MISO	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MISO_MPU	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Data_Extraction_System IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_CLK_50MHz : std_logic;
SIGNAL ww_MISO : std_logic;
SIGNAL ww_MISO_MPU : std_logic;
SIGNAL ww_MSTR_CLK : std_logic;
SIGNAL ww_MOSI : std_logic;
SIGNAL ww_MPU_CS : std_logic;
SIGNAL ww_MPU_MSTR_CLK : std_logic;
SIGNAL ww_MPU_MOSI : std_logic;
SIGNAL ww_LED0 : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL ww_LED4 : std_logic;
SIGNAL ww_LED5 : std_logic;
SIGNAL ww_LED6 : std_logic;
SIGNAL ww_LED7 : std_logic;
SIGNAL \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst20|CLK_OUT~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CS~output_o\ : std_logic;
SIGNAL \MSTR_CLK~output_o\ : std_logic;
SIGNAL \MOSI~output_o\ : std_logic;
SIGNAL \MPU_CS~output_o\ : std_logic;
SIGNAL \MPU_MSTR_CLK~output_o\ : std_logic;
SIGNAL \MPU_MOSI~output_o\ : std_logic;
SIGNAL \LED0~output_o\ : std_logic;
SIGNAL \LED1~output_o\ : std_logic;
SIGNAL \LED2~output_o\ : std_logic;
SIGNAL \LED3~output_o\ : std_logic;
SIGNAL \LED4~output_o\ : std_logic;
SIGNAL \LED5~output_o\ : std_logic;
SIGNAL \LED6~output_o\ : std_logic;
SIGNAL \LED7~output_o\ : std_logic;
SIGNAL \CLK_50MHz~input_o\ : std_logic;
SIGNAL \CLK_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst20|Add0~2_combout\ : std_logic;
SIGNAL \inst20|Add0~1_combout\ : std_logic;
SIGNAL \inst20|Add0~0_combout\ : std_logic;
SIGNAL \inst20|Counter~0_combout\ : std_logic;
SIGNAL \inst20|Counter~3_combout\ : std_logic;
SIGNAL \inst20|Counter~4_combout\ : std_logic;
SIGNAL \inst20|Counter~1_combout\ : std_logic;
SIGNAL \inst20|Counter~2_combout\ : std_logic;
SIGNAL \inst20|Equal0~0_combout\ : std_logic;
SIGNAL \inst20|OutputState~q\ : std_logic;
SIGNAL \inst20|OutputState~0_combout\ : std_logic;
SIGNAL \inst20|CLK_OUT~feeder_combout\ : std_logic;
SIGNAL \inst20|CLK_OUT~q\ : std_logic;
SIGNAL \inst20|CLK_OUT~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|idx[0]~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~10_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|Add0~15\ : std_logic;
SIGNAL \inst5|Add0~16_combout\ : std_logic;
SIGNAL \inst5|Add0~17\ : std_logic;
SIGNAL \inst5|Add0~18_combout\ : std_logic;
SIGNAL \inst5|Add0~19\ : std_logic;
SIGNAL \inst5|Add0~20_combout\ : std_logic;
SIGNAL \inst5|Add0~21\ : std_logic;
SIGNAL \inst5|Add0~22_combout\ : std_logic;
SIGNAL \inst5|Add0~23\ : std_logic;
SIGNAL \inst5|Add0~24_combout\ : std_logic;
SIGNAL \inst5|Add0~25\ : std_logic;
SIGNAL \inst5|Add0~26_combout\ : std_logic;
SIGNAL \inst5|Add0~27\ : std_logic;
SIGNAL \inst5|Add0~28_combout\ : std_logic;
SIGNAL \inst5|Add0~29\ : std_logic;
SIGNAL \inst5|Add0~30_combout\ : std_logic;
SIGNAL \inst5|Add0~31\ : std_logic;
SIGNAL \inst5|Add0~32_combout\ : std_logic;
SIGNAL \inst5|Add0~33\ : std_logic;
SIGNAL \inst5|Add0~34_combout\ : std_logic;
SIGNAL \inst5|Add0~35\ : std_logic;
SIGNAL \inst5|Add0~36_combout\ : std_logic;
SIGNAL \inst5|Add0~37\ : std_logic;
SIGNAL \inst5|Add0~38_combout\ : std_logic;
SIGNAL \inst5|Add0~39\ : std_logic;
SIGNAL \inst5|Add0~40_combout\ : std_logic;
SIGNAL \inst5|Add0~41\ : std_logic;
SIGNAL \inst5|Add0~42_combout\ : std_logic;
SIGNAL \inst5|Add0~43\ : std_logic;
SIGNAL \inst5|Add0~44_combout\ : std_logic;
SIGNAL \inst5|Add0~45\ : std_logic;
SIGNAL \inst5|Add0~46_combout\ : std_logic;
SIGNAL \inst5|Add0~47\ : std_logic;
SIGNAL \inst5|Add0~48_combout\ : std_logic;
SIGNAL \inst5|Add0~49\ : std_logic;
SIGNAL \inst5|Add0~50_combout\ : std_logic;
SIGNAL \inst5|Add0~51\ : std_logic;
SIGNAL \inst5|Add0~52_combout\ : std_logic;
SIGNAL \inst5|Equal0~6_combout\ : std_logic;
SIGNAL \inst5|Equal0~5_combout\ : std_logic;
SIGNAL \inst5|Add0~53\ : std_logic;
SIGNAL \inst5|Add0~54_combout\ : std_logic;
SIGNAL \inst5|Add0~55\ : std_logic;
SIGNAL \inst5|Add0~56_combout\ : std_logic;
SIGNAL \inst5|Add0~57\ : std_logic;
SIGNAL \inst5|Add0~58_combout\ : std_logic;
SIGNAL \inst5|Add0~59\ : std_logic;
SIGNAL \inst5|Add0~60_combout\ : std_logic;
SIGNAL \inst5|Add0~61\ : std_logic;
SIGNAL \inst5|Add0~62_combout\ : std_logic;
SIGNAL \inst5|Equal0~7_combout\ : std_logic;
SIGNAL \inst5|Equal0~8_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|Equal0~9_combout\ : std_logic;
SIGNAL \inst5|idx[2]~0_combout\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|idx[2]~1_combout\ : std_logic;
SIGNAL \inst5|Mux1~1_combout\ : std_logic;
SIGNAL \inst5|Selector18~0_combout\ : std_logic;
SIGNAL \inst5|state.STRT~q\ : std_logic;
SIGNAL \inst6|pstate~0_combout\ : std_logic;
SIGNAL \inst6|pstate~q\ : std_logic;
SIGNAL \inst6|process_10~0_combout\ : std_logic;
SIGNAL \inst6|fPulse~q\ : std_logic;
SIGNAL \inst15|Add0~0_combout\ : std_logic;
SIGNAL \inst15|Add0~1\ : std_logic;
SIGNAL \inst15|Add0~2_combout\ : std_logic;
SIGNAL \inst15|Add0~3\ : std_logic;
SIGNAL \inst15|Add0~4_combout\ : std_logic;
SIGNAL \inst15|nextTx~1_combout\ : std_logic;
SIGNAL \inst15|Add0~5\ : std_logic;
SIGNAL \inst15|Add0~6_combout\ : std_logic;
SIGNAL \inst15|nextTx~0_combout\ : std_logic;
SIGNAL \inst15|Add0~7\ : std_logic;
SIGNAL \inst15|Add0~8_combout\ : std_logic;
SIGNAL \inst15|Add0~9\ : std_logic;
SIGNAL \inst15|Add0~10_combout\ : std_logic;
SIGNAL \inst15|Add0~11\ : std_logic;
SIGNAL \inst15|Add0~12_combout\ : std_logic;
SIGNAL \inst15|Add0~13\ : std_logic;
SIGNAL \inst15|Add0~14_combout\ : std_logic;
SIGNAL \inst15|Equal0~1_combout\ : std_logic;
SIGNAL \inst15|Add0~15\ : std_logic;
SIGNAL \inst15|Add0~16_combout\ : std_logic;
SIGNAL \inst15|Add0~17\ : std_logic;
SIGNAL \inst15|Add0~18_combout\ : std_logic;
SIGNAL \inst15|Add0~19\ : std_logic;
SIGNAL \inst15|Add0~20_combout\ : std_logic;
SIGNAL \inst15|Add0~21\ : std_logic;
SIGNAL \inst15|Add0~22_combout\ : std_logic;
SIGNAL \inst15|Add0~23\ : std_logic;
SIGNAL \inst15|Add0~24_combout\ : std_logic;
SIGNAL \inst15|Add0~25\ : std_logic;
SIGNAL \inst15|Add0~26_combout\ : std_logic;
SIGNAL \inst15|Add0~27\ : std_logic;
SIGNAL \inst15|Add0~28_combout\ : std_logic;
SIGNAL \inst15|Add0~29\ : std_logic;
SIGNAL \inst15|Add0~30_combout\ : std_logic;
SIGNAL \inst15|Equal0~3_combout\ : std_logic;
SIGNAL \inst15|Equal0~0_combout\ : std_logic;
SIGNAL \inst15|Equal0~2_combout\ : std_logic;
SIGNAL \inst15|Equal0~4_combout\ : std_logic;
SIGNAL \inst15|Add0~31\ : std_logic;
SIGNAL \inst15|Add0~32_combout\ : std_logic;
SIGNAL \inst15|Add0~33\ : std_logic;
SIGNAL \inst15|Add0~34_combout\ : std_logic;
SIGNAL \inst15|Add0~35\ : std_logic;
SIGNAL \inst15|Add0~36_combout\ : std_logic;
SIGNAL \inst15|Add0~37\ : std_logic;
SIGNAL \inst15|Add0~38_combout\ : std_logic;
SIGNAL \inst15|Add0~39\ : std_logic;
SIGNAL \inst15|Add0~40_combout\ : std_logic;
SIGNAL \inst15|Add0~41\ : std_logic;
SIGNAL \inst15|Add0~42_combout\ : std_logic;
SIGNAL \inst15|Add0~43\ : std_logic;
SIGNAL \inst15|Add0~44_combout\ : std_logic;
SIGNAL \inst15|Add0~45\ : std_logic;
SIGNAL \inst15|Add0~46_combout\ : std_logic;
SIGNAL \inst15|Add0~47\ : std_logic;
SIGNAL \inst15|Add0~48_combout\ : std_logic;
SIGNAL \inst15|Add0~49\ : std_logic;
SIGNAL \inst15|Add0~50_combout\ : std_logic;
SIGNAL \inst15|Add0~51\ : std_logic;
SIGNAL \inst15|Add0~52_combout\ : std_logic;
SIGNAL \inst15|Add0~53\ : std_logic;
SIGNAL \inst15|Add0~54_combout\ : std_logic;
SIGNAL \inst15|Add0~55\ : std_logic;
SIGNAL \inst15|Add0~56_combout\ : std_logic;
SIGNAL \inst15|Add0~57\ : std_logic;
SIGNAL \inst15|Add0~58_combout\ : std_logic;
SIGNAL \inst15|Add0~59\ : std_logic;
SIGNAL \inst15|Add0~60_combout\ : std_logic;
SIGNAL \inst15|Add0~61\ : std_logic;
SIGNAL \inst15|Add0~62_combout\ : std_logic;
SIGNAL \inst15|Equal0~9_combout\ : std_logic;
SIGNAL \inst15|Equal0~8_combout\ : std_logic;
SIGNAL \inst15|Equal0~5_combout\ : std_logic;
SIGNAL \inst15|Equal0~6_combout\ : std_logic;
SIGNAL \inst15|Equal0~7_combout\ : std_logic;
SIGNAL \inst15|Equal0~10_combout\ : std_logic;
SIGNAL \inst15|Selector2~0_combout\ : std_logic;
SIGNAL \inst15|Selector2~1_combout\ : std_logic;
SIGNAL \inst15|state.STRTtx~q\ : std_logic;
SIGNAL \inst15|Selector0~0_combout\ : std_logic;
SIGNAL \inst15|Selector1~0_combout\ : std_logic;
SIGNAL \inst15|Selector3~0_combout\ : std_logic;
SIGNAL \inst15|state.WAITINGtx~q\ : std_logic;
SIGNAL \inst15|Selector1~1_combout\ : std_logic;
SIGNAL \inst15|state.RDY2SND~q\ : std_logic;
SIGNAL \inst15|Selector5~0_combout\ : std_logic;
SIGNAL \inst15|Selector5~1_combout\ : std_logic;
SIGNAL \inst15|state.W4BFFRtx~q\ : std_logic;
SIGNAL \inst15|Selector4~0_combout\ : std_logic;
SIGNAL \inst15|state.NXTtx~q\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|addNo~1_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|addNo~0_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|Add0~49\ : std_logic;
SIGNAL \inst|Add0~50_combout\ : std_logic;
SIGNAL \inst|Add0~51\ : std_logic;
SIGNAL \inst|Add0~52_combout\ : std_logic;
SIGNAL \inst|Add0~53\ : std_logic;
SIGNAL \inst|Add0~54_combout\ : std_logic;
SIGNAL \inst|Add0~55\ : std_logic;
SIGNAL \inst|Add0~56_combout\ : std_logic;
SIGNAL \inst|Add0~57\ : std_logic;
SIGNAL \inst|Add0~58_combout\ : std_logic;
SIGNAL \inst|Add0~59\ : std_logic;
SIGNAL \inst|Add0~60_combout\ : std_logic;
SIGNAL \inst|Add0~61\ : std_logic;
SIGNAL \inst|Add0~62_combout\ : std_logic;
SIGNAL \inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~10_combout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|state.W4BFFRrx~q\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|state.IDLE~q\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|state.NXTADDR~q\ : std_logic;
SIGNAL \inst|state.STRTrx~feeder_combout\ : std_logic;
SIGNAL \inst|state.STRTrx~q\ : std_logic;
SIGNAL \inst4|Add6~0_combout\ : std_logic;
SIGNAL \inst4|Add6~1\ : std_logic;
SIGNAL \inst4|Add6~2_combout\ : std_logic;
SIGNAL \inst4|Add6~3\ : std_logic;
SIGNAL \inst4|Add6~4_combout\ : std_logic;
SIGNAL \inst4|Add6~5\ : std_logic;
SIGNAL \inst4|Add6~6_combout\ : std_logic;
SIGNAL \inst4|Add6~7\ : std_logic;
SIGNAL \inst4|Add6~8_combout\ : std_logic;
SIGNAL \inst4|Add6~9\ : std_logic;
SIGNAL \inst4|Add6~10_combout\ : std_logic;
SIGNAL \inst4|delay_counter~0_combout\ : std_logic;
SIGNAL \inst4|Add6~11\ : std_logic;
SIGNAL \inst4|Add6~12_combout\ : std_logic;
SIGNAL \inst4|Add6~13\ : std_logic;
SIGNAL \inst4|Add6~14_combout\ : std_logic;
SIGNAL \inst4|Add6~15\ : std_logic;
SIGNAL \inst4|Add6~16_combout\ : std_logic;
SIGNAL \inst4|Add6~17\ : std_logic;
SIGNAL \inst4|Add6~18_combout\ : std_logic;
SIGNAL \inst4|delay_counter~1_combout\ : std_logic;
SIGNAL \inst4|Add6~19\ : std_logic;
SIGNAL \inst4|Add6~20_combout\ : std_logic;
SIGNAL \inst4|delay_counter~2_combout\ : std_logic;
SIGNAL \inst4|Add6~21\ : std_logic;
SIGNAL \inst4|Add6~22_combout\ : std_logic;
SIGNAL \inst4|delay_counter~3_combout\ : std_logic;
SIGNAL \inst4|Add6~23\ : std_logic;
SIGNAL \inst4|Add6~24_combout\ : std_logic;
SIGNAL \inst4|Add6~25\ : std_logic;
SIGNAL \inst4|Add6~26_combout\ : std_logic;
SIGNAL \inst4|Add6~27\ : std_logic;
SIGNAL \inst4|Add6~28_combout\ : std_logic;
SIGNAL \inst4|delay_counter~4_combout\ : std_logic;
SIGNAL \inst4|Add6~29\ : std_logic;
SIGNAL \inst4|Add6~30_combout\ : std_logic;
SIGNAL \inst4|Add6~31\ : std_logic;
SIGNAL \inst4|Add6~32_combout\ : std_logic;
SIGNAL \inst4|Add6~33\ : std_logic;
SIGNAL \inst4|Add6~34_combout\ : std_logic;
SIGNAL \inst4|Add6~35\ : std_logic;
SIGNAL \inst4|Add6~36_combout\ : std_logic;
SIGNAL \inst4|Add6~37\ : std_logic;
SIGNAL \inst4|Add6~38_combout\ : std_logic;
SIGNAL \inst4|Add6~39\ : std_logic;
SIGNAL \inst4|Add6~40_combout\ : std_logic;
SIGNAL \inst4|Add6~41\ : std_logic;
SIGNAL \inst4|Add6~42_combout\ : std_logic;
SIGNAL \inst4|Add6~43\ : std_logic;
SIGNAL \inst4|Add6~44_combout\ : std_logic;
SIGNAL \inst4|Add6~45\ : std_logic;
SIGNAL \inst4|Add6~46_combout\ : std_logic;
SIGNAL \inst4|Equal10~6_combout\ : std_logic;
SIGNAL \inst4|Equal10~5_combout\ : std_logic;
SIGNAL \inst4|Equal10~2_combout\ : std_logic;
SIGNAL \inst4|Equal10~0_combout\ : std_logic;
SIGNAL \inst4|Equal10~1_combout\ : std_logic;
SIGNAL \inst4|Equal10~3_combout\ : std_logic;
SIGNAL \inst4|Equal10~4_combout\ : std_logic;
SIGNAL \inst4|Add6~47\ : std_logic;
SIGNAL \inst4|Add6~48_combout\ : std_logic;
SIGNAL \inst4|Add6~49\ : std_logic;
SIGNAL \inst4|Add6~50_combout\ : std_logic;
SIGNAL \inst4|Add6~51\ : std_logic;
SIGNAL \inst4|Add6~52_combout\ : std_logic;
SIGNAL \inst4|Add6~53\ : std_logic;
SIGNAL \inst4|Add6~54_combout\ : std_logic;
SIGNAL \inst4|Add6~55\ : std_logic;
SIGNAL \inst4|Add6~56_combout\ : std_logic;
SIGNAL \inst4|Add6~57\ : std_logic;
SIGNAL \inst4|Add6~58_combout\ : std_logic;
SIGNAL \inst4|Add6~59\ : std_logic;
SIGNAL \inst4|Add6~60_combout\ : std_logic;
SIGNAL \inst4|Add6~61\ : std_logic;
SIGNAL \inst4|Add6~62_combout\ : std_logic;
SIGNAL \inst4|Equal10~7_combout\ : std_logic;
SIGNAL \inst4|Equal10~8_combout\ : std_logic;
SIGNAL \inst4|Equal10~9_combout\ : std_logic;
SIGNAL \inst4|Equal10~10_combout\ : std_logic;
SIGNAL \inst4|StartTx~0_combout\ : std_logic;
SIGNAL \inst4|StartTx~q\ : std_logic;
SIGNAL \inst4|process_6~0_combout\ : std_logic;
SIGNAL \inst4|Add0~0_combout\ : std_logic;
SIGNAL \inst4|EC~3_combout\ : std_logic;
SIGNAL \inst4|Add0~1\ : std_logic;
SIGNAL \inst4|Add0~2_combout\ : std_logic;
SIGNAL \inst4|EC~5_combout\ : std_logic;
SIGNAL \inst4|Add0~3\ : std_logic;
SIGNAL \inst4|Add0~4_combout\ : std_logic;
SIGNAL \inst4|Add0~5\ : std_logic;
SIGNAL \inst4|Add0~6_combout\ : std_logic;
SIGNAL \inst4|Add0~7\ : std_logic;
SIGNAL \inst4|Add0~8_combout\ : std_logic;
SIGNAL \inst4|EC~4_combout\ : std_logic;
SIGNAL \inst4|Add0~9\ : std_logic;
SIGNAL \inst4|Add0~10_combout\ : std_logic;
SIGNAL \inst4|Add0~11\ : std_logic;
SIGNAL \inst4|Add0~12_combout\ : std_logic;
SIGNAL \inst4|Add0~13\ : std_logic;
SIGNAL \inst4|Add0~14_combout\ : std_logic;
SIGNAL \inst4|Add0~15\ : std_logic;
SIGNAL \inst4|Add0~16_combout\ : std_logic;
SIGNAL \inst4|Add0~17\ : std_logic;
SIGNAL \inst4|Add0~18_combout\ : std_logic;
SIGNAL \inst4|Add0~19\ : std_logic;
SIGNAL \inst4|Add0~20_combout\ : std_logic;
SIGNAL \inst4|Add0~21\ : std_logic;
SIGNAL \inst4|Add0~22_combout\ : std_logic;
SIGNAL \inst4|Add0~23\ : std_logic;
SIGNAL \inst4|Add0~24_combout\ : std_logic;
SIGNAL \inst4|Add0~25\ : std_logic;
SIGNAL \inst4|Add0~26_combout\ : std_logic;
SIGNAL \inst4|Add0~27\ : std_logic;
SIGNAL \inst4|Add0~28_combout\ : std_logic;
SIGNAL \inst4|Add0~29\ : std_logic;
SIGNAL \inst4|Add0~30_combout\ : std_logic;
SIGNAL \inst4|Add0~31\ : std_logic;
SIGNAL \inst4|Add0~32_combout\ : std_logic;
SIGNAL \inst4|Add0~33\ : std_logic;
SIGNAL \inst4|Add0~34_combout\ : std_logic;
SIGNAL \inst4|Add0~35\ : std_logic;
SIGNAL \inst4|Add0~36_combout\ : std_logic;
SIGNAL \inst4|Add0~37\ : std_logic;
SIGNAL \inst4|Add0~38_combout\ : std_logic;
SIGNAL \inst4|Add0~39\ : std_logic;
SIGNAL \inst4|Add0~40_combout\ : std_logic;
SIGNAL \inst4|Add0~41\ : std_logic;
SIGNAL \inst4|Add0~42_combout\ : std_logic;
SIGNAL \inst4|Add0~43\ : std_logic;
SIGNAL \inst4|Add0~44_combout\ : std_logic;
SIGNAL \inst4|Add0~45\ : std_logic;
SIGNAL \inst4|Add0~46_combout\ : std_logic;
SIGNAL \inst4|Add0~47\ : std_logic;
SIGNAL \inst4|Add0~48_combout\ : std_logic;
SIGNAL \inst4|Add0~49\ : std_logic;
SIGNAL \inst4|Add0~50_combout\ : std_logic;
SIGNAL \inst4|Add0~51\ : std_logic;
SIGNAL \inst4|Add0~52_combout\ : std_logic;
SIGNAL \inst4|Add0~53\ : std_logic;
SIGNAL \inst4|Add0~54_combout\ : std_logic;
SIGNAL \inst4|Add0~55\ : std_logic;
SIGNAL \inst4|Add0~56_combout\ : std_logic;
SIGNAL \inst4|Add0~57\ : std_logic;
SIGNAL \inst4|Add0~58_combout\ : std_logic;
SIGNAL \inst4|Add0~59\ : std_logic;
SIGNAL \inst4|Add0~60_combout\ : std_logic;
SIGNAL \inst4|state_csh~11_combout\ : std_logic;
SIGNAL \inst4|state_csh~4_combout\ : std_logic;
SIGNAL \inst4|state_csh~3_combout\ : std_logic;
SIGNAL \inst4|state_csh~2_combout\ : std_logic;
SIGNAL \inst4|state_csh~5_combout\ : std_logic;
SIGNAL \inst4|Add0~61\ : std_logic;
SIGNAL \inst4|Add0~62_combout\ : std_logic;
SIGNAL \inst4|state_csh~7_combout\ : std_logic;
SIGNAL \inst4|state_csh~6_combout\ : std_logic;
SIGNAL \inst4|state_csh~9_combout\ : std_logic;
SIGNAL \inst4|state_csh~8_combout\ : std_logic;
SIGNAL \inst4|state_csh~10_combout\ : std_logic;
SIGNAL \inst4|state_csh~12_combout\ : std_logic;
SIGNAL \inst4|state_csh~13_combout\ : std_logic;
SIGNAL \inst4|state_csh~q\ : std_logic;
SIGNAL \inst4|CSU~q\ : std_logic;
SIGNAL \inst4|EC~0_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[0]~q\ : std_logic;
SIGNAL \inst4|Add1~0_combout\ : std_logic;
SIGNAL \inst4|EC~2_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[1]~q\ : std_logic;
SIGNAL \inst4|Add1~1\ : std_logic;
SIGNAL \inst4|Add1~2_combout\ : std_logic;
SIGNAL \inst4|EC~1_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[4]~q\ : std_logic;
SIGNAL \inst4|Add1~3\ : std_logic;
SIGNAL \inst4|Add1~4_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[2]~q\ : std_logic;
SIGNAL \inst4|Add1~5\ : std_logic;
SIGNAL \inst4|Add1~6_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[3]~q\ : std_logic;
SIGNAL \inst4|Add1~7\ : std_logic;
SIGNAL \inst4|Add1~8_combout\ : std_logic;
SIGNAL \inst4|state_csl~2_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[6]~q\ : std_logic;
SIGNAL \inst4|Add1~9\ : std_logic;
SIGNAL \inst4|Add1~10_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[5]~q\ : std_logic;
SIGNAL \inst4|Add1~11\ : std_logic;
SIGNAL \inst4|Add1~12_combout\ : std_logic;
SIGNAL \inst4|state_csl~3_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[10]~q\ : std_logic;
SIGNAL \inst4|Add1~13\ : std_logic;
SIGNAL \inst4|Add1~14_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[7]~q\ : std_logic;
SIGNAL \inst4|Add1~15\ : std_logic;
SIGNAL \inst4|Add1~16_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[8]~q\ : std_logic;
SIGNAL \inst4|Add1~17\ : std_logic;
SIGNAL \inst4|Add1~18_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[9]~q\ : std_logic;
SIGNAL \inst4|Add1~19\ : std_logic;
SIGNAL \inst4|Add1~20_combout\ : std_logic;
SIGNAL \inst4|state_csl~4_combout\ : std_logic;
SIGNAL \inst4|state_csl~5_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[18]~q\ : std_logic;
SIGNAL \inst4|Add1~21\ : std_logic;
SIGNAL \inst4|Add1~22_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[11]~q\ : std_logic;
SIGNAL \inst4|Add1~23\ : std_logic;
SIGNAL \inst4|Add1~24_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[12]~q\ : std_logic;
SIGNAL \inst4|Add1~25\ : std_logic;
SIGNAL \inst4|Add1~26_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[13]~q\ : std_logic;
SIGNAL \inst4|Add1~27\ : std_logic;
SIGNAL \inst4|Add1~28_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[14]~q\ : std_logic;
SIGNAL \inst4|Add1~29\ : std_logic;
SIGNAL \inst4|Add1~30_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[15]~q\ : std_logic;
SIGNAL \inst4|Add1~31\ : std_logic;
SIGNAL \inst4|Add1~32_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[16]~q\ : std_logic;
SIGNAL \inst4|Add1~33\ : std_logic;
SIGNAL \inst4|Add1~34_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[17]~q\ : std_logic;
SIGNAL \inst4|Add1~35\ : std_logic;
SIGNAL \inst4|Add1~36_combout\ : std_logic;
SIGNAL \inst4|state_csl~7_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[20]~q\ : std_logic;
SIGNAL \inst4|Add1~37\ : std_logic;
SIGNAL \inst4|Add1~38_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[19]~q\ : std_logic;
SIGNAL \inst4|Add1~39\ : std_logic;
SIGNAL \inst4|Add1~40_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[21]~q\ : std_logic;
SIGNAL \inst4|Add1~41\ : std_logic;
SIGNAL \inst4|Add1~42_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[22]~q\ : std_logic;
SIGNAL \inst4|Add1~43\ : std_logic;
SIGNAL \inst4|Add1~44_combout\ : std_logic;
SIGNAL \inst4|state_csl~8_combout\ : std_logic;
SIGNAL \inst4|state_csl~6_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[26]~q\ : std_logic;
SIGNAL \inst4|Add1~45\ : std_logic;
SIGNAL \inst4|Add1~46_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[23]~q\ : std_logic;
SIGNAL \inst4|Add1~47\ : std_logic;
SIGNAL \inst4|Add1~48_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[24]~q\ : std_logic;
SIGNAL \inst4|Add1~49\ : std_logic;
SIGNAL \inst4|Add1~50_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[25]~q\ : std_logic;
SIGNAL \inst4|Add1~51\ : std_logic;
SIGNAL \inst4|Add1~52_combout\ : std_logic;
SIGNAL \inst4|state_csl~9_combout\ : std_logic;
SIGNAL \inst4|state_csl~10_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[31]~q\ : std_logic;
SIGNAL \inst4|Add1~53\ : std_logic;
SIGNAL \inst4|Add1~54_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[27]~q\ : std_logic;
SIGNAL \inst4|Add1~55\ : std_logic;
SIGNAL \inst4|Add1~56_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[28]~q\ : std_logic;
SIGNAL \inst4|Add1~57\ : std_logic;
SIGNAL \inst4|Add1~58_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[29]~q\ : std_logic;
SIGNAL \inst4|Add1~59\ : std_logic;
SIGNAL \inst4|Add1~60_combout\ : std_logic;
SIGNAL \inst4|process_1:EC[30]~q\ : std_logic;
SIGNAL \inst4|Add1~61\ : std_logic;
SIGNAL \inst4|Add1~62_combout\ : std_logic;
SIGNAL \inst4|state_csl~11_combout\ : std_logic;
SIGNAL \inst4|state_csl~12_combout\ : std_logic;
SIGNAL \inst4|state_csl~13_combout\ : std_logic;
SIGNAL \inst4|state_csl~q\ : std_logic;
SIGNAL \inst4|CSD~q\ : std_logic;
SIGNAL \inst4|CS~combout\ : std_logic;
SIGNAL \inst4|wt~0_combout\ : std_logic;
SIGNAL \inst4|wt~q\ : std_logic;
SIGNAL \inst4|pstate~0_combout\ : std_logic;
SIGNAL \inst4|pstate~q\ : std_logic;
SIGNAL \inst4|process_10~0_combout\ : std_logic;
SIGNAL \inst4|fPulse~q\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|state.WAITINGrx~q\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|state.STOREstate~q\ : std_logic;
SIGNAL \inst16|state~10_combout\ : std_logic;
SIGNAL \inst16|state.IDLE~q\ : std_logic;
SIGNAL \inst16|state~9_combout\ : std_logic;
SIGNAL \inst16|state.SEND~q\ : std_logic;
SIGNAL \inst16|Selector18~0_combout\ : std_logic;
SIGNAL \inst16|Selector18~1_combout\ : std_logic;
SIGNAL \inst16|Selector28~0_combout\ : std_logic;
SIGNAL \inst16|OS[0]~feeder_combout\ : std_logic;
SIGNAL \inst16|Selector27~0_combout\ : std_logic;
SIGNAL \inst16|OS[1]~feeder_combout\ : std_logic;
SIGNAL \inst16|Equal3~0_combout\ : std_logic;
SIGNAL \inst16|Selector26~0_combout\ : std_logic;
SIGNAL \inst16|OS[2]~feeder_combout\ : std_logic;
SIGNAL \inst16|Selector25~0_combout\ : std_logic;
SIGNAL \inst16|Equal3~1_combout\ : std_logic;
SIGNAL \inst16|FS[0]~0_combout\ : std_logic;
SIGNAL \inst16|Selector17~0_combout\ : std_logic;
SIGNAL \inst16|Selector17~1_combout\ : std_logic;
SIGNAL \inst16|Equal2~0_combout\ : std_logic;
SIGNAL \inst16|Selector20~0_combout\ : std_logic;
SIGNAL \inst16|Selector19~0_combout\ : std_logic;
SIGNAL \inst16|process_0~2_combout\ : std_logic;
SIGNAL \inst16|process_0~0_combout\ : std_logic;
SIGNAL \inst16|Selector24~0_combout\ : std_logic;
SIGNAL \inst16|Selector22~0_combout\ : std_logic;
SIGNAL \inst16|Selector22~1_combout\ : std_logic;
SIGNAL \inst16|Add1~1_combout\ : std_logic;
SIGNAL \inst16|Selector21~0_combout\ : std_logic;
SIGNAL \inst16|process_0~1_combout\ : std_logic;
SIGNAL \inst16|process_0~3_combout\ : std_logic;
SIGNAL \inst16|Add1~0_combout\ : std_logic;
SIGNAL \inst16|Selector23~0_combout\ : std_logic;
SIGNAL \inst16|Equal4~0_combout\ : std_logic;
SIGNAL \inst16|empty~0_combout\ : std_logic;
SIGNAL \inst16|empty~combout\ : std_logic;
SIGNAL \inst15|Selector0~1_combout\ : std_logic;
SIGNAL \inst15|state.IDLE~0_combout\ : std_logic;
SIGNAL \inst15|state.IDLE~q\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Selector19~0_combout\ : std_logic;
SIGNAL \inst5|state.WAITING~q\ : std_logic;
SIGNAL \inst5|Selector17~0_combout\ : std_logic;
SIGNAL \inst5|state.SEARCH~q\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|idx[1]~3_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|TRANSMIT~q\ : std_logic;
SIGNAL \inst6|Add6~1\ : std_logic;
SIGNAL \inst6|Add6~3\ : std_logic;
SIGNAL \inst6|Add6~5\ : std_logic;
SIGNAL \inst6|Add6~7\ : std_logic;
SIGNAL \inst6|Add6~9\ : std_logic;
SIGNAL \inst6|Add6~11\ : std_logic;
SIGNAL \inst6|Add6~13\ : std_logic;
SIGNAL \inst6|Add6~15\ : std_logic;
SIGNAL \inst6|Add6~17\ : std_logic;
SIGNAL \inst6|Add6~19\ : std_logic;
SIGNAL \inst6|Add6~21\ : std_logic;
SIGNAL \inst6|Add6~23\ : std_logic;
SIGNAL \inst6|Add6~25\ : std_logic;
SIGNAL \inst6|Add6~27\ : std_logic;
SIGNAL \inst6|Add6~29\ : std_logic;
SIGNAL \inst6|Add6~31\ : std_logic;
SIGNAL \inst6|Add6~33\ : std_logic;
SIGNAL \inst6|Add6~35\ : std_logic;
SIGNAL \inst6|Add6~37\ : std_logic;
SIGNAL \inst6|Add6~39\ : std_logic;
SIGNAL \inst6|Add6~41\ : std_logic;
SIGNAL \inst6|Add6~42_combout\ : std_logic;
SIGNAL \inst6|Add6~43\ : std_logic;
SIGNAL \inst6|Add6~44_combout\ : std_logic;
SIGNAL \inst6|Add6~30_combout\ : std_logic;
SIGNAL \inst6|Add6~36_combout\ : std_logic;
SIGNAL \inst6|Add6~34_combout\ : std_logic;
SIGNAL \inst6|Add6~32_combout\ : std_logic;
SIGNAL \inst6|Equal10~5_combout\ : std_logic;
SIGNAL \inst6|Add6~38_combout\ : std_logic;
SIGNAL \inst6|Add6~40_combout\ : std_logic;
SIGNAL \inst6|Equal10~6_combout\ : std_logic;
SIGNAL \inst6|Equal10~7_combout\ : std_logic;
SIGNAL \inst6|Add6~6_combout\ : std_logic;
SIGNAL \inst6|Add6~8_combout\ : std_logic;
SIGNAL \inst6|Add6~10_combout\ : std_logic;
SIGNAL \inst6|Add6~12_combout\ : std_logic;
SIGNAL \inst6|Equal10~1_combout\ : std_logic;
SIGNAL \inst6|Add6~0_combout\ : std_logic;
SIGNAL \inst6|Add6~2_combout\ : std_logic;
SIGNAL \inst6|Add6~4_combout\ : std_logic;
SIGNAL \inst6|Equal10~0_combout\ : std_logic;
SIGNAL \inst6|Add6~16_combout\ : std_logic;
SIGNAL \inst6|Add6~14_combout\ : std_logic;
SIGNAL \inst6|Add6~18_combout\ : std_logic;
SIGNAL \inst6|Add6~20_combout\ : std_logic;
SIGNAL \inst6|Equal10~2_combout\ : std_logic;
SIGNAL \inst6|Add6~24_combout\ : std_logic;
SIGNAL \inst6|Add6~22_combout\ : std_logic;
SIGNAL \inst6|Add6~28_combout\ : std_logic;
SIGNAL \inst6|Add6~26_combout\ : std_logic;
SIGNAL \inst6|Equal10~3_combout\ : std_logic;
SIGNAL \inst6|Equal10~4_combout\ : std_logic;
SIGNAL \inst6|Add6~45\ : std_logic;
SIGNAL \inst6|Add6~46_combout\ : std_logic;
SIGNAL \inst6|Add6~47\ : std_logic;
SIGNAL \inst6|Add6~49\ : std_logic;
SIGNAL \inst6|Add6~50_combout\ : std_logic;
SIGNAL \inst6|Add6~48_combout\ : std_logic;
SIGNAL \inst6|Add6~51\ : std_logic;
SIGNAL \inst6|Add6~52_combout\ : std_logic;
SIGNAL \inst6|Equal10~8_combout\ : std_logic;
SIGNAL \inst6|Add6~53\ : std_logic;
SIGNAL \inst6|Add6~55\ : std_logic;
SIGNAL \inst6|Add6~56_combout\ : std_logic;
SIGNAL \inst6|Add6~54_combout\ : std_logic;
SIGNAL \inst6|Add6~57\ : std_logic;
SIGNAL \inst6|Add6~58_combout\ : std_logic;
SIGNAL \inst6|Add6~59\ : std_logic;
SIGNAL \inst6|Add6~60_combout\ : std_logic;
SIGNAL \inst6|Equal10~9_combout\ : std_logic;
SIGNAL \inst6|Equal10~10_combout\ : std_logic;
SIGNAL \inst6|StartTx~0_combout\ : std_logic;
SIGNAL \inst6|StartTx~q\ : std_logic;
SIGNAL \inst6|wt~0_combout\ : std_logic;
SIGNAL \inst6|wt~q\ : std_logic;
SIGNAL \inst6|process_6~0_combout\ : std_logic;
SIGNAL \inst6|Add0~0_combout\ : std_logic;
SIGNAL \inst6|EC~3_combout\ : std_logic;
SIGNAL \inst6|Add0~1\ : std_logic;
SIGNAL \inst6|Add0~2_combout\ : std_logic;
SIGNAL \inst6|EC~5_combout\ : std_logic;
SIGNAL \inst6|Add0~3\ : std_logic;
SIGNAL \inst6|Add0~4_combout\ : std_logic;
SIGNAL \inst6|Add0~5\ : std_logic;
SIGNAL \inst6|Add0~6_combout\ : std_logic;
SIGNAL \inst6|Add0~7\ : std_logic;
SIGNAL \inst6|Add0~8_combout\ : std_logic;
SIGNAL \inst6|EC~4_combout\ : std_logic;
SIGNAL \inst6|Add0~9\ : std_logic;
SIGNAL \inst6|Add0~10_combout\ : std_logic;
SIGNAL \inst6|Add0~11\ : std_logic;
SIGNAL \inst6|Add0~12_combout\ : std_logic;
SIGNAL \inst6|Add0~13\ : std_logic;
SIGNAL \inst6|Add0~14_combout\ : std_logic;
SIGNAL \inst6|Add0~15\ : std_logic;
SIGNAL \inst6|Add0~16_combout\ : std_logic;
SIGNAL \inst6|Add0~17\ : std_logic;
SIGNAL \inst6|Add0~18_combout\ : std_logic;
SIGNAL \inst6|Add0~19\ : std_logic;
SIGNAL \inst6|Add0~20_combout\ : std_logic;
SIGNAL \inst6|state_csh~4_combout\ : std_logic;
SIGNAL \inst6|state_csh~3_combout\ : std_logic;
SIGNAL \inst6|state_csh~2_combout\ : std_logic;
SIGNAL \inst6|state_csh~5_combout\ : std_logic;
SIGNAL \inst6|Add0~21\ : std_logic;
SIGNAL \inst6|Add0~22_combout\ : std_logic;
SIGNAL \inst6|Add0~23\ : std_logic;
SIGNAL \inst6|Add0~24_combout\ : std_logic;
SIGNAL \inst6|Add0~25\ : std_logic;
SIGNAL \inst6|Add0~26_combout\ : std_logic;
SIGNAL \inst6|Add0~27\ : std_logic;
SIGNAL \inst6|Add0~28_combout\ : std_logic;
SIGNAL \inst6|Add0~29\ : std_logic;
SIGNAL \inst6|Add0~30_combout\ : std_logic;
SIGNAL \inst6|Add0~31\ : std_logic;
SIGNAL \inst6|Add0~32_combout\ : std_logic;
SIGNAL \inst6|Add0~33\ : std_logic;
SIGNAL \inst6|Add0~34_combout\ : std_logic;
SIGNAL \inst6|Add0~35\ : std_logic;
SIGNAL \inst6|Add0~36_combout\ : std_logic;
SIGNAL \inst6|Add0~37\ : std_logic;
SIGNAL \inst6|Add0~38_combout\ : std_logic;
SIGNAL \inst6|Add0~39\ : std_logic;
SIGNAL \inst6|Add0~40_combout\ : std_logic;
SIGNAL \inst6|Add0~41\ : std_logic;
SIGNAL \inst6|Add0~42_combout\ : std_logic;
SIGNAL \inst6|Add0~43\ : std_logic;
SIGNAL \inst6|Add0~44_combout\ : std_logic;
SIGNAL \inst6|Add0~45\ : std_logic;
SIGNAL \inst6|Add0~46_combout\ : std_logic;
SIGNAL \inst6|Add0~47\ : std_logic;
SIGNAL \inst6|Add0~48_combout\ : std_logic;
SIGNAL \inst6|Add0~49\ : std_logic;
SIGNAL \inst6|Add0~50_combout\ : std_logic;
SIGNAL \inst6|Add0~51\ : std_logic;
SIGNAL \inst6|Add0~52_combout\ : std_logic;
SIGNAL \inst6|Add0~53\ : std_logic;
SIGNAL \inst6|Add0~54_combout\ : std_logic;
SIGNAL \inst6|Add0~55\ : std_logic;
SIGNAL \inst6|Add0~56_combout\ : std_logic;
SIGNAL \inst6|Add0~57\ : std_logic;
SIGNAL \inst6|Add0~58_combout\ : std_logic;
SIGNAL \inst6|Add0~59\ : std_logic;
SIGNAL \inst6|Add0~60_combout\ : std_logic;
SIGNAL \inst6|Add0~61\ : std_logic;
SIGNAL \inst6|Add0~62_combout\ : std_logic;
SIGNAL \inst6|state_csh~11_combout\ : std_logic;
SIGNAL \inst6|state_csh~7_combout\ : std_logic;
SIGNAL \inst6|state_csh~8_combout\ : std_logic;
SIGNAL \inst6|state_csh~6_combout\ : std_logic;
SIGNAL \inst6|state_csh~9_combout\ : std_logic;
SIGNAL \inst6|state_csh~10_combout\ : std_logic;
SIGNAL \inst6|state_csh~12_combout\ : std_logic;
SIGNAL \inst6|state_csh~13_combout\ : std_logic;
SIGNAL \inst6|state_csh~q\ : std_logic;
SIGNAL \inst6|CSU~q\ : std_logic;
SIGNAL \inst6|process_1:EC[29]~q\ : std_logic;
SIGNAL \inst6|Add1~0_combout\ : std_logic;
SIGNAL \inst6|EC~0_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[0]~q\ : std_logic;
SIGNAL \inst6|Add1~1\ : std_logic;
SIGNAL \inst6|Add1~2_combout\ : std_logic;
SIGNAL \inst6|EC~2_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[1]~q\ : std_logic;
SIGNAL \inst6|Add1~3\ : std_logic;
SIGNAL \inst6|Add1~4_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[2]~q\ : std_logic;
SIGNAL \inst6|Add1~5\ : std_logic;
SIGNAL \inst6|Add1~6_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[3]~q\ : std_logic;
SIGNAL \inst6|Add1~7\ : std_logic;
SIGNAL \inst6|Add1~8_combout\ : std_logic;
SIGNAL \inst6|EC~1_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[4]~q\ : std_logic;
SIGNAL \inst6|Add1~9\ : std_logic;
SIGNAL \inst6|Add1~10_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[5]~q\ : std_logic;
SIGNAL \inst6|Add1~11\ : std_logic;
SIGNAL \inst6|Add1~12_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[6]~q\ : std_logic;
SIGNAL \inst6|Add1~13\ : std_logic;
SIGNAL \inst6|Add1~14_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[7]~q\ : std_logic;
SIGNAL \inst6|Add1~15\ : std_logic;
SIGNAL \inst6|Add1~16_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[8]~q\ : std_logic;
SIGNAL \inst6|Add1~17\ : std_logic;
SIGNAL \inst6|Add1~18_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[9]~q\ : std_logic;
SIGNAL \inst6|Add1~19\ : std_logic;
SIGNAL \inst6|Add1~20_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[10]~q\ : std_logic;
SIGNAL \inst6|Add1~21\ : std_logic;
SIGNAL \inst6|Add1~22_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[11]~q\ : std_logic;
SIGNAL \inst6|Add1~23\ : std_logic;
SIGNAL \inst6|Add1~24_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[12]~q\ : std_logic;
SIGNAL \inst6|Add1~25\ : std_logic;
SIGNAL \inst6|Add1~26_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[13]~q\ : std_logic;
SIGNAL \inst6|Add1~27\ : std_logic;
SIGNAL \inst6|Add1~28_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[14]~q\ : std_logic;
SIGNAL \inst6|Add1~29\ : std_logic;
SIGNAL \inst6|Add1~30_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[15]~q\ : std_logic;
SIGNAL \inst6|Add1~31\ : std_logic;
SIGNAL \inst6|Add1~32_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[16]~q\ : std_logic;
SIGNAL \inst6|Add1~33\ : std_logic;
SIGNAL \inst6|Add1~34_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[17]~q\ : std_logic;
SIGNAL \inst6|Add1~35\ : std_logic;
SIGNAL \inst6|Add1~36_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[18]~q\ : std_logic;
SIGNAL \inst6|Add1~37\ : std_logic;
SIGNAL \inst6|Add1~38_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[19]~q\ : std_logic;
SIGNAL \inst6|Add1~39\ : std_logic;
SIGNAL \inst6|Add1~40_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[20]~q\ : std_logic;
SIGNAL \inst6|Add1~41\ : std_logic;
SIGNAL \inst6|Add1~42_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[21]~q\ : std_logic;
SIGNAL \inst6|Add1~43\ : std_logic;
SIGNAL \inst6|Add1~44_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[22]~q\ : std_logic;
SIGNAL \inst6|Add1~45\ : std_logic;
SIGNAL \inst6|Add1~46_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[23]~q\ : std_logic;
SIGNAL \inst6|Add1~47\ : std_logic;
SIGNAL \inst6|Add1~48_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[24]~q\ : std_logic;
SIGNAL \inst6|Add1~49\ : std_logic;
SIGNAL \inst6|Add1~50_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[25]~q\ : std_logic;
SIGNAL \inst6|Add1~51\ : std_logic;
SIGNAL \inst6|Add1~52_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[26]~q\ : std_logic;
SIGNAL \inst6|Add1~53\ : std_logic;
SIGNAL \inst6|Add1~54_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[27]~q\ : std_logic;
SIGNAL \inst6|Add1~55\ : std_logic;
SIGNAL \inst6|Add1~56_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[28]~q\ : std_logic;
SIGNAL \inst6|Add1~57\ : std_logic;
SIGNAL \inst6|Add1~58_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[30]~q\ : std_logic;
SIGNAL \inst6|Add1~59\ : std_logic;
SIGNAL \inst6|Add1~60_combout\ : std_logic;
SIGNAL \inst6|state_csl~11_combout\ : std_logic;
SIGNAL \inst6|process_1:EC[31]~q\ : std_logic;
SIGNAL \inst6|Add1~61\ : std_logic;
SIGNAL \inst6|Add1~62_combout\ : std_logic;
SIGNAL \inst6|state_csl~2_combout\ : std_logic;
SIGNAL \inst6|state_csl~4_combout\ : std_logic;
SIGNAL \inst6|state_csl~3_combout\ : std_logic;
SIGNAL \inst6|state_csl~5_combout\ : std_logic;
SIGNAL \inst6|state_csl~7_combout\ : std_logic;
SIGNAL \inst6|state_csl~8_combout\ : std_logic;
SIGNAL \inst6|state_csl~6_combout\ : std_logic;
SIGNAL \inst6|state_csl~9_combout\ : std_logic;
SIGNAL \inst6|state_csl~10_combout\ : std_logic;
SIGNAL \inst6|state_csl~12_combout\ : std_logic;
SIGNAL \inst6|state_csl~13_combout\ : std_logic;
SIGNAL \inst6|state_csl~q\ : std_logic;
SIGNAL \inst6|CSD~q\ : std_logic;
SIGNAL \inst6|CS~combout\ : std_logic;
SIGNAL \inst6|CC~1_combout\ : std_logic;
SIGNAL \inst6|Add2~0_combout\ : std_logic;
SIGNAL \inst6|CC~0_combout\ : std_logic;
SIGNAL \inst6|Add2~1\ : std_logic;
SIGNAL \inst6|Add2~2_combout\ : std_logic;
SIGNAL \inst6|CC~2_combout\ : std_logic;
SIGNAL \inst6|Add2~3\ : std_logic;
SIGNAL \inst6|Add2~4_combout\ : std_logic;
SIGNAL \inst6|Add2~5\ : std_logic;
SIGNAL \inst6|Add2~6_combout\ : std_logic;
SIGNAL \inst6|Add2~7\ : std_logic;
SIGNAL \inst6|Add2~8_combout\ : std_logic;
SIGNAL \inst6|state_clk~2_combout\ : std_logic;
SIGNAL \inst6|Add2~9\ : std_logic;
SIGNAL \inst6|Add2~10_combout\ : std_logic;
SIGNAL \inst6|Add2~11\ : std_logic;
SIGNAL \inst6|Add2~12_combout\ : std_logic;
SIGNAL \inst6|state_clk~3_combout\ : std_logic;
SIGNAL \inst6|Add2~13\ : std_logic;
SIGNAL \inst6|Add2~14_combout\ : std_logic;
SIGNAL \inst6|Add2~15\ : std_logic;
SIGNAL \inst6|Add2~16_combout\ : std_logic;
SIGNAL \inst6|Add2~17\ : std_logic;
SIGNAL \inst6|Add2~18_combout\ : std_logic;
SIGNAL \inst6|Add2~19\ : std_logic;
SIGNAL \inst6|Add2~20_combout\ : std_logic;
SIGNAL \inst6|state_clk~4_combout\ : std_logic;
SIGNAL \inst6|state_clk~5_combout\ : std_logic;
SIGNAL \inst6|Add2~21\ : std_logic;
SIGNAL \inst6|Add2~22_combout\ : std_logic;
SIGNAL \inst6|Add2~23\ : std_logic;
SIGNAL \inst6|Add2~24_combout\ : std_logic;
SIGNAL \inst6|Add2~25\ : std_logic;
SIGNAL \inst6|Add2~26_combout\ : std_logic;
SIGNAL \inst6|Add2~27\ : std_logic;
SIGNAL \inst6|Add2~28_combout\ : std_logic;
SIGNAL \inst6|Add2~29\ : std_logic;
SIGNAL \inst6|Add2~30_combout\ : std_logic;
SIGNAL \inst6|Add2~31\ : std_logic;
SIGNAL \inst6|Add2~32_combout\ : std_logic;
SIGNAL \inst6|Add2~33\ : std_logic;
SIGNAL \inst6|Add2~34_combout\ : std_logic;
SIGNAL \inst6|Add2~35\ : std_logic;
SIGNAL \inst6|Add2~36_combout\ : std_logic;
SIGNAL \inst6|Add2~37\ : std_logic;
SIGNAL \inst6|Add2~38_combout\ : std_logic;
SIGNAL \inst6|Add2~39\ : std_logic;
SIGNAL \inst6|Add2~40_combout\ : std_logic;
SIGNAL \inst6|Add2~41\ : std_logic;
SIGNAL \inst6|Add2~42_combout\ : std_logic;
SIGNAL \inst6|Add2~43\ : std_logic;
SIGNAL \inst6|Add2~44_combout\ : std_logic;
SIGNAL \inst6|Add2~45\ : std_logic;
SIGNAL \inst6|Add2~46_combout\ : std_logic;
SIGNAL \inst6|Add2~47\ : std_logic;
SIGNAL \inst6|Add2~48_combout\ : std_logic;
SIGNAL \inst6|Add2~49\ : std_logic;
SIGNAL \inst6|Add2~50_combout\ : std_logic;
SIGNAL \inst6|Add2~51\ : std_logic;
SIGNAL \inst6|Add2~52_combout\ : std_logic;
SIGNAL \inst6|Add2~53\ : std_logic;
SIGNAL \inst6|Add2~54_combout\ : std_logic;
SIGNAL \inst6|Add2~55\ : std_logic;
SIGNAL \inst6|Add2~56_combout\ : std_logic;
SIGNAL \inst6|Add2~57\ : std_logic;
SIGNAL \inst6|Add2~58_combout\ : std_logic;
SIGNAL \inst6|Add2~59\ : std_logic;
SIGNAL \inst6|Add2~60_combout\ : std_logic;
SIGNAL \inst6|Add2~61\ : std_logic;
SIGNAL \inst6|Add2~62_combout\ : std_logic;
SIGNAL \inst6|state_clk~6_combout\ : std_logic;
SIGNAL \inst6|state_clk~7_combout\ : std_logic;
SIGNAL \inst6|state_clk~8_combout\ : std_logic;
SIGNAL \inst6|state_clk~9_combout\ : std_logic;
SIGNAL \inst6|state_clk~10_combout\ : std_logic;
SIGNAL \inst6|state_clk~11_combout\ : std_logic;
SIGNAL \inst6|state_clk~12_combout\ : std_logic;
SIGNAL \inst6|state_clk~13_combout\ : std_logic;
SIGNAL \inst6|state_clk~q\ : std_logic;
SIGNAL \inst6|rtc~0_combout\ : std_logic;
SIGNAL \inst6|rtc~q\ : std_logic;
SIGNAL \inst6|CLKO~0_combout\ : std_logic;
SIGNAL \inst6|MOSI~0_combout\ : std_logic;
SIGNAL \inst6|Add4~0_combout\ : std_logic;
SIGNAL \inst6|Add4~1\ : std_logic;
SIGNAL \inst6|Add4~2_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \inst16|datArray~21_combout\ : std_logic;
SIGNAL \inst16|state~8_combout\ : std_logic;
SIGNAL \inst16|state.STORE~q\ : std_logic;
SIGNAL \inst16|datArray_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \inst16|datArray~22_combout\ : std_logic;
SIGNAL \inst16|datArray~23_combout\ : std_logic;
SIGNAL \inst16|Mux0~0_combout\ : std_logic;
SIGNAL \MISO_MPU~input_o\ : std_logic;
SIGNAL \inst4|Add2~0_combout\ : std_logic;
SIGNAL \inst4|CC~0_combout\ : std_logic;
SIGNAL \inst4|Add2~1\ : std_logic;
SIGNAL \inst4|Add2~2_combout\ : std_logic;
SIGNAL \inst4|CC~1_combout\ : std_logic;
SIGNAL \inst4|Add2~3\ : std_logic;
SIGNAL \inst4|Add2~4_combout\ : std_logic;
SIGNAL \inst4|Add2~5\ : std_logic;
SIGNAL \inst4|Add2~6_combout\ : std_logic;
SIGNAL \inst4|Add2~7\ : std_logic;
SIGNAL \inst4|Add2~8_combout\ : std_logic;
SIGNAL \inst4|CC~2_combout\ : std_logic;
SIGNAL \inst4|Add2~9\ : std_logic;
SIGNAL \inst4|Add2~10_combout\ : std_logic;
SIGNAL \inst4|Add2~11\ : std_logic;
SIGNAL \inst4|Add2~12_combout\ : std_logic;
SIGNAL \inst4|Add2~13\ : std_logic;
SIGNAL \inst4|Add2~14_combout\ : std_logic;
SIGNAL \inst4|Add2~15\ : std_logic;
SIGNAL \inst4|Add2~16_combout\ : std_logic;
SIGNAL \inst4|Add2~17\ : std_logic;
SIGNAL \inst4|Add2~18_combout\ : std_logic;
SIGNAL \inst4|Add2~19\ : std_logic;
SIGNAL \inst4|Add2~20_combout\ : std_logic;
SIGNAL \inst4|Add2~21\ : std_logic;
SIGNAL \inst4|Add2~22_combout\ : std_logic;
SIGNAL \inst4|Add2~23\ : std_logic;
SIGNAL \inst4|Add2~24_combout\ : std_logic;
SIGNAL \inst4|Add2~25\ : std_logic;
SIGNAL \inst4|Add2~26_combout\ : std_logic;
SIGNAL \inst4|Add2~27\ : std_logic;
SIGNAL \inst4|Add2~28_combout\ : std_logic;
SIGNAL \inst4|Add2~29\ : std_logic;
SIGNAL \inst4|Add2~30_combout\ : std_logic;
SIGNAL \inst4|Add2~31\ : std_logic;
SIGNAL \inst4|Add2~32_combout\ : std_logic;
SIGNAL \inst4|Add2~33\ : std_logic;
SIGNAL \inst4|Add2~34_combout\ : std_logic;
SIGNAL \inst4|Add2~35\ : std_logic;
SIGNAL \inst4|Add2~36_combout\ : std_logic;
SIGNAL \inst4|Add2~37\ : std_logic;
SIGNAL \inst4|Add2~38_combout\ : std_logic;
SIGNAL \inst4|Add2~39\ : std_logic;
SIGNAL \inst4|Add2~40_combout\ : std_logic;
SIGNAL \inst4|Add2~41\ : std_logic;
SIGNAL \inst4|Add2~42_combout\ : std_logic;
SIGNAL \inst4|Add2~43\ : std_logic;
SIGNAL \inst4|Add2~44_combout\ : std_logic;
SIGNAL \inst4|state_clk~8_combout\ : std_logic;
SIGNAL \inst4|state_clk~7_combout\ : std_logic;
SIGNAL \inst4|state_clk~6_combout\ : std_logic;
SIGNAL \inst4|Add2~45\ : std_logic;
SIGNAL \inst4|Add2~46_combout\ : std_logic;
SIGNAL \inst4|Add2~47\ : std_logic;
SIGNAL \inst4|Add2~48_combout\ : std_logic;
SIGNAL \inst4|Add2~49\ : std_logic;
SIGNAL \inst4|Add2~50_combout\ : std_logic;
SIGNAL \inst4|Add2~51\ : std_logic;
SIGNAL \inst4|Add2~52_combout\ : std_logic;
SIGNAL \inst4|state_clk~9_combout\ : std_logic;
SIGNAL \inst4|state_clk~10_combout\ : std_logic;
SIGNAL \inst4|state_clk~2_combout\ : std_logic;
SIGNAL \inst4|state_clk~4_combout\ : std_logic;
SIGNAL \inst4|state_clk~3_combout\ : std_logic;
SIGNAL \inst4|state_clk~5_combout\ : std_logic;
SIGNAL \inst4|Add2~53\ : std_logic;
SIGNAL \inst4|Add2~54_combout\ : std_logic;
SIGNAL \inst4|Add2~55\ : std_logic;
SIGNAL \inst4|Add2~56_combout\ : std_logic;
SIGNAL \inst4|Add2~57\ : std_logic;
SIGNAL \inst4|Add2~58_combout\ : std_logic;
SIGNAL \inst4|Add2~59\ : std_logic;
SIGNAL \inst4|Add2~60_combout\ : std_logic;
SIGNAL \inst4|Add2~61\ : std_logic;
SIGNAL \inst4|Add2~62_combout\ : std_logic;
SIGNAL \inst4|state_clk~11_combout\ : std_logic;
SIGNAL \inst4|state_clk~12_combout\ : std_logic;
SIGNAL \inst4|state_clk~13_combout\ : std_logic;
SIGNAL \inst4|state_clk~q\ : std_logic;
SIGNAL \inst4|rtc~0_combout\ : std_logic;
SIGNAL \inst4|rtc~q\ : std_logic;
SIGNAL \inst4|MOSI~0_combout\ : std_logic;
SIGNAL \inst4|Add5~0_combout\ : std_logic;
SIGNAL \inst4|Add5~1\ : std_logic;
SIGNAL \inst4|Add5~2_combout\ : std_logic;
SIGNAL \inst4|Add5~3\ : std_logic;
SIGNAL \inst4|Add5~4_combout\ : std_logic;
SIGNAL \inst4|Equal9~0_combout\ : std_logic;
SIGNAL \inst4|Add5~5\ : std_logic;
SIGNAL \inst4|Add5~6_combout\ : std_logic;
SIGNAL \inst4|Decoder0~2_combout\ : std_logic;
SIGNAL \inst4|dwReg[0]~6_combout\ : std_logic;
SIGNAL \inst4|Add5~7\ : std_logic;
SIGNAL \inst4|Add5~8_combout\ : std_logic;
SIGNAL \inst4|PP~0_combout\ : std_logic;
SIGNAL \inst4|Add5~9\ : std_logic;
SIGNAL \inst4|Add5~10_combout\ : std_logic;
SIGNAL \inst4|Add5~11\ : std_logic;
SIGNAL \inst4|Add5~12_combout\ : std_logic;
SIGNAL \inst4|Add5~13\ : std_logic;
SIGNAL \inst4|Add5~14_combout\ : std_logic;
SIGNAL \inst4|Add5~15\ : std_logic;
SIGNAL \inst4|Add5~16_combout\ : std_logic;
SIGNAL \inst4|Add5~17\ : std_logic;
SIGNAL \inst4|Add5~18_combout\ : std_logic;
SIGNAL \inst4|Add5~19\ : std_logic;
SIGNAL \inst4|Add5~20_combout\ : std_logic;
SIGNAL \inst4|Add5~21\ : std_logic;
SIGNAL \inst4|Add5~22_combout\ : std_logic;
SIGNAL \inst4|Equal9~3_combout\ : std_logic;
SIGNAL \inst4|Equal9~1_combout\ : std_logic;
SIGNAL \inst4|Equal9~2_combout\ : std_logic;
SIGNAL \inst4|Add5~23\ : std_logic;
SIGNAL \inst4|Add5~24_combout\ : std_logic;
SIGNAL \inst4|Add5~25\ : std_logic;
SIGNAL \inst4|Add5~26_combout\ : std_logic;
SIGNAL \inst4|Add5~27\ : std_logic;
SIGNAL \inst4|Add5~28_combout\ : std_logic;
SIGNAL \inst4|Add5~29\ : std_logic;
SIGNAL \inst4|Add5~30_combout\ : std_logic;
SIGNAL \inst4|Equal9~4_combout\ : std_logic;
SIGNAL \inst4|Add5~31\ : std_logic;
SIGNAL \inst4|Add5~32_combout\ : std_logic;
SIGNAL \inst4|Add5~33\ : std_logic;
SIGNAL \inst4|Add5~34_combout\ : std_logic;
SIGNAL \inst4|Add5~35\ : std_logic;
SIGNAL \inst4|Add5~36_combout\ : std_logic;
SIGNAL \inst4|Add5~37\ : std_logic;
SIGNAL \inst4|Add5~38_combout\ : std_logic;
SIGNAL \inst4|Add5~39\ : std_logic;
SIGNAL \inst4|Add5~40_combout\ : std_logic;
SIGNAL \inst4|Add5~41\ : std_logic;
SIGNAL \inst4|Add5~42_combout\ : std_logic;
SIGNAL \inst4|Add5~43\ : std_logic;
SIGNAL \inst4|Add5~44_combout\ : std_logic;
SIGNAL \inst4|Add5~45\ : std_logic;
SIGNAL \inst4|Add5~46_combout\ : std_logic;
SIGNAL \inst4|Add5~47\ : std_logic;
SIGNAL \inst4|Add5~48_combout\ : std_logic;
SIGNAL \inst4|Add5~49\ : std_logic;
SIGNAL \inst4|Add5~50_combout\ : std_logic;
SIGNAL \inst4|Add5~51\ : std_logic;
SIGNAL \inst4|Add5~52_combout\ : std_logic;
SIGNAL \inst4|Add5~53\ : std_logic;
SIGNAL \inst4|Add5~54_combout\ : std_logic;
SIGNAL \inst4|Equal9~7_combout\ : std_logic;
SIGNAL \inst4|Equal9~5_combout\ : std_logic;
SIGNAL \inst4|Equal9~6_combout\ : std_logic;
SIGNAL \inst4|Add5~55\ : std_logic;
SIGNAL \inst4|Add5~56_combout\ : std_logic;
SIGNAL \inst4|Add5~57\ : std_logic;
SIGNAL \inst4|Add5~58_combout\ : std_logic;
SIGNAL \inst4|Add5~59\ : std_logic;
SIGNAL \inst4|Add5~60_combout\ : std_logic;
SIGNAL \inst4|Add5~61\ : std_logic;
SIGNAL \inst4|Add5~62_combout\ : std_logic;
SIGNAL \inst4|Equal9~8_combout\ : std_logic;
SIGNAL \inst4|Equal9~9_combout\ : std_logic;
SIGNAL \inst4|Equal9~10_combout\ : std_logic;
SIGNAL \inst4|rtl~0_combout\ : std_logic;
SIGNAL \inst4|rtl~q\ : std_logic;
SIGNAL \inst4|Decoder0~0_combout\ : std_logic;
SIGNAL \inst4|dwReg[1]~5_combout\ : std_logic;
SIGNAL \inst4|rx_data[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|Decoder0~4_combout\ : std_logic;
SIGNAL \inst4|dwReg[2]~4_combout\ : std_logic;
SIGNAL \inst4|rx_data[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|dwReg[3]~7_combout\ : std_logic;
SIGNAL \inst4|rx_data[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|Decoder0~1_combout\ : std_logic;
SIGNAL \inst4|dwReg[4]~2_combout\ : std_logic;
SIGNAL \inst4|dwReg[5]~0_combout\ : std_logic;
SIGNAL \inst4|Decoder0~3_combout\ : std_logic;
SIGNAL \inst4|dwReg[6]~1_combout\ : std_logic;
SIGNAL \inst4|rx_data[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|dwReg[7]~3_combout\ : std_logic;
SIGNAL \inst16|FS[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst16|Mux2~0_combout\ : std_logic;
SIGNAL \inst16|Mux1~0_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \inst5|Selector24~0_combout\ : std_logic;
SIGNAL \inst5|WideNor0~0_combout\ : std_logic;
SIGNAL \inst6|Add4~3\ : std_logic;
SIGNAL \inst6|Add4~4_combout\ : std_logic;
SIGNAL \inst6|Add4~5\ : std_logic;
SIGNAL \inst6|Add4~6_combout\ : std_logic;
SIGNAL \inst6|Add4~7\ : std_logic;
SIGNAL \inst6|Add4~8_combout\ : std_logic;
SIGNAL \inst6|BP~0_combout\ : std_logic;
SIGNAL \inst6|Add4~9\ : std_logic;
SIGNAL \inst6|Add4~10_combout\ : std_logic;
SIGNAL \inst6|Add4~11\ : std_logic;
SIGNAL \inst6|Add4~12_combout\ : std_logic;
SIGNAL \inst6|Add4~13\ : std_logic;
SIGNAL \inst6|Add4~14_combout\ : std_logic;
SIGNAL \inst6|Add4~15\ : std_logic;
SIGNAL \inst6|Add4~16_combout\ : std_logic;
SIGNAL \inst6|Add4~17\ : std_logic;
SIGNAL \inst6|Add4~18_combout\ : std_logic;
SIGNAL \inst6|Add4~19\ : std_logic;
SIGNAL \inst6|Add4~20_combout\ : std_logic;
SIGNAL \inst6|Add4~21\ : std_logic;
SIGNAL \inst6|Add4~22_combout\ : std_logic;
SIGNAL \inst6|Add4~23\ : std_logic;
SIGNAL \inst6|Add4~24_combout\ : std_logic;
SIGNAL \inst6|Add4~25\ : std_logic;
SIGNAL \inst6|Add4~26_combout\ : std_logic;
SIGNAL \inst6|Add4~27\ : std_logic;
SIGNAL \inst6|Add4~28_combout\ : std_logic;
SIGNAL \inst6|Add4~29\ : std_logic;
SIGNAL \inst6|Add4~30_combout\ : std_logic;
SIGNAL \inst6|Add4~31\ : std_logic;
SIGNAL \inst6|Add4~32_combout\ : std_logic;
SIGNAL \inst6|Add4~33\ : std_logic;
SIGNAL \inst6|Add4~34_combout\ : std_logic;
SIGNAL \inst6|Add4~35\ : std_logic;
SIGNAL \inst6|Add4~36_combout\ : std_logic;
SIGNAL \inst6|Add4~37\ : std_logic;
SIGNAL \inst6|Add4~38_combout\ : std_logic;
SIGNAL \inst6|Add4~39\ : std_logic;
SIGNAL \inst6|Add4~40_combout\ : std_logic;
SIGNAL \inst6|Add4~41\ : std_logic;
SIGNAL \inst6|Add4~42_combout\ : std_logic;
SIGNAL \inst6|Add4~43\ : std_logic;
SIGNAL \inst6|Add4~44_combout\ : std_logic;
SIGNAL \inst6|Add4~45\ : std_logic;
SIGNAL \inst6|Add4~46_combout\ : std_logic;
SIGNAL \inst6|Add4~47\ : std_logic;
SIGNAL \inst6|Add4~48_combout\ : std_logic;
SIGNAL \inst6|Add4~49\ : std_logic;
SIGNAL \inst6|Add4~50_combout\ : std_logic;
SIGNAL \inst6|Add4~51\ : std_logic;
SIGNAL \inst6|Add4~52_combout\ : std_logic;
SIGNAL \inst6|Add4~53\ : std_logic;
SIGNAL \inst6|Add4~54_combout\ : std_logic;
SIGNAL \inst6|Add4~55\ : std_logic;
SIGNAL \inst6|Add4~56_combout\ : std_logic;
SIGNAL \inst6|Add4~57\ : std_logic;
SIGNAL \inst6|Add4~58_combout\ : std_logic;
SIGNAL \inst6|Add4~59\ : std_logic;
SIGNAL \inst6|Add4~60_combout\ : std_logic;
SIGNAL \inst6|Add4~61\ : std_logic;
SIGNAL \inst6|Add4~62_combout\ : std_logic;
SIGNAL \inst6|Equal8~0_combout\ : std_logic;
SIGNAL \inst6|Equal8~1_combout\ : std_logic;
SIGNAL \inst6|Equal8~2_combout\ : std_logic;
SIGNAL \inst6|Equal8~3_combout\ : std_logic;
SIGNAL \inst6|Equal8~4_combout\ : std_logic;
SIGNAL \inst6|Equal8~5_combout\ : std_logic;
SIGNAL \inst6|Equal8~6_combout\ : std_logic;
SIGNAL \inst6|Equal8~7_combout\ : std_logic;
SIGNAL \inst6|Equal8~8_combout\ : std_logic;
SIGNAL \inst6|Equal8~9_combout\ : std_logic;
SIGNAL \inst6|Equal8~10_combout\ : std_logic;
SIGNAL \inst6|DTS[10]~2_combout\ : std_logic;
SIGNAL \inst6|Mux0~7_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst5|Selector25~0_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst5|Selector27~0_combout\ : std_logic;
SIGNAL \inst6|DTS[9]~feeder_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0_bypass[17]~0_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \inst5|Selector28~0_combout\ : std_logic;
SIGNAL \inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|Mux0~1_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst5|Selector34~0_combout\ : std_logic;
SIGNAL \inst6|DTS[2]~feeder_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst5|Selector33~0_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst5|Selector35~0_combout\ : std_logic;
SIGNAL \inst6|DTS[1]~feeder_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst5|Selector36~0_combout\ : std_logic;
SIGNAL \inst6|Mux0~4_combout\ : std_logic;
SIGNAL \inst6|Mux0~5_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst16|datArray_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \inst5|Selector31~0_combout\ : std_logic;
SIGNAL \inst6|DTS[5]~feeder_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst5|Selector29~0_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst16|datArray_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \inst5|Selector32~0_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \inst16|datArray_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst5|Selector30~0_combout\ : std_logic;
SIGNAL \inst6|DTS[6]~feeder_combout\ : std_logic;
SIGNAL \inst6|Mux0~2_combout\ : std_logic;
SIGNAL \inst6|Mux0~3_combout\ : std_logic;
SIGNAL \inst6|Mux0~6_combout\ : std_logic;
SIGNAL \inst6|Mux0~8_combout\ : std_logic;
SIGNAL \inst6|MOSI~q\ : std_logic;
SIGNAL \inst4|CLKO~0_combout\ : std_logic;
SIGNAL \inst4|Add4~0_combout\ : std_logic;
SIGNAL \inst4|Add4~1\ : std_logic;
SIGNAL \inst4|Add4~2_combout\ : std_logic;
SIGNAL \inst4|Add4~3\ : std_logic;
SIGNAL \inst4|Add4~4_combout\ : std_logic;
SIGNAL \inst4|Add4~5\ : std_logic;
SIGNAL \inst4|Add4~6_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|addNo~30_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|addNo~29_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|addNo~23_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|addNo~24_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|addNo~22_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|addNo~25_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|addNo~13_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|addNo~12_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|addNo~11_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|addNo~10_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|addNo~9_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|addNo~8_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|addNo~7_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|addNo~6_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|addNo~5_combout\ : std_logic;
SIGNAL \inst2|Add0~33\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|addNo~14_combout\ : std_logic;
SIGNAL \inst2|Add0~35\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst2|addNo~4_combout\ : std_logic;
SIGNAL \inst2|Add0~37\ : std_logic;
SIGNAL \inst2|Add0~38_combout\ : std_logic;
SIGNAL \inst2|addNo~3_combout\ : std_logic;
SIGNAL \inst2|addNo[19]~feeder_combout\ : std_logic;
SIGNAL \inst2|Add0~39\ : std_logic;
SIGNAL \inst2|Add0~40_combout\ : std_logic;
SIGNAL \inst2|addNo~2_combout\ : std_logic;
SIGNAL \inst2|Add0~41\ : std_logic;
SIGNAL \inst2|Add0~42_combout\ : std_logic;
SIGNAL \inst2|addNo~18_combout\ : std_logic;
SIGNAL \inst2|Add0~43\ : std_logic;
SIGNAL \inst2|Add0~44_combout\ : std_logic;
SIGNAL \inst2|addNo~17_combout\ : std_logic;
SIGNAL \inst2|Add0~45\ : std_logic;
SIGNAL \inst2|Add0~46_combout\ : std_logic;
SIGNAL \inst2|addNo~16_combout\ : std_logic;
SIGNAL \inst2|Equal0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~47\ : std_logic;
SIGNAL \inst2|Add0~48_combout\ : std_logic;
SIGNAL \inst2|addNo~15_combout\ : std_logic;
SIGNAL \inst2|Add0~49\ : std_logic;
SIGNAL \inst2|Add0~50_combout\ : std_logic;
SIGNAL \inst2|addNo~20_combout\ : std_logic;
SIGNAL \inst2|Add0~51\ : std_logic;
SIGNAL \inst2|Add0~52_combout\ : std_logic;
SIGNAL \inst2|addNo~21_combout\ : std_logic;
SIGNAL \inst2|Add0~53\ : std_logic;
SIGNAL \inst2|Add0~54_combout\ : std_logic;
SIGNAL \inst2|addNo~19_combout\ : std_logic;
SIGNAL \inst2|Equal0~7_combout\ : std_logic;
SIGNAL \inst2|Add0~55\ : std_logic;
SIGNAL \inst2|Add0~56_combout\ : std_logic;
SIGNAL \inst2|addNo~31_combout\ : std_logic;
SIGNAL \inst2|Add0~57\ : std_logic;
SIGNAL \inst2|Add0~58_combout\ : std_logic;
SIGNAL \inst2|addNo~26_combout\ : std_logic;
SIGNAL \inst2|Add0~59\ : std_logic;
SIGNAL \inst2|Add0~60_combout\ : std_logic;
SIGNAL \inst2|addNo~27_combout\ : std_logic;
SIGNAL \inst2|Add0~61\ : std_logic;
SIGNAL \inst2|Add0~62_combout\ : std_logic;
SIGNAL \inst2|addNo~32_combout\ : std_logic;
SIGNAL \inst2|Equal0~8_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|Equal0~9_combout\ : std_logic;
SIGNAL \inst2|addNo~0_combout\ : std_logic;
SIGNAL \inst2|addNo~28_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|addNo~1_combout\ : std_logic;
SIGNAL \inst2|Equal1~18_combout\ : std_logic;
SIGNAL \inst2|Equal1~4_combout\ : std_logic;
SIGNAL \inst2|Equal1~2_combout\ : std_logic;
SIGNAL \inst2|Equal1~1_combout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|Equal1~3_combout\ : std_logic;
SIGNAL \inst2|Equal1~5_combout\ : std_logic;
SIGNAL \inst2|Equal1~6_combout\ : std_logic;
SIGNAL \inst2|Equal1~7_combout\ : std_logic;
SIGNAL \inst2|Equal1~8_combout\ : std_logic;
SIGNAL \inst2|Equal1~9_combout\ : std_logic;
SIGNAL \inst2|Equal1~10_combout\ : std_logic;
SIGNAL \inst2|Equal13~0_combout\ : std_logic;
SIGNAL \inst2|Equal1~11_combout\ : std_logic;
SIGNAL \inst2|Equal1~12_combout\ : std_logic;
SIGNAL \inst2|Equal1~13_combout\ : std_logic;
SIGNAL \inst2|Equal1~14_combout\ : std_logic;
SIGNAL \inst2|Equal7~0_combout\ : std_logic;
SIGNAL \inst2|Equal1~15_combout\ : std_logic;
SIGNAL \inst2|Equal7~1_combout\ : std_logic;
SIGNAL \inst2|Equal1~16_combout\ : std_logic;
SIGNAL \inst2|Equal1~17_combout\ : std_logic;
SIGNAL \inst2|WideNor0~2_combout\ : std_logic;
SIGNAL \inst2|WideOr2~combout\ : std_logic;
SIGNAL \inst4|DTS[11]~feeder_combout\ : std_logic;
SIGNAL \inst4|Add4~7\ : std_logic;
SIGNAL \inst4|Add4~8_combout\ : std_logic;
SIGNAL \inst4|BP~0_combout\ : std_logic;
SIGNAL \inst4|Add4~9\ : std_logic;
SIGNAL \inst4|Add4~10_combout\ : std_logic;
SIGNAL \inst4|Add4~11\ : std_logic;
SIGNAL \inst4|Add4~12_combout\ : std_logic;
SIGNAL \inst4|Add4~13\ : std_logic;
SIGNAL \inst4|Add4~14_combout\ : std_logic;
SIGNAL \inst4|Add4~15\ : std_logic;
SIGNAL \inst4|Add4~16_combout\ : std_logic;
SIGNAL \inst4|Add4~17\ : std_logic;
SIGNAL \inst4|Add4~18_combout\ : std_logic;
SIGNAL \inst4|Add4~19\ : std_logic;
SIGNAL \inst4|Add4~20_combout\ : std_logic;
SIGNAL \inst4|Add4~21\ : std_logic;
SIGNAL \inst4|Add4~22_combout\ : std_logic;
SIGNAL \inst4|Add4~23\ : std_logic;
SIGNAL \inst4|Add4~24_combout\ : std_logic;
SIGNAL \inst4|Add4~25\ : std_logic;
SIGNAL \inst4|Add4~26_combout\ : std_logic;
SIGNAL \inst4|Add4~27\ : std_logic;
SIGNAL \inst4|Add4~28_combout\ : std_logic;
SIGNAL \inst4|Add4~29\ : std_logic;
SIGNAL \inst4|Add4~30_combout\ : std_logic;
SIGNAL \inst4|Add4~31\ : std_logic;
SIGNAL \inst4|Add4~32_combout\ : std_logic;
SIGNAL \inst4|Add4~33\ : std_logic;
SIGNAL \inst4|Add4~34_combout\ : std_logic;
SIGNAL \inst4|Add4~35\ : std_logic;
SIGNAL \inst4|Add4~36_combout\ : std_logic;
SIGNAL \inst4|Add4~37\ : std_logic;
SIGNAL \inst4|Add4~38_combout\ : std_logic;
SIGNAL \inst4|Add4~39\ : std_logic;
SIGNAL \inst4|Add4~40_combout\ : std_logic;
SIGNAL \inst4|Add4~41\ : std_logic;
SIGNAL \inst4|Add4~42_combout\ : std_logic;
SIGNAL \inst4|Add4~43\ : std_logic;
SIGNAL \inst4|Add4~44_combout\ : std_logic;
SIGNAL \inst4|Add4~45\ : std_logic;
SIGNAL \inst4|Add4~46_combout\ : std_logic;
SIGNAL \inst4|Add4~47\ : std_logic;
SIGNAL \inst4|Add4~48_combout\ : std_logic;
SIGNAL \inst4|Add4~49\ : std_logic;
SIGNAL \inst4|Add4~50_combout\ : std_logic;
SIGNAL \inst4|Add4~51\ : std_logic;
SIGNAL \inst4|Add4~52_combout\ : std_logic;
SIGNAL \inst4|Add4~53\ : std_logic;
SIGNAL \inst4|Add4~54_combout\ : std_logic;
SIGNAL \inst4|Add4~55\ : std_logic;
SIGNAL \inst4|Add4~56_combout\ : std_logic;
SIGNAL \inst4|Add4~57\ : std_logic;
SIGNAL \inst4|Add4~58_combout\ : std_logic;
SIGNAL \inst4|Add4~59\ : std_logic;
SIGNAL \inst4|Add4~60_combout\ : std_logic;
SIGNAL \inst4|Add4~61\ : std_logic;
SIGNAL \inst4|Add4~62_combout\ : std_logic;
SIGNAL \inst4|Equal8~6_combout\ : std_logic;
SIGNAL \inst4|Equal8~3_combout\ : std_logic;
SIGNAL \inst4|Equal8~1_combout\ : std_logic;
SIGNAL \inst4|Equal8~2_combout\ : std_logic;
SIGNAL \inst4|Equal8~0_combout\ : std_logic;
SIGNAL \inst4|Equal8~4_combout\ : std_logic;
SIGNAL \inst4|Equal8~5_combout\ : std_logic;
SIGNAL \inst4|Equal8~7_combout\ : std_logic;
SIGNAL \inst4|Equal8~8_combout\ : std_logic;
SIGNAL \inst4|Equal8~9_combout\ : std_logic;
SIGNAL \inst4|Equal8~10_combout\ : std_logic;
SIGNAL \inst4|DTS[15]~2_combout\ : std_logic;
SIGNAL \inst2|Equal2~0_combout\ : std_logic;
SIGNAL \inst2|WideNor0~5_combout\ : std_logic;
SIGNAL \inst2|WideNor0~3_combout\ : std_logic;
SIGNAL \inst2|WideNor0~4_combout\ : std_logic;
SIGNAL \inst2|WideOr3~combout\ : std_logic;
SIGNAL \inst2|WideOr4~1_combout\ : std_logic;
SIGNAL \inst2|Equal10~0_combout\ : std_logic;
SIGNAL \inst2|Equal9~0_combout\ : std_logic;
SIGNAL \inst2|WideOr4~0_combout\ : std_logic;
SIGNAL \inst2|WideOr4~2_combout\ : std_logic;
SIGNAL \inst4|DTS[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|Equal6~0_combout\ : std_logic;
SIGNAL \inst2|WideOr5~0_combout\ : std_logic;
SIGNAL \inst4|Mux0~2_combout\ : std_logic;
SIGNAL \inst4|Mux0~3_combout\ : std_logic;
SIGNAL \inst2|Equal1~19_combout\ : std_logic;
SIGNAL \inst2|ADDRESS~2_combout\ : std_logic;
SIGNAL \inst4|DTS[15]~feeder_combout\ : std_logic;
SIGNAL \inst2|WideOr0~combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux0~1_combout\ : std_logic;
SIGNAL \inst4|Mux0~4_combout\ : std_logic;
SIGNAL \inst4|MOSI~q\ : std_logic;
SIGNAL \inst6|Add5~0_combout\ : std_logic;
SIGNAL \inst6|Add5~1\ : std_logic;
SIGNAL \inst6|Add5~2_combout\ : std_logic;
SIGNAL \inst6|Add5~3\ : std_logic;
SIGNAL \inst6|Add5~4_combout\ : std_logic;
SIGNAL \inst6|Equal9~0_combout\ : std_logic;
SIGNAL \MISO~input_o\ : std_logic;
SIGNAL \inst6|Add5~5\ : std_logic;
SIGNAL \inst6|Add5~6_combout\ : std_logic;
SIGNAL \inst6|Decoder0~0_combout\ : std_logic;
SIGNAL \inst6|dwReg[0]~0_combout\ : std_logic;
SIGNAL \inst6|PP~0_combout\ : std_logic;
SIGNAL \inst6|Add5~7\ : std_logic;
SIGNAL \inst6|Add5~8_combout\ : std_logic;
SIGNAL \inst6|Add5~9\ : std_logic;
SIGNAL \inst6|Add5~10_combout\ : std_logic;
SIGNAL \inst6|Add5~11\ : std_logic;
SIGNAL \inst6|Add5~12_combout\ : std_logic;
SIGNAL \inst6|Add5~13\ : std_logic;
SIGNAL \inst6|Add5~14_combout\ : std_logic;
SIGNAL \inst6|Equal9~1_combout\ : std_logic;
SIGNAL \inst6|Equal9~2_combout\ : std_logic;
SIGNAL \inst6|Add5~15\ : std_logic;
SIGNAL \inst6|Add5~16_combout\ : std_logic;
SIGNAL \inst6|Add5~17\ : std_logic;
SIGNAL \inst6|Add5~18_combout\ : std_logic;
SIGNAL \inst6|Add5~19\ : std_logic;
SIGNAL \inst6|Add5~20_combout\ : std_logic;
SIGNAL \inst6|Add5~21\ : std_logic;
SIGNAL \inst6|Add5~22_combout\ : std_logic;
SIGNAL \inst6|Add5~23\ : std_logic;
SIGNAL \inst6|Add5~24_combout\ : std_logic;
SIGNAL \inst6|Add5~25\ : std_logic;
SIGNAL \inst6|Add5~26_combout\ : std_logic;
SIGNAL \inst6|Add5~27\ : std_logic;
SIGNAL \inst6|Add5~28_combout\ : std_logic;
SIGNAL \inst6|Add5~29\ : std_logic;
SIGNAL \inst6|Add5~30_combout\ : std_logic;
SIGNAL \inst6|Equal9~4_combout\ : std_logic;
SIGNAL \inst6|Equal9~3_combout\ : std_logic;
SIGNAL \inst6|Add5~31\ : std_logic;
SIGNAL \inst6|Add5~32_combout\ : std_logic;
SIGNAL \inst6|Add5~33\ : std_logic;
SIGNAL \inst6|Add5~34_combout\ : std_logic;
SIGNAL \inst6|Add5~35\ : std_logic;
SIGNAL \inst6|Add5~36_combout\ : std_logic;
SIGNAL \inst6|Add5~37\ : std_logic;
SIGNAL \inst6|Add5~38_combout\ : std_logic;
SIGNAL \inst6|Add5~39\ : std_logic;
SIGNAL \inst6|Add5~40_combout\ : std_logic;
SIGNAL \inst6|Add5~41\ : std_logic;
SIGNAL \inst6|Add5~42_combout\ : std_logic;
SIGNAL \inst6|Add5~43\ : std_logic;
SIGNAL \inst6|Add5~44_combout\ : std_logic;
SIGNAL \inst6|Add5~45\ : std_logic;
SIGNAL \inst6|Add5~46_combout\ : std_logic;
SIGNAL \inst6|Equal9~6_combout\ : std_logic;
SIGNAL \inst6|Equal9~5_combout\ : std_logic;
SIGNAL \inst6|Add5~47\ : std_logic;
SIGNAL \inst6|Add5~48_combout\ : std_logic;
SIGNAL \inst6|Add5~49\ : std_logic;
SIGNAL \inst6|Add5~50_combout\ : std_logic;
SIGNAL \inst6|Add5~51\ : std_logic;
SIGNAL \inst6|Add5~52_combout\ : std_logic;
SIGNAL \inst6|Add5~53\ : std_logic;
SIGNAL \inst6|Add5~54_combout\ : std_logic;
SIGNAL \inst6|Add5~55\ : std_logic;
SIGNAL \inst6|Add5~56_combout\ : std_logic;
SIGNAL \inst6|Add5~57\ : std_logic;
SIGNAL \inst6|Add5~58_combout\ : std_logic;
SIGNAL \inst6|Add5~59\ : std_logic;
SIGNAL \inst6|Add5~60_combout\ : std_logic;
SIGNAL \inst6|Add5~61\ : std_logic;
SIGNAL \inst6|Add5~62_combout\ : std_logic;
SIGNAL \inst6|Equal9~8_combout\ : std_logic;
SIGNAL \inst6|Equal9~7_combout\ : std_logic;
SIGNAL \inst6|Equal9~9_combout\ : std_logic;
SIGNAL \inst6|Equal9~10_combout\ : std_logic;
SIGNAL \inst6|rtl~0_combout\ : std_logic;
SIGNAL \inst6|rtl~q\ : std_logic;
SIGNAL \inst6|Decoder0~1_combout\ : std_logic;
SIGNAL \inst6|dwReg[1]~1_combout\ : std_logic;
SIGNAL \inst6|Decoder0~2_combout\ : std_logic;
SIGNAL \inst6|dwReg[2]~2_combout\ : std_logic;
SIGNAL \inst6|Decoder0~3_combout\ : std_logic;
SIGNAL \inst6|dwReg[3]~3_combout\ : std_logic;
SIGNAL \inst6|rx_data[3]~feeder_combout\ : std_logic;
SIGNAL \inst6|Decoder0~4_combout\ : std_logic;
SIGNAL \inst6|dwReg[4]~4_combout\ : std_logic;
SIGNAL \inst6|rx_data[4]~feeder_combout\ : std_logic;
SIGNAL \inst6|dwReg[5]~5_combout\ : std_logic;
SIGNAL \inst6|rx_data[5]~feeder_combout\ : std_logic;
SIGNAL \inst6|dwReg[6]~6_combout\ : std_logic;
SIGNAL \inst6|rx_data[6]~feeder_combout\ : std_logic;
SIGNAL \inst6|dwReg[7]~7_combout\ : std_logic;
SIGNAL \inst6|rx_data[7]~feeder_combout\ : std_logic;
SIGNAL \inst16|NS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|dwReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst15|nextTx\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst5|dataOut\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst20|Counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst16|OS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|rx_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst6|BP\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|DTS\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst6|DTS\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst4|BP\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|delay_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|EC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|CC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|EC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|CC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst2|ADDRESS\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst16|FS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|PP\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst5|idx\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst16|datArray_rtl_0_bypass\ : std_logic_vector(0 TO 20);
SIGNAL \inst4|rx_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|addNo\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|addNo\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|dwReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst4|PP\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst5|strtTx\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_CLK_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|ALT_INV_state.SEARCH~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

CS <= ww_CS;
ww_CLK_50MHz <= CLK_50MHz;
ww_MISO <= MISO;
ww_MISO_MPU <= MISO_MPU;
MSTR_CLK <= ww_MSTR_CLK;
MOSI <= ww_MOSI;
MPU_CS <= ww_MPU_CS;
MPU_MSTR_CLK <= ww_MPU_MSTR_CLK;
MPU_MOSI <= ww_MPU_MOSI;
LED0 <= ww_LED0;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
LED4 <= ww_LED4;
LED5 <= ww_LED5;
LED6 <= ww_LED6;
LED7 <= ww_LED7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst16|Mux0~0_combout\ & 
\inst16|Mux1~0_combout\ & \inst16|Mux2~0_combout\ & \inst16|FS[0]~_wirecell_combout\ & \inst4|rx_data\(7) & \inst4|rx_data\(6) & \inst4|rx_data\(5) & \inst4|rx_data\(4) & \inst4|rx_data\(3) & \inst4|rx_data\(2) & \inst4|rx_data\(1) & 
\inst4|rx_data\(0));

\inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst16|FS\(3) & \inst16|FS\(2) & \inst16|FS\(1) & \inst16|FS\(0));

\inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst16|Selector25~0_combout\ & \inst16|Selector26~0_combout\ & \inst16|Selector27~0_combout\ & \inst16|Selector28~0_combout\);

\inst16|datArray_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\inst16|datArray_rtl_0|auto_generated|ram_block1a1\ <= \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\inst16|datArray_rtl_0|auto_generated|ram_block1a2\ <= \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\inst16|datArray_rtl_0|auto_generated|ram_block1a3\ <= \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\inst16|datArray_rtl_0|auto_generated|ram_block1a4\ <= \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\inst16|datArray_rtl_0|auto_generated|ram_block1a5\ <= \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\inst16|datArray_rtl_0|auto_generated|ram_block1a6\ <= \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\inst16|datArray_rtl_0|auto_generated|ram_block1a7\ <= \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\inst16|datArray_rtl_0|auto_generated|ram_block1a8\ <= \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\inst16|datArray_rtl_0|auto_generated|ram_block1a9\ <= \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\inst16|datArray_rtl_0|auto_generated|ram_block1a10\ <= \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\inst16|datArray_rtl_0|auto_generated|ram_block1a11\ <= \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);

\inst20|CLK_OUT~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst20|CLK_OUT~q\);

\CLK_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50MHz~input_o\);
\ALT_INV_CLK_50MHz~inputclkctrl_outclk\ <= NOT \CLK_50MHz~inputclkctrl_outclk\;
\inst20|ALT_INV_CLK_OUT~clkctrl_outclk\ <= NOT \inst20|CLK_OUT~clkctrl_outclk\;
\inst5|ALT_INV_state.SEARCH~q\ <= NOT \inst5|state.SEARCH~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y34_N9
\CS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|CS~combout\,
	devoe => ww_devoe,
	o => \CS~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\MSTR_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|CLKO~0_combout\,
	devoe => ww_devoe,
	o => \MSTR_CLK~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\MOSI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|MOSI~q\,
	devoe => ww_devoe,
	o => \MOSI~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\MPU_CS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|CS~combout\,
	devoe => ww_devoe,
	o => \MPU_CS~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\MPU_MSTR_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|CLKO~0_combout\,
	devoe => ww_devoe,
	o => \MPU_MSTR_CLK~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\MPU_MOSI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MOSI~q\,
	devoe => ww_devoe,
	o => \MPU_MOSI~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\LED0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|rx_data\(0),
	devoe => ww_devoe,
	o => \LED0~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\LED1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|rx_data\(1),
	devoe => ww_devoe,
	o => \LED1~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\LED2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|rx_data\(2),
	devoe => ww_devoe,
	o => \LED2~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\LED3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|rx_data\(3),
	devoe => ww_devoe,
	o => \LED3~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\LED4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|rx_data\(4),
	devoe => ww_devoe,
	o => \LED4~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LED5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|rx_data\(5),
	devoe => ww_devoe,
	o => \LED5~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\LED6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|rx_data\(6),
	devoe => ww_devoe,
	o => \LED6~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\LED7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|rx_data\(7),
	devoe => ww_devoe,
	o => \LED7~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLK_50MHz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50MHz,
	o => \CLK_50MHz~input_o\);

-- Location: CLKCTRL_G18
\CLK_50MHz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y26_N10
\inst20|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Add0~2_combout\ = \inst20|Counter\(1) $ (\inst20|Counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Counter\(1),
	datad => \inst20|Counter\(0),
	combout => \inst20|Add0~2_combout\);

-- Location: FF_X19_Y26_N11
\inst20|Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	d => \inst20|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Counter\(1));

-- Location: LCCOMB_X19_Y26_N14
\inst20|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Add0~1_combout\ = \inst20|Counter\(2) $ (((\inst20|Counter\(1) & \inst20|Counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Counter\(1),
	datac => \inst20|Counter\(2),
	datad => \inst20|Counter\(0),
	combout => \inst20|Add0~1_combout\);

-- Location: FF_X19_Y26_N15
\inst20|Counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	d => \inst20|Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Counter\(2));

-- Location: LCCOMB_X19_Y26_N28
\inst20|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Add0~0_combout\ = (\inst20|Counter\(1) & (\inst20|Counter\(2) & (\inst20|Counter\(3) & \inst20|Counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Counter\(1),
	datab => \inst20|Counter\(2),
	datac => \inst20|Counter\(3),
	datad => \inst20|Counter\(0),
	combout => \inst20|Add0~0_combout\);

-- Location: LCCOMB_X19_Y26_N26
\inst20|Counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Counter~0_combout\ = (!\inst20|Equal0~0_combout\ & (\inst20|Add0~0_combout\ $ (\inst20|Counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Equal0~0_combout\,
	datab => \inst20|Add0~0_combout\,
	datac => \inst20|Counter\(4),
	combout => \inst20|Counter~0_combout\);

-- Location: FF_X19_Y26_N27
\inst20|Counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	d => \inst20|Counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Counter\(4));

-- Location: LCCOMB_X19_Y26_N2
\inst20|Counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Counter~3_combout\ = (\inst20|Counter\(4) & !\inst20|Counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Counter\(4),
	datad => \inst20|Counter\(2),
	combout => \inst20|Counter~3_combout\);

-- Location: LCCOMB_X19_Y26_N8
\inst20|Counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Counter~4_combout\ = (!\inst20|Counter\(0) & (((\inst20|Counter\(1)) # (!\inst20|Counter~3_combout\)) # (!\inst20|Counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Counter\(3),
	datab => \inst20|Counter\(1),
	datac => \inst20|Counter\(0),
	datad => \inst20|Counter~3_combout\,
	combout => \inst20|Counter~4_combout\);

-- Location: FF_X19_Y26_N9
\inst20|Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	d => \inst20|Counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Counter\(0));

-- Location: LCCOMB_X19_Y26_N12
\inst20|Counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Counter~1_combout\ = (\inst20|Counter\(1) & ((!\inst20|Counter\(2)))) # (!\inst20|Counter\(1) & ((\inst20|Counter\(2)) # (!\inst20|Counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Counter\(1),
	datac => \inst20|Counter\(4),
	datad => \inst20|Counter\(2),
	combout => \inst20|Counter~1_combout\);

-- Location: LCCOMB_X19_Y26_N22
\inst20|Counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Counter~2_combout\ = (\inst20|Counter\(0) & (\inst20|Counter\(3) $ (((\inst20|Counter\(1) & !\inst20|Counter~1_combout\))))) # (!\inst20|Counter\(0) & (\inst20|Counter\(3) & ((\inst20|Counter\(1)) # (\inst20|Counter~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Counter\(0),
	datab => \inst20|Counter\(1),
	datac => \inst20|Counter\(3),
	datad => \inst20|Counter~1_combout\,
	combout => \inst20|Counter~2_combout\);

-- Location: FF_X19_Y26_N23
\inst20|Counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	d => \inst20|Counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Counter\(3));

-- Location: LCCOMB_X19_Y26_N30
\inst20|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Equal0~0_combout\ = (\inst20|Counter\(3) & (!\inst20|Counter\(2) & (!\inst20|Counter\(0) & !\inst20|Counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Counter\(3),
	datab => \inst20|Counter\(2),
	datac => \inst20|Counter\(0),
	datad => \inst20|Counter\(1),
	combout => \inst20|Equal0~0_combout\);

-- Location: FF_X19_Y26_N7
\inst20|OutputState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	d => \inst20|OutputState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|OutputState~q\);

-- Location: LCCOMB_X19_Y26_N6
\inst20|OutputState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|OutputState~0_combout\ = \inst20|OutputState~q\ $ (((\inst20|Equal0~0_combout\ & (\inst20|Counter\(4) $ (\inst20|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Equal0~0_combout\,
	datab => \inst20|Counter\(4),
	datac => \inst20|OutputState~q\,
	datad => \inst20|Add0~0_combout\,
	combout => \inst20|OutputState~0_combout\);

-- Location: LCCOMB_X19_Y26_N24
\inst20|CLK_OUT~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|CLK_OUT~feeder_combout\ = \inst20|OutputState~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|OutputState~0_combout\,
	combout => \inst20|CLK_OUT~feeder_combout\);

-- Location: FF_X19_Y26_N25
\inst20|CLK_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	d => \inst20|CLK_OUT~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|CLK_OUT~q\);

-- Location: CLKCTRL_G14
\inst20|CLK_OUT~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst20|CLK_OUT~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst20|CLK_OUT~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y23_N0
\inst5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = \inst5|idx\(0) $ (VCC)
-- \inst5|Add0~1\ = CARRY(\inst5|idx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(0),
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: LCCOMB_X18_Y23_N4
\inst5|idx[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|idx[0]~2_combout\ = (!\inst5|state.SEARCH~q\ & ((\inst15|state.W4BFFRtx~q\) # ((\inst5|Mux1~1_combout\) # (!\inst15|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.SEARCH~q\,
	datab => \inst15|state.W4BFFRtx~q\,
	datac => \inst5|Mux1~1_combout\,
	datad => \inst15|state.IDLE~q\,
	combout => \inst5|idx[0]~2_combout\);

-- Location: FF_X18_Y23_N1
\inst5|idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst5|Add0~0_combout\,
	sload => VCC,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(0));

-- Location: LCCOMB_X18_Y23_N0
\inst5|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~10_combout\ = (\inst5|idx\(2) & (\inst5|idx\(0) & !\inst5|idx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(2),
	datac => \inst5|idx\(0),
	datad => \inst5|idx\(1),
	combout => \inst5|Equal0~10_combout\);

-- Location: LCCOMB_X17_Y23_N2
\inst5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|idx\(1) & (!\inst5|Add0~1\)) # (!\inst5|idx\(1) & ((\inst5|Add0~1\) # (GND)))
-- \inst5|Add0~3\ = CARRY((!\inst5|Add0~1\) # (!\inst5|idx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(1),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: LCCOMB_X17_Y23_N4
\inst5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst5|idx\(2) & (\inst5|Add0~3\ $ (GND))) # (!\inst5|idx\(2) & (!\inst5|Add0~3\ & VCC))
-- \inst5|Add0~5\ = CARRY((\inst5|idx\(2) & !\inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(2),
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: LCCOMB_X17_Y23_N6
\inst5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|idx\(3) & (!\inst5|Add0~5\)) # (!\inst5|idx\(3) & ((\inst5|Add0~5\) # (GND)))
-- \inst5|Add0~7\ = CARRY((!\inst5|Add0~5\) # (!\inst5|idx\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(3),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: FF_X18_Y23_N21
\inst5|idx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst5|Add0~6_combout\,
	sload => VCC,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(3));

-- Location: LCCOMB_X17_Y23_N8
\inst5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst5|idx\(4) & (\inst5|Add0~7\ $ (GND))) # (!\inst5|idx\(4) & (!\inst5|Add0~7\ & VCC))
-- \inst5|Add0~9\ = CARRY((\inst5|idx\(4) & !\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(4),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: FF_X17_Y23_N9
\inst5|idx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~8_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(4));

-- Location: LCCOMB_X17_Y23_N10
\inst5|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst5|idx\(5) & (!\inst5|Add0~9\)) # (!\inst5|idx\(5) & ((\inst5|Add0~9\) # (GND)))
-- \inst5|Add0~11\ = CARRY((!\inst5|Add0~9\) # (!\inst5|idx\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(5),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: FF_X17_Y23_N11
\inst5|idx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~10_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(5));

-- Location: LCCOMB_X17_Y23_N12
\inst5|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = (\inst5|idx\(6) & (\inst5|Add0~11\ $ (GND))) # (!\inst5|idx\(6) & (!\inst5|Add0~11\ & VCC))
-- \inst5|Add0~13\ = CARRY((\inst5|idx\(6) & !\inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(6),
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: FF_X17_Y23_N13
\inst5|idx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~12_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(6));

-- Location: LCCOMB_X17_Y23_N14
\inst5|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = (\inst5|idx\(7) & (!\inst5|Add0~13\)) # (!\inst5|idx\(7) & ((\inst5|Add0~13\) # (GND)))
-- \inst5|Add0~15\ = CARRY((!\inst5|Add0~13\) # (!\inst5|idx\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(7),
	datad => VCC,
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\,
	cout => \inst5|Add0~15\);

-- Location: FF_X17_Y23_N15
\inst5|idx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~14_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(7));

-- Location: LCCOMB_X17_Y23_N16
\inst5|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~16_combout\ = (\inst5|idx\(8) & (\inst5|Add0~15\ $ (GND))) # (!\inst5|idx\(8) & (!\inst5|Add0~15\ & VCC))
-- \inst5|Add0~17\ = CARRY((\inst5|idx\(8) & !\inst5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(8),
	datad => VCC,
	cin => \inst5|Add0~15\,
	combout => \inst5|Add0~16_combout\,
	cout => \inst5|Add0~17\);

-- Location: FF_X17_Y23_N17
\inst5|idx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~16_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(8));

-- Location: LCCOMB_X17_Y23_N18
\inst5|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~18_combout\ = (\inst5|idx\(9) & (!\inst5|Add0~17\)) # (!\inst5|idx\(9) & ((\inst5|Add0~17\) # (GND)))
-- \inst5|Add0~19\ = CARRY((!\inst5|Add0~17\) # (!\inst5|idx\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(9),
	datad => VCC,
	cin => \inst5|Add0~17\,
	combout => \inst5|Add0~18_combout\,
	cout => \inst5|Add0~19\);

-- Location: FF_X17_Y23_N19
\inst5|idx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~18_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(9));

-- Location: LCCOMB_X17_Y23_N20
\inst5|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~20_combout\ = (\inst5|idx\(10) & (\inst5|Add0~19\ $ (GND))) # (!\inst5|idx\(10) & (!\inst5|Add0~19\ & VCC))
-- \inst5|Add0~21\ = CARRY((\inst5|idx\(10) & !\inst5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(10),
	datad => VCC,
	cin => \inst5|Add0~19\,
	combout => \inst5|Add0~20_combout\,
	cout => \inst5|Add0~21\);

-- Location: FF_X17_Y23_N21
\inst5|idx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~20_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(10));

-- Location: LCCOMB_X17_Y23_N22
\inst5|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~22_combout\ = (\inst5|idx\(11) & (!\inst5|Add0~21\)) # (!\inst5|idx\(11) & ((\inst5|Add0~21\) # (GND)))
-- \inst5|Add0~23\ = CARRY((!\inst5|Add0~21\) # (!\inst5|idx\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(11),
	datad => VCC,
	cin => \inst5|Add0~21\,
	combout => \inst5|Add0~22_combout\,
	cout => \inst5|Add0~23\);

-- Location: FF_X17_Y23_N23
\inst5|idx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~22_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(11));

-- Location: LCCOMB_X17_Y23_N24
\inst5|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~24_combout\ = (\inst5|idx\(12) & (\inst5|Add0~23\ $ (GND))) # (!\inst5|idx\(12) & (!\inst5|Add0~23\ & VCC))
-- \inst5|Add0~25\ = CARRY((\inst5|idx\(12) & !\inst5|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(12),
	datad => VCC,
	cin => \inst5|Add0~23\,
	combout => \inst5|Add0~24_combout\,
	cout => \inst5|Add0~25\);

-- Location: FF_X17_Y23_N25
\inst5|idx[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~24_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(12));

-- Location: LCCOMB_X17_Y23_N26
\inst5|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~26_combout\ = (\inst5|idx\(13) & (!\inst5|Add0~25\)) # (!\inst5|idx\(13) & ((\inst5|Add0~25\) # (GND)))
-- \inst5|Add0~27\ = CARRY((!\inst5|Add0~25\) # (!\inst5|idx\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(13),
	datad => VCC,
	cin => \inst5|Add0~25\,
	combout => \inst5|Add0~26_combout\,
	cout => \inst5|Add0~27\);

-- Location: FF_X17_Y23_N27
\inst5|idx[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~26_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(13));

-- Location: LCCOMB_X17_Y23_N28
\inst5|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~28_combout\ = (\inst5|idx\(14) & (\inst5|Add0~27\ $ (GND))) # (!\inst5|idx\(14) & (!\inst5|Add0~27\ & VCC))
-- \inst5|Add0~29\ = CARRY((\inst5|idx\(14) & !\inst5|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(14),
	datad => VCC,
	cin => \inst5|Add0~27\,
	combout => \inst5|Add0~28_combout\,
	cout => \inst5|Add0~29\);

-- Location: FF_X17_Y23_N29
\inst5|idx[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~28_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(14));

-- Location: LCCOMB_X17_Y23_N30
\inst5|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~30_combout\ = (\inst5|idx\(15) & (!\inst5|Add0~29\)) # (!\inst5|idx\(15) & ((\inst5|Add0~29\) # (GND)))
-- \inst5|Add0~31\ = CARRY((!\inst5|Add0~29\) # (!\inst5|idx\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(15),
	datad => VCC,
	cin => \inst5|Add0~29\,
	combout => \inst5|Add0~30_combout\,
	cout => \inst5|Add0~31\);

-- Location: FF_X17_Y23_N31
\inst5|idx[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~30_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(15));

-- Location: LCCOMB_X17_Y22_N0
\inst5|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~32_combout\ = (\inst5|idx\(16) & (\inst5|Add0~31\ $ (GND))) # (!\inst5|idx\(16) & (!\inst5|Add0~31\ & VCC))
-- \inst5|Add0~33\ = CARRY((\inst5|idx\(16) & !\inst5|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(16),
	datad => VCC,
	cin => \inst5|Add0~31\,
	combout => \inst5|Add0~32_combout\,
	cout => \inst5|Add0~33\);

-- Location: FF_X17_Y22_N1
\inst5|idx[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~32_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(16));

-- Location: LCCOMB_X17_Y22_N2
\inst5|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~34_combout\ = (\inst5|idx\(17) & (!\inst5|Add0~33\)) # (!\inst5|idx\(17) & ((\inst5|Add0~33\) # (GND)))
-- \inst5|Add0~35\ = CARRY((!\inst5|Add0~33\) # (!\inst5|idx\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(17),
	datad => VCC,
	cin => \inst5|Add0~33\,
	combout => \inst5|Add0~34_combout\,
	cout => \inst5|Add0~35\);

-- Location: FF_X17_Y22_N3
\inst5|idx[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~34_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(17));

-- Location: LCCOMB_X17_Y22_N4
\inst5|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~36_combout\ = (\inst5|idx\(18) & (\inst5|Add0~35\ $ (GND))) # (!\inst5|idx\(18) & (!\inst5|Add0~35\ & VCC))
-- \inst5|Add0~37\ = CARRY((\inst5|idx\(18) & !\inst5|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(18),
	datad => VCC,
	cin => \inst5|Add0~35\,
	combout => \inst5|Add0~36_combout\,
	cout => \inst5|Add0~37\);

-- Location: FF_X17_Y22_N5
\inst5|idx[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~36_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(18));

-- Location: LCCOMB_X17_Y22_N6
\inst5|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~38_combout\ = (\inst5|idx\(19) & (!\inst5|Add0~37\)) # (!\inst5|idx\(19) & ((\inst5|Add0~37\) # (GND)))
-- \inst5|Add0~39\ = CARRY((!\inst5|Add0~37\) # (!\inst5|idx\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(19),
	datad => VCC,
	cin => \inst5|Add0~37\,
	combout => \inst5|Add0~38_combout\,
	cout => \inst5|Add0~39\);

-- Location: FF_X17_Y22_N7
\inst5|idx[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~38_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(19));

-- Location: LCCOMB_X17_Y22_N8
\inst5|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~40_combout\ = (\inst5|idx\(20) & (\inst5|Add0~39\ $ (GND))) # (!\inst5|idx\(20) & (!\inst5|Add0~39\ & VCC))
-- \inst5|Add0~41\ = CARRY((\inst5|idx\(20) & !\inst5|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(20),
	datad => VCC,
	cin => \inst5|Add0~39\,
	combout => \inst5|Add0~40_combout\,
	cout => \inst5|Add0~41\);

-- Location: FF_X17_Y22_N9
\inst5|idx[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~40_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(20));

-- Location: LCCOMB_X17_Y22_N10
\inst5|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~42_combout\ = (\inst5|idx\(21) & (!\inst5|Add0~41\)) # (!\inst5|idx\(21) & ((\inst5|Add0~41\) # (GND)))
-- \inst5|Add0~43\ = CARRY((!\inst5|Add0~41\) # (!\inst5|idx\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(21),
	datad => VCC,
	cin => \inst5|Add0~41\,
	combout => \inst5|Add0~42_combout\,
	cout => \inst5|Add0~43\);

-- Location: FF_X17_Y22_N11
\inst5|idx[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~42_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(21));

-- Location: LCCOMB_X17_Y22_N12
\inst5|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~44_combout\ = (\inst5|idx\(22) & (\inst5|Add0~43\ $ (GND))) # (!\inst5|idx\(22) & (!\inst5|Add0~43\ & VCC))
-- \inst5|Add0~45\ = CARRY((\inst5|idx\(22) & !\inst5|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(22),
	datad => VCC,
	cin => \inst5|Add0~43\,
	combout => \inst5|Add0~44_combout\,
	cout => \inst5|Add0~45\);

-- Location: FF_X17_Y22_N13
\inst5|idx[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~44_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(22));

-- Location: LCCOMB_X17_Y22_N14
\inst5|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~46_combout\ = (\inst5|idx\(23) & (!\inst5|Add0~45\)) # (!\inst5|idx\(23) & ((\inst5|Add0~45\) # (GND)))
-- \inst5|Add0~47\ = CARRY((!\inst5|Add0~45\) # (!\inst5|idx\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(23),
	datad => VCC,
	cin => \inst5|Add0~45\,
	combout => \inst5|Add0~46_combout\,
	cout => \inst5|Add0~47\);

-- Location: FF_X17_Y22_N15
\inst5|idx[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~46_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(23));

-- Location: LCCOMB_X17_Y22_N16
\inst5|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~48_combout\ = (\inst5|idx\(24) & (\inst5|Add0~47\ $ (GND))) # (!\inst5|idx\(24) & (!\inst5|Add0~47\ & VCC))
-- \inst5|Add0~49\ = CARRY((\inst5|idx\(24) & !\inst5|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(24),
	datad => VCC,
	cin => \inst5|Add0~47\,
	combout => \inst5|Add0~48_combout\,
	cout => \inst5|Add0~49\);

-- Location: FF_X17_Y22_N17
\inst5|idx[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~48_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(24));

-- Location: LCCOMB_X17_Y22_N18
\inst5|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~50_combout\ = (\inst5|idx\(25) & (!\inst5|Add0~49\)) # (!\inst5|idx\(25) & ((\inst5|Add0~49\) # (GND)))
-- \inst5|Add0~51\ = CARRY((!\inst5|Add0~49\) # (!\inst5|idx\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(25),
	datad => VCC,
	cin => \inst5|Add0~49\,
	combout => \inst5|Add0~50_combout\,
	cout => \inst5|Add0~51\);

-- Location: FF_X17_Y22_N19
\inst5|idx[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~50_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(25));

-- Location: LCCOMB_X17_Y22_N20
\inst5|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~52_combout\ = (\inst5|idx\(26) & (\inst5|Add0~51\ $ (GND))) # (!\inst5|idx\(26) & (!\inst5|Add0~51\ & VCC))
-- \inst5|Add0~53\ = CARRY((\inst5|idx\(26) & !\inst5|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(26),
	datad => VCC,
	cin => \inst5|Add0~51\,
	combout => \inst5|Add0~52_combout\,
	cout => \inst5|Add0~53\);

-- Location: FF_X17_Y22_N21
\inst5|idx[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~52_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(26));

-- Location: LCCOMB_X18_Y22_N2
\inst5|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~6_combout\ = (!\inst5|idx\(23) & (!\inst5|idx\(25) & (!\inst5|idx\(24) & !\inst5|idx\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(23),
	datab => \inst5|idx\(25),
	datac => \inst5|idx\(24),
	datad => \inst5|idx\(26),
	combout => \inst5|Equal0~6_combout\);

-- Location: LCCOMB_X18_Y22_N0
\inst5|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~5_combout\ = (!\inst5|idx\(21) & (!\inst5|idx\(22) & (!\inst5|idx\(19) & !\inst5|idx\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(21),
	datab => \inst5|idx\(22),
	datac => \inst5|idx\(19),
	datad => \inst5|idx\(20),
	combout => \inst5|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y22_N22
\inst5|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~54_combout\ = (\inst5|idx\(27) & (!\inst5|Add0~53\)) # (!\inst5|idx\(27) & ((\inst5|Add0~53\) # (GND)))
-- \inst5|Add0~55\ = CARRY((!\inst5|Add0~53\) # (!\inst5|idx\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(27),
	datad => VCC,
	cin => \inst5|Add0~53\,
	combout => \inst5|Add0~54_combout\,
	cout => \inst5|Add0~55\);

-- Location: FF_X17_Y22_N23
\inst5|idx[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~54_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(27));

-- Location: LCCOMB_X17_Y22_N24
\inst5|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~56_combout\ = (\inst5|idx\(28) & (\inst5|Add0~55\ $ (GND))) # (!\inst5|idx\(28) & (!\inst5|Add0~55\ & VCC))
-- \inst5|Add0~57\ = CARRY((\inst5|idx\(28) & !\inst5|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(28),
	datad => VCC,
	cin => \inst5|Add0~55\,
	combout => \inst5|Add0~56_combout\,
	cout => \inst5|Add0~57\);

-- Location: FF_X17_Y22_N25
\inst5|idx[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~56_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(28));

-- Location: LCCOMB_X17_Y22_N26
\inst5|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~58_combout\ = (\inst5|idx\(29) & (!\inst5|Add0~57\)) # (!\inst5|idx\(29) & ((\inst5|Add0~57\) # (GND)))
-- \inst5|Add0~59\ = CARRY((!\inst5|Add0~57\) # (!\inst5|idx\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(29),
	datad => VCC,
	cin => \inst5|Add0~57\,
	combout => \inst5|Add0~58_combout\,
	cout => \inst5|Add0~59\);

-- Location: FF_X17_Y22_N27
\inst5|idx[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~58_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(29));

-- Location: LCCOMB_X17_Y22_N28
\inst5|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~60_combout\ = (\inst5|idx\(30) & (\inst5|Add0~59\ $ (GND))) # (!\inst5|idx\(30) & (!\inst5|Add0~59\ & VCC))
-- \inst5|Add0~61\ = CARRY((\inst5|idx\(30) & !\inst5|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(30),
	datad => VCC,
	cin => \inst5|Add0~59\,
	combout => \inst5|Add0~60_combout\,
	cout => \inst5|Add0~61\);

-- Location: FF_X17_Y22_N29
\inst5|idx[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~60_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(30));

-- Location: LCCOMB_X17_Y22_N30
\inst5|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~62_combout\ = \inst5|idx\(31) $ (\inst5|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(31),
	cin => \inst5|Add0~61\,
	combout => \inst5|Add0~62_combout\);

-- Location: FF_X17_Y22_N31
\inst5|idx[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~62_combout\,
	ena => \inst5|idx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(31));

-- Location: LCCOMB_X18_Y22_N12
\inst5|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~7_combout\ = (!\inst5|idx\(29) & (!\inst5|idx\(27) & (!\inst5|idx\(28) & !\inst5|idx\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(29),
	datab => \inst5|idx\(27),
	datac => \inst5|idx\(28),
	datad => \inst5|idx\(30),
	combout => \inst5|Equal0~7_combout\);

-- Location: LCCOMB_X18_Y22_N22
\inst5|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~8_combout\ = (!\inst5|idx\(31) & \inst5|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(31),
	datad => \inst5|Equal0~7_combout\,
	combout => \inst5|Equal0~8_combout\);

-- Location: LCCOMB_X18_Y23_N10
\inst5|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (!\inst5|idx\(7) & (!\inst5|idx\(9) & (!\inst5|idx\(8) & !\inst5|idx\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(7),
	datab => \inst5|idx\(9),
	datac => \inst5|idx\(8),
	datad => \inst5|idx\(10),
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y23_N28
\inst5|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (!\inst5|idx\(12) & (!\inst5|idx\(11) & (!\inst5|idx\(13) & !\inst5|idx\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(12),
	datab => \inst5|idx\(11),
	datac => \inst5|idx\(13),
	datad => \inst5|idx\(14),
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y23_N22
\inst5|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (!\inst5|idx\(18) & (!\inst5|idx\(17) & (!\inst5|idx\(16) & !\inst5|idx\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(18),
	datab => \inst5|idx\(17),
	datac => \inst5|idx\(16),
	datad => \inst5|idx\(15),
	combout => \inst5|Equal0~3_combout\);

-- Location: LCCOMB_X18_Y23_N20
\inst5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (!\inst5|idx\(5) & (!\inst5|idx\(4) & (!\inst5|idx\(3) & !\inst5|idx\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(5),
	datab => \inst5|idx\(4),
	datac => \inst5|idx\(3),
	datad => \inst5|idx\(6),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y23_N2
\inst5|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (\inst5|Equal0~1_combout\ & (\inst5|Equal0~2_combout\ & (\inst5|Equal0~3_combout\ & \inst5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~1_combout\,
	datab => \inst5|Equal0~2_combout\,
	datac => \inst5|Equal0~3_combout\,
	datad => \inst5|Equal0~0_combout\,
	combout => \inst5|Equal0~4_combout\);

-- Location: LCCOMB_X18_Y23_N12
\inst5|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~9_combout\ = (\inst5|Equal0~6_combout\ & (\inst5|Equal0~5_combout\ & (\inst5|Equal0~8_combout\ & \inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~6_combout\,
	datab => \inst5|Equal0~5_combout\,
	datac => \inst5|Equal0~8_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|Equal0~9_combout\);

-- Location: LCCOMB_X18_Y23_N14
\inst5|idx[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|idx[2]~0_combout\ = (!\inst5|state.SEARCH~q\ & (\inst5|Mux0~0_combout\ & ((!\inst5|Equal0~9_combout\) # (!\inst5|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.SEARCH~q\,
	datab => \inst5|Equal0~10_combout\,
	datac => \inst5|Mux0~0_combout\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|idx[2]~0_combout\);

-- Location: LCCOMB_X18_Y23_N30
\inst5|idx[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|idx[2]~1_combout\ = (\inst5|state.SEARCH~q\ & ((\inst5|idx\(2)) # ((\inst5|idx[2]~0_combout\ & \inst5|Add0~4_combout\)))) # (!\inst5|state.SEARCH~q\ & (\inst5|idx[2]~0_combout\ & ((\inst5|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.SEARCH~q\,
	datab => \inst5|idx[2]~0_combout\,
	datac => \inst5|idx\(2),
	datad => \inst5|Add0~4_combout\,
	combout => \inst5|idx[2]~1_combout\);

-- Location: FF_X18_Y23_N31
\inst5|idx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~q\,
	d => \inst5|idx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(2));

-- Location: LCCOMB_X18_Y23_N6
\inst5|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~1_combout\ = (\inst5|idx\(0)) # ((\inst5|idx\(2)) # (\inst5|idx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(0),
	datac => \inst5|idx\(2),
	datad => \inst5|idx\(1),
	combout => \inst5|Mux1~1_combout\);

-- Location: LCCOMB_X18_Y23_N16
\inst5|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector18~0_combout\ = (!\inst5|state.SEARCH~q\ & (!\inst15|state.W4BFFRtx~q\ & (!\inst5|Mux1~1_combout\ & \inst15|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.SEARCH~q\,
	datab => \inst15|state.W4BFFRtx~q\,
	datac => \inst5|Mux1~1_combout\,
	datad => \inst15|state.IDLE~q\,
	combout => \inst5|Selector18~0_combout\);

-- Location: FF_X19_Y23_N17
\inst5|state.STRT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst5|Selector18~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.STRT~q\);

-- Location: LCCOMB_X19_Y23_N10
\inst5|strtTx[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|strtTx\(0) = (\inst5|Mux1~1_combout\ & (\inst5|strtTx\(0))) # (!\inst5|Mux1~1_combout\ & ((\inst5|state.STRT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|strtTx\(0),
	datac => \inst5|Mux1~1_combout\,
	datad => \inst5|state.STRT~q\,
	combout => \inst5|strtTx\(0));

-- Location: LCCOMB_X10_Y29_N28
\inst6|pstate~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|pstate~0_combout\ = !\inst6|wt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|wt~q\,
	combout => \inst6|pstate~0_combout\);

-- Location: FF_X10_Y29_N29
\inst6|pstate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|pstate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|pstate~q\);

-- Location: LCCOMB_X10_Y29_N18
\inst6|process_10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_10~0_combout\ = (!\inst6|pstate~q\ & !\inst6|wt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|pstate~q\,
	datad => \inst6|wt~q\,
	combout => \inst6|process_10~0_combout\);

-- Location: FF_X10_Y29_N19
\inst6|fPulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|process_10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|fPulse~q\);

-- Location: LCCOMB_X18_Y25_N0
\inst15|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~0_combout\ = \inst15|nextTx\(0) $ (VCC)
-- \inst15|Add0~1\ = CARRY(\inst15|nextTx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(0),
	datad => VCC,
	combout => \inst15|Add0~0_combout\,
	cout => \inst15|Add0~1\);

-- Location: FF_X18_Y25_N1
\inst15|nextTx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~0_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(0));

-- Location: LCCOMB_X18_Y25_N2
\inst15|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~2_combout\ = (\inst15|nextTx\(1) & (!\inst15|Add0~1\)) # (!\inst15|nextTx\(1) & ((\inst15|Add0~1\) # (GND)))
-- \inst15|Add0~3\ = CARRY((!\inst15|Add0~1\) # (!\inst15|nextTx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(1),
	datad => VCC,
	cin => \inst15|Add0~1\,
	combout => \inst15|Add0~2_combout\,
	cout => \inst15|Add0~3\);

-- Location: FF_X18_Y25_N3
\inst15|nextTx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~2_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(1));

-- Location: LCCOMB_X18_Y25_N4
\inst15|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~4_combout\ = (\inst15|nextTx\(2) & (\inst15|Add0~3\ $ (GND))) # (!\inst15|nextTx\(2) & (!\inst15|Add0~3\ & VCC))
-- \inst15|Add0~5\ = CARRY((\inst15|nextTx\(2) & !\inst15|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(2),
	datad => VCC,
	cin => \inst15|Add0~3\,
	combout => \inst15|Add0~4_combout\,
	cout => \inst15|Add0~5\);

-- Location: LCCOMB_X17_Y25_N6
\inst15|nextTx~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|nextTx~1_combout\ = (!\inst15|Equal0~10_combout\ & \inst15|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|Equal0~10_combout\,
	datad => \inst15|Add0~4_combout\,
	combout => \inst15|nextTx~1_combout\);

-- Location: FF_X17_Y25_N7
\inst15|nextTx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|nextTx~1_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(2));

-- Location: LCCOMB_X18_Y25_N6
\inst15|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~6_combout\ = (\inst15|nextTx\(3) & (!\inst15|Add0~5\)) # (!\inst15|nextTx\(3) & ((\inst15|Add0~5\) # (GND)))
-- \inst15|Add0~7\ = CARRY((!\inst15|Add0~5\) # (!\inst15|nextTx\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(3),
	datad => VCC,
	cin => \inst15|Add0~5\,
	combout => \inst15|Add0~6_combout\,
	cout => \inst15|Add0~7\);

-- Location: LCCOMB_X17_Y25_N28
\inst15|nextTx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|nextTx~0_combout\ = (!\inst15|Equal0~10_combout\ & \inst15|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|Equal0~10_combout\,
	datad => \inst15|Add0~6_combout\,
	combout => \inst15|nextTx~0_combout\);

-- Location: FF_X17_Y25_N29
\inst15|nextTx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|nextTx~0_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(3));

-- Location: LCCOMB_X18_Y25_N8
\inst15|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~8_combout\ = (\inst15|nextTx\(4) & (\inst15|Add0~7\ $ (GND))) # (!\inst15|nextTx\(4) & (!\inst15|Add0~7\ & VCC))
-- \inst15|Add0~9\ = CARRY((\inst15|nextTx\(4) & !\inst15|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(4),
	datad => VCC,
	cin => \inst15|Add0~7\,
	combout => \inst15|Add0~8_combout\,
	cout => \inst15|Add0~9\);

-- Location: FF_X18_Y25_N9
\inst15|nextTx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~8_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(4));

-- Location: LCCOMB_X18_Y25_N10
\inst15|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~10_combout\ = (\inst15|nextTx\(5) & (!\inst15|Add0~9\)) # (!\inst15|nextTx\(5) & ((\inst15|Add0~9\) # (GND)))
-- \inst15|Add0~11\ = CARRY((!\inst15|Add0~9\) # (!\inst15|nextTx\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(5),
	datad => VCC,
	cin => \inst15|Add0~9\,
	combout => \inst15|Add0~10_combout\,
	cout => \inst15|Add0~11\);

-- Location: FF_X18_Y25_N11
\inst15|nextTx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~10_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(5));

-- Location: LCCOMB_X18_Y25_N12
\inst15|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~12_combout\ = (\inst15|nextTx\(6) & (\inst15|Add0~11\ $ (GND))) # (!\inst15|nextTx\(6) & (!\inst15|Add0~11\ & VCC))
-- \inst15|Add0~13\ = CARRY((\inst15|nextTx\(6) & !\inst15|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(6),
	datad => VCC,
	cin => \inst15|Add0~11\,
	combout => \inst15|Add0~12_combout\,
	cout => \inst15|Add0~13\);

-- Location: FF_X18_Y25_N13
\inst15|nextTx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~12_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(6));

-- Location: LCCOMB_X18_Y25_N14
\inst15|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~14_combout\ = (\inst15|nextTx\(7) & (!\inst15|Add0~13\)) # (!\inst15|nextTx\(7) & ((\inst15|Add0~13\) # (GND)))
-- \inst15|Add0~15\ = CARRY((!\inst15|Add0~13\) # (!\inst15|nextTx\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(7),
	datad => VCC,
	cin => \inst15|Add0~13\,
	combout => \inst15|Add0~14_combout\,
	cout => \inst15|Add0~15\);

-- Location: FF_X18_Y25_N15
\inst15|nextTx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~14_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(7));

-- Location: LCCOMB_X19_Y25_N24
\inst15|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~1_combout\ = (!\inst15|nextTx\(5) & (!\inst15|nextTx\(6) & (!\inst15|nextTx\(7) & !\inst15|nextTx\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(5),
	datab => \inst15|nextTx\(6),
	datac => \inst15|nextTx\(7),
	datad => \inst15|nextTx\(4),
	combout => \inst15|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y25_N16
\inst15|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~16_combout\ = (\inst15|nextTx\(8) & (\inst15|Add0~15\ $ (GND))) # (!\inst15|nextTx\(8) & (!\inst15|Add0~15\ & VCC))
-- \inst15|Add0~17\ = CARRY((\inst15|nextTx\(8) & !\inst15|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(8),
	datad => VCC,
	cin => \inst15|Add0~15\,
	combout => \inst15|Add0~16_combout\,
	cout => \inst15|Add0~17\);

-- Location: FF_X18_Y25_N17
\inst15|nextTx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~16_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(8));

-- Location: LCCOMB_X18_Y25_N18
\inst15|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~18_combout\ = (\inst15|nextTx\(9) & (!\inst15|Add0~17\)) # (!\inst15|nextTx\(9) & ((\inst15|Add0~17\) # (GND)))
-- \inst15|Add0~19\ = CARRY((!\inst15|Add0~17\) # (!\inst15|nextTx\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(9),
	datad => VCC,
	cin => \inst15|Add0~17\,
	combout => \inst15|Add0~18_combout\,
	cout => \inst15|Add0~19\);

-- Location: FF_X18_Y25_N19
\inst15|nextTx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~18_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(9));

-- Location: LCCOMB_X18_Y25_N20
\inst15|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~20_combout\ = (\inst15|nextTx\(10) & (\inst15|Add0~19\ $ (GND))) # (!\inst15|nextTx\(10) & (!\inst15|Add0~19\ & VCC))
-- \inst15|Add0~21\ = CARRY((\inst15|nextTx\(10) & !\inst15|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(10),
	datad => VCC,
	cin => \inst15|Add0~19\,
	combout => \inst15|Add0~20_combout\,
	cout => \inst15|Add0~21\);

-- Location: FF_X18_Y25_N21
\inst15|nextTx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~20_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(10));

-- Location: LCCOMB_X18_Y25_N22
\inst15|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~22_combout\ = (\inst15|nextTx\(11) & (!\inst15|Add0~21\)) # (!\inst15|nextTx\(11) & ((\inst15|Add0~21\) # (GND)))
-- \inst15|Add0~23\ = CARRY((!\inst15|Add0~21\) # (!\inst15|nextTx\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(11),
	datad => VCC,
	cin => \inst15|Add0~21\,
	combout => \inst15|Add0~22_combout\,
	cout => \inst15|Add0~23\);

-- Location: FF_X18_Y25_N23
\inst15|nextTx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~22_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(11));

-- Location: LCCOMB_X18_Y25_N24
\inst15|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~24_combout\ = (\inst15|nextTx\(12) & (\inst15|Add0~23\ $ (GND))) # (!\inst15|nextTx\(12) & (!\inst15|Add0~23\ & VCC))
-- \inst15|Add0~25\ = CARRY((\inst15|nextTx\(12) & !\inst15|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(12),
	datad => VCC,
	cin => \inst15|Add0~23\,
	combout => \inst15|Add0~24_combout\,
	cout => \inst15|Add0~25\);

-- Location: FF_X18_Y25_N25
\inst15|nextTx[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~24_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(12));

-- Location: LCCOMB_X18_Y25_N26
\inst15|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~26_combout\ = (\inst15|nextTx\(13) & (!\inst15|Add0~25\)) # (!\inst15|nextTx\(13) & ((\inst15|Add0~25\) # (GND)))
-- \inst15|Add0~27\ = CARRY((!\inst15|Add0~25\) # (!\inst15|nextTx\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(13),
	datad => VCC,
	cin => \inst15|Add0~25\,
	combout => \inst15|Add0~26_combout\,
	cout => \inst15|Add0~27\);

-- Location: FF_X18_Y25_N27
\inst15|nextTx[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~26_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(13));

-- Location: LCCOMB_X18_Y25_N28
\inst15|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~28_combout\ = (\inst15|nextTx\(14) & (\inst15|Add0~27\ $ (GND))) # (!\inst15|nextTx\(14) & (!\inst15|Add0~27\ & VCC))
-- \inst15|Add0~29\ = CARRY((\inst15|nextTx\(14) & !\inst15|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(14),
	datad => VCC,
	cin => \inst15|Add0~27\,
	combout => \inst15|Add0~28_combout\,
	cout => \inst15|Add0~29\);

-- Location: FF_X18_Y25_N29
\inst15|nextTx[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~28_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(14));

-- Location: LCCOMB_X18_Y25_N30
\inst15|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~30_combout\ = (\inst15|nextTx\(15) & (!\inst15|Add0~29\)) # (!\inst15|nextTx\(15) & ((\inst15|Add0~29\) # (GND)))
-- \inst15|Add0~31\ = CARRY((!\inst15|Add0~29\) # (!\inst15|nextTx\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(15),
	datad => VCC,
	cin => \inst15|Add0~29\,
	combout => \inst15|Add0~30_combout\,
	cout => \inst15|Add0~31\);

-- Location: FF_X18_Y25_N31
\inst15|nextTx[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~30_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(15));

-- Location: LCCOMB_X17_Y25_N10
\inst15|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~3_combout\ = (!\inst15|nextTx\(12) & (!\inst15|nextTx\(13) & (!\inst15|nextTx\(15) & !\inst15|nextTx\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(12),
	datab => \inst15|nextTx\(13),
	datac => \inst15|nextTx\(15),
	datad => \inst15|nextTx\(14),
	combout => \inst15|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y25_N12
\inst15|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~0_combout\ = (!\inst15|nextTx\(2) & (\inst15|nextTx\(1) & (\inst15|nextTx\(0) & \inst15|nextTx\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(2),
	datab => \inst15|nextTx\(1),
	datac => \inst15|nextTx\(0),
	datad => \inst15|nextTx\(3),
	combout => \inst15|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y25_N26
\inst15|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~2_combout\ = (!\inst15|nextTx\(11) & (!\inst15|nextTx\(10) & (!\inst15|nextTx\(8) & !\inst15|nextTx\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(11),
	datab => \inst15|nextTx\(10),
	datac => \inst15|nextTx\(8),
	datad => \inst15|nextTx\(9),
	combout => \inst15|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y25_N16
\inst15|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~4_combout\ = (\inst15|Equal0~1_combout\ & (\inst15|Equal0~3_combout\ & (\inst15|Equal0~0_combout\ & \inst15|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal0~1_combout\,
	datab => \inst15|Equal0~3_combout\,
	datac => \inst15|Equal0~0_combout\,
	datad => \inst15|Equal0~2_combout\,
	combout => \inst15|Equal0~4_combout\);

-- Location: LCCOMB_X18_Y24_N0
\inst15|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~32_combout\ = (\inst15|nextTx\(16) & (\inst15|Add0~31\ $ (GND))) # (!\inst15|nextTx\(16) & (!\inst15|Add0~31\ & VCC))
-- \inst15|Add0~33\ = CARRY((\inst15|nextTx\(16) & !\inst15|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(16),
	datad => VCC,
	cin => \inst15|Add0~31\,
	combout => \inst15|Add0~32_combout\,
	cout => \inst15|Add0~33\);

-- Location: FF_X18_Y24_N1
\inst15|nextTx[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~32_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(16));

-- Location: LCCOMB_X18_Y24_N2
\inst15|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~34_combout\ = (\inst15|nextTx\(17) & (!\inst15|Add0~33\)) # (!\inst15|nextTx\(17) & ((\inst15|Add0~33\) # (GND)))
-- \inst15|Add0~35\ = CARRY((!\inst15|Add0~33\) # (!\inst15|nextTx\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(17),
	datad => VCC,
	cin => \inst15|Add0~33\,
	combout => \inst15|Add0~34_combout\,
	cout => \inst15|Add0~35\);

-- Location: FF_X18_Y24_N3
\inst15|nextTx[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~34_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(17));

-- Location: LCCOMB_X18_Y24_N4
\inst15|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~36_combout\ = (\inst15|nextTx\(18) & (\inst15|Add0~35\ $ (GND))) # (!\inst15|nextTx\(18) & (!\inst15|Add0~35\ & VCC))
-- \inst15|Add0~37\ = CARRY((\inst15|nextTx\(18) & !\inst15|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(18),
	datad => VCC,
	cin => \inst15|Add0~35\,
	combout => \inst15|Add0~36_combout\,
	cout => \inst15|Add0~37\);

-- Location: FF_X18_Y24_N5
\inst15|nextTx[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~36_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(18));

-- Location: LCCOMB_X18_Y24_N6
\inst15|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~38_combout\ = (\inst15|nextTx\(19) & (!\inst15|Add0~37\)) # (!\inst15|nextTx\(19) & ((\inst15|Add0~37\) # (GND)))
-- \inst15|Add0~39\ = CARRY((!\inst15|Add0~37\) # (!\inst15|nextTx\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(19),
	datad => VCC,
	cin => \inst15|Add0~37\,
	combout => \inst15|Add0~38_combout\,
	cout => \inst15|Add0~39\);

-- Location: FF_X18_Y24_N7
\inst15|nextTx[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~38_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(19));

-- Location: LCCOMB_X18_Y24_N8
\inst15|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~40_combout\ = (\inst15|nextTx\(20) & (\inst15|Add0~39\ $ (GND))) # (!\inst15|nextTx\(20) & (!\inst15|Add0~39\ & VCC))
-- \inst15|Add0~41\ = CARRY((\inst15|nextTx\(20) & !\inst15|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(20),
	datad => VCC,
	cin => \inst15|Add0~39\,
	combout => \inst15|Add0~40_combout\,
	cout => \inst15|Add0~41\);

-- Location: FF_X18_Y24_N9
\inst15|nextTx[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~40_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(20));

-- Location: LCCOMB_X18_Y24_N10
\inst15|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~42_combout\ = (\inst15|nextTx\(21) & (!\inst15|Add0~41\)) # (!\inst15|nextTx\(21) & ((\inst15|Add0~41\) # (GND)))
-- \inst15|Add0~43\ = CARRY((!\inst15|Add0~41\) # (!\inst15|nextTx\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(21),
	datad => VCC,
	cin => \inst15|Add0~41\,
	combout => \inst15|Add0~42_combout\,
	cout => \inst15|Add0~43\);

-- Location: FF_X18_Y24_N11
\inst15|nextTx[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~42_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(21));

-- Location: LCCOMB_X18_Y24_N12
\inst15|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~44_combout\ = (\inst15|nextTx\(22) & (\inst15|Add0~43\ $ (GND))) # (!\inst15|nextTx\(22) & (!\inst15|Add0~43\ & VCC))
-- \inst15|Add0~45\ = CARRY((\inst15|nextTx\(22) & !\inst15|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(22),
	datad => VCC,
	cin => \inst15|Add0~43\,
	combout => \inst15|Add0~44_combout\,
	cout => \inst15|Add0~45\);

-- Location: FF_X18_Y24_N13
\inst15|nextTx[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~44_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(22));

-- Location: LCCOMB_X18_Y24_N14
\inst15|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~46_combout\ = (\inst15|nextTx\(23) & (!\inst15|Add0~45\)) # (!\inst15|nextTx\(23) & ((\inst15|Add0~45\) # (GND)))
-- \inst15|Add0~47\ = CARRY((!\inst15|Add0~45\) # (!\inst15|nextTx\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(23),
	datad => VCC,
	cin => \inst15|Add0~45\,
	combout => \inst15|Add0~46_combout\,
	cout => \inst15|Add0~47\);

-- Location: FF_X18_Y24_N15
\inst15|nextTx[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~46_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(23));

-- Location: LCCOMB_X18_Y24_N16
\inst15|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~48_combout\ = (\inst15|nextTx\(24) & (\inst15|Add0~47\ $ (GND))) # (!\inst15|nextTx\(24) & (!\inst15|Add0~47\ & VCC))
-- \inst15|Add0~49\ = CARRY((\inst15|nextTx\(24) & !\inst15|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(24),
	datad => VCC,
	cin => \inst15|Add0~47\,
	combout => \inst15|Add0~48_combout\,
	cout => \inst15|Add0~49\);

-- Location: FF_X18_Y24_N17
\inst15|nextTx[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~48_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(24));

-- Location: LCCOMB_X18_Y24_N18
\inst15|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~50_combout\ = (\inst15|nextTx\(25) & (!\inst15|Add0~49\)) # (!\inst15|nextTx\(25) & ((\inst15|Add0~49\) # (GND)))
-- \inst15|Add0~51\ = CARRY((!\inst15|Add0~49\) # (!\inst15|nextTx\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(25),
	datad => VCC,
	cin => \inst15|Add0~49\,
	combout => \inst15|Add0~50_combout\,
	cout => \inst15|Add0~51\);

-- Location: FF_X18_Y24_N19
\inst15|nextTx[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~50_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(25));

-- Location: LCCOMB_X18_Y24_N20
\inst15|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~52_combout\ = (\inst15|nextTx\(26) & (\inst15|Add0~51\ $ (GND))) # (!\inst15|nextTx\(26) & (!\inst15|Add0~51\ & VCC))
-- \inst15|Add0~53\ = CARRY((\inst15|nextTx\(26) & !\inst15|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(26),
	datad => VCC,
	cin => \inst15|Add0~51\,
	combout => \inst15|Add0~52_combout\,
	cout => \inst15|Add0~53\);

-- Location: FF_X18_Y24_N21
\inst15|nextTx[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~52_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(26));

-- Location: LCCOMB_X18_Y24_N22
\inst15|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~54_combout\ = (\inst15|nextTx\(27) & (!\inst15|Add0~53\)) # (!\inst15|nextTx\(27) & ((\inst15|Add0~53\) # (GND)))
-- \inst15|Add0~55\ = CARRY((!\inst15|Add0~53\) # (!\inst15|nextTx\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(27),
	datad => VCC,
	cin => \inst15|Add0~53\,
	combout => \inst15|Add0~54_combout\,
	cout => \inst15|Add0~55\);

-- Location: FF_X18_Y24_N23
\inst15|nextTx[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~54_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(27));

-- Location: LCCOMB_X18_Y24_N24
\inst15|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~56_combout\ = (\inst15|nextTx\(28) & (\inst15|Add0~55\ $ (GND))) # (!\inst15|nextTx\(28) & (!\inst15|Add0~55\ & VCC))
-- \inst15|Add0~57\ = CARRY((\inst15|nextTx\(28) & !\inst15|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(28),
	datad => VCC,
	cin => \inst15|Add0~55\,
	combout => \inst15|Add0~56_combout\,
	cout => \inst15|Add0~57\);

-- Location: FF_X18_Y24_N25
\inst15|nextTx[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~56_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(28));

-- Location: LCCOMB_X18_Y24_N26
\inst15|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~58_combout\ = (\inst15|nextTx\(29) & (!\inst15|Add0~57\)) # (!\inst15|nextTx\(29) & ((\inst15|Add0~57\) # (GND)))
-- \inst15|Add0~59\ = CARRY((!\inst15|Add0~57\) # (!\inst15|nextTx\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(29),
	datad => VCC,
	cin => \inst15|Add0~57\,
	combout => \inst15|Add0~58_combout\,
	cout => \inst15|Add0~59\);

-- Location: FF_X18_Y24_N27
\inst15|nextTx[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~58_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(29));

-- Location: LCCOMB_X18_Y24_N28
\inst15|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~60_combout\ = (\inst15|nextTx\(30) & (\inst15|Add0~59\ $ (GND))) # (!\inst15|nextTx\(30) & (!\inst15|Add0~59\ & VCC))
-- \inst15|Add0~61\ = CARRY((\inst15|nextTx\(30) & !\inst15|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|nextTx\(30),
	datad => VCC,
	cin => \inst15|Add0~59\,
	combout => \inst15|Add0~60_combout\,
	cout => \inst15|Add0~61\);

-- Location: FF_X18_Y24_N29
\inst15|nextTx[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~60_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(30));

-- Location: LCCOMB_X18_Y24_N30
\inst15|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Add0~62_combout\ = \inst15|nextTx\(31) $ (\inst15|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(31),
	cin => \inst15|Add0~61\,
	combout => \inst15|Add0~62_combout\);

-- Location: FF_X18_Y24_N31
\inst15|nextTx[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Add0~62_combout\,
	ena => \inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|nextTx\(31));

-- Location: LCCOMB_X17_Y24_N0
\inst15|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~9_combout\ = (!\inst15|nextTx\(29) & (!\inst15|nextTx\(28) & (!\inst15|nextTx\(31) & !\inst15|nextTx\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(29),
	datab => \inst15|nextTx\(28),
	datac => \inst15|nextTx\(31),
	datad => \inst15|nextTx\(30),
	combout => \inst15|Equal0~9_combout\);

-- Location: LCCOMB_X18_Y21_N12
\inst15|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~8_combout\ = (!\inst15|nextTx\(25) & (!\inst15|nextTx\(24) & (!\inst15|nextTx\(27) & !\inst15|nextTx\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(25),
	datab => \inst15|nextTx\(24),
	datac => \inst15|nextTx\(27),
	datad => \inst15|nextTx\(26),
	combout => \inst15|Equal0~8_combout\);

-- Location: LCCOMB_X19_Y24_N28
\inst15|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~5_combout\ = (!\inst15|nextTx\(16) & (!\inst15|nextTx\(19) & (!\inst15|nextTx\(18) & !\inst15|nextTx\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(16),
	datab => \inst15|nextTx\(19),
	datac => \inst15|nextTx\(18),
	datad => \inst15|nextTx\(17),
	combout => \inst15|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y24_N18
\inst15|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~6_combout\ = (!\inst15|nextTx\(20) & (!\inst15|nextTx\(21) & (!\inst15|nextTx\(23) & !\inst15|nextTx\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|nextTx\(20),
	datab => \inst15|nextTx\(21),
	datac => \inst15|nextTx\(23),
	datad => \inst15|nextTx\(22),
	combout => \inst15|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y24_N0
\inst15|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~7_combout\ = (\inst15|Equal0~5_combout\ & \inst15|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|Equal0~5_combout\,
	datad => \inst15|Equal0~6_combout\,
	combout => \inst15|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y25_N20
\inst15|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Equal0~10_combout\ = (\inst15|Equal0~4_combout\ & (\inst15|Equal0~9_combout\ & (\inst15|Equal0~8_combout\ & \inst15|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Equal0~4_combout\,
	datab => \inst15|Equal0~9_combout\,
	datac => \inst15|Equal0~8_combout\,
	datad => \inst15|Equal0~7_combout\,
	combout => \inst15|Equal0~10_combout\);

-- Location: LCCOMB_X17_Y25_N30
\inst15|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector2~0_combout\ = (!\inst15|state.NXTtx~q\ & (((\inst15|state.STRTtx~q\) # (!\inst5|strtTx\(0))) # (!\inst15|state.RDY2SND~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|state.RDY2SND~q\,
	datab => \inst15|state.NXTtx~q\,
	datac => \inst15|state.STRTtx~q\,
	datad => \inst5|strtTx\(0),
	combout => \inst15|Selector2~0_combout\);

-- Location: LCCOMB_X17_Y25_N8
\inst15|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector2~1_combout\ = (!\inst15|Selector2~0_combout\ & ((!\inst15|state.NXTtx~q\) # (!\inst15|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|Equal0~10_combout\,
	datac => \inst15|Selector2~0_combout\,
	datad => \inst15|state.NXTtx~q\,
	combout => \inst15|Selector2~1_combout\);

-- Location: FF_X17_Y25_N9
\inst15|state.STRTtx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|state.STRTtx~q\);

-- Location: LCCOMB_X17_Y25_N0
\inst15|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector0~0_combout\ = (!\inst15|state.NXTtx~q\ & (!\inst15|state.STRTtx~q\ & ((!\inst15|state.RDY2SND~q\) # (!\inst5|strtTx\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|state.NXTtx~q\,
	datab => \inst5|strtTx\(0),
	datac => \inst15|state.RDY2SND~q\,
	datad => \inst15|state.STRTtx~q\,
	combout => \inst15|Selector0~0_combout\);

-- Location: LCCOMB_X17_Y25_N14
\inst15|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector1~0_combout\ = (\inst16|empty~combout\ & (((\inst15|state.W4BFFRtx~q\) # (!\inst15|state.RDY2SND~q\)))) # (!\inst16|empty~combout\ & (\inst15|state.IDLE~q\ & (!\inst15|state.RDY2SND~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|state.IDLE~q\,
	datab => \inst16|empty~combout\,
	datac => \inst15|state.RDY2SND~q\,
	datad => \inst15|state.W4BFFRtx~q\,
	combout => \inst15|Selector1~0_combout\);

-- Location: LCCOMB_X17_Y25_N22
\inst15|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector3~0_combout\ = (\inst15|state.STRTtx~q\) # ((!\inst6|fPulse~q\ & \inst15|state.WAITINGtx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|fPulse~q\,
	datac => \inst15|state.WAITINGtx~q\,
	datad => \inst15|state.STRTtx~q\,
	combout => \inst15|Selector3~0_combout\);

-- Location: FF_X17_Y25_N23
\inst15|state.WAITINGtx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|state.WAITINGtx~q\);

-- Location: LCCOMB_X17_Y25_N26
\inst15|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector1~1_combout\ = (\inst15|Selector0~0_combout\ & (!\inst15|Selector1~0_combout\ & ((!\inst15|state.WAITINGtx~q\) # (!\inst6|fPulse~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|fPulse~q\,
	datab => \inst15|Selector0~0_combout\,
	datac => \inst15|Selector1~0_combout\,
	datad => \inst15|state.WAITINGtx~q\,
	combout => \inst15|Selector1~1_combout\);

-- Location: FF_X17_Y25_N27
\inst15|state.RDY2SND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|state.RDY2SND~q\);

-- Location: LCCOMB_X17_Y25_N16
\inst15|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector5~0_combout\ = (\inst5|strtTx\(0) & (!\inst15|state.RDY2SND~q\ & (\inst15|state.IDLE~q\ $ (\inst16|empty~combout\)))) # (!\inst5|strtTx\(0) & (\inst15|state.IDLE~q\ $ (((\inst16|empty~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|strtTx\(0),
	datab => \inst15|state.IDLE~q\,
	datac => \inst15|state.RDY2SND~q\,
	datad => \inst16|empty~combout\,
	combout => \inst15|Selector5~0_combout\);

-- Location: LCCOMB_X17_Y25_N18
\inst15|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector5~1_combout\ = (\inst15|state.NXTtx~q\ & (((\inst15|Equal0~10_combout\)))) # (!\inst15|state.NXTtx~q\ & (\inst15|Selector5~0_combout\ & ((\inst15|state.W4BFFRtx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|Selector5~0_combout\,
	datab => \inst15|Equal0~10_combout\,
	datac => \inst15|state.W4BFFRtx~q\,
	datad => \inst15|state.NXTtx~q\,
	combout => \inst15|Selector5~1_combout\);

-- Location: FF_X17_Y25_N19
\inst15|state.W4BFFRtx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|state.W4BFFRtx~q\);

-- Location: LCCOMB_X17_Y25_N4
\inst15|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector4~0_combout\ = (\inst6|fPulse~q\ & (\inst15|state.WAITINGtx~q\ & ((!\inst15|state.W4BFFRtx~q\) # (!\inst16|empty~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|empty~combout\,
	datab => \inst15|state.W4BFFRtx~q\,
	datac => \inst6|fPulse~q\,
	datad => \inst15|state.WAITINGtx~q\,
	combout => \inst15|Selector4~0_combout\);

-- Location: FF_X17_Y25_N5
\inst15|state.NXTtx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|state.NXTtx~q\);

-- Location: LCCOMB_X25_Y27_N0
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|addNo\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|addNo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: FF_X25_Y27_N1
\inst|addNo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(0));

-- Location: LCCOMB_X25_Y27_N2
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|addNo\(1) & (!\inst|Add0~1\)) # (!\inst|addNo\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|addNo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X25_Y27_N3
\inst|addNo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(1));

-- Location: LCCOMB_X25_Y27_N4
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|addNo\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|addNo\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|addNo\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X26_Y27_N4
\inst|addNo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addNo~1_combout\ = (\inst|Add0~4_combout\ & !\inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~4_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|addNo~1_combout\);

-- Location: FF_X26_Y27_N5
\inst|addNo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|addNo~1_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(2));

-- Location: LCCOMB_X25_Y27_N6
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|addNo\(3) & (!\inst|Add0~5\)) # (!\inst|addNo\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|addNo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X26_Y27_N2
\inst|addNo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addNo~0_combout\ = (\inst|Add0~6_combout\ & !\inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~6_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|addNo~0_combout\);

-- Location: FF_X26_Y27_N3
\inst|addNo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|addNo~0_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(3));

-- Location: LCCOMB_X25_Y27_N8
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|addNo\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|addNo\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|addNo\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X25_Y27_N9
\inst|addNo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~8_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(4));

-- Location: LCCOMB_X25_Y27_N10
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|addNo\(5) & (!\inst|Add0~9\)) # (!\inst|addNo\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|addNo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: FF_X25_Y27_N11
\inst|addNo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~10_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(5));

-- Location: LCCOMB_X25_Y27_N12
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|addNo\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|addNo\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|addNo\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: FF_X25_Y27_N13
\inst|addNo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~12_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(6));

-- Location: LCCOMB_X25_Y27_N14
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|addNo\(7) & (!\inst|Add0~13\)) # (!\inst|addNo\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|addNo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: FF_X25_Y27_N15
\inst|addNo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(7));

-- Location: LCCOMB_X25_Y27_N16
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|addNo\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|addNo\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|addNo\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: FF_X25_Y27_N17
\inst|addNo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~16_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(8));

-- Location: LCCOMB_X25_Y27_N18
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|addNo\(9) & (!\inst|Add0~17\)) # (!\inst|addNo\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|addNo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: FF_X25_Y27_N19
\inst|addNo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~18_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(9));

-- Location: LCCOMB_X25_Y27_N20
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|addNo\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|addNo\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|addNo\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: FF_X25_Y27_N21
\inst|addNo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~20_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(10));

-- Location: LCCOMB_X25_Y27_N22
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|addNo\(11) & (!\inst|Add0~21\)) # (!\inst|addNo\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|addNo\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: FF_X25_Y27_N23
\inst|addNo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~22_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(11));

-- Location: LCCOMB_X25_Y27_N24
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|addNo\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|addNo\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|addNo\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: FF_X25_Y27_N25
\inst|addNo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~24_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(12));

-- Location: LCCOMB_X25_Y27_N26
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|addNo\(13) & (!\inst|Add0~25\)) # (!\inst|addNo\(13) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|addNo\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: FF_X25_Y27_N27
\inst|addNo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~26_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(13));

-- Location: LCCOMB_X25_Y27_N28
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|addNo\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|addNo\(14) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|addNo\(14) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: FF_X25_Y27_N29
\inst|addNo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~28_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(14));

-- Location: LCCOMB_X25_Y27_N30
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|addNo\(15) & (!\inst|Add0~29\)) # (!\inst|addNo\(15) & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|addNo\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: FF_X25_Y27_N31
\inst|addNo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~30_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(15));

-- Location: LCCOMB_X25_Y26_N0
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|addNo\(16) & (\inst|Add0~31\ $ (GND))) # (!\inst|addNo\(16) & (!\inst|Add0~31\ & VCC))
-- \inst|Add0~33\ = CARRY((\inst|addNo\(16) & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: FF_X25_Y26_N1
\inst|addNo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~32_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(16));

-- Location: LCCOMB_X25_Y26_N2
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|addNo\(17) & (!\inst|Add0~33\)) # (!\inst|addNo\(17) & ((\inst|Add0~33\) # (GND)))
-- \inst|Add0~35\ = CARRY((!\inst|Add0~33\) # (!\inst|addNo\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: FF_X25_Y26_N3
\inst|addNo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~34_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(17));

-- Location: LCCOMB_X25_Y26_N4
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|addNo\(18) & (\inst|Add0~35\ $ (GND))) # (!\inst|addNo\(18) & (!\inst|Add0~35\ & VCC))
-- \inst|Add0~37\ = CARRY((\inst|addNo\(18) & !\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: FF_X25_Y26_N5
\inst|addNo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~36_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(18));

-- Location: LCCOMB_X25_Y26_N6
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|addNo\(19) & (!\inst|Add0~37\)) # (!\inst|addNo\(19) & ((\inst|Add0~37\) # (GND)))
-- \inst|Add0~39\ = CARRY((!\inst|Add0~37\) # (!\inst|addNo\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(19),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: FF_X25_Y26_N7
\inst|addNo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~38_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(19));

-- Location: LCCOMB_X25_Y26_N8
\inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|addNo\(20) & (\inst|Add0~39\ $ (GND))) # (!\inst|addNo\(20) & (!\inst|Add0~39\ & VCC))
-- \inst|Add0~41\ = CARRY((\inst|addNo\(20) & !\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(20),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: FF_X25_Y26_N9
\inst|addNo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~40_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(20));

-- Location: LCCOMB_X25_Y26_N10
\inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|addNo\(21) & (!\inst|Add0~41\)) # (!\inst|addNo\(21) & ((\inst|Add0~41\) # (GND)))
-- \inst|Add0~43\ = CARRY((!\inst|Add0~41\) # (!\inst|addNo\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(21),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: FF_X25_Y26_N11
\inst|addNo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~42_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(21));

-- Location: LCCOMB_X25_Y26_N12
\inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\inst|addNo\(22) & (\inst|Add0~43\ $ (GND))) # (!\inst|addNo\(22) & (!\inst|Add0~43\ & VCC))
-- \inst|Add0~45\ = CARRY((\inst|addNo\(22) & !\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(22),
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: FF_X25_Y26_N13
\inst|addNo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~44_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(22));

-- Location: LCCOMB_X25_Y26_N14
\inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|addNo\(23) & (!\inst|Add0~45\)) # (!\inst|addNo\(23) & ((\inst|Add0~45\) # (GND)))
-- \inst|Add0~47\ = CARRY((!\inst|Add0~45\) # (!\inst|addNo\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(23),
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: FF_X25_Y26_N15
\inst|addNo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~46_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(23));

-- Location: LCCOMB_X25_Y26_N16
\inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = (\inst|addNo\(24) & (\inst|Add0~47\ $ (GND))) # (!\inst|addNo\(24) & (!\inst|Add0~47\ & VCC))
-- \inst|Add0~49\ = CARRY((\inst|addNo\(24) & !\inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(24),
	datad => VCC,
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\,
	cout => \inst|Add0~49\);

-- Location: FF_X25_Y26_N17
\inst|addNo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~48_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(24));

-- Location: LCCOMB_X25_Y26_N18
\inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~50_combout\ = (\inst|addNo\(25) & (!\inst|Add0~49\)) # (!\inst|addNo\(25) & ((\inst|Add0~49\) # (GND)))
-- \inst|Add0~51\ = CARRY((!\inst|Add0~49\) # (!\inst|addNo\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(25),
	datad => VCC,
	cin => \inst|Add0~49\,
	combout => \inst|Add0~50_combout\,
	cout => \inst|Add0~51\);

-- Location: FF_X25_Y26_N19
\inst|addNo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~50_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(25));

-- Location: LCCOMB_X25_Y26_N20
\inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~52_combout\ = (\inst|addNo\(26) & (\inst|Add0~51\ $ (GND))) # (!\inst|addNo\(26) & (!\inst|Add0~51\ & VCC))
-- \inst|Add0~53\ = CARRY((\inst|addNo\(26) & !\inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(26),
	datad => VCC,
	cin => \inst|Add0~51\,
	combout => \inst|Add0~52_combout\,
	cout => \inst|Add0~53\);

-- Location: FF_X25_Y26_N21
\inst|addNo[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~52_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(26));

-- Location: LCCOMB_X25_Y26_N22
\inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~54_combout\ = (\inst|addNo\(27) & (!\inst|Add0~53\)) # (!\inst|addNo\(27) & ((\inst|Add0~53\) # (GND)))
-- \inst|Add0~55\ = CARRY((!\inst|Add0~53\) # (!\inst|addNo\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(27),
	datad => VCC,
	cin => \inst|Add0~53\,
	combout => \inst|Add0~54_combout\,
	cout => \inst|Add0~55\);

-- Location: FF_X25_Y26_N23
\inst|addNo[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~54_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(27));

-- Location: LCCOMB_X25_Y26_N24
\inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~56_combout\ = (\inst|addNo\(28) & (\inst|Add0~55\ $ (GND))) # (!\inst|addNo\(28) & (!\inst|Add0~55\ & VCC))
-- \inst|Add0~57\ = CARRY((\inst|addNo\(28) & !\inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(28),
	datad => VCC,
	cin => \inst|Add0~55\,
	combout => \inst|Add0~56_combout\,
	cout => \inst|Add0~57\);

-- Location: FF_X25_Y26_N25
\inst|addNo[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~56_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(28));

-- Location: LCCOMB_X25_Y26_N26
\inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~58_combout\ = (\inst|addNo\(29) & (!\inst|Add0~57\)) # (!\inst|addNo\(29) & ((\inst|Add0~57\) # (GND)))
-- \inst|Add0~59\ = CARRY((!\inst|Add0~57\) # (!\inst|addNo\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(29),
	datad => VCC,
	cin => \inst|Add0~57\,
	combout => \inst|Add0~58_combout\,
	cout => \inst|Add0~59\);

-- Location: FF_X25_Y26_N27
\inst|addNo[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~58_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(29));

-- Location: LCCOMB_X25_Y26_N28
\inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~60_combout\ = (\inst|addNo\(30) & (\inst|Add0~59\ $ (GND))) # (!\inst|addNo\(30) & (!\inst|Add0~59\ & VCC))
-- \inst|Add0~61\ = CARRY((\inst|addNo\(30) & !\inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|addNo\(30),
	datad => VCC,
	cin => \inst|Add0~59\,
	combout => \inst|Add0~60_combout\,
	cout => \inst|Add0~61\);

-- Location: FF_X25_Y26_N29
\inst|addNo[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~60_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(30));

-- Location: LCCOMB_X25_Y26_N30
\inst|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~62_combout\ = \inst|addNo\(31) $ (\inst|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(31),
	cin => \inst|Add0~61\,
	combout => \inst|Add0~62_combout\);

-- Location: FF_X25_Y26_N31
\inst|addNo[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~62_combout\,
	ena => \inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addNo\(31));

-- Location: LCCOMB_X26_Y26_N12
\inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~9_combout\ = (!\inst|addNo\(31) & (!\inst|addNo\(30) & (!\inst|addNo\(29) & !\inst|addNo\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(31),
	datab => \inst|addNo\(30),
	datac => \inst|addNo\(29),
	datad => \inst|addNo\(28),
	combout => \inst|Equal0~9_combout\);

-- Location: LCCOMB_X26_Y26_N18
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (!\inst|addNo\(23) & !\inst|addNo\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(23),
	datad => \inst|addNo\(22),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X26_Y26_N8
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (!\inst|addNo\(16) & (!\inst|addNo\(19) & (!\inst|addNo\(18) & !\inst|addNo\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(16),
	datab => \inst|addNo\(19),
	datac => \inst|addNo\(18),
	datad => \inst|addNo\(17),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X26_Y26_N0
\inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (!\inst|addNo\(20) & (\inst|Equal0~6_combout\ & (\inst|Equal0~5_combout\ & !\inst|addNo\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(20),
	datab => \inst|Equal0~6_combout\,
	datac => \inst|Equal0~5_combout\,
	datad => \inst|addNo\(21),
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X26_Y26_N2
\inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~8_combout\ = (!\inst|addNo\(27) & (!\inst|addNo\(26) & (!\inst|addNo\(24) & !\inst|addNo\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(27),
	datab => \inst|addNo\(26),
	datac => \inst|addNo\(24),
	datad => \inst|addNo\(25),
	combout => \inst|Equal0~8_combout\);

-- Location: LCCOMB_X26_Y27_N10
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|addNo\(0) & (\inst|addNo\(3) & (!\inst|addNo\(2) & \inst|addNo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(0),
	datab => \inst|addNo\(3),
	datac => \inst|addNo\(2),
	datad => \inst|addNo\(1),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y27_N20
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|addNo\(15) & (!\inst|addNo\(14) & (!\inst|addNo\(13) & !\inst|addNo\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(15),
	datab => \inst|addNo\(14),
	datac => \inst|addNo\(13),
	datad => \inst|addNo\(12),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y27_N22
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|addNo\(9) & (!\inst|addNo\(10) & (!\inst|addNo\(8) & !\inst|addNo\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(9),
	datab => \inst|addNo\(10),
	datac => \inst|addNo\(8),
	datad => \inst|addNo\(11),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y27_N28
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|addNo\(6) & (!\inst|addNo\(4) & (!\inst|addNo\(7) & !\inst|addNo\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addNo\(6),
	datab => \inst|addNo\(4),
	datac => \inst|addNo\(7),
	datad => \inst|addNo\(5),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y27_N18
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~0_combout\ & (\inst|Equal0~3_combout\ & (\inst|Equal0~2_combout\ & \inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Equal0~3_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y27_N16
\inst|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~10_combout\ = (\inst|Equal0~9_combout\ & (\inst|Equal0~7_combout\ & (\inst|Equal0~8_combout\ & \inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~9_combout\,
	datab => \inst|Equal0~7_combout\,
	datac => \inst|Equal0~8_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|Equal0~10_combout\);

-- Location: LCCOMB_X26_Y27_N8
\inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (\inst16|empty~combout\ & ((\inst|state.W4BFFRrx~q\) # ((\inst|state.STOREstate~q\ & \inst|Equal0~10_combout\)))) # (!\inst16|empty~combout\ & (\inst|state.STOREstate~q\ & ((\inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|empty~combout\,
	datab => \inst|state.STOREstate~q\,
	datac => \inst|state.W4BFFRrx~q\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|Selector5~0_combout\);

-- Location: FF_X26_Y27_N9
\inst|state.W4BFFRrx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.W4BFFRrx~q\);

-- Location: LCCOMB_X26_Y27_N26
\inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst16|empty~combout\) # ((\inst|state.IDLE~q\ & !\inst|state.W4BFFRrx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|empty~combout\,
	datac => \inst|state.IDLE~q\,
	datad => \inst|state.W4BFFRrx~q\,
	combout => \inst|Selector0~0_combout\);

-- Location: FF_X26_Y27_N27
\inst|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.IDLE~q\);

-- Location: LCCOMB_X26_Y27_N0
\inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst16|empty~combout\ & (((\inst|state.STOREstate~q\ & !\inst|Equal0~10_combout\)) # (!\inst|state.IDLE~q\))) # (!\inst16|empty~combout\ & (\inst|state.STOREstate~q\ & ((!\inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|empty~combout\,
	datab => \inst|state.STOREstate~q\,
	datac => \inst|state.IDLE~q\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|Selector1~0_combout\);

-- Location: FF_X26_Y27_N1
\inst|state.NXTADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.NXTADDR~q\);

-- Location: LCCOMB_X26_Y22_N22
\inst|state.STRTrx~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.STRTrx~feeder_combout\ = \inst|state.NXTADDR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|state.NXTADDR~q\,
	combout => \inst|state.STRTrx~feeder_combout\);

-- Location: FF_X26_Y22_N23
\inst|state.STRTrx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|state.STRTrx~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.STRTrx~q\);

-- Location: FF_X24_Y21_N15
\inst4|delay_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(23));

-- Location: LCCOMB_X24_Y22_N0
\inst4|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~0_combout\ = \inst4|delay_counter\(0) $ (VCC)
-- \inst4|Add6~1\ = CARRY(\inst4|delay_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(0),
	datad => VCC,
	combout => \inst4|Add6~0_combout\,
	cout => \inst4|Add6~1\);

-- Location: FF_X24_Y22_N1
\inst4|delay_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(0));

-- Location: LCCOMB_X24_Y22_N2
\inst4|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~2_combout\ = (\inst4|delay_counter\(1) & (!\inst4|Add6~1\)) # (!\inst4|delay_counter\(1) & ((\inst4|Add6~1\) # (GND)))
-- \inst4|Add6~3\ = CARRY((!\inst4|Add6~1\) # (!\inst4|delay_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(1),
	datad => VCC,
	cin => \inst4|Add6~1\,
	combout => \inst4|Add6~2_combout\,
	cout => \inst4|Add6~3\);

-- Location: FF_X24_Y22_N3
\inst4|delay_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(1));

-- Location: LCCOMB_X24_Y22_N4
\inst4|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~4_combout\ = (\inst4|delay_counter\(2) & (\inst4|Add6~3\ $ (GND))) # (!\inst4|delay_counter\(2) & (!\inst4|Add6~3\ & VCC))
-- \inst4|Add6~5\ = CARRY((\inst4|delay_counter\(2) & !\inst4|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(2),
	datad => VCC,
	cin => \inst4|Add6~3\,
	combout => \inst4|Add6~4_combout\,
	cout => \inst4|Add6~5\);

-- Location: FF_X24_Y22_N5
\inst4|delay_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(2));

-- Location: LCCOMB_X24_Y22_N6
\inst4|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~6_combout\ = (\inst4|delay_counter\(3) & (!\inst4|Add6~5\)) # (!\inst4|delay_counter\(3) & ((\inst4|Add6~5\) # (GND)))
-- \inst4|Add6~7\ = CARRY((!\inst4|Add6~5\) # (!\inst4|delay_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(3),
	datad => VCC,
	cin => \inst4|Add6~5\,
	combout => \inst4|Add6~6_combout\,
	cout => \inst4|Add6~7\);

-- Location: FF_X24_Y22_N7
\inst4|delay_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(3));

-- Location: LCCOMB_X24_Y22_N8
\inst4|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~8_combout\ = (\inst4|delay_counter\(4) & (\inst4|Add6~7\ $ (GND))) # (!\inst4|delay_counter\(4) & (!\inst4|Add6~7\ & VCC))
-- \inst4|Add6~9\ = CARRY((\inst4|delay_counter\(4) & !\inst4|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(4),
	datad => VCC,
	cin => \inst4|Add6~7\,
	combout => \inst4|Add6~8_combout\,
	cout => \inst4|Add6~9\);

-- Location: FF_X24_Y22_N9
\inst4|delay_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(4));

-- Location: LCCOMB_X24_Y22_N10
\inst4|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~10_combout\ = (\inst4|delay_counter\(5) & (!\inst4|Add6~9\)) # (!\inst4|delay_counter\(5) & ((\inst4|Add6~9\) # (GND)))
-- \inst4|Add6~11\ = CARRY((!\inst4|Add6~9\) # (!\inst4|delay_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(5),
	datad => VCC,
	cin => \inst4|Add6~9\,
	combout => \inst4|Add6~10_combout\,
	cout => \inst4|Add6~11\);

-- Location: LCCOMB_X23_Y21_N0
\inst4|delay_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|delay_counter~0_combout\ = (\inst4|Add6~10_combout\ & !\inst4|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add6~10_combout\,
	datad => \inst4|Equal10~10_combout\,
	combout => \inst4|delay_counter~0_combout\);

-- Location: FF_X23_Y21_N1
\inst4|delay_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|delay_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(5));

-- Location: LCCOMB_X24_Y22_N12
\inst4|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~12_combout\ = (\inst4|delay_counter\(6) & (\inst4|Add6~11\ $ (GND))) # (!\inst4|delay_counter\(6) & (!\inst4|Add6~11\ & VCC))
-- \inst4|Add6~13\ = CARRY((\inst4|delay_counter\(6) & !\inst4|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(6),
	datad => VCC,
	cin => \inst4|Add6~11\,
	combout => \inst4|Add6~12_combout\,
	cout => \inst4|Add6~13\);

-- Location: FF_X24_Y22_N13
\inst4|delay_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(6));

-- Location: LCCOMB_X24_Y22_N14
\inst4|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~14_combout\ = (\inst4|delay_counter\(7) & (!\inst4|Add6~13\)) # (!\inst4|delay_counter\(7) & ((\inst4|Add6~13\) # (GND)))
-- \inst4|Add6~15\ = CARRY((!\inst4|Add6~13\) # (!\inst4|delay_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(7),
	datad => VCC,
	cin => \inst4|Add6~13\,
	combout => \inst4|Add6~14_combout\,
	cout => \inst4|Add6~15\);

-- Location: FF_X24_Y22_N15
\inst4|delay_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(7));

-- Location: LCCOMB_X24_Y22_N16
\inst4|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~16_combout\ = (\inst4|delay_counter\(8) & (\inst4|Add6~15\ $ (GND))) # (!\inst4|delay_counter\(8) & (!\inst4|Add6~15\ & VCC))
-- \inst4|Add6~17\ = CARRY((\inst4|delay_counter\(8) & !\inst4|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(8),
	datad => VCC,
	cin => \inst4|Add6~15\,
	combout => \inst4|Add6~16_combout\,
	cout => \inst4|Add6~17\);

-- Location: FF_X24_Y22_N17
\inst4|delay_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(8));

-- Location: LCCOMB_X24_Y22_N18
\inst4|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~18_combout\ = (\inst4|delay_counter\(9) & (!\inst4|Add6~17\)) # (!\inst4|delay_counter\(9) & ((\inst4|Add6~17\) # (GND)))
-- \inst4|Add6~19\ = CARRY((!\inst4|Add6~17\) # (!\inst4|delay_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(9),
	datad => VCC,
	cin => \inst4|Add6~17\,
	combout => \inst4|Add6~18_combout\,
	cout => \inst4|Add6~19\);

-- Location: LCCOMB_X23_Y21_N14
\inst4|delay_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|delay_counter~1_combout\ = (\inst4|Add6~18_combout\ & !\inst4|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add6~18_combout\,
	datad => \inst4|Equal10~10_combout\,
	combout => \inst4|delay_counter~1_combout\);

-- Location: FF_X23_Y21_N15
\inst4|delay_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|delay_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(9));

-- Location: LCCOMB_X24_Y22_N20
\inst4|Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~20_combout\ = (\inst4|delay_counter\(10) & (\inst4|Add6~19\ $ (GND))) # (!\inst4|delay_counter\(10) & (!\inst4|Add6~19\ & VCC))
-- \inst4|Add6~21\ = CARRY((\inst4|delay_counter\(10) & !\inst4|Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(10),
	datad => VCC,
	cin => \inst4|Add6~19\,
	combout => \inst4|Add6~20_combout\,
	cout => \inst4|Add6~21\);

-- Location: LCCOMB_X23_Y21_N8
\inst4|delay_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|delay_counter~2_combout\ = (\inst4|Add6~20_combout\ & !\inst4|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add6~20_combout\,
	datad => \inst4|Equal10~10_combout\,
	combout => \inst4|delay_counter~2_combout\);

-- Location: FF_X23_Y21_N9
\inst4|delay_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|delay_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(10));

-- Location: LCCOMB_X24_Y22_N22
\inst4|Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~22_combout\ = (\inst4|delay_counter\(11) & (!\inst4|Add6~21\)) # (!\inst4|delay_counter\(11) & ((\inst4|Add6~21\) # (GND)))
-- \inst4|Add6~23\ = CARRY((!\inst4|Add6~21\) # (!\inst4|delay_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(11),
	datad => VCC,
	cin => \inst4|Add6~21\,
	combout => \inst4|Add6~22_combout\,
	cout => \inst4|Add6~23\);

-- Location: LCCOMB_X23_Y21_N30
\inst4|delay_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|delay_counter~3_combout\ = (\inst4|Add6~22_combout\ & !\inst4|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add6~22_combout\,
	datad => \inst4|Equal10~10_combout\,
	combout => \inst4|delay_counter~3_combout\);

-- Location: FF_X23_Y21_N31
\inst4|delay_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|delay_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(11));

-- Location: LCCOMB_X24_Y22_N24
\inst4|Add6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~24_combout\ = (\inst4|delay_counter\(12) & (\inst4|Add6~23\ $ (GND))) # (!\inst4|delay_counter\(12) & (!\inst4|Add6~23\ & VCC))
-- \inst4|Add6~25\ = CARRY((\inst4|delay_counter\(12) & !\inst4|Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(12),
	datad => VCC,
	cin => \inst4|Add6~23\,
	combout => \inst4|Add6~24_combout\,
	cout => \inst4|Add6~25\);

-- Location: FF_X24_Y22_N25
\inst4|delay_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(12));

-- Location: LCCOMB_X24_Y22_N26
\inst4|Add6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~26_combout\ = (\inst4|delay_counter\(13) & (!\inst4|Add6~25\)) # (!\inst4|delay_counter\(13) & ((\inst4|Add6~25\) # (GND)))
-- \inst4|Add6~27\ = CARRY((!\inst4|Add6~25\) # (!\inst4|delay_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(13),
	datad => VCC,
	cin => \inst4|Add6~25\,
	combout => \inst4|Add6~26_combout\,
	cout => \inst4|Add6~27\);

-- Location: FF_X24_Y22_N27
\inst4|delay_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(13));

-- Location: LCCOMB_X24_Y22_N28
\inst4|Add6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~28_combout\ = (\inst4|delay_counter\(14) & (\inst4|Add6~27\ $ (GND))) # (!\inst4|delay_counter\(14) & (!\inst4|Add6~27\ & VCC))
-- \inst4|Add6~29\ = CARRY((\inst4|delay_counter\(14) & !\inst4|Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(14),
	datad => VCC,
	cin => \inst4|Add6~27\,
	combout => \inst4|Add6~28_combout\,
	cout => \inst4|Add6~29\);

-- Location: LCCOMB_X23_Y21_N20
\inst4|delay_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|delay_counter~4_combout\ = (\inst4|Add6~28_combout\ & !\inst4|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add6~28_combout\,
	datad => \inst4|Equal10~10_combout\,
	combout => \inst4|delay_counter~4_combout\);

-- Location: FF_X23_Y21_N21
\inst4|delay_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|delay_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(14));

-- Location: LCCOMB_X24_Y22_N30
\inst4|Add6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~30_combout\ = (\inst4|delay_counter\(15) & (!\inst4|Add6~29\)) # (!\inst4|delay_counter\(15) & ((\inst4|Add6~29\) # (GND)))
-- \inst4|Add6~31\ = CARRY((!\inst4|Add6~29\) # (!\inst4|delay_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(15),
	datad => VCC,
	cin => \inst4|Add6~29\,
	combout => \inst4|Add6~30_combout\,
	cout => \inst4|Add6~31\);

-- Location: FF_X24_Y22_N31
\inst4|delay_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(15));

-- Location: LCCOMB_X24_Y21_N0
\inst4|Add6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~32_combout\ = (\inst4|delay_counter\(16) & (\inst4|Add6~31\ $ (GND))) # (!\inst4|delay_counter\(16) & (!\inst4|Add6~31\ & VCC))
-- \inst4|Add6~33\ = CARRY((\inst4|delay_counter\(16) & !\inst4|Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(16),
	datad => VCC,
	cin => \inst4|Add6~31\,
	combout => \inst4|Add6~32_combout\,
	cout => \inst4|Add6~33\);

-- Location: FF_X24_Y21_N1
\inst4|delay_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(16));

-- Location: LCCOMB_X24_Y21_N2
\inst4|Add6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~34_combout\ = (\inst4|delay_counter\(17) & (!\inst4|Add6~33\)) # (!\inst4|delay_counter\(17) & ((\inst4|Add6~33\) # (GND)))
-- \inst4|Add6~35\ = CARRY((!\inst4|Add6~33\) # (!\inst4|delay_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(17),
	datad => VCC,
	cin => \inst4|Add6~33\,
	combout => \inst4|Add6~34_combout\,
	cout => \inst4|Add6~35\);

-- Location: FF_X24_Y21_N3
\inst4|delay_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(17));

-- Location: LCCOMB_X24_Y21_N4
\inst4|Add6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~36_combout\ = (\inst4|delay_counter\(18) & (\inst4|Add6~35\ $ (GND))) # (!\inst4|delay_counter\(18) & (!\inst4|Add6~35\ & VCC))
-- \inst4|Add6~37\ = CARRY((\inst4|delay_counter\(18) & !\inst4|Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(18),
	datad => VCC,
	cin => \inst4|Add6~35\,
	combout => \inst4|Add6~36_combout\,
	cout => \inst4|Add6~37\);

-- Location: FF_X24_Y21_N5
\inst4|delay_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(18));

-- Location: LCCOMB_X24_Y21_N6
\inst4|Add6~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~38_combout\ = (\inst4|delay_counter\(19) & (!\inst4|Add6~37\)) # (!\inst4|delay_counter\(19) & ((\inst4|Add6~37\) # (GND)))
-- \inst4|Add6~39\ = CARRY((!\inst4|Add6~37\) # (!\inst4|delay_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(19),
	datad => VCC,
	cin => \inst4|Add6~37\,
	combout => \inst4|Add6~38_combout\,
	cout => \inst4|Add6~39\);

-- Location: FF_X24_Y21_N7
\inst4|delay_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(19));

-- Location: LCCOMB_X24_Y21_N8
\inst4|Add6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~40_combout\ = (\inst4|delay_counter\(20) & (\inst4|Add6~39\ $ (GND))) # (!\inst4|delay_counter\(20) & (!\inst4|Add6~39\ & VCC))
-- \inst4|Add6~41\ = CARRY((\inst4|delay_counter\(20) & !\inst4|Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(20),
	datad => VCC,
	cin => \inst4|Add6~39\,
	combout => \inst4|Add6~40_combout\,
	cout => \inst4|Add6~41\);

-- Location: FF_X24_Y21_N9
\inst4|delay_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(20));

-- Location: LCCOMB_X24_Y21_N10
\inst4|Add6~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~42_combout\ = (\inst4|delay_counter\(21) & (!\inst4|Add6~41\)) # (!\inst4|delay_counter\(21) & ((\inst4|Add6~41\) # (GND)))
-- \inst4|Add6~43\ = CARRY((!\inst4|Add6~41\) # (!\inst4|delay_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(21),
	datad => VCC,
	cin => \inst4|Add6~41\,
	combout => \inst4|Add6~42_combout\,
	cout => \inst4|Add6~43\);

-- Location: FF_X24_Y21_N11
\inst4|delay_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(21));

-- Location: LCCOMB_X24_Y21_N12
\inst4|Add6~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~44_combout\ = (\inst4|delay_counter\(22) & (\inst4|Add6~43\ $ (GND))) # (!\inst4|delay_counter\(22) & (!\inst4|Add6~43\ & VCC))
-- \inst4|Add6~45\ = CARRY((\inst4|delay_counter\(22) & !\inst4|Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(22),
	datad => VCC,
	cin => \inst4|Add6~43\,
	combout => \inst4|Add6~44_combout\,
	cout => \inst4|Add6~45\);

-- Location: FF_X24_Y21_N13
\inst4|delay_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(22));

-- Location: LCCOMB_X24_Y21_N14
\inst4|Add6~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~46_combout\ = (\inst4|delay_counter\(23) & (!\inst4|Add6~45\)) # (!\inst4|delay_counter\(23) & ((\inst4|Add6~45\) # (GND)))
-- \inst4|Add6~47\ = CARRY((!\inst4|Add6~45\) # (!\inst4|delay_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(23),
	datad => VCC,
	cin => \inst4|Add6~45\,
	combout => \inst4|Add6~46_combout\,
	cout => \inst4|Add6~47\);

-- Location: LCCOMB_X23_Y21_N10
\inst4|Equal10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal10~6_combout\ = (!\inst4|Add6~46_combout\ & (!\inst4|Add6~42_combout\ & (!\inst4|Add6~40_combout\ & !\inst4|Add6~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add6~46_combout\,
	datab => \inst4|Add6~42_combout\,
	datac => \inst4|Add6~40_combout\,
	datad => \inst4|Add6~44_combout\,
	combout => \inst4|Equal10~6_combout\);

-- Location: LCCOMB_X23_Y21_N16
\inst4|Equal10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal10~5_combout\ = (!\inst4|Add6~36_combout\ & (!\inst4|Add6~34_combout\ & (!\inst4|Add6~32_combout\ & !\inst4|Add6~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add6~36_combout\,
	datab => \inst4|Add6~34_combout\,
	datac => \inst4|Add6~32_combout\,
	datad => \inst4|Add6~38_combout\,
	combout => \inst4|Equal10~5_combout\);

-- Location: LCCOMB_X23_Y21_N22
\inst4|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal10~2_combout\ = (\inst4|Add6~18_combout\ & (!\inst4|Add6~16_combout\ & (\inst4|Add6~22_combout\ & \inst4|Add6~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add6~18_combout\,
	datab => \inst4|Add6~16_combout\,
	datac => \inst4|Add6~22_combout\,
	datad => \inst4|Add6~20_combout\,
	combout => \inst4|Equal10~2_combout\);

-- Location: LCCOMB_X23_Y22_N8
\inst4|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal10~0_combout\ = (!\inst4|Add6~2_combout\ & (!\inst4|Add6~0_combout\ & (!\inst4|Add6~4_combout\ & !\inst4|Add6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add6~2_combout\,
	datab => \inst4|Add6~0_combout\,
	datac => \inst4|Add6~4_combout\,
	datad => \inst4|Add6~6_combout\,
	combout => \inst4|Equal10~0_combout\);

-- Location: LCCOMB_X23_Y22_N30
\inst4|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal10~1_combout\ = (\inst4|Add6~10_combout\ & (!\inst4|Add6~8_combout\ & (!\inst4|Add6~14_combout\ & !\inst4|Add6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add6~10_combout\,
	datab => \inst4|Add6~8_combout\,
	datac => \inst4|Add6~14_combout\,
	datad => \inst4|Add6~12_combout\,
	combout => \inst4|Equal10~1_combout\);

-- Location: LCCOMB_X23_Y21_N24
\inst4|Equal10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal10~3_combout\ = (!\inst4|Add6~24_combout\ & (!\inst4|Add6~26_combout\ & (!\inst4|Add6~30_combout\ & \inst4|Add6~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add6~24_combout\,
	datab => \inst4|Add6~26_combout\,
	datac => \inst4|Add6~30_combout\,
	datad => \inst4|Add6~28_combout\,
	combout => \inst4|Equal10~3_combout\);

-- Location: LCCOMB_X23_Y21_N26
\inst4|Equal10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal10~4_combout\ = (\inst4|Equal10~2_combout\ & (\inst4|Equal10~0_combout\ & (\inst4|Equal10~1_combout\ & \inst4|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal10~2_combout\,
	datab => \inst4|Equal10~0_combout\,
	datac => \inst4|Equal10~1_combout\,
	datad => \inst4|Equal10~3_combout\,
	combout => \inst4|Equal10~4_combout\);

-- Location: FF_X24_Y21_N31
\inst4|delay_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(31));

-- Location: LCCOMB_X24_Y21_N16
\inst4|Add6~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~48_combout\ = (\inst4|delay_counter\(24) & (\inst4|Add6~47\ $ (GND))) # (!\inst4|delay_counter\(24) & (!\inst4|Add6~47\ & VCC))
-- \inst4|Add6~49\ = CARRY((\inst4|delay_counter\(24) & !\inst4|Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(24),
	datad => VCC,
	cin => \inst4|Add6~47\,
	combout => \inst4|Add6~48_combout\,
	cout => \inst4|Add6~49\);

-- Location: FF_X24_Y21_N17
\inst4|delay_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(24));

-- Location: LCCOMB_X24_Y21_N18
\inst4|Add6~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~50_combout\ = (\inst4|delay_counter\(25) & (!\inst4|Add6~49\)) # (!\inst4|delay_counter\(25) & ((\inst4|Add6~49\) # (GND)))
-- \inst4|Add6~51\ = CARRY((!\inst4|Add6~49\) # (!\inst4|delay_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(25),
	datad => VCC,
	cin => \inst4|Add6~49\,
	combout => \inst4|Add6~50_combout\,
	cout => \inst4|Add6~51\);

-- Location: FF_X24_Y21_N19
\inst4|delay_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(25));

-- Location: LCCOMB_X24_Y21_N20
\inst4|Add6~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~52_combout\ = (\inst4|delay_counter\(26) & (\inst4|Add6~51\ $ (GND))) # (!\inst4|delay_counter\(26) & (!\inst4|Add6~51\ & VCC))
-- \inst4|Add6~53\ = CARRY((\inst4|delay_counter\(26) & !\inst4|Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(26),
	datad => VCC,
	cin => \inst4|Add6~51\,
	combout => \inst4|Add6~52_combout\,
	cout => \inst4|Add6~53\);

-- Location: FF_X24_Y21_N21
\inst4|delay_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(26));

-- Location: LCCOMB_X24_Y21_N22
\inst4|Add6~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~54_combout\ = (\inst4|delay_counter\(27) & (!\inst4|Add6~53\)) # (!\inst4|delay_counter\(27) & ((\inst4|Add6~53\) # (GND)))
-- \inst4|Add6~55\ = CARRY((!\inst4|Add6~53\) # (!\inst4|delay_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(27),
	datad => VCC,
	cin => \inst4|Add6~53\,
	combout => \inst4|Add6~54_combout\,
	cout => \inst4|Add6~55\);

-- Location: FF_X24_Y21_N23
\inst4|delay_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(27));

-- Location: LCCOMB_X24_Y21_N24
\inst4|Add6~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~56_combout\ = (\inst4|delay_counter\(28) & (\inst4|Add6~55\ $ (GND))) # (!\inst4|delay_counter\(28) & (!\inst4|Add6~55\ & VCC))
-- \inst4|Add6~57\ = CARRY((\inst4|delay_counter\(28) & !\inst4|Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(28),
	datad => VCC,
	cin => \inst4|Add6~55\,
	combout => \inst4|Add6~56_combout\,
	cout => \inst4|Add6~57\);

-- Location: FF_X24_Y21_N25
\inst4|delay_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(28));

-- Location: LCCOMB_X24_Y21_N26
\inst4|Add6~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~58_combout\ = (\inst4|delay_counter\(29) & (!\inst4|Add6~57\)) # (!\inst4|delay_counter\(29) & ((\inst4|Add6~57\) # (GND)))
-- \inst4|Add6~59\ = CARRY((!\inst4|Add6~57\) # (!\inst4|delay_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(29),
	datad => VCC,
	cin => \inst4|Add6~57\,
	combout => \inst4|Add6~58_combout\,
	cout => \inst4|Add6~59\);

-- Location: FF_X24_Y21_N27
\inst4|delay_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(29));

-- Location: LCCOMB_X24_Y21_N28
\inst4|Add6~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~60_combout\ = (\inst4|delay_counter\(30) & (\inst4|Add6~59\ $ (GND))) # (!\inst4|delay_counter\(30) & (!\inst4|Add6~59\ & VCC))
-- \inst4|Add6~61\ = CARRY((\inst4|delay_counter\(30) & !\inst4|Add6~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(30),
	datad => VCC,
	cin => \inst4|Add6~59\,
	combout => \inst4|Add6~60_combout\,
	cout => \inst4|Add6~61\);

-- Location: FF_X24_Y21_N29
\inst4|delay_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add6~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|delay_counter\(30));

-- Location: LCCOMB_X24_Y21_N30
\inst4|Add6~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add6~62_combout\ = \inst4|delay_counter\(31) $ (\inst4|Add6~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(31),
	cin => \inst4|Add6~61\,
	combout => \inst4|Add6~62_combout\);

-- Location: LCCOMB_X23_Y21_N4
\inst4|Equal10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal10~7_combout\ = (!\inst4|Add6~52_combout\ & (!\inst4|Add6~48_combout\ & (!\inst4|Add6~50_combout\ & !\inst4|Add6~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add6~52_combout\,
	datab => \inst4|Add6~48_combout\,
	datac => \inst4|Add6~50_combout\,
	datad => \inst4|Add6~54_combout\,
	combout => \inst4|Equal10~7_combout\);

-- Location: LCCOMB_X23_Y21_N18
\inst4|Equal10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal10~8_combout\ = (!\inst4|Add6~58_combout\ & !\inst4|Add6~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add6~58_combout\,
	datad => \inst4|Add6~56_combout\,
	combout => \inst4|Equal10~8_combout\);

-- Location: LCCOMB_X23_Y21_N28
\inst4|Equal10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal10~9_combout\ = (!\inst4|Add6~62_combout\ & (!\inst4|Add6~60_combout\ & (\inst4|Equal10~7_combout\ & \inst4|Equal10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add6~62_combout\,
	datab => \inst4|Add6~60_combout\,
	datac => \inst4|Equal10~7_combout\,
	datad => \inst4|Equal10~8_combout\,
	combout => \inst4|Equal10~9_combout\);

-- Location: LCCOMB_X23_Y21_N2
\inst4|Equal10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal10~10_combout\ = (\inst4|Equal10~6_combout\ & (\inst4|Equal10~5_combout\ & (\inst4|Equal10~4_combout\ & \inst4|Equal10~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal10~6_combout\,
	datab => \inst4|Equal10~5_combout\,
	datac => \inst4|Equal10~4_combout\,
	datad => \inst4|Equal10~9_combout\,
	combout => \inst4|Equal10~10_combout\);

-- Location: LCCOMB_X30_Y18_N14
\inst4|StartTx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|StartTx~0_combout\ = (\inst|state.STRTrx~q\) # ((\inst4|StartTx~q\ & !\inst4|Equal10~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.STRTrx~q\,
	datac => \inst4|StartTx~q\,
	datad => \inst4|Equal10~10_combout\,
	combout => \inst4|StartTx~0_combout\);

-- Location: FF_X30_Y18_N15
\inst4|StartTx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|StartTx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|StartTx~q\);

-- Location: LCCOMB_X34_Y18_N0
\inst4|process_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_6~0_combout\ = (!\inst4|wt~q\ & \inst4|StartTx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|wt~q\,
	datad => \inst4|StartTx~q\,
	combout => \inst4|process_6~0_combout\);

-- Location: FF_X36_Y19_N25
\inst4|EC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~56_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(28));

-- Location: LCCOMB_X36_Y20_N0
\inst4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~0_combout\ = \inst4|EC\(0) $ (VCC)
-- \inst4|Add0~1\ = CARRY(\inst4|EC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|EC\(0),
	datad => VCC,
	combout => \inst4|Add0~0_combout\,
	cout => \inst4|Add0~1\);

-- Location: LCCOMB_X35_Y19_N22
\inst4|EC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|EC~3_combout\ = (\inst4|Add0~0_combout\ & !\inst4|state_csh~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~0_combout\,
	datad => \inst4|state_csh~12_combout\,
	combout => \inst4|EC~3_combout\);

-- Location: FF_X35_Y19_N23
\inst4|EC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|EC~3_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(0));

-- Location: LCCOMB_X36_Y20_N2
\inst4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~2_combout\ = (\inst4|EC\(1) & (!\inst4|Add0~1\)) # (!\inst4|EC\(1) & ((\inst4|Add0~1\) # (GND)))
-- \inst4|Add0~3\ = CARRY((!\inst4|Add0~1\) # (!\inst4|EC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(1),
	datad => VCC,
	cin => \inst4|Add0~1\,
	combout => \inst4|Add0~2_combout\,
	cout => \inst4|Add0~3\);

-- Location: LCCOMB_X35_Y19_N10
\inst4|EC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|EC~5_combout\ = (\inst4|Add0~2_combout\ & !\inst4|state_csh~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add0~2_combout\,
	datad => \inst4|state_csh~12_combout\,
	combout => \inst4|EC~5_combout\);

-- Location: FF_X35_Y19_N11
\inst4|EC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|EC~5_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(1));

-- Location: LCCOMB_X36_Y20_N4
\inst4|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~4_combout\ = (\inst4|EC\(2) & (\inst4|Add0~3\ $ (GND))) # (!\inst4|EC\(2) & (!\inst4|Add0~3\ & VCC))
-- \inst4|Add0~5\ = CARRY((\inst4|EC\(2) & !\inst4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(2),
	datad => VCC,
	cin => \inst4|Add0~3\,
	combout => \inst4|Add0~4_combout\,
	cout => \inst4|Add0~5\);

-- Location: FF_X36_Y20_N5
\inst4|EC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~4_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(2));

-- Location: LCCOMB_X36_Y20_N6
\inst4|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~6_combout\ = (\inst4|EC\(3) & (!\inst4|Add0~5\)) # (!\inst4|EC\(3) & ((\inst4|Add0~5\) # (GND)))
-- \inst4|Add0~7\ = CARRY((!\inst4|Add0~5\) # (!\inst4|EC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|EC\(3),
	datad => VCC,
	cin => \inst4|Add0~5\,
	combout => \inst4|Add0~6_combout\,
	cout => \inst4|Add0~7\);

-- Location: FF_X36_Y20_N7
\inst4|EC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~6_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(3));

-- Location: LCCOMB_X36_Y20_N8
\inst4|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~8_combout\ = (\inst4|EC\(4) & (\inst4|Add0~7\ $ (GND))) # (!\inst4|EC\(4) & (!\inst4|Add0~7\ & VCC))
-- \inst4|Add0~9\ = CARRY((\inst4|EC\(4) & !\inst4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|EC\(4),
	datad => VCC,
	cin => \inst4|Add0~7\,
	combout => \inst4|Add0~8_combout\,
	cout => \inst4|Add0~9\);

-- Location: LCCOMB_X35_Y19_N0
\inst4|EC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|EC~4_combout\ = (\inst4|Add0~8_combout\ & !\inst4|state_csh~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~8_combout\,
	datad => \inst4|state_csh~12_combout\,
	combout => \inst4|EC~4_combout\);

-- Location: FF_X35_Y19_N1
\inst4|EC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|EC~4_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(4));

-- Location: LCCOMB_X36_Y20_N10
\inst4|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~10_combout\ = (\inst4|EC\(5) & (!\inst4|Add0~9\)) # (!\inst4|EC\(5) & ((\inst4|Add0~9\) # (GND)))
-- \inst4|Add0~11\ = CARRY((!\inst4|Add0~9\) # (!\inst4|EC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|EC\(5),
	datad => VCC,
	cin => \inst4|Add0~9\,
	combout => \inst4|Add0~10_combout\,
	cout => \inst4|Add0~11\);

-- Location: FF_X36_Y20_N11
\inst4|EC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~10_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(5));

-- Location: LCCOMB_X36_Y20_N12
\inst4|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~12_combout\ = (\inst4|EC\(6) & (\inst4|Add0~11\ $ (GND))) # (!\inst4|EC\(6) & (!\inst4|Add0~11\ & VCC))
-- \inst4|Add0~13\ = CARRY((\inst4|EC\(6) & !\inst4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|EC\(6),
	datad => VCC,
	cin => \inst4|Add0~11\,
	combout => \inst4|Add0~12_combout\,
	cout => \inst4|Add0~13\);

-- Location: FF_X36_Y20_N13
\inst4|EC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~12_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(6));

-- Location: LCCOMB_X36_Y20_N14
\inst4|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~14_combout\ = (\inst4|EC\(7) & (!\inst4|Add0~13\)) # (!\inst4|EC\(7) & ((\inst4|Add0~13\) # (GND)))
-- \inst4|Add0~15\ = CARRY((!\inst4|Add0~13\) # (!\inst4|EC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(7),
	datad => VCC,
	cin => \inst4|Add0~13\,
	combout => \inst4|Add0~14_combout\,
	cout => \inst4|Add0~15\);

-- Location: FF_X36_Y20_N15
\inst4|EC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~14_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(7));

-- Location: LCCOMB_X36_Y20_N16
\inst4|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~16_combout\ = (\inst4|EC\(8) & (\inst4|Add0~15\ $ (GND))) # (!\inst4|EC\(8) & (!\inst4|Add0~15\ & VCC))
-- \inst4|Add0~17\ = CARRY((\inst4|EC\(8) & !\inst4|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(8),
	datad => VCC,
	cin => \inst4|Add0~15\,
	combout => \inst4|Add0~16_combout\,
	cout => \inst4|Add0~17\);

-- Location: FF_X36_Y20_N17
\inst4|EC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~16_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(8));

-- Location: LCCOMB_X36_Y20_N18
\inst4|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~18_combout\ = (\inst4|EC\(9) & (!\inst4|Add0~17\)) # (!\inst4|EC\(9) & ((\inst4|Add0~17\) # (GND)))
-- \inst4|Add0~19\ = CARRY((!\inst4|Add0~17\) # (!\inst4|EC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(9),
	datad => VCC,
	cin => \inst4|Add0~17\,
	combout => \inst4|Add0~18_combout\,
	cout => \inst4|Add0~19\);

-- Location: FF_X36_Y20_N19
\inst4|EC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~18_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(9));

-- Location: LCCOMB_X36_Y20_N20
\inst4|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~20_combout\ = (\inst4|EC\(10) & (\inst4|Add0~19\ $ (GND))) # (!\inst4|EC\(10) & (!\inst4|Add0~19\ & VCC))
-- \inst4|Add0~21\ = CARRY((\inst4|EC\(10) & !\inst4|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(10),
	datad => VCC,
	cin => \inst4|Add0~19\,
	combout => \inst4|Add0~20_combout\,
	cout => \inst4|Add0~21\);

-- Location: FF_X36_Y20_N21
\inst4|EC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~20_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(10));

-- Location: LCCOMB_X36_Y20_N22
\inst4|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~22_combout\ = (\inst4|EC\(11) & (!\inst4|Add0~21\)) # (!\inst4|EC\(11) & ((\inst4|Add0~21\) # (GND)))
-- \inst4|Add0~23\ = CARRY((!\inst4|Add0~21\) # (!\inst4|EC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|EC\(11),
	datad => VCC,
	cin => \inst4|Add0~21\,
	combout => \inst4|Add0~22_combout\,
	cout => \inst4|Add0~23\);

-- Location: FF_X36_Y20_N23
\inst4|EC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~22_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(11));

-- Location: LCCOMB_X36_Y20_N24
\inst4|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~24_combout\ = (\inst4|EC\(12) & (\inst4|Add0~23\ $ (GND))) # (!\inst4|EC\(12) & (!\inst4|Add0~23\ & VCC))
-- \inst4|Add0~25\ = CARRY((\inst4|EC\(12) & !\inst4|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(12),
	datad => VCC,
	cin => \inst4|Add0~23\,
	combout => \inst4|Add0~24_combout\,
	cout => \inst4|Add0~25\);

-- Location: FF_X36_Y20_N25
\inst4|EC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~24_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(12));

-- Location: LCCOMB_X36_Y20_N26
\inst4|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~26_combout\ = (\inst4|EC\(13) & (!\inst4|Add0~25\)) # (!\inst4|EC\(13) & ((\inst4|Add0~25\) # (GND)))
-- \inst4|Add0~27\ = CARRY((!\inst4|Add0~25\) # (!\inst4|EC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|EC\(13),
	datad => VCC,
	cin => \inst4|Add0~25\,
	combout => \inst4|Add0~26_combout\,
	cout => \inst4|Add0~27\);

-- Location: FF_X36_Y20_N27
\inst4|EC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~26_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(13));

-- Location: LCCOMB_X36_Y20_N28
\inst4|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~28_combout\ = (\inst4|EC\(14) & (\inst4|Add0~27\ $ (GND))) # (!\inst4|EC\(14) & (!\inst4|Add0~27\ & VCC))
-- \inst4|Add0~29\ = CARRY((\inst4|EC\(14) & !\inst4|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(14),
	datad => VCC,
	cin => \inst4|Add0~27\,
	combout => \inst4|Add0~28_combout\,
	cout => \inst4|Add0~29\);

-- Location: FF_X36_Y20_N29
\inst4|EC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~28_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(14));

-- Location: LCCOMB_X36_Y20_N30
\inst4|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~30_combout\ = (\inst4|EC\(15) & (!\inst4|Add0~29\)) # (!\inst4|EC\(15) & ((\inst4|Add0~29\) # (GND)))
-- \inst4|Add0~31\ = CARRY((!\inst4|Add0~29\) # (!\inst4|EC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|EC\(15),
	datad => VCC,
	cin => \inst4|Add0~29\,
	combout => \inst4|Add0~30_combout\,
	cout => \inst4|Add0~31\);

-- Location: FF_X36_Y20_N31
\inst4|EC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~30_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(15));

-- Location: LCCOMB_X36_Y19_N0
\inst4|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~32_combout\ = (\inst4|EC\(16) & (\inst4|Add0~31\ $ (GND))) # (!\inst4|EC\(16) & (!\inst4|Add0~31\ & VCC))
-- \inst4|Add0~33\ = CARRY((\inst4|EC\(16) & !\inst4|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(16),
	datad => VCC,
	cin => \inst4|Add0~31\,
	combout => \inst4|Add0~32_combout\,
	cout => \inst4|Add0~33\);

-- Location: FF_X36_Y19_N1
\inst4|EC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~32_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(16));

-- Location: LCCOMB_X36_Y19_N2
\inst4|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~34_combout\ = (\inst4|EC\(17) & (!\inst4|Add0~33\)) # (!\inst4|EC\(17) & ((\inst4|Add0~33\) # (GND)))
-- \inst4|Add0~35\ = CARRY((!\inst4|Add0~33\) # (!\inst4|EC\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(17),
	datad => VCC,
	cin => \inst4|Add0~33\,
	combout => \inst4|Add0~34_combout\,
	cout => \inst4|Add0~35\);

-- Location: FF_X36_Y19_N3
\inst4|EC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~34_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(17));

-- Location: LCCOMB_X36_Y19_N4
\inst4|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~36_combout\ = (\inst4|EC\(18) & (\inst4|Add0~35\ $ (GND))) # (!\inst4|EC\(18) & (!\inst4|Add0~35\ & VCC))
-- \inst4|Add0~37\ = CARRY((\inst4|EC\(18) & !\inst4|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(18),
	datad => VCC,
	cin => \inst4|Add0~35\,
	combout => \inst4|Add0~36_combout\,
	cout => \inst4|Add0~37\);

-- Location: FF_X36_Y19_N5
\inst4|EC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~36_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(18));

-- Location: LCCOMB_X36_Y19_N6
\inst4|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~38_combout\ = (\inst4|EC\(19) & (!\inst4|Add0~37\)) # (!\inst4|EC\(19) & ((\inst4|Add0~37\) # (GND)))
-- \inst4|Add0~39\ = CARRY((!\inst4|Add0~37\) # (!\inst4|EC\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|EC\(19),
	datad => VCC,
	cin => \inst4|Add0~37\,
	combout => \inst4|Add0~38_combout\,
	cout => \inst4|Add0~39\);

-- Location: FF_X36_Y19_N7
\inst4|EC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~38_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(19));

-- Location: LCCOMB_X36_Y19_N8
\inst4|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~40_combout\ = (\inst4|EC\(20) & (\inst4|Add0~39\ $ (GND))) # (!\inst4|EC\(20) & (!\inst4|Add0~39\ & VCC))
-- \inst4|Add0~41\ = CARRY((\inst4|EC\(20) & !\inst4|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(20),
	datad => VCC,
	cin => \inst4|Add0~39\,
	combout => \inst4|Add0~40_combout\,
	cout => \inst4|Add0~41\);

-- Location: FF_X36_Y19_N9
\inst4|EC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~40_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(20));

-- Location: LCCOMB_X36_Y19_N10
\inst4|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~42_combout\ = (\inst4|EC\(21) & (!\inst4|Add0~41\)) # (!\inst4|EC\(21) & ((\inst4|Add0~41\) # (GND)))
-- \inst4|Add0~43\ = CARRY((!\inst4|Add0~41\) # (!\inst4|EC\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|EC\(21),
	datad => VCC,
	cin => \inst4|Add0~41\,
	combout => \inst4|Add0~42_combout\,
	cout => \inst4|Add0~43\);

-- Location: FF_X36_Y19_N11
\inst4|EC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~42_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(21));

-- Location: LCCOMB_X36_Y19_N12
\inst4|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~44_combout\ = (\inst4|EC\(22) & (\inst4|Add0~43\ $ (GND))) # (!\inst4|EC\(22) & (!\inst4|Add0~43\ & VCC))
-- \inst4|Add0~45\ = CARRY((\inst4|EC\(22) & !\inst4|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|EC\(22),
	datad => VCC,
	cin => \inst4|Add0~43\,
	combout => \inst4|Add0~44_combout\,
	cout => \inst4|Add0~45\);

-- Location: FF_X36_Y19_N13
\inst4|EC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~44_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(22));

-- Location: LCCOMB_X36_Y19_N14
\inst4|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~46_combout\ = (\inst4|EC\(23) & (!\inst4|Add0~45\)) # (!\inst4|EC\(23) & ((\inst4|Add0~45\) # (GND)))
-- \inst4|Add0~47\ = CARRY((!\inst4|Add0~45\) # (!\inst4|EC\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(23),
	datad => VCC,
	cin => \inst4|Add0~45\,
	combout => \inst4|Add0~46_combout\,
	cout => \inst4|Add0~47\);

-- Location: FF_X36_Y19_N15
\inst4|EC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~46_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(23));

-- Location: LCCOMB_X36_Y19_N16
\inst4|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~48_combout\ = (\inst4|EC\(24) & (\inst4|Add0~47\ $ (GND))) # (!\inst4|EC\(24) & (!\inst4|Add0~47\ & VCC))
-- \inst4|Add0~49\ = CARRY((\inst4|EC\(24) & !\inst4|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(24),
	datad => VCC,
	cin => \inst4|Add0~47\,
	combout => \inst4|Add0~48_combout\,
	cout => \inst4|Add0~49\);

-- Location: FF_X36_Y19_N17
\inst4|EC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~48_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(24));

-- Location: LCCOMB_X36_Y19_N18
\inst4|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~50_combout\ = (\inst4|EC\(25) & (!\inst4|Add0~49\)) # (!\inst4|EC\(25) & ((\inst4|Add0~49\) # (GND)))
-- \inst4|Add0~51\ = CARRY((!\inst4|Add0~49\) # (!\inst4|EC\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(25),
	datad => VCC,
	cin => \inst4|Add0~49\,
	combout => \inst4|Add0~50_combout\,
	cout => \inst4|Add0~51\);

-- Location: FF_X36_Y19_N19
\inst4|EC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~50_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(25));

-- Location: LCCOMB_X36_Y19_N20
\inst4|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~52_combout\ = (\inst4|EC\(26) & (\inst4|Add0~51\ $ (GND))) # (!\inst4|EC\(26) & (!\inst4|Add0~51\ & VCC))
-- \inst4|Add0~53\ = CARRY((\inst4|EC\(26) & !\inst4|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(26),
	datad => VCC,
	cin => \inst4|Add0~51\,
	combout => \inst4|Add0~52_combout\,
	cout => \inst4|Add0~53\);

-- Location: FF_X36_Y19_N21
\inst4|EC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~52_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(26));

-- Location: LCCOMB_X36_Y19_N22
\inst4|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~54_combout\ = (\inst4|EC\(27) & (!\inst4|Add0~53\)) # (!\inst4|EC\(27) & ((\inst4|Add0~53\) # (GND)))
-- \inst4|Add0~55\ = CARRY((!\inst4|Add0~53\) # (!\inst4|EC\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|EC\(27),
	datad => VCC,
	cin => \inst4|Add0~53\,
	combout => \inst4|Add0~54_combout\,
	cout => \inst4|Add0~55\);

-- Location: FF_X36_Y19_N23
\inst4|EC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~54_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(27));

-- Location: LCCOMB_X36_Y19_N24
\inst4|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~56_combout\ = (\inst4|EC\(28) & (\inst4|Add0~55\ $ (GND))) # (!\inst4|EC\(28) & (!\inst4|Add0~55\ & VCC))
-- \inst4|Add0~57\ = CARRY((\inst4|EC\(28) & !\inst4|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(28),
	datad => VCC,
	cin => \inst4|Add0~55\,
	combout => \inst4|Add0~56_combout\,
	cout => \inst4|Add0~57\);

-- Location: FF_X36_Y19_N29
\inst4|EC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~60_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(30));

-- Location: LCCOMB_X36_Y19_N26
\inst4|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~58_combout\ = (\inst4|EC\(29) & (!\inst4|Add0~57\)) # (!\inst4|EC\(29) & ((\inst4|Add0~57\) # (GND)))
-- \inst4|Add0~59\ = CARRY((!\inst4|Add0~57\) # (!\inst4|EC\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|EC\(29),
	datad => VCC,
	cin => \inst4|Add0~57\,
	combout => \inst4|Add0~58_combout\,
	cout => \inst4|Add0~59\);

-- Location: FF_X36_Y19_N27
\inst4|EC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~58_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(29));

-- Location: LCCOMB_X36_Y19_N28
\inst4|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~60_combout\ = (\inst4|EC\(30) & (\inst4|Add0~59\ $ (GND))) # (!\inst4|EC\(30) & (!\inst4|Add0~59\ & VCC))
-- \inst4|Add0~61\ = CARRY((\inst4|EC\(30) & !\inst4|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|EC\(30),
	datad => VCC,
	cin => \inst4|Add0~59\,
	combout => \inst4|Add0~60_combout\,
	cout => \inst4|Add0~61\);

-- Location: LCCOMB_X35_Y19_N12
\inst4|state_csh~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csh~11_combout\ = (!\inst4|Add0~56_combout\ & (!\inst4|Add0~60_combout\ & (!\inst4|Add0~54_combout\ & !\inst4|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~56_combout\,
	datab => \inst4|Add0~60_combout\,
	datac => \inst4|Add0~54_combout\,
	datad => \inst4|Add0~58_combout\,
	combout => \inst4|state_csh~11_combout\);

-- Location: LCCOMB_X35_Y20_N30
\inst4|state_csh~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csh~4_combout\ = (!\inst4|Add0~20_combout\ & (!\inst4|Add0~18_combout\ & (!\inst4|Add0~14_combout\ & !\inst4|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~20_combout\,
	datab => \inst4|Add0~18_combout\,
	datac => \inst4|Add0~14_combout\,
	datad => \inst4|Add0~16_combout\,
	combout => \inst4|state_csh~4_combout\);

-- Location: LCCOMB_X35_Y20_N24
\inst4|state_csh~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csh~3_combout\ = (!\inst4|Add0~6_combout\ & (!\inst4|Add0~12_combout\ & (!\inst4|Add0~10_combout\ & !\inst4|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~6_combout\,
	datab => \inst4|Add0~12_combout\,
	datac => \inst4|Add0~10_combout\,
	datad => \inst4|Add0~4_combout\,
	combout => \inst4|state_csh~3_combout\);

-- Location: LCCOMB_X35_Y19_N28
\inst4|state_csh~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csh~2_combout\ = (\inst4|Add0~0_combout\ & (!\inst4|state_csh~q\ & (\inst4|Add0~8_combout\ & !\inst4|Add0~2_combout\))) # (!\inst4|Add0~0_combout\ & (\inst4|state_csh~q\ & (!\inst4|Add0~8_combout\ & \inst4|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~0_combout\,
	datab => \inst4|state_csh~q\,
	datac => \inst4|Add0~8_combout\,
	datad => \inst4|Add0~2_combout\,
	combout => \inst4|state_csh~2_combout\);

-- Location: LCCOMB_X35_Y19_N18
\inst4|state_csh~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csh~5_combout\ = (\inst4|state_csh~4_combout\ & (\inst4|state_csh~3_combout\ & \inst4|state_csh~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state_csh~4_combout\,
	datac => \inst4|state_csh~3_combout\,
	datad => \inst4|state_csh~2_combout\,
	combout => \inst4|state_csh~5_combout\);

-- Location: FF_X36_Y19_N31
\inst4|EC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add0~62_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|EC\(31));

-- Location: LCCOMB_X36_Y19_N30
\inst4|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~62_combout\ = \inst4|EC\(31) $ (\inst4|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|EC\(31),
	cin => \inst4|Add0~61\,
	combout => \inst4|Add0~62_combout\);

-- Location: LCCOMB_X37_Y19_N12
\inst4|state_csh~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csh~7_combout\ = (!\inst4|Add0~34_combout\ & (!\inst4|Add0~36_combout\ & (!\inst4|Add0~32_combout\ & !\inst4|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~34_combout\,
	datab => \inst4|Add0~36_combout\,
	datac => \inst4|Add0~32_combout\,
	datad => \inst4|Add0~30_combout\,
	combout => \inst4|state_csh~7_combout\);

-- Location: LCCOMB_X37_Y20_N24
\inst4|state_csh~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csh~6_combout\ = (!\inst4|Add0~26_combout\ & (!\inst4|Add0~22_combout\ & (!\inst4|Add0~28_combout\ & !\inst4|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~26_combout\,
	datab => \inst4|Add0~22_combout\,
	datac => \inst4|Add0~28_combout\,
	datad => \inst4|Add0~24_combout\,
	combout => \inst4|state_csh~6_combout\);

-- Location: LCCOMB_X37_Y19_N8
\inst4|state_csh~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csh~9_combout\ = (!\inst4|Add0~46_combout\ & (!\inst4|Add0~50_combout\ & (!\inst4|Add0~48_combout\ & !\inst4|Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~46_combout\,
	datab => \inst4|Add0~50_combout\,
	datac => \inst4|Add0~48_combout\,
	datad => \inst4|Add0~52_combout\,
	combout => \inst4|state_csh~9_combout\);

-- Location: LCCOMB_X37_Y19_N18
\inst4|state_csh~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csh~8_combout\ = (!\inst4|Add0~44_combout\ & (!\inst4|Add0~38_combout\ & (!\inst4|Add0~40_combout\ & !\inst4|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~44_combout\,
	datab => \inst4|Add0~38_combout\,
	datac => \inst4|Add0~40_combout\,
	datad => \inst4|Add0~42_combout\,
	combout => \inst4|state_csh~8_combout\);

-- Location: LCCOMB_X37_Y19_N10
\inst4|state_csh~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csh~10_combout\ = (\inst4|state_csh~7_combout\ & (\inst4|state_csh~6_combout\ & (\inst4|state_csh~9_combout\ & \inst4|state_csh~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state_csh~7_combout\,
	datab => \inst4|state_csh~6_combout\,
	datac => \inst4|state_csh~9_combout\,
	datad => \inst4|state_csh~8_combout\,
	combout => \inst4|state_csh~10_combout\);

-- Location: LCCOMB_X35_Y19_N2
\inst4|state_csh~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csh~12_combout\ = (\inst4|state_csh~11_combout\ & (\inst4|state_csh~5_combout\ & (!\inst4|Add0~62_combout\ & \inst4|state_csh~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state_csh~11_combout\,
	datab => \inst4|state_csh~5_combout\,
	datac => \inst4|Add0~62_combout\,
	datad => \inst4|state_csh~10_combout\,
	combout => \inst4|state_csh~12_combout\);

-- Location: LCCOMB_X35_Y19_N24
\inst4|state_csh~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csh~13_combout\ = \inst4|state_csh~q\ $ (((!\inst4|wt~q\ & (\inst4|StartTx~q\ & \inst4|state_csh~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|wt~q\,
	datab => \inst4|StartTx~q\,
	datac => \inst4|state_csh~q\,
	datad => \inst4|state_csh~12_combout\,
	combout => \inst4|state_csh~13_combout\);

-- Location: FF_X35_Y19_N25
\inst4|state_csh\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|state_csh~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state_csh~q\);

-- Location: FF_X34_Y18_N17
\inst4|CSU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst4|state_csh~q\,
	sload => VCC,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CSU~q\);

-- Location: LCCOMB_X34_Y17_N4
\inst4|EC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|EC~0_combout\ = (\inst4|Add1~0_combout\ & !\inst4|state_csl~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add1~0_combout\,
	datad => \inst4|state_csl~12_combout\,
	combout => \inst4|EC~0_combout\);

-- Location: FF_X34_Y17_N5
\inst4|process_1:EC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|EC~0_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[0]~q\);

-- Location: LCCOMB_X35_Y18_N0
\inst4|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~0_combout\ = \inst4|process_1:EC[0]~q\ $ (VCC)
-- \inst4|Add1~1\ = CARRY(\inst4|process_1:EC[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[0]~q\,
	datad => VCC,
	combout => \inst4|Add1~0_combout\,
	cout => \inst4|Add1~1\);

-- Location: LCCOMB_X34_Y17_N28
\inst4|EC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|EC~2_combout\ = (\inst4|Add1~2_combout\ & !\inst4|state_csl~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add1~2_combout\,
	datad => \inst4|state_csl~12_combout\,
	combout => \inst4|EC~2_combout\);

-- Location: FF_X34_Y17_N29
\inst4|process_1:EC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|EC~2_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[1]~q\);

-- Location: LCCOMB_X35_Y18_N2
\inst4|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~2_combout\ = (\inst4|process_1:EC[1]~q\ & (!\inst4|Add1~1\)) # (!\inst4|process_1:EC[1]~q\ & ((\inst4|Add1~1\) # (GND)))
-- \inst4|Add1~3\ = CARRY((!\inst4|Add1~1\) # (!\inst4|process_1:EC[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[1]~q\,
	datad => VCC,
	cin => \inst4|Add1~1\,
	combout => \inst4|Add1~2_combout\,
	cout => \inst4|Add1~3\);

-- Location: LCCOMB_X34_Y17_N14
\inst4|EC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|EC~1_combout\ = (\inst4|Add1~8_combout\ & !\inst4|state_csl~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add1~8_combout\,
	datad => \inst4|state_csl~12_combout\,
	combout => \inst4|EC~1_combout\);

-- Location: FF_X34_Y17_N15
\inst4|process_1:EC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|EC~1_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[4]~q\);

-- Location: LCCOMB_X35_Y18_N4
\inst4|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~4_combout\ = (\inst4|process_1:EC[2]~q\ & (\inst4|Add1~3\ $ (GND))) # (!\inst4|process_1:EC[2]~q\ & (!\inst4|Add1~3\ & VCC))
-- \inst4|Add1~5\ = CARRY((\inst4|process_1:EC[2]~q\ & !\inst4|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[2]~q\,
	datad => VCC,
	cin => \inst4|Add1~3\,
	combout => \inst4|Add1~4_combout\,
	cout => \inst4|Add1~5\);

-- Location: FF_X35_Y18_N5
\inst4|process_1:EC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~4_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[2]~q\);

-- Location: LCCOMB_X35_Y18_N6
\inst4|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~6_combout\ = (\inst4|process_1:EC[3]~q\ & (!\inst4|Add1~5\)) # (!\inst4|process_1:EC[3]~q\ & ((\inst4|Add1~5\) # (GND)))
-- \inst4|Add1~7\ = CARRY((!\inst4|Add1~5\) # (!\inst4|process_1:EC[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_1:EC[3]~q\,
	datad => VCC,
	cin => \inst4|Add1~5\,
	combout => \inst4|Add1~6_combout\,
	cout => \inst4|Add1~7\);

-- Location: FF_X35_Y18_N7
\inst4|process_1:EC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~6_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[3]~q\);

-- Location: LCCOMB_X35_Y18_N8
\inst4|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~8_combout\ = (\inst4|process_1:EC[4]~q\ & (\inst4|Add1~7\ $ (GND))) # (!\inst4|process_1:EC[4]~q\ & (!\inst4|Add1~7\ & VCC))
-- \inst4|Add1~9\ = CARRY((\inst4|process_1:EC[4]~q\ & !\inst4|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_1:EC[4]~q\,
	datad => VCC,
	cin => \inst4|Add1~7\,
	combout => \inst4|Add1~8_combout\,
	cout => \inst4|Add1~9\);

-- Location: LCCOMB_X34_Y17_N18
\inst4|state_csl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csl~2_combout\ = (\inst4|state_csl~q\ & (!\inst4|Add1~0_combout\ & (\inst4|Add1~2_combout\ & !\inst4|Add1~8_combout\))) # (!\inst4|state_csl~q\ & (\inst4|Add1~0_combout\ & (!\inst4|Add1~2_combout\ & \inst4|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state_csl~q\,
	datab => \inst4|Add1~0_combout\,
	datac => \inst4|Add1~2_combout\,
	datad => \inst4|Add1~8_combout\,
	combout => \inst4|state_csl~2_combout\);

-- Location: FF_X35_Y18_N13
\inst4|process_1:EC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~12_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[6]~q\);

-- Location: LCCOMB_X35_Y18_N10
\inst4|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~10_combout\ = (\inst4|process_1:EC[5]~q\ & (!\inst4|Add1~9\)) # (!\inst4|process_1:EC[5]~q\ & ((\inst4|Add1~9\) # (GND)))
-- \inst4|Add1~11\ = CARRY((!\inst4|Add1~9\) # (!\inst4|process_1:EC[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_1:EC[5]~q\,
	datad => VCC,
	cin => \inst4|Add1~9\,
	combout => \inst4|Add1~10_combout\,
	cout => \inst4|Add1~11\);

-- Location: FF_X35_Y18_N11
\inst4|process_1:EC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~10_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[5]~q\);

-- Location: LCCOMB_X35_Y18_N12
\inst4|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~12_combout\ = (\inst4|process_1:EC[6]~q\ & (\inst4|Add1~11\ $ (GND))) # (!\inst4|process_1:EC[6]~q\ & (!\inst4|Add1~11\ & VCC))
-- \inst4|Add1~13\ = CARRY((\inst4|process_1:EC[6]~q\ & !\inst4|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_1:EC[6]~q\,
	datad => VCC,
	cin => \inst4|Add1~11\,
	combout => \inst4|Add1~12_combout\,
	cout => \inst4|Add1~13\);

-- Location: LCCOMB_X34_Y18_N18
\inst4|state_csl~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csl~3_combout\ = (!\inst4|Add1~6_combout\ & (!\inst4|Add1~12_combout\ & (!\inst4|Add1~10_combout\ & !\inst4|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add1~6_combout\,
	datab => \inst4|Add1~12_combout\,
	datac => \inst4|Add1~10_combout\,
	datad => \inst4|Add1~4_combout\,
	combout => \inst4|state_csl~3_combout\);

-- Location: FF_X35_Y18_N21
\inst4|process_1:EC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~20_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[10]~q\);

-- Location: LCCOMB_X35_Y18_N14
\inst4|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~14_combout\ = (\inst4|process_1:EC[7]~q\ & (!\inst4|Add1~13\)) # (!\inst4|process_1:EC[7]~q\ & ((\inst4|Add1~13\) # (GND)))
-- \inst4|Add1~15\ = CARRY((!\inst4|Add1~13\) # (!\inst4|process_1:EC[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[7]~q\,
	datad => VCC,
	cin => \inst4|Add1~13\,
	combout => \inst4|Add1~14_combout\,
	cout => \inst4|Add1~15\);

-- Location: FF_X35_Y18_N15
\inst4|process_1:EC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~14_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[7]~q\);

-- Location: LCCOMB_X35_Y18_N16
\inst4|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~16_combout\ = (\inst4|process_1:EC[8]~q\ & (\inst4|Add1~15\ $ (GND))) # (!\inst4|process_1:EC[8]~q\ & (!\inst4|Add1~15\ & VCC))
-- \inst4|Add1~17\ = CARRY((\inst4|process_1:EC[8]~q\ & !\inst4|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[8]~q\,
	datad => VCC,
	cin => \inst4|Add1~15\,
	combout => \inst4|Add1~16_combout\,
	cout => \inst4|Add1~17\);

-- Location: FF_X35_Y18_N17
\inst4|process_1:EC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~16_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[8]~q\);

-- Location: LCCOMB_X35_Y18_N18
\inst4|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~18_combout\ = (\inst4|process_1:EC[9]~q\ & (!\inst4|Add1~17\)) # (!\inst4|process_1:EC[9]~q\ & ((\inst4|Add1~17\) # (GND)))
-- \inst4|Add1~19\ = CARRY((!\inst4|Add1~17\) # (!\inst4|process_1:EC[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[9]~q\,
	datad => VCC,
	cin => \inst4|Add1~17\,
	combout => \inst4|Add1~18_combout\,
	cout => \inst4|Add1~19\);

-- Location: FF_X35_Y18_N19
\inst4|process_1:EC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~18_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[9]~q\);

-- Location: LCCOMB_X35_Y18_N20
\inst4|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~20_combout\ = (\inst4|process_1:EC[10]~q\ & (\inst4|Add1~19\ $ (GND))) # (!\inst4|process_1:EC[10]~q\ & (!\inst4|Add1~19\ & VCC))
-- \inst4|Add1~21\ = CARRY((\inst4|process_1:EC[10]~q\ & !\inst4|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[10]~q\,
	datad => VCC,
	cin => \inst4|Add1~19\,
	combout => \inst4|Add1~20_combout\,
	cout => \inst4|Add1~21\);

-- Location: LCCOMB_X34_Y18_N12
\inst4|state_csl~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csl~4_combout\ = (!\inst4|Add1~20_combout\ & (!\inst4|Add1~18_combout\ & (!\inst4|Add1~14_combout\ & !\inst4|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add1~20_combout\,
	datab => \inst4|Add1~18_combout\,
	datac => \inst4|Add1~14_combout\,
	datad => \inst4|Add1~16_combout\,
	combout => \inst4|state_csl~4_combout\);

-- Location: LCCOMB_X34_Y17_N12
\inst4|state_csl~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csl~5_combout\ = (\inst4|state_csl~2_combout\ & (\inst4|state_csl~3_combout\ & \inst4|state_csl~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state_csl~2_combout\,
	datac => \inst4|state_csl~3_combout\,
	datad => \inst4|state_csl~4_combout\,
	combout => \inst4|state_csl~5_combout\);

-- Location: FF_X35_Y17_N5
\inst4|process_1:EC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~36_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[18]~q\);

-- Location: LCCOMB_X35_Y18_N22
\inst4|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~22_combout\ = (\inst4|process_1:EC[11]~q\ & (!\inst4|Add1~21\)) # (!\inst4|process_1:EC[11]~q\ & ((\inst4|Add1~21\) # (GND)))
-- \inst4|Add1~23\ = CARRY((!\inst4|Add1~21\) # (!\inst4|process_1:EC[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_1:EC[11]~q\,
	datad => VCC,
	cin => \inst4|Add1~21\,
	combout => \inst4|Add1~22_combout\,
	cout => \inst4|Add1~23\);

-- Location: FF_X35_Y18_N23
\inst4|process_1:EC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~22_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[11]~q\);

-- Location: LCCOMB_X35_Y18_N24
\inst4|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~24_combout\ = (\inst4|process_1:EC[12]~q\ & (\inst4|Add1~23\ $ (GND))) # (!\inst4|process_1:EC[12]~q\ & (!\inst4|Add1~23\ & VCC))
-- \inst4|Add1~25\ = CARRY((\inst4|process_1:EC[12]~q\ & !\inst4|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[12]~q\,
	datad => VCC,
	cin => \inst4|Add1~23\,
	combout => \inst4|Add1~24_combout\,
	cout => \inst4|Add1~25\);

-- Location: FF_X35_Y18_N25
\inst4|process_1:EC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~24_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[12]~q\);

-- Location: LCCOMB_X35_Y18_N26
\inst4|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~26_combout\ = (\inst4|process_1:EC[13]~q\ & (!\inst4|Add1~25\)) # (!\inst4|process_1:EC[13]~q\ & ((\inst4|Add1~25\) # (GND)))
-- \inst4|Add1~27\ = CARRY((!\inst4|Add1~25\) # (!\inst4|process_1:EC[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_1:EC[13]~q\,
	datad => VCC,
	cin => \inst4|Add1~25\,
	combout => \inst4|Add1~26_combout\,
	cout => \inst4|Add1~27\);

-- Location: FF_X35_Y18_N27
\inst4|process_1:EC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~26_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[13]~q\);

-- Location: LCCOMB_X35_Y18_N28
\inst4|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~28_combout\ = (\inst4|process_1:EC[14]~q\ & (\inst4|Add1~27\ $ (GND))) # (!\inst4|process_1:EC[14]~q\ & (!\inst4|Add1~27\ & VCC))
-- \inst4|Add1~29\ = CARRY((\inst4|process_1:EC[14]~q\ & !\inst4|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[14]~q\,
	datad => VCC,
	cin => \inst4|Add1~27\,
	combout => \inst4|Add1~28_combout\,
	cout => \inst4|Add1~29\);

-- Location: FF_X35_Y18_N29
\inst4|process_1:EC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~28_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[14]~q\);

-- Location: LCCOMB_X35_Y18_N30
\inst4|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~30_combout\ = (\inst4|process_1:EC[15]~q\ & (!\inst4|Add1~29\)) # (!\inst4|process_1:EC[15]~q\ & ((\inst4|Add1~29\) # (GND)))
-- \inst4|Add1~31\ = CARRY((!\inst4|Add1~29\) # (!\inst4|process_1:EC[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_1:EC[15]~q\,
	datad => VCC,
	cin => \inst4|Add1~29\,
	combout => \inst4|Add1~30_combout\,
	cout => \inst4|Add1~31\);

-- Location: FF_X35_Y18_N31
\inst4|process_1:EC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~30_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[15]~q\);

-- Location: LCCOMB_X35_Y17_N0
\inst4|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~32_combout\ = (\inst4|process_1:EC[16]~q\ & (\inst4|Add1~31\ $ (GND))) # (!\inst4|process_1:EC[16]~q\ & (!\inst4|Add1~31\ & VCC))
-- \inst4|Add1~33\ = CARRY((\inst4|process_1:EC[16]~q\ & !\inst4|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[16]~q\,
	datad => VCC,
	cin => \inst4|Add1~31\,
	combout => \inst4|Add1~32_combout\,
	cout => \inst4|Add1~33\);

-- Location: FF_X35_Y17_N1
\inst4|process_1:EC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~32_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[16]~q\);

-- Location: LCCOMB_X35_Y17_N2
\inst4|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~34_combout\ = (\inst4|process_1:EC[17]~q\ & (!\inst4|Add1~33\)) # (!\inst4|process_1:EC[17]~q\ & ((\inst4|Add1~33\) # (GND)))
-- \inst4|Add1~35\ = CARRY((!\inst4|Add1~33\) # (!\inst4|process_1:EC[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[17]~q\,
	datad => VCC,
	cin => \inst4|Add1~33\,
	combout => \inst4|Add1~34_combout\,
	cout => \inst4|Add1~35\);

-- Location: FF_X35_Y17_N3
\inst4|process_1:EC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~34_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[17]~q\);

-- Location: LCCOMB_X35_Y17_N4
\inst4|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~36_combout\ = (\inst4|process_1:EC[18]~q\ & (\inst4|Add1~35\ $ (GND))) # (!\inst4|process_1:EC[18]~q\ & (!\inst4|Add1~35\ & VCC))
-- \inst4|Add1~37\ = CARRY((\inst4|process_1:EC[18]~q\ & !\inst4|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[18]~q\,
	datad => VCC,
	cin => \inst4|Add1~35\,
	combout => \inst4|Add1~36_combout\,
	cout => \inst4|Add1~37\);

-- Location: LCCOMB_X34_Y17_N26
\inst4|state_csl~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csl~7_combout\ = (!\inst4|Add1~36_combout\ & (!\inst4|Add1~32_combout\ & (!\inst4|Add1~30_combout\ & !\inst4|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add1~36_combout\,
	datab => \inst4|Add1~32_combout\,
	datac => \inst4|Add1~30_combout\,
	datad => \inst4|Add1~34_combout\,
	combout => \inst4|state_csl~7_combout\);

-- Location: FF_X35_Y17_N9
\inst4|process_1:EC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~40_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[20]~q\);

-- Location: LCCOMB_X35_Y17_N6
\inst4|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~38_combout\ = (\inst4|process_1:EC[19]~q\ & (!\inst4|Add1~37\)) # (!\inst4|process_1:EC[19]~q\ & ((\inst4|Add1~37\) # (GND)))
-- \inst4|Add1~39\ = CARRY((!\inst4|Add1~37\) # (!\inst4|process_1:EC[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_1:EC[19]~q\,
	datad => VCC,
	cin => \inst4|Add1~37\,
	combout => \inst4|Add1~38_combout\,
	cout => \inst4|Add1~39\);

-- Location: FF_X35_Y17_N7
\inst4|process_1:EC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~38_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[19]~q\);

-- Location: LCCOMB_X35_Y17_N8
\inst4|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~40_combout\ = (\inst4|process_1:EC[20]~q\ & (\inst4|Add1~39\ $ (GND))) # (!\inst4|process_1:EC[20]~q\ & (!\inst4|Add1~39\ & VCC))
-- \inst4|Add1~41\ = CARRY((\inst4|process_1:EC[20]~q\ & !\inst4|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[20]~q\,
	datad => VCC,
	cin => \inst4|Add1~39\,
	combout => \inst4|Add1~40_combout\,
	cout => \inst4|Add1~41\);

-- Location: FF_X35_Y17_N11
\inst4|process_1:EC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~42_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[21]~q\);

-- Location: LCCOMB_X35_Y17_N10
\inst4|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~42_combout\ = (\inst4|process_1:EC[21]~q\ & (!\inst4|Add1~41\)) # (!\inst4|process_1:EC[21]~q\ & ((\inst4|Add1~41\) # (GND)))
-- \inst4|Add1~43\ = CARRY((!\inst4|Add1~41\) # (!\inst4|process_1:EC[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_1:EC[21]~q\,
	datad => VCC,
	cin => \inst4|Add1~41\,
	combout => \inst4|Add1~42_combout\,
	cout => \inst4|Add1~43\);

-- Location: FF_X35_Y17_N13
\inst4|process_1:EC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~44_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[22]~q\);

-- Location: LCCOMB_X35_Y17_N12
\inst4|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~44_combout\ = (\inst4|process_1:EC[22]~q\ & (\inst4|Add1~43\ $ (GND))) # (!\inst4|process_1:EC[22]~q\ & (!\inst4|Add1~43\ & VCC))
-- \inst4|Add1~45\ = CARRY((\inst4|process_1:EC[22]~q\ & !\inst4|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_1:EC[22]~q\,
	datad => VCC,
	cin => \inst4|Add1~43\,
	combout => \inst4|Add1~44_combout\,
	cout => \inst4|Add1~45\);

-- Location: LCCOMB_X34_Y17_N24
\inst4|state_csl~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csl~8_combout\ = (!\inst4|Add1~40_combout\ & (!\inst4|Add1~42_combout\ & (!\inst4|Add1~44_combout\ & !\inst4|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add1~40_combout\,
	datab => \inst4|Add1~42_combout\,
	datac => \inst4|Add1~44_combout\,
	datad => \inst4|Add1~38_combout\,
	combout => \inst4|state_csl~8_combout\);

-- Location: LCCOMB_X34_Y18_N30
\inst4|state_csl~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csl~6_combout\ = (!\inst4|Add1~28_combout\ & (!\inst4|Add1~24_combout\ & (!\inst4|Add1~26_combout\ & !\inst4|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add1~28_combout\,
	datab => \inst4|Add1~24_combout\,
	datac => \inst4|Add1~26_combout\,
	datad => \inst4|Add1~22_combout\,
	combout => \inst4|state_csl~6_combout\);

-- Location: FF_X35_Y17_N21
\inst4|process_1:EC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~52_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[26]~q\);

-- Location: LCCOMB_X35_Y17_N14
\inst4|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~46_combout\ = (\inst4|process_1:EC[23]~q\ & (!\inst4|Add1~45\)) # (!\inst4|process_1:EC[23]~q\ & ((\inst4|Add1~45\) # (GND)))
-- \inst4|Add1~47\ = CARRY((!\inst4|Add1~45\) # (!\inst4|process_1:EC[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[23]~q\,
	datad => VCC,
	cin => \inst4|Add1~45\,
	combout => \inst4|Add1~46_combout\,
	cout => \inst4|Add1~47\);

-- Location: FF_X35_Y17_N15
\inst4|process_1:EC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~46_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[23]~q\);

-- Location: LCCOMB_X35_Y17_N16
\inst4|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~48_combout\ = (\inst4|process_1:EC[24]~q\ & (\inst4|Add1~47\ $ (GND))) # (!\inst4|process_1:EC[24]~q\ & (!\inst4|Add1~47\ & VCC))
-- \inst4|Add1~49\ = CARRY((\inst4|process_1:EC[24]~q\ & !\inst4|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[24]~q\,
	datad => VCC,
	cin => \inst4|Add1~47\,
	combout => \inst4|Add1~48_combout\,
	cout => \inst4|Add1~49\);

-- Location: FF_X35_Y17_N17
\inst4|process_1:EC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~48_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[24]~q\);

-- Location: LCCOMB_X35_Y17_N18
\inst4|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~50_combout\ = (\inst4|process_1:EC[25]~q\ & (!\inst4|Add1~49\)) # (!\inst4|process_1:EC[25]~q\ & ((\inst4|Add1~49\) # (GND)))
-- \inst4|Add1~51\ = CARRY((!\inst4|Add1~49\) # (!\inst4|process_1:EC[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[25]~q\,
	datad => VCC,
	cin => \inst4|Add1~49\,
	combout => \inst4|Add1~50_combout\,
	cout => \inst4|Add1~51\);

-- Location: FF_X35_Y17_N19
\inst4|process_1:EC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~50_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[25]~q\);

-- Location: LCCOMB_X35_Y17_N20
\inst4|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~52_combout\ = (\inst4|process_1:EC[26]~q\ & (\inst4|Add1~51\ $ (GND))) # (!\inst4|process_1:EC[26]~q\ & (!\inst4|Add1~51\ & VCC))
-- \inst4|Add1~53\ = CARRY((\inst4|process_1:EC[26]~q\ & !\inst4|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[26]~q\,
	datad => VCC,
	cin => \inst4|Add1~51\,
	combout => \inst4|Add1~52_combout\,
	cout => \inst4|Add1~53\);

-- Location: LCCOMB_X34_Y17_N10
\inst4|state_csl~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csl~9_combout\ = (!\inst4|Add1~52_combout\ & (!\inst4|Add1~50_combout\ & (!\inst4|Add1~46_combout\ & !\inst4|Add1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add1~52_combout\,
	datab => \inst4|Add1~50_combout\,
	datac => \inst4|Add1~46_combout\,
	datad => \inst4|Add1~48_combout\,
	combout => \inst4|state_csl~9_combout\);

-- Location: LCCOMB_X34_Y17_N8
\inst4|state_csl~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csl~10_combout\ = (\inst4|state_csl~7_combout\ & (\inst4|state_csl~8_combout\ & (\inst4|state_csl~6_combout\ & \inst4|state_csl~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state_csl~7_combout\,
	datab => \inst4|state_csl~8_combout\,
	datac => \inst4|state_csl~6_combout\,
	datad => \inst4|state_csl~9_combout\,
	combout => \inst4|state_csl~10_combout\);

-- Location: FF_X35_Y17_N31
\inst4|process_1:EC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~62_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[31]~q\);

-- Location: LCCOMB_X35_Y17_N22
\inst4|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~54_combout\ = (\inst4|process_1:EC[27]~q\ & (!\inst4|Add1~53\)) # (!\inst4|process_1:EC[27]~q\ & ((\inst4|Add1~53\) # (GND)))
-- \inst4|Add1~55\ = CARRY((!\inst4|Add1~53\) # (!\inst4|process_1:EC[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_1:EC[27]~q\,
	datad => VCC,
	cin => \inst4|Add1~53\,
	combout => \inst4|Add1~54_combout\,
	cout => \inst4|Add1~55\);

-- Location: FF_X35_Y17_N23
\inst4|process_1:EC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~54_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[27]~q\);

-- Location: LCCOMB_X35_Y17_N24
\inst4|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~56_combout\ = (\inst4|process_1:EC[28]~q\ & (\inst4|Add1~55\ $ (GND))) # (!\inst4|process_1:EC[28]~q\ & (!\inst4|Add1~55\ & VCC))
-- \inst4|Add1~57\ = CARRY((\inst4|process_1:EC[28]~q\ & !\inst4|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[28]~q\,
	datad => VCC,
	cin => \inst4|Add1~55\,
	combout => \inst4|Add1~56_combout\,
	cout => \inst4|Add1~57\);

-- Location: FF_X35_Y17_N25
\inst4|process_1:EC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~56_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[28]~q\);

-- Location: LCCOMB_X35_Y17_N26
\inst4|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~58_combout\ = (\inst4|process_1:EC[29]~q\ & (!\inst4|Add1~57\)) # (!\inst4|process_1:EC[29]~q\ & ((\inst4|Add1~57\) # (GND)))
-- \inst4|Add1~59\ = CARRY((!\inst4|Add1~57\) # (!\inst4|process_1:EC[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_1:EC[29]~q\,
	datad => VCC,
	cin => \inst4|Add1~57\,
	combout => \inst4|Add1~58_combout\,
	cout => \inst4|Add1~59\);

-- Location: FF_X35_Y17_N27
\inst4|process_1:EC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~58_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[29]~q\);

-- Location: LCCOMB_X35_Y17_N28
\inst4|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~60_combout\ = (\inst4|process_1:EC[30]~q\ & (\inst4|Add1~59\ $ (GND))) # (!\inst4|process_1:EC[30]~q\ & (!\inst4|Add1~59\ & VCC))
-- \inst4|Add1~61\ = CARRY((\inst4|process_1:EC[30]~q\ & !\inst4|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_1:EC[30]~q\,
	datad => VCC,
	cin => \inst4|Add1~59\,
	combout => \inst4|Add1~60_combout\,
	cout => \inst4|Add1~61\);

-- Location: FF_X35_Y17_N29
\inst4|process_1:EC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add1~60_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|process_1:EC[30]~q\);

-- Location: LCCOMB_X35_Y17_N30
\inst4|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~62_combout\ = \inst4|process_1:EC[31]~q\ $ (\inst4|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_1:EC[31]~q\,
	cin => \inst4|Add1~61\,
	combout => \inst4|Add1~62_combout\);

-- Location: LCCOMB_X34_Y17_N6
\inst4|state_csl~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csl~11_combout\ = (!\inst4|Add1~56_combout\ & (!\inst4|Add1~60_combout\ & (!\inst4|Add1~54_combout\ & !\inst4|Add1~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add1~56_combout\,
	datab => \inst4|Add1~60_combout\,
	datac => \inst4|Add1~54_combout\,
	datad => \inst4|Add1~58_combout\,
	combout => \inst4|state_csl~11_combout\);

-- Location: LCCOMB_X34_Y17_N20
\inst4|state_csl~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csl~12_combout\ = (\inst4|state_csl~5_combout\ & (\inst4|state_csl~10_combout\ & (!\inst4|Add1~62_combout\ & \inst4|state_csl~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state_csl~5_combout\,
	datab => \inst4|state_csl~10_combout\,
	datac => \inst4|Add1~62_combout\,
	datad => \inst4|state_csl~11_combout\,
	combout => \inst4|state_csl~12_combout\);

-- Location: LCCOMB_X34_Y17_N22
\inst4|state_csl~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_csl~13_combout\ = \inst4|state_csl~q\ $ (((\inst4|StartTx~q\ & (!\inst4|wt~q\ & \inst4|state_csl~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|StartTx~q\,
	datab => \inst4|wt~q\,
	datac => \inst4|state_csl~q\,
	datad => \inst4|state_csl~12_combout\,
	combout => \inst4|state_csl~13_combout\);

-- Location: FF_X34_Y17_N23
\inst4|state_csl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|state_csl~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state_csl~q\);

-- Location: FF_X34_Y17_N1
\inst4|CSD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst4|state_csl~q\,
	sload => VCC,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CSD~q\);

-- Location: LCCOMB_X34_Y18_N16
\inst4|CS\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|CS~combout\ = (\inst4|CSU~q\ & \inst4|CSD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|CSU~q\,
	datad => \inst4|CSD~q\,
	combout => \inst4|CS~combout\);

-- Location: LCCOMB_X34_Y18_N6
\inst4|wt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|wt~0_combout\ = (!\inst4|Equal10~10_combout\ & ((\inst4|wt~q\) # ((\inst4|StartTx~q\ & \inst4|CS~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|StartTx~q\,
	datab => \inst4|CS~combout\,
	datac => \inst4|wt~q\,
	datad => \inst4|Equal10~10_combout\,
	combout => \inst4|wt~0_combout\);

-- Location: FF_X34_Y18_N7
\inst4|wt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|wt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|wt~q\);

-- Location: LCCOMB_X35_Y19_N26
\inst4|pstate~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|pstate~0_combout\ = !\inst4|wt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|wt~q\,
	combout => \inst4|pstate~0_combout\);

-- Location: FF_X35_Y19_N27
\inst4|pstate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|pstate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|pstate~q\);

-- Location: LCCOMB_X35_Y19_N16
\inst4|process_10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_10~0_combout\ = (!\inst4|pstate~q\ & !\inst4|wt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|pstate~q\,
	datac => \inst4|wt~q\,
	combout => \inst4|process_10~0_combout\);

-- Location: FF_X35_Y19_N17
\inst4|fPulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|process_10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|fPulse~q\);

-- Location: LCCOMB_X26_Y22_N14
\inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst|state.STRTrx~q\) # ((!\inst4|fPulse~q\ & \inst|state.WAITINGrx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|fPulse~q\,
	datac => \inst|state.WAITINGrx~q\,
	datad => \inst|state.STRTrx~q\,
	combout => \inst|Selector3~0_combout\);

-- Location: FF_X26_Y22_N15
\inst|state.WAITINGrx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.WAITINGrx~q\);

-- Location: LCCOMB_X26_Y22_N12
\inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst4|fPulse~q\ & \inst|state.WAITINGrx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|fPulse~q\,
	datad => \inst|state.WAITINGrx~q\,
	combout => \inst|Selector4~0_combout\);

-- Location: FF_X26_Y22_N13
\inst|state.STOREstate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.STOREstate~q\);

-- Location: LCCOMB_X24_Y26_N6
\inst16|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|state~10_combout\ = (!\inst16|state.IDLE~q\ & ((\inst15|state.NXTtx~q\) # (\inst|state.STOREstate~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|state.NXTtx~q\,
	datac => \inst16|state.IDLE~q\,
	datad => \inst|state.STOREstate~q\,
	combout => \inst16|state~10_combout\);

-- Location: FF_X24_Y26_N7
\inst16|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|state.IDLE~q\);

-- Location: LCCOMB_X24_Y26_N12
\inst16|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|state~9_combout\ = (!\inst16|state.IDLE~q\ & (\inst15|state.NXTtx~q\ & !\inst|state.STOREstate~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|state.IDLE~q\,
	datac => \inst15|state.NXTtx~q\,
	datad => \inst|state.STOREstate~q\,
	combout => \inst16|state~9_combout\);

-- Location: FF_X24_Y26_N13
\inst16|state.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|state.SEND~q\);

-- Location: LCCOMB_X23_Y26_N6
\inst16|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector18~0_combout\ = (!\inst16|state.SEND~q\ & (\inst16|FS\(2) $ (((\inst16|FS\(0) & \inst16|FS\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|FS\(0),
	datab => \inst16|FS\(2),
	datac => \inst16|FS\(1),
	datad => \inst16|state.SEND~q\,
	combout => \inst16|Selector18~0_combout\);

-- Location: LCCOMB_X20_Y26_N22
\inst16|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector18~1_combout\ = (\inst16|Equal2~0_combout\ & \inst16|Selector18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|Equal2~0_combout\,
	datad => \inst16|Selector18~0_combout\,
	combout => \inst16|Selector18~1_combout\);

-- Location: LCCOMB_X24_Y26_N16
\inst16|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector28~0_combout\ = \inst16|OS\(0) $ (\inst16|state.SEND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|OS\(0),
	datad => \inst16|state.SEND~q\,
	combout => \inst16|Selector28~0_combout\);

-- Location: LCCOMB_X24_Y26_N4
\inst16|OS[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|OS[0]~feeder_combout\ = \inst16|Selector28~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|Selector28~0_combout\,
	combout => \inst16|OS[0]~feeder_combout\);

-- Location: FF_X24_Y26_N5
\inst16|OS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~q\,
	d => \inst16|OS[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|OS\(0));

-- Location: LCCOMB_X24_Y26_N18
\inst16|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector27~0_combout\ = \inst16|OS\(1) $ (((\inst16|state.SEND~q\ & \inst16|OS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|state.SEND~q\,
	datac => \inst16|OS\(1),
	datad => \inst16|OS\(0),
	combout => \inst16|Selector27~0_combout\);

-- Location: LCCOMB_X24_Y26_N26
\inst16|OS[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|OS[1]~feeder_combout\ = \inst16|Selector27~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|Selector27~0_combout\,
	combout => \inst16|OS[1]~feeder_combout\);

-- Location: FF_X24_Y26_N27
\inst16|OS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~q\,
	d => \inst16|OS[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|OS\(1));

-- Location: LCCOMB_X24_Y26_N28
\inst16|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Equal3~0_combout\ = (\inst16|OS\(1) & \inst16|OS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|OS\(1),
	datac => \inst16|OS\(0),
	combout => \inst16|Equal3~0_combout\);

-- Location: LCCOMB_X24_Y26_N24
\inst16|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector26~0_combout\ = (\inst16|state.SEND~q\ & (!\inst16|Equal3~1_combout\ & (\inst16|Equal3~0_combout\ $ (\inst16|OS\(2))))) # (!\inst16|state.SEND~q\ & (((\inst16|OS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Equal3~0_combout\,
	datab => \inst16|state.SEND~q\,
	datac => \inst16|OS\(2),
	datad => \inst16|Equal3~1_combout\,
	combout => \inst16|Selector26~0_combout\);

-- Location: LCCOMB_X24_Y26_N8
\inst16|OS[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|OS[2]~feeder_combout\ = \inst16|Selector26~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|Selector26~0_combout\,
	combout => \inst16|OS[2]~feeder_combout\);

-- Location: FF_X24_Y26_N9
\inst16|OS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~q\,
	d => \inst16|OS[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|OS\(2));

-- Location: LCCOMB_X24_Y26_N30
\inst16|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector25~0_combout\ = (\inst16|Equal3~0_combout\ & ((\inst16|OS\(3) & (!\inst16|state.SEND~q\)) # (!\inst16|OS\(3) & (\inst16|state.SEND~q\ & \inst16|OS\(2))))) # (!\inst16|Equal3~0_combout\ & (\inst16|OS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Equal3~0_combout\,
	datab => \inst16|OS\(3),
	datac => \inst16|state.SEND~q\,
	datad => \inst16|OS\(2),
	combout => \inst16|Selector25~0_combout\);

-- Location: FF_X24_Y26_N17
\inst16|OS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~q\,
	asdata => \inst16|Selector25~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|OS\(3));

-- Location: LCCOMB_X24_Y26_N20
\inst16|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Equal3~1_combout\ = (!\inst16|OS\(2) & (\inst16|OS\(0) & (\inst16|OS\(3) & \inst16|OS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|OS\(2),
	datab => \inst16|OS\(0),
	datac => \inst16|OS\(3),
	datad => \inst16|OS\(1),
	combout => \inst16|Equal3~1_combout\);

-- Location: LCCOMB_X24_Y26_N22
\inst16|FS[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|FS[0]~0_combout\ = (\inst16|state.IDLE~q\ & ((\inst16|Equal3~1_combout\) # (!\inst16|state.SEND~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|state.IDLE~q\,
	datab => \inst16|Equal3~1_combout\,
	datac => \inst16|state.SEND~q\,
	combout => \inst16|FS[0]~0_combout\);

-- Location: FF_X20_Y26_N23
\inst16|FS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|Selector18~1_combout\,
	ena => \inst16|FS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|FS\(2));

-- Location: LCCOMB_X23_Y26_N4
\inst16|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector17~0_combout\ = \inst16|FS\(3) $ (((\inst16|FS\(1) & (\inst16|FS\(2) & \inst16|FS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|FS\(1),
	datab => \inst16|FS\(2),
	datac => \inst16|FS\(3),
	datad => \inst16|FS\(0),
	combout => \inst16|Selector17~0_combout\);

-- Location: LCCOMB_X23_Y26_N22
\inst16|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector17~1_combout\ = (\inst16|Selector17~0_combout\ & !\inst16|state.SEND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|Selector17~0_combout\,
	datad => \inst16|state.SEND~q\,
	combout => \inst16|Selector17~1_combout\);

-- Location: FF_X23_Y26_N23
\inst16|FS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|Selector17~1_combout\,
	ena => \inst16|FS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|FS\(3));

-- Location: LCCOMB_X21_Y26_N22
\inst16|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Equal2~0_combout\ = ((\inst16|FS\(2)) # ((!\inst16|FS\(3)) # (!\inst16|FS\(0)))) # (!\inst16|FS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|FS\(1),
	datab => \inst16|FS\(2),
	datac => \inst16|FS\(0),
	datad => \inst16|FS\(3),
	combout => \inst16|Equal2~0_combout\);

-- Location: LCCOMB_X20_Y26_N16
\inst16|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector20~0_combout\ = (!\inst16|state.SEND~q\ & ((!\inst16|FS\(0)) # (!\inst16|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|Equal2~0_combout\,
	datac => \inst16|FS\(0),
	datad => \inst16|state.SEND~q\,
	combout => \inst16|Selector20~0_combout\);

-- Location: FF_X20_Y26_N17
\inst16|FS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|Selector20~0_combout\,
	ena => \inst16|FS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|FS\(0));

-- Location: LCCOMB_X20_Y26_N0
\inst16|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector19~0_combout\ = (!\inst16|state.SEND~q\ & ((\inst16|FS\(0) $ (\inst16|FS\(1))) # (!\inst16|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|state.SEND~q\,
	datab => \inst16|FS\(0),
	datac => \inst16|FS\(1),
	datad => \inst16|Equal2~0_combout\,
	combout => \inst16|Selector19~0_combout\);

-- Location: FF_X20_Y26_N1
\inst16|FS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|Selector19~0_combout\,
	ena => \inst16|FS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|FS\(1));

-- Location: LCCOMB_X20_Y26_N26
\inst16|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|process_0~2_combout\ = (!\inst16|NS\(1) & (!\inst16|FS\(1) & !\inst16|FS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|NS\(1),
	datab => \inst16|FS\(1),
	datad => \inst16|FS\(3),
	combout => \inst16|process_0~2_combout\);

-- Location: LCCOMB_X24_Y26_N0
\inst16|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|process_0~0_combout\ = (!\inst16|OS\(1) & (!\inst16|OS\(0) & (!\inst16|OS\(2) & !\inst16|OS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|OS\(1),
	datab => \inst16|OS\(0),
	datac => \inst16|OS\(2),
	datad => \inst16|OS\(3),
	combout => \inst16|process_0~0_combout\);

-- Location: LCCOMB_X20_Y26_N2
\inst16|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector24~0_combout\ = (!\inst16|process_0~3_combout\ & (!\inst16|state.SEND~q\ & ((!\inst16|NS\(0)) # (!\inst16|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|process_0~3_combout\,
	datab => \inst16|Equal2~0_combout\,
	datac => \inst16|NS\(0),
	datad => \inst16|state.SEND~q\,
	combout => \inst16|Selector24~0_combout\);

-- Location: FF_X20_Y26_N27
\inst16|NS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst16|Selector24~0_combout\,
	sload => VCC,
	ena => \inst16|FS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|NS\(0));

-- Location: LCCOMB_X20_Y26_N12
\inst16|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector22~0_combout\ = (!\inst16|state.SEND~q\ & (\inst16|NS\(2) $ (((\inst16|NS\(0) & \inst16|NS\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|NS\(0),
	datab => \inst16|NS\(2),
	datac => \inst16|NS\(1),
	datad => \inst16|state.SEND~q\,
	combout => \inst16|Selector22~0_combout\);

-- Location: LCCOMB_X20_Y26_N4
\inst16|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector22~1_combout\ = (\inst16|Selector22~0_combout\ & (!\inst16|process_0~3_combout\ & \inst16|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Selector22~0_combout\,
	datac => \inst16|process_0~3_combout\,
	datad => \inst16|Equal2~0_combout\,
	combout => \inst16|Selector22~1_combout\);

-- Location: FF_X20_Y26_N5
\inst16|NS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~q\,
	d => \inst16|Selector22~1_combout\,
	ena => \inst16|FS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|NS\(2));

-- Location: LCCOMB_X20_Y26_N10
\inst16|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add1~1_combout\ = \inst16|NS\(3) $ (((\inst16|NS\(0) & (\inst16|NS\(2) & \inst16|NS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|NS\(0),
	datab => \inst16|NS\(2),
	datac => \inst16|NS\(3),
	datad => \inst16|NS\(1),
	combout => \inst16|Add1~1_combout\);

-- Location: LCCOMB_X20_Y26_N24
\inst16|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector21~0_combout\ = (!\inst16|process_0~3_combout\ & (!\inst16|state.SEND~q\ & ((\inst16|Add1~1_combout\) # (!\inst16|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Add1~1_combout\,
	datab => \inst16|Equal2~0_combout\,
	datac => \inst16|process_0~3_combout\,
	datad => \inst16|state.SEND~q\,
	combout => \inst16|Selector21~0_combout\);

-- Location: FF_X20_Y26_N25
\inst16|NS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~q\,
	d => \inst16|Selector21~0_combout\,
	ena => \inst16|FS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|NS\(3));

-- Location: LCCOMB_X20_Y26_N6
\inst16|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|process_0~1_combout\ = (!\inst16|FS\(0) & (!\inst16|NS\(3) & (!\inst16|FS\(2) & !\inst16|NS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|FS\(0),
	datab => \inst16|NS\(3),
	datac => \inst16|FS\(2),
	datad => \inst16|NS\(2),
	combout => \inst16|process_0~1_combout\);

-- Location: LCCOMB_X20_Y26_N18
\inst16|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|process_0~3_combout\ = (\inst16|process_0~2_combout\ & (\inst16|process_0~0_combout\ & (!\inst16|NS\(0) & \inst16|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|process_0~2_combout\,
	datab => \inst16|process_0~0_combout\,
	datac => \inst16|NS\(0),
	datad => \inst16|process_0~1_combout\,
	combout => \inst16|process_0~3_combout\);

-- Location: LCCOMB_X20_Y26_N8
\inst16|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add1~0_combout\ = \inst16|NS\(0) $ (\inst16|NS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|NS\(0),
	datad => \inst16|NS\(1),
	combout => \inst16|Add1~0_combout\);

-- Location: LCCOMB_X20_Y26_N14
\inst16|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector23~0_combout\ = (!\inst16|process_0~3_combout\ & (!\inst16|state.SEND~q\ & ((\inst16|Add1~0_combout\) # (!\inst16|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|process_0~3_combout\,
	datab => \inst16|Equal2~0_combout\,
	datac => \inst16|Add1~0_combout\,
	datad => \inst16|state.SEND~q\,
	combout => \inst16|Selector23~0_combout\);

-- Location: FF_X20_Y26_N15
\inst16|NS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~q\,
	d => \inst16|Selector23~0_combout\,
	ena => \inst16|FS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|NS\(1));

-- Location: LCCOMB_X20_Y26_N28
\inst16|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Equal4~0_combout\ = (\inst16|NS\(1) & (!\inst16|NS\(2) & (\inst16|NS\(0) & \inst16|NS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|NS\(1),
	datab => \inst16|NS\(2),
	datac => \inst16|NS\(0),
	datad => \inst16|NS\(3),
	combout => \inst16|Equal4~0_combout\);

-- Location: LCCOMB_X20_Y26_N20
\inst16|empty~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|empty~0_combout\ = (\inst16|process_0~0_combout\) # (\inst16|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|process_0~0_combout\,
	datad => \inst16|Equal4~0_combout\,
	combout => \inst16|empty~0_combout\);

-- Location: LCCOMB_X20_Y26_N30
\inst16|empty\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|empty~combout\ = (\inst16|empty~0_combout\ & (!\inst16|Equal4~0_combout\)) # (!\inst16|empty~0_combout\ & ((\inst16|empty~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Equal4~0_combout\,
	datac => \inst16|empty~combout\,
	datad => \inst16|empty~0_combout\,
	combout => \inst16|empty~combout\);

-- Location: LCCOMB_X17_Y25_N2
\inst15|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector0~1_combout\ = (\inst15|Selector0~0_combout\ & ((!\inst15|state.WAITINGtx~q\) # (!\inst6|fPulse~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|fPulse~q\,
	datac => \inst15|Selector0~0_combout\,
	datad => \inst15|state.WAITINGtx~q\,
	combout => \inst15|Selector0~1_combout\);

-- Location: LCCOMB_X17_Y25_N24
\inst15|state.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|state.IDLE~0_combout\ = ((!\inst15|state.W4BFFRtx~q\ & ((\inst15|state.IDLE~q\) # (!\inst15|Selector0~1_combout\)))) # (!\inst16|empty~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|empty~combout\,
	datab => \inst15|Selector0~1_combout\,
	datac => \inst15|state.IDLE~q\,
	datad => \inst15|state.W4BFFRtx~q\,
	combout => \inst15|state.IDLE~0_combout\);

-- Location: FF_X17_Y25_N25
\inst15|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst15|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|state.IDLE~q\);

-- Location: LCCOMB_X18_Y23_N8
\inst5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = ((\inst5|Mux1~1_combout\) # (\inst15|state.W4BFFRtx~q\)) # (!\inst15|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|state.IDLE~q\,
	datac => \inst5|Mux1~1_combout\,
	datad => \inst15|state.W4BFFRtx~q\,
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y23_N26
\inst5|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector19~0_combout\ = (\inst5|state.STRT~q\) # ((!\inst5|Mux0~0_combout\ & \inst5|state.WAITING~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~0_combout\,
	datac => \inst5|state.WAITING~q\,
	datad => \inst5|state.STRT~q\,
	combout => \inst5|Selector19~0_combout\);

-- Location: FF_X19_Y23_N27
\inst5|state.WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.WAITING~q\);

-- Location: LCCOMB_X19_Y23_N20
\inst5|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector17~0_combout\ = ((\inst5|state.SEARCH~q\ & !\inst5|state.WAITING~q\)) # (!\inst5|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~0_combout\,
	datac => \inst5|state.SEARCH~q\,
	datad => \inst5|state.WAITING~q\,
	combout => \inst5|Selector17~0_combout\);

-- Location: FF_X19_Y23_N21
\inst5|state.SEARCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.SEARCH~q\);

-- Location: LCCOMB_X18_Y23_N18
\inst5|idx[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|idx[1]~3_combout\ = (\inst5|state.SEARCH~q\ & ((\inst5|idx\(1)) # ((\inst5|idx[2]~0_combout\ & \inst5|Add0~2_combout\)))) # (!\inst5|state.SEARCH~q\ & (\inst5|idx[2]~0_combout\ & ((\inst5|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.SEARCH~q\,
	datab => \inst5|idx[2]~0_combout\,
	datac => \inst5|idx\(1),
	datad => \inst5|Add0~2_combout\,
	combout => \inst5|idx[1]~3_combout\);

-- Location: FF_X18_Y23_N19
\inst5|idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~q\,
	d => \inst5|idx[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(1));

-- Location: LCCOMB_X18_Y23_N24
\inst5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (!\inst5|idx\(1) & (\inst15|state.STRTtx~q\ & (!\inst5|idx\(2) & !\inst5|idx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(1),
	datab => \inst15|state.STRTtx~q\,
	datac => \inst5|idx\(2),
	datad => \inst5|idx\(0),
	combout => \inst5|Mux1~0_combout\);

-- Location: FF_X17_Y23_N1
\inst5|TRANSMIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst5|Mux1~0_combout\,
	sclr => \inst5|ALT_INV_state.SEARCH~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|TRANSMIT~q\);

-- Location: LCCOMB_X25_Y22_N2
\inst6|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~0_combout\ = (\inst4|delay_counter\(1) & (\inst4|delay_counter\(0) $ (VCC))) # (!\inst4|delay_counter\(1) & (\inst4|delay_counter\(0) & VCC))
-- \inst6|Add6~1\ = CARRY((\inst4|delay_counter\(1) & \inst4|delay_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(1),
	datab => \inst4|delay_counter\(0),
	datad => VCC,
	combout => \inst6|Add6~0_combout\,
	cout => \inst6|Add6~1\);

-- Location: LCCOMB_X25_Y22_N4
\inst6|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~2_combout\ = (\inst4|delay_counter\(2) & (!\inst6|Add6~1\)) # (!\inst4|delay_counter\(2) & ((\inst6|Add6~1\) # (GND)))
-- \inst6|Add6~3\ = CARRY((!\inst6|Add6~1\) # (!\inst4|delay_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(2),
	datad => VCC,
	cin => \inst6|Add6~1\,
	combout => \inst6|Add6~2_combout\,
	cout => \inst6|Add6~3\);

-- Location: LCCOMB_X25_Y22_N6
\inst6|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~4_combout\ = (\inst4|delay_counter\(3) & (\inst6|Add6~3\ $ (GND))) # (!\inst4|delay_counter\(3) & (!\inst6|Add6~3\ & VCC))
-- \inst6|Add6~5\ = CARRY((\inst4|delay_counter\(3) & !\inst6|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(3),
	datad => VCC,
	cin => \inst6|Add6~3\,
	combout => \inst6|Add6~4_combout\,
	cout => \inst6|Add6~5\);

-- Location: LCCOMB_X25_Y22_N8
\inst6|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~6_combout\ = (\inst4|delay_counter\(4) & (!\inst6|Add6~5\)) # (!\inst4|delay_counter\(4) & ((\inst6|Add6~5\) # (GND)))
-- \inst6|Add6~7\ = CARRY((!\inst6|Add6~5\) # (!\inst4|delay_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(4),
	datad => VCC,
	cin => \inst6|Add6~5\,
	combout => \inst6|Add6~6_combout\,
	cout => \inst6|Add6~7\);

-- Location: LCCOMB_X25_Y22_N10
\inst6|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~8_combout\ = (\inst4|delay_counter\(5) & (\inst6|Add6~7\ $ (GND))) # (!\inst4|delay_counter\(5) & (!\inst6|Add6~7\ & VCC))
-- \inst6|Add6~9\ = CARRY((\inst4|delay_counter\(5) & !\inst6|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(5),
	datad => VCC,
	cin => \inst6|Add6~7\,
	combout => \inst6|Add6~8_combout\,
	cout => \inst6|Add6~9\);

-- Location: LCCOMB_X25_Y22_N12
\inst6|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~10_combout\ = (\inst4|delay_counter\(6) & (!\inst6|Add6~9\)) # (!\inst4|delay_counter\(6) & ((\inst6|Add6~9\) # (GND)))
-- \inst6|Add6~11\ = CARRY((!\inst6|Add6~9\) # (!\inst4|delay_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(6),
	datad => VCC,
	cin => \inst6|Add6~9\,
	combout => \inst6|Add6~10_combout\,
	cout => \inst6|Add6~11\);

-- Location: LCCOMB_X25_Y22_N14
\inst6|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~12_combout\ = (\inst4|delay_counter\(7) & (\inst6|Add6~11\ $ (GND))) # (!\inst4|delay_counter\(7) & (!\inst6|Add6~11\ & VCC))
-- \inst6|Add6~13\ = CARRY((\inst4|delay_counter\(7) & !\inst6|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(7),
	datad => VCC,
	cin => \inst6|Add6~11\,
	combout => \inst6|Add6~12_combout\,
	cout => \inst6|Add6~13\);

-- Location: LCCOMB_X25_Y22_N16
\inst6|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~14_combout\ = (\inst4|delay_counter\(8) & (!\inst6|Add6~13\)) # (!\inst4|delay_counter\(8) & ((\inst6|Add6~13\) # (GND)))
-- \inst6|Add6~15\ = CARRY((!\inst6|Add6~13\) # (!\inst4|delay_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(8),
	datad => VCC,
	cin => \inst6|Add6~13\,
	combout => \inst6|Add6~14_combout\,
	cout => \inst6|Add6~15\);

-- Location: LCCOMB_X25_Y22_N18
\inst6|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~16_combout\ = (\inst4|delay_counter\(9) & (\inst6|Add6~15\ $ (GND))) # (!\inst4|delay_counter\(9) & (!\inst6|Add6~15\ & VCC))
-- \inst6|Add6~17\ = CARRY((\inst4|delay_counter\(9) & !\inst6|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(9),
	datad => VCC,
	cin => \inst6|Add6~15\,
	combout => \inst6|Add6~16_combout\,
	cout => \inst6|Add6~17\);

-- Location: LCCOMB_X25_Y22_N20
\inst6|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~18_combout\ = (\inst4|delay_counter\(10) & (!\inst6|Add6~17\)) # (!\inst4|delay_counter\(10) & ((\inst6|Add6~17\) # (GND)))
-- \inst6|Add6~19\ = CARRY((!\inst6|Add6~17\) # (!\inst4|delay_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(10),
	datad => VCC,
	cin => \inst6|Add6~17\,
	combout => \inst6|Add6~18_combout\,
	cout => \inst6|Add6~19\);

-- Location: LCCOMB_X25_Y22_N22
\inst6|Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~20_combout\ = (\inst4|delay_counter\(11) & (\inst6|Add6~19\ $ (GND))) # (!\inst4|delay_counter\(11) & (!\inst6|Add6~19\ & VCC))
-- \inst6|Add6~21\ = CARRY((\inst4|delay_counter\(11) & !\inst6|Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(11),
	datad => VCC,
	cin => \inst6|Add6~19\,
	combout => \inst6|Add6~20_combout\,
	cout => \inst6|Add6~21\);

-- Location: LCCOMB_X25_Y22_N24
\inst6|Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~22_combout\ = (\inst4|delay_counter\(12) & (!\inst6|Add6~21\)) # (!\inst4|delay_counter\(12) & ((\inst6|Add6~21\) # (GND)))
-- \inst6|Add6~23\ = CARRY((!\inst6|Add6~21\) # (!\inst4|delay_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(12),
	datad => VCC,
	cin => \inst6|Add6~21\,
	combout => \inst6|Add6~22_combout\,
	cout => \inst6|Add6~23\);

-- Location: LCCOMB_X25_Y22_N26
\inst6|Add6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~24_combout\ = (\inst4|delay_counter\(13) & (\inst6|Add6~23\ $ (GND))) # (!\inst4|delay_counter\(13) & (!\inst6|Add6~23\ & VCC))
-- \inst6|Add6~25\ = CARRY((\inst4|delay_counter\(13) & !\inst6|Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(13),
	datad => VCC,
	cin => \inst6|Add6~23\,
	combout => \inst6|Add6~24_combout\,
	cout => \inst6|Add6~25\);

-- Location: LCCOMB_X25_Y22_N28
\inst6|Add6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~26_combout\ = (\inst4|delay_counter\(14) & (!\inst6|Add6~25\)) # (!\inst4|delay_counter\(14) & ((\inst6|Add6~25\) # (GND)))
-- \inst6|Add6~27\ = CARRY((!\inst6|Add6~25\) # (!\inst4|delay_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(14),
	datad => VCC,
	cin => \inst6|Add6~25\,
	combout => \inst6|Add6~26_combout\,
	cout => \inst6|Add6~27\);

-- Location: LCCOMB_X25_Y22_N30
\inst6|Add6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~28_combout\ = (\inst4|delay_counter\(15) & (\inst6|Add6~27\ $ (GND))) # (!\inst4|delay_counter\(15) & (!\inst6|Add6~27\ & VCC))
-- \inst6|Add6~29\ = CARRY((\inst4|delay_counter\(15) & !\inst6|Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(15),
	datad => VCC,
	cin => \inst6|Add6~27\,
	combout => \inst6|Add6~28_combout\,
	cout => \inst6|Add6~29\);

-- Location: LCCOMB_X25_Y21_N0
\inst6|Add6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~30_combout\ = (\inst4|delay_counter\(16) & (!\inst6|Add6~29\)) # (!\inst4|delay_counter\(16) & ((\inst6|Add6~29\) # (GND)))
-- \inst6|Add6~31\ = CARRY((!\inst6|Add6~29\) # (!\inst4|delay_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(16),
	datad => VCC,
	cin => \inst6|Add6~29\,
	combout => \inst6|Add6~30_combout\,
	cout => \inst6|Add6~31\);

-- Location: LCCOMB_X25_Y21_N2
\inst6|Add6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~32_combout\ = (\inst4|delay_counter\(17) & (\inst6|Add6~31\ $ (GND))) # (!\inst4|delay_counter\(17) & (!\inst6|Add6~31\ & VCC))
-- \inst6|Add6~33\ = CARRY((\inst4|delay_counter\(17) & !\inst6|Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(17),
	datad => VCC,
	cin => \inst6|Add6~31\,
	combout => \inst6|Add6~32_combout\,
	cout => \inst6|Add6~33\);

-- Location: LCCOMB_X25_Y21_N4
\inst6|Add6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~34_combout\ = (\inst4|delay_counter\(18) & (!\inst6|Add6~33\)) # (!\inst4|delay_counter\(18) & ((\inst6|Add6~33\) # (GND)))
-- \inst6|Add6~35\ = CARRY((!\inst6|Add6~33\) # (!\inst4|delay_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(18),
	datad => VCC,
	cin => \inst6|Add6~33\,
	combout => \inst6|Add6~34_combout\,
	cout => \inst6|Add6~35\);

-- Location: LCCOMB_X25_Y21_N6
\inst6|Add6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~36_combout\ = (\inst4|delay_counter\(19) & (\inst6|Add6~35\ $ (GND))) # (!\inst4|delay_counter\(19) & (!\inst6|Add6~35\ & VCC))
-- \inst6|Add6~37\ = CARRY((\inst4|delay_counter\(19) & !\inst6|Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(19),
	datad => VCC,
	cin => \inst6|Add6~35\,
	combout => \inst6|Add6~36_combout\,
	cout => \inst6|Add6~37\);

-- Location: LCCOMB_X25_Y21_N8
\inst6|Add6~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~38_combout\ = (\inst4|delay_counter\(20) & (!\inst6|Add6~37\)) # (!\inst4|delay_counter\(20) & ((\inst6|Add6~37\) # (GND)))
-- \inst6|Add6~39\ = CARRY((!\inst6|Add6~37\) # (!\inst4|delay_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(20),
	datad => VCC,
	cin => \inst6|Add6~37\,
	combout => \inst6|Add6~38_combout\,
	cout => \inst6|Add6~39\);

-- Location: LCCOMB_X25_Y21_N10
\inst6|Add6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~40_combout\ = (\inst4|delay_counter\(21) & (\inst6|Add6~39\ $ (GND))) # (!\inst4|delay_counter\(21) & (!\inst6|Add6~39\ & VCC))
-- \inst6|Add6~41\ = CARRY((\inst4|delay_counter\(21) & !\inst6|Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(21),
	datad => VCC,
	cin => \inst6|Add6~39\,
	combout => \inst6|Add6~40_combout\,
	cout => \inst6|Add6~41\);

-- Location: LCCOMB_X25_Y21_N12
\inst6|Add6~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~42_combout\ = (\inst4|delay_counter\(22) & (!\inst6|Add6~41\)) # (!\inst4|delay_counter\(22) & ((\inst6|Add6~41\) # (GND)))
-- \inst6|Add6~43\ = CARRY((!\inst6|Add6~41\) # (!\inst4|delay_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(22),
	datad => VCC,
	cin => \inst6|Add6~41\,
	combout => \inst6|Add6~42_combout\,
	cout => \inst6|Add6~43\);

-- Location: LCCOMB_X25_Y21_N14
\inst6|Add6~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~44_combout\ = (\inst4|delay_counter\(23) & (\inst6|Add6~43\ $ (GND))) # (!\inst4|delay_counter\(23) & (!\inst6|Add6~43\ & VCC))
-- \inst6|Add6~45\ = CARRY((\inst4|delay_counter\(23) & !\inst6|Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(23),
	datad => VCC,
	cin => \inst6|Add6~43\,
	combout => \inst6|Add6~44_combout\,
	cout => \inst6|Add6~45\);

-- Location: LCCOMB_X26_Y21_N30
\inst6|Equal10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal10~5_combout\ = (!\inst6|Add6~30_combout\ & (!\inst6|Add6~36_combout\ & (!\inst6|Add6~34_combout\ & !\inst6|Add6~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~30_combout\,
	datab => \inst6|Add6~36_combout\,
	datac => \inst6|Add6~34_combout\,
	datad => \inst6|Add6~32_combout\,
	combout => \inst6|Equal10~5_combout\);

-- Location: LCCOMB_X26_Y21_N20
\inst6|Equal10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal10~6_combout\ = (!\inst6|Add6~38_combout\ & !\inst6|Add6~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~38_combout\,
	datad => \inst6|Add6~40_combout\,
	combout => \inst6|Equal10~6_combout\);

-- Location: LCCOMB_X26_Y21_N22
\inst6|Equal10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal10~7_combout\ = (!\inst6|Add6~42_combout\ & (!\inst6|Add6~44_combout\ & (\inst6|Equal10~5_combout\ & \inst6|Equal10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~42_combout\,
	datab => \inst6|Add6~44_combout\,
	datac => \inst6|Equal10~5_combout\,
	datad => \inst6|Equal10~6_combout\,
	combout => \inst6|Equal10~7_combout\);

-- Location: LCCOMB_X26_Y21_N12
\inst6|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal10~1_combout\ = (!\inst6|Add6~6_combout\ & (\inst6|Add6~8_combout\ & (!\inst6|Add6~10_combout\ & !\inst6|Add6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~6_combout\,
	datab => \inst6|Add6~8_combout\,
	datac => \inst6|Add6~10_combout\,
	datad => \inst6|Add6~12_combout\,
	combout => \inst6|Equal10~1_combout\);

-- Location: LCCOMB_X26_Y22_N28
\inst6|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal10~0_combout\ = (!\inst6|Add6~0_combout\ & (\inst4|delay_counter\(0) & (!\inst6|Add6~2_combout\ & !\inst6|Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~0_combout\,
	datab => \inst4|delay_counter\(0),
	datac => \inst6|Add6~2_combout\,
	datad => \inst6|Add6~4_combout\,
	combout => \inst6|Equal10~0_combout\);

-- Location: LCCOMB_X26_Y21_N26
\inst6|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal10~2_combout\ = (\inst6|Add6~16_combout\ & (!\inst6|Add6~14_combout\ & (\inst6|Add6~18_combout\ & \inst6|Add6~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~16_combout\,
	datab => \inst6|Add6~14_combout\,
	datac => \inst6|Add6~18_combout\,
	datad => \inst6|Add6~20_combout\,
	combout => \inst6|Equal10~2_combout\);

-- Location: LCCOMB_X25_Y22_N0
\inst6|Equal10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal10~3_combout\ = (!\inst6|Add6~24_combout\ & (!\inst6|Add6~22_combout\ & (!\inst6|Add6~28_combout\ & \inst6|Add6~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~24_combout\,
	datab => \inst6|Add6~22_combout\,
	datac => \inst6|Add6~28_combout\,
	datad => \inst6|Add6~26_combout\,
	combout => \inst6|Equal10~3_combout\);

-- Location: LCCOMB_X26_Y21_N24
\inst6|Equal10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal10~4_combout\ = (\inst6|Equal10~1_combout\ & (\inst6|Equal10~0_combout\ & (\inst6|Equal10~2_combout\ & \inst6|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal10~1_combout\,
	datab => \inst6|Equal10~0_combout\,
	datac => \inst6|Equal10~2_combout\,
	datad => \inst6|Equal10~3_combout\,
	combout => \inst6|Equal10~4_combout\);

-- Location: LCCOMB_X25_Y21_N16
\inst6|Add6~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~46_combout\ = (\inst4|delay_counter\(24) & (!\inst6|Add6~45\)) # (!\inst4|delay_counter\(24) & ((\inst6|Add6~45\) # (GND)))
-- \inst6|Add6~47\ = CARRY((!\inst6|Add6~45\) # (!\inst4|delay_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(24),
	datad => VCC,
	cin => \inst6|Add6~45\,
	combout => \inst6|Add6~46_combout\,
	cout => \inst6|Add6~47\);

-- Location: LCCOMB_X25_Y21_N18
\inst6|Add6~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~48_combout\ = (\inst4|delay_counter\(25) & (\inst6|Add6~47\ $ (GND))) # (!\inst4|delay_counter\(25) & (!\inst6|Add6~47\ & VCC))
-- \inst6|Add6~49\ = CARRY((\inst4|delay_counter\(25) & !\inst6|Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(25),
	datad => VCC,
	cin => \inst6|Add6~47\,
	combout => \inst6|Add6~48_combout\,
	cout => \inst6|Add6~49\);

-- Location: LCCOMB_X25_Y21_N20
\inst6|Add6~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~50_combout\ = (\inst4|delay_counter\(26) & (!\inst6|Add6~49\)) # (!\inst4|delay_counter\(26) & ((\inst6|Add6~49\) # (GND)))
-- \inst6|Add6~51\ = CARRY((!\inst6|Add6~49\) # (!\inst4|delay_counter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(26),
	datad => VCC,
	cin => \inst6|Add6~49\,
	combout => \inst6|Add6~50_combout\,
	cout => \inst6|Add6~51\);

-- Location: LCCOMB_X25_Y21_N22
\inst6|Add6~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~52_combout\ = (\inst4|delay_counter\(27) & (\inst6|Add6~51\ $ (GND))) # (!\inst4|delay_counter\(27) & (!\inst6|Add6~51\ & VCC))
-- \inst6|Add6~53\ = CARRY((\inst4|delay_counter\(27) & !\inst6|Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(27),
	datad => VCC,
	cin => \inst6|Add6~51\,
	combout => \inst6|Add6~52_combout\,
	cout => \inst6|Add6~53\);

-- Location: LCCOMB_X26_Y21_N4
\inst6|Equal10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal10~8_combout\ = (!\inst6|Add6~46_combout\ & (!\inst6|Add6~50_combout\ & (!\inst6|Add6~48_combout\ & !\inst6|Add6~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~46_combout\,
	datab => \inst6|Add6~50_combout\,
	datac => \inst6|Add6~48_combout\,
	datad => \inst6|Add6~52_combout\,
	combout => \inst6|Equal10~8_combout\);

-- Location: LCCOMB_X25_Y21_N24
\inst6|Add6~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~54_combout\ = (\inst4|delay_counter\(28) & (!\inst6|Add6~53\)) # (!\inst4|delay_counter\(28) & ((\inst6|Add6~53\) # (GND)))
-- \inst6|Add6~55\ = CARRY((!\inst6|Add6~53\) # (!\inst4|delay_counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(28),
	datad => VCC,
	cin => \inst6|Add6~53\,
	combout => \inst6|Add6~54_combout\,
	cout => \inst6|Add6~55\);

-- Location: LCCOMB_X25_Y21_N26
\inst6|Add6~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~56_combout\ = (\inst4|delay_counter\(29) & (\inst6|Add6~55\ $ (GND))) # (!\inst4|delay_counter\(29) & (!\inst6|Add6~55\ & VCC))
-- \inst6|Add6~57\ = CARRY((\inst4|delay_counter\(29) & !\inst6|Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|delay_counter\(29),
	datad => VCC,
	cin => \inst6|Add6~55\,
	combout => \inst6|Add6~56_combout\,
	cout => \inst6|Add6~57\);

-- Location: LCCOMB_X25_Y21_N28
\inst6|Add6~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~58_combout\ = (\inst4|delay_counter\(30) & (!\inst6|Add6~57\)) # (!\inst4|delay_counter\(30) & ((\inst6|Add6~57\) # (GND)))
-- \inst6|Add6~59\ = CARRY((!\inst6|Add6~57\) # (!\inst4|delay_counter\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|delay_counter\(30),
	datad => VCC,
	cin => \inst6|Add6~57\,
	combout => \inst6|Add6~58_combout\,
	cout => \inst6|Add6~59\);

-- Location: LCCOMB_X25_Y21_N30
\inst6|Add6~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~60_combout\ = \inst6|Add6~59\ $ (!\inst4|delay_counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|delay_counter\(31),
	cin => \inst6|Add6~59\,
	combout => \inst6|Add6~60_combout\);

-- Location: LCCOMB_X26_Y21_N10
\inst6|Equal10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal10~9_combout\ = (!\inst6|Add6~56_combout\ & (!\inst6|Add6~54_combout\ & (!\inst6|Add6~58_combout\ & !\inst6|Add6~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~56_combout\,
	datab => \inst6|Add6~54_combout\,
	datac => \inst6|Add6~58_combout\,
	datad => \inst6|Add6~60_combout\,
	combout => \inst6|Equal10~9_combout\);

-- Location: LCCOMB_X26_Y21_N28
\inst6|Equal10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal10~10_combout\ = (\inst6|Equal10~7_combout\ & (\inst6|Equal10~4_combout\ & (\inst6|Equal10~8_combout\ & \inst6|Equal10~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal10~7_combout\,
	datab => \inst6|Equal10~4_combout\,
	datac => \inst6|Equal10~8_combout\,
	datad => \inst6|Equal10~9_combout\,
	combout => \inst6|Equal10~10_combout\);

-- Location: LCCOMB_X10_Y27_N24
\inst6|StartTx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|StartTx~0_combout\ = (\inst5|TRANSMIT~q\) # ((\inst6|StartTx~q\ & !\inst6|Equal10~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|TRANSMIT~q\,
	datac => \inst6|StartTx~q\,
	datad => \inst6|Equal10~10_combout\,
	combout => \inst6|StartTx~0_combout\);

-- Location: FF_X10_Y27_N25
\inst6|StartTx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|StartTx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|StartTx~q\);

-- Location: LCCOMB_X10_Y27_N18
\inst6|wt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|wt~0_combout\ = (!\inst6|Equal10~10_combout\ & ((\inst6|wt~q\) # ((\inst6|CS~combout\ & \inst6|StartTx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|CS~combout\,
	datab => \inst6|StartTx~q\,
	datac => \inst6|wt~q\,
	datad => \inst6|Equal10~10_combout\,
	combout => \inst6|wt~0_combout\);

-- Location: FF_X10_Y27_N19
\inst6|wt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|wt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|wt~q\);

-- Location: LCCOMB_X10_Y27_N20
\inst6|process_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_6~0_combout\ = (\inst6|StartTx~q\ & !\inst6|wt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|StartTx~q\,
	datad => \inst6|wt~q\,
	combout => \inst6|process_6~0_combout\);

-- Location: FF_X14_Y30_N15
\inst6|EC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~14_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(7));

-- Location: LCCOMB_X14_Y30_N0
\inst6|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~0_combout\ = \inst6|EC\(0) $ (VCC)
-- \inst6|Add0~1\ = CARRY(\inst6|EC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(0),
	datad => VCC,
	combout => \inst6|Add0~0_combout\,
	cout => \inst6|Add0~1\);

-- Location: LCCOMB_X15_Y29_N16
\inst6|EC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|EC~3_combout\ = (\inst6|Add0~0_combout\ & !\inst6|state_csh~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~0_combout\,
	datad => \inst6|state_csh~12_combout\,
	combout => \inst6|EC~3_combout\);

-- Location: FF_X15_Y29_N17
\inst6|EC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|EC~3_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(0));

-- Location: LCCOMB_X14_Y30_N2
\inst6|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~2_combout\ = (\inst6|EC\(1) & (!\inst6|Add0~1\)) # (!\inst6|EC\(1) & ((\inst6|Add0~1\) # (GND)))
-- \inst6|Add0~3\ = CARRY((!\inst6|Add0~1\) # (!\inst6|EC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(1),
	datad => VCC,
	cin => \inst6|Add0~1\,
	combout => \inst6|Add0~2_combout\,
	cout => \inst6|Add0~3\);

-- Location: LCCOMB_X15_Y29_N4
\inst6|EC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|EC~5_combout\ = (\inst6|Add0~2_combout\ & !\inst6|state_csh~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add0~2_combout\,
	datad => \inst6|state_csh~12_combout\,
	combout => \inst6|EC~5_combout\);

-- Location: FF_X15_Y29_N5
\inst6|EC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|EC~5_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(1));

-- Location: LCCOMB_X14_Y30_N4
\inst6|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~4_combout\ = (\inst6|EC\(2) & (\inst6|Add0~3\ $ (GND))) # (!\inst6|EC\(2) & (!\inst6|Add0~3\ & VCC))
-- \inst6|Add0~5\ = CARRY((\inst6|EC\(2) & !\inst6|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(2),
	datad => VCC,
	cin => \inst6|Add0~3\,
	combout => \inst6|Add0~4_combout\,
	cout => \inst6|Add0~5\);

-- Location: FF_X14_Y30_N5
\inst6|EC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~4_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(2));

-- Location: LCCOMB_X14_Y30_N6
\inst6|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~6_combout\ = (\inst6|EC\(3) & (!\inst6|Add0~5\)) # (!\inst6|EC\(3) & ((\inst6|Add0~5\) # (GND)))
-- \inst6|Add0~7\ = CARRY((!\inst6|Add0~5\) # (!\inst6|EC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EC\(3),
	datad => VCC,
	cin => \inst6|Add0~5\,
	combout => \inst6|Add0~6_combout\,
	cout => \inst6|Add0~7\);

-- Location: FF_X14_Y30_N7
\inst6|EC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~6_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(3));

-- Location: LCCOMB_X14_Y30_N8
\inst6|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~8_combout\ = (\inst6|EC\(4) & (\inst6|Add0~7\ $ (GND))) # (!\inst6|EC\(4) & (!\inst6|Add0~7\ & VCC))
-- \inst6|Add0~9\ = CARRY((\inst6|EC\(4) & !\inst6|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(4),
	datad => VCC,
	cin => \inst6|Add0~7\,
	combout => \inst6|Add0~8_combout\,
	cout => \inst6|Add0~9\);

-- Location: LCCOMB_X15_Y29_N30
\inst6|EC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|EC~4_combout\ = (\inst6|Add0~8_combout\ & !\inst6|state_csh~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~8_combout\,
	datad => \inst6|state_csh~12_combout\,
	combout => \inst6|EC~4_combout\);

-- Location: FF_X15_Y29_N31
\inst6|EC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|EC~4_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(4));

-- Location: LCCOMB_X14_Y30_N10
\inst6|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~10_combout\ = (\inst6|EC\(5) & (!\inst6|Add0~9\)) # (!\inst6|EC\(5) & ((\inst6|Add0~9\) # (GND)))
-- \inst6|Add0~11\ = CARRY((!\inst6|Add0~9\) # (!\inst6|EC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EC\(5),
	datad => VCC,
	cin => \inst6|Add0~9\,
	combout => \inst6|Add0~10_combout\,
	cout => \inst6|Add0~11\);

-- Location: FF_X14_Y30_N11
\inst6|EC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~10_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(5));

-- Location: LCCOMB_X14_Y30_N12
\inst6|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~12_combout\ = (\inst6|EC\(6) & (\inst6|Add0~11\ $ (GND))) # (!\inst6|EC\(6) & (!\inst6|Add0~11\ & VCC))
-- \inst6|Add0~13\ = CARRY((\inst6|EC\(6) & !\inst6|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EC\(6),
	datad => VCC,
	cin => \inst6|Add0~11\,
	combout => \inst6|Add0~12_combout\,
	cout => \inst6|Add0~13\);

-- Location: FF_X14_Y30_N13
\inst6|EC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~12_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(6));

-- Location: LCCOMB_X14_Y30_N14
\inst6|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~14_combout\ = (\inst6|EC\(7) & (!\inst6|Add0~13\)) # (!\inst6|EC\(7) & ((\inst6|Add0~13\) # (GND)))
-- \inst6|Add0~15\ = CARRY((!\inst6|Add0~13\) # (!\inst6|EC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(7),
	datad => VCC,
	cin => \inst6|Add0~13\,
	combout => \inst6|Add0~14_combout\,
	cout => \inst6|Add0~15\);

-- Location: FF_X14_Y30_N21
\inst6|EC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~20_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(10));

-- Location: LCCOMB_X14_Y30_N16
\inst6|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~16_combout\ = (\inst6|EC\(8) & (\inst6|Add0~15\ $ (GND))) # (!\inst6|EC\(8) & (!\inst6|Add0~15\ & VCC))
-- \inst6|Add0~17\ = CARRY((\inst6|EC\(8) & !\inst6|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(8),
	datad => VCC,
	cin => \inst6|Add0~15\,
	combout => \inst6|Add0~16_combout\,
	cout => \inst6|Add0~17\);

-- Location: FF_X14_Y30_N17
\inst6|EC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~16_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(8));

-- Location: LCCOMB_X14_Y30_N18
\inst6|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~18_combout\ = (\inst6|EC\(9) & (!\inst6|Add0~17\)) # (!\inst6|EC\(9) & ((\inst6|Add0~17\) # (GND)))
-- \inst6|Add0~19\ = CARRY((!\inst6|Add0~17\) # (!\inst6|EC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(9),
	datad => VCC,
	cin => \inst6|Add0~17\,
	combout => \inst6|Add0~18_combout\,
	cout => \inst6|Add0~19\);

-- Location: FF_X14_Y30_N19
\inst6|EC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~18_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(9));

-- Location: LCCOMB_X14_Y30_N20
\inst6|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~20_combout\ = (\inst6|EC\(10) & (\inst6|Add0~19\ $ (GND))) # (!\inst6|EC\(10) & (!\inst6|Add0~19\ & VCC))
-- \inst6|Add0~21\ = CARRY((\inst6|EC\(10) & !\inst6|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(10),
	datad => VCC,
	cin => \inst6|Add0~19\,
	combout => \inst6|Add0~20_combout\,
	cout => \inst6|Add0~21\);

-- Location: LCCOMB_X15_Y30_N14
\inst6|state_csh~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csh~4_combout\ = (!\inst6|Add0~14_combout\ & (!\inst6|Add0~20_combout\ & (!\inst6|Add0~16_combout\ & !\inst6|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~14_combout\,
	datab => \inst6|Add0~20_combout\,
	datac => \inst6|Add0~16_combout\,
	datad => \inst6|Add0~18_combout\,
	combout => \inst6|state_csh~4_combout\);

-- Location: LCCOMB_X15_Y30_N12
\inst6|state_csh~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csh~3_combout\ = (!\inst6|Add0~12_combout\ & (!\inst6|Add0~6_combout\ & (!\inst6|Add0~4_combout\ & !\inst6|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~12_combout\,
	datab => \inst6|Add0~6_combout\,
	datac => \inst6|Add0~4_combout\,
	datad => \inst6|Add0~10_combout\,
	combout => \inst6|state_csh~3_combout\);

-- Location: LCCOMB_X15_Y29_N6
\inst6|state_csh~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csh~2_combout\ = (\inst6|state_csh~q\ & (!\inst6|Add0~8_combout\ & (!\inst6|Add0~0_combout\ & \inst6|Add0~2_combout\))) # (!\inst6|state_csh~q\ & (\inst6|Add0~8_combout\ & (\inst6|Add0~0_combout\ & !\inst6|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|state_csh~q\,
	datab => \inst6|Add0~8_combout\,
	datac => \inst6|Add0~0_combout\,
	datad => \inst6|Add0~2_combout\,
	combout => \inst6|state_csh~2_combout\);

-- Location: LCCOMB_X15_Y29_N12
\inst6|state_csh~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csh~5_combout\ = (\inst6|state_csh~4_combout\ & (\inst6|state_csh~3_combout\ & \inst6|state_csh~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|state_csh~4_combout\,
	datac => \inst6|state_csh~3_combout\,
	datad => \inst6|state_csh~2_combout\,
	combout => \inst6|state_csh~5_combout\);

-- Location: FF_X14_Y29_N31
\inst6|EC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~62_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(31));

-- Location: LCCOMB_X14_Y30_N22
\inst6|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~22_combout\ = (\inst6|EC\(11) & (!\inst6|Add0~21\)) # (!\inst6|EC\(11) & ((\inst6|Add0~21\) # (GND)))
-- \inst6|Add0~23\ = CARRY((!\inst6|Add0~21\) # (!\inst6|EC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EC\(11),
	datad => VCC,
	cin => \inst6|Add0~21\,
	combout => \inst6|Add0~22_combout\,
	cout => \inst6|Add0~23\);

-- Location: FF_X14_Y30_N23
\inst6|EC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~22_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(11));

-- Location: LCCOMB_X14_Y30_N24
\inst6|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~24_combout\ = (\inst6|EC\(12) & (\inst6|Add0~23\ $ (GND))) # (!\inst6|EC\(12) & (!\inst6|Add0~23\ & VCC))
-- \inst6|Add0~25\ = CARRY((\inst6|EC\(12) & !\inst6|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(12),
	datad => VCC,
	cin => \inst6|Add0~23\,
	combout => \inst6|Add0~24_combout\,
	cout => \inst6|Add0~25\);

-- Location: FF_X14_Y30_N25
\inst6|EC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~24_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(12));

-- Location: LCCOMB_X14_Y30_N26
\inst6|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~26_combout\ = (\inst6|EC\(13) & (!\inst6|Add0~25\)) # (!\inst6|EC\(13) & ((\inst6|Add0~25\) # (GND)))
-- \inst6|Add0~27\ = CARRY((!\inst6|Add0~25\) # (!\inst6|EC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EC\(13),
	datad => VCC,
	cin => \inst6|Add0~25\,
	combout => \inst6|Add0~26_combout\,
	cout => \inst6|Add0~27\);

-- Location: FF_X14_Y30_N27
\inst6|EC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~26_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(13));

-- Location: LCCOMB_X14_Y30_N28
\inst6|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~28_combout\ = (\inst6|EC\(14) & (\inst6|Add0~27\ $ (GND))) # (!\inst6|EC\(14) & (!\inst6|Add0~27\ & VCC))
-- \inst6|Add0~29\ = CARRY((\inst6|EC\(14) & !\inst6|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(14),
	datad => VCC,
	cin => \inst6|Add0~27\,
	combout => \inst6|Add0~28_combout\,
	cout => \inst6|Add0~29\);

-- Location: FF_X14_Y30_N29
\inst6|EC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~28_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(14));

-- Location: LCCOMB_X14_Y30_N30
\inst6|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~30_combout\ = (\inst6|EC\(15) & (!\inst6|Add0~29\)) # (!\inst6|EC\(15) & ((\inst6|Add0~29\) # (GND)))
-- \inst6|Add0~31\ = CARRY((!\inst6|Add0~29\) # (!\inst6|EC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EC\(15),
	datad => VCC,
	cin => \inst6|Add0~29\,
	combout => \inst6|Add0~30_combout\,
	cout => \inst6|Add0~31\);

-- Location: FF_X14_Y30_N31
\inst6|EC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~30_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(15));

-- Location: LCCOMB_X14_Y29_N0
\inst6|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~32_combout\ = (\inst6|EC\(16) & (\inst6|Add0~31\ $ (GND))) # (!\inst6|EC\(16) & (!\inst6|Add0~31\ & VCC))
-- \inst6|Add0~33\ = CARRY((\inst6|EC\(16) & !\inst6|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(16),
	datad => VCC,
	cin => \inst6|Add0~31\,
	combout => \inst6|Add0~32_combout\,
	cout => \inst6|Add0~33\);

-- Location: FF_X14_Y29_N1
\inst6|EC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~32_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(16));

-- Location: LCCOMB_X14_Y29_N2
\inst6|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~34_combout\ = (\inst6|EC\(17) & (!\inst6|Add0~33\)) # (!\inst6|EC\(17) & ((\inst6|Add0~33\) # (GND)))
-- \inst6|Add0~35\ = CARRY((!\inst6|Add0~33\) # (!\inst6|EC\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(17),
	datad => VCC,
	cin => \inst6|Add0~33\,
	combout => \inst6|Add0~34_combout\,
	cout => \inst6|Add0~35\);

-- Location: FF_X14_Y29_N3
\inst6|EC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~34_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(17));

-- Location: LCCOMB_X14_Y29_N4
\inst6|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~36_combout\ = (\inst6|EC\(18) & (\inst6|Add0~35\ $ (GND))) # (!\inst6|EC\(18) & (!\inst6|Add0~35\ & VCC))
-- \inst6|Add0~37\ = CARRY((\inst6|EC\(18) & !\inst6|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(18),
	datad => VCC,
	cin => \inst6|Add0~35\,
	combout => \inst6|Add0~36_combout\,
	cout => \inst6|Add0~37\);

-- Location: FF_X14_Y29_N5
\inst6|EC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~36_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(18));

-- Location: LCCOMB_X14_Y29_N6
\inst6|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~38_combout\ = (\inst6|EC\(19) & (!\inst6|Add0~37\)) # (!\inst6|EC\(19) & ((\inst6|Add0~37\) # (GND)))
-- \inst6|Add0~39\ = CARRY((!\inst6|Add0~37\) # (!\inst6|EC\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EC\(19),
	datad => VCC,
	cin => \inst6|Add0~37\,
	combout => \inst6|Add0~38_combout\,
	cout => \inst6|Add0~39\);

-- Location: FF_X14_Y29_N7
\inst6|EC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~38_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(19));

-- Location: LCCOMB_X14_Y29_N8
\inst6|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~40_combout\ = (\inst6|EC\(20) & (\inst6|Add0~39\ $ (GND))) # (!\inst6|EC\(20) & (!\inst6|Add0~39\ & VCC))
-- \inst6|Add0~41\ = CARRY((\inst6|EC\(20) & !\inst6|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(20),
	datad => VCC,
	cin => \inst6|Add0~39\,
	combout => \inst6|Add0~40_combout\,
	cout => \inst6|Add0~41\);

-- Location: FF_X14_Y29_N9
\inst6|EC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~40_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(20));

-- Location: LCCOMB_X14_Y29_N10
\inst6|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~42_combout\ = (\inst6|EC\(21) & (!\inst6|Add0~41\)) # (!\inst6|EC\(21) & ((\inst6|Add0~41\) # (GND)))
-- \inst6|Add0~43\ = CARRY((!\inst6|Add0~41\) # (!\inst6|EC\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EC\(21),
	datad => VCC,
	cin => \inst6|Add0~41\,
	combout => \inst6|Add0~42_combout\,
	cout => \inst6|Add0~43\);

-- Location: FF_X14_Y29_N11
\inst6|EC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~42_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(21));

-- Location: LCCOMB_X14_Y29_N12
\inst6|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~44_combout\ = (\inst6|EC\(22) & (\inst6|Add0~43\ $ (GND))) # (!\inst6|EC\(22) & (!\inst6|Add0~43\ & VCC))
-- \inst6|Add0~45\ = CARRY((\inst6|EC\(22) & !\inst6|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EC\(22),
	datad => VCC,
	cin => \inst6|Add0~43\,
	combout => \inst6|Add0~44_combout\,
	cout => \inst6|Add0~45\);

-- Location: FF_X14_Y29_N13
\inst6|EC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~44_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(22));

-- Location: LCCOMB_X14_Y29_N14
\inst6|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~46_combout\ = (\inst6|EC\(23) & (!\inst6|Add0~45\)) # (!\inst6|EC\(23) & ((\inst6|Add0~45\) # (GND)))
-- \inst6|Add0~47\ = CARRY((!\inst6|Add0~45\) # (!\inst6|EC\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(23),
	datad => VCC,
	cin => \inst6|Add0~45\,
	combout => \inst6|Add0~46_combout\,
	cout => \inst6|Add0~47\);

-- Location: FF_X14_Y29_N15
\inst6|EC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~46_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(23));

-- Location: LCCOMB_X14_Y29_N16
\inst6|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~48_combout\ = (\inst6|EC\(24) & (\inst6|Add0~47\ $ (GND))) # (!\inst6|EC\(24) & (!\inst6|Add0~47\ & VCC))
-- \inst6|Add0~49\ = CARRY((\inst6|EC\(24) & !\inst6|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(24),
	datad => VCC,
	cin => \inst6|Add0~47\,
	combout => \inst6|Add0~48_combout\,
	cout => \inst6|Add0~49\);

-- Location: FF_X14_Y29_N17
\inst6|EC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~48_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(24));

-- Location: LCCOMB_X14_Y29_N18
\inst6|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~50_combout\ = (\inst6|EC\(25) & (!\inst6|Add0~49\)) # (!\inst6|EC\(25) & ((\inst6|Add0~49\) # (GND)))
-- \inst6|Add0~51\ = CARRY((!\inst6|Add0~49\) # (!\inst6|EC\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(25),
	datad => VCC,
	cin => \inst6|Add0~49\,
	combout => \inst6|Add0~50_combout\,
	cout => \inst6|Add0~51\);

-- Location: FF_X14_Y29_N19
\inst6|EC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~50_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(25));

-- Location: LCCOMB_X14_Y29_N20
\inst6|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~52_combout\ = (\inst6|EC\(26) & (\inst6|Add0~51\ $ (GND))) # (!\inst6|EC\(26) & (!\inst6|Add0~51\ & VCC))
-- \inst6|Add0~53\ = CARRY((\inst6|EC\(26) & !\inst6|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(26),
	datad => VCC,
	cin => \inst6|Add0~51\,
	combout => \inst6|Add0~52_combout\,
	cout => \inst6|Add0~53\);

-- Location: FF_X14_Y29_N21
\inst6|EC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~52_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(26));

-- Location: LCCOMB_X14_Y29_N22
\inst6|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~54_combout\ = (\inst6|EC\(27) & (!\inst6|Add0~53\)) # (!\inst6|EC\(27) & ((\inst6|Add0~53\) # (GND)))
-- \inst6|Add0~55\ = CARRY((!\inst6|Add0~53\) # (!\inst6|EC\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EC\(27),
	datad => VCC,
	cin => \inst6|Add0~53\,
	combout => \inst6|Add0~54_combout\,
	cout => \inst6|Add0~55\);

-- Location: FF_X14_Y29_N23
\inst6|EC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~54_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(27));

-- Location: LCCOMB_X14_Y29_N24
\inst6|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~56_combout\ = (\inst6|EC\(28) & (\inst6|Add0~55\ $ (GND))) # (!\inst6|EC\(28) & (!\inst6|Add0~55\ & VCC))
-- \inst6|Add0~57\ = CARRY((\inst6|EC\(28) & !\inst6|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(28),
	datad => VCC,
	cin => \inst6|Add0~55\,
	combout => \inst6|Add0~56_combout\,
	cout => \inst6|Add0~57\);

-- Location: FF_X14_Y29_N25
\inst6|EC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~56_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(28));

-- Location: LCCOMB_X14_Y29_N26
\inst6|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~58_combout\ = (\inst6|EC\(29) & (!\inst6|Add0~57\)) # (!\inst6|EC\(29) & ((\inst6|Add0~57\) # (GND)))
-- \inst6|Add0~59\ = CARRY((!\inst6|Add0~57\) # (!\inst6|EC\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EC\(29),
	datad => VCC,
	cin => \inst6|Add0~57\,
	combout => \inst6|Add0~58_combout\,
	cout => \inst6|Add0~59\);

-- Location: FF_X14_Y29_N27
\inst6|EC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~58_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(29));

-- Location: LCCOMB_X14_Y29_N28
\inst6|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~60_combout\ = (\inst6|EC\(30) & (\inst6|Add0~59\ $ (GND))) # (!\inst6|EC\(30) & (!\inst6|Add0~59\ & VCC))
-- \inst6|Add0~61\ = CARRY((\inst6|EC\(30) & !\inst6|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|EC\(30),
	datad => VCC,
	cin => \inst6|Add0~59\,
	combout => \inst6|Add0~60_combout\,
	cout => \inst6|Add0~61\);

-- Location: FF_X14_Y29_N29
\inst6|EC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add0~60_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|EC\(30));

-- Location: LCCOMB_X14_Y29_N30
\inst6|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~62_combout\ = \inst6|EC\(31) $ (\inst6|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|EC\(31),
	cin => \inst6|Add0~61\,
	combout => \inst6|Add0~62_combout\);

-- Location: LCCOMB_X15_Y29_N14
\inst6|state_csh~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csh~11_combout\ = (!\inst6|Add0~58_combout\ & (!\inst6|Add0~54_combout\ & (!\inst6|Add0~60_combout\ & !\inst6|Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~58_combout\,
	datab => \inst6|Add0~54_combout\,
	datac => \inst6|Add0~60_combout\,
	datad => \inst6|Add0~56_combout\,
	combout => \inst6|state_csh~11_combout\);

-- Location: LCCOMB_X15_Y29_N26
\inst6|state_csh~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csh~7_combout\ = (!\inst6|Add0~32_combout\ & (!\inst6|Add0~36_combout\ & (!\inst6|Add0~30_combout\ & !\inst6|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~32_combout\,
	datab => \inst6|Add0~36_combout\,
	datac => \inst6|Add0~30_combout\,
	datad => \inst6|Add0~34_combout\,
	combout => \inst6|state_csh~7_combout\);

-- Location: LCCOMB_X15_Y29_N20
\inst6|state_csh~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csh~8_combout\ = (!\inst6|Add0~42_combout\ & (!\inst6|Add0~38_combout\ & (!\inst6|Add0~44_combout\ & !\inst6|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~42_combout\,
	datab => \inst6|Add0~38_combout\,
	datac => \inst6|Add0~44_combout\,
	datad => \inst6|Add0~40_combout\,
	combout => \inst6|state_csh~8_combout\);

-- Location: LCCOMB_X15_Y30_N28
\inst6|state_csh~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csh~6_combout\ = (!\inst6|Add0~26_combout\ & (!\inst6|Add0~22_combout\ & (!\inst6|Add0~28_combout\ & !\inst6|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~26_combout\,
	datab => \inst6|Add0~22_combout\,
	datac => \inst6|Add0~28_combout\,
	datad => \inst6|Add0~24_combout\,
	combout => \inst6|state_csh~6_combout\);

-- Location: LCCOMB_X15_Y29_N10
\inst6|state_csh~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csh~9_combout\ = (!\inst6|Add0~46_combout\ & (!\inst6|Add0~52_combout\ & (!\inst6|Add0~48_combout\ & !\inst6|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~46_combout\,
	datab => \inst6|Add0~52_combout\,
	datac => \inst6|Add0~48_combout\,
	datad => \inst6|Add0~50_combout\,
	combout => \inst6|state_csh~9_combout\);

-- Location: LCCOMB_X15_Y29_N28
\inst6|state_csh~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csh~10_combout\ = (\inst6|state_csh~7_combout\ & (\inst6|state_csh~8_combout\ & (\inst6|state_csh~6_combout\ & \inst6|state_csh~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|state_csh~7_combout\,
	datab => \inst6|state_csh~8_combout\,
	datac => \inst6|state_csh~6_combout\,
	datad => \inst6|state_csh~9_combout\,
	combout => \inst6|state_csh~10_combout\);

-- Location: LCCOMB_X15_Y29_N24
\inst6|state_csh~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csh~12_combout\ = (\inst6|state_csh~5_combout\ & (!\inst6|Add0~62_combout\ & (\inst6|state_csh~11_combout\ & \inst6|state_csh~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|state_csh~5_combout\,
	datab => \inst6|Add0~62_combout\,
	datac => \inst6|state_csh~11_combout\,
	datad => \inst6|state_csh~10_combout\,
	combout => \inst6|state_csh~12_combout\);

-- Location: LCCOMB_X15_Y29_N22
\inst6|state_csh~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csh~13_combout\ = \inst6|state_csh~q\ $ (((!\inst6|wt~q\ & (\inst6|StartTx~q\ & \inst6|state_csh~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|wt~q\,
	datab => \inst6|StartTx~q\,
	datac => \inst6|state_csh~q\,
	datad => \inst6|state_csh~12_combout\,
	combout => \inst6|state_csh~13_combout\);

-- Location: FF_X15_Y29_N23
\inst6|state_csh\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|state_csh~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|state_csh~q\);

-- Location: FF_X15_Y29_N9
\inst6|CSU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst6|state_csh~q\,
	sload => VCC,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CSU~q\);

-- Location: FF_X14_Y26_N27
\inst6|process_1:EC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~58_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[29]~q\);

-- Location: LCCOMB_X14_Y27_N0
\inst6|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~0_combout\ = \inst6|process_1:EC[0]~q\ $ (VCC)
-- \inst6|Add1~1\ = CARRY(\inst6|process_1:EC[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_1:EC[0]~q\,
	datad => VCC,
	combout => \inst6|Add1~0_combout\,
	cout => \inst6|Add1~1\);

-- Location: LCCOMB_X15_Y26_N24
\inst6|EC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|EC~0_combout\ = (\inst6|Add1~0_combout\ & !\inst6|state_csl~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~0_combout\,
	datad => \inst6|state_csl~12_combout\,
	combout => \inst6|EC~0_combout\);

-- Location: FF_X15_Y26_N25
\inst6|process_1:EC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|EC~0_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[0]~q\);

-- Location: LCCOMB_X14_Y27_N2
\inst6|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~2_combout\ = (\inst6|process_1:EC[1]~q\ & (!\inst6|Add1~1\)) # (!\inst6|process_1:EC[1]~q\ & ((\inst6|Add1~1\) # (GND)))
-- \inst6|Add1~3\ = CARRY((!\inst6|Add1~1\) # (!\inst6|process_1:EC[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_1:EC[1]~q\,
	datad => VCC,
	cin => \inst6|Add1~1\,
	combout => \inst6|Add1~2_combout\,
	cout => \inst6|Add1~3\);

-- Location: LCCOMB_X15_Y26_N12
\inst6|EC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|EC~2_combout\ = (\inst6|Add1~2_combout\ & !\inst6|state_csl~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~2_combout\,
	datad => \inst6|state_csl~12_combout\,
	combout => \inst6|EC~2_combout\);

-- Location: FF_X15_Y26_N13
\inst6|process_1:EC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|EC~2_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[1]~q\);

-- Location: LCCOMB_X14_Y27_N4
\inst6|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~4_combout\ = (\inst6|process_1:EC[2]~q\ & (\inst6|Add1~3\ $ (GND))) # (!\inst6|process_1:EC[2]~q\ & (!\inst6|Add1~3\ & VCC))
-- \inst6|Add1~5\ = CARRY((\inst6|process_1:EC[2]~q\ & !\inst6|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[2]~q\,
	datad => VCC,
	cin => \inst6|Add1~3\,
	combout => \inst6|Add1~4_combout\,
	cout => \inst6|Add1~5\);

-- Location: FF_X14_Y27_N5
\inst6|process_1:EC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~4_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[2]~q\);

-- Location: LCCOMB_X14_Y27_N6
\inst6|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~6_combout\ = (\inst6|process_1:EC[3]~q\ & (!\inst6|Add1~5\)) # (!\inst6|process_1:EC[3]~q\ & ((\inst6|Add1~5\) # (GND)))
-- \inst6|Add1~7\ = CARRY((!\inst6|Add1~5\) # (!\inst6|process_1:EC[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_1:EC[3]~q\,
	datad => VCC,
	cin => \inst6|Add1~5\,
	combout => \inst6|Add1~6_combout\,
	cout => \inst6|Add1~7\);

-- Location: FF_X14_Y27_N7
\inst6|process_1:EC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~6_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[3]~q\);

-- Location: LCCOMB_X14_Y27_N8
\inst6|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~8_combout\ = (\inst6|process_1:EC[4]~q\ & (\inst6|Add1~7\ $ (GND))) # (!\inst6|process_1:EC[4]~q\ & (!\inst6|Add1~7\ & VCC))
-- \inst6|Add1~9\ = CARRY((\inst6|process_1:EC[4]~q\ & !\inst6|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[4]~q\,
	datad => VCC,
	cin => \inst6|Add1~7\,
	combout => \inst6|Add1~8_combout\,
	cout => \inst6|Add1~9\);

-- Location: LCCOMB_X15_Y26_N14
\inst6|EC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|EC~1_combout\ = (\inst6|Add1~8_combout\ & !\inst6|state_csl~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add1~8_combout\,
	datad => \inst6|state_csl~12_combout\,
	combout => \inst6|EC~1_combout\);

-- Location: FF_X15_Y26_N15
\inst6|process_1:EC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|EC~1_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[4]~q\);

-- Location: LCCOMB_X14_Y27_N10
\inst6|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~10_combout\ = (\inst6|process_1:EC[5]~q\ & (!\inst6|Add1~9\)) # (!\inst6|process_1:EC[5]~q\ & ((\inst6|Add1~9\) # (GND)))
-- \inst6|Add1~11\ = CARRY((!\inst6|Add1~9\) # (!\inst6|process_1:EC[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_1:EC[5]~q\,
	datad => VCC,
	cin => \inst6|Add1~9\,
	combout => \inst6|Add1~10_combout\,
	cout => \inst6|Add1~11\);

-- Location: FF_X14_Y27_N11
\inst6|process_1:EC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~10_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[5]~q\);

-- Location: LCCOMB_X14_Y27_N12
\inst6|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~12_combout\ = (\inst6|process_1:EC[6]~q\ & (\inst6|Add1~11\ $ (GND))) # (!\inst6|process_1:EC[6]~q\ & (!\inst6|Add1~11\ & VCC))
-- \inst6|Add1~13\ = CARRY((\inst6|process_1:EC[6]~q\ & !\inst6|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_1:EC[6]~q\,
	datad => VCC,
	cin => \inst6|Add1~11\,
	combout => \inst6|Add1~12_combout\,
	cout => \inst6|Add1~13\);

-- Location: FF_X14_Y27_N13
\inst6|process_1:EC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~12_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[6]~q\);

-- Location: LCCOMB_X14_Y27_N14
\inst6|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~14_combout\ = (\inst6|process_1:EC[7]~q\ & (!\inst6|Add1~13\)) # (!\inst6|process_1:EC[7]~q\ & ((\inst6|Add1~13\) # (GND)))
-- \inst6|Add1~15\ = CARRY((!\inst6|Add1~13\) # (!\inst6|process_1:EC[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[7]~q\,
	datad => VCC,
	cin => \inst6|Add1~13\,
	combout => \inst6|Add1~14_combout\,
	cout => \inst6|Add1~15\);

-- Location: FF_X14_Y27_N15
\inst6|process_1:EC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~14_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[7]~q\);

-- Location: LCCOMB_X14_Y27_N16
\inst6|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~16_combout\ = (\inst6|process_1:EC[8]~q\ & (\inst6|Add1~15\ $ (GND))) # (!\inst6|process_1:EC[8]~q\ & (!\inst6|Add1~15\ & VCC))
-- \inst6|Add1~17\ = CARRY((\inst6|process_1:EC[8]~q\ & !\inst6|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[8]~q\,
	datad => VCC,
	cin => \inst6|Add1~15\,
	combout => \inst6|Add1~16_combout\,
	cout => \inst6|Add1~17\);

-- Location: FF_X14_Y27_N17
\inst6|process_1:EC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~16_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[8]~q\);

-- Location: LCCOMB_X14_Y27_N18
\inst6|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~18_combout\ = (\inst6|process_1:EC[9]~q\ & (!\inst6|Add1~17\)) # (!\inst6|process_1:EC[9]~q\ & ((\inst6|Add1~17\) # (GND)))
-- \inst6|Add1~19\ = CARRY((!\inst6|Add1~17\) # (!\inst6|process_1:EC[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[9]~q\,
	datad => VCC,
	cin => \inst6|Add1~17\,
	combout => \inst6|Add1~18_combout\,
	cout => \inst6|Add1~19\);

-- Location: FF_X14_Y27_N19
\inst6|process_1:EC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~18_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[9]~q\);

-- Location: LCCOMB_X14_Y27_N20
\inst6|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~20_combout\ = (\inst6|process_1:EC[10]~q\ & (\inst6|Add1~19\ $ (GND))) # (!\inst6|process_1:EC[10]~q\ & (!\inst6|Add1~19\ & VCC))
-- \inst6|Add1~21\ = CARRY((\inst6|process_1:EC[10]~q\ & !\inst6|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[10]~q\,
	datad => VCC,
	cin => \inst6|Add1~19\,
	combout => \inst6|Add1~20_combout\,
	cout => \inst6|Add1~21\);

-- Location: FF_X14_Y27_N21
\inst6|process_1:EC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~20_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[10]~q\);

-- Location: LCCOMB_X14_Y27_N22
\inst6|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~22_combout\ = (\inst6|process_1:EC[11]~q\ & (!\inst6|Add1~21\)) # (!\inst6|process_1:EC[11]~q\ & ((\inst6|Add1~21\) # (GND)))
-- \inst6|Add1~23\ = CARRY((!\inst6|Add1~21\) # (!\inst6|process_1:EC[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_1:EC[11]~q\,
	datad => VCC,
	cin => \inst6|Add1~21\,
	combout => \inst6|Add1~22_combout\,
	cout => \inst6|Add1~23\);

-- Location: FF_X14_Y27_N23
\inst6|process_1:EC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~22_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[11]~q\);

-- Location: LCCOMB_X14_Y27_N24
\inst6|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~24_combout\ = (\inst6|process_1:EC[12]~q\ & (\inst6|Add1~23\ $ (GND))) # (!\inst6|process_1:EC[12]~q\ & (!\inst6|Add1~23\ & VCC))
-- \inst6|Add1~25\ = CARRY((\inst6|process_1:EC[12]~q\ & !\inst6|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[12]~q\,
	datad => VCC,
	cin => \inst6|Add1~23\,
	combout => \inst6|Add1~24_combout\,
	cout => \inst6|Add1~25\);

-- Location: FF_X14_Y27_N25
\inst6|process_1:EC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~24_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[12]~q\);

-- Location: LCCOMB_X14_Y27_N26
\inst6|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~26_combout\ = (\inst6|process_1:EC[13]~q\ & (!\inst6|Add1~25\)) # (!\inst6|process_1:EC[13]~q\ & ((\inst6|Add1~25\) # (GND)))
-- \inst6|Add1~27\ = CARRY((!\inst6|Add1~25\) # (!\inst6|process_1:EC[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_1:EC[13]~q\,
	datad => VCC,
	cin => \inst6|Add1~25\,
	combout => \inst6|Add1~26_combout\,
	cout => \inst6|Add1~27\);

-- Location: FF_X14_Y27_N27
\inst6|process_1:EC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~26_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[13]~q\);

-- Location: LCCOMB_X14_Y27_N28
\inst6|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~28_combout\ = (\inst6|process_1:EC[14]~q\ & (\inst6|Add1~27\ $ (GND))) # (!\inst6|process_1:EC[14]~q\ & (!\inst6|Add1~27\ & VCC))
-- \inst6|Add1~29\ = CARRY((\inst6|process_1:EC[14]~q\ & !\inst6|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[14]~q\,
	datad => VCC,
	cin => \inst6|Add1~27\,
	combout => \inst6|Add1~28_combout\,
	cout => \inst6|Add1~29\);

-- Location: FF_X14_Y27_N29
\inst6|process_1:EC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~28_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[14]~q\);

-- Location: LCCOMB_X14_Y27_N30
\inst6|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~30_combout\ = (\inst6|process_1:EC[15]~q\ & (!\inst6|Add1~29\)) # (!\inst6|process_1:EC[15]~q\ & ((\inst6|Add1~29\) # (GND)))
-- \inst6|Add1~31\ = CARRY((!\inst6|Add1~29\) # (!\inst6|process_1:EC[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_1:EC[15]~q\,
	datad => VCC,
	cin => \inst6|Add1~29\,
	combout => \inst6|Add1~30_combout\,
	cout => \inst6|Add1~31\);

-- Location: FF_X14_Y27_N31
\inst6|process_1:EC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~30_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[15]~q\);

-- Location: LCCOMB_X14_Y26_N0
\inst6|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~32_combout\ = (\inst6|process_1:EC[16]~q\ & (\inst6|Add1~31\ $ (GND))) # (!\inst6|process_1:EC[16]~q\ & (!\inst6|Add1~31\ & VCC))
-- \inst6|Add1~33\ = CARRY((\inst6|process_1:EC[16]~q\ & !\inst6|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[16]~q\,
	datad => VCC,
	cin => \inst6|Add1~31\,
	combout => \inst6|Add1~32_combout\,
	cout => \inst6|Add1~33\);

-- Location: FF_X14_Y26_N1
\inst6|process_1:EC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~32_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[16]~q\);

-- Location: LCCOMB_X14_Y26_N2
\inst6|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~34_combout\ = (\inst6|process_1:EC[17]~q\ & (!\inst6|Add1~33\)) # (!\inst6|process_1:EC[17]~q\ & ((\inst6|Add1~33\) # (GND)))
-- \inst6|Add1~35\ = CARRY((!\inst6|Add1~33\) # (!\inst6|process_1:EC[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[17]~q\,
	datad => VCC,
	cin => \inst6|Add1~33\,
	combout => \inst6|Add1~34_combout\,
	cout => \inst6|Add1~35\);

-- Location: FF_X14_Y26_N3
\inst6|process_1:EC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~34_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[17]~q\);

-- Location: LCCOMB_X14_Y26_N4
\inst6|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~36_combout\ = (\inst6|process_1:EC[18]~q\ & (\inst6|Add1~35\ $ (GND))) # (!\inst6|process_1:EC[18]~q\ & (!\inst6|Add1~35\ & VCC))
-- \inst6|Add1~37\ = CARRY((\inst6|process_1:EC[18]~q\ & !\inst6|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[18]~q\,
	datad => VCC,
	cin => \inst6|Add1~35\,
	combout => \inst6|Add1~36_combout\,
	cout => \inst6|Add1~37\);

-- Location: FF_X14_Y26_N5
\inst6|process_1:EC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~36_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[18]~q\);

-- Location: LCCOMB_X14_Y26_N6
\inst6|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~38_combout\ = (\inst6|process_1:EC[19]~q\ & (!\inst6|Add1~37\)) # (!\inst6|process_1:EC[19]~q\ & ((\inst6|Add1~37\) # (GND)))
-- \inst6|Add1~39\ = CARRY((!\inst6|Add1~37\) # (!\inst6|process_1:EC[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_1:EC[19]~q\,
	datad => VCC,
	cin => \inst6|Add1~37\,
	combout => \inst6|Add1~38_combout\,
	cout => \inst6|Add1~39\);

-- Location: FF_X14_Y26_N7
\inst6|process_1:EC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~38_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[19]~q\);

-- Location: LCCOMB_X14_Y26_N8
\inst6|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~40_combout\ = (\inst6|process_1:EC[20]~q\ & (\inst6|Add1~39\ $ (GND))) # (!\inst6|process_1:EC[20]~q\ & (!\inst6|Add1~39\ & VCC))
-- \inst6|Add1~41\ = CARRY((\inst6|process_1:EC[20]~q\ & !\inst6|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[20]~q\,
	datad => VCC,
	cin => \inst6|Add1~39\,
	combout => \inst6|Add1~40_combout\,
	cout => \inst6|Add1~41\);

-- Location: FF_X14_Y26_N9
\inst6|process_1:EC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~40_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[20]~q\);

-- Location: LCCOMB_X14_Y26_N10
\inst6|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~42_combout\ = (\inst6|process_1:EC[21]~q\ & (!\inst6|Add1~41\)) # (!\inst6|process_1:EC[21]~q\ & ((\inst6|Add1~41\) # (GND)))
-- \inst6|Add1~43\ = CARRY((!\inst6|Add1~41\) # (!\inst6|process_1:EC[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_1:EC[21]~q\,
	datad => VCC,
	cin => \inst6|Add1~41\,
	combout => \inst6|Add1~42_combout\,
	cout => \inst6|Add1~43\);

-- Location: FF_X14_Y26_N11
\inst6|process_1:EC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~42_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[21]~q\);

-- Location: LCCOMB_X14_Y26_N12
\inst6|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~44_combout\ = (\inst6|process_1:EC[22]~q\ & (\inst6|Add1~43\ $ (GND))) # (!\inst6|process_1:EC[22]~q\ & (!\inst6|Add1~43\ & VCC))
-- \inst6|Add1~45\ = CARRY((\inst6|process_1:EC[22]~q\ & !\inst6|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_1:EC[22]~q\,
	datad => VCC,
	cin => \inst6|Add1~43\,
	combout => \inst6|Add1~44_combout\,
	cout => \inst6|Add1~45\);

-- Location: FF_X14_Y26_N13
\inst6|process_1:EC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~44_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[22]~q\);

-- Location: LCCOMB_X14_Y26_N14
\inst6|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~46_combout\ = (\inst6|process_1:EC[23]~q\ & (!\inst6|Add1~45\)) # (!\inst6|process_1:EC[23]~q\ & ((\inst6|Add1~45\) # (GND)))
-- \inst6|Add1~47\ = CARRY((!\inst6|Add1~45\) # (!\inst6|process_1:EC[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[23]~q\,
	datad => VCC,
	cin => \inst6|Add1~45\,
	combout => \inst6|Add1~46_combout\,
	cout => \inst6|Add1~47\);

-- Location: FF_X14_Y26_N15
\inst6|process_1:EC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~46_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[23]~q\);

-- Location: LCCOMB_X14_Y26_N16
\inst6|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~48_combout\ = (\inst6|process_1:EC[24]~q\ & (\inst6|Add1~47\ $ (GND))) # (!\inst6|process_1:EC[24]~q\ & (!\inst6|Add1~47\ & VCC))
-- \inst6|Add1~49\ = CARRY((\inst6|process_1:EC[24]~q\ & !\inst6|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[24]~q\,
	datad => VCC,
	cin => \inst6|Add1~47\,
	combout => \inst6|Add1~48_combout\,
	cout => \inst6|Add1~49\);

-- Location: FF_X14_Y26_N17
\inst6|process_1:EC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~48_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[24]~q\);

-- Location: LCCOMB_X14_Y26_N18
\inst6|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~50_combout\ = (\inst6|process_1:EC[25]~q\ & (!\inst6|Add1~49\)) # (!\inst6|process_1:EC[25]~q\ & ((\inst6|Add1~49\) # (GND)))
-- \inst6|Add1~51\ = CARRY((!\inst6|Add1~49\) # (!\inst6|process_1:EC[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[25]~q\,
	datad => VCC,
	cin => \inst6|Add1~49\,
	combout => \inst6|Add1~50_combout\,
	cout => \inst6|Add1~51\);

-- Location: FF_X14_Y26_N19
\inst6|process_1:EC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~50_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[25]~q\);

-- Location: LCCOMB_X14_Y26_N20
\inst6|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~52_combout\ = (\inst6|process_1:EC[26]~q\ & (\inst6|Add1~51\ $ (GND))) # (!\inst6|process_1:EC[26]~q\ & (!\inst6|Add1~51\ & VCC))
-- \inst6|Add1~53\ = CARRY((\inst6|process_1:EC[26]~q\ & !\inst6|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[26]~q\,
	datad => VCC,
	cin => \inst6|Add1~51\,
	combout => \inst6|Add1~52_combout\,
	cout => \inst6|Add1~53\);

-- Location: FF_X14_Y26_N21
\inst6|process_1:EC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~52_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[26]~q\);

-- Location: LCCOMB_X14_Y26_N22
\inst6|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~54_combout\ = (\inst6|process_1:EC[27]~q\ & (!\inst6|Add1~53\)) # (!\inst6|process_1:EC[27]~q\ & ((\inst6|Add1~53\) # (GND)))
-- \inst6|Add1~55\ = CARRY((!\inst6|Add1~53\) # (!\inst6|process_1:EC[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_1:EC[27]~q\,
	datad => VCC,
	cin => \inst6|Add1~53\,
	combout => \inst6|Add1~54_combout\,
	cout => \inst6|Add1~55\);

-- Location: FF_X14_Y26_N23
\inst6|process_1:EC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~54_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[27]~q\);

-- Location: LCCOMB_X14_Y26_N24
\inst6|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~56_combout\ = (\inst6|process_1:EC[28]~q\ & (\inst6|Add1~55\ $ (GND))) # (!\inst6|process_1:EC[28]~q\ & (!\inst6|Add1~55\ & VCC))
-- \inst6|Add1~57\ = CARRY((\inst6|process_1:EC[28]~q\ & !\inst6|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[28]~q\,
	datad => VCC,
	cin => \inst6|Add1~55\,
	combout => \inst6|Add1~56_combout\,
	cout => \inst6|Add1~57\);

-- Location: FF_X14_Y26_N25
\inst6|process_1:EC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~56_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[28]~q\);

-- Location: LCCOMB_X14_Y26_N26
\inst6|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~58_combout\ = (\inst6|process_1:EC[29]~q\ & (!\inst6|Add1~57\)) # (!\inst6|process_1:EC[29]~q\ & ((\inst6|Add1~57\) # (GND)))
-- \inst6|Add1~59\ = CARRY((!\inst6|Add1~57\) # (!\inst6|process_1:EC[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_1:EC[29]~q\,
	datad => VCC,
	cin => \inst6|Add1~57\,
	combout => \inst6|Add1~58_combout\,
	cout => \inst6|Add1~59\);

-- Location: FF_X14_Y26_N29
\inst6|process_1:EC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~60_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[30]~q\);

-- Location: LCCOMB_X14_Y26_N28
\inst6|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~60_combout\ = (\inst6|process_1:EC[30]~q\ & (\inst6|Add1~59\ $ (GND))) # (!\inst6|process_1:EC[30]~q\ & (!\inst6|Add1~59\ & VCC))
-- \inst6|Add1~61\ = CARRY((\inst6|process_1:EC[30]~q\ & !\inst6|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1:EC[30]~q\,
	datad => VCC,
	cin => \inst6|Add1~59\,
	combout => \inst6|Add1~60_combout\,
	cout => \inst6|Add1~61\);

-- Location: LCCOMB_X15_Y26_N6
\inst6|state_csl~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csl~11_combout\ = (!\inst6|Add1~58_combout\ & (!\inst6|Add1~54_combout\ & (!\inst6|Add1~60_combout\ & !\inst6|Add1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~58_combout\,
	datab => \inst6|Add1~54_combout\,
	datac => \inst6|Add1~60_combout\,
	datad => \inst6|Add1~56_combout\,
	combout => \inst6|state_csl~11_combout\);

-- Location: FF_X14_Y26_N31
\inst6|process_1:EC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add1~62_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|process_1:EC[31]~q\);

-- Location: LCCOMB_X14_Y26_N30
\inst6|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~62_combout\ = \inst6|process_1:EC[31]~q\ $ (\inst6|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_1:EC[31]~q\,
	cin => \inst6|Add1~61\,
	combout => \inst6|Add1~62_combout\);

-- Location: LCCOMB_X15_Y26_N30
\inst6|state_csl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csl~2_combout\ = (\inst6|state_csl~q\ & (!\inst6|Add1~0_combout\ & (!\inst6|Add1~8_combout\ & \inst6|Add1~2_combout\))) # (!\inst6|state_csl~q\ & (\inst6|Add1~0_combout\ & (\inst6|Add1~8_combout\ & !\inst6|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|state_csl~q\,
	datab => \inst6|Add1~0_combout\,
	datac => \inst6|Add1~8_combout\,
	datad => \inst6|Add1~2_combout\,
	combout => \inst6|state_csl~2_combout\);

-- Location: LCCOMB_X15_Y27_N30
\inst6|state_csl~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csl~4_combout\ = (!\inst6|Add1~14_combout\ & (!\inst6|Add1~20_combout\ & (!\inst6|Add1~16_combout\ & !\inst6|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~14_combout\,
	datab => \inst6|Add1~20_combout\,
	datac => \inst6|Add1~16_combout\,
	datad => \inst6|Add1~18_combout\,
	combout => \inst6|state_csl~4_combout\);

-- Location: LCCOMB_X15_Y27_N12
\inst6|state_csl~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csl~3_combout\ = (!\inst6|Add1~12_combout\ & (!\inst6|Add1~6_combout\ & (!\inst6|Add1~4_combout\ & !\inst6|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~12_combout\,
	datab => \inst6|Add1~6_combout\,
	datac => \inst6|Add1~4_combout\,
	datad => \inst6|Add1~10_combout\,
	combout => \inst6|state_csl~3_combout\);

-- Location: LCCOMB_X15_Y26_N8
\inst6|state_csl~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csl~5_combout\ = (\inst6|state_csl~2_combout\ & (\inst6|state_csl~4_combout\ & \inst6|state_csl~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|state_csl~2_combout\,
	datac => \inst6|state_csl~4_combout\,
	datad => \inst6|state_csl~3_combout\,
	combout => \inst6|state_csl~5_combout\);

-- Location: LCCOMB_X15_Y26_N10
\inst6|state_csl~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csl~7_combout\ = (!\inst6|Add1~34_combout\ & (!\inst6|Add1~36_combout\ & (!\inst6|Add1~32_combout\ & !\inst6|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~34_combout\,
	datab => \inst6|Add1~36_combout\,
	datac => \inst6|Add1~32_combout\,
	datad => \inst6|Add1~30_combout\,
	combout => \inst6|state_csl~7_combout\);

-- Location: LCCOMB_X15_Y26_N4
\inst6|state_csl~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csl~8_combout\ = (!\inst6|Add1~42_combout\ & (!\inst6|Add1~38_combout\ & (!\inst6|Add1~44_combout\ & !\inst6|Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~42_combout\,
	datab => \inst6|Add1~38_combout\,
	datac => \inst6|Add1~44_combout\,
	datad => \inst6|Add1~40_combout\,
	combout => \inst6|state_csl~8_combout\);

-- Location: LCCOMB_X15_Y27_N24
\inst6|state_csl~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csl~6_combout\ = (!\inst6|Add1~26_combout\ & (!\inst6|Add1~22_combout\ & (!\inst6|Add1~28_combout\ & !\inst6|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~26_combout\,
	datab => \inst6|Add1~22_combout\,
	datac => \inst6|Add1~28_combout\,
	datad => \inst6|Add1~24_combout\,
	combout => \inst6|state_csl~6_combout\);

-- Location: LCCOMB_X15_Y26_N18
\inst6|state_csl~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csl~9_combout\ = (!\inst6|Add1~46_combout\ & (!\inst6|Add1~50_combout\ & (!\inst6|Add1~48_combout\ & !\inst6|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~46_combout\,
	datab => \inst6|Add1~50_combout\,
	datac => \inst6|Add1~48_combout\,
	datad => \inst6|Add1~52_combout\,
	combout => \inst6|state_csl~9_combout\);

-- Location: LCCOMB_X15_Y26_N28
\inst6|state_csl~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csl~10_combout\ = (\inst6|state_csl~7_combout\ & (\inst6|state_csl~8_combout\ & (\inst6|state_csl~6_combout\ & \inst6|state_csl~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|state_csl~7_combout\,
	datab => \inst6|state_csl~8_combout\,
	datac => \inst6|state_csl~6_combout\,
	datad => \inst6|state_csl~9_combout\,
	combout => \inst6|state_csl~10_combout\);

-- Location: LCCOMB_X15_Y26_N20
\inst6|state_csl~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csl~12_combout\ = (\inst6|state_csl~11_combout\ & (!\inst6|Add1~62_combout\ & (\inst6|state_csl~5_combout\ & \inst6|state_csl~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|state_csl~11_combout\,
	datab => \inst6|Add1~62_combout\,
	datac => \inst6|state_csl~5_combout\,
	datad => \inst6|state_csl~10_combout\,
	combout => \inst6|state_csl~12_combout\);

-- Location: LCCOMB_X15_Y26_N22
\inst6|state_csl~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_csl~13_combout\ = \inst6|state_csl~q\ $ (((!\inst6|wt~q\ & (\inst6|StartTx~q\ & \inst6|state_csl~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|wt~q\,
	datab => \inst6|StartTx~q\,
	datac => \inst6|state_csl~q\,
	datad => \inst6|state_csl~12_combout\,
	combout => \inst6|state_csl~13_combout\);

-- Location: FF_X15_Y26_N23
\inst6|state_csl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|state_csl~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|state_csl~q\);

-- Location: FF_X15_Y26_N17
\inst6|CSD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst6|state_csl~q\,
	sload => VCC,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CSD~q\);

-- Location: LCCOMB_X15_Y29_N8
\inst6|CS\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|CS~combout\ = (\inst6|CSU~q\ & \inst6|CSD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|CSU~q\,
	datad => \inst6|CSD~q\,
	combout => \inst6|CS~combout\);

-- Location: LCCOMB_X10_Y29_N2
\inst6|CC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|CC~1_combout\ = (\inst6|Add2~2_combout\ & !\inst6|state_clk~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add2~2_combout\,
	datad => \inst6|state_clk~12_combout\,
	combout => \inst6|CC~1_combout\);

-- Location: FF_X10_Y29_N3
\inst6|CC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|CC~1_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(1));

-- Location: LCCOMB_X9_Y29_N0
\inst6|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~0_combout\ = \inst6|CC\(0) $ (VCC)
-- \inst6|Add2~1\ = CARRY(\inst6|CC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|CC\(0),
	datad => VCC,
	combout => \inst6|Add2~0_combout\,
	cout => \inst6|Add2~1\);

-- Location: LCCOMB_X10_Y29_N20
\inst6|CC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|CC~0_combout\ = (\inst6|Add2~0_combout\ & !\inst6|state_clk~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add2~0_combout\,
	datad => \inst6|state_clk~12_combout\,
	combout => \inst6|CC~0_combout\);

-- Location: FF_X10_Y29_N21
\inst6|CC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|CC~0_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(0));

-- Location: LCCOMB_X9_Y29_N2
\inst6|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~2_combout\ = (\inst6|CC\(1) & (!\inst6|Add2~1\)) # (!\inst6|CC\(1) & ((\inst6|Add2~1\) # (GND)))
-- \inst6|Add2~3\ = CARRY((!\inst6|Add2~1\) # (!\inst6|CC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|CC\(1),
	datad => VCC,
	cin => \inst6|Add2~1\,
	combout => \inst6|Add2~2_combout\,
	cout => \inst6|Add2~3\);

-- Location: LCCOMB_X10_Y29_N4
\inst6|CC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|CC~2_combout\ = (\inst6|Add2~8_combout\ & !\inst6|state_clk~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~8_combout\,
	datad => \inst6|state_clk~12_combout\,
	combout => \inst6|CC~2_combout\);

-- Location: FF_X10_Y29_N5
\inst6|CC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|CC~2_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(4));

-- Location: LCCOMB_X9_Y29_N4
\inst6|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~4_combout\ = (\inst6|CC\(2) & (\inst6|Add2~3\ $ (GND))) # (!\inst6|CC\(2) & (!\inst6|Add2~3\ & VCC))
-- \inst6|Add2~5\ = CARRY((\inst6|CC\(2) & !\inst6|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|CC\(2),
	datad => VCC,
	cin => \inst6|Add2~3\,
	combout => \inst6|Add2~4_combout\,
	cout => \inst6|Add2~5\);

-- Location: FF_X9_Y29_N5
\inst6|CC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~4_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(2));

-- Location: LCCOMB_X9_Y29_N6
\inst6|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~6_combout\ = (\inst6|CC\(3) & (!\inst6|Add2~5\)) # (!\inst6|CC\(3) & ((\inst6|Add2~5\) # (GND)))
-- \inst6|Add2~7\ = CARRY((!\inst6|Add2~5\) # (!\inst6|CC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|CC\(3),
	datad => VCC,
	cin => \inst6|Add2~5\,
	combout => \inst6|Add2~6_combout\,
	cout => \inst6|Add2~7\);

-- Location: FF_X9_Y29_N7
\inst6|CC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~6_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(3));

-- Location: LCCOMB_X9_Y29_N8
\inst6|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~8_combout\ = (\inst6|CC\(4) & (\inst6|Add2~7\ $ (GND))) # (!\inst6|CC\(4) & (!\inst6|Add2~7\ & VCC))
-- \inst6|Add2~9\ = CARRY((\inst6|CC\(4) & !\inst6|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|CC\(4),
	datad => VCC,
	cin => \inst6|Add2~7\,
	combout => \inst6|Add2~8_combout\,
	cout => \inst6|Add2~9\);

-- Location: LCCOMB_X10_Y29_N10
\inst6|state_clk~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_clk~2_combout\ = (\inst6|state_clk~q\ & (\inst6|Add2~2_combout\ & (\inst6|Add2~0_combout\ & !\inst6|Add2~8_combout\))) # (!\inst6|state_clk~q\ & (!\inst6|Add2~2_combout\ & (!\inst6|Add2~0_combout\ & \inst6|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|state_clk~q\,
	datab => \inst6|Add2~2_combout\,
	datac => \inst6|Add2~0_combout\,
	datad => \inst6|Add2~8_combout\,
	combout => \inst6|state_clk~2_combout\);

-- Location: FF_X9_Y29_N13
\inst6|CC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~12_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(6));

-- Location: LCCOMB_X9_Y29_N10
\inst6|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~10_combout\ = (\inst6|CC\(5) & (!\inst6|Add2~9\)) # (!\inst6|CC\(5) & ((\inst6|Add2~9\) # (GND)))
-- \inst6|Add2~11\ = CARRY((!\inst6|Add2~9\) # (!\inst6|CC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|CC\(5),
	datad => VCC,
	cin => \inst6|Add2~9\,
	combout => \inst6|Add2~10_combout\,
	cout => \inst6|Add2~11\);

-- Location: FF_X9_Y29_N11
\inst6|CC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~10_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(5));

-- Location: LCCOMB_X9_Y29_N12
\inst6|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~12_combout\ = (\inst6|CC\(6) & (\inst6|Add2~11\ $ (GND))) # (!\inst6|CC\(6) & (!\inst6|Add2~11\ & VCC))
-- \inst6|Add2~13\ = CARRY((\inst6|CC\(6) & !\inst6|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|CC\(6),
	datad => VCC,
	cin => \inst6|Add2~11\,
	combout => \inst6|Add2~12_combout\,
	cout => \inst6|Add2~13\);

-- Location: LCCOMB_X10_Y29_N8
\inst6|state_clk~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_clk~3_combout\ = (!\inst6|Add2~12_combout\ & (!\inst6|Add2~6_combout\ & (!\inst6|Add2~4_combout\ & !\inst6|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~12_combout\,
	datab => \inst6|Add2~6_combout\,
	datac => \inst6|Add2~4_combout\,
	datad => \inst6|Add2~10_combout\,
	combout => \inst6|state_clk~3_combout\);

-- Location: FF_X9_Y29_N17
\inst6|CC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~16_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(8));

-- Location: LCCOMB_X9_Y29_N14
\inst6|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~14_combout\ = (\inst6|CC\(7) & (!\inst6|Add2~13\)) # (!\inst6|CC\(7) & ((\inst6|Add2~13\) # (GND)))
-- \inst6|Add2~15\ = CARRY((!\inst6|Add2~13\) # (!\inst6|CC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|CC\(7),
	datad => VCC,
	cin => \inst6|Add2~13\,
	combout => \inst6|Add2~14_combout\,
	cout => \inst6|Add2~15\);

-- Location: FF_X9_Y29_N15
\inst6|CC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~14_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(7));

-- Location: LCCOMB_X9_Y29_N16
\inst6|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~16_combout\ = (\inst6|CC\(8) & (\inst6|Add2~15\ $ (GND))) # (!\inst6|CC\(8) & (!\inst6|Add2~15\ & VCC))
-- \inst6|Add2~17\ = CARRY((\inst6|CC\(8) & !\inst6|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|CC\(8),
	datad => VCC,
	cin => \inst6|Add2~15\,
	combout => \inst6|Add2~16_combout\,
	cout => \inst6|Add2~17\);

-- Location: FF_X9_Y29_N19
\inst6|CC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~18_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(9));

-- Location: LCCOMB_X9_Y29_N18
\inst6|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~18_combout\ = (\inst6|CC\(9) & (!\inst6|Add2~17\)) # (!\inst6|CC\(9) & ((\inst6|Add2~17\) # (GND)))
-- \inst6|Add2~19\ = CARRY((!\inst6|Add2~17\) # (!\inst6|CC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|CC\(9),
	datad => VCC,
	cin => \inst6|Add2~17\,
	combout => \inst6|Add2~18_combout\,
	cout => \inst6|Add2~19\);

-- Location: FF_X9_Y29_N21
\inst6|CC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~20_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(10));

-- Location: LCCOMB_X9_Y29_N20
\inst6|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~20_combout\ = (\inst6|CC\(10) & (\inst6|Add2~19\ $ (GND))) # (!\inst6|CC\(10) & (!\inst6|Add2~19\ & VCC))
-- \inst6|Add2~21\ = CARRY((\inst6|CC\(10) & !\inst6|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|CC\(10),
	datad => VCC,
	cin => \inst6|Add2~19\,
	combout => \inst6|Add2~20_combout\,
	cout => \inst6|Add2~21\);

-- Location: LCCOMB_X10_Y29_N26
\inst6|state_clk~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_clk~4_combout\ = (!\inst6|Add2~16_combout\ & (!\inst6|Add2~18_combout\ & (!\inst6|Add2~20_combout\ & !\inst6|Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~16_combout\,
	datab => \inst6|Add2~18_combout\,
	datac => \inst6|Add2~20_combout\,
	datad => \inst6|Add2~14_combout\,
	combout => \inst6|state_clk~4_combout\);

-- Location: LCCOMB_X10_Y29_N12
\inst6|state_clk~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_clk~5_combout\ = (\inst6|state_clk~2_combout\ & (\inst6|state_clk~3_combout\ & \inst6|state_clk~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|state_clk~2_combout\,
	datab => \inst6|state_clk~3_combout\,
	datac => \inst6|state_clk~4_combout\,
	combout => \inst6|state_clk~5_combout\);

-- Location: FF_X9_Y28_N31
\inst6|CC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~62_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(31));

-- Location: LCCOMB_X9_Y29_N22
\inst6|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~22_combout\ = (\inst6|CC\(11) & (!\inst6|Add2~21\)) # (!\inst6|CC\(11) & ((\inst6|Add2~21\) # (GND)))
-- \inst6|Add2~23\ = CARRY((!\inst6|Add2~21\) # (!\inst6|CC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|CC\(11),
	datad => VCC,
	cin => \inst6|Add2~21\,
	combout => \inst6|Add2~22_combout\,
	cout => \inst6|Add2~23\);

-- Location: FF_X9_Y29_N23
\inst6|CC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~22_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(11));

-- Location: LCCOMB_X9_Y29_N24
\inst6|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~24_combout\ = (\inst6|CC\(12) & (\inst6|Add2~23\ $ (GND))) # (!\inst6|CC\(12) & (!\inst6|Add2~23\ & VCC))
-- \inst6|Add2~25\ = CARRY((\inst6|CC\(12) & !\inst6|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|CC\(12),
	datad => VCC,
	cin => \inst6|Add2~23\,
	combout => \inst6|Add2~24_combout\,
	cout => \inst6|Add2~25\);

-- Location: FF_X9_Y29_N25
\inst6|CC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~24_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(12));

-- Location: LCCOMB_X9_Y29_N26
\inst6|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~26_combout\ = (\inst6|CC\(13) & (!\inst6|Add2~25\)) # (!\inst6|CC\(13) & ((\inst6|Add2~25\) # (GND)))
-- \inst6|Add2~27\ = CARRY((!\inst6|Add2~25\) # (!\inst6|CC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|CC\(13),
	datad => VCC,
	cin => \inst6|Add2~25\,
	combout => \inst6|Add2~26_combout\,
	cout => \inst6|Add2~27\);

-- Location: FF_X9_Y29_N27
\inst6|CC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~26_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(13));

-- Location: LCCOMB_X9_Y29_N28
\inst6|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~28_combout\ = (\inst6|CC\(14) & (\inst6|Add2~27\ $ (GND))) # (!\inst6|CC\(14) & (!\inst6|Add2~27\ & VCC))
-- \inst6|Add2~29\ = CARRY((\inst6|CC\(14) & !\inst6|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|CC\(14),
	datad => VCC,
	cin => \inst6|Add2~27\,
	combout => \inst6|Add2~28_combout\,
	cout => \inst6|Add2~29\);

-- Location: FF_X9_Y29_N29
\inst6|CC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~28_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(14));

-- Location: LCCOMB_X9_Y29_N30
\inst6|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~30_combout\ = (\inst6|CC\(15) & (!\inst6|Add2~29\)) # (!\inst6|CC\(15) & ((\inst6|Add2~29\) # (GND)))
-- \inst6|Add2~31\ = CARRY((!\inst6|Add2~29\) # (!\inst6|CC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|CC\(15),
	datad => VCC,
	cin => \inst6|Add2~29\,
	combout => \inst6|Add2~30_combout\,
	cout => \inst6|Add2~31\);

-- Location: FF_X9_Y29_N31
\inst6|CC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~30_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(15));

-- Location: LCCOMB_X9_Y28_N0
\inst6|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~32_combout\ = (\inst6|CC\(16) & (\inst6|Add2~31\ $ (GND))) # (!\inst6|CC\(16) & (!\inst6|Add2~31\ & VCC))
-- \inst6|Add2~33\ = CARRY((\inst6|CC\(16) & !\inst6|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|CC\(16),
	datad => VCC,
	cin => \inst6|Add2~31\,
	combout => \inst6|Add2~32_combout\,
	cout => \inst6|Add2~33\);

-- Location: FF_X9_Y28_N1
\inst6|CC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~32_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(16));

-- Location: LCCOMB_X9_Y28_N2
\inst6|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~34_combout\ = (\inst6|CC\(17) & (!\inst6|Add2~33\)) # (!\inst6|CC\(17) & ((\inst6|Add2~33\) # (GND)))
-- \inst6|Add2~35\ = CARRY((!\inst6|Add2~33\) # (!\inst6|CC\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|CC\(17),
	datad => VCC,
	cin => \inst6|Add2~33\,
	combout => \inst6|Add2~34_combout\,
	cout => \inst6|Add2~35\);

-- Location: FF_X9_Y28_N3
\inst6|CC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~34_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(17));

-- Location: LCCOMB_X9_Y28_N4
\inst6|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~36_combout\ = (\inst6|CC\(18) & (\inst6|Add2~35\ $ (GND))) # (!\inst6|CC\(18) & (!\inst6|Add2~35\ & VCC))
-- \inst6|Add2~37\ = CARRY((\inst6|CC\(18) & !\inst6|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|CC\(18),
	datad => VCC,
	cin => \inst6|Add2~35\,
	combout => \inst6|Add2~36_combout\,
	cout => \inst6|Add2~37\);

-- Location: FF_X9_Y28_N5
\inst6|CC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~36_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(18));

-- Location: LCCOMB_X9_Y28_N6
\inst6|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~38_combout\ = (\inst6|CC\(19) & (!\inst6|Add2~37\)) # (!\inst6|CC\(19) & ((\inst6|Add2~37\) # (GND)))
-- \inst6|Add2~39\ = CARRY((!\inst6|Add2~37\) # (!\inst6|CC\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|CC\(19),
	datad => VCC,
	cin => \inst6|Add2~37\,
	combout => \inst6|Add2~38_combout\,
	cout => \inst6|Add2~39\);

-- Location: FF_X9_Y28_N7
\inst6|CC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~38_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(19));

-- Location: LCCOMB_X9_Y28_N8
\inst6|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~40_combout\ = (\inst6|CC\(20) & (\inst6|Add2~39\ $ (GND))) # (!\inst6|CC\(20) & (!\inst6|Add2~39\ & VCC))
-- \inst6|Add2~41\ = CARRY((\inst6|CC\(20) & !\inst6|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|CC\(20),
	datad => VCC,
	cin => \inst6|Add2~39\,
	combout => \inst6|Add2~40_combout\,
	cout => \inst6|Add2~41\);

-- Location: FF_X9_Y28_N9
\inst6|CC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~40_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(20));

-- Location: LCCOMB_X9_Y28_N10
\inst6|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~42_combout\ = (\inst6|CC\(21) & (!\inst6|Add2~41\)) # (!\inst6|CC\(21) & ((\inst6|Add2~41\) # (GND)))
-- \inst6|Add2~43\ = CARRY((!\inst6|Add2~41\) # (!\inst6|CC\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|CC\(21),
	datad => VCC,
	cin => \inst6|Add2~41\,
	combout => \inst6|Add2~42_combout\,
	cout => \inst6|Add2~43\);

-- Location: FF_X9_Y28_N11
\inst6|CC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~42_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(21));

-- Location: LCCOMB_X9_Y28_N12
\inst6|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~44_combout\ = (\inst6|CC\(22) & (\inst6|Add2~43\ $ (GND))) # (!\inst6|CC\(22) & (!\inst6|Add2~43\ & VCC))
-- \inst6|Add2~45\ = CARRY((\inst6|CC\(22) & !\inst6|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|CC\(22),
	datad => VCC,
	cin => \inst6|Add2~43\,
	combout => \inst6|Add2~44_combout\,
	cout => \inst6|Add2~45\);

-- Location: FF_X9_Y28_N13
\inst6|CC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~44_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(22));

-- Location: LCCOMB_X9_Y28_N14
\inst6|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~46_combout\ = (\inst6|CC\(23) & (!\inst6|Add2~45\)) # (!\inst6|CC\(23) & ((\inst6|Add2~45\) # (GND)))
-- \inst6|Add2~47\ = CARRY((!\inst6|Add2~45\) # (!\inst6|CC\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|CC\(23),
	datad => VCC,
	cin => \inst6|Add2~45\,
	combout => \inst6|Add2~46_combout\,
	cout => \inst6|Add2~47\);

-- Location: FF_X9_Y28_N15
\inst6|CC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~46_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(23));

-- Location: LCCOMB_X9_Y28_N16
\inst6|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~48_combout\ = (\inst6|CC\(24) & (\inst6|Add2~47\ $ (GND))) # (!\inst6|CC\(24) & (!\inst6|Add2~47\ & VCC))
-- \inst6|Add2~49\ = CARRY((\inst6|CC\(24) & !\inst6|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|CC\(24),
	datad => VCC,
	cin => \inst6|Add2~47\,
	combout => \inst6|Add2~48_combout\,
	cout => \inst6|Add2~49\);

-- Location: FF_X9_Y28_N17
\inst6|CC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~48_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(24));

-- Location: LCCOMB_X9_Y28_N18
\inst6|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~50_combout\ = (\inst6|CC\(25) & (!\inst6|Add2~49\)) # (!\inst6|CC\(25) & ((\inst6|Add2~49\) # (GND)))
-- \inst6|Add2~51\ = CARRY((!\inst6|Add2~49\) # (!\inst6|CC\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|CC\(25),
	datad => VCC,
	cin => \inst6|Add2~49\,
	combout => \inst6|Add2~50_combout\,
	cout => \inst6|Add2~51\);

-- Location: FF_X9_Y28_N19
\inst6|CC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~50_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(25));

-- Location: LCCOMB_X9_Y28_N20
\inst6|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~52_combout\ = (\inst6|CC\(26) & (\inst6|Add2~51\ $ (GND))) # (!\inst6|CC\(26) & (!\inst6|Add2~51\ & VCC))
-- \inst6|Add2~53\ = CARRY((\inst6|CC\(26) & !\inst6|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|CC\(26),
	datad => VCC,
	cin => \inst6|Add2~51\,
	combout => \inst6|Add2~52_combout\,
	cout => \inst6|Add2~53\);

-- Location: FF_X9_Y28_N21
\inst6|CC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~52_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(26));

-- Location: LCCOMB_X9_Y28_N22
\inst6|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~54_combout\ = (\inst6|CC\(27) & (!\inst6|Add2~53\)) # (!\inst6|CC\(27) & ((\inst6|Add2~53\) # (GND)))
-- \inst6|Add2~55\ = CARRY((!\inst6|Add2~53\) # (!\inst6|CC\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|CC\(27),
	datad => VCC,
	cin => \inst6|Add2~53\,
	combout => \inst6|Add2~54_combout\,
	cout => \inst6|Add2~55\);

-- Location: FF_X9_Y28_N23
\inst6|CC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~54_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(27));

-- Location: LCCOMB_X9_Y28_N24
\inst6|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~56_combout\ = (\inst6|CC\(28) & (\inst6|Add2~55\ $ (GND))) # (!\inst6|CC\(28) & (!\inst6|Add2~55\ & VCC))
-- \inst6|Add2~57\ = CARRY((\inst6|CC\(28) & !\inst6|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|CC\(28),
	datad => VCC,
	cin => \inst6|Add2~55\,
	combout => \inst6|Add2~56_combout\,
	cout => \inst6|Add2~57\);

-- Location: FF_X9_Y28_N25
\inst6|CC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~56_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(28));

-- Location: LCCOMB_X9_Y28_N26
\inst6|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~58_combout\ = (\inst6|CC\(29) & (!\inst6|Add2~57\)) # (!\inst6|CC\(29) & ((\inst6|Add2~57\) # (GND)))
-- \inst6|Add2~59\ = CARRY((!\inst6|Add2~57\) # (!\inst6|CC\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|CC\(29),
	datad => VCC,
	cin => \inst6|Add2~57\,
	combout => \inst6|Add2~58_combout\,
	cout => \inst6|Add2~59\);

-- Location: FF_X9_Y28_N27
\inst6|CC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~58_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(29));

-- Location: LCCOMB_X9_Y28_N28
\inst6|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~60_combout\ = (\inst6|CC\(30) & (\inst6|Add2~59\ $ (GND))) # (!\inst6|CC\(30) & (!\inst6|Add2~59\ & VCC))
-- \inst6|Add2~61\ = CARRY((\inst6|CC\(30) & !\inst6|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|CC\(30),
	datad => VCC,
	cin => \inst6|Add2~59\,
	combout => \inst6|Add2~60_combout\,
	cout => \inst6|Add2~61\);

-- Location: FF_X9_Y28_N29
\inst6|CC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add2~60_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|CC\(30));

-- Location: LCCOMB_X9_Y28_N30
\inst6|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~62_combout\ = \inst6|CC\(31) $ (\inst6|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|CC\(31),
	cin => \inst6|Add2~61\,
	combout => \inst6|Add2~62_combout\);

-- Location: LCCOMB_X10_Y29_N22
\inst6|state_clk~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_clk~6_combout\ = (!\inst6|Add2~26_combout\ & (!\inst6|Add2~24_combout\ & (!\inst6|Add2~22_combout\ & !\inst6|Add2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~26_combout\,
	datab => \inst6|Add2~24_combout\,
	datac => \inst6|Add2~22_combout\,
	datad => \inst6|Add2~28_combout\,
	combout => \inst6|state_clk~6_combout\);

-- Location: LCCOMB_X10_Y29_N16
\inst6|state_clk~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_clk~7_combout\ = (!\inst6|Add2~32_combout\ & (!\inst6|Add2~30_combout\ & (!\inst6|Add2~34_combout\ & !\inst6|Add2~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~32_combout\,
	datab => \inst6|Add2~30_combout\,
	datac => \inst6|Add2~34_combout\,
	datad => \inst6|Add2~36_combout\,
	combout => \inst6|state_clk~7_combout\);

-- Location: LCCOMB_X10_Y28_N12
\inst6|state_clk~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_clk~8_combout\ = (!\inst6|Add2~40_combout\ & (!\inst6|Add2~38_combout\ & (!\inst6|Add2~42_combout\ & !\inst6|Add2~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~40_combout\,
	datab => \inst6|Add2~38_combout\,
	datac => \inst6|Add2~42_combout\,
	datad => \inst6|Add2~44_combout\,
	combout => \inst6|state_clk~8_combout\);

-- Location: LCCOMB_X10_Y28_N22
\inst6|state_clk~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_clk~9_combout\ = (!\inst6|Add2~46_combout\ & (!\inst6|Add2~50_combout\ & (!\inst6|Add2~48_combout\ & !\inst6|Add2~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~46_combout\,
	datab => \inst6|Add2~50_combout\,
	datac => \inst6|Add2~48_combout\,
	datad => \inst6|Add2~52_combout\,
	combout => \inst6|state_clk~9_combout\);

-- Location: LCCOMB_X10_Y29_N30
\inst6|state_clk~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_clk~10_combout\ = (\inst6|state_clk~6_combout\ & (\inst6|state_clk~7_combout\ & (\inst6|state_clk~8_combout\ & \inst6|state_clk~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|state_clk~6_combout\,
	datab => \inst6|state_clk~7_combout\,
	datac => \inst6|state_clk~8_combout\,
	datad => \inst6|state_clk~9_combout\,
	combout => \inst6|state_clk~10_combout\);

-- Location: LCCOMB_X10_Y28_N0
\inst6|state_clk~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_clk~11_combout\ = (!\inst6|Add2~58_combout\ & (!\inst6|Add2~56_combout\ & (!\inst6|Add2~54_combout\ & !\inst6|Add2~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~58_combout\,
	datab => \inst6|Add2~56_combout\,
	datac => \inst6|Add2~54_combout\,
	datad => \inst6|Add2~60_combout\,
	combout => \inst6|state_clk~11_combout\);

-- Location: LCCOMB_X10_Y29_N0
\inst6|state_clk~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_clk~12_combout\ = (\inst6|state_clk~5_combout\ & (!\inst6|Add2~62_combout\ & (\inst6|state_clk~10_combout\ & \inst6|state_clk~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|state_clk~5_combout\,
	datab => \inst6|Add2~62_combout\,
	datac => \inst6|state_clk~10_combout\,
	datad => \inst6|state_clk~11_combout\,
	combout => \inst6|state_clk~12_combout\);

-- Location: LCCOMB_X10_Y29_N14
\inst6|state_clk~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|state_clk~13_combout\ = \inst6|state_clk~q\ $ (((!\inst6|wt~q\ & (\inst6|StartTx~q\ & \inst6|state_clk~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|wt~q\,
	datab => \inst6|StartTx~q\,
	datac => \inst6|state_clk~q\,
	datad => \inst6|state_clk~12_combout\,
	combout => \inst6|state_clk~13_combout\);

-- Location: FF_X10_Y29_N15
\inst6|state_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|state_clk~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|state_clk~q\);

-- Location: LCCOMB_X10_Y29_N24
\inst6|rtc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|rtc~0_combout\ = !\inst6|state_clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|state_clk~q\,
	combout => \inst6|rtc~0_combout\);

-- Location: FF_X10_Y29_N25
\inst6|rtc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|rtc~0_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|rtc~q\);

-- Location: LCCOMB_X10_Y30_N24
\inst6|CLKO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|CLKO~0_combout\ = (\inst20|CLK_OUT~q\) # (!\inst6|rtc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|rtc~q\,
	datad => \inst20|CLK_OUT~q\,
	combout => \inst6|CLKO~0_combout\);

-- Location: LCCOMB_X10_Y27_N30
\inst6|MOSI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|MOSI~0_combout\ = (\inst6|StartTx~q\ & (\inst6|rtc~q\ & !\inst6|wt~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|StartTx~q\,
	datac => \inst6|rtc~q\,
	datad => \inst6|wt~q\,
	combout => \inst6|MOSI~0_combout\);

-- Location: FF_X9_Y27_N3
\inst6|BP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~2_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(1));

-- Location: LCCOMB_X9_Y27_N0
\inst6|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~0_combout\ = \inst6|BP\(0) $ (VCC)
-- \inst6|Add4~1\ = CARRY(\inst6|BP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(0),
	datad => VCC,
	combout => \inst6|Add4~0_combout\,
	cout => \inst6|Add4~1\);

-- Location: FF_X9_Y27_N1
\inst6|BP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~0_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(0));

-- Location: LCCOMB_X9_Y27_N2
\inst6|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~2_combout\ = (\inst6|BP\(1) & (\inst6|Add4~1\ & VCC)) # (!\inst6|BP\(1) & (!\inst6|Add4~1\))
-- \inst6|Add4~3\ = CARRY((!\inst6|BP\(1) & !\inst6|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(1),
	datad => VCC,
	cin => \inst6|Add4~1\,
	combout => \inst6|Add4~2_combout\,
	cout => \inst6|Add4~3\);

-- Location: LCCOMB_X23_Y26_N30
\inst16|datArray_rtl_0_bypass[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|datArray_rtl_0_bypass[2]~feeder_combout\ = \inst16|Selector28~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|Selector28~0_combout\,
	combout => \inst16|datArray_rtl_0_bypass[2]~feeder_combout\);

-- Location: FF_X23_Y26_N31
\inst16|datArray_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|datArray_rtl_0_bypass[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(2));

-- Location: FF_X23_Y26_N3
\inst16|datArray_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst16|FS\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(3));

-- Location: FF_X23_Y26_N25
\inst16|datArray_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst16|Selector27~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(4));

-- Location: LCCOMB_X23_Y26_N28
\inst16|datArray_rtl_0_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|datArray_rtl_0_bypass[1]~feeder_combout\ = \inst16|FS\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|FS\(0),
	combout => \inst16|datArray_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X23_Y26_N29
\inst16|datArray_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|datArray_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(1));

-- Location: LCCOMB_X23_Y26_N24
\inst16|datArray~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|datArray~21_combout\ = (\inst16|datArray_rtl_0_bypass\(2) & (\inst16|datArray_rtl_0_bypass\(1) & (\inst16|datArray_rtl_0_bypass\(3) $ (!\inst16|datArray_rtl_0_bypass\(4))))) # (!\inst16|datArray_rtl_0_bypass\(2) & 
-- (!\inst16|datArray_rtl_0_bypass\(1) & (\inst16|datArray_rtl_0_bypass\(3) $ (!\inst16|datArray_rtl_0_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|datArray_rtl_0_bypass\(2),
	datab => \inst16|datArray_rtl_0_bypass\(3),
	datac => \inst16|datArray_rtl_0_bypass\(4),
	datad => \inst16|datArray_rtl_0_bypass\(1),
	combout => \inst16|datArray~21_combout\);

-- Location: LCCOMB_X24_Y26_N14
\inst16|state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|state~8_combout\ = (!\inst16|state.IDLE~q\ & \inst|state.STOREstate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|state.IDLE~q\,
	datad => \inst|state.STOREstate~q\,
	combout => \inst16|state~8_combout\);

-- Location: FF_X24_Y26_N15
\inst16|state.STORE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|state.STORE~q\);

-- Location: FF_X23_Y26_N9
\inst16|datArray_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst16|state.STORE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(0));

-- Location: LCCOMB_X23_Y26_N26
\inst16|datArray_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|datArray_rtl_0_bypass[5]~feeder_combout\ = \inst16|FS\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|FS\(2),
	combout => \inst16|datArray_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X23_Y26_N27
\inst16|datArray_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|datArray_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(5));

-- Location: FF_X23_Y26_N17
\inst16|datArray_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst16|FS\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(7));

-- Location: FF_X23_Y26_N1
\inst16|datArray_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst16|Selector26~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(6));

-- Location: LCCOMB_X23_Y26_N10
\inst16|datArray_rtl_0_bypass[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|datArray_rtl_0_bypass[8]~feeder_combout\ = \inst16|Selector25~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|Selector25~0_combout\,
	combout => \inst16|datArray_rtl_0_bypass[8]~feeder_combout\);

-- Location: FF_X23_Y26_N11
\inst16|datArray_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|datArray_rtl_0_bypass[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(8));

-- Location: LCCOMB_X23_Y26_N0
\inst16|datArray~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|datArray~22_combout\ = (\inst16|datArray_rtl_0_bypass\(5) & (\inst16|datArray_rtl_0_bypass\(6) & (\inst16|datArray_rtl_0_bypass\(7) $ (!\inst16|datArray_rtl_0_bypass\(8))))) # (!\inst16|datArray_rtl_0_bypass\(5) & 
-- (!\inst16|datArray_rtl_0_bypass\(6) & (\inst16|datArray_rtl_0_bypass\(7) $ (!\inst16|datArray_rtl_0_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|datArray_rtl_0_bypass\(5),
	datab => \inst16|datArray_rtl_0_bypass\(7),
	datac => \inst16|datArray_rtl_0_bypass\(6),
	datad => \inst16|datArray_rtl_0_bypass\(8),
	combout => \inst16|datArray~22_combout\);

-- Location: LCCOMB_X23_Y26_N8
\inst16|datArray~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|datArray~23_combout\ = (\inst16|datArray~21_combout\ & (\inst16|datArray_rtl_0_bypass\(0) & \inst16|datArray~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|datArray~21_combout\,
	datac => \inst16|datArray_rtl_0_bypass\(0),
	datad => \inst16|datArray~22_combout\,
	combout => \inst16|datArray~23_combout\);

-- Location: LCCOMB_X21_Y26_N4
\inst16|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux0~0_combout\ = (\inst16|FS\(2) & (!\inst16|FS\(1) & !\inst16|FS\(3))) # (!\inst16|FS\(2) & (\inst16|FS\(1) & \inst16|FS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|FS\(2),
	datac => \inst16|FS\(1),
	datad => \inst16|FS\(3),
	combout => \inst16|Mux0~0_combout\);

-- Location: FF_X21_Y26_N5
\inst16|datArray_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(20));

-- Location: IOIBUF_X40_Y0_N15
\MISO_MPU~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MISO_MPU,
	o => \MISO_MPU~input_o\);

-- Location: FF_X31_Y19_N13
\inst4|CC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~44_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(22));

-- Location: LCCOMB_X31_Y20_N0
\inst4|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~0_combout\ = \inst4|CC\(0) $ (VCC)
-- \inst4|Add2~1\ = CARRY(\inst4|CC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(0),
	datad => VCC,
	combout => \inst4|Add2~0_combout\,
	cout => \inst4|Add2~1\);

-- Location: LCCOMB_X30_Y19_N2
\inst4|CC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|CC~0_combout\ = (\inst4|Add2~0_combout\ & !\inst4|state_clk~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add2~0_combout\,
	datad => \inst4|state_clk~12_combout\,
	combout => \inst4|CC~0_combout\);

-- Location: FF_X30_Y19_N3
\inst4|CC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|CC~0_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(0));

-- Location: LCCOMB_X31_Y20_N2
\inst4|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~2_combout\ = (\inst4|CC\(1) & (!\inst4|Add2~1\)) # (!\inst4|CC\(1) & ((\inst4|Add2~1\) # (GND)))
-- \inst4|Add2~3\ = CARRY((!\inst4|Add2~1\) # (!\inst4|CC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(1),
	datad => VCC,
	cin => \inst4|Add2~1\,
	combout => \inst4|Add2~2_combout\,
	cout => \inst4|Add2~3\);

-- Location: LCCOMB_X30_Y19_N0
\inst4|CC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|CC~1_combout\ = (\inst4|Add2~2_combout\ & !\inst4|state_clk~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add2~2_combout\,
	datad => \inst4|state_clk~12_combout\,
	combout => \inst4|CC~1_combout\);

-- Location: FF_X30_Y19_N1
\inst4|CC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|CC~1_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(1));

-- Location: LCCOMB_X31_Y20_N4
\inst4|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~4_combout\ = (\inst4|CC\(2) & (\inst4|Add2~3\ $ (GND))) # (!\inst4|CC\(2) & (!\inst4|Add2~3\ & VCC))
-- \inst4|Add2~5\ = CARRY((\inst4|CC\(2) & !\inst4|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(2),
	datad => VCC,
	cin => \inst4|Add2~3\,
	combout => \inst4|Add2~4_combout\,
	cout => \inst4|Add2~5\);

-- Location: FF_X31_Y20_N5
\inst4|CC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~4_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(2));

-- Location: LCCOMB_X31_Y20_N6
\inst4|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~6_combout\ = (\inst4|CC\(3) & (!\inst4|Add2~5\)) # (!\inst4|CC\(3) & ((\inst4|Add2~5\) # (GND)))
-- \inst4|Add2~7\ = CARRY((!\inst4|Add2~5\) # (!\inst4|CC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CC\(3),
	datad => VCC,
	cin => \inst4|Add2~5\,
	combout => \inst4|Add2~6_combout\,
	cout => \inst4|Add2~7\);

-- Location: FF_X31_Y20_N7
\inst4|CC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~6_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(3));

-- Location: LCCOMB_X31_Y20_N8
\inst4|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~8_combout\ = (\inst4|CC\(4) & (\inst4|Add2~7\ $ (GND))) # (!\inst4|CC\(4) & (!\inst4|Add2~7\ & VCC))
-- \inst4|Add2~9\ = CARRY((\inst4|CC\(4) & !\inst4|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CC\(4),
	datad => VCC,
	cin => \inst4|Add2~7\,
	combout => \inst4|Add2~8_combout\,
	cout => \inst4|Add2~9\);

-- Location: LCCOMB_X30_Y19_N26
\inst4|CC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|CC~2_combout\ = (\inst4|Add2~8_combout\ & !\inst4|state_clk~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add2~8_combout\,
	datad => \inst4|state_clk~12_combout\,
	combout => \inst4|CC~2_combout\);

-- Location: FF_X30_Y19_N27
\inst4|CC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|CC~2_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(4));

-- Location: LCCOMB_X31_Y20_N10
\inst4|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~10_combout\ = (\inst4|CC\(5) & (!\inst4|Add2~9\)) # (!\inst4|CC\(5) & ((\inst4|Add2~9\) # (GND)))
-- \inst4|Add2~11\ = CARRY((!\inst4|Add2~9\) # (!\inst4|CC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CC\(5),
	datad => VCC,
	cin => \inst4|Add2~9\,
	combout => \inst4|Add2~10_combout\,
	cout => \inst4|Add2~11\);

-- Location: FF_X31_Y20_N11
\inst4|CC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~10_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(5));

-- Location: LCCOMB_X31_Y20_N12
\inst4|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~12_combout\ = (\inst4|CC\(6) & (\inst4|Add2~11\ $ (GND))) # (!\inst4|CC\(6) & (!\inst4|Add2~11\ & VCC))
-- \inst4|Add2~13\ = CARRY((\inst4|CC\(6) & !\inst4|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CC\(6),
	datad => VCC,
	cin => \inst4|Add2~11\,
	combout => \inst4|Add2~12_combout\,
	cout => \inst4|Add2~13\);

-- Location: FF_X31_Y20_N13
\inst4|CC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~12_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(6));

-- Location: LCCOMB_X31_Y20_N14
\inst4|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~14_combout\ = (\inst4|CC\(7) & (!\inst4|Add2~13\)) # (!\inst4|CC\(7) & ((\inst4|Add2~13\) # (GND)))
-- \inst4|Add2~15\ = CARRY((!\inst4|Add2~13\) # (!\inst4|CC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(7),
	datad => VCC,
	cin => \inst4|Add2~13\,
	combout => \inst4|Add2~14_combout\,
	cout => \inst4|Add2~15\);

-- Location: FF_X31_Y20_N15
\inst4|CC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~14_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(7));

-- Location: LCCOMB_X31_Y20_N16
\inst4|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~16_combout\ = (\inst4|CC\(8) & (\inst4|Add2~15\ $ (GND))) # (!\inst4|CC\(8) & (!\inst4|Add2~15\ & VCC))
-- \inst4|Add2~17\ = CARRY((\inst4|CC\(8) & !\inst4|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(8),
	datad => VCC,
	cin => \inst4|Add2~15\,
	combout => \inst4|Add2~16_combout\,
	cout => \inst4|Add2~17\);

-- Location: FF_X31_Y20_N17
\inst4|CC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~16_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(8));

-- Location: LCCOMB_X31_Y20_N18
\inst4|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~18_combout\ = (\inst4|CC\(9) & (!\inst4|Add2~17\)) # (!\inst4|CC\(9) & ((\inst4|Add2~17\) # (GND)))
-- \inst4|Add2~19\ = CARRY((!\inst4|Add2~17\) # (!\inst4|CC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(9),
	datad => VCC,
	cin => \inst4|Add2~17\,
	combout => \inst4|Add2~18_combout\,
	cout => \inst4|Add2~19\);

-- Location: FF_X31_Y20_N19
\inst4|CC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~18_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(9));

-- Location: LCCOMB_X31_Y20_N20
\inst4|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~20_combout\ = (\inst4|CC\(10) & (\inst4|Add2~19\ $ (GND))) # (!\inst4|CC\(10) & (!\inst4|Add2~19\ & VCC))
-- \inst4|Add2~21\ = CARRY((\inst4|CC\(10) & !\inst4|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(10),
	datad => VCC,
	cin => \inst4|Add2~19\,
	combout => \inst4|Add2~20_combout\,
	cout => \inst4|Add2~21\);

-- Location: FF_X31_Y20_N21
\inst4|CC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~20_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(10));

-- Location: LCCOMB_X31_Y20_N22
\inst4|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~22_combout\ = (\inst4|CC\(11) & (!\inst4|Add2~21\)) # (!\inst4|CC\(11) & ((\inst4|Add2~21\) # (GND)))
-- \inst4|Add2~23\ = CARRY((!\inst4|Add2~21\) # (!\inst4|CC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CC\(11),
	datad => VCC,
	cin => \inst4|Add2~21\,
	combout => \inst4|Add2~22_combout\,
	cout => \inst4|Add2~23\);

-- Location: FF_X31_Y20_N23
\inst4|CC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~22_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(11));

-- Location: LCCOMB_X31_Y20_N24
\inst4|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~24_combout\ = (\inst4|CC\(12) & (\inst4|Add2~23\ $ (GND))) # (!\inst4|CC\(12) & (!\inst4|Add2~23\ & VCC))
-- \inst4|Add2~25\ = CARRY((\inst4|CC\(12) & !\inst4|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(12),
	datad => VCC,
	cin => \inst4|Add2~23\,
	combout => \inst4|Add2~24_combout\,
	cout => \inst4|Add2~25\);

-- Location: FF_X31_Y20_N25
\inst4|CC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~24_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(12));

-- Location: LCCOMB_X31_Y20_N26
\inst4|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~26_combout\ = (\inst4|CC\(13) & (!\inst4|Add2~25\)) # (!\inst4|CC\(13) & ((\inst4|Add2~25\) # (GND)))
-- \inst4|Add2~27\ = CARRY((!\inst4|Add2~25\) # (!\inst4|CC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CC\(13),
	datad => VCC,
	cin => \inst4|Add2~25\,
	combout => \inst4|Add2~26_combout\,
	cout => \inst4|Add2~27\);

-- Location: FF_X31_Y20_N27
\inst4|CC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~26_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(13));

-- Location: LCCOMB_X31_Y20_N28
\inst4|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~28_combout\ = (\inst4|CC\(14) & (\inst4|Add2~27\ $ (GND))) # (!\inst4|CC\(14) & (!\inst4|Add2~27\ & VCC))
-- \inst4|Add2~29\ = CARRY((\inst4|CC\(14) & !\inst4|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(14),
	datad => VCC,
	cin => \inst4|Add2~27\,
	combout => \inst4|Add2~28_combout\,
	cout => \inst4|Add2~29\);

-- Location: FF_X31_Y20_N29
\inst4|CC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~28_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(14));

-- Location: LCCOMB_X31_Y20_N30
\inst4|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~30_combout\ = (\inst4|CC\(15) & (!\inst4|Add2~29\)) # (!\inst4|CC\(15) & ((\inst4|Add2~29\) # (GND)))
-- \inst4|Add2~31\ = CARRY((!\inst4|Add2~29\) # (!\inst4|CC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CC\(15),
	datad => VCC,
	cin => \inst4|Add2~29\,
	combout => \inst4|Add2~30_combout\,
	cout => \inst4|Add2~31\);

-- Location: FF_X31_Y20_N31
\inst4|CC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~30_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(15));

-- Location: LCCOMB_X31_Y19_N0
\inst4|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~32_combout\ = (\inst4|CC\(16) & (\inst4|Add2~31\ $ (GND))) # (!\inst4|CC\(16) & (!\inst4|Add2~31\ & VCC))
-- \inst4|Add2~33\ = CARRY((\inst4|CC\(16) & !\inst4|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(16),
	datad => VCC,
	cin => \inst4|Add2~31\,
	combout => \inst4|Add2~32_combout\,
	cout => \inst4|Add2~33\);

-- Location: FF_X31_Y19_N1
\inst4|CC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~32_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(16));

-- Location: LCCOMB_X31_Y19_N2
\inst4|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~34_combout\ = (\inst4|CC\(17) & (!\inst4|Add2~33\)) # (!\inst4|CC\(17) & ((\inst4|Add2~33\) # (GND)))
-- \inst4|Add2~35\ = CARRY((!\inst4|Add2~33\) # (!\inst4|CC\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(17),
	datad => VCC,
	cin => \inst4|Add2~33\,
	combout => \inst4|Add2~34_combout\,
	cout => \inst4|Add2~35\);

-- Location: FF_X31_Y19_N3
\inst4|CC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~34_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(17));

-- Location: LCCOMB_X31_Y19_N4
\inst4|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~36_combout\ = (\inst4|CC\(18) & (\inst4|Add2~35\ $ (GND))) # (!\inst4|CC\(18) & (!\inst4|Add2~35\ & VCC))
-- \inst4|Add2~37\ = CARRY((\inst4|CC\(18) & !\inst4|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(18),
	datad => VCC,
	cin => \inst4|Add2~35\,
	combout => \inst4|Add2~36_combout\,
	cout => \inst4|Add2~37\);

-- Location: FF_X31_Y19_N5
\inst4|CC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~36_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(18));

-- Location: LCCOMB_X31_Y19_N6
\inst4|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~38_combout\ = (\inst4|CC\(19) & (!\inst4|Add2~37\)) # (!\inst4|CC\(19) & ((\inst4|Add2~37\) # (GND)))
-- \inst4|Add2~39\ = CARRY((!\inst4|Add2~37\) # (!\inst4|CC\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CC\(19),
	datad => VCC,
	cin => \inst4|Add2~37\,
	combout => \inst4|Add2~38_combout\,
	cout => \inst4|Add2~39\);

-- Location: FF_X31_Y19_N7
\inst4|CC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~38_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(19));

-- Location: LCCOMB_X31_Y19_N8
\inst4|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~40_combout\ = (\inst4|CC\(20) & (\inst4|Add2~39\ $ (GND))) # (!\inst4|CC\(20) & (!\inst4|Add2~39\ & VCC))
-- \inst4|Add2~41\ = CARRY((\inst4|CC\(20) & !\inst4|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(20),
	datad => VCC,
	cin => \inst4|Add2~39\,
	combout => \inst4|Add2~40_combout\,
	cout => \inst4|Add2~41\);

-- Location: FF_X31_Y19_N9
\inst4|CC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~40_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(20));

-- Location: LCCOMB_X31_Y19_N10
\inst4|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~42_combout\ = (\inst4|CC\(21) & (!\inst4|Add2~41\)) # (!\inst4|CC\(21) & ((\inst4|Add2~41\) # (GND)))
-- \inst4|Add2~43\ = CARRY((!\inst4|Add2~41\) # (!\inst4|CC\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CC\(21),
	datad => VCC,
	cin => \inst4|Add2~41\,
	combout => \inst4|Add2~42_combout\,
	cout => \inst4|Add2~43\);

-- Location: FF_X31_Y19_N11
\inst4|CC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~42_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(21));

-- Location: LCCOMB_X31_Y19_N12
\inst4|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~44_combout\ = (\inst4|CC\(22) & (\inst4|Add2~43\ $ (GND))) # (!\inst4|CC\(22) & (!\inst4|Add2~43\ & VCC))
-- \inst4|Add2~45\ = CARRY((\inst4|CC\(22) & !\inst4|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CC\(22),
	datad => VCC,
	cin => \inst4|Add2~43\,
	combout => \inst4|Add2~44_combout\,
	cout => \inst4|Add2~45\);

-- Location: LCCOMB_X30_Y19_N10
\inst4|state_clk~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_clk~8_combout\ = (!\inst4|Add2~44_combout\ & (!\inst4|Add2~40_combout\ & (!\inst4|Add2~42_combout\ & !\inst4|Add2~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add2~44_combout\,
	datab => \inst4|Add2~40_combout\,
	datac => \inst4|Add2~42_combout\,
	datad => \inst4|Add2~38_combout\,
	combout => \inst4|state_clk~8_combout\);

-- Location: LCCOMB_X30_Y19_N20
\inst4|state_clk~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_clk~7_combout\ = (!\inst4|Add2~34_combout\ & (!\inst4|Add2~32_combout\ & (!\inst4|Add2~30_combout\ & !\inst4|Add2~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add2~34_combout\,
	datab => \inst4|Add2~32_combout\,
	datac => \inst4|Add2~30_combout\,
	datad => \inst4|Add2~36_combout\,
	combout => \inst4|state_clk~7_combout\);

-- Location: LCCOMB_X30_Y20_N24
\inst4|state_clk~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_clk~6_combout\ = (!\inst4|Add2~26_combout\ & (!\inst4|Add2~22_combout\ & (!\inst4|Add2~24_combout\ & !\inst4|Add2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add2~26_combout\,
	datab => \inst4|Add2~22_combout\,
	datac => \inst4|Add2~24_combout\,
	datad => \inst4|Add2~28_combout\,
	combout => \inst4|state_clk~6_combout\);

-- Location: FF_X31_Y19_N21
\inst4|CC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~52_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(26));

-- Location: LCCOMB_X31_Y19_N14
\inst4|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~46_combout\ = (\inst4|CC\(23) & (!\inst4|Add2~45\)) # (!\inst4|CC\(23) & ((\inst4|Add2~45\) # (GND)))
-- \inst4|Add2~47\ = CARRY((!\inst4|Add2~45\) # (!\inst4|CC\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(23),
	datad => VCC,
	cin => \inst4|Add2~45\,
	combout => \inst4|Add2~46_combout\,
	cout => \inst4|Add2~47\);

-- Location: FF_X31_Y19_N15
\inst4|CC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~46_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(23));

-- Location: LCCOMB_X31_Y19_N16
\inst4|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~48_combout\ = (\inst4|CC\(24) & (\inst4|Add2~47\ $ (GND))) # (!\inst4|CC\(24) & (!\inst4|Add2~47\ & VCC))
-- \inst4|Add2~49\ = CARRY((\inst4|CC\(24) & !\inst4|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(24),
	datad => VCC,
	cin => \inst4|Add2~47\,
	combout => \inst4|Add2~48_combout\,
	cout => \inst4|Add2~49\);

-- Location: FF_X31_Y19_N17
\inst4|CC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~48_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(24));

-- Location: LCCOMB_X31_Y19_N18
\inst4|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~50_combout\ = (\inst4|CC\(25) & (!\inst4|Add2~49\)) # (!\inst4|CC\(25) & ((\inst4|Add2~49\) # (GND)))
-- \inst4|Add2~51\ = CARRY((!\inst4|Add2~49\) # (!\inst4|CC\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(25),
	datad => VCC,
	cin => \inst4|Add2~49\,
	combout => \inst4|Add2~50_combout\,
	cout => \inst4|Add2~51\);

-- Location: FF_X31_Y19_N19
\inst4|CC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~50_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(25));

-- Location: LCCOMB_X31_Y19_N20
\inst4|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~52_combout\ = (\inst4|CC\(26) & (\inst4|Add2~51\ $ (GND))) # (!\inst4|CC\(26) & (!\inst4|Add2~51\ & VCC))
-- \inst4|Add2~53\ = CARRY((\inst4|CC\(26) & !\inst4|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(26),
	datad => VCC,
	cin => \inst4|Add2~51\,
	combout => \inst4|Add2~52_combout\,
	cout => \inst4|Add2~53\);

-- Location: LCCOMB_X30_Y19_N16
\inst4|state_clk~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_clk~9_combout\ = (!\inst4|Add2~52_combout\ & (!\inst4|Add2~48_combout\ & (!\inst4|Add2~46_combout\ & !\inst4|Add2~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add2~52_combout\,
	datab => \inst4|Add2~48_combout\,
	datac => \inst4|Add2~46_combout\,
	datad => \inst4|Add2~50_combout\,
	combout => \inst4|state_clk~9_combout\);

-- Location: LCCOMB_X30_Y19_N30
\inst4|state_clk~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_clk~10_combout\ = (\inst4|state_clk~8_combout\ & (\inst4|state_clk~7_combout\ & (\inst4|state_clk~6_combout\ & \inst4|state_clk~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state_clk~8_combout\,
	datab => \inst4|state_clk~7_combout\,
	datac => \inst4|state_clk~6_combout\,
	datad => \inst4|state_clk~9_combout\,
	combout => \inst4|state_clk~10_combout\);

-- Location: LCCOMB_X30_Y19_N12
\inst4|state_clk~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_clk~2_combout\ = (\inst4|state_clk~q\ & (!\inst4|Add2~8_combout\ & (\inst4|Add2~0_combout\ & \inst4|Add2~2_combout\))) # (!\inst4|state_clk~q\ & (\inst4|Add2~8_combout\ & (!\inst4|Add2~0_combout\ & !\inst4|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state_clk~q\,
	datab => \inst4|Add2~8_combout\,
	datac => \inst4|Add2~0_combout\,
	datad => \inst4|Add2~2_combout\,
	combout => \inst4|state_clk~2_combout\);

-- Location: LCCOMB_X30_Y20_N30
\inst4|state_clk~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_clk~4_combout\ = (!\inst4|Add2~20_combout\ & (!\inst4|Add2~18_combout\ & (!\inst4|Add2~14_combout\ & !\inst4|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add2~20_combout\,
	datab => \inst4|Add2~18_combout\,
	datac => \inst4|Add2~14_combout\,
	datad => \inst4|Add2~16_combout\,
	combout => \inst4|state_clk~4_combout\);

-- Location: LCCOMB_X30_Y20_N4
\inst4|state_clk~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_clk~3_combout\ = (!\inst4|Add2~6_combout\ & (!\inst4|Add2~12_combout\ & (!\inst4|Add2~10_combout\ & !\inst4|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add2~6_combout\,
	datab => \inst4|Add2~12_combout\,
	datac => \inst4|Add2~10_combout\,
	datad => \inst4|Add2~4_combout\,
	combout => \inst4|state_clk~3_combout\);

-- Location: LCCOMB_X30_Y19_N18
\inst4|state_clk~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_clk~5_combout\ = (\inst4|state_clk~2_combout\ & (\inst4|state_clk~4_combout\ & \inst4|state_clk~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state_clk~2_combout\,
	datac => \inst4|state_clk~4_combout\,
	datad => \inst4|state_clk~3_combout\,
	combout => \inst4|state_clk~5_combout\);

-- Location: FF_X31_Y19_N31
\inst4|CC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~62_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(31));

-- Location: LCCOMB_X31_Y19_N22
\inst4|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~54_combout\ = (\inst4|CC\(27) & (!\inst4|Add2~53\)) # (!\inst4|CC\(27) & ((\inst4|Add2~53\) # (GND)))
-- \inst4|Add2~55\ = CARRY((!\inst4|Add2~53\) # (!\inst4|CC\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CC\(27),
	datad => VCC,
	cin => \inst4|Add2~53\,
	combout => \inst4|Add2~54_combout\,
	cout => \inst4|Add2~55\);

-- Location: FF_X31_Y19_N23
\inst4|CC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~54_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(27));

-- Location: LCCOMB_X31_Y19_N24
\inst4|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~56_combout\ = (\inst4|CC\(28) & (\inst4|Add2~55\ $ (GND))) # (!\inst4|CC\(28) & (!\inst4|Add2~55\ & VCC))
-- \inst4|Add2~57\ = CARRY((\inst4|CC\(28) & !\inst4|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(28),
	datad => VCC,
	cin => \inst4|Add2~55\,
	combout => \inst4|Add2~56_combout\,
	cout => \inst4|Add2~57\);

-- Location: FF_X31_Y19_N25
\inst4|CC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~56_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(28));

-- Location: LCCOMB_X31_Y19_N26
\inst4|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~58_combout\ = (\inst4|CC\(29) & (!\inst4|Add2~57\)) # (!\inst4|CC\(29) & ((\inst4|Add2~57\) # (GND)))
-- \inst4|Add2~59\ = CARRY((!\inst4|Add2~57\) # (!\inst4|CC\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CC\(29),
	datad => VCC,
	cin => \inst4|Add2~57\,
	combout => \inst4|Add2~58_combout\,
	cout => \inst4|Add2~59\);

-- Location: FF_X31_Y19_N27
\inst4|CC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~58_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(29));

-- Location: LCCOMB_X31_Y19_N28
\inst4|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~60_combout\ = (\inst4|CC\(30) & (\inst4|Add2~59\ $ (GND))) # (!\inst4|CC\(30) & (!\inst4|Add2~59\ & VCC))
-- \inst4|Add2~61\ = CARRY((\inst4|CC\(30) & !\inst4|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CC\(30),
	datad => VCC,
	cin => \inst4|Add2~59\,
	combout => \inst4|Add2~60_combout\,
	cout => \inst4|Add2~61\);

-- Location: FF_X31_Y19_N29
\inst4|CC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add2~60_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CC\(30));

-- Location: LCCOMB_X31_Y19_N30
\inst4|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add2~62_combout\ = \inst4|CC\(31) $ (\inst4|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CC\(31),
	cin => \inst4|Add2~61\,
	combout => \inst4|Add2~62_combout\);

-- Location: LCCOMB_X30_Y19_N24
\inst4|state_clk~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_clk~11_combout\ = (!\inst4|Add2~54_combout\ & (!\inst4|Add2~56_combout\ & (!\inst4|Add2~58_combout\ & !\inst4|Add2~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add2~54_combout\,
	datab => \inst4|Add2~56_combout\,
	datac => \inst4|Add2~58_combout\,
	datad => \inst4|Add2~60_combout\,
	combout => \inst4|state_clk~11_combout\);

-- Location: LCCOMB_X30_Y19_N6
\inst4|state_clk~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_clk~12_combout\ = (\inst4|state_clk~10_combout\ & (\inst4|state_clk~5_combout\ & (!\inst4|Add2~62_combout\ & \inst4|state_clk~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state_clk~10_combout\,
	datab => \inst4|state_clk~5_combout\,
	datac => \inst4|Add2~62_combout\,
	datad => \inst4|state_clk~11_combout\,
	combout => \inst4|state_clk~12_combout\);

-- Location: LCCOMB_X30_Y19_N28
\inst4|state_clk~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state_clk~13_combout\ = \inst4|state_clk~q\ $ (((!\inst4|wt~q\ & (\inst4|StartTx~q\ & \inst4|state_clk~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|wt~q\,
	datab => \inst4|StartTx~q\,
	datac => \inst4|state_clk~q\,
	datad => \inst4|state_clk~12_combout\,
	combout => \inst4|state_clk~13_combout\);

-- Location: FF_X30_Y19_N29
\inst4|state_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|state_clk~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state_clk~q\);

-- Location: LCCOMB_X30_Y18_N4
\inst4|rtc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|rtc~0_combout\ = !\inst4|state_clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|state_clk~q\,
	combout => \inst4|rtc~0_combout\);

-- Location: FF_X30_Y18_N5
\inst4|rtc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|rtc~0_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|rtc~q\);

-- Location: LCCOMB_X30_Y18_N0
\inst4|MOSI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|MOSI~0_combout\ = (\inst4|StartTx~q\ & (\inst4|rtc~q\ & !\inst4|wt~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|StartTx~q\,
	datac => \inst4|rtc~q\,
	datad => \inst4|wt~q\,
	combout => \inst4|MOSI~0_combout\);

-- Location: FF_X29_Y19_N5
\inst4|PP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~4_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(2));

-- Location: LCCOMB_X29_Y19_N0
\inst4|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~0_combout\ = \inst4|PP\(0) $ (VCC)
-- \inst4|Add5~1\ = CARRY(\inst4|PP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(0),
	datad => VCC,
	combout => \inst4|Add5~0_combout\,
	cout => \inst4|Add5~1\);

-- Location: FF_X29_Y19_N1
\inst4|PP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~0_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(0));

-- Location: LCCOMB_X29_Y19_N2
\inst4|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~2_combout\ = (\inst4|PP\(1) & (\inst4|Add5~1\ & VCC)) # (!\inst4|PP\(1) & (!\inst4|Add5~1\))
-- \inst4|Add5~3\ = CARRY((!\inst4|PP\(1) & !\inst4|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(1),
	datad => VCC,
	cin => \inst4|Add5~1\,
	combout => \inst4|Add5~2_combout\,
	cout => \inst4|Add5~3\);

-- Location: FF_X29_Y19_N3
\inst4|PP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~2_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(1));

-- Location: LCCOMB_X29_Y19_N4
\inst4|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~4_combout\ = (\inst4|PP\(2) & ((GND) # (!\inst4|Add5~3\))) # (!\inst4|PP\(2) & (\inst4|Add5~3\ $ (GND)))
-- \inst4|Add5~5\ = CARRY((\inst4|PP\(2)) # (!\inst4|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(2),
	datad => VCC,
	cin => \inst4|Add5~3\,
	combout => \inst4|Add5~4_combout\,
	cout => \inst4|Add5~5\);

-- Location: LCCOMB_X28_Y18_N2
\inst4|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal9~0_combout\ = (!\inst4|Add5~4_combout\ & !\inst4|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add5~4_combout\,
	datad => \inst4|Add5~2_combout\,
	combout => \inst4|Equal9~0_combout\);

-- Location: FF_X29_Y19_N7
\inst4|PP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~6_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(3));

-- Location: LCCOMB_X29_Y19_N6
\inst4|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~6_combout\ = (\inst4|PP\(3) & (\inst4|Add5~5\ & VCC)) # (!\inst4|PP\(3) & (!\inst4|Add5~5\))
-- \inst4|Add5~7\ = CARRY((!\inst4|PP\(3) & !\inst4|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PP\(3),
	datad => VCC,
	cin => \inst4|Add5~5\,
	combout => \inst4|Add5~6_combout\,
	cout => \inst4|Add5~7\);

-- Location: LCCOMB_X28_Y22_N12
\inst4|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~2_combout\ = (!\inst4|Add5~0_combout\ & (!\inst4|Add5~6_combout\ & \inst4|MOSI~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add5~0_combout\,
	datac => \inst4|Add5~6_combout\,
	datad => \inst4|MOSI~0_combout\,
	combout => \inst4|Decoder0~2_combout\);

-- Location: LCCOMB_X28_Y22_N30
\inst4|dwReg[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|dwReg[0]~6_combout\ = (\inst4|Equal9~0_combout\ & ((\inst4|Decoder0~2_combout\ & (\MISO_MPU~input_o\)) # (!\inst4|Decoder0~2_combout\ & ((\inst4|dwReg\(0)))))) # (!\inst4|Equal9~0_combout\ & (((\inst4|dwReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MISO_MPU~input_o\,
	datab => \inst4|Equal9~0_combout\,
	datac => \inst4|dwReg\(0),
	datad => \inst4|Decoder0~2_combout\,
	combout => \inst4|dwReg[0]~6_combout\);

-- Location: FF_X28_Y22_N31
\inst4|dwReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|dwReg[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|dwReg\(0));

-- Location: FF_X29_Y19_N21
\inst4|PP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~20_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(10));

-- Location: LCCOMB_X29_Y19_N8
\inst4|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~8_combout\ = (\inst4|PP\(4) & (\inst4|Add5~7\ $ (GND))) # (!\inst4|PP\(4) & ((GND) # (!\inst4|Add5~7\)))
-- \inst4|Add5~9\ = CARRY((!\inst4|Add5~7\) # (!\inst4|PP\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PP\(4),
	datad => VCC,
	cin => \inst4|Add5~7\,
	combout => \inst4|Add5~8_combout\,
	cout => \inst4|Add5~9\);

-- Location: LCCOMB_X28_Y19_N16
\inst4|PP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|PP~0_combout\ = (!\inst4|Add5~8_combout\ & !\inst4|Equal9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add5~8_combout\,
	datad => \inst4|Equal9~10_combout\,
	combout => \inst4|PP~0_combout\);

-- Location: FF_X28_Y19_N17
\inst4|PP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|PP~0_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(4));

-- Location: LCCOMB_X29_Y19_N10
\inst4|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~10_combout\ = (\inst4|PP\(5) & (\inst4|Add5~9\ & VCC)) # (!\inst4|PP\(5) & (!\inst4|Add5~9\))
-- \inst4|Add5~11\ = CARRY((!\inst4|PP\(5) & !\inst4|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PP\(5),
	datad => VCC,
	cin => \inst4|Add5~9\,
	combout => \inst4|Add5~10_combout\,
	cout => \inst4|Add5~11\);

-- Location: FF_X29_Y19_N11
\inst4|PP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~10_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(5));

-- Location: LCCOMB_X29_Y19_N12
\inst4|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~12_combout\ = (\inst4|PP\(6) & ((GND) # (!\inst4|Add5~11\))) # (!\inst4|PP\(6) & (\inst4|Add5~11\ $ (GND)))
-- \inst4|Add5~13\ = CARRY((\inst4|PP\(6)) # (!\inst4|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PP\(6),
	datad => VCC,
	cin => \inst4|Add5~11\,
	combout => \inst4|Add5~12_combout\,
	cout => \inst4|Add5~13\);

-- Location: FF_X29_Y19_N13
\inst4|PP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~12_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(6));

-- Location: LCCOMB_X29_Y19_N14
\inst4|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~14_combout\ = (\inst4|PP\(7) & (\inst4|Add5~13\ & VCC)) # (!\inst4|PP\(7) & (!\inst4|Add5~13\))
-- \inst4|Add5~15\ = CARRY((!\inst4|PP\(7) & !\inst4|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(7),
	datad => VCC,
	cin => \inst4|Add5~13\,
	combout => \inst4|Add5~14_combout\,
	cout => \inst4|Add5~15\);

-- Location: FF_X29_Y19_N15
\inst4|PP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~14_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(7));

-- Location: LCCOMB_X29_Y19_N16
\inst4|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~16_combout\ = (\inst4|PP\(8) & ((GND) # (!\inst4|Add5~15\))) # (!\inst4|PP\(8) & (\inst4|Add5~15\ $ (GND)))
-- \inst4|Add5~17\ = CARRY((\inst4|PP\(8)) # (!\inst4|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(8),
	datad => VCC,
	cin => \inst4|Add5~15\,
	combout => \inst4|Add5~16_combout\,
	cout => \inst4|Add5~17\);

-- Location: FF_X29_Y19_N17
\inst4|PP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~16_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(8));

-- Location: LCCOMB_X29_Y19_N18
\inst4|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~18_combout\ = (\inst4|PP\(9) & (\inst4|Add5~17\ & VCC)) # (!\inst4|PP\(9) & (!\inst4|Add5~17\))
-- \inst4|Add5~19\ = CARRY((!\inst4|PP\(9) & !\inst4|Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(9),
	datad => VCC,
	cin => \inst4|Add5~17\,
	combout => \inst4|Add5~18_combout\,
	cout => \inst4|Add5~19\);

-- Location: FF_X29_Y19_N19
\inst4|PP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~18_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(9));

-- Location: LCCOMB_X29_Y19_N20
\inst4|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~20_combout\ = (\inst4|PP\(10) & ((GND) # (!\inst4|Add5~19\))) # (!\inst4|PP\(10) & (\inst4|Add5~19\ $ (GND)))
-- \inst4|Add5~21\ = CARRY((\inst4|PP\(10)) # (!\inst4|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(10),
	datad => VCC,
	cin => \inst4|Add5~19\,
	combout => \inst4|Add5~20_combout\,
	cout => \inst4|Add5~21\);

-- Location: FF_X29_Y19_N23
\inst4|PP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~22_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(11));

-- Location: LCCOMB_X29_Y19_N22
\inst4|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~22_combout\ = (\inst4|PP\(11) & (\inst4|Add5~21\ & VCC)) # (!\inst4|PP\(11) & (!\inst4|Add5~21\))
-- \inst4|Add5~23\ = CARRY((!\inst4|PP\(11) & !\inst4|Add5~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PP\(11),
	datad => VCC,
	cin => \inst4|Add5~21\,
	combout => \inst4|Add5~22_combout\,
	cout => \inst4|Add5~23\);

-- Location: LCCOMB_X28_Y19_N8
\inst4|Equal9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal9~3_combout\ = (!\inst4|Add5~20_combout\ & (!\inst4|Add5~18_combout\ & (!\inst4|Add5~16_combout\ & !\inst4|Add5~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add5~20_combout\,
	datab => \inst4|Add5~18_combout\,
	datac => \inst4|Add5~16_combout\,
	datad => \inst4|Add5~22_combout\,
	combout => \inst4|Equal9~3_combout\);

-- Location: LCCOMB_X28_Y19_N30
\inst4|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal9~1_combout\ = (!\inst4|Add5~14_combout\ & (!\inst4|Add5~8_combout\ & (!\inst4|Add5~12_combout\ & !\inst4|Add5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add5~14_combout\,
	datab => \inst4|Add5~8_combout\,
	datac => \inst4|Add5~12_combout\,
	datad => \inst4|Add5~10_combout\,
	combout => \inst4|Equal9~1_combout\);

-- Location: LCCOMB_X28_Y18_N16
\inst4|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal9~2_combout\ = (!\inst4|Add5~0_combout\ & (\inst4|Equal9~0_combout\ & (\inst4|Equal9~1_combout\ & !\inst4|Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add5~0_combout\,
	datab => \inst4|Equal9~0_combout\,
	datac => \inst4|Equal9~1_combout\,
	datad => \inst4|Add5~6_combout\,
	combout => \inst4|Equal9~2_combout\);

-- Location: FF_X29_Y19_N31
\inst4|PP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~30_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(15));

-- Location: LCCOMB_X29_Y19_N24
\inst4|Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~24_combout\ = (\inst4|PP\(12) & ((GND) # (!\inst4|Add5~23\))) # (!\inst4|PP\(12) & (\inst4|Add5~23\ $ (GND)))
-- \inst4|Add5~25\ = CARRY((\inst4|PP\(12)) # (!\inst4|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(12),
	datad => VCC,
	cin => \inst4|Add5~23\,
	combout => \inst4|Add5~24_combout\,
	cout => \inst4|Add5~25\);

-- Location: FF_X29_Y19_N25
\inst4|PP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~24_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(12));

-- Location: LCCOMB_X29_Y19_N26
\inst4|Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~26_combout\ = (\inst4|PP\(13) & (\inst4|Add5~25\ & VCC)) # (!\inst4|PP\(13) & (!\inst4|Add5~25\))
-- \inst4|Add5~27\ = CARRY((!\inst4|PP\(13) & !\inst4|Add5~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PP\(13),
	datad => VCC,
	cin => \inst4|Add5~25\,
	combout => \inst4|Add5~26_combout\,
	cout => \inst4|Add5~27\);

-- Location: FF_X29_Y19_N27
\inst4|PP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~26_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(13));

-- Location: LCCOMB_X29_Y19_N28
\inst4|Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~28_combout\ = (\inst4|PP\(14) & ((GND) # (!\inst4|Add5~27\))) # (!\inst4|PP\(14) & (\inst4|Add5~27\ $ (GND)))
-- \inst4|Add5~29\ = CARRY((\inst4|PP\(14)) # (!\inst4|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(14),
	datad => VCC,
	cin => \inst4|Add5~27\,
	combout => \inst4|Add5~28_combout\,
	cout => \inst4|Add5~29\);

-- Location: FF_X29_Y19_N29
\inst4|PP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~28_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(14));

-- Location: LCCOMB_X29_Y19_N30
\inst4|Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~30_combout\ = (\inst4|PP\(15) & (\inst4|Add5~29\ & VCC)) # (!\inst4|PP\(15) & (!\inst4|Add5~29\))
-- \inst4|Add5~31\ = CARRY((!\inst4|PP\(15) & !\inst4|Add5~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PP\(15),
	datad => VCC,
	cin => \inst4|Add5~29\,
	combout => \inst4|Add5~30_combout\,
	cout => \inst4|Add5~31\);

-- Location: LCCOMB_X28_Y19_N18
\inst4|Equal9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal9~4_combout\ = (!\inst4|Add5~30_combout\ & (!\inst4|Add5~28_combout\ & (!\inst4|Add5~26_combout\ & !\inst4|Add5~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add5~30_combout\,
	datab => \inst4|Add5~28_combout\,
	datac => \inst4|Add5~26_combout\,
	datad => \inst4|Add5~24_combout\,
	combout => \inst4|Equal9~4_combout\);

-- Location: FF_X29_Y18_N19
\inst4|PP[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~50_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(25));

-- Location: LCCOMB_X29_Y18_N0
\inst4|Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~32_combout\ = (\inst4|PP\(16) & ((GND) # (!\inst4|Add5~31\))) # (!\inst4|PP\(16) & (\inst4|Add5~31\ $ (GND)))
-- \inst4|Add5~33\ = CARRY((\inst4|PP\(16)) # (!\inst4|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(16),
	datad => VCC,
	cin => \inst4|Add5~31\,
	combout => \inst4|Add5~32_combout\,
	cout => \inst4|Add5~33\);

-- Location: FF_X29_Y18_N1
\inst4|PP[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~32_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(16));

-- Location: LCCOMB_X29_Y18_N2
\inst4|Add5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~34_combout\ = (\inst4|PP\(17) & (\inst4|Add5~33\ & VCC)) # (!\inst4|PP\(17) & (!\inst4|Add5~33\))
-- \inst4|Add5~35\ = CARRY((!\inst4|PP\(17) & !\inst4|Add5~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(17),
	datad => VCC,
	cin => \inst4|Add5~33\,
	combout => \inst4|Add5~34_combout\,
	cout => \inst4|Add5~35\);

-- Location: FF_X29_Y18_N3
\inst4|PP[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~34_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(17));

-- Location: LCCOMB_X29_Y18_N4
\inst4|Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~36_combout\ = (\inst4|PP\(18) & ((GND) # (!\inst4|Add5~35\))) # (!\inst4|PP\(18) & (\inst4|Add5~35\ $ (GND)))
-- \inst4|Add5~37\ = CARRY((\inst4|PP\(18)) # (!\inst4|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(18),
	datad => VCC,
	cin => \inst4|Add5~35\,
	combout => \inst4|Add5~36_combout\,
	cout => \inst4|Add5~37\);

-- Location: FF_X29_Y18_N5
\inst4|PP[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~36_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(18));

-- Location: LCCOMB_X29_Y18_N6
\inst4|Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~38_combout\ = (\inst4|PP\(19) & (\inst4|Add5~37\ & VCC)) # (!\inst4|PP\(19) & (!\inst4|Add5~37\))
-- \inst4|Add5~39\ = CARRY((!\inst4|PP\(19) & !\inst4|Add5~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PP\(19),
	datad => VCC,
	cin => \inst4|Add5~37\,
	combout => \inst4|Add5~38_combout\,
	cout => \inst4|Add5~39\);

-- Location: FF_X29_Y18_N7
\inst4|PP[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~38_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(19));

-- Location: LCCOMB_X29_Y18_N8
\inst4|Add5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~40_combout\ = (\inst4|PP\(20) & ((GND) # (!\inst4|Add5~39\))) # (!\inst4|PP\(20) & (\inst4|Add5~39\ $ (GND)))
-- \inst4|Add5~41\ = CARRY((\inst4|PP\(20)) # (!\inst4|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(20),
	datad => VCC,
	cin => \inst4|Add5~39\,
	combout => \inst4|Add5~40_combout\,
	cout => \inst4|Add5~41\);

-- Location: FF_X29_Y18_N9
\inst4|PP[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~40_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(20));

-- Location: LCCOMB_X29_Y18_N10
\inst4|Add5~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~42_combout\ = (\inst4|PP\(21) & (\inst4|Add5~41\ & VCC)) # (!\inst4|PP\(21) & (!\inst4|Add5~41\))
-- \inst4|Add5~43\ = CARRY((!\inst4|PP\(21) & !\inst4|Add5~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PP\(21),
	datad => VCC,
	cin => \inst4|Add5~41\,
	combout => \inst4|Add5~42_combout\,
	cout => \inst4|Add5~43\);

-- Location: FF_X29_Y18_N11
\inst4|PP[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~42_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(21));

-- Location: LCCOMB_X29_Y18_N12
\inst4|Add5~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~44_combout\ = (\inst4|PP\(22) & ((GND) # (!\inst4|Add5~43\))) # (!\inst4|PP\(22) & (\inst4|Add5~43\ $ (GND)))
-- \inst4|Add5~45\ = CARRY((\inst4|PP\(22)) # (!\inst4|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PP\(22),
	datad => VCC,
	cin => \inst4|Add5~43\,
	combout => \inst4|Add5~44_combout\,
	cout => \inst4|Add5~45\);

-- Location: FF_X29_Y18_N13
\inst4|PP[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~44_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(22));

-- Location: LCCOMB_X29_Y18_N14
\inst4|Add5~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~46_combout\ = (\inst4|PP\(23) & (\inst4|Add5~45\ & VCC)) # (!\inst4|PP\(23) & (!\inst4|Add5~45\))
-- \inst4|Add5~47\ = CARRY((!\inst4|PP\(23) & !\inst4|Add5~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(23),
	datad => VCC,
	cin => \inst4|Add5~45\,
	combout => \inst4|Add5~46_combout\,
	cout => \inst4|Add5~47\);

-- Location: FF_X29_Y18_N15
\inst4|PP[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~46_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(23));

-- Location: LCCOMB_X29_Y18_N16
\inst4|Add5~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~48_combout\ = (\inst4|PP\(24) & ((GND) # (!\inst4|Add5~47\))) # (!\inst4|PP\(24) & (\inst4|Add5~47\ $ (GND)))
-- \inst4|Add5~49\ = CARRY((\inst4|PP\(24)) # (!\inst4|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(24),
	datad => VCC,
	cin => \inst4|Add5~47\,
	combout => \inst4|Add5~48_combout\,
	cout => \inst4|Add5~49\);

-- Location: FF_X29_Y18_N17
\inst4|PP[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~48_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(24));

-- Location: LCCOMB_X29_Y18_N18
\inst4|Add5~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~50_combout\ = (\inst4|PP\(25) & (\inst4|Add5~49\ & VCC)) # (!\inst4|PP\(25) & (!\inst4|Add5~49\))
-- \inst4|Add5~51\ = CARRY((!\inst4|PP\(25) & !\inst4|Add5~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(25),
	datad => VCC,
	cin => \inst4|Add5~49\,
	combout => \inst4|Add5~50_combout\,
	cout => \inst4|Add5~51\);

-- Location: FF_X29_Y18_N23
\inst4|PP[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~54_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(27));

-- Location: LCCOMB_X29_Y18_N20
\inst4|Add5~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~52_combout\ = (\inst4|PP\(26) & ((GND) # (!\inst4|Add5~51\))) # (!\inst4|PP\(26) & (\inst4|Add5~51\ $ (GND)))
-- \inst4|Add5~53\ = CARRY((\inst4|PP\(26)) # (!\inst4|Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(26),
	datad => VCC,
	cin => \inst4|Add5~51\,
	combout => \inst4|Add5~52_combout\,
	cout => \inst4|Add5~53\);

-- Location: FF_X29_Y18_N21
\inst4|PP[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~52_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(26));

-- Location: LCCOMB_X29_Y18_N22
\inst4|Add5~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~54_combout\ = (\inst4|PP\(27) & (\inst4|Add5~53\ & VCC)) # (!\inst4|PP\(27) & (!\inst4|Add5~53\))
-- \inst4|Add5~55\ = CARRY((!\inst4|PP\(27) & !\inst4|Add5~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PP\(27),
	datad => VCC,
	cin => \inst4|Add5~53\,
	combout => \inst4|Add5~54_combout\,
	cout => \inst4|Add5~55\);

-- Location: LCCOMB_X28_Y18_N22
\inst4|Equal9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal9~7_combout\ = (!\inst4|Add5~50_combout\ & (!\inst4|Add5~54_combout\ & (!\inst4|Add5~52_combout\ & !\inst4|Add5~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add5~50_combout\,
	datab => \inst4|Add5~54_combout\,
	datac => \inst4|Add5~52_combout\,
	datad => \inst4|Add5~48_combout\,
	combout => \inst4|Equal9~7_combout\);

-- Location: LCCOMB_X28_Y18_N18
\inst4|Equal9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal9~5_combout\ = (!\inst4|Add5~36_combout\ & (!\inst4|Add5~32_combout\ & (!\inst4|Add5~34_combout\ & !\inst4|Add5~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add5~36_combout\,
	datab => \inst4|Add5~32_combout\,
	datac => \inst4|Add5~34_combout\,
	datad => \inst4|Add5~38_combout\,
	combout => \inst4|Equal9~5_combout\);

-- Location: LCCOMB_X28_Y18_N4
\inst4|Equal9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal9~6_combout\ = (!\inst4|Add5~46_combout\ & (!\inst4|Add5~44_combout\ & (!\inst4|Add5~42_combout\ & !\inst4|Add5~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add5~46_combout\,
	datab => \inst4|Add5~44_combout\,
	datac => \inst4|Add5~42_combout\,
	datad => \inst4|Add5~40_combout\,
	combout => \inst4|Equal9~6_combout\);

-- Location: FF_X29_Y18_N31
\inst4|PP[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~62_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(31));

-- Location: LCCOMB_X29_Y18_N24
\inst4|Add5~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~56_combout\ = (\inst4|PP\(28) & ((GND) # (!\inst4|Add5~55\))) # (!\inst4|PP\(28) & (\inst4|Add5~55\ $ (GND)))
-- \inst4|Add5~57\ = CARRY((\inst4|PP\(28)) # (!\inst4|Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(28),
	datad => VCC,
	cin => \inst4|Add5~55\,
	combout => \inst4|Add5~56_combout\,
	cout => \inst4|Add5~57\);

-- Location: FF_X29_Y18_N25
\inst4|PP[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~56_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(28));

-- Location: LCCOMB_X29_Y18_N26
\inst4|Add5~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~58_combout\ = (\inst4|PP\(29) & (\inst4|Add5~57\ & VCC)) # (!\inst4|PP\(29) & (!\inst4|Add5~57\))
-- \inst4|Add5~59\ = CARRY((!\inst4|PP\(29) & !\inst4|Add5~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PP\(29),
	datad => VCC,
	cin => \inst4|Add5~57\,
	combout => \inst4|Add5~58_combout\,
	cout => \inst4|Add5~59\);

-- Location: FF_X29_Y18_N27
\inst4|PP[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~58_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(29));

-- Location: LCCOMB_X29_Y18_N28
\inst4|Add5~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~60_combout\ = (\inst4|PP\(30) & ((GND) # (!\inst4|Add5~59\))) # (!\inst4|PP\(30) & (\inst4|Add5~59\ $ (GND)))
-- \inst4|Add5~61\ = CARRY((\inst4|PP\(30)) # (!\inst4|Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PP\(30),
	datad => VCC,
	cin => \inst4|Add5~59\,
	combout => \inst4|Add5~60_combout\,
	cout => \inst4|Add5~61\);

-- Location: FF_X29_Y18_N29
\inst4|PP[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add5~60_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PP\(30));

-- Location: LCCOMB_X29_Y18_N30
\inst4|Add5~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add5~62_combout\ = \inst4|PP\(31) $ (!\inst4|Add5~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PP\(31),
	cin => \inst4|Add5~61\,
	combout => \inst4|Add5~62_combout\);

-- Location: LCCOMB_X28_Y18_N12
\inst4|Equal9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal9~8_combout\ = (!\inst4|Add5~62_combout\ & (!\inst4|Add5~58_combout\ & (!\inst4|Add5~56_combout\ & !\inst4|Add5~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add5~62_combout\,
	datab => \inst4|Add5~58_combout\,
	datac => \inst4|Add5~56_combout\,
	datad => \inst4|Add5~60_combout\,
	combout => \inst4|Equal9~8_combout\);

-- Location: LCCOMB_X28_Y18_N10
\inst4|Equal9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal9~9_combout\ = (\inst4|Equal9~7_combout\ & (\inst4|Equal9~5_combout\ & (\inst4|Equal9~6_combout\ & \inst4|Equal9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal9~7_combout\,
	datab => \inst4|Equal9~5_combout\,
	datac => \inst4|Equal9~6_combout\,
	datad => \inst4|Equal9~8_combout\,
	combout => \inst4|Equal9~9_combout\);

-- Location: LCCOMB_X28_Y18_N0
\inst4|Equal9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal9~10_combout\ = (\inst4|Equal9~3_combout\ & (\inst4|Equal9~2_combout\ & (\inst4|Equal9~4_combout\ & \inst4|Equal9~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal9~3_combout\,
	datab => \inst4|Equal9~2_combout\,
	datac => \inst4|Equal9~4_combout\,
	datad => \inst4|Equal9~9_combout\,
	combout => \inst4|Equal9~10_combout\);

-- Location: LCCOMB_X28_Y18_N26
\inst4|rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|rtl~0_combout\ = (\inst4|rtc~q\ & ((\inst4|rtl~q\) # (\inst4|Equal9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|rtc~q\,
	datac => \inst4|rtl~q\,
	datad => \inst4|Equal9~10_combout\,
	combout => \inst4|rtl~0_combout\);

-- Location: FF_X28_Y18_N27
\inst4|rtl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|rtl~0_combout\,
	ena => \inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|rtl~q\);

-- Location: FF_X28_Y22_N29
\inst4|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst4|dwReg\(0),
	sload => VCC,
	ena => \inst4|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|rx_data\(0));

-- Location: LCCOMB_X28_Y22_N10
\inst4|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~0_combout\ = (\inst4|Add5~0_combout\ & (!\inst4|Add5~6_combout\ & \inst4|MOSI~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add5~0_combout\,
	datac => \inst4|Add5~6_combout\,
	datad => \inst4|MOSI~0_combout\,
	combout => \inst4|Decoder0~0_combout\);

-- Location: LCCOMB_X28_Y22_N16
\inst4|dwReg[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|dwReg[1]~5_combout\ = (\inst4|Equal9~0_combout\ & ((\inst4|Decoder0~0_combout\ & (\MISO_MPU~input_o\)) # (!\inst4|Decoder0~0_combout\ & ((\inst4|dwReg\(1)))))) # (!\inst4|Equal9~0_combout\ & (((\inst4|dwReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MISO_MPU~input_o\,
	datab => \inst4|Equal9~0_combout\,
	datac => \inst4|dwReg\(1),
	datad => \inst4|Decoder0~0_combout\,
	combout => \inst4|dwReg[1]~5_combout\);

-- Location: FF_X28_Y22_N17
\inst4|dwReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|dwReg[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|dwReg\(1));

-- Location: LCCOMB_X27_Y22_N22
\inst4|rx_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|rx_data[1]~feeder_combout\ = \inst4|dwReg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|dwReg\(1),
	combout => \inst4|rx_data[1]~feeder_combout\);

-- Location: FF_X27_Y22_N23
\inst4|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|rx_data[1]~feeder_combout\,
	ena => \inst4|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|rx_data\(1));

-- Location: LCCOMB_X28_Y18_N20
\inst4|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~4_combout\ = (!\inst4|Add5~4_combout\ & \inst4|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add5~4_combout\,
	datad => \inst4|Add5~2_combout\,
	combout => \inst4|Decoder0~4_combout\);

-- Location: LCCOMB_X28_Y22_N18
\inst4|dwReg[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|dwReg[2]~4_combout\ = (\inst4|Decoder0~4_combout\ & ((\inst4|Decoder0~2_combout\ & (\MISO_MPU~input_o\)) # (!\inst4|Decoder0~2_combout\ & ((\inst4|dwReg\(2)))))) # (!\inst4|Decoder0~4_combout\ & (((\inst4|dwReg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MISO_MPU~input_o\,
	datab => \inst4|Decoder0~4_combout\,
	datac => \inst4|dwReg\(2),
	datad => \inst4|Decoder0~2_combout\,
	combout => \inst4|dwReg[2]~4_combout\);

-- Location: FF_X28_Y22_N19
\inst4|dwReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|dwReg[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|dwReg\(2));

-- Location: LCCOMB_X28_Y22_N2
\inst4|rx_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|rx_data[2]~feeder_combout\ = \inst4|dwReg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|dwReg\(2),
	combout => \inst4|rx_data[2]~feeder_combout\);

-- Location: FF_X28_Y22_N3
\inst4|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|rx_data[2]~feeder_combout\,
	ena => \inst4|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|rx_data\(2));

-- Location: LCCOMB_X28_Y22_N24
\inst4|dwReg[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|dwReg[3]~7_combout\ = (\inst4|Decoder0~4_combout\ & ((\inst4|Decoder0~0_combout\ & (\MISO_MPU~input_o\)) # (!\inst4|Decoder0~0_combout\ & ((\inst4|dwReg\(3)))))) # (!\inst4|Decoder0~4_combout\ & (((\inst4|dwReg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MISO_MPU~input_o\,
	datab => \inst4|Decoder0~4_combout\,
	datac => \inst4|dwReg\(3),
	datad => \inst4|Decoder0~0_combout\,
	combout => \inst4|dwReg[3]~7_combout\);

-- Location: FF_X28_Y22_N25
\inst4|dwReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|dwReg[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|dwReg\(3));

-- Location: LCCOMB_X27_Y22_N8
\inst4|rx_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|rx_data[3]~feeder_combout\ = \inst4|dwReg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|dwReg\(3),
	combout => \inst4|rx_data[3]~feeder_combout\);

-- Location: FF_X27_Y22_N9
\inst4|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|rx_data[3]~feeder_combout\,
	ena => \inst4|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|rx_data\(3));

-- Location: LCCOMB_X28_Y18_N8
\inst4|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~1_combout\ = (\inst4|Add5~4_combout\ & !\inst4|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add5~4_combout\,
	datad => \inst4|Add5~2_combout\,
	combout => \inst4|Decoder0~1_combout\);

-- Location: LCCOMB_X28_Y22_N14
\inst4|dwReg[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|dwReg[4]~2_combout\ = (\inst4|Decoder0~1_combout\ & ((\inst4|Decoder0~2_combout\ & (\MISO_MPU~input_o\)) # (!\inst4|Decoder0~2_combout\ & ((\inst4|dwReg\(4)))))) # (!\inst4|Decoder0~1_combout\ & (((\inst4|dwReg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MISO_MPU~input_o\,
	datab => \inst4|Decoder0~1_combout\,
	datac => \inst4|dwReg\(4),
	datad => \inst4|Decoder0~2_combout\,
	combout => \inst4|dwReg[4]~2_combout\);

-- Location: FF_X28_Y22_N15
\inst4|dwReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|dwReg[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|dwReg\(4));

-- Location: FF_X28_Y22_N23
\inst4|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst4|dwReg\(4),
	sload => VCC,
	ena => \inst4|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|rx_data\(4));

-- Location: LCCOMB_X28_Y22_N26
\inst4|dwReg[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|dwReg[5]~0_combout\ = (\inst4|Decoder0~1_combout\ & ((\inst4|Decoder0~0_combout\ & (\MISO_MPU~input_o\)) # (!\inst4|Decoder0~0_combout\ & ((\inst4|dwReg\(5)))))) # (!\inst4|Decoder0~1_combout\ & (((\inst4|dwReg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MISO_MPU~input_o\,
	datab => \inst4|Decoder0~1_combout\,
	datac => \inst4|dwReg\(5),
	datad => \inst4|Decoder0~0_combout\,
	combout => \inst4|dwReg[5]~0_combout\);

-- Location: FF_X28_Y22_N27
\inst4|dwReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|dwReg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|dwReg\(5));

-- Location: FF_X28_Y22_N21
\inst4|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst4|dwReg\(5),
	sload => VCC,
	ena => \inst4|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|rx_data\(5));

-- Location: LCCOMB_X28_Y18_N30
\inst4|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~3_combout\ = (\inst4|Add5~4_combout\ & \inst4|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add5~4_combout\,
	datad => \inst4|Add5~2_combout\,
	combout => \inst4|Decoder0~3_combout\);

-- Location: LCCOMB_X28_Y22_N4
\inst4|dwReg[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|dwReg[6]~1_combout\ = (\inst4|Decoder0~3_combout\ & ((\inst4|Decoder0~2_combout\ & (\MISO_MPU~input_o\)) # (!\inst4|Decoder0~2_combout\ & ((\inst4|dwReg\(6)))))) # (!\inst4|Decoder0~3_combout\ & (((\inst4|dwReg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MISO_MPU~input_o\,
	datab => \inst4|Decoder0~3_combout\,
	datac => \inst4|dwReg\(6),
	datad => \inst4|Decoder0~2_combout\,
	combout => \inst4|dwReg[6]~1_combout\);

-- Location: FF_X28_Y22_N5
\inst4|dwReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|dwReg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|dwReg\(6));

-- Location: LCCOMB_X27_Y22_N12
\inst4|rx_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|rx_data[6]~feeder_combout\ = \inst4|dwReg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|dwReg\(6),
	combout => \inst4|rx_data[6]~feeder_combout\);

-- Location: FF_X27_Y22_N13
\inst4|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|rx_data[6]~feeder_combout\,
	ena => \inst4|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|rx_data\(6));

-- Location: LCCOMB_X28_Y22_N8
\inst4|dwReg[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|dwReg[7]~3_combout\ = (\inst4|Decoder0~3_combout\ & ((\inst4|Decoder0~0_combout\ & (\MISO_MPU~input_o\)) # (!\inst4|Decoder0~0_combout\ & ((\inst4|dwReg\(7)))))) # (!\inst4|Decoder0~3_combout\ & (((\inst4|dwReg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MISO_MPU~input_o\,
	datab => \inst4|Decoder0~3_combout\,
	datac => \inst4|dwReg\(7),
	datad => \inst4|Decoder0~0_combout\,
	combout => \inst4|dwReg[7]~3_combout\);

-- Location: FF_X28_Y22_N9
\inst4|dwReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst4|dwReg[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|dwReg\(7));

-- Location: FF_X28_Y22_N1
\inst4|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst4|dwReg\(7),
	sload => VCC,
	ena => \inst4|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|rx_data\(7));

-- Location: LCCOMB_X23_Y26_N14
\inst16|FS[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|FS[0]~_wirecell_combout\ = !\inst16|FS\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|FS\(0),
	combout => \inst16|FS[0]~_wirecell_combout\);

-- Location: LCCOMB_X21_Y26_N30
\inst16|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux2~0_combout\ = (\inst16|FS\(3)) # ((\inst16|FS\(2) & \inst16|FS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|FS\(2),
	datac => \inst16|FS\(1),
	datad => \inst16|FS\(3),
	combout => \inst16|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y26_N20
\inst16|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Mux1~0_combout\ = (!\inst16|FS\(2) & (\inst16|FS\(1) $ (\inst16|FS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|FS\(2),
	datac => \inst16|FS\(1),
	datad => \inst16|FS\(3),
	combout => \inst16|Mux1~0_combout\);

-- Location: M9K_X22_Y26_N0
\inst16|datArray_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FIFObuffer:inst16|altsyncram:datArray_rtl_0|altsyncram_ccc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 12,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 12,
	port_b_logical_ram_width => 12,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst16|state.STORE~q\,
	portbre => VCC,
	clk0 => \inst20|CLK_OUT~clkctrl_outclk\,
	portadatain => \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst16|datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y26_N2
\inst5|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector24~0_combout\ = (\inst16|datArray~23_combout\ & (\inst16|datArray_rtl_0_bypass\(20))) # (!\inst16|datArray~23_combout\ & ((\inst16|datArray_rtl_0|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|datArray~23_combout\,
	datac => \inst16|datArray_rtl_0_bypass\(20),
	datad => \inst16|datArray_rtl_0|auto_generated|ram_block1a11\,
	combout => \inst5|Selector24~0_combout\);

-- Location: LCCOMB_X18_Y23_N26
\inst5|WideNor0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|WideNor0~0_combout\ = (\inst5|Equal0~9_combout\ & ((!\inst5|idx\(2)) # (!\inst5|idx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(1),
	datac => \inst5|idx\(2),
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|WideNor0~0_combout\);

-- Location: FF_X21_Y26_N3
\inst5|dataOut[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Selector24~0_combout\,
	sclr => \inst5|ALT_INV_state.SEARCH~q\,
	ena => \inst5|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataOut\(12));

-- Location: FF_X9_Y26_N27
\inst6|BP[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~58_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(29));

-- Location: LCCOMB_X9_Y27_N4
\inst6|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~4_combout\ = (\inst6|BP\(2) & ((GND) # (!\inst6|Add4~3\))) # (!\inst6|BP\(2) & (\inst6|Add4~3\ $ (GND)))
-- \inst6|Add4~5\ = CARRY((\inst6|BP\(2)) # (!\inst6|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(2),
	datad => VCC,
	cin => \inst6|Add4~3\,
	combout => \inst6|Add4~4_combout\,
	cout => \inst6|Add4~5\);

-- Location: FF_X9_Y27_N5
\inst6|BP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~4_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(2));

-- Location: LCCOMB_X9_Y27_N6
\inst6|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~6_combout\ = (\inst6|BP\(3) & (\inst6|Add4~5\ & VCC)) # (!\inst6|BP\(3) & (!\inst6|Add4~5\))
-- \inst6|Add4~7\ = CARRY((!\inst6|BP\(3) & !\inst6|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|BP\(3),
	datad => VCC,
	cin => \inst6|Add4~5\,
	combout => \inst6|Add4~6_combout\,
	cout => \inst6|Add4~7\);

-- Location: FF_X9_Y27_N7
\inst6|BP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~6_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(3));

-- Location: LCCOMB_X9_Y27_N8
\inst6|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~8_combout\ = (\inst6|BP\(4) & (\inst6|Add4~7\ $ (GND))) # (!\inst6|BP\(4) & ((GND) # (!\inst6|Add4~7\)))
-- \inst6|Add4~9\ = CARRY((!\inst6|Add4~7\) # (!\inst6|BP\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(4),
	datad => VCC,
	cin => \inst6|Add4~7\,
	combout => \inst6|Add4~8_combout\,
	cout => \inst6|Add4~9\);

-- Location: LCCOMB_X10_Y26_N26
\inst6|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|BP~0_combout\ = (!\inst6|Add4~8_combout\ & !\inst6|Equal8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add4~8_combout\,
	datad => \inst6|Equal8~10_combout\,
	combout => \inst6|BP~0_combout\);

-- Location: FF_X10_Y26_N27
\inst6|BP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|BP~0_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(4));

-- Location: LCCOMB_X9_Y27_N10
\inst6|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~10_combout\ = (\inst6|BP\(5) & (\inst6|Add4~9\ & VCC)) # (!\inst6|BP\(5) & (!\inst6|Add4~9\))
-- \inst6|Add4~11\ = CARRY((!\inst6|BP\(5) & !\inst6|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|BP\(5),
	datad => VCC,
	cin => \inst6|Add4~9\,
	combout => \inst6|Add4~10_combout\,
	cout => \inst6|Add4~11\);

-- Location: FF_X9_Y27_N11
\inst6|BP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~10_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(5));

-- Location: LCCOMB_X9_Y27_N12
\inst6|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~12_combout\ = (\inst6|BP\(6) & ((GND) # (!\inst6|Add4~11\))) # (!\inst6|BP\(6) & (\inst6|Add4~11\ $ (GND)))
-- \inst6|Add4~13\ = CARRY((\inst6|BP\(6)) # (!\inst6|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|BP\(6),
	datad => VCC,
	cin => \inst6|Add4~11\,
	combout => \inst6|Add4~12_combout\,
	cout => \inst6|Add4~13\);

-- Location: FF_X9_Y27_N13
\inst6|BP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~12_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(6));

-- Location: LCCOMB_X9_Y27_N14
\inst6|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~14_combout\ = (\inst6|BP\(7) & (\inst6|Add4~13\ & VCC)) # (!\inst6|BP\(7) & (!\inst6|Add4~13\))
-- \inst6|Add4~15\ = CARRY((!\inst6|BP\(7) & !\inst6|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(7),
	datad => VCC,
	cin => \inst6|Add4~13\,
	combout => \inst6|Add4~14_combout\,
	cout => \inst6|Add4~15\);

-- Location: FF_X9_Y27_N15
\inst6|BP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~14_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(7));

-- Location: LCCOMB_X9_Y27_N16
\inst6|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~16_combout\ = (\inst6|BP\(8) & ((GND) # (!\inst6|Add4~15\))) # (!\inst6|BP\(8) & (\inst6|Add4~15\ $ (GND)))
-- \inst6|Add4~17\ = CARRY((\inst6|BP\(8)) # (!\inst6|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(8),
	datad => VCC,
	cin => \inst6|Add4~15\,
	combout => \inst6|Add4~16_combout\,
	cout => \inst6|Add4~17\);

-- Location: FF_X9_Y27_N17
\inst6|BP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~16_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(8));

-- Location: LCCOMB_X9_Y27_N18
\inst6|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~18_combout\ = (\inst6|BP\(9) & (\inst6|Add4~17\ & VCC)) # (!\inst6|BP\(9) & (!\inst6|Add4~17\))
-- \inst6|Add4~19\ = CARRY((!\inst6|BP\(9) & !\inst6|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(9),
	datad => VCC,
	cin => \inst6|Add4~17\,
	combout => \inst6|Add4~18_combout\,
	cout => \inst6|Add4~19\);

-- Location: FF_X9_Y27_N19
\inst6|BP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~18_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(9));

-- Location: LCCOMB_X9_Y27_N20
\inst6|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~20_combout\ = (\inst6|BP\(10) & ((GND) # (!\inst6|Add4~19\))) # (!\inst6|BP\(10) & (\inst6|Add4~19\ $ (GND)))
-- \inst6|Add4~21\ = CARRY((\inst6|BP\(10)) # (!\inst6|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(10),
	datad => VCC,
	cin => \inst6|Add4~19\,
	combout => \inst6|Add4~20_combout\,
	cout => \inst6|Add4~21\);

-- Location: FF_X9_Y27_N21
\inst6|BP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~20_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(10));

-- Location: LCCOMB_X9_Y27_N22
\inst6|Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~22_combout\ = (\inst6|BP\(11) & (\inst6|Add4~21\ & VCC)) # (!\inst6|BP\(11) & (!\inst6|Add4~21\))
-- \inst6|Add4~23\ = CARRY((!\inst6|BP\(11) & !\inst6|Add4~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|BP\(11),
	datad => VCC,
	cin => \inst6|Add4~21\,
	combout => \inst6|Add4~22_combout\,
	cout => \inst6|Add4~23\);

-- Location: FF_X9_Y27_N23
\inst6|BP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~22_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(11));

-- Location: LCCOMB_X9_Y27_N24
\inst6|Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~24_combout\ = (\inst6|BP\(12) & ((GND) # (!\inst6|Add4~23\))) # (!\inst6|BP\(12) & (\inst6|Add4~23\ $ (GND)))
-- \inst6|Add4~25\ = CARRY((\inst6|BP\(12)) # (!\inst6|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(12),
	datad => VCC,
	cin => \inst6|Add4~23\,
	combout => \inst6|Add4~24_combout\,
	cout => \inst6|Add4~25\);

-- Location: FF_X9_Y27_N25
\inst6|BP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~24_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(12));

-- Location: LCCOMB_X9_Y27_N26
\inst6|Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~26_combout\ = (\inst6|BP\(13) & (\inst6|Add4~25\ & VCC)) # (!\inst6|BP\(13) & (!\inst6|Add4~25\))
-- \inst6|Add4~27\ = CARRY((!\inst6|BP\(13) & !\inst6|Add4~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|BP\(13),
	datad => VCC,
	cin => \inst6|Add4~25\,
	combout => \inst6|Add4~26_combout\,
	cout => \inst6|Add4~27\);

-- Location: FF_X9_Y27_N27
\inst6|BP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~26_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(13));

-- Location: LCCOMB_X9_Y27_N28
\inst6|Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~28_combout\ = (\inst6|BP\(14) & ((GND) # (!\inst6|Add4~27\))) # (!\inst6|BP\(14) & (\inst6|Add4~27\ $ (GND)))
-- \inst6|Add4~29\ = CARRY((\inst6|BP\(14)) # (!\inst6|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(14),
	datad => VCC,
	cin => \inst6|Add4~27\,
	combout => \inst6|Add4~28_combout\,
	cout => \inst6|Add4~29\);

-- Location: FF_X9_Y27_N29
\inst6|BP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~28_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(14));

-- Location: LCCOMB_X9_Y27_N30
\inst6|Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~30_combout\ = (\inst6|BP\(15) & (\inst6|Add4~29\ & VCC)) # (!\inst6|BP\(15) & (!\inst6|Add4~29\))
-- \inst6|Add4~31\ = CARRY((!\inst6|BP\(15) & !\inst6|Add4~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|BP\(15),
	datad => VCC,
	cin => \inst6|Add4~29\,
	combout => \inst6|Add4~30_combout\,
	cout => \inst6|Add4~31\);

-- Location: FF_X9_Y27_N31
\inst6|BP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~30_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(15));

-- Location: LCCOMB_X9_Y26_N0
\inst6|Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~32_combout\ = (\inst6|BP\(16) & ((GND) # (!\inst6|Add4~31\))) # (!\inst6|BP\(16) & (\inst6|Add4~31\ $ (GND)))
-- \inst6|Add4~33\ = CARRY((\inst6|BP\(16)) # (!\inst6|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(16),
	datad => VCC,
	cin => \inst6|Add4~31\,
	combout => \inst6|Add4~32_combout\,
	cout => \inst6|Add4~33\);

-- Location: FF_X9_Y26_N1
\inst6|BP[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~32_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(16));

-- Location: LCCOMB_X9_Y26_N2
\inst6|Add4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~34_combout\ = (\inst6|BP\(17) & (\inst6|Add4~33\ & VCC)) # (!\inst6|BP\(17) & (!\inst6|Add4~33\))
-- \inst6|Add4~35\ = CARRY((!\inst6|BP\(17) & !\inst6|Add4~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(17),
	datad => VCC,
	cin => \inst6|Add4~33\,
	combout => \inst6|Add4~34_combout\,
	cout => \inst6|Add4~35\);

-- Location: FF_X9_Y26_N3
\inst6|BP[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~34_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(17));

-- Location: LCCOMB_X9_Y26_N4
\inst6|Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~36_combout\ = (\inst6|BP\(18) & ((GND) # (!\inst6|Add4~35\))) # (!\inst6|BP\(18) & (\inst6|Add4~35\ $ (GND)))
-- \inst6|Add4~37\ = CARRY((\inst6|BP\(18)) # (!\inst6|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(18),
	datad => VCC,
	cin => \inst6|Add4~35\,
	combout => \inst6|Add4~36_combout\,
	cout => \inst6|Add4~37\);

-- Location: FF_X9_Y26_N5
\inst6|BP[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~36_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(18));

-- Location: LCCOMB_X9_Y26_N6
\inst6|Add4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~38_combout\ = (\inst6|BP\(19) & (\inst6|Add4~37\ & VCC)) # (!\inst6|BP\(19) & (!\inst6|Add4~37\))
-- \inst6|Add4~39\ = CARRY((!\inst6|BP\(19) & !\inst6|Add4~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|BP\(19),
	datad => VCC,
	cin => \inst6|Add4~37\,
	combout => \inst6|Add4~38_combout\,
	cout => \inst6|Add4~39\);

-- Location: FF_X9_Y26_N7
\inst6|BP[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~38_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(19));

-- Location: LCCOMB_X9_Y26_N8
\inst6|Add4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~40_combout\ = (\inst6|BP\(20) & ((GND) # (!\inst6|Add4~39\))) # (!\inst6|BP\(20) & (\inst6|Add4~39\ $ (GND)))
-- \inst6|Add4~41\ = CARRY((\inst6|BP\(20)) # (!\inst6|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(20),
	datad => VCC,
	cin => \inst6|Add4~39\,
	combout => \inst6|Add4~40_combout\,
	cout => \inst6|Add4~41\);

-- Location: FF_X9_Y26_N9
\inst6|BP[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~40_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(20));

-- Location: LCCOMB_X9_Y26_N10
\inst6|Add4~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~42_combout\ = (\inst6|BP\(21) & (\inst6|Add4~41\ & VCC)) # (!\inst6|BP\(21) & (!\inst6|Add4~41\))
-- \inst6|Add4~43\ = CARRY((!\inst6|BP\(21) & !\inst6|Add4~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|BP\(21),
	datad => VCC,
	cin => \inst6|Add4~41\,
	combout => \inst6|Add4~42_combout\,
	cout => \inst6|Add4~43\);

-- Location: FF_X9_Y26_N11
\inst6|BP[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~42_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(21));

-- Location: LCCOMB_X9_Y26_N12
\inst6|Add4~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~44_combout\ = (\inst6|BP\(22) & ((GND) # (!\inst6|Add4~43\))) # (!\inst6|BP\(22) & (\inst6|Add4~43\ $ (GND)))
-- \inst6|Add4~45\ = CARRY((\inst6|BP\(22)) # (!\inst6|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|BP\(22),
	datad => VCC,
	cin => \inst6|Add4~43\,
	combout => \inst6|Add4~44_combout\,
	cout => \inst6|Add4~45\);

-- Location: FF_X9_Y26_N13
\inst6|BP[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~44_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(22));

-- Location: LCCOMB_X9_Y26_N14
\inst6|Add4~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~46_combout\ = (\inst6|BP\(23) & (\inst6|Add4~45\ & VCC)) # (!\inst6|BP\(23) & (!\inst6|Add4~45\))
-- \inst6|Add4~47\ = CARRY((!\inst6|BP\(23) & !\inst6|Add4~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(23),
	datad => VCC,
	cin => \inst6|Add4~45\,
	combout => \inst6|Add4~46_combout\,
	cout => \inst6|Add4~47\);

-- Location: FF_X9_Y26_N15
\inst6|BP[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~46_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(23));

-- Location: LCCOMB_X9_Y26_N16
\inst6|Add4~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~48_combout\ = (\inst6|BP\(24) & ((GND) # (!\inst6|Add4~47\))) # (!\inst6|BP\(24) & (\inst6|Add4~47\ $ (GND)))
-- \inst6|Add4~49\ = CARRY((\inst6|BP\(24)) # (!\inst6|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(24),
	datad => VCC,
	cin => \inst6|Add4~47\,
	combout => \inst6|Add4~48_combout\,
	cout => \inst6|Add4~49\);

-- Location: FF_X9_Y26_N17
\inst6|BP[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~48_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(24));

-- Location: LCCOMB_X9_Y26_N18
\inst6|Add4~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~50_combout\ = (\inst6|BP\(25) & (\inst6|Add4~49\ & VCC)) # (!\inst6|BP\(25) & (!\inst6|Add4~49\))
-- \inst6|Add4~51\ = CARRY((!\inst6|BP\(25) & !\inst6|Add4~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(25),
	datad => VCC,
	cin => \inst6|Add4~49\,
	combout => \inst6|Add4~50_combout\,
	cout => \inst6|Add4~51\);

-- Location: FF_X9_Y26_N19
\inst6|BP[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~50_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(25));

-- Location: LCCOMB_X9_Y26_N20
\inst6|Add4~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~52_combout\ = (\inst6|BP\(26) & ((GND) # (!\inst6|Add4~51\))) # (!\inst6|BP\(26) & (\inst6|Add4~51\ $ (GND)))
-- \inst6|Add4~53\ = CARRY((\inst6|BP\(26)) # (!\inst6|Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(26),
	datad => VCC,
	cin => \inst6|Add4~51\,
	combout => \inst6|Add4~52_combout\,
	cout => \inst6|Add4~53\);

-- Location: FF_X9_Y26_N21
\inst6|BP[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~52_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(26));

-- Location: LCCOMB_X9_Y26_N22
\inst6|Add4~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~54_combout\ = (\inst6|BP\(27) & (\inst6|Add4~53\ & VCC)) # (!\inst6|BP\(27) & (!\inst6|Add4~53\))
-- \inst6|Add4~55\ = CARRY((!\inst6|BP\(27) & !\inst6|Add4~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|BP\(27),
	datad => VCC,
	cin => \inst6|Add4~53\,
	combout => \inst6|Add4~54_combout\,
	cout => \inst6|Add4~55\);

-- Location: FF_X9_Y26_N23
\inst6|BP[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~54_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(27));

-- Location: LCCOMB_X9_Y26_N24
\inst6|Add4~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~56_combout\ = (\inst6|BP\(28) & ((GND) # (!\inst6|Add4~55\))) # (!\inst6|BP\(28) & (\inst6|Add4~55\ $ (GND)))
-- \inst6|Add4~57\ = CARRY((\inst6|BP\(28)) # (!\inst6|Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(28),
	datad => VCC,
	cin => \inst6|Add4~55\,
	combout => \inst6|Add4~56_combout\,
	cout => \inst6|Add4~57\);

-- Location: FF_X9_Y26_N25
\inst6|BP[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~56_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(28));

-- Location: LCCOMB_X9_Y26_N26
\inst6|Add4~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~58_combout\ = (\inst6|BP\(29) & (\inst6|Add4~57\ & VCC)) # (!\inst6|BP\(29) & (!\inst6|Add4~57\))
-- \inst6|Add4~59\ = CARRY((!\inst6|BP\(29) & !\inst6|Add4~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|BP\(29),
	datad => VCC,
	cin => \inst6|Add4~57\,
	combout => \inst6|Add4~58_combout\,
	cout => \inst6|Add4~59\);

-- Location: FF_X9_Y26_N31
\inst6|BP[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~62_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(31));

-- Location: LCCOMB_X9_Y26_N28
\inst6|Add4~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~60_combout\ = (\inst6|BP\(30) & ((GND) # (!\inst6|Add4~59\))) # (!\inst6|BP\(30) & (\inst6|Add4~59\ $ (GND)))
-- \inst6|Add4~61\ = CARRY((\inst6|BP\(30)) # (!\inst6|Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|BP\(30),
	datad => VCC,
	cin => \inst6|Add4~59\,
	combout => \inst6|Add4~60_combout\,
	cout => \inst6|Add4~61\);

-- Location: FF_X9_Y26_N29
\inst6|BP[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add4~60_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|BP\(30));

-- Location: LCCOMB_X9_Y26_N30
\inst6|Add4~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~62_combout\ = \inst6|BP\(31) $ (!\inst6|Add4~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|BP\(31),
	cin => \inst6|Add4~61\,
	combout => \inst6|Add4~62_combout\);

-- Location: LCCOMB_X10_Y26_N4
\inst6|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal8~0_combout\ = (!\inst6|Add4~42_combout\ & (!\inst6|Add4~44_combout\ & (!\inst6|Add4~40_combout\ & !\inst6|Add4~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add4~42_combout\,
	datab => \inst6|Add4~44_combout\,
	datac => \inst6|Add4~40_combout\,
	datad => \inst6|Add4~46_combout\,
	combout => \inst6|Equal8~0_combout\);

-- Location: LCCOMB_X10_Y26_N30
\inst6|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal8~1_combout\ = (!\inst6|Add4~0_combout\ & (!\inst6|Add4~4_combout\ & (!\inst6|Add4~6_combout\ & !\inst6|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add4~0_combout\,
	datab => \inst6|Add4~4_combout\,
	datac => \inst6|Add4~6_combout\,
	datad => \inst6|Add4~2_combout\,
	combout => \inst6|Equal8~1_combout\);

-- Location: LCCOMB_X10_Y26_N24
\inst6|Equal8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal8~2_combout\ = (!\inst6|Add4~8_combout\ & !\inst6|Add4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add4~8_combout\,
	datad => \inst6|Add4~10_combout\,
	combout => \inst6|Equal8~2_combout\);

-- Location: LCCOMB_X10_Y26_N22
\inst6|Equal8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal8~3_combout\ = (!\inst6|Add4~14_combout\ & (!\inst6|Add4~12_combout\ & (\inst6|Equal8~1_combout\ & \inst6|Equal8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add4~14_combout\,
	datab => \inst6|Add4~12_combout\,
	datac => \inst6|Equal8~1_combout\,
	datad => \inst6|Equal8~2_combout\,
	combout => \inst6|Equal8~3_combout\);

-- Location: LCCOMB_X10_Y26_N8
\inst6|Equal8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal8~4_combout\ = (!\inst6|Add4~16_combout\ & (!\inst6|Add4~22_combout\ & (!\inst6|Add4~18_combout\ & !\inst6|Add4~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add4~16_combout\,
	datab => \inst6|Add4~22_combout\,
	datac => \inst6|Add4~18_combout\,
	datad => \inst6|Add4~20_combout\,
	combout => \inst6|Equal8~4_combout\);

-- Location: LCCOMB_X10_Y26_N14
\inst6|Equal8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal8~5_combout\ = (!\inst6|Add4~28_combout\ & (!\inst6|Add4~24_combout\ & (!\inst6|Add4~30_combout\ & !\inst6|Add4~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add4~28_combout\,
	datab => \inst6|Add4~24_combout\,
	datac => \inst6|Add4~30_combout\,
	datad => \inst6|Add4~26_combout\,
	combout => \inst6|Equal8~5_combout\);

-- Location: LCCOMB_X10_Y26_N28
\inst6|Equal8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal8~6_combout\ = (!\inst6|Add4~34_combout\ & (!\inst6|Add4~36_combout\ & (!\inst6|Add4~32_combout\ & !\inst6|Add4~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add4~34_combout\,
	datab => \inst6|Add4~36_combout\,
	datac => \inst6|Add4~32_combout\,
	datad => \inst6|Add4~38_combout\,
	combout => \inst6|Equal8~6_combout\);

-- Location: LCCOMB_X10_Y26_N2
\inst6|Equal8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal8~7_combout\ = (\inst6|Equal8~3_combout\ & (\inst6|Equal8~4_combout\ & (\inst6|Equal8~5_combout\ & \inst6|Equal8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal8~3_combout\,
	datab => \inst6|Equal8~4_combout\,
	datac => \inst6|Equal8~5_combout\,
	datad => \inst6|Equal8~6_combout\,
	combout => \inst6|Equal8~7_combout\);

-- Location: LCCOMB_X10_Y26_N16
\inst6|Equal8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal8~8_combout\ = (!\inst6|Add4~48_combout\ & (!\inst6|Add4~50_combout\ & (\inst6|Equal8~0_combout\ & \inst6|Equal8~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add4~48_combout\,
	datab => \inst6|Add4~50_combout\,
	datac => \inst6|Equal8~0_combout\,
	datad => \inst6|Equal8~7_combout\,
	combout => \inst6|Equal8~8_combout\);

-- Location: LCCOMB_X10_Y26_N6
\inst6|Equal8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal8~9_combout\ = (!\inst6|Add4~52_combout\ & (!\inst6|Add4~54_combout\ & (!\inst6|Add4~56_combout\ & \inst6|Equal8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add4~52_combout\,
	datab => \inst6|Add4~54_combout\,
	datac => \inst6|Add4~56_combout\,
	datad => \inst6|Equal8~8_combout\,
	combout => \inst6|Equal8~9_combout\);

-- Location: LCCOMB_X10_Y26_N20
\inst6|Equal8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal8~10_combout\ = (!\inst6|Add4~58_combout\ & (!\inst6|Add4~62_combout\ & (!\inst6|Add4~60_combout\ & \inst6|Equal8~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add4~58_combout\,
	datab => \inst6|Add4~62_combout\,
	datac => \inst6|Add4~60_combout\,
	datad => \inst6|Equal8~9_combout\,
	combout => \inst6|Equal8~10_combout\);

-- Location: LCCOMB_X11_Y26_N2
\inst6|DTS[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|DTS[10]~2_combout\ = (\inst6|rtc~q\ & (!\inst6|wt~q\ & (\inst6|StartTx~q\ & \inst6|Equal8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|rtc~q\,
	datab => \inst6|wt~q\,
	datac => \inst6|StartTx~q\,
	datad => \inst6|Equal8~10_combout\,
	combout => \inst6|DTS[10]~2_combout\);

-- Location: FF_X11_Y26_N13
\inst6|DTS[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst5|dataOut\(12),
	sload => VCC,
	ena => \inst6|DTS[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DTS\(12));

-- Location: LCCOMB_X11_Y26_N12
\inst6|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux0~7_combout\ = (!\inst6|Add4~2_combout\ & (\inst6|DTS\(12) & !\inst6|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add4~2_combout\,
	datac => \inst6|DTS\(12),
	datad => \inst6|Add4~0_combout\,
	combout => \inst6|Mux0~7_combout\);

-- Location: FF_X21_Y26_N21
\inst16|datArray_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(19));

-- Location: LCCOMB_X21_Y26_N16
\inst5|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector25~0_combout\ = (\inst16|datArray~23_combout\ & ((\inst16|datArray_rtl_0_bypass\(19)))) # (!\inst16|datArray~23_combout\ & (\inst16|datArray_rtl_0|auto_generated|ram_block1a10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|datArray_rtl_0|auto_generated|ram_block1a10\,
	datab => \inst16|datArray_rtl_0_bypass\(19),
	datac => \inst16|datArray~23_combout\,
	combout => \inst5|Selector25~0_combout\);

-- Location: FF_X21_Y26_N17
\inst5|dataOut[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Selector25~0_combout\,
	sclr => \inst5|ALT_INV_state.SEARCH~q\,
	ena => \inst5|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataOut\(11));

-- Location: FF_X11_Y26_N23
\inst6|DTS[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst5|dataOut\(11),
	sload => VCC,
	ena => \inst6|DTS[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DTS\(11));

-- Location: FF_X21_Y26_N31
\inst16|datArray_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(18));

-- Location: LCCOMB_X21_Y26_N18
\inst5|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector27~0_combout\ = (\inst16|datArray~23_combout\ & ((\inst16|datArray_rtl_0_bypass\(18)))) # (!\inst16|datArray~23_combout\ & (\inst16|datArray_rtl_0|auto_generated|ram_block1a9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|datArray_rtl_0|auto_generated|ram_block1a9\,
	datab => \inst16|datArray~23_combout\,
	datac => \inst16|datArray_rtl_0_bypass\(18),
	combout => \inst5|Selector27~0_combout\);

-- Location: FF_X21_Y26_N19
\inst5|dataOut[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Selector27~0_combout\,
	sclr => \inst5|ALT_INV_state.SEARCH~q\,
	ena => \inst5|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataOut\(9));

-- Location: LCCOMB_X11_Y26_N28
\inst6|DTS[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|DTS[9]~feeder_combout\ = \inst5|dataOut\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|dataOut\(9),
	combout => \inst6|DTS[9]~feeder_combout\);

-- Location: FF_X11_Y26_N29
\inst6|DTS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|DTS[9]~feeder_combout\,
	ena => \inst6|DTS[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DTS\(9));

-- Location: LCCOMB_X23_Y26_N18
\inst16|datArray_rtl_0_bypass[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|datArray_rtl_0_bypass[17]~0_combout\ = !\inst16|FS\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|FS\(0),
	combout => \inst16|datArray_rtl_0_bypass[17]~0_combout\);

-- Location: FF_X23_Y26_N19
\inst16|datArray_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|datArray_rtl_0_bypass[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(17));

-- Location: LCCOMB_X19_Y26_N16
\inst5|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector28~0_combout\ = (\inst16|datArray~23_combout\ & (\inst16|datArray_rtl_0_bypass\(17))) # (!\inst16|datArray~23_combout\ & ((\inst16|datArray_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|datArray_rtl_0_bypass\(17),
	datac => \inst16|datArray_rtl_0|auto_generated|ram_block1a8\,
	datad => \inst16|datArray~23_combout\,
	combout => \inst5|Selector28~0_combout\);

-- Location: FF_X19_Y26_N17
\inst5|dataOut[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Selector28~0_combout\,
	sclr => \inst5|ALT_INV_state.SEARCH~q\,
	ena => \inst5|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataOut\(8));

-- Location: FF_X11_Y26_N7
\inst6|DTS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst5|dataOut\(8),
	sload => VCC,
	ena => \inst6|DTS[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DTS\(8));

-- Location: LCCOMB_X11_Y26_N6
\inst6|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux0~0_combout\ = (\inst6|Add4~0_combout\ & (\inst6|DTS\(9))) # (!\inst6|Add4~0_combout\ & ((\inst6|DTS\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|DTS\(9),
	datac => \inst6|DTS\(8),
	datad => \inst6|Add4~0_combout\,
	combout => \inst6|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y26_N22
\inst6|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux0~1_combout\ = (\inst6|Add4~2_combout\ & (\inst6|Add4~0_combout\ & (\inst6|DTS\(11)))) # (!\inst6|Add4~2_combout\ & (((\inst6|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add4~2_combout\,
	datab => \inst6|Add4~0_combout\,
	datac => \inst6|DTS\(11),
	datad => \inst6|Mux0~0_combout\,
	combout => \inst6|Mux0~1_combout\);

-- Location: LCCOMB_X21_Y26_N8
\inst16|datArray_rtl_0_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|datArray_rtl_0_bypass[11]~feeder_combout\ = \inst4|rx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|rx_data\(2),
	combout => \inst16|datArray_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X21_Y26_N9
\inst16|datArray_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|datArray_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(11));

-- Location: LCCOMB_X21_Y26_N10
\inst5|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector34~0_combout\ = (\inst16|datArray~23_combout\ & (\inst16|datArray_rtl_0_bypass\(11))) # (!\inst16|datArray~23_combout\ & ((\inst16|datArray_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|datArray~23_combout\,
	datac => \inst16|datArray_rtl_0_bypass\(11),
	datad => \inst16|datArray_rtl_0|auto_generated|ram_block1a2\,
	combout => \inst5|Selector34~0_combout\);

-- Location: FF_X21_Y26_N11
\inst5|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Selector34~0_combout\,
	sclr => \inst5|ALT_INV_state.SEARCH~q\,
	ena => \inst5|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataOut\(2));

-- Location: LCCOMB_X11_Y26_N24
\inst6|DTS[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|DTS[2]~feeder_combout\ = \inst5|dataOut\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|dataOut\(2),
	combout => \inst6|DTS[2]~feeder_combout\);

-- Location: FF_X11_Y26_N25
\inst6|DTS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|DTS[2]~feeder_combout\,
	ena => \inst6|DTS[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DTS\(2));

-- Location: LCCOMB_X23_Y26_N12
\inst16|datArray_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|datArray_rtl_0_bypass[12]~feeder_combout\ = \inst4|rx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|rx_data\(3),
	combout => \inst16|datArray_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X23_Y26_N13
\inst16|datArray_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|datArray_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(12));

-- Location: LCCOMB_X19_Y26_N18
\inst5|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector33~0_combout\ = (\inst16|datArray~23_combout\ & (\inst16|datArray_rtl_0_bypass\(12))) # (!\inst16|datArray~23_combout\ & ((\inst16|datArray_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|datArray_rtl_0_bypass\(12),
	datac => \inst16|datArray_rtl_0|auto_generated|ram_block1a3\,
	datad => \inst16|datArray~23_combout\,
	combout => \inst5|Selector33~0_combout\);

-- Location: FF_X19_Y26_N19
\inst5|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Selector33~0_combout\,
	sclr => \inst5|ALT_INV_state.SEARCH~q\,
	ena => \inst5|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataOut\(3));

-- Location: FF_X11_Y26_N11
\inst6|DTS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst5|dataOut\(3),
	sload => VCC,
	ena => \inst6|DTS[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DTS\(3));

-- Location: FF_X23_Y26_N15
\inst16|datArray_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst4|rx_data\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(10));

-- Location: LCCOMB_X19_Y26_N20
\inst5|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector35~0_combout\ = (\inst16|datArray~23_combout\ & (\inst16|datArray_rtl_0_bypass\(10))) # (!\inst16|datArray~23_combout\ & ((\inst16|datArray_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|datArray_rtl_0_bypass\(10),
	datac => \inst16|datArray_rtl_0|auto_generated|ram_block1a1\,
	datad => \inst16|datArray~23_combout\,
	combout => \inst5|Selector35~0_combout\);

-- Location: FF_X19_Y26_N21
\inst5|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Selector35~0_combout\,
	sclr => \inst5|ALT_INV_state.SEARCH~q\,
	ena => \inst5|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataOut\(1));

-- Location: LCCOMB_X11_Y26_N14
\inst6|DTS[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|DTS[1]~feeder_combout\ = \inst5|dataOut\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|dataOut\(1),
	combout => \inst6|DTS[1]~feeder_combout\);

-- Location: FF_X11_Y26_N15
\inst6|DTS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|DTS[1]~feeder_combout\,
	ena => \inst6|DTS[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DTS\(1));

-- Location: LCCOMB_X21_Y26_N26
\inst16|datArray_rtl_0_bypass[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|datArray_rtl_0_bypass[9]~feeder_combout\ = \inst4|rx_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|rx_data\(0),
	combout => \inst16|datArray_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X21_Y26_N27
\inst16|datArray_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|datArray_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(9));

-- Location: LCCOMB_X21_Y26_N24
\inst5|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector36~0_combout\ = (\inst16|datArray~23_combout\ & (\inst16|datArray_rtl_0_bypass\(9))) # (!\inst16|datArray~23_combout\ & ((\inst16|datArray_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|datArray~23_combout\,
	datac => \inst16|datArray_rtl_0_bypass\(9),
	datad => \inst16|datArray_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \inst5|Selector36~0_combout\);

-- Location: FF_X21_Y26_N25
\inst5|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Selector36~0_combout\,
	sclr => \inst5|ALT_INV_state.SEARCH~q\,
	ena => \inst5|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataOut\(0));

-- Location: FF_X11_Y26_N1
\inst6|DTS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst5|dataOut\(0),
	sload => VCC,
	ena => \inst6|DTS[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DTS\(0));

-- Location: LCCOMB_X11_Y26_N0
\inst6|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux0~4_combout\ = (\inst6|Add4~2_combout\ & (((\inst6|Add4~0_combout\)))) # (!\inst6|Add4~2_combout\ & ((\inst6|Add4~0_combout\ & (\inst6|DTS\(1))) # (!\inst6|Add4~0_combout\ & ((\inst6|DTS\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add4~2_combout\,
	datab => \inst6|DTS\(1),
	datac => \inst6|DTS\(0),
	datad => \inst6|Add4~0_combout\,
	combout => \inst6|Mux0~4_combout\);

-- Location: LCCOMB_X11_Y26_N10
\inst6|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux0~5_combout\ = (\inst6|Add4~2_combout\ & ((\inst6|Mux0~4_combout\ & ((\inst6|DTS\(3)))) # (!\inst6|Mux0~4_combout\ & (\inst6|DTS\(2))))) # (!\inst6|Add4~2_combout\ & (((\inst6|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add4~2_combout\,
	datab => \inst6|DTS\(2),
	datac => \inst6|DTS\(3),
	datad => \inst6|Mux0~4_combout\,
	combout => \inst6|Mux0~5_combout\);

-- Location: LCCOMB_X21_Y26_N28
\inst16|datArray_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|datArray_rtl_0_bypass[14]~feeder_combout\ = \inst4|rx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|rx_data\(5),
	combout => \inst16|datArray_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X21_Y26_N29
\inst16|datArray_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|datArray_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(14));

-- Location: LCCOMB_X21_Y26_N12
\inst5|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector31~0_combout\ = (\inst16|datArray~23_combout\ & ((\inst16|datArray_rtl_0_bypass\(14)))) # (!\inst16|datArray~23_combout\ & (\inst16|datArray_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|datArray~23_combout\,
	datac => \inst16|datArray_rtl_0|auto_generated|ram_block1a5\,
	datad => \inst16|datArray_rtl_0_bypass\(14),
	combout => \inst5|Selector31~0_combout\);

-- Location: FF_X21_Y26_N13
\inst5|dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Selector31~0_combout\,
	sclr => \inst5|ALT_INV_state.SEARCH~q\,
	ena => \inst5|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataOut\(5));

-- Location: LCCOMB_X11_Y26_N20
\inst6|DTS[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|DTS[5]~feeder_combout\ = \inst5|dataOut\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|dataOut\(5),
	combout => \inst6|DTS[5]~feeder_combout\);

-- Location: FF_X11_Y26_N21
\inst6|DTS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|DTS[5]~feeder_combout\,
	ena => \inst6|DTS[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DTS\(5));

-- Location: LCCOMB_X21_Y25_N0
\inst16|datArray_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|datArray_rtl_0_bypass[16]~feeder_combout\ = \inst4|rx_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|rx_data\(7),
	combout => \inst16|datArray_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X21_Y25_N1
\inst16|datArray_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|datArray_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(16));

-- Location: LCCOMB_X21_Y26_N0
\inst5|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector29~0_combout\ = (\inst16|datArray~23_combout\ & (\inst16|datArray_rtl_0_bypass\(16))) # (!\inst16|datArray~23_combout\ & ((\inst16|datArray_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|datArray_rtl_0_bypass\(16),
	datab => \inst16|datArray~23_combout\,
	datad => \inst16|datArray_rtl_0|auto_generated|ram_block1a7\,
	combout => \inst5|Selector29~0_combout\);

-- Location: FF_X21_Y26_N1
\inst5|dataOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Selector29~0_combout\,
	sclr => \inst5|ALT_INV_state.SEARCH~q\,
	ena => \inst5|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataOut\(7));

-- Location: FF_X11_Y26_N27
\inst6|DTS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst5|dataOut\(7),
	sload => VCC,
	ena => \inst6|DTS[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DTS\(7));

-- Location: LCCOMB_X21_Y26_N14
\inst16|datArray_rtl_0_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|datArray_rtl_0_bypass[13]~feeder_combout\ = \inst4|rx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|rx_data\(4),
	combout => \inst16|datArray_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X21_Y26_N15
\inst16|datArray_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|datArray_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(13));

-- Location: LCCOMB_X21_Y26_N6
\inst5|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector32~0_combout\ = (\inst16|datArray~23_combout\ & ((\inst16|datArray_rtl_0_bypass\(13)))) # (!\inst16|datArray~23_combout\ & (\inst16|datArray_rtl_0|auto_generated|ram_block1a4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|datArray_rtl_0|auto_generated|ram_block1a4\,
	datab => \inst16|datArray~23_combout\,
	datac => \inst16|datArray_rtl_0_bypass\(13),
	combout => \inst5|Selector32~0_combout\);

-- Location: FF_X21_Y26_N7
\inst5|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Selector32~0_combout\,
	sclr => \inst5|ALT_INV_state.SEARCH~q\,
	ena => \inst5|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataOut\(4));

-- Location: FF_X11_Y26_N17
\inst6|DTS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst5|dataOut\(4),
	sload => VCC,
	ena => \inst6|DTS[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DTS\(4));

-- Location: LCCOMB_X23_Y26_N20
\inst16|datArray_rtl_0_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|datArray_rtl_0_bypass[15]~feeder_combout\ = \inst4|rx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|rx_data\(6),
	combout => \inst16|datArray_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X23_Y26_N21
\inst16|datArray_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst16|datArray_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|datArray_rtl_0_bypass\(15));

-- Location: LCCOMB_X19_Y26_N4
\inst5|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector30~0_combout\ = (\inst16|datArray~23_combout\ & (\inst16|datArray_rtl_0_bypass\(15))) # (!\inst16|datArray~23_combout\ & ((\inst16|datArray_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|datArray~23_combout\,
	datac => \inst16|datArray_rtl_0_bypass\(15),
	datad => \inst16|datArray_rtl_0|auto_generated|ram_block1a6\,
	combout => \inst5|Selector30~0_combout\);

-- Location: FF_X19_Y26_N5
\inst5|dataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Selector30~0_combout\,
	sclr => \inst5|ALT_INV_state.SEARCH~q\,
	ena => \inst5|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataOut\(6));

-- Location: LCCOMB_X11_Y26_N18
\inst6|DTS[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|DTS[6]~feeder_combout\ = \inst5|dataOut\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|dataOut\(6),
	combout => \inst6|DTS[6]~feeder_combout\);

-- Location: FF_X11_Y26_N19
\inst6|DTS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|DTS[6]~feeder_combout\,
	ena => \inst6|DTS[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DTS\(6));

-- Location: LCCOMB_X11_Y26_N16
\inst6|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux0~2_combout\ = (\inst6|Add4~2_combout\ & ((\inst6|Add4~0_combout\) # ((\inst6|DTS\(6))))) # (!\inst6|Add4~2_combout\ & (!\inst6|Add4~0_combout\ & (\inst6|DTS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add4~2_combout\,
	datab => \inst6|Add4~0_combout\,
	datac => \inst6|DTS\(4),
	datad => \inst6|DTS\(6),
	combout => \inst6|Mux0~2_combout\);

-- Location: LCCOMB_X11_Y26_N26
\inst6|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux0~3_combout\ = (\inst6|Add4~0_combout\ & ((\inst6|Mux0~2_combout\ & ((\inst6|DTS\(7)))) # (!\inst6|Mux0~2_combout\ & (\inst6|DTS\(5))))) # (!\inst6|Add4~0_combout\ & (((\inst6|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|DTS\(5),
	datab => \inst6|Add4~0_combout\,
	datac => \inst6|DTS\(7),
	datad => \inst6|Mux0~2_combout\,
	combout => \inst6|Mux0~3_combout\);

-- Location: LCCOMB_X10_Y26_N12
\inst6|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux0~6_combout\ = (\inst6|Add4~6_combout\ & (\inst6|Add4~4_combout\)) # (!\inst6|Add4~6_combout\ & ((\inst6|Add4~4_combout\ & ((\inst6|Mux0~3_combout\))) # (!\inst6|Add4~4_combout\ & (\inst6|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add4~6_combout\,
	datab => \inst6|Add4~4_combout\,
	datac => \inst6|Mux0~5_combout\,
	datad => \inst6|Mux0~3_combout\,
	combout => \inst6|Mux0~6_combout\);

-- Location: LCCOMB_X11_Y26_N8
\inst6|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux0~8_combout\ = (\inst6|Add4~6_combout\ & ((\inst6|Mux0~6_combout\ & (\inst6|Mux0~7_combout\)) # (!\inst6|Mux0~6_combout\ & ((\inst6|Mux0~1_combout\))))) # (!\inst6|Add4~6_combout\ & (((\inst6|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux0~7_combout\,
	datab => \inst6|Add4~6_combout\,
	datac => \inst6|Mux0~1_combout\,
	datad => \inst6|Mux0~6_combout\,
	combout => \inst6|Mux0~8_combout\);

-- Location: FF_X11_Y26_N9
\inst6|MOSI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst6|Mux0~8_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|MOSI~q\);

-- Location: LCCOMB_X28_Y18_N28
\inst4|CLKO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|CLKO~0_combout\ = (\inst20|CLK_OUT~q\) # (!\inst4|rtc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|rtc~q\,
	datad => \inst20|CLK_OUT~q\,
	combout => \inst4|CLKO~0_combout\);

-- Location: FF_X29_Y22_N7
\inst4|BP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~6_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(3));

-- Location: LCCOMB_X29_Y22_N0
\inst4|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~0_combout\ = \inst4|BP\(0) $ (VCC)
-- \inst4|Add4~1\ = CARRY(\inst4|BP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(0),
	datad => VCC,
	combout => \inst4|Add4~0_combout\,
	cout => \inst4|Add4~1\);

-- Location: FF_X29_Y22_N1
\inst4|BP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~0_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(0));

-- Location: LCCOMB_X29_Y22_N2
\inst4|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~2_combout\ = (\inst4|BP\(1) & (\inst4|Add4~1\ & VCC)) # (!\inst4|BP\(1) & (!\inst4|Add4~1\))
-- \inst4|Add4~3\ = CARRY((!\inst4|BP\(1) & !\inst4|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(1),
	datad => VCC,
	cin => \inst4|Add4~1\,
	combout => \inst4|Add4~2_combout\,
	cout => \inst4|Add4~3\);

-- Location: FF_X29_Y22_N3
\inst4|BP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~2_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(1));

-- Location: LCCOMB_X29_Y22_N4
\inst4|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~4_combout\ = (\inst4|BP\(2) & ((GND) # (!\inst4|Add4~3\))) # (!\inst4|BP\(2) & (\inst4|Add4~3\ $ (GND)))
-- \inst4|Add4~5\ = CARRY((\inst4|BP\(2)) # (!\inst4|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(2),
	datad => VCC,
	cin => \inst4|Add4~3\,
	combout => \inst4|Add4~4_combout\,
	cout => \inst4|Add4~5\);

-- Location: FF_X29_Y22_N5
\inst4|BP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~4_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(2));

-- Location: LCCOMB_X29_Y22_N6
\inst4|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~6_combout\ = (\inst4|BP\(3) & (\inst4|Add4~5\ & VCC)) # (!\inst4|BP\(3) & (!\inst4|Add4~5\))
-- \inst4|Add4~7\ = CARRY((!\inst4|BP\(3) & !\inst4|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|BP\(3),
	datad => VCC,
	cin => \inst4|Add4~5\,
	combout => \inst4|Add4~6_combout\,
	cout => \inst4|Add4~7\);

-- Location: FF_X26_Y20_N17
\inst2|addNo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(3));

-- Location: LCCOMB_X26_Y20_N0
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|addNo\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|addNo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X27_Y20_N30
\inst2|addNo~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~30_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~0_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(0),
	datac => \inst2|Add0~0_combout\,
	datad => \inst|state.NXTADDR~q\,
	combout => \inst2|addNo~30_combout\);

-- Location: FF_X26_Y20_N31
\inst2|addNo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(0));

-- Location: LCCOMB_X26_Y20_N2
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|addNo\(1) & (!\inst2|Add0~1\)) # (!\inst2|addNo\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|addNo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X27_Y20_N8
\inst2|addNo~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~29_combout\ = (\inst|state.NXTADDR~q\ & (\inst2|Add0~2_combout\)) # (!\inst|state.NXTADDR~q\ & ((\inst2|addNo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datab => \inst2|addNo\(1),
	datad => \inst|state.NXTADDR~q\,
	combout => \inst2|addNo~29_combout\);

-- Location: FF_X26_Y20_N25
\inst2|addNo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(1));

-- Location: LCCOMB_X26_Y20_N4
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|addNo\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|addNo\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|addNo\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X26_Y20_N6
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|addNo\(3) & (!\inst2|Add0~5\)) # (!\inst2|addNo\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|addNo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X26_Y20_N8
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|addNo\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|addNo\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|addNo\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X25_Y19_N30
\inst2|addNo~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~23_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~8_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(4),
	datab => \inst|state.NXTADDR~q\,
	datad => \inst2|Add0~8_combout\,
	combout => \inst2|addNo~23_combout\);

-- Location: FF_X26_Y20_N9
\inst2|addNo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(4));

-- Location: LCCOMB_X26_Y20_N10
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|addNo\(5) & (!\inst2|Add0~9\)) # (!\inst2|addNo\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|addNo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X25_Y19_N0
\inst2|addNo~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~24_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~10_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.NXTADDR~q\,
	datac => \inst2|addNo\(5),
	datad => \inst2|Add0~10_combout\,
	combout => \inst2|addNo~24_combout\);

-- Location: FF_X25_Y19_N1
\inst2|addNo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|addNo~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(5));

-- Location: LCCOMB_X26_Y20_N12
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|addNo\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|addNo\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|addNo\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X25_Y19_N16
\inst2|addNo~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~22_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~12_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(6),
	datac => \inst|state.NXTADDR~q\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|addNo~22_combout\);

-- Location: FF_X26_Y20_N19
\inst2|addNo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(6));

-- Location: LCCOMB_X26_Y20_N14
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|addNo\(7) & (!\inst2|Add0~13\)) # (!\inst2|addNo\(7) & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|addNo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X25_Y19_N12
\inst2|addNo~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~25_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~14_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(7),
	datab => \inst|state.NXTADDR~q\,
	datad => \inst2|Add0~14_combout\,
	combout => \inst2|addNo~25_combout\);

-- Location: FF_X26_Y20_N15
\inst2|addNo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(7));

-- Location: LCCOMB_X26_Y20_N16
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|addNo\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|addNo\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|addNo\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X25_Y20_N18
\inst2|addNo~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~13_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~16_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(8),
	datac => \inst|state.NXTADDR~q\,
	datad => \inst2|Add0~16_combout\,
	combout => \inst2|addNo~13_combout\);

-- Location: FF_X26_Y20_N5
\inst2|addNo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(8));

-- Location: LCCOMB_X26_Y20_N18
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|addNo\(9) & (!\inst2|Add0~17\)) # (!\inst2|addNo\(9) & ((\inst2|Add0~17\) # (GND)))
-- \inst2|Add0~19\ = CARRY((!\inst2|Add0~17\) # (!\inst2|addNo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(9),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: LCCOMB_X25_Y20_N12
\inst2|addNo~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~12_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~18_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(9),
	datac => \inst|state.NXTADDR~q\,
	datad => \inst2|Add0~18_combout\,
	combout => \inst2|addNo~12_combout\);

-- Location: FF_X26_Y20_N23
\inst2|addNo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(9));

-- Location: LCCOMB_X26_Y20_N20
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|addNo\(10) & (\inst2|Add0~19\ $ (GND))) # (!\inst2|addNo\(10) & (!\inst2|Add0~19\ & VCC))
-- \inst2|Add0~21\ = CARRY((\inst2|addNo\(10) & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: LCCOMB_X25_Y20_N22
\inst2|addNo~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~11_combout\ = (\inst|state.NXTADDR~q\ & (\inst2|Add0~20_combout\)) # (!\inst|state.NXTADDR~q\ & ((\inst2|addNo\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.NXTADDR~q\,
	datac => \inst2|Add0~20_combout\,
	datad => \inst2|addNo\(10),
	combout => \inst2|addNo~11_combout\);

-- Location: FF_X26_Y20_N7
\inst2|addNo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(10));

-- Location: LCCOMB_X26_Y20_N22
\inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|addNo\(11) & (!\inst2|Add0~21\)) # (!\inst2|addNo\(11) & ((\inst2|Add0~21\) # (GND)))
-- \inst2|Add0~23\ = CARRY((!\inst2|Add0~21\) # (!\inst2|addNo\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(11),
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: LCCOMB_X25_Y20_N16
\inst2|addNo~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~10_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~22_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(11),
	datac => \inst|state.NXTADDR~q\,
	datad => \inst2|Add0~22_combout\,
	combout => \inst2|addNo~10_combout\);

-- Location: FF_X26_Y20_N29
\inst2|addNo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(11));

-- Location: LCCOMB_X26_Y20_N24
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|addNo\(12) & (\inst2|Add0~23\ $ (GND))) # (!\inst2|addNo\(12) & (!\inst2|Add0~23\ & VCC))
-- \inst2|Add0~25\ = CARRY((\inst2|addNo\(12) & !\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(12),
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCCOMB_X25_Y20_N14
\inst2|addNo~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~9_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~24_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(12),
	datac => \inst|state.NXTADDR~q\,
	datad => \inst2|Add0~24_combout\,
	combout => \inst2|addNo~9_combout\);

-- Location: FF_X26_Y20_N21
\inst2|addNo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(12));

-- Location: LCCOMB_X26_Y20_N26
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|addNo\(13) & (!\inst2|Add0~25\)) # (!\inst2|addNo\(13) & ((\inst2|Add0~25\) # (GND)))
-- \inst2|Add0~27\ = CARRY((!\inst2|Add0~25\) # (!\inst2|addNo\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(13),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X25_Y20_N20
\inst2|addNo~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~8_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~26_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(13),
	datac => \inst|state.NXTADDR~q\,
	datad => \inst2|Add0~26_combout\,
	combout => \inst2|addNo~8_combout\);

-- Location: FF_X26_Y20_N27
\inst2|addNo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(13));

-- Location: LCCOMB_X26_Y20_N28
\inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|addNo\(14) & (\inst2|Add0~27\ $ (GND))) # (!\inst2|addNo\(14) & (!\inst2|Add0~27\ & VCC))
-- \inst2|Add0~29\ = CARRY((\inst2|addNo\(14) & !\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(14),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: LCCOMB_X25_Y20_N6
\inst2|addNo~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~7_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~28_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(14),
	datac => \inst|state.NXTADDR~q\,
	datad => \inst2|Add0~28_combout\,
	combout => \inst2|addNo~7_combout\);

-- Location: FF_X26_Y20_N13
\inst2|addNo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(14));

-- Location: LCCOMB_X26_Y20_N30
\inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|addNo\(15) & (!\inst2|Add0~29\)) # (!\inst2|addNo\(15) & ((\inst2|Add0~29\) # (GND)))
-- \inst2|Add0~31\ = CARRY((!\inst2|Add0~29\) # (!\inst2|addNo\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(15),
	datad => VCC,
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: LCCOMB_X25_Y19_N6
\inst2|addNo~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~6_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~30_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(15),
	datab => \inst|state.NXTADDR~q\,
	datac => \inst2|Add0~30_combout\,
	combout => \inst2|addNo~6_combout\);

-- Location: FF_X26_Y20_N1
\inst2|addNo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(15));

-- Location: LCCOMB_X25_Y20_N10
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (!\inst2|addNo\(13) & (!\inst2|addNo\(15) & (!\inst2|addNo\(14) & !\inst2|addNo\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(13),
	datab => \inst2|addNo\(15),
	datac => \inst2|addNo\(14),
	datad => \inst2|addNo\(12),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y20_N8
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (!\inst2|addNo\(9) & (!\inst2|addNo\(11) & (!\inst2|addNo\(8) & !\inst2|addNo\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(9),
	datab => \inst2|addNo\(11),
	datac => \inst2|addNo\(8),
	datad => \inst2|addNo\(10),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y20_N30
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst2|addNo\(7) & (!\inst2|addNo\(5) & (!\inst2|addNo\(0) & !\inst2|addNo\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(7),
	datab => \inst2|addNo\(5),
	datac => \inst2|addNo\(0),
	datad => \inst2|addNo\(6),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y20_N28
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|addNo\(1) & (\inst2|addNo\(2) & (\inst2|addNo\(3) & !\inst2|addNo\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(1),
	datab => \inst2|addNo\(2),
	datac => \inst2|addNo\(3),
	datad => \inst2|addNo\(4),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y20_N4
\inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~3_combout\ & (\inst2|Equal0~2_combout\ & (\inst2|Equal0~1_combout\ & \inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~3_combout\,
	datab => \inst2|Equal0~2_combout\,
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y19_N0
\inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|addNo\(16) & (\inst2|Add0~31\ $ (GND))) # (!\inst2|addNo\(16) & (!\inst2|Add0~31\ & VCC))
-- \inst2|Add0~33\ = CARRY((\inst2|addNo\(16) & !\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(16),
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: LCCOMB_X24_Y19_N22
\inst2|addNo~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~5_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~32_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.NXTADDR~q\,
	datac => \inst2|addNo\(16),
	datad => \inst2|Add0~32_combout\,
	combout => \inst2|addNo~5_combout\);

-- Location: FF_X24_Y19_N23
\inst2|addNo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|addNo~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(16));

-- Location: LCCOMB_X26_Y19_N2
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|addNo\(17) & (!\inst2|Add0~33\)) # (!\inst2|addNo\(17) & ((\inst2|Add0~33\) # (GND)))
-- \inst2|Add0~35\ = CARRY((!\inst2|Add0~33\) # (!\inst2|addNo\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(17),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: LCCOMB_X27_Y19_N4
\inst2|addNo~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~14_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~34_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.NXTADDR~q\,
	datac => \inst2|addNo\(17),
	datad => \inst2|Add0~34_combout\,
	combout => \inst2|addNo~14_combout\);

-- Location: FF_X27_Y19_N5
\inst2|addNo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|addNo~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(17));

-- Location: LCCOMB_X26_Y19_N4
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = (\inst2|addNo\(18) & (\inst2|Add0~35\ $ (GND))) # (!\inst2|addNo\(18) & (!\inst2|Add0~35\ & VCC))
-- \inst2|Add0~37\ = CARRY((\inst2|addNo\(18) & !\inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(18),
	datad => VCC,
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: LCCOMB_X24_Y19_N30
\inst2|addNo~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~4_combout\ = (\inst|state.NXTADDR~q\ & (\inst2|Add0~36_combout\)) # (!\inst|state.NXTADDR~q\ & ((\inst2|addNo\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.NXTADDR~q\,
	datac => \inst2|Add0~36_combout\,
	datad => \inst2|addNo\(18),
	combout => \inst2|addNo~4_combout\);

-- Location: FF_X24_Y19_N21
\inst2|addNo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(18));

-- Location: LCCOMB_X26_Y19_N6
\inst2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_combout\ = (\inst2|addNo\(19) & (!\inst2|Add0~37\)) # (!\inst2|addNo\(19) & ((\inst2|Add0~37\) # (GND)))
-- \inst2|Add0~39\ = CARRY((!\inst2|Add0~37\) # (!\inst2|addNo\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(19),
	datad => VCC,
	cin => \inst2|Add0~37\,
	combout => \inst2|Add0~38_combout\,
	cout => \inst2|Add0~39\);

-- Location: LCCOMB_X24_Y19_N0
\inst2|addNo~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~3_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~38_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(19),
	datac => \inst|state.NXTADDR~q\,
	datad => \inst2|Add0~38_combout\,
	combout => \inst2|addNo~3_combout\);

-- Location: LCCOMB_X24_Y19_N2
\inst2|addNo[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo[19]~feeder_combout\ = \inst2|addNo~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|addNo~3_combout\,
	combout => \inst2|addNo[19]~feeder_combout\);

-- Location: FF_X24_Y19_N3
\inst2|addNo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|addNo[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(19));

-- Location: LCCOMB_X26_Y19_N8
\inst2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~40_combout\ = (\inst2|addNo\(20) & (\inst2|Add0~39\ $ (GND))) # (!\inst2|addNo\(20) & (!\inst2|Add0~39\ & VCC))
-- \inst2|Add0~41\ = CARRY((\inst2|addNo\(20) & !\inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(20),
	datad => VCC,
	cin => \inst2|Add0~39\,
	combout => \inst2|Add0~40_combout\,
	cout => \inst2|Add0~41\);

-- Location: LCCOMB_X25_Y19_N28
\inst2|addNo~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~2_combout\ = (\inst|state.NXTADDR~q\ & (\inst2|Add0~40_combout\)) # (!\inst|state.NXTADDR~q\ & ((\inst2|addNo\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.NXTADDR~q\,
	datac => \inst2|Add0~40_combout\,
	datad => \inst2|addNo\(20),
	combout => \inst2|addNo~2_combout\);

-- Location: FF_X25_Y19_N31
\inst2|addNo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(20));

-- Location: LCCOMB_X26_Y19_N10
\inst2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~42_combout\ = (\inst2|addNo\(21) & (!\inst2|Add0~41\)) # (!\inst2|addNo\(21) & ((\inst2|Add0~41\) # (GND)))
-- \inst2|Add0~43\ = CARRY((!\inst2|Add0~41\) # (!\inst2|addNo\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(21),
	datad => VCC,
	cin => \inst2|Add0~41\,
	combout => \inst2|Add0~42_combout\,
	cout => \inst2|Add0~43\);

-- Location: LCCOMB_X27_Y19_N16
\inst2|addNo~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~18_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~42_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(21),
	datac => \inst|state.NXTADDR~q\,
	datad => \inst2|Add0~42_combout\,
	combout => \inst2|addNo~18_combout\);

-- Location: FF_X27_Y19_N23
\inst2|addNo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(21));

-- Location: LCCOMB_X26_Y19_N12
\inst2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = (\inst2|addNo\(22) & (\inst2|Add0~43\ $ (GND))) # (!\inst2|addNo\(22) & (!\inst2|Add0~43\ & VCC))
-- \inst2|Add0~45\ = CARRY((\inst2|addNo\(22) & !\inst2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(22),
	datad => VCC,
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~44_combout\,
	cout => \inst2|Add0~45\);

-- Location: LCCOMB_X27_Y19_N8
\inst2|addNo~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~17_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~44_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.NXTADDR~q\,
	datac => \inst2|addNo\(22),
	datad => \inst2|Add0~44_combout\,
	combout => \inst2|addNo~17_combout\);

-- Location: FF_X27_Y19_N9
\inst2|addNo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|addNo~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(22));

-- Location: LCCOMB_X26_Y19_N14
\inst2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~46_combout\ = (\inst2|addNo\(23) & (!\inst2|Add0~45\)) # (!\inst2|addNo\(23) & ((\inst2|Add0~45\) # (GND)))
-- \inst2|Add0~47\ = CARRY((!\inst2|Add0~45\) # (!\inst2|addNo\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(23),
	datad => VCC,
	cin => \inst2|Add0~45\,
	combout => \inst2|Add0~46_combout\,
	cout => \inst2|Add0~47\);

-- Location: LCCOMB_X27_Y19_N30
\inst2|addNo~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~16_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~46_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.NXTADDR~q\,
	datac => \inst2|addNo\(23),
	datad => \inst2|Add0~46_combout\,
	combout => \inst2|addNo~16_combout\);

-- Location: FF_X27_Y19_N31
\inst2|addNo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|addNo~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(23));

-- Location: LCCOMB_X27_Y19_N22
\inst2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~6_combout\ = (!\inst2|addNo\(22) & (!\inst2|addNo\(23) & (!\inst2|addNo\(21) & !\inst2|addNo\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(22),
	datab => \inst2|addNo\(23),
	datac => \inst2|addNo\(21),
	datad => \inst2|addNo\(20),
	combout => \inst2|Equal0~6_combout\);

-- Location: LCCOMB_X26_Y19_N16
\inst2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~48_combout\ = (\inst2|addNo\(24) & (\inst2|Add0~47\ $ (GND))) # (!\inst2|addNo\(24) & (!\inst2|Add0~47\ & VCC))
-- \inst2|Add0~49\ = CARRY((\inst2|addNo\(24) & !\inst2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(24),
	datad => VCC,
	cin => \inst2|Add0~47\,
	combout => \inst2|Add0~48_combout\,
	cout => \inst2|Add0~49\);

-- Location: LCCOMB_X27_Y19_N6
\inst2|addNo~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~15_combout\ = (\inst|state.NXTADDR~q\ & (\inst2|Add0~48_combout\)) # (!\inst|state.NXTADDR~q\ & ((\inst2|addNo\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.NXTADDR~q\,
	datac => \inst2|Add0~48_combout\,
	datad => \inst2|addNo\(24),
	combout => \inst2|addNo~15_combout\);

-- Location: FF_X27_Y19_N25
\inst2|addNo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(24));

-- Location: LCCOMB_X26_Y19_N18
\inst2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~50_combout\ = (\inst2|addNo\(25) & (!\inst2|Add0~49\)) # (!\inst2|addNo\(25) & ((\inst2|Add0~49\) # (GND)))
-- \inst2|Add0~51\ = CARRY((!\inst2|Add0~49\) # (!\inst2|addNo\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(25),
	datad => VCC,
	cin => \inst2|Add0~49\,
	combout => \inst2|Add0~50_combout\,
	cout => \inst2|Add0~51\);

-- Location: LCCOMB_X27_Y19_N26
\inst2|addNo~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~20_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~50_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.NXTADDR~q\,
	datac => \inst2|addNo\(25),
	datad => \inst2|Add0~50_combout\,
	combout => \inst2|addNo~20_combout\);

-- Location: FF_X27_Y19_N27
\inst2|addNo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|addNo~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(25));

-- Location: LCCOMB_X26_Y19_N20
\inst2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~52_combout\ = (\inst2|addNo\(26) & (\inst2|Add0~51\ $ (GND))) # (!\inst2|addNo\(26) & (!\inst2|Add0~51\ & VCC))
-- \inst2|Add0~53\ = CARRY((\inst2|addNo\(26) & !\inst2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(26),
	datad => VCC,
	cin => \inst2|Add0~51\,
	combout => \inst2|Add0~52_combout\,
	cout => \inst2|Add0~53\);

-- Location: LCCOMB_X27_Y19_N12
\inst2|addNo~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~21_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~52_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.NXTADDR~q\,
	datac => \inst2|addNo\(26),
	datad => \inst2|Add0~52_combout\,
	combout => \inst2|addNo~21_combout\);

-- Location: FF_X27_Y19_N13
\inst2|addNo[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|addNo~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(26));

-- Location: LCCOMB_X26_Y19_N22
\inst2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~54_combout\ = (\inst2|addNo\(27) & (!\inst2|Add0~53\)) # (!\inst2|addNo\(27) & ((\inst2|Add0~53\) # (GND)))
-- \inst2|Add0~55\ = CARRY((!\inst2|Add0~53\) # (!\inst2|addNo\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(27),
	datad => VCC,
	cin => \inst2|Add0~53\,
	combout => \inst2|Add0~54_combout\,
	cout => \inst2|Add0~55\);

-- Location: LCCOMB_X27_Y19_N14
\inst2|addNo~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~19_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~54_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.NXTADDR~q\,
	datac => \inst2|addNo\(27),
	datad => \inst2|Add0~54_combout\,
	combout => \inst2|addNo~19_combout\);

-- Location: FF_X27_Y19_N15
\inst2|addNo[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|addNo~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(27));

-- Location: LCCOMB_X27_Y19_N24
\inst2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~7_combout\ = (!\inst2|addNo\(27) & (!\inst2|addNo\(25) & (!\inst2|addNo\(24) & !\inst2|addNo\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(27),
	datab => \inst2|addNo\(25),
	datac => \inst2|addNo\(24),
	datad => \inst2|addNo\(26),
	combout => \inst2|Equal0~7_combout\);

-- Location: LCCOMB_X26_Y19_N24
\inst2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~56_combout\ = (\inst2|addNo\(28) & (\inst2|Add0~55\ $ (GND))) # (!\inst2|addNo\(28) & (!\inst2|Add0~55\ & VCC))
-- \inst2|Add0~57\ = CARRY((\inst2|addNo\(28) & !\inst2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(28),
	datad => VCC,
	cin => \inst2|Add0~55\,
	combout => \inst2|Add0~56_combout\,
	cout => \inst2|Add0~57\);

-- Location: LCCOMB_X27_Y19_N20
\inst2|addNo~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~31_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~56_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.NXTADDR~q\,
	datac => \inst2|addNo\(28),
	datad => \inst2|Add0~56_combout\,
	combout => \inst2|addNo~31_combout\);

-- Location: FF_X27_Y19_N21
\inst2|addNo[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|addNo~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(28));

-- Location: LCCOMB_X26_Y19_N26
\inst2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~58_combout\ = (\inst2|addNo\(29) & (!\inst2|Add0~57\)) # (!\inst2|addNo\(29) & ((\inst2|Add0~57\) # (GND)))
-- \inst2|Add0~59\ = CARRY((!\inst2|Add0~57\) # (!\inst2|addNo\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(29),
	datad => VCC,
	cin => \inst2|Add0~57\,
	combout => \inst2|Add0~58_combout\,
	cout => \inst2|Add0~59\);

-- Location: LCCOMB_X25_Y19_N4
\inst2|addNo~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~26_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~58_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(29),
	datac => \inst|state.NXTADDR~q\,
	datad => \inst2|Add0~58_combout\,
	combout => \inst2|addNo~26_combout\);

-- Location: FF_X25_Y19_N13
\inst2|addNo[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(29));

-- Location: LCCOMB_X26_Y19_N28
\inst2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~60_combout\ = (\inst2|addNo\(30) & (\inst2|Add0~59\ $ (GND))) # (!\inst2|addNo\(30) & (!\inst2|Add0~59\ & VCC))
-- \inst2|Add0~61\ = CARRY((\inst2|addNo\(30) & !\inst2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(30),
	datad => VCC,
	cin => \inst2|Add0~59\,
	combout => \inst2|Add0~60_combout\,
	cout => \inst2|Add0~61\);

-- Location: LCCOMB_X25_Y19_N18
\inst2|addNo~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~27_combout\ = (\inst|state.NXTADDR~q\ & ((\inst2|Add0~60_combout\))) # (!\inst|state.NXTADDR~q\ & (\inst2|addNo\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo\(30),
	datac => \inst|state.NXTADDR~q\,
	datad => \inst2|Add0~60_combout\,
	combout => \inst2|addNo~27_combout\);

-- Location: FF_X25_Y19_N3
\inst2|addNo[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(30));

-- Location: LCCOMB_X26_Y19_N30
\inst2|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~62_combout\ = \inst2|Add0~61\ $ (\inst2|addNo\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|addNo\(31),
	cin => \inst2|Add0~61\,
	combout => \inst2|Add0~62_combout\);

-- Location: LCCOMB_X25_Y19_N8
\inst2|addNo~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~32_combout\ = (\inst|state.NXTADDR~q\ & (\inst2|Add0~62_combout\)) # (!\inst|state.NXTADDR~q\ & ((\inst2|addNo\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~62_combout\,
	datab => \inst|state.NXTADDR~q\,
	datac => \inst2|addNo\(31),
	combout => \inst2|addNo~32_combout\);

-- Location: FF_X25_Y19_N9
\inst2|addNo[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|addNo~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(31));

-- Location: LCCOMB_X25_Y19_N22
\inst2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~8_combout\ = (!\inst2|addNo\(31) & (!\inst2|addNo\(29) & (!\inst2|addNo\(28) & !\inst2|addNo\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(31),
	datab => \inst2|addNo\(29),
	datac => \inst2|addNo\(28),
	datad => \inst2|addNo\(30),
	combout => \inst2|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y19_N20
\inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (!\inst2|addNo\(19) & (!\inst2|addNo\(16) & (!\inst2|addNo\(18) & !\inst2|addNo\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(19),
	datab => \inst2|addNo\(16),
	datac => \inst2|addNo\(18),
	datad => \inst2|addNo\(17),
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X27_Y19_N2
\inst2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~9_combout\ = (\inst2|Equal0~6_combout\ & (\inst2|Equal0~7_combout\ & (\inst2|Equal0~8_combout\ & \inst2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~6_combout\,
	datab => \inst2|Equal0~7_combout\,
	datac => \inst2|Equal0~8_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|Equal0~9_combout\);

-- Location: LCCOMB_X25_Y20_N2
\inst2|addNo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~0_combout\ = (\inst|state.NXTADDR~q\ & ((!\inst2|Equal0~9_combout\) # (!\inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~4_combout\,
	datac => \inst|state.NXTADDR~q\,
	datad => \inst2|Equal0~9_combout\,
	combout => \inst2|addNo~0_combout\);

-- Location: LCCOMB_X25_Y20_N26
\inst2|addNo~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~28_combout\ = (\inst2|Add0~4_combout\ & ((\inst2|addNo~0_combout\) # ((\inst2|addNo\(2) & !\inst|state.NXTADDR~q\)))) # (!\inst2|Add0~4_combout\ & (\inst2|addNo\(2) & (!\inst|state.NXTADDR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~4_combout\,
	datab => \inst2|addNo\(2),
	datac => \inst|state.NXTADDR~q\,
	datad => \inst2|addNo~0_combout\,
	combout => \inst2|addNo~28_combout\);

-- Location: FF_X26_Y20_N11
\inst2|addNo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|addNo~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addNo\(2));

-- Location: LCCOMB_X25_Y20_N0
\inst2|addNo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addNo~1_combout\ = (\inst2|Add0~6_combout\ & ((\inst2|addNo~0_combout\) # ((\inst2|addNo\(3) & !\inst|state.NXTADDR~q\)))) # (!\inst2|Add0~6_combout\ & (\inst2|addNo\(3) & (!\inst|state.NXTADDR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~6_combout\,
	datab => \inst2|addNo\(3),
	datac => \inst|state.NXTADDR~q\,
	datad => \inst2|addNo~0_combout\,
	combout => \inst2|addNo~1_combout\);

-- Location: LCCOMB_X27_Y20_N12
\inst2|Equal1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~18_combout\ = (!\inst2|addNo~30_combout\ & ((\inst|state.NXTADDR~q\ & (!\inst2|Add0~2_combout\)) # (!\inst|state.NXTADDR~q\ & ((!\inst2|addNo\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datab => \inst2|addNo\(1),
	datac => \inst2|addNo~30_combout\,
	datad => \inst|state.NXTADDR~q\,
	combout => \inst2|Equal1~18_combout\);

-- Location: LCCOMB_X27_Y19_N28
\inst2|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~4_combout\ = (!\inst2|addNo~14_combout\ & ((\inst|state.NXTADDR~q\ & ((!\inst2|Add0~56_combout\))) # (!\inst|state.NXTADDR~q\ & (!\inst2|addNo\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.NXTADDR~q\,
	datab => \inst2|addNo\(28),
	datac => \inst2|addNo~14_combout\,
	datad => \inst2|Add0~56_combout\,
	combout => \inst2|Equal1~4_combout\);

-- Location: LCCOMB_X25_Y20_N24
\inst2|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~2_combout\ = (!\inst2|addNo~12_combout\ & (!\inst2|addNo~13_combout\ & (!\inst2|addNo~11_combout\ & !\inst2|addNo~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~12_combout\,
	datab => \inst2|addNo~13_combout\,
	datac => \inst2|addNo~11_combout\,
	datad => \inst2|addNo~10_combout\,
	combout => \inst2|Equal1~2_combout\);

-- Location: LCCOMB_X24_Y19_N26
\inst2|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~1_combout\ = (!\inst2|addNo~6_combout\ & (!\inst2|addNo~9_combout\ & (!\inst2|addNo~8_combout\ & !\inst2|addNo~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~6_combout\,
	datab => \inst2|addNo~9_combout\,
	datac => \inst2|addNo~8_combout\,
	datad => \inst2|addNo~7_combout\,
	combout => \inst2|Equal1~1_combout\);

-- Location: LCCOMB_X24_Y19_N24
\inst2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = (!\inst2|addNo~5_combout\ & (!\inst2|addNo~3_combout\ & (!\inst2|addNo~4_combout\ & !\inst2|addNo~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~5_combout\,
	datab => \inst2|addNo~3_combout\,
	datac => \inst2|addNo~4_combout\,
	datad => \inst2|addNo~2_combout\,
	combout => \inst2|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y19_N28
\inst2|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~3_combout\ = (\inst2|Equal1~2_combout\ & (\inst2|Equal1~1_combout\ & \inst2|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~2_combout\,
	datac => \inst2|Equal1~1_combout\,
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|Equal1~3_combout\);

-- Location: LCCOMB_X27_Y19_N10
\inst2|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~5_combout\ = (!\inst2|addNo~16_combout\ & (!\inst2|addNo~18_combout\ & (!\inst2|addNo~17_combout\ & !\inst2|addNo~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~16_combout\,
	datab => \inst2|addNo~18_combout\,
	datac => \inst2|addNo~17_combout\,
	datad => \inst2|addNo~15_combout\,
	combout => \inst2|Equal1~5_combout\);

-- Location: LCCOMB_X27_Y19_N0
\inst2|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~6_combout\ = (!\inst2|addNo~21_combout\ & (!\inst2|addNo~19_combout\ & (!\inst2|addNo~20_combout\ & \inst2|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~21_combout\,
	datab => \inst2|addNo~19_combout\,
	datac => \inst2|addNo~20_combout\,
	datad => \inst2|Equal1~5_combout\,
	combout => \inst2|Equal1~6_combout\);

-- Location: LCCOMB_X25_Y19_N26
\inst2|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~7_combout\ = (!\inst2|addNo~23_combout\ & (!\inst2|addNo~22_combout\ & ((\inst|state.NXTADDR~q\) # (!\inst2|addNo\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~23_combout\,
	datab => \inst2|addNo\(31),
	datac => \inst|state.NXTADDR~q\,
	datad => \inst2|addNo~22_combout\,
	combout => \inst2|Equal1~7_combout\);

-- Location: LCCOMB_X25_Y19_N20
\inst2|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~8_combout\ = (\inst2|addNo~25_combout\) # ((\inst2|addNo~24_combout\) # ((\inst2|addNo~26_combout\) # (\inst2|addNo~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~25_combout\,
	datab => \inst2|addNo~24_combout\,
	datac => \inst2|addNo~26_combout\,
	datad => \inst2|addNo~27_combout\,
	combout => \inst2|Equal1~8_combout\);

-- Location: LCCOMB_X25_Y19_N14
\inst2|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~9_combout\ = (\inst2|Equal1~7_combout\ & (!\inst2|Equal1~8_combout\ & ((!\inst2|Add0~62_combout\) # (!\inst|state.NXTADDR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~7_combout\,
	datab => \inst|state.NXTADDR~q\,
	datac => \inst2|Add0~62_combout\,
	datad => \inst2|Equal1~8_combout\,
	combout => \inst2|Equal1~9_combout\);

-- Location: LCCOMB_X23_Y19_N0
\inst2|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~10_combout\ = (\inst2|Equal1~4_combout\ & (\inst2|Equal1~3_combout\ & (\inst2|Equal1~6_combout\ & \inst2|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~4_combout\,
	datab => \inst2|Equal1~3_combout\,
	datac => \inst2|Equal1~6_combout\,
	datad => \inst2|Equal1~9_combout\,
	combout => \inst2|Equal1~10_combout\);

-- Location: LCCOMB_X23_Y19_N12
\inst2|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal13~0_combout\ = (\inst2|addNo~1_combout\ & (\inst2|Equal1~18_combout\ & (\inst2|addNo~28_combout\ & \inst2|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~1_combout\,
	datab => \inst2|Equal1~18_combout\,
	datac => \inst2|addNo~28_combout\,
	datad => \inst2|Equal1~10_combout\,
	combout => \inst2|Equal13~0_combout\);

-- Location: LCCOMB_X24_Y19_N10
\inst2|Equal1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~11_combout\ = (!\inst2|addNo~23_combout\ & (!\inst2|addNo~22_combout\ & (!\inst2|addNo~25_combout\ & !\inst2|addNo~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~23_combout\,
	datab => \inst2|addNo~22_combout\,
	datac => \inst2|addNo~25_combout\,
	datad => \inst2|addNo~21_combout\,
	combout => \inst2|Equal1~11_combout\);

-- Location: LCCOMB_X25_Y19_N2
\inst2|Equal1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~12_combout\ = (!\inst2|addNo~24_combout\ & ((\inst|state.NXTADDR~q\) # ((!\inst2|addNo\(31) & !\inst2|addNo\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo\(31),
	datab => \inst|state.NXTADDR~q\,
	datac => \inst2|addNo\(30),
	datad => \inst2|addNo~24_combout\,
	combout => \inst2|Equal1~12_combout\);

-- Location: LCCOMB_X25_Y19_N24
\inst2|Equal1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~13_combout\ = (\inst2|Equal1~12_combout\ & ((!\inst2|Add0~60_combout\) # (!\inst|state.NXTADDR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.NXTADDR~q\,
	datac => \inst2|Equal1~12_combout\,
	datad => \inst2|Add0~60_combout\,
	combout => \inst2|Equal1~13_combout\);

-- Location: LCCOMB_X25_Y19_N10
\inst2|Equal1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~14_combout\ = (!\inst2|addNo~26_combout\ & (\inst2|Equal1~13_combout\ & ((!\inst|state.NXTADDR~q\) # (!\inst2|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~62_combout\,
	datab => \inst2|addNo~26_combout\,
	datac => \inst|state.NXTADDR~q\,
	datad => \inst2|Equal1~13_combout\,
	combout => \inst2|Equal1~14_combout\);

-- Location: LCCOMB_X24_Y19_N8
\inst2|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal7~0_combout\ = (\inst2|addNo~28_combout\ & (!\inst2|addNo~1_combout\ & \inst2|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|addNo~28_combout\,
	datac => \inst2|addNo~1_combout\,
	datad => \inst2|Equal1~3_combout\,
	combout => \inst2|Equal7~0_combout\);

-- Location: LCCOMB_X27_Y19_N18
\inst2|Equal1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~15_combout\ = (!\inst2|addNo~20_combout\ & (\inst2|Equal1~4_combout\ & (!\inst2|addNo~19_combout\ & \inst2|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~20_combout\,
	datab => \inst2|Equal1~4_combout\,
	datac => \inst2|addNo~19_combout\,
	datad => \inst2|Equal1~5_combout\,
	combout => \inst2|Equal1~15_combout\);

-- Location: LCCOMB_X24_Y19_N14
\inst2|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal7~1_combout\ = (\inst2|Equal1~11_combout\ & (\inst2|Equal1~14_combout\ & (\inst2|Equal7~0_combout\ & \inst2|Equal1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~11_combout\,
	datab => \inst2|Equal1~14_combout\,
	datac => \inst2|Equal7~0_combout\,
	datad => \inst2|Equal1~15_combout\,
	combout => \inst2|Equal7~1_combout\);

-- Location: LCCOMB_X24_Y19_N4
\inst2|Equal1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~16_combout\ = (!\inst2|addNo~1_combout\ & (!\inst2|addNo~28_combout\ & \inst2|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~1_combout\,
	datac => \inst2|addNo~28_combout\,
	datad => \inst2|Equal1~3_combout\,
	combout => \inst2|Equal1~16_combout\);

-- Location: LCCOMB_X24_Y19_N6
\inst2|Equal1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~17_combout\ = (\inst2|Equal1~11_combout\ & (\inst2|Equal1~14_combout\ & (\inst2|Equal1~16_combout\ & \inst2|Equal1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~11_combout\,
	datab => \inst2|Equal1~14_combout\,
	datac => \inst2|Equal1~16_combout\,
	datad => \inst2|Equal1~15_combout\,
	combout => \inst2|Equal1~17_combout\);

-- Location: LCCOMB_X24_Y19_N16
\inst2|WideNor0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideNor0~2_combout\ = (\inst2|addNo~29_combout\ & (((\inst2|Equal1~17_combout\)))) # (!\inst2|addNo~29_combout\ & ((\inst2|Equal7~1_combout\) # ((\inst2|addNo~30_combout\ & \inst2|Equal1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~29_combout\,
	datab => \inst2|addNo~30_combout\,
	datac => \inst2|Equal7~1_combout\,
	datad => \inst2|Equal1~17_combout\,
	combout => \inst2|WideNor0~2_combout\);

-- Location: LCCOMB_X23_Y19_N2
\inst2|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr2~combout\ = (\inst2|Equal13~0_combout\) # (\inst2|WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal13~0_combout\,
	datad => \inst2|WideNor0~2_combout\,
	combout => \inst2|WideOr2~combout\);

-- Location: FF_X23_Y19_N3
\inst2|ADDRESS[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|WideOr2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ADDRESS\(11));

-- Location: LCCOMB_X30_Y21_N4
\inst4|DTS[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|DTS[11]~feeder_combout\ = \inst2|ADDRESS\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ADDRESS\(11),
	combout => \inst4|DTS[11]~feeder_combout\);

-- Location: FF_X29_Y21_N27
\inst4|BP[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~58_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(29));

-- Location: LCCOMB_X29_Y22_N8
\inst4|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~8_combout\ = (\inst4|BP\(4) & (\inst4|Add4~7\ $ (GND))) # (!\inst4|BP\(4) & ((GND) # (!\inst4|Add4~7\)))
-- \inst4|Add4~9\ = CARRY((!\inst4|Add4~7\) # (!\inst4|BP\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|BP\(4),
	datad => VCC,
	cin => \inst4|Add4~7\,
	combout => \inst4|Add4~8_combout\,
	cout => \inst4|Add4~9\);

-- Location: LCCOMB_X30_Y22_N6
\inst4|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|BP~0_combout\ = (!\inst4|Add4~8_combout\ & !\inst4|Equal8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add4~8_combout\,
	datad => \inst4|Equal8~10_combout\,
	combout => \inst4|BP~0_combout\);

-- Location: FF_X30_Y22_N7
\inst4|BP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|BP~0_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(4));

-- Location: LCCOMB_X29_Y22_N10
\inst4|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~10_combout\ = (\inst4|BP\(5) & (\inst4|Add4~9\ & VCC)) # (!\inst4|BP\(5) & (!\inst4|Add4~9\))
-- \inst4|Add4~11\ = CARRY((!\inst4|BP\(5) & !\inst4|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|BP\(5),
	datad => VCC,
	cin => \inst4|Add4~9\,
	combout => \inst4|Add4~10_combout\,
	cout => \inst4|Add4~11\);

-- Location: FF_X29_Y22_N11
\inst4|BP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~10_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(5));

-- Location: LCCOMB_X29_Y22_N12
\inst4|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~12_combout\ = (\inst4|BP\(6) & ((GND) # (!\inst4|Add4~11\))) # (!\inst4|BP\(6) & (\inst4|Add4~11\ $ (GND)))
-- \inst4|Add4~13\ = CARRY((\inst4|BP\(6)) # (!\inst4|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|BP\(6),
	datad => VCC,
	cin => \inst4|Add4~11\,
	combout => \inst4|Add4~12_combout\,
	cout => \inst4|Add4~13\);

-- Location: FF_X29_Y22_N13
\inst4|BP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~12_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(6));

-- Location: LCCOMB_X29_Y22_N14
\inst4|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~14_combout\ = (\inst4|BP\(7) & (\inst4|Add4~13\ & VCC)) # (!\inst4|BP\(7) & (!\inst4|Add4~13\))
-- \inst4|Add4~15\ = CARRY((!\inst4|BP\(7) & !\inst4|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(7),
	datad => VCC,
	cin => \inst4|Add4~13\,
	combout => \inst4|Add4~14_combout\,
	cout => \inst4|Add4~15\);

-- Location: FF_X29_Y22_N15
\inst4|BP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~14_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(7));

-- Location: LCCOMB_X29_Y22_N16
\inst4|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~16_combout\ = (\inst4|BP\(8) & ((GND) # (!\inst4|Add4~15\))) # (!\inst4|BP\(8) & (\inst4|Add4~15\ $ (GND)))
-- \inst4|Add4~17\ = CARRY((\inst4|BP\(8)) # (!\inst4|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(8),
	datad => VCC,
	cin => \inst4|Add4~15\,
	combout => \inst4|Add4~16_combout\,
	cout => \inst4|Add4~17\);

-- Location: FF_X29_Y22_N17
\inst4|BP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~16_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(8));

-- Location: LCCOMB_X29_Y22_N18
\inst4|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~18_combout\ = (\inst4|BP\(9) & (\inst4|Add4~17\ & VCC)) # (!\inst4|BP\(9) & (!\inst4|Add4~17\))
-- \inst4|Add4~19\ = CARRY((!\inst4|BP\(9) & !\inst4|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(9),
	datad => VCC,
	cin => \inst4|Add4~17\,
	combout => \inst4|Add4~18_combout\,
	cout => \inst4|Add4~19\);

-- Location: FF_X29_Y22_N19
\inst4|BP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~18_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(9));

-- Location: LCCOMB_X29_Y22_N20
\inst4|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~20_combout\ = (\inst4|BP\(10) & ((GND) # (!\inst4|Add4~19\))) # (!\inst4|BP\(10) & (\inst4|Add4~19\ $ (GND)))
-- \inst4|Add4~21\ = CARRY((\inst4|BP\(10)) # (!\inst4|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(10),
	datad => VCC,
	cin => \inst4|Add4~19\,
	combout => \inst4|Add4~20_combout\,
	cout => \inst4|Add4~21\);

-- Location: FF_X29_Y22_N21
\inst4|BP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~20_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(10));

-- Location: LCCOMB_X29_Y22_N22
\inst4|Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~22_combout\ = (\inst4|BP\(11) & (\inst4|Add4~21\ & VCC)) # (!\inst4|BP\(11) & (!\inst4|Add4~21\))
-- \inst4|Add4~23\ = CARRY((!\inst4|BP\(11) & !\inst4|Add4~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|BP\(11),
	datad => VCC,
	cin => \inst4|Add4~21\,
	combout => \inst4|Add4~22_combout\,
	cout => \inst4|Add4~23\);

-- Location: FF_X29_Y22_N23
\inst4|BP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~22_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(11));

-- Location: LCCOMB_X29_Y22_N24
\inst4|Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~24_combout\ = (\inst4|BP\(12) & ((GND) # (!\inst4|Add4~23\))) # (!\inst4|BP\(12) & (\inst4|Add4~23\ $ (GND)))
-- \inst4|Add4~25\ = CARRY((\inst4|BP\(12)) # (!\inst4|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(12),
	datad => VCC,
	cin => \inst4|Add4~23\,
	combout => \inst4|Add4~24_combout\,
	cout => \inst4|Add4~25\);

-- Location: FF_X29_Y22_N25
\inst4|BP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~24_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(12));

-- Location: LCCOMB_X29_Y22_N26
\inst4|Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~26_combout\ = (\inst4|BP\(13) & (\inst4|Add4~25\ & VCC)) # (!\inst4|BP\(13) & (!\inst4|Add4~25\))
-- \inst4|Add4~27\ = CARRY((!\inst4|BP\(13) & !\inst4|Add4~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|BP\(13),
	datad => VCC,
	cin => \inst4|Add4~25\,
	combout => \inst4|Add4~26_combout\,
	cout => \inst4|Add4~27\);

-- Location: FF_X29_Y22_N27
\inst4|BP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~26_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(13));

-- Location: LCCOMB_X29_Y22_N28
\inst4|Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~28_combout\ = (\inst4|BP\(14) & ((GND) # (!\inst4|Add4~27\))) # (!\inst4|BP\(14) & (\inst4|Add4~27\ $ (GND)))
-- \inst4|Add4~29\ = CARRY((\inst4|BP\(14)) # (!\inst4|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(14),
	datad => VCC,
	cin => \inst4|Add4~27\,
	combout => \inst4|Add4~28_combout\,
	cout => \inst4|Add4~29\);

-- Location: FF_X29_Y22_N29
\inst4|BP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~28_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(14));

-- Location: LCCOMB_X29_Y22_N30
\inst4|Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~30_combout\ = (\inst4|BP\(15) & (\inst4|Add4~29\ & VCC)) # (!\inst4|BP\(15) & (!\inst4|Add4~29\))
-- \inst4|Add4~31\ = CARRY((!\inst4|BP\(15) & !\inst4|Add4~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|BP\(15),
	datad => VCC,
	cin => \inst4|Add4~29\,
	combout => \inst4|Add4~30_combout\,
	cout => \inst4|Add4~31\);

-- Location: FF_X29_Y22_N31
\inst4|BP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~30_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(15));

-- Location: LCCOMB_X29_Y21_N0
\inst4|Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~32_combout\ = (\inst4|BP\(16) & ((GND) # (!\inst4|Add4~31\))) # (!\inst4|BP\(16) & (\inst4|Add4~31\ $ (GND)))
-- \inst4|Add4~33\ = CARRY((\inst4|BP\(16)) # (!\inst4|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(16),
	datad => VCC,
	cin => \inst4|Add4~31\,
	combout => \inst4|Add4~32_combout\,
	cout => \inst4|Add4~33\);

-- Location: FF_X29_Y21_N1
\inst4|BP[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~32_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(16));

-- Location: LCCOMB_X29_Y21_N2
\inst4|Add4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~34_combout\ = (\inst4|BP\(17) & (\inst4|Add4~33\ & VCC)) # (!\inst4|BP\(17) & (!\inst4|Add4~33\))
-- \inst4|Add4~35\ = CARRY((!\inst4|BP\(17) & !\inst4|Add4~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(17),
	datad => VCC,
	cin => \inst4|Add4~33\,
	combout => \inst4|Add4~34_combout\,
	cout => \inst4|Add4~35\);

-- Location: FF_X29_Y21_N3
\inst4|BP[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~34_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(17));

-- Location: LCCOMB_X29_Y21_N4
\inst4|Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~36_combout\ = (\inst4|BP\(18) & ((GND) # (!\inst4|Add4~35\))) # (!\inst4|BP\(18) & (\inst4|Add4~35\ $ (GND)))
-- \inst4|Add4~37\ = CARRY((\inst4|BP\(18)) # (!\inst4|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(18),
	datad => VCC,
	cin => \inst4|Add4~35\,
	combout => \inst4|Add4~36_combout\,
	cout => \inst4|Add4~37\);

-- Location: FF_X29_Y21_N5
\inst4|BP[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~36_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(18));

-- Location: LCCOMB_X29_Y21_N6
\inst4|Add4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~38_combout\ = (\inst4|BP\(19) & (\inst4|Add4~37\ & VCC)) # (!\inst4|BP\(19) & (!\inst4|Add4~37\))
-- \inst4|Add4~39\ = CARRY((!\inst4|BP\(19) & !\inst4|Add4~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|BP\(19),
	datad => VCC,
	cin => \inst4|Add4~37\,
	combout => \inst4|Add4~38_combout\,
	cout => \inst4|Add4~39\);

-- Location: FF_X29_Y21_N7
\inst4|BP[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~38_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(19));

-- Location: LCCOMB_X29_Y21_N8
\inst4|Add4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~40_combout\ = (\inst4|BP\(20) & ((GND) # (!\inst4|Add4~39\))) # (!\inst4|BP\(20) & (\inst4|Add4~39\ $ (GND)))
-- \inst4|Add4~41\ = CARRY((\inst4|BP\(20)) # (!\inst4|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(20),
	datad => VCC,
	cin => \inst4|Add4~39\,
	combout => \inst4|Add4~40_combout\,
	cout => \inst4|Add4~41\);

-- Location: FF_X29_Y21_N9
\inst4|BP[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~40_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(20));

-- Location: LCCOMB_X29_Y21_N10
\inst4|Add4~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~42_combout\ = (\inst4|BP\(21) & (\inst4|Add4~41\ & VCC)) # (!\inst4|BP\(21) & (!\inst4|Add4~41\))
-- \inst4|Add4~43\ = CARRY((!\inst4|BP\(21) & !\inst4|Add4~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|BP\(21),
	datad => VCC,
	cin => \inst4|Add4~41\,
	combout => \inst4|Add4~42_combout\,
	cout => \inst4|Add4~43\);

-- Location: FF_X29_Y21_N11
\inst4|BP[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~42_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(21));

-- Location: LCCOMB_X29_Y21_N12
\inst4|Add4~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~44_combout\ = (\inst4|BP\(22) & ((GND) # (!\inst4|Add4~43\))) # (!\inst4|BP\(22) & (\inst4|Add4~43\ $ (GND)))
-- \inst4|Add4~45\ = CARRY((\inst4|BP\(22)) # (!\inst4|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|BP\(22),
	datad => VCC,
	cin => \inst4|Add4~43\,
	combout => \inst4|Add4~44_combout\,
	cout => \inst4|Add4~45\);

-- Location: FF_X29_Y21_N13
\inst4|BP[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~44_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(22));

-- Location: LCCOMB_X29_Y21_N14
\inst4|Add4~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~46_combout\ = (\inst4|BP\(23) & (\inst4|Add4~45\ & VCC)) # (!\inst4|BP\(23) & (!\inst4|Add4~45\))
-- \inst4|Add4~47\ = CARRY((!\inst4|BP\(23) & !\inst4|Add4~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(23),
	datad => VCC,
	cin => \inst4|Add4~45\,
	combout => \inst4|Add4~46_combout\,
	cout => \inst4|Add4~47\);

-- Location: FF_X29_Y21_N15
\inst4|BP[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~46_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(23));

-- Location: LCCOMB_X29_Y21_N16
\inst4|Add4~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~48_combout\ = (\inst4|BP\(24) & ((GND) # (!\inst4|Add4~47\))) # (!\inst4|BP\(24) & (\inst4|Add4~47\ $ (GND)))
-- \inst4|Add4~49\ = CARRY((\inst4|BP\(24)) # (!\inst4|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(24),
	datad => VCC,
	cin => \inst4|Add4~47\,
	combout => \inst4|Add4~48_combout\,
	cout => \inst4|Add4~49\);

-- Location: FF_X29_Y21_N17
\inst4|BP[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~48_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(24));

-- Location: LCCOMB_X29_Y21_N18
\inst4|Add4~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~50_combout\ = (\inst4|BP\(25) & (\inst4|Add4~49\ & VCC)) # (!\inst4|BP\(25) & (!\inst4|Add4~49\))
-- \inst4|Add4~51\ = CARRY((!\inst4|BP\(25) & !\inst4|Add4~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(25),
	datad => VCC,
	cin => \inst4|Add4~49\,
	combout => \inst4|Add4~50_combout\,
	cout => \inst4|Add4~51\);

-- Location: FF_X29_Y21_N19
\inst4|BP[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~50_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(25));

-- Location: LCCOMB_X29_Y21_N20
\inst4|Add4~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~52_combout\ = (\inst4|BP\(26) & ((GND) # (!\inst4|Add4~51\))) # (!\inst4|BP\(26) & (\inst4|Add4~51\ $ (GND)))
-- \inst4|Add4~53\ = CARRY((\inst4|BP\(26)) # (!\inst4|Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(26),
	datad => VCC,
	cin => \inst4|Add4~51\,
	combout => \inst4|Add4~52_combout\,
	cout => \inst4|Add4~53\);

-- Location: FF_X29_Y21_N21
\inst4|BP[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~52_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(26));

-- Location: LCCOMB_X29_Y21_N22
\inst4|Add4~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~54_combout\ = (\inst4|BP\(27) & (\inst4|Add4~53\ & VCC)) # (!\inst4|BP\(27) & (!\inst4|Add4~53\))
-- \inst4|Add4~55\ = CARRY((!\inst4|BP\(27) & !\inst4|Add4~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|BP\(27),
	datad => VCC,
	cin => \inst4|Add4~53\,
	combout => \inst4|Add4~54_combout\,
	cout => \inst4|Add4~55\);

-- Location: FF_X29_Y21_N23
\inst4|BP[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~54_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(27));

-- Location: LCCOMB_X29_Y21_N24
\inst4|Add4~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~56_combout\ = (\inst4|BP\(28) & ((GND) # (!\inst4|Add4~55\))) # (!\inst4|BP\(28) & (\inst4|Add4~55\ $ (GND)))
-- \inst4|Add4~57\ = CARRY((\inst4|BP\(28)) # (!\inst4|Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(28),
	datad => VCC,
	cin => \inst4|Add4~55\,
	combout => \inst4|Add4~56_combout\,
	cout => \inst4|Add4~57\);

-- Location: FF_X29_Y21_N25
\inst4|BP[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~56_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(28));

-- Location: LCCOMB_X29_Y21_N26
\inst4|Add4~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~58_combout\ = (\inst4|BP\(29) & (\inst4|Add4~57\ & VCC)) # (!\inst4|BP\(29) & (!\inst4|Add4~57\))
-- \inst4|Add4~59\ = CARRY((!\inst4|BP\(29) & !\inst4|Add4~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|BP\(29),
	datad => VCC,
	cin => \inst4|Add4~57\,
	combout => \inst4|Add4~58_combout\,
	cout => \inst4|Add4~59\);

-- Location: FF_X29_Y21_N31
\inst4|BP[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~62_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(31));

-- Location: LCCOMB_X29_Y21_N28
\inst4|Add4~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~60_combout\ = (\inst4|BP\(30) & ((GND) # (!\inst4|Add4~59\))) # (!\inst4|BP\(30) & (\inst4|Add4~59\ $ (GND)))
-- \inst4|Add4~61\ = CARRY((\inst4|BP\(30)) # (!\inst4|Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|BP\(30),
	datad => VCC,
	cin => \inst4|Add4~59\,
	combout => \inst4|Add4~60_combout\,
	cout => \inst4|Add4~61\);

-- Location: FF_X29_Y21_N29
\inst4|BP[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Add4~60_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BP\(30));

-- Location: LCCOMB_X29_Y21_N30
\inst4|Add4~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add4~62_combout\ = \inst4|BP\(31) $ (!\inst4|Add4~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|BP\(31),
	cin => \inst4|Add4~61\,
	combout => \inst4|Add4~62_combout\);

-- Location: LCCOMB_X30_Y21_N16
\inst4|Equal8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal8~6_combout\ = (!\inst4|Add4~44_combout\ & (!\inst4|Add4~40_combout\ & (!\inst4|Add4~42_combout\ & !\inst4|Add4~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add4~44_combout\,
	datab => \inst4|Add4~40_combout\,
	datac => \inst4|Add4~42_combout\,
	datad => \inst4|Add4~46_combout\,
	combout => \inst4|Equal8~6_combout\);

-- Location: LCCOMB_X30_Y21_N12
\inst4|Equal8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal8~3_combout\ = (!\inst4|Add4~24_combout\ & (!\inst4|Add4~28_combout\ & (!\inst4|Add4~26_combout\ & !\inst4|Add4~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add4~24_combout\,
	datab => \inst4|Add4~28_combout\,
	datac => \inst4|Add4~26_combout\,
	datad => \inst4|Add4~30_combout\,
	combout => \inst4|Equal8~3_combout\);

-- Location: LCCOMB_X30_Y22_N30
\inst4|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal8~1_combout\ = (!\inst4|Add4~8_combout\ & (!\inst4|Add4~10_combout\ & (!\inst4|Add4~14_combout\ & !\inst4|Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add4~8_combout\,
	datab => \inst4|Add4~10_combout\,
	datac => \inst4|Add4~14_combout\,
	datad => \inst4|Add4~12_combout\,
	combout => \inst4|Equal8~1_combout\);

-- Location: LCCOMB_X30_Y21_N30
\inst4|Equal8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal8~2_combout\ = (!\inst4|Add4~16_combout\ & (!\inst4|Add4~20_combout\ & (!\inst4|Add4~22_combout\ & !\inst4|Add4~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add4~16_combout\,
	datab => \inst4|Add4~20_combout\,
	datac => \inst4|Add4~22_combout\,
	datad => \inst4|Add4~18_combout\,
	combout => \inst4|Equal8~2_combout\);

-- Location: LCCOMB_X30_Y22_N8
\inst4|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal8~0_combout\ = (!\inst4|Add4~0_combout\ & (!\inst4|Add4~6_combout\ & (!\inst4|Add4~4_combout\ & !\inst4|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add4~0_combout\,
	datab => \inst4|Add4~6_combout\,
	datac => \inst4|Add4~4_combout\,
	datad => \inst4|Add4~2_combout\,
	combout => \inst4|Equal8~0_combout\);

-- Location: LCCOMB_X30_Y21_N22
\inst4|Equal8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal8~4_combout\ = (\inst4|Equal8~3_combout\ & (\inst4|Equal8~1_combout\ & (\inst4|Equal8~2_combout\ & \inst4|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal8~3_combout\,
	datab => \inst4|Equal8~1_combout\,
	datac => \inst4|Equal8~2_combout\,
	datad => \inst4|Equal8~0_combout\,
	combout => \inst4|Equal8~4_combout\);

-- Location: LCCOMB_X28_Y21_N16
\inst4|Equal8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal8~5_combout\ = (!\inst4|Add4~34_combout\ & (!\inst4|Add4~32_combout\ & (!\inst4|Add4~36_combout\ & !\inst4|Add4~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add4~34_combout\,
	datab => \inst4|Add4~32_combout\,
	datac => \inst4|Add4~36_combout\,
	datad => \inst4|Add4~38_combout\,
	combout => \inst4|Equal8~5_combout\);

-- Location: LCCOMB_X30_Y21_N2
\inst4|Equal8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal8~7_combout\ = (!\inst4|Add4~48_combout\ & (\inst4|Equal8~6_combout\ & (\inst4|Equal8~4_combout\ & \inst4|Equal8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add4~48_combout\,
	datab => \inst4|Equal8~6_combout\,
	datac => \inst4|Equal8~4_combout\,
	datad => \inst4|Equal8~5_combout\,
	combout => \inst4|Equal8~7_combout\);

-- Location: LCCOMB_X30_Y21_N24
\inst4|Equal8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal8~8_combout\ = (!\inst4|Add4~52_combout\ & (!\inst4|Add4~54_combout\ & (!\inst4|Add4~50_combout\ & \inst4|Equal8~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add4~52_combout\,
	datab => \inst4|Add4~54_combout\,
	datac => \inst4|Add4~50_combout\,
	datad => \inst4|Equal8~7_combout\,
	combout => \inst4|Equal8~8_combout\);

-- Location: LCCOMB_X30_Y21_N6
\inst4|Equal8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal8~9_combout\ = (!\inst4|Add4~56_combout\ & \inst4|Equal8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add4~56_combout\,
	datad => \inst4|Equal8~8_combout\,
	combout => \inst4|Equal8~9_combout\);

-- Location: LCCOMB_X30_Y21_N0
\inst4|Equal8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal8~10_combout\ = (!\inst4|Add4~58_combout\ & (!\inst4|Add4~62_combout\ & (!\inst4|Add4~60_combout\ & \inst4|Equal8~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add4~58_combout\,
	datab => \inst4|Add4~62_combout\,
	datac => \inst4|Add4~60_combout\,
	datad => \inst4|Equal8~9_combout\,
	combout => \inst4|Equal8~10_combout\);

-- Location: LCCOMB_X30_Y21_N14
\inst4|DTS[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|DTS[15]~2_combout\ = (\inst4|StartTx~q\ & (!\inst4|wt~q\ & (\inst4|rtc~q\ & \inst4|Equal8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|StartTx~q\,
	datab => \inst4|wt~q\,
	datac => \inst4|rtc~q\,
	datad => \inst4|Equal8~10_combout\,
	combout => \inst4|DTS[15]~2_combout\);

-- Location: FF_X30_Y21_N5
\inst4|DTS[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|DTS[11]~feeder_combout\,
	ena => \inst4|DTS[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|DTS\(11));

-- Location: LCCOMB_X23_Y19_N26
\inst2|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal2~0_combout\ = (!\inst2|addNo~1_combout\ & (\inst2|addNo~30_combout\ & (!\inst2|addNo~28_combout\ & \inst2|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~1_combout\,
	datab => \inst2|addNo~30_combout\,
	datac => \inst2|addNo~28_combout\,
	datad => \inst2|Equal1~10_combout\,
	combout => \inst2|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y19_N22
\inst2|WideNor0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideNor0~5_combout\ = (\inst2|WideNor0~2_combout\) # ((!\inst2|addNo~28_combout\ & (\inst2|Equal1~10_combout\ & \inst2|addNo~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~28_combout\,
	datab => \inst2|Equal1~10_combout\,
	datac => \inst2|addNo~1_combout\,
	datad => \inst2|WideNor0~2_combout\,
	combout => \inst2|WideNor0~5_combout\);

-- Location: LCCOMB_X24_Y19_N12
\inst2|WideNor0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideNor0~3_combout\ = (\inst2|addNo~29_combout\ & (((!\inst2|Equal7~1_combout\)))) # (!\inst2|addNo~29_combout\ & ((\inst2|addNo~30_combout\) # ((!\inst2|Equal1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~29_combout\,
	datab => \inst2|addNo~30_combout\,
	datac => \inst2|Equal7~1_combout\,
	datad => \inst2|Equal1~17_combout\,
	combout => \inst2|WideNor0~3_combout\);

-- Location: LCCOMB_X23_Y19_N6
\inst2|WideNor0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideNor0~4_combout\ = (\inst2|WideNor0~3_combout\ & !\inst2|Equal13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|WideNor0~3_combout\,
	datad => \inst2|Equal13~0_combout\,
	combout => \inst2|WideNor0~4_combout\);

-- Location: LCCOMB_X23_Y19_N8
\inst2|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr3~combout\ = (\inst2|WideNor0~5_combout\ & (\inst2|WideNor0~4_combout\ & ((\inst2|addNo~29_combout\) # (!\inst2|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal2~0_combout\,
	datab => \inst2|addNo~29_combout\,
	datac => \inst2|WideNor0~5_combout\,
	datad => \inst2|WideNor0~4_combout\,
	combout => \inst2|WideOr3~combout\);

-- Location: FF_X23_Y19_N9
\inst2|ADDRESS[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ADDRESS\(10));

-- Location: FF_X30_Y21_N27
\inst4|DTS[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|ADDRESS\(10),
	sload => VCC,
	ena => \inst4|DTS[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|DTS\(10));

-- Location: LCCOMB_X24_Y19_N18
\inst2|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr4~1_combout\ = ((!\inst2|Equal7~1_combout\ & ((\inst2|addNo~29_combout\) # (!\inst2|Equal1~17_combout\)))) # (!\inst2|addNo~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~29_combout\,
	datab => \inst2|addNo~30_combout\,
	datac => \inst2|Equal7~1_combout\,
	datad => \inst2|Equal1~17_combout\,
	combout => \inst2|WideOr4~1_combout\);

-- Location: LCCOMB_X23_Y19_N30
\inst2|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal10~0_combout\ = (\inst2|addNo~1_combout\ & (\inst2|addNo~30_combout\ & (!\inst2|addNo~28_combout\ & \inst2|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~1_combout\,
	datab => \inst2|addNo~30_combout\,
	datac => \inst2|addNo~28_combout\,
	datad => \inst2|Equal1~10_combout\,
	combout => \inst2|Equal10~0_combout\);

-- Location: LCCOMB_X23_Y19_N10
\inst2|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal9~0_combout\ = (\inst2|addNo~1_combout\ & (!\inst2|addNo~28_combout\ & \inst2|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~1_combout\,
	datac => \inst2|addNo~28_combout\,
	datad => \inst2|Equal1~10_combout\,
	combout => \inst2|Equal9~0_combout\);

-- Location: LCCOMB_X23_Y19_N20
\inst2|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr4~0_combout\ = (!\inst2|addNo~30_combout\ & ((\inst2|addNo~29_combout\ & ((\inst2|Equal9~0_combout\))) # (!\inst2|addNo~29_combout\ & (\inst2|Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~29_combout\,
	datab => \inst2|addNo~30_combout\,
	datac => \inst2|Equal7~1_combout\,
	datad => \inst2|Equal9~0_combout\,
	combout => \inst2|WideOr4~0_combout\);

-- Location: LCCOMB_X23_Y19_N14
\inst2|WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr4~2_combout\ = ((\inst2|WideOr4~0_combout\) # ((\inst2|addNo~29_combout\ & \inst2|Equal10~0_combout\))) # (!\inst2|WideOr4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~29_combout\,
	datab => \inst2|WideOr4~1_combout\,
	datac => \inst2|Equal10~0_combout\,
	datad => \inst2|WideOr4~0_combout\,
	combout => \inst2|WideOr4~2_combout\);

-- Location: FF_X23_Y19_N15
\inst2|ADDRESS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|WideOr4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ADDRESS\(9));

-- Location: LCCOMB_X30_Y21_N8
\inst4|DTS[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|DTS[9]~feeder_combout\ = \inst2|ADDRESS\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ADDRESS\(9),
	combout => \inst4|DTS[9]~feeder_combout\);

-- Location: FF_X30_Y21_N9
\inst4|DTS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|DTS[9]~feeder_combout\,
	ena => \inst4|DTS[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|DTS\(9));

-- Location: LCCOMB_X23_Y19_N16
\inst2|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal6~0_combout\ = (\inst2|addNo~28_combout\ & (\inst2|addNo~30_combout\ & (!\inst2|addNo~1_combout\ & \inst2|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~28_combout\,
	datab => \inst2|addNo~30_combout\,
	datac => \inst2|addNo~1_combout\,
	datad => \inst2|Equal1~10_combout\,
	combout => \inst2|Equal6~0_combout\);

-- Location: LCCOMB_X23_Y19_N28
\inst2|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr5~0_combout\ = (\inst2|Equal2~0_combout\) # ((\inst2|Equal10~0_combout\) # (\inst2|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal2~0_combout\,
	datac => \inst2|Equal10~0_combout\,
	datad => \inst2|Equal6~0_combout\,
	combout => \inst2|WideOr5~0_combout\);

-- Location: FF_X23_Y19_N29
\inst2|ADDRESS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ADDRESS\(8));

-- Location: FF_X30_Y21_N11
\inst4|DTS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|ADDRESS\(8),
	sload => VCC,
	ena => \inst4|DTS[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|DTS\(8));

-- Location: LCCOMB_X30_Y21_N10
\inst4|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux0~2_combout\ = (\inst4|Add4~2_combout\ & (((\inst4|Add4~0_combout\)))) # (!\inst4|Add4~2_combout\ & ((\inst4|Add4~0_combout\ & (\inst4|DTS\(9))) # (!\inst4|Add4~0_combout\ & ((\inst4|DTS\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add4~2_combout\,
	datab => \inst4|DTS\(9),
	datac => \inst4|DTS\(8),
	datad => \inst4|Add4~0_combout\,
	combout => \inst4|Mux0~2_combout\);

-- Location: LCCOMB_X30_Y21_N26
\inst4|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux0~3_combout\ = (\inst4|Add4~2_combout\ & ((\inst4|Mux0~2_combout\ & (\inst4|DTS\(11))) # (!\inst4|Mux0~2_combout\ & ((\inst4|DTS\(10)))))) # (!\inst4|Add4~2_combout\ & (((\inst4|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add4~2_combout\,
	datab => \inst4|DTS\(11),
	datac => \inst4|DTS\(10),
	datad => \inst4|Mux0~2_combout\,
	combout => \inst4|Mux0~3_combout\);

-- Location: FF_X24_Y19_N17
\inst2|ADDRESS[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|WideNor0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ADDRESS\(13));

-- Location: FF_X30_Y21_N21
\inst4|DTS[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|ADDRESS\(13),
	sload => VCC,
	ena => \inst4|DTS[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|DTS\(12));

-- Location: LCCOMB_X23_Y19_N4
\inst2|Equal1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~19_combout\ = (!\inst2|addNo~1_combout\ & (\inst2|Equal1~18_combout\ & (!\inst2|addNo~28_combout\ & \inst2|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addNo~1_combout\,
	datab => \inst2|Equal1~18_combout\,
	datac => \inst2|addNo~28_combout\,
	datad => \inst2|Equal1~10_combout\,
	combout => \inst2|Equal1~19_combout\);

-- Location: LCCOMB_X23_Y19_N24
\inst2|ADDRESS~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ADDRESS~2_combout\ = (!\inst2|Equal1~19_combout\ & ((\inst2|Equal13~0_combout\) # ((\inst2|WideNor0~5_combout\) # (!\inst2|WideNor0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal13~0_combout\,
	datab => \inst2|WideNor0~3_combout\,
	datac => \inst2|Equal1~19_combout\,
	datad => \inst2|WideNor0~5_combout\,
	combout => \inst2|ADDRESS~2_combout\);

-- Location: FF_X23_Y19_N25
\inst2|ADDRESS[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|ADDRESS~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ADDRESS\(15));

-- Location: LCCOMB_X30_Y21_N28
\inst4|DTS[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|DTS[15]~feeder_combout\ = \inst2|ADDRESS\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ADDRESS\(15),
	combout => \inst4|DTS[15]~feeder_combout\);

-- Location: FF_X30_Y21_N29
\inst4|DTS[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|DTS[15]~feeder_combout\,
	ena => \inst4|DTS[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|DTS\(15));

-- Location: LCCOMB_X23_Y19_N18
\inst2|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr0~combout\ = (!\inst2|Equal1~19_combout\ & (!\inst2|WideNor0~2_combout\ & ((\inst2|WideNor0~5_combout\) # (!\inst2|WideNor0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~19_combout\,
	datab => \inst2|WideNor0~2_combout\,
	datac => \inst2|WideNor0~5_combout\,
	datad => \inst2|WideNor0~4_combout\,
	combout => \inst2|WideOr0~combout\);

-- Location: FF_X23_Y19_N19
\inst2|ADDRESS[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst2|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ADDRESS\(14));

-- Location: FF_X30_Y21_N19
\inst4|DTS[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst2|ADDRESS\(14),
	sload => VCC,
	ena => \inst4|DTS[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|DTS\(14));

-- Location: LCCOMB_X30_Y21_N18
\inst4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst4|Add4~0_combout\ & (\inst4|DTS\(15))) # (!\inst4|Add4~0_combout\ & ((\inst4|DTS\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|DTS\(15),
	datac => \inst4|DTS\(14),
	datad => \inst4|Add4~0_combout\,
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y21_N20
\inst4|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux0~1_combout\ = (\inst4|Add4~4_combout\ & ((\inst4|Add4~2_combout\ & ((\inst4|Mux0~0_combout\))) # (!\inst4|Add4~2_combout\ & (\inst4|DTS\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add4~2_combout\,
	datab => \inst4|Add4~4_combout\,
	datac => \inst4|DTS\(12),
	datad => \inst4|Mux0~0_combout\,
	combout => \inst4|Mux0~1_combout\);

-- Location: LCCOMB_X30_Y22_N0
\inst4|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux0~4_combout\ = (\inst4|Add4~6_combout\ & ((\inst4|Mux0~1_combout\) # ((!\inst4|Add4~4_combout\ & \inst4|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add4~6_combout\,
	datab => \inst4|Add4~4_combout\,
	datac => \inst4|Mux0~3_combout\,
	datad => \inst4|Mux0~1_combout\,
	combout => \inst4|Mux0~4_combout\);

-- Location: FF_X30_Y22_N1
\inst4|MOSI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst4|Mux0~4_combout\,
	ena => \inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MOSI~q\);

-- Location: FF_X11_Y28_N5
\inst6|PP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~4_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(2));

-- Location: LCCOMB_X11_Y28_N0
\inst6|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~0_combout\ = \inst6|PP\(0) $ (VCC)
-- \inst6|Add5~1\ = CARRY(\inst6|PP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(0),
	datad => VCC,
	combout => \inst6|Add5~0_combout\,
	cout => \inst6|Add5~1\);

-- Location: FF_X11_Y28_N1
\inst6|PP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~0_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(0));

-- Location: LCCOMB_X11_Y28_N2
\inst6|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~2_combout\ = (\inst6|PP\(1) & (\inst6|Add5~1\ & VCC)) # (!\inst6|PP\(1) & (!\inst6|Add5~1\))
-- \inst6|Add5~3\ = CARRY((!\inst6|PP\(1) & !\inst6|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(1),
	datad => VCC,
	cin => \inst6|Add5~1\,
	combout => \inst6|Add5~2_combout\,
	cout => \inst6|Add5~3\);

-- Location: FF_X11_Y28_N3
\inst6|PP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~2_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(1));

-- Location: LCCOMB_X11_Y28_N4
\inst6|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~4_combout\ = (\inst6|PP\(2) & ((GND) # (!\inst6|Add5~3\))) # (!\inst6|PP\(2) & (\inst6|Add5~3\ $ (GND)))
-- \inst6|Add5~5\ = CARRY((\inst6|PP\(2)) # (!\inst6|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(2),
	datad => VCC,
	cin => \inst6|Add5~3\,
	combout => \inst6|Add5~4_combout\,
	cout => \inst6|Add5~5\);

-- Location: LCCOMB_X11_Y30_N18
\inst6|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal9~0_combout\ = (!\inst6|Add5~4_combout\ & !\inst6|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add5~4_combout\,
	datad => \inst6|Add5~2_combout\,
	combout => \inst6|Equal9~0_combout\);

-- Location: IOIBUF_X16_Y34_N1
\MISO~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MISO,
	o => \MISO~input_o\);

-- Location: FF_X11_Y28_N7
\inst6|PP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~6_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(3));

-- Location: LCCOMB_X11_Y28_N6
\inst6|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~6_combout\ = (\inst6|PP\(3) & (\inst6|Add5~5\ & VCC)) # (!\inst6|PP\(3) & (!\inst6|Add5~5\))
-- \inst6|Add5~7\ = CARRY((!\inst6|PP\(3) & !\inst6|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PP\(3),
	datad => VCC,
	cin => \inst6|Add5~5\,
	combout => \inst6|Add5~6_combout\,
	cout => \inst6|Add5~7\);

-- Location: LCCOMB_X11_Y30_N0
\inst6|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~0_combout\ = (!\inst6|Add5~6_combout\ & (\inst6|MOSI~0_combout\ & !\inst6|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add5~6_combout\,
	datac => \inst6|MOSI~0_combout\,
	datad => \inst6|Add5~0_combout\,
	combout => \inst6|Decoder0~0_combout\);

-- Location: LCCOMB_X11_Y30_N8
\inst6|dwReg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|dwReg[0]~0_combout\ = (\inst6|Equal9~0_combout\ & ((\inst6|Decoder0~0_combout\ & (\MISO~input_o\)) # (!\inst6|Decoder0~0_combout\ & ((\inst6|dwReg\(0)))))) # (!\inst6|Equal9~0_combout\ & (((\inst6|dwReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal9~0_combout\,
	datab => \MISO~input_o\,
	datac => \inst6|dwReg\(0),
	datad => \inst6|Decoder0~0_combout\,
	combout => \inst6|dwReg[0]~0_combout\);

-- Location: FF_X11_Y30_N9
\inst6|dwReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|dwReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dwReg\(0));

-- Location: LCCOMB_X10_Y27_N0
\inst6|PP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|PP~0_combout\ = (!\inst6|Add5~8_combout\ & !\inst6|Equal9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add5~8_combout\,
	datad => \inst6|Equal9~10_combout\,
	combout => \inst6|PP~0_combout\);

-- Location: FF_X10_Y27_N1
\inst6|PP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|PP~0_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(4));

-- Location: LCCOMB_X11_Y28_N8
\inst6|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~8_combout\ = (\inst6|PP\(4) & (\inst6|Add5~7\ $ (GND))) # (!\inst6|PP\(4) & ((GND) # (!\inst6|Add5~7\)))
-- \inst6|Add5~9\ = CARRY((!\inst6|Add5~7\) # (!\inst6|PP\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PP\(4),
	datad => VCC,
	cin => \inst6|Add5~7\,
	combout => \inst6|Add5~8_combout\,
	cout => \inst6|Add5~9\);

-- Location: FF_X11_Y28_N13
\inst6|PP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~12_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(6));

-- Location: LCCOMB_X11_Y28_N10
\inst6|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~10_combout\ = (\inst6|PP\(5) & (\inst6|Add5~9\ & VCC)) # (!\inst6|PP\(5) & (!\inst6|Add5~9\))
-- \inst6|Add5~11\ = CARRY((!\inst6|PP\(5) & !\inst6|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PP\(5),
	datad => VCC,
	cin => \inst6|Add5~9\,
	combout => \inst6|Add5~10_combout\,
	cout => \inst6|Add5~11\);

-- Location: FF_X11_Y28_N11
\inst6|PP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~10_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(5));

-- Location: LCCOMB_X11_Y28_N12
\inst6|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~12_combout\ = (\inst6|PP\(6) & ((GND) # (!\inst6|Add5~11\))) # (!\inst6|PP\(6) & (\inst6|Add5~11\ $ (GND)))
-- \inst6|Add5~13\ = CARRY((\inst6|PP\(6)) # (!\inst6|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PP\(6),
	datad => VCC,
	cin => \inst6|Add5~11\,
	combout => \inst6|Add5~12_combout\,
	cout => \inst6|Add5~13\);

-- Location: FF_X11_Y28_N15
\inst6|PP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~14_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(7));

-- Location: LCCOMB_X11_Y28_N14
\inst6|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~14_combout\ = (\inst6|PP\(7) & (\inst6|Add5~13\ & VCC)) # (!\inst6|PP\(7) & (!\inst6|Add5~13\))
-- \inst6|Add5~15\ = CARRY((!\inst6|PP\(7) & !\inst6|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(7),
	datad => VCC,
	cin => \inst6|Add5~13\,
	combout => \inst6|Add5~14_combout\,
	cout => \inst6|Add5~15\);

-- Location: LCCOMB_X10_Y28_N30
\inst6|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal9~1_combout\ = (!\inst6|Add5~8_combout\ & (!\inst6|Add5~12_combout\ & (!\inst6|Add5~14_combout\ & !\inst6|Add5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~8_combout\,
	datab => \inst6|Add5~12_combout\,
	datac => \inst6|Add5~14_combout\,
	datad => \inst6|Add5~10_combout\,
	combout => \inst6|Equal9~1_combout\);

-- Location: LCCOMB_X10_Y27_N22
\inst6|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal9~2_combout\ = (!\inst6|Add5~6_combout\ & (!\inst6|Add5~0_combout\ & (\inst6|Equal9~1_combout\ & \inst6|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~6_combout\,
	datab => \inst6|Add5~0_combout\,
	datac => \inst6|Equal9~1_combout\,
	datad => \inst6|Equal9~0_combout\,
	combout => \inst6|Equal9~2_combout\);

-- Location: FF_X11_Y28_N27
\inst6|PP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~26_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(13));

-- Location: LCCOMB_X11_Y28_N16
\inst6|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~16_combout\ = (\inst6|PP\(8) & ((GND) # (!\inst6|Add5~15\))) # (!\inst6|PP\(8) & (\inst6|Add5~15\ $ (GND)))
-- \inst6|Add5~17\ = CARRY((\inst6|PP\(8)) # (!\inst6|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(8),
	datad => VCC,
	cin => \inst6|Add5~15\,
	combout => \inst6|Add5~16_combout\,
	cout => \inst6|Add5~17\);

-- Location: FF_X11_Y28_N17
\inst6|PP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~16_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(8));

-- Location: LCCOMB_X11_Y28_N18
\inst6|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~18_combout\ = (\inst6|PP\(9) & (\inst6|Add5~17\ & VCC)) # (!\inst6|PP\(9) & (!\inst6|Add5~17\))
-- \inst6|Add5~19\ = CARRY((!\inst6|PP\(9) & !\inst6|Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(9),
	datad => VCC,
	cin => \inst6|Add5~17\,
	combout => \inst6|Add5~18_combout\,
	cout => \inst6|Add5~19\);

-- Location: FF_X11_Y28_N19
\inst6|PP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~18_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(9));

-- Location: LCCOMB_X11_Y28_N20
\inst6|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~20_combout\ = (\inst6|PP\(10) & ((GND) # (!\inst6|Add5~19\))) # (!\inst6|PP\(10) & (\inst6|Add5~19\ $ (GND)))
-- \inst6|Add5~21\ = CARRY((\inst6|PP\(10)) # (!\inst6|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(10),
	datad => VCC,
	cin => \inst6|Add5~19\,
	combout => \inst6|Add5~20_combout\,
	cout => \inst6|Add5~21\);

-- Location: FF_X11_Y28_N21
\inst6|PP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~20_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(10));

-- Location: LCCOMB_X11_Y28_N22
\inst6|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~22_combout\ = (\inst6|PP\(11) & (\inst6|Add5~21\ & VCC)) # (!\inst6|PP\(11) & (!\inst6|Add5~21\))
-- \inst6|Add5~23\ = CARRY((!\inst6|PP\(11) & !\inst6|Add5~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PP\(11),
	datad => VCC,
	cin => \inst6|Add5~21\,
	combout => \inst6|Add5~22_combout\,
	cout => \inst6|Add5~23\);

-- Location: FF_X11_Y28_N23
\inst6|PP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~22_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(11));

-- Location: LCCOMB_X11_Y28_N24
\inst6|Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~24_combout\ = (\inst6|PP\(12) & ((GND) # (!\inst6|Add5~23\))) # (!\inst6|PP\(12) & (\inst6|Add5~23\ $ (GND)))
-- \inst6|Add5~25\ = CARRY((\inst6|PP\(12)) # (!\inst6|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(12),
	datad => VCC,
	cin => \inst6|Add5~23\,
	combout => \inst6|Add5~24_combout\,
	cout => \inst6|Add5~25\);

-- Location: FF_X11_Y28_N25
\inst6|PP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~24_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(12));

-- Location: LCCOMB_X11_Y28_N26
\inst6|Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~26_combout\ = (\inst6|PP\(13) & (\inst6|Add5~25\ & VCC)) # (!\inst6|PP\(13) & (!\inst6|Add5~25\))
-- \inst6|Add5~27\ = CARRY((!\inst6|PP\(13) & !\inst6|Add5~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PP\(13),
	datad => VCC,
	cin => \inst6|Add5~25\,
	combout => \inst6|Add5~26_combout\,
	cout => \inst6|Add5~27\);

-- Location: FF_X11_Y28_N29
\inst6|PP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~28_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(14));

-- Location: LCCOMB_X11_Y28_N28
\inst6|Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~28_combout\ = (\inst6|PP\(14) & ((GND) # (!\inst6|Add5~27\))) # (!\inst6|PP\(14) & (\inst6|Add5~27\ $ (GND)))
-- \inst6|Add5~29\ = CARRY((\inst6|PP\(14)) # (!\inst6|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(14),
	datad => VCC,
	cin => \inst6|Add5~27\,
	combout => \inst6|Add5~28_combout\,
	cout => \inst6|Add5~29\);

-- Location: FF_X11_Y28_N31
\inst6|PP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~30_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(15));

-- Location: LCCOMB_X11_Y28_N30
\inst6|Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~30_combout\ = (\inst6|PP\(15) & (\inst6|Add5~29\ & VCC)) # (!\inst6|PP\(15) & (!\inst6|Add5~29\))
-- \inst6|Add5~31\ = CARRY((!\inst6|PP\(15) & !\inst6|Add5~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PP\(15),
	datad => VCC,
	cin => \inst6|Add5~29\,
	combout => \inst6|Add5~30_combout\,
	cout => \inst6|Add5~31\);

-- Location: LCCOMB_X10_Y28_N10
\inst6|Equal9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal9~4_combout\ = (!\inst6|Add5~26_combout\ & (!\inst6|Add5~28_combout\ & (!\inst6|Add5~30_combout\ & !\inst6|Add5~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~26_combout\,
	datab => \inst6|Add5~28_combout\,
	datac => \inst6|Add5~30_combout\,
	datad => \inst6|Add5~24_combout\,
	combout => \inst6|Equal9~4_combout\);

-- Location: LCCOMB_X10_Y28_N24
\inst6|Equal9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal9~3_combout\ = (!\inst6|Add5~20_combout\ & (!\inst6|Add5~18_combout\ & (!\inst6|Add5~22_combout\ & !\inst6|Add5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~20_combout\,
	datab => \inst6|Add5~18_combout\,
	datac => \inst6|Add5~22_combout\,
	datad => \inst6|Add5~16_combout\,
	combout => \inst6|Equal9~3_combout\);

-- Location: FF_X11_Y27_N15
\inst6|PP[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~46_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(23));

-- Location: LCCOMB_X11_Y27_N0
\inst6|Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~32_combout\ = (\inst6|PP\(16) & ((GND) # (!\inst6|Add5~31\))) # (!\inst6|PP\(16) & (\inst6|Add5~31\ $ (GND)))
-- \inst6|Add5~33\ = CARRY((\inst6|PP\(16)) # (!\inst6|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(16),
	datad => VCC,
	cin => \inst6|Add5~31\,
	combout => \inst6|Add5~32_combout\,
	cout => \inst6|Add5~33\);

-- Location: FF_X11_Y27_N1
\inst6|PP[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~32_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(16));

-- Location: LCCOMB_X11_Y27_N2
\inst6|Add5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~34_combout\ = (\inst6|PP\(17) & (\inst6|Add5~33\ & VCC)) # (!\inst6|PP\(17) & (!\inst6|Add5~33\))
-- \inst6|Add5~35\ = CARRY((!\inst6|PP\(17) & !\inst6|Add5~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(17),
	datad => VCC,
	cin => \inst6|Add5~33\,
	combout => \inst6|Add5~34_combout\,
	cout => \inst6|Add5~35\);

-- Location: FF_X11_Y27_N3
\inst6|PP[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~34_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(17));

-- Location: LCCOMB_X11_Y27_N4
\inst6|Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~36_combout\ = (\inst6|PP\(18) & ((GND) # (!\inst6|Add5~35\))) # (!\inst6|PP\(18) & (\inst6|Add5~35\ $ (GND)))
-- \inst6|Add5~37\ = CARRY((\inst6|PP\(18)) # (!\inst6|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(18),
	datad => VCC,
	cin => \inst6|Add5~35\,
	combout => \inst6|Add5~36_combout\,
	cout => \inst6|Add5~37\);

-- Location: FF_X11_Y27_N5
\inst6|PP[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~36_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(18));

-- Location: LCCOMB_X11_Y27_N6
\inst6|Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~38_combout\ = (\inst6|PP\(19) & (\inst6|Add5~37\ & VCC)) # (!\inst6|PP\(19) & (!\inst6|Add5~37\))
-- \inst6|Add5~39\ = CARRY((!\inst6|PP\(19) & !\inst6|Add5~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PP\(19),
	datad => VCC,
	cin => \inst6|Add5~37\,
	combout => \inst6|Add5~38_combout\,
	cout => \inst6|Add5~39\);

-- Location: FF_X11_Y27_N7
\inst6|PP[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~38_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(19));

-- Location: LCCOMB_X11_Y27_N8
\inst6|Add5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~40_combout\ = (\inst6|PP\(20) & ((GND) # (!\inst6|Add5~39\))) # (!\inst6|PP\(20) & (\inst6|Add5~39\ $ (GND)))
-- \inst6|Add5~41\ = CARRY((\inst6|PP\(20)) # (!\inst6|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(20),
	datad => VCC,
	cin => \inst6|Add5~39\,
	combout => \inst6|Add5~40_combout\,
	cout => \inst6|Add5~41\);

-- Location: FF_X11_Y27_N9
\inst6|PP[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~40_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(20));

-- Location: LCCOMB_X11_Y27_N10
\inst6|Add5~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~42_combout\ = (\inst6|PP\(21) & (\inst6|Add5~41\ & VCC)) # (!\inst6|PP\(21) & (!\inst6|Add5~41\))
-- \inst6|Add5~43\ = CARRY((!\inst6|PP\(21) & !\inst6|Add5~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PP\(21),
	datad => VCC,
	cin => \inst6|Add5~41\,
	combout => \inst6|Add5~42_combout\,
	cout => \inst6|Add5~43\);

-- Location: FF_X11_Y27_N11
\inst6|PP[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~42_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(21));

-- Location: LCCOMB_X11_Y27_N12
\inst6|Add5~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~44_combout\ = (\inst6|PP\(22) & ((GND) # (!\inst6|Add5~43\))) # (!\inst6|PP\(22) & (\inst6|Add5~43\ $ (GND)))
-- \inst6|Add5~45\ = CARRY((\inst6|PP\(22)) # (!\inst6|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PP\(22),
	datad => VCC,
	cin => \inst6|Add5~43\,
	combout => \inst6|Add5~44_combout\,
	cout => \inst6|Add5~45\);

-- Location: FF_X11_Y27_N13
\inst6|PP[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~44_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(22));

-- Location: LCCOMB_X11_Y27_N14
\inst6|Add5~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~46_combout\ = (\inst6|PP\(23) & (\inst6|Add5~45\ & VCC)) # (!\inst6|PP\(23) & (!\inst6|Add5~45\))
-- \inst6|Add5~47\ = CARRY((!\inst6|PP\(23) & !\inst6|Add5~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(23),
	datad => VCC,
	cin => \inst6|Add5~45\,
	combout => \inst6|Add5~46_combout\,
	cout => \inst6|Add5~47\);

-- Location: LCCOMB_X10_Y27_N26
\inst6|Equal9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal9~6_combout\ = (!\inst6|Add5~46_combout\ & (!\inst6|Add5~40_combout\ & (!\inst6|Add5~42_combout\ & !\inst6|Add5~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~46_combout\,
	datab => \inst6|Add5~40_combout\,
	datac => \inst6|Add5~42_combout\,
	datad => \inst6|Add5~44_combout\,
	combout => \inst6|Equal9~6_combout\);

-- Location: LCCOMB_X10_Y27_N28
\inst6|Equal9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal9~5_combout\ = (!\inst6|Add5~36_combout\ & (!\inst6|Add5~34_combout\ & (!\inst6|Add5~32_combout\ & !\inst6|Add5~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~36_combout\,
	datab => \inst6|Add5~34_combout\,
	datac => \inst6|Add5~32_combout\,
	datad => \inst6|Add5~38_combout\,
	combout => \inst6|Equal9~5_combout\);

-- Location: FF_X11_Y27_N25
\inst6|PP[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~56_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(28));

-- Location: LCCOMB_X11_Y27_N16
\inst6|Add5~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~48_combout\ = (\inst6|PP\(24) & ((GND) # (!\inst6|Add5~47\))) # (!\inst6|PP\(24) & (\inst6|Add5~47\ $ (GND)))
-- \inst6|Add5~49\ = CARRY((\inst6|PP\(24)) # (!\inst6|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(24),
	datad => VCC,
	cin => \inst6|Add5~47\,
	combout => \inst6|Add5~48_combout\,
	cout => \inst6|Add5~49\);

-- Location: FF_X11_Y27_N17
\inst6|PP[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~48_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(24));

-- Location: LCCOMB_X11_Y27_N18
\inst6|Add5~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~50_combout\ = (\inst6|PP\(25) & (\inst6|Add5~49\ & VCC)) # (!\inst6|PP\(25) & (!\inst6|Add5~49\))
-- \inst6|Add5~51\ = CARRY((!\inst6|PP\(25) & !\inst6|Add5~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(25),
	datad => VCC,
	cin => \inst6|Add5~49\,
	combout => \inst6|Add5~50_combout\,
	cout => \inst6|Add5~51\);

-- Location: FF_X11_Y27_N19
\inst6|PP[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~50_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(25));

-- Location: LCCOMB_X11_Y27_N20
\inst6|Add5~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~52_combout\ = (\inst6|PP\(26) & ((GND) # (!\inst6|Add5~51\))) # (!\inst6|PP\(26) & (\inst6|Add5~51\ $ (GND)))
-- \inst6|Add5~53\ = CARRY((\inst6|PP\(26)) # (!\inst6|Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(26),
	datad => VCC,
	cin => \inst6|Add5~51\,
	combout => \inst6|Add5~52_combout\,
	cout => \inst6|Add5~53\);

-- Location: FF_X11_Y27_N21
\inst6|PP[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~52_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(26));

-- Location: LCCOMB_X11_Y27_N22
\inst6|Add5~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~54_combout\ = (\inst6|PP\(27) & (\inst6|Add5~53\ & VCC)) # (!\inst6|PP\(27) & (!\inst6|Add5~53\))
-- \inst6|Add5~55\ = CARRY((!\inst6|PP\(27) & !\inst6|Add5~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PP\(27),
	datad => VCC,
	cin => \inst6|Add5~53\,
	combout => \inst6|Add5~54_combout\,
	cout => \inst6|Add5~55\);

-- Location: FF_X11_Y27_N23
\inst6|PP[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~54_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(27));

-- Location: LCCOMB_X11_Y27_N24
\inst6|Add5~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~56_combout\ = (\inst6|PP\(28) & ((GND) # (!\inst6|Add5~55\))) # (!\inst6|PP\(28) & (\inst6|Add5~55\ $ (GND)))
-- \inst6|Add5~57\ = CARRY((\inst6|PP\(28)) # (!\inst6|Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(28),
	datad => VCC,
	cin => \inst6|Add5~55\,
	combout => \inst6|Add5~56_combout\,
	cout => \inst6|Add5~57\);

-- Location: FF_X11_Y27_N27
\inst6|PP[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~58_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(29));

-- Location: LCCOMB_X11_Y27_N26
\inst6|Add5~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~58_combout\ = (\inst6|PP\(29) & (\inst6|Add5~57\ & VCC)) # (!\inst6|PP\(29) & (!\inst6|Add5~57\))
-- \inst6|Add5~59\ = CARRY((!\inst6|PP\(29) & !\inst6|Add5~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PP\(29),
	datad => VCC,
	cin => \inst6|Add5~57\,
	combout => \inst6|Add5~58_combout\,
	cout => \inst6|Add5~59\);

-- Location: FF_X11_Y27_N31
\inst6|PP[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~62_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(31));

-- Location: LCCOMB_X11_Y27_N28
\inst6|Add5~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~60_combout\ = (\inst6|PP\(30) & ((GND) # (!\inst6|Add5~59\))) # (!\inst6|PP\(30) & (\inst6|Add5~59\ $ (GND)))
-- \inst6|Add5~61\ = CARRY((\inst6|PP\(30)) # (!\inst6|Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|PP\(30),
	datad => VCC,
	cin => \inst6|Add5~59\,
	combout => \inst6|Add5~60_combout\,
	cout => \inst6|Add5~61\);

-- Location: FF_X11_Y27_N29
\inst6|PP[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|Add5~60_combout\,
	ena => \inst6|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|PP\(30));

-- Location: LCCOMB_X11_Y27_N30
\inst6|Add5~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~62_combout\ = \inst6|PP\(31) $ (!\inst6|Add5~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|PP\(31),
	cin => \inst6|Add5~61\,
	combout => \inst6|Add5~62_combout\);

-- Location: LCCOMB_X10_Y27_N14
\inst6|Equal9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal9~8_combout\ = (!\inst6|Add5~56_combout\ & (!\inst6|Add5~58_combout\ & (!\inst6|Add5~62_combout\ & !\inst6|Add5~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~56_combout\,
	datab => \inst6|Add5~58_combout\,
	datac => \inst6|Add5~62_combout\,
	datad => \inst6|Add5~60_combout\,
	combout => \inst6|Equal9~8_combout\);

-- Location: LCCOMB_X10_Y27_N16
\inst6|Equal9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal9~7_combout\ = (!\inst6|Add5~52_combout\ & (!\inst6|Add5~48_combout\ & (!\inst6|Add5~50_combout\ & !\inst6|Add5~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~52_combout\,
	datab => \inst6|Add5~48_combout\,
	datac => \inst6|Add5~50_combout\,
	datad => \inst6|Add5~54_combout\,
	combout => \inst6|Equal9~7_combout\);

-- Location: LCCOMB_X10_Y27_N12
\inst6|Equal9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal9~9_combout\ = (\inst6|Equal9~6_combout\ & (\inst6|Equal9~5_combout\ & (\inst6|Equal9~8_combout\ & \inst6|Equal9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal9~6_combout\,
	datab => \inst6|Equal9~5_combout\,
	datac => \inst6|Equal9~8_combout\,
	datad => \inst6|Equal9~7_combout\,
	combout => \inst6|Equal9~9_combout\);

-- Location: LCCOMB_X10_Y27_N10
\inst6|Equal9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal9~10_combout\ = (\inst6|Equal9~2_combout\ & (\inst6|Equal9~4_combout\ & (\inst6|Equal9~3_combout\ & \inst6|Equal9~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal9~2_combout\,
	datab => \inst6|Equal9~4_combout\,
	datac => \inst6|Equal9~3_combout\,
	datad => \inst6|Equal9~9_combout\,
	combout => \inst6|Equal9~10_combout\);

-- Location: LCCOMB_X10_Y30_N6
\inst6|rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|rtl~0_combout\ = (\inst6|rtc~q\ & ((\inst6|rtl~q\) # (\inst6|Equal9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|rtc~q\,
	datac => \inst6|rtl~q\,
	datad => \inst6|Equal9~10_combout\,
	combout => \inst6|rtl~0_combout\);

-- Location: FF_X10_Y30_N7
\inst6|rtl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|rtl~0_combout\,
	ena => \inst6|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|rtl~q\);

-- Location: FF_X11_Y30_N11
\inst6|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst6|dwReg\(0),
	sload => VCC,
	ena => \inst6|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|rx_data\(0));

-- Location: LCCOMB_X11_Y30_N10
\inst6|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~1_combout\ = (\inst6|MOSI~0_combout\ & (!\inst6|Add5~6_combout\ & \inst6|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|MOSI~0_combout\,
	datab => \inst6|Add5~6_combout\,
	datad => \inst6|Add5~0_combout\,
	combout => \inst6|Decoder0~1_combout\);

-- Location: LCCOMB_X11_Y30_N14
\inst6|dwReg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|dwReg[1]~1_combout\ = (\inst6|Equal9~0_combout\ & ((\inst6|Decoder0~1_combout\ & (\MISO~input_o\)) # (!\inst6|Decoder0~1_combout\ & ((\inst6|dwReg\(1)))))) # (!\inst6|Equal9~0_combout\ & (((\inst6|dwReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal9~0_combout\,
	datab => \MISO~input_o\,
	datac => \inst6|dwReg\(1),
	datad => \inst6|Decoder0~1_combout\,
	combout => \inst6|dwReg[1]~1_combout\);

-- Location: FF_X11_Y30_N15
\inst6|dwReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|dwReg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dwReg\(1));

-- Location: FF_X11_Y30_N13
\inst6|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst6|dwReg\(1),
	sload => VCC,
	ena => \inst6|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|rx_data\(1));

-- Location: LCCOMB_X11_Y30_N30
\inst6|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~2_combout\ = (\inst6|MOSI~0_combout\ & (!\inst6|Add5~0_combout\ & (!\inst6|Add5~6_combout\ & \inst6|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|MOSI~0_combout\,
	datab => \inst6|Add5~0_combout\,
	datac => \inst6|Add5~6_combout\,
	datad => \inst6|Add5~2_combout\,
	combout => \inst6|Decoder0~2_combout\);

-- Location: LCCOMB_X11_Y30_N4
\inst6|dwReg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|dwReg[2]~2_combout\ = (\inst6|Add5~4_combout\ & (((\inst6|dwReg\(2))))) # (!\inst6|Add5~4_combout\ & ((\inst6|Decoder0~2_combout\ & (\MISO~input_o\)) # (!\inst6|Decoder0~2_combout\ & ((\inst6|dwReg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~4_combout\,
	datab => \MISO~input_o\,
	datac => \inst6|dwReg\(2),
	datad => \inst6|Decoder0~2_combout\,
	combout => \inst6|dwReg[2]~2_combout\);

-- Location: FF_X11_Y30_N5
\inst6|dwReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|dwReg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dwReg\(2));

-- Location: FF_X11_Y30_N27
\inst6|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst6|dwReg\(2),
	sload => VCC,
	ena => \inst6|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|rx_data\(2));

-- Location: LCCOMB_X11_Y30_N20
\inst6|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~3_combout\ = (\inst6|MOSI~0_combout\ & (\inst6|Add5~0_combout\ & (!\inst6|Add5~6_combout\ & \inst6|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|MOSI~0_combout\,
	datab => \inst6|Add5~0_combout\,
	datac => \inst6|Add5~6_combout\,
	datad => \inst6|Add5~2_combout\,
	combout => \inst6|Decoder0~3_combout\);

-- Location: LCCOMB_X11_Y30_N6
\inst6|dwReg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|dwReg[3]~3_combout\ = (\inst6|Add5~4_combout\ & (((\inst6|dwReg\(3))))) # (!\inst6|Add5~4_combout\ & ((\inst6|Decoder0~3_combout\ & (\MISO~input_o\)) # (!\inst6|Decoder0~3_combout\ & ((\inst6|dwReg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~4_combout\,
	datab => \MISO~input_o\,
	datac => \inst6|dwReg\(3),
	datad => \inst6|Decoder0~3_combout\,
	combout => \inst6|dwReg[3]~3_combout\);

-- Location: FF_X11_Y30_N7
\inst6|dwReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|dwReg[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dwReg\(3));

-- Location: LCCOMB_X11_Y30_N22
\inst6|rx_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|rx_data[3]~feeder_combout\ = \inst6|dwReg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|dwReg\(3),
	combout => \inst6|rx_data[3]~feeder_combout\);

-- Location: FF_X11_Y30_N23
\inst6|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|rx_data[3]~feeder_combout\,
	ena => \inst6|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|rx_data\(3));

-- Location: LCCOMB_X11_Y30_N12
\inst6|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~4_combout\ = (\inst6|Add5~4_combout\ & !\inst6|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add5~4_combout\,
	datad => \inst6|Add5~2_combout\,
	combout => \inst6|Decoder0~4_combout\);

-- Location: LCCOMB_X11_Y30_N28
\inst6|dwReg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|dwReg[4]~4_combout\ = (\inst6|Decoder0~4_combout\ & ((\inst6|Decoder0~0_combout\ & (\MISO~input_o\)) # (!\inst6|Decoder0~0_combout\ & ((\inst6|dwReg\(4)))))) # (!\inst6|Decoder0~4_combout\ & (((\inst6|dwReg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Decoder0~4_combout\,
	datab => \MISO~input_o\,
	datac => \inst6|dwReg\(4),
	datad => \inst6|Decoder0~0_combout\,
	combout => \inst6|dwReg[4]~4_combout\);

-- Location: FF_X11_Y30_N29
\inst6|dwReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|dwReg[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dwReg\(4));

-- Location: LCCOMB_X10_Y30_N30
\inst6|rx_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|rx_data[4]~feeder_combout\ = \inst6|dwReg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dwReg\(4),
	combout => \inst6|rx_data[4]~feeder_combout\);

-- Location: FF_X10_Y30_N31
\inst6|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|rx_data[4]~feeder_combout\,
	ena => \inst6|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|rx_data\(4));

-- Location: LCCOMB_X11_Y30_N24
\inst6|dwReg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|dwReg[5]~5_combout\ = (\inst6|Decoder0~4_combout\ & ((\inst6|Decoder0~1_combout\ & (\MISO~input_o\)) # (!\inst6|Decoder0~1_combout\ & ((\inst6|dwReg\(5)))))) # (!\inst6|Decoder0~4_combout\ & (((\inst6|dwReg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Decoder0~4_combout\,
	datab => \MISO~input_o\,
	datac => \inst6|dwReg\(5),
	datad => \inst6|Decoder0~1_combout\,
	combout => \inst6|dwReg[5]~5_combout\);

-- Location: FF_X11_Y30_N25
\inst6|dwReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|dwReg[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dwReg\(5));

-- Location: LCCOMB_X10_Y30_N12
\inst6|rx_data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|rx_data[5]~feeder_combout\ = \inst6|dwReg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dwReg\(5),
	combout => \inst6|rx_data[5]~feeder_combout\);

-- Location: FF_X10_Y30_N13
\inst6|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|rx_data[5]~feeder_combout\,
	ena => \inst6|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|rx_data\(5));

-- Location: LCCOMB_X11_Y30_N16
\inst6|dwReg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|dwReg[6]~6_combout\ = (\inst6|Add5~4_combout\ & ((\inst6|Decoder0~2_combout\ & (\MISO~input_o\)) # (!\inst6|Decoder0~2_combout\ & ((\inst6|dwReg\(6)))))) # (!\inst6|Add5~4_combout\ & (((\inst6|dwReg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~4_combout\,
	datab => \MISO~input_o\,
	datac => \inst6|dwReg\(6),
	datad => \inst6|Decoder0~2_combout\,
	combout => \inst6|dwReg[6]~6_combout\);

-- Location: FF_X11_Y30_N17
\inst6|dwReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|dwReg[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dwReg\(6));

-- Location: LCCOMB_X10_Y30_N22
\inst6|rx_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|rx_data[6]~feeder_combout\ = \inst6|dwReg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dwReg\(6),
	combout => \inst6|rx_data[6]~feeder_combout\);

-- Location: FF_X10_Y30_N23
\inst6|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|rx_data[6]~feeder_combout\,
	ena => \inst6|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|rx_data\(6));

-- Location: LCCOMB_X11_Y30_N2
\inst6|dwReg[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|dwReg[7]~7_combout\ = (\inst6|Add5~4_combout\ & ((\inst6|Decoder0~3_combout\ & (\MISO~input_o\)) # (!\inst6|Decoder0~3_combout\ & ((\inst6|dwReg\(7)))))) # (!\inst6|Add5~4_combout\ & (((\inst6|dwReg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~4_combout\,
	datab => \MISO~input_o\,
	datac => \inst6|dwReg\(7),
	datad => \inst6|Decoder0~3_combout\,
	combout => \inst6|dwReg[7]~7_combout\);

-- Location: FF_X11_Y30_N3
\inst6|dwReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|dwReg[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dwReg\(7));

-- Location: LCCOMB_X10_Y30_N4
\inst6|rx_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|rx_data[7]~feeder_combout\ = \inst6|dwReg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dwReg\(7),
	combout => \inst6|rx_data[7]~feeder_combout\);

-- Location: FF_X10_Y30_N5
\inst6|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst6|rx_data[7]~feeder_combout\,
	ena => \inst6|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|rx_data\(7));

ww_CS <= \CS~output_o\;

ww_MSTR_CLK <= \MSTR_CLK~output_o\;

ww_MOSI <= \MOSI~output_o\;

ww_MPU_CS <= \MPU_CS~output_o\;

ww_MPU_MSTR_CLK <= \MPU_MSTR_CLK~output_o\;

ww_MPU_MOSI <= \MPU_MOSI~output_o\;

ww_LED0 <= \LED0~output_o\;

ww_LED1 <= \LED1~output_o\;

ww_LED2 <= \LED2~output_o\;

ww_LED3 <= \LED3~output_o\;

ww_LED4 <= \LED4~output_o\;

ww_LED5 <= \LED5~output_o\;

ww_LED6 <= \LED6~output_o\;

ww_LED7 <= \LED7~output_o\;
END structure;


