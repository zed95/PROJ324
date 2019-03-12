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

-- DATE "03/11/2019 16:40:13"

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
	LED0 : OUT std_logic;
	LED1 : OUT std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic;
	LED4 : OUT std_logic;
	LED5 : OUT std_logic;
	LED6 : OUT std_logic;
	LED7 : OUT std_logic;
	MPU_CS : OUT std_logic;
	MPU_MSTR_CLK : OUT std_logic;
	MPU_MOSI : OUT std_logic
	);
END Data_Extraction_System;

-- Design Ports Information
-- CS	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MISO_MPU	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSTR_CLK	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MOSI	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED0	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED1	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED2	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED3	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED4	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED5	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED6	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MPU_CS	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MPU_MSTR_CLK	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MPU_MOSI	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50MHz	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MISO	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_LED0 : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL ww_LED4 : std_logic;
SIGNAL ww_LED5 : std_logic;
SIGNAL ww_LED6 : std_logic;
SIGNAL ww_LED7 : std_logic;
SIGNAL ww_MPU_CS : std_logic;
SIGNAL ww_MPU_MSTR_CLK : std_logic;
SIGNAL ww_MPU_MOSI : std_logic;
SIGNAL \inst20|CLK_OUT~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MISO_MPU~input_o\ : std_logic;
SIGNAL \CS~output_o\ : std_logic;
SIGNAL \MSTR_CLK~output_o\ : std_logic;
SIGNAL \MOSI~output_o\ : std_logic;
SIGNAL \LED0~output_o\ : std_logic;
SIGNAL \LED1~output_o\ : std_logic;
SIGNAL \LED2~output_o\ : std_logic;
SIGNAL \LED3~output_o\ : std_logic;
SIGNAL \LED4~output_o\ : std_logic;
SIGNAL \LED5~output_o\ : std_logic;
SIGNAL \LED6~output_o\ : std_logic;
SIGNAL \LED7~output_o\ : std_logic;
SIGNAL \MPU_CS~output_o\ : std_logic;
SIGNAL \MPU_MSTR_CLK~output_o\ : std_logic;
SIGNAL \MPU_MOSI~output_o\ : std_logic;
SIGNAL \CLK_50MHz~input_o\ : std_logic;
SIGNAL \CLK_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst20|Add0~0_combout\ : std_logic;
SIGNAL \inst20|Add0~1_combout\ : std_logic;
SIGNAL \inst20|Counter~1_combout\ : std_logic;
SIGNAL \inst20|Counter~2_combout\ : std_logic;
SIGNAL \inst20|Counter~3_combout\ : std_logic;
SIGNAL \inst20|Add0~3_combout\ : std_logic;
SIGNAL \inst20|Add0~2_combout\ : std_logic;
SIGNAL \inst20|Equal0~0_combout\ : std_logic;
SIGNAL \inst20|Counter~0_combout\ : std_logic;
SIGNAL \inst20|OutputState~q\ : std_logic;
SIGNAL \inst20|OutputState~0_combout\ : std_logic;
SIGNAL \inst20|CLK_OUT~feeder_combout\ : std_logic;
SIGNAL \inst20|CLK_OUT~q\ : std_logic;
SIGNAL \inst20|CLK_OUT~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst11|delay_counter~5_combout\ : std_logic;
SIGNAL \inst11|Add6~0_combout\ : std_logic;
SIGNAL \inst11|Add6~1\ : std_logic;
SIGNAL \inst11|Add6~2_combout\ : std_logic;
SIGNAL \inst11|Add6~3\ : std_logic;
SIGNAL \inst11|Add6~4_combout\ : std_logic;
SIGNAL \inst11|Add6~5\ : std_logic;
SIGNAL \inst11|Add6~6_combout\ : std_logic;
SIGNAL \inst11|Add6~7\ : std_logic;
SIGNAL \inst11|Add6~8_combout\ : std_logic;
SIGNAL \inst11|Add6~9\ : std_logic;
SIGNAL \inst11|Add6~10_combout\ : std_logic;
SIGNAL \inst11|Add6~11\ : std_logic;
SIGNAL \inst11|Add6~12_combout\ : std_logic;
SIGNAL \inst11|delay_counter~0_combout\ : std_logic;
SIGNAL \inst11|Add6~13\ : std_logic;
SIGNAL \inst11|Add6~14_combout\ : std_logic;
SIGNAL \inst11|Add6~15\ : std_logic;
SIGNAL \inst11|Add6~16_combout\ : std_logic;
SIGNAL \inst11|Add6~17\ : std_logic;
SIGNAL \inst11|Add6~18_combout\ : std_logic;
SIGNAL \inst11|delay_counter~1_combout\ : std_logic;
SIGNAL \inst11|Add6~19\ : std_logic;
SIGNAL \inst11|Add6~20_combout\ : std_logic;
SIGNAL \inst11|Add6~21\ : std_logic;
SIGNAL \inst11|Add6~22_combout\ : std_logic;
SIGNAL \inst11|Add6~23\ : std_logic;
SIGNAL \inst11|Add6~24_combout\ : std_logic;
SIGNAL \inst11|Add6~25\ : std_logic;
SIGNAL \inst11|Add6~26_combout\ : std_logic;
SIGNAL \inst11|Add6~27\ : std_logic;
SIGNAL \inst11|Add6~28_combout\ : std_logic;
SIGNAL \inst11|delay_counter~2_combout\ : std_logic;
SIGNAL \inst11|Add6~29\ : std_logic;
SIGNAL \inst11|Add6~30_combout\ : std_logic;
SIGNAL \inst11|Add6~31\ : std_logic;
SIGNAL \inst11|Add6~32_combout\ : std_logic;
SIGNAL \inst11|delay_counter~3_combout\ : std_logic;
SIGNAL \inst11|Add6~33\ : std_logic;
SIGNAL \inst11|Add6~34_combout\ : std_logic;
SIGNAL \inst11|delay_counter~4_combout\ : std_logic;
SIGNAL \inst11|Add6~35\ : std_logic;
SIGNAL \inst11|Add6~36_combout\ : std_logic;
SIGNAL \inst11|delay_counter~6_combout\ : std_logic;
SIGNAL \inst11|Add6~37\ : std_logic;
SIGNAL \inst11|Add6~38_combout\ : std_logic;
SIGNAL \inst11|Equal10~5_combout\ : std_logic;
SIGNAL \inst11|Add6~39\ : std_logic;
SIGNAL \inst11|Add6~40_combout\ : std_logic;
SIGNAL \inst11|Add6~41\ : std_logic;
SIGNAL \inst11|Add6~42_combout\ : std_logic;
SIGNAL \inst11|Add6~43\ : std_logic;
SIGNAL \inst11|Add6~44_combout\ : std_logic;
SIGNAL \inst11|Add6~45\ : std_logic;
SIGNAL \inst11|Add6~46_combout\ : std_logic;
SIGNAL \inst11|Equal10~6_combout\ : std_logic;
SIGNAL \inst11|Equal10~2_combout\ : std_logic;
SIGNAL \inst11|Equal10~0_combout\ : std_logic;
SIGNAL \inst11|Equal10~1_combout\ : std_logic;
SIGNAL \inst11|Equal10~3_combout\ : std_logic;
SIGNAL \inst11|Equal10~4_combout\ : std_logic;
SIGNAL \inst11|Add6~47\ : std_logic;
SIGNAL \inst11|Add6~48_combout\ : std_logic;
SIGNAL \inst11|Add6~49\ : std_logic;
SIGNAL \inst11|Add6~50_combout\ : std_logic;
SIGNAL \inst11|Add6~51\ : std_logic;
SIGNAL \inst11|Add6~52_combout\ : std_logic;
SIGNAL \inst11|Add6~53\ : std_logic;
SIGNAL \inst11|Add6~54_combout\ : std_logic;
SIGNAL \inst11|Add6~55\ : std_logic;
SIGNAL \inst11|Add6~56_combout\ : std_logic;
SIGNAL \inst11|Add6~57\ : std_logic;
SIGNAL \inst11|Add6~58_combout\ : std_logic;
SIGNAL \inst11|Add6~59\ : std_logic;
SIGNAL \inst11|Add6~60_combout\ : std_logic;
SIGNAL \inst11|Add6~61\ : std_logic;
SIGNAL \inst11|Add6~62_combout\ : std_logic;
SIGNAL \inst11|Equal10~8_combout\ : std_logic;
SIGNAL \inst11|Equal10~7_combout\ : std_logic;
SIGNAL \inst11|Equal10~9_combout\ : std_logic;
SIGNAL \inst11|Equal10~10_combout\ : std_logic;
SIGNAL \inst11|wt~0_combout\ : std_logic;
SIGNAL \inst11|wt~q\ : std_logic;
SIGNAL \inst11|pstate~0_combout\ : std_logic;
SIGNAL \inst11|pstate~q\ : std_logic;
SIGNAL \inst11|process_10~0_combout\ : std_logic;
SIGNAL \inst11|fPulse~q\ : std_logic;
SIGNAL \inst|inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|inst|Add0~1\ : std_logic;
SIGNAL \inst|inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|inst|Add0~3\ : std_logic;
SIGNAL \inst|inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|inst|addNo~1_combout\ : std_logic;
SIGNAL \inst|inst|Add0~5\ : std_logic;
SIGNAL \inst|inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|inst|addNo~0_combout\ : std_logic;
SIGNAL \inst|inst|Add0~7\ : std_logic;
SIGNAL \inst|inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|inst|Add0~9\ : std_logic;
SIGNAL \inst|inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|inst|Add0~11\ : std_logic;
SIGNAL \inst|inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|inst|Add0~13\ : std_logic;
SIGNAL \inst|inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|inst|Add0~15\ : std_logic;
SIGNAL \inst|inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|inst|Add0~17\ : std_logic;
SIGNAL \inst|inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|inst|Add0~19\ : std_logic;
SIGNAL \inst|inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|inst|Add0~21\ : std_logic;
SIGNAL \inst|inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|inst|Add0~23\ : std_logic;
SIGNAL \inst|inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|inst|Add0~25\ : std_logic;
SIGNAL \inst|inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|inst|Add0~27\ : std_logic;
SIGNAL \inst|inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|inst|Add0~29\ : std_logic;
SIGNAL \inst|inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|inst|Add0~31\ : std_logic;
SIGNAL \inst|inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|inst|Add0~33\ : std_logic;
SIGNAL \inst|inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|inst|Add0~35\ : std_logic;
SIGNAL \inst|inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|inst|Add0~37\ : std_logic;
SIGNAL \inst|inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|inst|Add0~39\ : std_logic;
SIGNAL \inst|inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|inst|Add0~41\ : std_logic;
SIGNAL \inst|inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|inst|Add0~43\ : std_logic;
SIGNAL \inst|inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|inst|Add0~45\ : std_logic;
SIGNAL \inst|inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|inst|Add0~47\ : std_logic;
SIGNAL \inst|inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|inst|Add0~49\ : std_logic;
SIGNAL \inst|inst|Add0~50_combout\ : std_logic;
SIGNAL \inst|inst|Add0~51\ : std_logic;
SIGNAL \inst|inst|Add0~52_combout\ : std_logic;
SIGNAL \inst|inst|Add0~53\ : std_logic;
SIGNAL \inst|inst|Add0~54_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|inst|Add0~55\ : std_logic;
SIGNAL \inst|inst|Add0~56_combout\ : std_logic;
SIGNAL \inst|inst|Add0~57\ : std_logic;
SIGNAL \inst|inst|Add0~58_combout\ : std_logic;
SIGNAL \inst|inst|Add0~59\ : std_logic;
SIGNAL \inst|inst|Add0~60_combout\ : std_logic;
SIGNAL \inst|inst|Add0~61\ : std_logic;
SIGNAL \inst|inst|Add0~62_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~10_combout\ : std_logic;
SIGNAL \inst|inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|inst|state.W4BFFRrx~q\ : std_logic;
SIGNAL \inst|inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|inst|state.IDLE~q\ : std_logic;
SIGNAL \inst|inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|inst|state.NXTADDR~q\ : std_logic;
SIGNAL \inst|inst|state.STRTrx~q\ : std_logic;
SIGNAL \inst|inst4|Add6~1\ : std_logic;
SIGNAL \inst|inst4|Add6~3\ : std_logic;
SIGNAL \inst|inst4|Add6~4_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~5\ : std_logic;
SIGNAL \inst|inst4|Add6~6_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~7\ : std_logic;
SIGNAL \inst|inst4|Add6~8_combout\ : std_logic;
SIGNAL \inst|inst4|delay_counter~0_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~9\ : std_logic;
SIGNAL \inst|inst4|Add6~10_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~11\ : std_logic;
SIGNAL \inst|inst4|Add6~12_combout\ : std_logic;
SIGNAL \inst|inst4|delay_counter~1_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~13\ : std_logic;
SIGNAL \inst|inst4|Add6~14_combout\ : std_logic;
SIGNAL \inst|inst4|delay_counter~2_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~15\ : std_logic;
SIGNAL \inst|inst4|Add6~16_combout\ : std_logic;
SIGNAL \inst|inst4|delay_counter~3_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~17\ : std_logic;
SIGNAL \inst|inst4|Add6~18_combout\ : std_logic;
SIGNAL \inst|inst4|delay_counter~4_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~19\ : std_logic;
SIGNAL \inst|inst4|Add6~20_combout\ : std_logic;
SIGNAL \inst|inst4|delay_counter~5_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~21\ : std_logic;
SIGNAL \inst|inst4|Add6~22_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~23\ : std_logic;
SIGNAL \inst|inst4|Add6~24_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~25\ : std_logic;
SIGNAL \inst|inst4|Add6~26_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~27\ : std_logic;
SIGNAL \inst|inst4|Add6~28_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~29\ : std_logic;
SIGNAL \inst|inst4|Add6~30_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~31\ : std_logic;
SIGNAL \inst|inst4|Add6~32_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~33\ : std_logic;
SIGNAL \inst|inst4|Add6~34_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~35\ : std_logic;
SIGNAL \inst|inst4|Add6~36_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~37\ : std_logic;
SIGNAL \inst|inst4|Add6~38_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~39\ : std_logic;
SIGNAL \inst|inst4|Add6~40_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~41\ : std_logic;
SIGNAL \inst|inst4|Add6~42_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~43\ : std_logic;
SIGNAL \inst|inst4|Add6~44_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~45\ : std_logic;
SIGNAL \inst|inst4|Add6~46_combout\ : std_logic;
SIGNAL \inst|inst4|Equal10~5_combout\ : std_logic;
SIGNAL \inst|inst4|Equal10~6_combout\ : std_logic;
SIGNAL \inst|inst4|Equal10~7_combout\ : std_logic;
SIGNAL \inst|inst4|Equal10~1_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~0_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~2_combout\ : std_logic;
SIGNAL \inst|inst4|Equal10~0_combout\ : std_logic;
SIGNAL \inst|inst4|Equal10~2_combout\ : std_logic;
SIGNAL \inst|inst4|Equal10~3_combout\ : std_logic;
SIGNAL \inst|inst4|Equal10~4_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~47\ : std_logic;
SIGNAL \inst|inst4|Add6~48_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~49\ : std_logic;
SIGNAL \inst|inst4|Add6~50_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~51\ : std_logic;
SIGNAL \inst|inst4|Add6~52_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~53\ : std_logic;
SIGNAL \inst|inst4|Add6~54_combout\ : std_logic;
SIGNAL \inst|inst4|Equal10~8_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~55\ : std_logic;
SIGNAL \inst|inst4|Add6~56_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~57\ : std_logic;
SIGNAL \inst|inst4|Add6~58_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~59\ : std_logic;
SIGNAL \inst|inst4|Add6~60_combout\ : std_logic;
SIGNAL \inst|inst4|Add6~61\ : std_logic;
SIGNAL \inst|inst4|Add6~62_combout\ : std_logic;
SIGNAL \inst|inst4|Equal10~9_combout\ : std_logic;
SIGNAL \inst|inst4|Equal10~10_combout\ : std_logic;
SIGNAL \inst|inst4|StartTx~0_combout\ : std_logic;
SIGNAL \inst|inst4|StartTx~q\ : std_logic;
SIGNAL \inst|inst4|process_6~0_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[31]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~0_combout\ : std_logic;
SIGNAL \inst|inst4|EC~0_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[0]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~1\ : std_logic;
SIGNAL \inst|inst4|Add1~2_combout\ : std_logic;
SIGNAL \inst|inst4|EC~2_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[1]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~3\ : std_logic;
SIGNAL \inst|inst4|Add1~4_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[2]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~5\ : std_logic;
SIGNAL \inst|inst4|Add1~6_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[3]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~7\ : std_logic;
SIGNAL \inst|inst4|Add1~8_combout\ : std_logic;
SIGNAL \inst|inst4|EC~1_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[4]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~9\ : std_logic;
SIGNAL \inst|inst4|Add1~10_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[5]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~11\ : std_logic;
SIGNAL \inst|inst4|Add1~12_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[6]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~13\ : std_logic;
SIGNAL \inst|inst4|Add1~14_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[7]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~15\ : std_logic;
SIGNAL \inst|inst4|Add1~16_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[8]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~17\ : std_logic;
SIGNAL \inst|inst4|Add1~18_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[9]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~19\ : std_logic;
SIGNAL \inst|inst4|Add1~20_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[10]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~21\ : std_logic;
SIGNAL \inst|inst4|Add1~22_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[11]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~23\ : std_logic;
SIGNAL \inst|inst4|Add1~24_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[12]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~25\ : std_logic;
SIGNAL \inst|inst4|Add1~26_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[13]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~27\ : std_logic;
SIGNAL \inst|inst4|Add1~28_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[14]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~29\ : std_logic;
SIGNAL \inst|inst4|Add1~30_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[15]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~31\ : std_logic;
SIGNAL \inst|inst4|Add1~32_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[16]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~33\ : std_logic;
SIGNAL \inst|inst4|Add1~34_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[17]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~35\ : std_logic;
SIGNAL \inst|inst4|Add1~36_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[18]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~37\ : std_logic;
SIGNAL \inst|inst4|Add1~38_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[19]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~39\ : std_logic;
SIGNAL \inst|inst4|Add1~40_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[20]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~41\ : std_logic;
SIGNAL \inst|inst4|Add1~42_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[21]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~43\ : std_logic;
SIGNAL \inst|inst4|Add1~44_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[22]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~45\ : std_logic;
SIGNAL \inst|inst4|Add1~46_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[23]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~47\ : std_logic;
SIGNAL \inst|inst4|Add1~48_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[24]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~49\ : std_logic;
SIGNAL \inst|inst4|Add1~50_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[25]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~51\ : std_logic;
SIGNAL \inst|inst4|Add1~52_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[26]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~53\ : std_logic;
SIGNAL \inst|inst4|Add1~54_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[27]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~55\ : std_logic;
SIGNAL \inst|inst4|Add1~56_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[28]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~57\ : std_logic;
SIGNAL \inst|inst4|Add1~58_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[29]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~59\ : std_logic;
SIGNAL \inst|inst4|Add1~60_combout\ : std_logic;
SIGNAL \inst|inst4|process_1:EC[30]~q\ : std_logic;
SIGNAL \inst|inst4|Add1~61\ : std_logic;
SIGNAL \inst|inst4|Add1~62_combout\ : std_logic;
SIGNAL \inst|inst4|state_csl~2_combout\ : std_logic;
SIGNAL \inst|inst4|state_csl~4_combout\ : std_logic;
SIGNAL \inst|inst4|state_csl~3_combout\ : std_logic;
SIGNAL \inst|inst4|state_csl~5_combout\ : std_logic;
SIGNAL \inst|inst4|state_csl~11_combout\ : std_logic;
SIGNAL \inst|inst4|state_csl~7_combout\ : std_logic;
SIGNAL \inst|inst4|state_csl~8_combout\ : std_logic;
SIGNAL \inst|inst4|state_csl~9_combout\ : std_logic;
SIGNAL \inst|inst4|state_csl~6_combout\ : std_logic;
SIGNAL \inst|inst4|state_csl~10_combout\ : std_logic;
SIGNAL \inst|inst4|state_csl~12_combout\ : std_logic;
SIGNAL \inst|inst4|state_csl~13_combout\ : std_logic;
SIGNAL \inst|inst4|state_csl~q\ : std_logic;
SIGNAL \inst|inst4|CSD~0_combout\ : std_logic;
SIGNAL \inst|inst4|CSD~q\ : std_logic;
SIGNAL \inst|inst4|Add0~0_combout\ : std_logic;
SIGNAL \inst|inst4|EC~3_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~1\ : std_logic;
SIGNAL \inst|inst4|Add0~2_combout\ : std_logic;
SIGNAL \inst|inst4|EC~5_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~3\ : std_logic;
SIGNAL \inst|inst4|Add0~4_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~5\ : std_logic;
SIGNAL \inst|inst4|Add0~6_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~7\ : std_logic;
SIGNAL \inst|inst4|Add0~8_combout\ : std_logic;
SIGNAL \inst|inst4|EC~4_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~9\ : std_logic;
SIGNAL \inst|inst4|Add0~10_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~11\ : std_logic;
SIGNAL \inst|inst4|Add0~12_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~13\ : std_logic;
SIGNAL \inst|inst4|Add0~14_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~15\ : std_logic;
SIGNAL \inst|inst4|Add0~16_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~17\ : std_logic;
SIGNAL \inst|inst4|Add0~18_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~19\ : std_logic;
SIGNAL \inst|inst4|Add0~20_combout\ : std_logic;
SIGNAL \inst|inst4|state_csh~4_combout\ : std_logic;
SIGNAL \inst|inst4|state_csh~2_combout\ : std_logic;
SIGNAL \inst|inst4|state_csh~3_combout\ : std_logic;
SIGNAL \inst|inst4|state_csh~5_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~21\ : std_logic;
SIGNAL \inst|inst4|Add0~22_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~23\ : std_logic;
SIGNAL \inst|inst4|Add0~24_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~25\ : std_logic;
SIGNAL \inst|inst4|Add0~26_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~27\ : std_logic;
SIGNAL \inst|inst4|Add0~28_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~29\ : std_logic;
SIGNAL \inst|inst4|Add0~30_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~31\ : std_logic;
SIGNAL \inst|inst4|Add0~32_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~33\ : std_logic;
SIGNAL \inst|inst4|Add0~34_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~35\ : std_logic;
SIGNAL \inst|inst4|Add0~36_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~37\ : std_logic;
SIGNAL \inst|inst4|Add0~38_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~39\ : std_logic;
SIGNAL \inst|inst4|Add0~40_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~41\ : std_logic;
SIGNAL \inst|inst4|Add0~42_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~43\ : std_logic;
SIGNAL \inst|inst4|Add0~44_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~45\ : std_logic;
SIGNAL \inst|inst4|Add0~46_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~47\ : std_logic;
SIGNAL \inst|inst4|Add0~48_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~49\ : std_logic;
SIGNAL \inst|inst4|Add0~50_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~51\ : std_logic;
SIGNAL \inst|inst4|Add0~52_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~53\ : std_logic;
SIGNAL \inst|inst4|Add0~54_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~55\ : std_logic;
SIGNAL \inst|inst4|Add0~56_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~57\ : std_logic;
SIGNAL \inst|inst4|Add0~58_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~59\ : std_logic;
SIGNAL \inst|inst4|Add0~60_combout\ : std_logic;
SIGNAL \inst|inst4|Add0~61\ : std_logic;
SIGNAL \inst|inst4|Add0~62_combout\ : std_logic;
SIGNAL \inst|inst4|state_csh~7_combout\ : std_logic;
SIGNAL \inst|inst4|state_csh~9_combout\ : std_logic;
SIGNAL \inst|inst4|state_csh~8_combout\ : std_logic;
SIGNAL \inst|inst4|state_csh~6_combout\ : std_logic;
SIGNAL \inst|inst4|state_csh~10_combout\ : std_logic;
SIGNAL \inst|inst4|state_csh~11_combout\ : std_logic;
SIGNAL \inst|inst4|state_csh~12_combout\ : std_logic;
SIGNAL \inst|inst4|state_csh~13_combout\ : std_logic;
SIGNAL \inst|inst4|state_csh~q\ : std_logic;
SIGNAL \inst|inst4|CSU~0_combout\ : std_logic;
SIGNAL \inst|inst4|CSU~q\ : std_logic;
SIGNAL \inst|inst4|CS~combout\ : std_logic;
SIGNAL \inst|inst4|wt~0_combout\ : std_logic;
SIGNAL \inst|inst4|wt~q\ : std_logic;
SIGNAL \inst|inst4|pstate~0_combout\ : std_logic;
SIGNAL \inst|inst4|pstate~q\ : std_logic;
SIGNAL \inst|inst4|process_10~0_combout\ : std_logic;
SIGNAL \inst|inst4|fPulse~q\ : std_logic;
SIGNAL \inst|inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|inst|state.WAITINGrx~q\ : std_logic;
SIGNAL \inst|inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|inst|state.STOREstate~q\ : std_logic;
SIGNAL \inst|inst3|state~9_combout\ : std_logic;
SIGNAL \inst|inst3|state.IDLE~q\ : std_logic;
SIGNAL \inst|inst3|state~10_combout\ : std_logic;
SIGNAL \inst|inst3|state.SEND~q\ : std_logic;
SIGNAL \inst|inst3|Selector23~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector27~0_combout\ : std_logic;
SIGNAL \inst|inst3|Add1~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector26~0_combout\ : std_logic;
SIGNAL \inst|inst3|Add1~1_combout\ : std_logic;
SIGNAL \inst|inst3|Selector24~0_combout\ : std_logic;
SIGNAL \inst|inst3|process_0~2_combout\ : std_logic;
SIGNAL \inst|inst3|state~8_combout\ : std_logic;
SIGNAL \inst|inst3|state.STORE~q\ : std_logic;
SIGNAL \inst|inst3|OS[2]~0_combout\ : std_logic;
SIGNAL \inst|inst3|OS[0]~4_combout\ : std_logic;
SIGNAL \inst|inst3|OS[1]~3_combout\ : std_logic;
SIGNAL \inst|inst3|Add2~0_combout\ : std_logic;
SIGNAL \inst|inst3|OS[2]~6_combout\ : std_logic;
SIGNAL \inst|inst3|process_0~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector20~0_combout\ : std_logic;
SIGNAL \inst|inst3|process_0~1_combout\ : std_logic;
SIGNAL \inst|inst3|process_0~3_combout\ : std_logic;
SIGNAL \inst|inst3|OS[0]~2_combout\ : std_logic;
SIGNAL \inst|inst3|Add2~1_combout\ : std_logic;
SIGNAL \inst|inst3|OS[3]~5_combout\ : std_logic;
SIGNAL \inst|inst3|OS[2]~1_combout\ : std_logic;
SIGNAL \inst|inst3|NS[3]~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector22~0_combout\ : std_logic;
SIGNAL \inst|inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector21~0_combout\ : std_logic;
SIGNAL \inst|inst3|Equal2~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector25~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector25~1_combout\ : std_logic;
SIGNAL \inst|inst3|Equal4~0_combout\ : std_logic;
SIGNAL \inst|inst3|empty~0_combout\ : std_logic;
SIGNAL \inst|inst3|empty~combout\ : std_logic;
SIGNAL \inst|inst15|Selector3~0_combout\ : std_logic;
SIGNAL \inst|inst15|state.WAITINGtx~q\ : std_logic;
SIGNAL \inst|inst15|Selector1~0_combout\ : std_logic;
SIGNAL \inst|inst15|Selector1~1_combout\ : std_logic;
SIGNAL \inst|inst15|state.RDY2SND~q\ : std_logic;
SIGNAL \inst5|Mux0~1_combout\ : std_logic;
SIGNAL \inst5|Selector19~0_combout\ : std_logic;
SIGNAL \inst5|state.WAITING~q\ : std_logic;
SIGNAL \inst5|Selector17~0_combout\ : std_logic;
SIGNAL \inst5|state.SEARCH~q\ : std_logic;
SIGNAL \inst5|Selector18~0_combout\ : std_logic;
SIGNAL \inst5|state.STRT~feeder_combout\ : std_logic;
SIGNAL \inst5|state.STRT~q\ : std_logic;
SIGNAL \inst|inst15|Selector5~0_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~0_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~1\ : std_logic;
SIGNAL \inst|inst15|Add0~2_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~3\ : std_logic;
SIGNAL \inst|inst15|Add0~4_combout\ : std_logic;
SIGNAL \inst|inst15|nextTx~1_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~5\ : std_logic;
SIGNAL \inst|inst15|Add0~6_combout\ : std_logic;
SIGNAL \inst|inst15|nextTx~0_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~7\ : std_logic;
SIGNAL \inst|inst15|Add0~8_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~9\ : std_logic;
SIGNAL \inst|inst15|Add0~10_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~11\ : std_logic;
SIGNAL \inst|inst15|Add0~12_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~13\ : std_logic;
SIGNAL \inst|inst15|Add0~14_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~15\ : std_logic;
SIGNAL \inst|inst15|Add0~16_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~17\ : std_logic;
SIGNAL \inst|inst15|Add0~18_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~19\ : std_logic;
SIGNAL \inst|inst15|Add0~20_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~21\ : std_logic;
SIGNAL \inst|inst15|Add0~22_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~23\ : std_logic;
SIGNAL \inst|inst15|Add0~24_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~25\ : std_logic;
SIGNAL \inst|inst15|Add0~26_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~27\ : std_logic;
SIGNAL \inst|inst15|Add0~28_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~29\ : std_logic;
SIGNAL \inst|inst15|Add0~30_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~31\ : std_logic;
SIGNAL \inst|inst15|Add0~32_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~33\ : std_logic;
SIGNAL \inst|inst15|Add0~34_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~35\ : std_logic;
SIGNAL \inst|inst15|Add0~36_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~37\ : std_logic;
SIGNAL \inst|inst15|Add0~38_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~39\ : std_logic;
SIGNAL \inst|inst15|Add0~40_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~41\ : std_logic;
SIGNAL \inst|inst15|Add0~42_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~43\ : std_logic;
SIGNAL \inst|inst15|Add0~44_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~45\ : std_logic;
SIGNAL \inst|inst15|Add0~46_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~47\ : std_logic;
SIGNAL \inst|inst15|Add0~48_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~49\ : std_logic;
SIGNAL \inst|inst15|Add0~50_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~51\ : std_logic;
SIGNAL \inst|inst15|Add0~52_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~53\ : std_logic;
SIGNAL \inst|inst15|Add0~54_combout\ : std_logic;
SIGNAL \inst|inst15|Equal0~8_combout\ : std_logic;
SIGNAL \inst|inst15|Equal0~6_combout\ : std_logic;
SIGNAL \inst|inst15|Equal0~5_combout\ : std_logic;
SIGNAL \inst|inst15|Equal0~7_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~55\ : std_logic;
SIGNAL \inst|inst15|Add0~56_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~57\ : std_logic;
SIGNAL \inst|inst15|Add0~58_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~59\ : std_logic;
SIGNAL \inst|inst15|Add0~60_combout\ : std_logic;
SIGNAL \inst|inst15|Add0~61\ : std_logic;
SIGNAL \inst|inst15|Add0~62_combout\ : std_logic;
SIGNAL \inst|inst15|Equal0~9_combout\ : std_logic;
SIGNAL \inst|inst15|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst15|Equal0~2_combout\ : std_logic;
SIGNAL \inst|inst15|Equal0~1_combout\ : std_logic;
SIGNAL \inst|inst15|Equal0~3_combout\ : std_logic;
SIGNAL \inst|inst15|Equal0~4_combout\ : std_logic;
SIGNAL \inst|inst15|Equal0~10_combout\ : std_logic;
SIGNAL \inst|inst15|Selector5~1_combout\ : std_logic;
SIGNAL \inst|inst15|state.W4BFFRtx~q\ : std_logic;
SIGNAL \inst|inst15|Selector4~2_combout\ : std_logic;
SIGNAL \inst|inst15|state.NXTtx~q\ : std_logic;
SIGNAL \inst|inst15|Selector2~0_combout\ : std_logic;
SIGNAL \inst|inst15|Selector2~1_combout\ : std_logic;
SIGNAL \inst|inst15|state.STRTtx~q\ : std_logic;
SIGNAL \inst|inst15|Selector4~0_combout\ : std_logic;
SIGNAL \inst|inst15|Selector4~1_combout\ : std_logic;
SIGNAL \inst|inst15|state.IDLE~0_combout\ : std_logic;
SIGNAL \inst|inst15|state.IDLE~q\ : std_logic;
SIGNAL \inst5|idx[0]~0_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|idx[1]~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~10_combout\ : std_logic;
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
SIGNAL \inst5|Equal0~5_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|Equal0~9_combout\ : std_logic;
SIGNAL \inst5|idx[2]~1_combout\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|idx[2]~2_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Selector20~0_combout\ : std_logic;
SIGNAL \inst5|TRANSMIT~feeder_combout\ : std_logic;
SIGNAL \inst5|TRANSMIT~q\ : std_logic;
SIGNAL \inst11|StartTx~0_combout\ : std_logic;
SIGNAL \inst11|StartTx~q\ : std_logic;
SIGNAL \inst11|process_6~0_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[6]~q\ : std_logic;
SIGNAL \inst11|Add1~0_combout\ : std_logic;
SIGNAL \inst11|EC~0_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[0]~q\ : std_logic;
SIGNAL \inst11|Add1~1\ : std_logic;
SIGNAL \inst11|Add1~2_combout\ : std_logic;
SIGNAL \inst11|EC~2_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[1]~q\ : std_logic;
SIGNAL \inst11|Add1~3\ : std_logic;
SIGNAL \inst11|Add1~4_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[2]~q\ : std_logic;
SIGNAL \inst11|Add1~5\ : std_logic;
SIGNAL \inst11|Add1~6_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[3]~q\ : std_logic;
SIGNAL \inst11|Add1~7\ : std_logic;
SIGNAL \inst11|Add1~8_combout\ : std_logic;
SIGNAL \inst11|EC~1_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[4]~q\ : std_logic;
SIGNAL \inst11|Add1~9\ : std_logic;
SIGNAL \inst11|Add1~10_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[5]~q\ : std_logic;
SIGNAL \inst11|Add1~11\ : std_logic;
SIGNAL \inst11|Add1~12_combout\ : std_logic;
SIGNAL \inst11|state_csl~3_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[10]~q\ : std_logic;
SIGNAL \inst11|Add1~13\ : std_logic;
SIGNAL \inst11|Add1~14_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[7]~q\ : std_logic;
SIGNAL \inst11|Add1~15\ : std_logic;
SIGNAL \inst11|Add1~16_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[8]~q\ : std_logic;
SIGNAL \inst11|Add1~17\ : std_logic;
SIGNAL \inst11|Add1~18_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[9]~q\ : std_logic;
SIGNAL \inst11|Add1~19\ : std_logic;
SIGNAL \inst11|Add1~20_combout\ : std_logic;
SIGNAL \inst11|state_csl~4_combout\ : std_logic;
SIGNAL \inst11|state_csl~2_combout\ : std_logic;
SIGNAL \inst11|state_csl~5_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[31]~q\ : std_logic;
SIGNAL \inst11|Add1~21\ : std_logic;
SIGNAL \inst11|Add1~22_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[11]~q\ : std_logic;
SIGNAL \inst11|Add1~23\ : std_logic;
SIGNAL \inst11|Add1~24_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[12]~q\ : std_logic;
SIGNAL \inst11|Add1~25\ : std_logic;
SIGNAL \inst11|Add1~26_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[13]~q\ : std_logic;
SIGNAL \inst11|Add1~27\ : std_logic;
SIGNAL \inst11|Add1~28_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[14]~q\ : std_logic;
SIGNAL \inst11|Add1~29\ : std_logic;
SIGNAL \inst11|Add1~30_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[15]~q\ : std_logic;
SIGNAL \inst11|Add1~31\ : std_logic;
SIGNAL \inst11|Add1~32_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[16]~q\ : std_logic;
SIGNAL \inst11|Add1~33\ : std_logic;
SIGNAL \inst11|Add1~34_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[17]~q\ : std_logic;
SIGNAL \inst11|Add1~35\ : std_logic;
SIGNAL \inst11|Add1~36_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[18]~q\ : std_logic;
SIGNAL \inst11|Add1~37\ : std_logic;
SIGNAL \inst11|Add1~38_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[19]~q\ : std_logic;
SIGNAL \inst11|Add1~39\ : std_logic;
SIGNAL \inst11|Add1~40_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[20]~q\ : std_logic;
SIGNAL \inst11|Add1~41\ : std_logic;
SIGNAL \inst11|Add1~42_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[21]~q\ : std_logic;
SIGNAL \inst11|Add1~43\ : std_logic;
SIGNAL \inst11|Add1~44_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[22]~q\ : std_logic;
SIGNAL \inst11|Add1~45\ : std_logic;
SIGNAL \inst11|Add1~46_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[23]~q\ : std_logic;
SIGNAL \inst11|Add1~47\ : std_logic;
SIGNAL \inst11|Add1~48_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[24]~q\ : std_logic;
SIGNAL \inst11|Add1~49\ : std_logic;
SIGNAL \inst11|Add1~50_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[25]~q\ : std_logic;
SIGNAL \inst11|Add1~51\ : std_logic;
SIGNAL \inst11|Add1~52_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[26]~q\ : std_logic;
SIGNAL \inst11|Add1~53\ : std_logic;
SIGNAL \inst11|Add1~54_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[27]~q\ : std_logic;
SIGNAL \inst11|Add1~55\ : std_logic;
SIGNAL \inst11|Add1~56_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[28]~q\ : std_logic;
SIGNAL \inst11|Add1~57\ : std_logic;
SIGNAL \inst11|Add1~58_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[29]~q\ : std_logic;
SIGNAL \inst11|Add1~59\ : std_logic;
SIGNAL \inst11|Add1~60_combout\ : std_logic;
SIGNAL \inst11|process_1:EC[30]~q\ : std_logic;
SIGNAL \inst11|Add1~61\ : std_logic;
SIGNAL \inst11|Add1~62_combout\ : std_logic;
SIGNAL \inst11|state_csl~11_combout\ : std_logic;
SIGNAL \inst11|state_csl~7_combout\ : std_logic;
SIGNAL \inst11|state_csl~8_combout\ : std_logic;
SIGNAL \inst11|state_csl~9_combout\ : std_logic;
SIGNAL \inst11|state_csl~6_combout\ : std_logic;
SIGNAL \inst11|state_csl~10_combout\ : std_logic;
SIGNAL \inst11|state_csl~12_combout\ : std_logic;
SIGNAL \inst11|state_csl~13_combout\ : std_logic;
SIGNAL \inst11|state_csl~q\ : std_logic;
SIGNAL \inst11|CSD~0_combout\ : std_logic;
SIGNAL \inst11|CSD~q\ : std_logic;
SIGNAL \inst11|Add0~0_combout\ : std_logic;
SIGNAL \inst11|EC~3_combout\ : std_logic;
SIGNAL \inst11|Add0~1\ : std_logic;
SIGNAL \inst11|Add0~2_combout\ : std_logic;
SIGNAL \inst11|EC~5_combout\ : std_logic;
SIGNAL \inst11|Add0~3\ : std_logic;
SIGNAL \inst11|Add0~4_combout\ : std_logic;
SIGNAL \inst11|Add0~5\ : std_logic;
SIGNAL \inst11|Add0~6_combout\ : std_logic;
SIGNAL \inst11|Add0~7\ : std_logic;
SIGNAL \inst11|Add0~8_combout\ : std_logic;
SIGNAL \inst11|EC~4_combout\ : std_logic;
SIGNAL \inst11|Add0~9\ : std_logic;
SIGNAL \inst11|Add0~10_combout\ : std_logic;
SIGNAL \inst11|Add0~11\ : std_logic;
SIGNAL \inst11|Add0~12_combout\ : std_logic;
SIGNAL \inst11|Add0~13\ : std_logic;
SIGNAL \inst11|Add0~14_combout\ : std_logic;
SIGNAL \inst11|Add0~15\ : std_logic;
SIGNAL \inst11|Add0~16_combout\ : std_logic;
SIGNAL \inst11|Add0~17\ : std_logic;
SIGNAL \inst11|Add0~18_combout\ : std_logic;
SIGNAL \inst11|Add0~19\ : std_logic;
SIGNAL \inst11|Add0~20_combout\ : std_logic;
SIGNAL \inst11|Add0~21\ : std_logic;
SIGNAL \inst11|Add0~22_combout\ : std_logic;
SIGNAL \inst11|Add0~23\ : std_logic;
SIGNAL \inst11|Add0~24_combout\ : std_logic;
SIGNAL \inst11|Add0~25\ : std_logic;
SIGNAL \inst11|Add0~26_combout\ : std_logic;
SIGNAL \inst11|Add0~27\ : std_logic;
SIGNAL \inst11|Add0~28_combout\ : std_logic;
SIGNAL \inst11|Add0~29\ : std_logic;
SIGNAL \inst11|Add0~30_combout\ : std_logic;
SIGNAL \inst11|Add0~31\ : std_logic;
SIGNAL \inst11|Add0~32_combout\ : std_logic;
SIGNAL \inst11|Add0~33\ : std_logic;
SIGNAL \inst11|Add0~34_combout\ : std_logic;
SIGNAL \inst11|Add0~35\ : std_logic;
SIGNAL \inst11|Add0~36_combout\ : std_logic;
SIGNAL \inst11|Add0~37\ : std_logic;
SIGNAL \inst11|Add0~38_combout\ : std_logic;
SIGNAL \inst11|Add0~39\ : std_logic;
SIGNAL \inst11|Add0~40_combout\ : std_logic;
SIGNAL \inst11|Add0~41\ : std_logic;
SIGNAL \inst11|Add0~42_combout\ : std_logic;
SIGNAL \inst11|Add0~43\ : std_logic;
SIGNAL \inst11|Add0~44_combout\ : std_logic;
SIGNAL \inst11|Add0~45\ : std_logic;
SIGNAL \inst11|Add0~46_combout\ : std_logic;
SIGNAL \inst11|Add0~47\ : std_logic;
SIGNAL \inst11|Add0~48_combout\ : std_logic;
SIGNAL \inst11|Add0~49\ : std_logic;
SIGNAL \inst11|Add0~50_combout\ : std_logic;
SIGNAL \inst11|Add0~51\ : std_logic;
SIGNAL \inst11|Add0~52_combout\ : std_logic;
SIGNAL \inst11|Add0~53\ : std_logic;
SIGNAL \inst11|Add0~54_combout\ : std_logic;
SIGNAL \inst11|Add0~55\ : std_logic;
SIGNAL \inst11|Add0~56_combout\ : std_logic;
SIGNAL \inst11|Add0~57\ : std_logic;
SIGNAL \inst11|Add0~58_combout\ : std_logic;
SIGNAL \inst11|Add0~59\ : std_logic;
SIGNAL \inst11|Add0~60_combout\ : std_logic;
SIGNAL \inst11|state_csh~11_combout\ : std_logic;
SIGNAL \inst11|state_csh~2_combout\ : std_logic;
SIGNAL \inst11|state_csh~4_combout\ : std_logic;
SIGNAL \inst11|state_csh~3_combout\ : std_logic;
SIGNAL \inst11|state_csh~5_combout\ : std_logic;
SIGNAL \inst11|Add0~61\ : std_logic;
SIGNAL \inst11|Add0~62_combout\ : std_logic;
SIGNAL \inst11|state_csh~9_combout\ : std_logic;
SIGNAL \inst11|state_csh~6_combout\ : std_logic;
SIGNAL \inst11|state_csh~7_combout\ : std_logic;
SIGNAL \inst11|state_csh~8_combout\ : std_logic;
SIGNAL \inst11|state_csh~10_combout\ : std_logic;
SIGNAL \inst11|state_csh~12_combout\ : std_logic;
SIGNAL \inst11|state_csh~13_combout\ : std_logic;
SIGNAL \inst11|state_csh~q\ : std_logic;
SIGNAL \inst11|CSU~0_combout\ : std_logic;
SIGNAL \inst11|CSU~q\ : std_logic;
SIGNAL \inst11|CS~combout\ : std_logic;
SIGNAL \inst11|Add2~0_combout\ : std_logic;
SIGNAL \inst11|CC~0_combout\ : std_logic;
SIGNAL \inst11|Add2~1\ : std_logic;
SIGNAL \inst11|Add2~2_combout\ : std_logic;
SIGNAL \inst11|CC~1_combout\ : std_logic;
SIGNAL \inst11|Add2~3\ : std_logic;
SIGNAL \inst11|Add2~4_combout\ : std_logic;
SIGNAL \inst11|Add2~5\ : std_logic;
SIGNAL \inst11|Add2~6_combout\ : std_logic;
SIGNAL \inst11|Add2~7\ : std_logic;
SIGNAL \inst11|Add2~8_combout\ : std_logic;
SIGNAL \inst11|CC~2_combout\ : std_logic;
SIGNAL \inst11|Add2~9\ : std_logic;
SIGNAL \inst11|Add2~10_combout\ : std_logic;
SIGNAL \inst11|Add2~11\ : std_logic;
SIGNAL \inst11|Add2~12_combout\ : std_logic;
SIGNAL \inst11|Add2~13\ : std_logic;
SIGNAL \inst11|Add2~14_combout\ : std_logic;
SIGNAL \inst11|Add2~15\ : std_logic;
SIGNAL \inst11|Add2~16_combout\ : std_logic;
SIGNAL \inst11|Add2~17\ : std_logic;
SIGNAL \inst11|Add2~18_combout\ : std_logic;
SIGNAL \inst11|Add2~19\ : std_logic;
SIGNAL \inst11|Add2~20_combout\ : std_logic;
SIGNAL \inst11|state_clk~4_combout\ : std_logic;
SIGNAL \inst11|state_clk~2_combout\ : std_logic;
SIGNAL \inst11|state_clk~3_combout\ : std_logic;
SIGNAL \inst11|state_clk~5_combout\ : std_logic;
SIGNAL \inst11|Add2~21\ : std_logic;
SIGNAL \inst11|Add2~22_combout\ : std_logic;
SIGNAL \inst11|Add2~23\ : std_logic;
SIGNAL \inst11|Add2~24_combout\ : std_logic;
SIGNAL \inst11|Add2~25\ : std_logic;
SIGNAL \inst11|Add2~26_combout\ : std_logic;
SIGNAL \inst11|Add2~27\ : std_logic;
SIGNAL \inst11|Add2~28_combout\ : std_logic;
SIGNAL \inst11|Add2~29\ : std_logic;
SIGNAL \inst11|Add2~30_combout\ : std_logic;
SIGNAL \inst11|Add2~31\ : std_logic;
SIGNAL \inst11|Add2~32_combout\ : std_logic;
SIGNAL \inst11|Add2~33\ : std_logic;
SIGNAL \inst11|Add2~34_combout\ : std_logic;
SIGNAL \inst11|Add2~35\ : std_logic;
SIGNAL \inst11|Add2~36_combout\ : std_logic;
SIGNAL \inst11|Add2~37\ : std_logic;
SIGNAL \inst11|Add2~38_combout\ : std_logic;
SIGNAL \inst11|Add2~39\ : std_logic;
SIGNAL \inst11|Add2~40_combout\ : std_logic;
SIGNAL \inst11|Add2~41\ : std_logic;
SIGNAL \inst11|Add2~42_combout\ : std_logic;
SIGNAL \inst11|Add2~43\ : std_logic;
SIGNAL \inst11|Add2~44_combout\ : std_logic;
SIGNAL \inst11|Add2~45\ : std_logic;
SIGNAL \inst11|Add2~46_combout\ : std_logic;
SIGNAL \inst11|Add2~47\ : std_logic;
SIGNAL \inst11|Add2~48_combout\ : std_logic;
SIGNAL \inst11|Add2~49\ : std_logic;
SIGNAL \inst11|Add2~50_combout\ : std_logic;
SIGNAL \inst11|Add2~51\ : std_logic;
SIGNAL \inst11|Add2~52_combout\ : std_logic;
SIGNAL \inst11|Add2~53\ : std_logic;
SIGNAL \inst11|Add2~54_combout\ : std_logic;
SIGNAL \inst11|Add2~55\ : std_logic;
SIGNAL \inst11|Add2~56_combout\ : std_logic;
SIGNAL \inst11|Add2~57\ : std_logic;
SIGNAL \inst11|Add2~58_combout\ : std_logic;
SIGNAL \inst11|Add2~59\ : std_logic;
SIGNAL \inst11|Add2~60_combout\ : std_logic;
SIGNAL \inst11|state_clk~11_combout\ : std_logic;
SIGNAL \inst11|Add2~61\ : std_logic;
SIGNAL \inst11|Add2~62_combout\ : std_logic;
SIGNAL \inst11|state_clk~6_combout\ : std_logic;
SIGNAL \inst11|state_clk~8_combout\ : std_logic;
SIGNAL \inst11|state_clk~7_combout\ : std_logic;
SIGNAL \inst11|state_clk~9_combout\ : std_logic;
SIGNAL \inst11|state_clk~10_combout\ : std_logic;
SIGNAL \inst11|state_clk~12_combout\ : std_logic;
SIGNAL \inst11|state_clk~13_combout\ : std_logic;
SIGNAL \inst11|state_clk~q\ : std_logic;
SIGNAL \inst11|rtc~0_combout\ : std_logic;
SIGNAL \inst11|rtc~q\ : std_logic;
SIGNAL \inst11|CLKO~0_combout\ : std_logic;
SIGNAL \inst11|MOSI~0_combout\ : std_logic;
SIGNAL \inst11|Add4~0_combout\ : std_logic;
SIGNAL \inst11|Add4~1\ : std_logic;
SIGNAL \inst11|Add4~2_combout\ : std_logic;
SIGNAL \inst11|Add4~3\ : std_logic;
SIGNAL \inst11|Add4~4_combout\ : std_logic;
SIGNAL \inst11|Add4~5\ : std_logic;
SIGNAL \inst11|Add4~6_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~30_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~1\ : std_logic;
SIGNAL \inst|inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~28_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~3\ : std_logic;
SIGNAL \inst|inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~5\ : std_logic;
SIGNAL \inst|inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~29_combout\ : std_logic;
SIGNAL \inst|inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~7\ : std_logic;
SIGNAL \inst|inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~10_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~9\ : std_logic;
SIGNAL \inst|inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~11_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~11\ : std_logic;
SIGNAL \inst|inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~1_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~13\ : std_logic;
SIGNAL \inst|inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~18_combout\ : std_logic;
SIGNAL \inst|inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~15\ : std_logic;
SIGNAL \inst|inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~19_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~17\ : std_logic;
SIGNAL \inst|inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~20_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~19\ : std_logic;
SIGNAL \inst|inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~21_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~21\ : std_logic;
SIGNAL \inst|inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~22_combout\ : std_logic;
SIGNAL \inst|inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~23\ : std_logic;
SIGNAL \inst|inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~23_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~25\ : std_logic;
SIGNAL \inst|inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~24_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~27\ : std_logic;
SIGNAL \inst|inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~25_combout\ : std_logic;
SIGNAL \inst|inst1|addNo[14]~feeder_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~29\ : std_logic;
SIGNAL \inst|inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~2_combout\ : std_logic;
SIGNAL \inst|inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst|inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~31\ : std_logic;
SIGNAL \inst|inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~8_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~33\ : std_logic;
SIGNAL \inst|inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~7_combout\ : std_logic;
SIGNAL \inst|inst1|addNo[17]~feeder_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~35\ : std_logic;
SIGNAL \inst|inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~6_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~37\ : std_logic;
SIGNAL \inst|inst2|Add0~38_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~5_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~39\ : std_logic;
SIGNAL \inst|inst2|Add0~40_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~14_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~41\ : std_logic;
SIGNAL \inst|inst2|Add0~42_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~12_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~43\ : std_logic;
SIGNAL \inst|inst2|Add0~44_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~0_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~45\ : std_logic;
SIGNAL \inst|inst2|Add0~46_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~13_combout\ : std_logic;
SIGNAL \inst|inst2|Equal0~6_combout\ : std_logic;
SIGNAL \inst|inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~47\ : std_logic;
SIGNAL \inst|inst2|Add0~48_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~15_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~49\ : std_logic;
SIGNAL \inst|inst2|Add0~50_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~4_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~51\ : std_logic;
SIGNAL \inst|inst2|Add0~52_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~3_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~53\ : std_logic;
SIGNAL \inst|inst2|Add0~54_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~17_combout\ : std_logic;
SIGNAL \inst|inst2|Equal0~7_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~55\ : std_logic;
SIGNAL \inst|inst2|Add0~56_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~16_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~57\ : std_logic;
SIGNAL \inst|inst2|Add0~58_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~9_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~59\ : std_logic;
SIGNAL \inst|inst2|Add0~60_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~32_combout\ : std_logic;
SIGNAL \inst|inst2|Add0~61\ : std_logic;
SIGNAL \inst|inst2|Add0~62_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~31_combout\ : std_logic;
SIGNAL \inst|inst2|Equal0~8_combout\ : std_logic;
SIGNAL \inst|inst2|Equal0~9_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~26_combout\ : std_logic;
SIGNAL \inst|inst2|addNo~27_combout\ : std_logic;
SIGNAL \inst|inst2|Equal1~2_combout\ : std_logic;
SIGNAL \inst|inst2|Equal1~3_combout\ : std_logic;
SIGNAL \inst|inst2|Equal1~4_combout\ : std_logic;
SIGNAL \inst|inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst|inst2|Equal1~1_combout\ : std_logic;
SIGNAL \inst|inst2|Equal1~5_combout\ : std_logic;
SIGNAL \inst|inst2|Equal1~6_combout\ : std_logic;
SIGNAL \inst|inst2|Equal1~9_combout\ : std_logic;
SIGNAL \inst|inst2|Equal1~8_combout\ : std_logic;
SIGNAL \inst|inst2|Equal1~7_combout\ : std_logic;
SIGNAL \inst|inst2|Equal1~10_combout\ : std_logic;
SIGNAL \inst|inst2|WideNor0~5_combout\ : std_logic;
SIGNAL \inst|inst2|Equal13~0_combout\ : std_logic;
SIGNAL \inst|inst2|Equal13~1_combout\ : std_logic;
SIGNAL \inst|inst1|WideOr0~combout\ : std_logic;
SIGNAL \inst|inst3|datArray~114_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~115_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~36_q\ : std_logic;
SIGNAL \inst|inst3|datArray~109_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~110_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~32_q\ : std_logic;
SIGNAL \inst|inst3|datArray~113_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~24_q\ : std_logic;
SIGNAL \inst|inst3|datArray~111_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~112_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~28_q\ : std_logic;
SIGNAL \inst|inst3|datArray~95_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~96_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~107_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~108_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~68_q\ : std_logic;
SIGNAL \inst|inst3|datArray~103_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~104_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~60_q\ : std_logic;
SIGNAL \inst|inst3|datArray~101_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~102_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~64_q\ : std_logic;
SIGNAL \inst|inst3|datArray~105_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~106_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~56_q\ : std_logic;
SIGNAL \inst|inst3|datArray~93_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~94_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~97_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~122_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~123_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~52_q\ : std_logic;
SIGNAL \inst|inst3|datArray~118_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~119_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~48_q\ : std_logic;
SIGNAL \inst|inst3|datArray~120_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~121_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~40_q\ : std_logic;
SIGNAL \inst|inst3|datArray~116_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~117_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~44_q\ : std_logic;
SIGNAL \inst|inst3|datArray~98_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~99_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~100_combout\ : std_logic;
SIGNAL \inst5|WideNor0~0_combout\ : std_logic;
SIGNAL \inst|inst1|WideOr1~0_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~35_q\ : std_logic;
SIGNAL \inst|inst3|datArray~27_q\ : std_logic;
SIGNAL \inst|inst3|datArray~23_q\ : std_logic;
SIGNAL \inst|inst3|datArray~71_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~31_q\ : std_logic;
SIGNAL \inst|inst3|datArray~72_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~67feeder_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~67_q\ : std_logic;
SIGNAL \inst|inst3|datArray~63_q\ : std_logic;
SIGNAL \inst|inst3|datArray~59feeder_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~59_q\ : std_logic;
SIGNAL \inst|inst3|datArray~55_q\ : std_logic;
SIGNAL \inst|inst3|datArray~69_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~70_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~73_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~43_q\ : std_logic;
SIGNAL \inst|inst3|datArray~51_q\ : std_logic;
SIGNAL \inst|inst3|datArray~39_q\ : std_logic;
SIGNAL \inst|inst3|datArray~47_q\ : std_logic;
SIGNAL \inst|inst3|datArray~74_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~75_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~76_combout\ : std_logic;
SIGNAL \inst|inst2|Equal5~0_combout\ : std_logic;
SIGNAL \inst|inst2|Equal1~11_combout\ : std_logic;
SIGNAL \inst|inst1|WideOr2~combout\ : std_logic;
SIGNAL \inst|inst3|datArray~66_q\ : std_logic;
SIGNAL \inst|inst3|datArray~58_q\ : std_logic;
SIGNAL \inst|inst3|datArray~62_q\ : std_logic;
SIGNAL \inst|inst3|datArray~54_q\ : std_logic;
SIGNAL \inst|inst3|datArray~77_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~78_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~30_q\ : std_logic;
SIGNAL \inst|inst3|datArray~22_q\ : std_logic;
SIGNAL \inst|inst3|datArray~79_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~34_q\ : std_logic;
SIGNAL \inst|inst3|datArray~26_q\ : std_logic;
SIGNAL \inst|inst3|datArray~80_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~81_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~50_q\ : std_logic;
SIGNAL \inst|inst3|datArray~46_q\ : std_logic;
SIGNAL \inst|inst3|datArray~42_q\ : std_logic;
SIGNAL \inst|inst3|datArray~38_q\ : std_logic;
SIGNAL \inst|inst3|datArray~82_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~83_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~84_combout\ : std_logic;
SIGNAL \inst|inst2|Equal2~1_combout\ : std_logic;
SIGNAL \inst|inst2|Equal6~2_combout\ : std_logic;
SIGNAL \inst|inst1|WideOr3~combout\ : std_logic;
SIGNAL \inst|inst3|datArray~65feeder_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~65_q\ : std_logic;
SIGNAL \inst|inst3|datArray~61_q\ : std_logic;
SIGNAL \inst|inst3|datArray~57feeder_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~57_q\ : std_logic;
SIGNAL \inst|inst3|datArray~53_q\ : std_logic;
SIGNAL \inst|inst3|datArray~85_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~86_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~21_q\ : std_logic;
SIGNAL \inst|inst3|datArray~25_q\ : std_logic;
SIGNAL \inst|inst3|datArray~87_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~33_q\ : std_logic;
SIGNAL \inst|inst3|datArray~29_q\ : std_logic;
SIGNAL \inst|inst3|datArray~88_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~89_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~45_q\ : std_logic;
SIGNAL \inst|inst3|datArray~37_q\ : std_logic;
SIGNAL \inst|inst3|datArray~90_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~41_q\ : std_logic;
SIGNAL \inst|inst3|datArray~49_q\ : std_logic;
SIGNAL \inst|inst3|datArray~91_combout\ : std_logic;
SIGNAL \inst|inst3|datArray~92_combout\ : std_logic;
SIGNAL \inst11|Mux0~0_combout\ : std_logic;
SIGNAL \inst11|Mux0~1_combout\ : std_logic;
SIGNAL \inst11|Mux0~2_combout\ : std_logic;
SIGNAL \inst11|MOSI~q\ : std_logic;
SIGNAL \MISO~input_o\ : std_logic;
SIGNAL \inst11|Add5~0_combout\ : std_logic;
SIGNAL \inst11|Add5~1\ : std_logic;
SIGNAL \inst11|Add5~2_combout\ : std_logic;
SIGNAL \inst11|Add5~3\ : std_logic;
SIGNAL \inst11|Add5~4_combout\ : std_logic;
SIGNAL \inst11|Equal9~0_combout\ : std_logic;
SIGNAL \inst11|Add5~5\ : std_logic;
SIGNAL \inst11|Add5~6_combout\ : std_logic;
SIGNAL \inst11|Decoder0~0_combout\ : std_logic;
SIGNAL \inst11|dwReg[0]~0_combout\ : std_logic;
SIGNAL \inst11|Add5~7\ : std_logic;
SIGNAL \inst11|Add5~8_combout\ : std_logic;
SIGNAL \inst11|PP~0_combout\ : std_logic;
SIGNAL \inst11|Add5~9\ : std_logic;
SIGNAL \inst11|Add5~10_combout\ : std_logic;
SIGNAL \inst11|Add5~11\ : std_logic;
SIGNAL \inst11|Add5~12_combout\ : std_logic;
SIGNAL \inst11|Add5~13\ : std_logic;
SIGNAL \inst11|Add5~14_combout\ : std_logic;
SIGNAL \inst11|Add5~15\ : std_logic;
SIGNAL \inst11|Add5~16_combout\ : std_logic;
SIGNAL \inst11|Add5~17\ : std_logic;
SIGNAL \inst11|Add5~18_combout\ : std_logic;
SIGNAL \inst11|Add5~19\ : std_logic;
SIGNAL \inst11|Add5~20_combout\ : std_logic;
SIGNAL \inst11|Add5~21\ : std_logic;
SIGNAL \inst11|Add5~22_combout\ : std_logic;
SIGNAL \inst11|Equal9~3_combout\ : std_logic;
SIGNAL \inst11|Equal9~1_combout\ : std_logic;
SIGNAL \inst11|Equal9~2_combout\ : std_logic;
SIGNAL \inst11|Add5~23\ : std_logic;
SIGNAL \inst11|Add5~24_combout\ : std_logic;
SIGNAL \inst11|Add5~25\ : std_logic;
SIGNAL \inst11|Add5~26_combout\ : std_logic;
SIGNAL \inst11|Add5~27\ : std_logic;
SIGNAL \inst11|Add5~28_combout\ : std_logic;
SIGNAL \inst11|Add5~29\ : std_logic;
SIGNAL \inst11|Add5~30_combout\ : std_logic;
SIGNAL \inst11|Add5~31\ : std_logic;
SIGNAL \inst11|Add5~32_combout\ : std_logic;
SIGNAL \inst11|Add5~33\ : std_logic;
SIGNAL \inst11|Add5~34_combout\ : std_logic;
SIGNAL \inst11|Add5~35\ : std_logic;
SIGNAL \inst11|Add5~36_combout\ : std_logic;
SIGNAL \inst11|Add5~37\ : std_logic;
SIGNAL \inst11|Add5~38_combout\ : std_logic;
SIGNAL \inst11|Add5~39\ : std_logic;
SIGNAL \inst11|Add5~40_combout\ : std_logic;
SIGNAL \inst11|Add5~41\ : std_logic;
SIGNAL \inst11|Add5~42_combout\ : std_logic;
SIGNAL \inst11|Add5~43\ : std_logic;
SIGNAL \inst11|Add5~44_combout\ : std_logic;
SIGNAL \inst11|Add5~45\ : std_logic;
SIGNAL \inst11|Add5~46_combout\ : std_logic;
SIGNAL \inst11|Equal9~6_combout\ : std_logic;
SIGNAL \inst11|Equal9~5_combout\ : std_logic;
SIGNAL \inst11|Add5~47\ : std_logic;
SIGNAL \inst11|Add5~48_combout\ : std_logic;
SIGNAL \inst11|Add5~49\ : std_logic;
SIGNAL \inst11|Add5~50_combout\ : std_logic;
SIGNAL \inst11|Add5~51\ : std_logic;
SIGNAL \inst11|Add5~52_combout\ : std_logic;
SIGNAL \inst11|Add5~53\ : std_logic;
SIGNAL \inst11|Add5~54_combout\ : std_logic;
SIGNAL \inst11|Add5~55\ : std_logic;
SIGNAL \inst11|Add5~56_combout\ : std_logic;
SIGNAL \inst11|Add5~57\ : std_logic;
SIGNAL \inst11|Add5~58_combout\ : std_logic;
SIGNAL \inst11|Add5~59\ : std_logic;
SIGNAL \inst11|Add5~60_combout\ : std_logic;
SIGNAL \inst11|Add5~61\ : std_logic;
SIGNAL \inst11|Add5~62_combout\ : std_logic;
SIGNAL \inst11|Equal9~8_combout\ : std_logic;
SIGNAL \inst11|Equal9~7_combout\ : std_logic;
SIGNAL \inst11|Equal9~9_combout\ : std_logic;
SIGNAL \inst11|Equal9~4_combout\ : std_logic;
SIGNAL \inst11|Equal9~10_combout\ : std_logic;
SIGNAL \inst11|rtl~0_combout\ : std_logic;
SIGNAL \inst11|rtl~q\ : std_logic;
SIGNAL \inst11|Decoder0~1_combout\ : std_logic;
SIGNAL \inst11|dwReg[1]~1_combout\ : std_logic;
SIGNAL \inst11|Decoder0~2_combout\ : std_logic;
SIGNAL \inst11|dwReg[2]~2_combout\ : std_logic;
SIGNAL \inst11|rx_data[2]~feeder_combout\ : std_logic;
SIGNAL \inst11|Decoder0~3_combout\ : std_logic;
SIGNAL \inst11|dwReg[3]~3_combout\ : std_logic;
SIGNAL \inst11|rx_data[3]~feeder_combout\ : std_logic;
SIGNAL \inst11|Decoder0~4_combout\ : std_logic;
SIGNAL \inst11|dwReg[4]~4_combout\ : std_logic;
SIGNAL \inst11|dwReg[5]~5_combout\ : std_logic;
SIGNAL \inst11|dwReg[6]~6_combout\ : std_logic;
SIGNAL \inst11|rx_data[6]~feeder_combout\ : std_logic;
SIGNAL \inst11|dwReg[7]~7_combout\ : std_logic;
SIGNAL \inst11|rx_data[7]~feeder_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~0_combout\ : std_logic;
SIGNAL \inst|inst4|CC~0_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~1\ : std_logic;
SIGNAL \inst|inst4|Add2~2_combout\ : std_logic;
SIGNAL \inst|inst4|CC~1_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~3\ : std_logic;
SIGNAL \inst|inst4|Add2~4_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~5\ : std_logic;
SIGNAL \inst|inst4|Add2~6_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~7\ : std_logic;
SIGNAL \inst|inst4|Add2~8_combout\ : std_logic;
SIGNAL \inst|inst4|CC~2_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~9\ : std_logic;
SIGNAL \inst|inst4|Add2~10_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~11\ : std_logic;
SIGNAL \inst|inst4|Add2~12_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~13\ : std_logic;
SIGNAL \inst|inst4|Add2~14_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~15\ : std_logic;
SIGNAL \inst|inst4|Add2~16_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~17\ : std_logic;
SIGNAL \inst|inst4|Add2~18_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~19\ : std_logic;
SIGNAL \inst|inst4|Add2~20_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~21\ : std_logic;
SIGNAL \inst|inst4|Add2~22_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~23\ : std_logic;
SIGNAL \inst|inst4|Add2~24_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~25\ : std_logic;
SIGNAL \inst|inst4|Add2~26_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~27\ : std_logic;
SIGNAL \inst|inst4|Add2~28_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~29\ : std_logic;
SIGNAL \inst|inst4|Add2~30_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~31\ : std_logic;
SIGNAL \inst|inst4|Add2~32_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~33\ : std_logic;
SIGNAL \inst|inst4|Add2~34_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~35\ : std_logic;
SIGNAL \inst|inst4|Add2~36_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~37\ : std_logic;
SIGNAL \inst|inst4|Add2~38_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~39\ : std_logic;
SIGNAL \inst|inst4|Add2~40_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~41\ : std_logic;
SIGNAL \inst|inst4|Add2~42_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~43\ : std_logic;
SIGNAL \inst|inst4|Add2~44_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~45\ : std_logic;
SIGNAL \inst|inst4|Add2~46_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~47\ : std_logic;
SIGNAL \inst|inst4|Add2~48_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~49\ : std_logic;
SIGNAL \inst|inst4|Add2~50_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~51\ : std_logic;
SIGNAL \inst|inst4|Add2~52_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~53\ : std_logic;
SIGNAL \inst|inst4|Add2~54_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~55\ : std_logic;
SIGNAL \inst|inst4|Add2~56_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~57\ : std_logic;
SIGNAL \inst|inst4|Add2~58_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~59\ : std_logic;
SIGNAL \inst|inst4|Add2~60_combout\ : std_logic;
SIGNAL \inst|inst4|Add2~61\ : std_logic;
SIGNAL \inst|inst4|Add2~62_combout\ : std_logic;
SIGNAL \inst|inst4|state_clk~4_combout\ : std_logic;
SIGNAL \inst|inst4|state_clk~2_combout\ : std_logic;
SIGNAL \inst|inst4|state_clk~3_combout\ : std_logic;
SIGNAL \inst|inst4|state_clk~5_combout\ : std_logic;
SIGNAL \inst|inst4|state_clk~11_combout\ : std_logic;
SIGNAL \inst|inst4|state_clk~8_combout\ : std_logic;
SIGNAL \inst|inst4|state_clk~7_combout\ : std_logic;
SIGNAL \inst|inst4|state_clk~6_combout\ : std_logic;
SIGNAL \inst|inst4|state_clk~9_combout\ : std_logic;
SIGNAL \inst|inst4|state_clk~10_combout\ : std_logic;
SIGNAL \inst|inst4|state_clk~12_combout\ : std_logic;
SIGNAL \inst|inst4|state_clk~13_combout\ : std_logic;
SIGNAL \inst|inst4|state_clk~q\ : std_logic;
SIGNAL \inst|inst4|rtc~0_combout\ : std_logic;
SIGNAL \inst|inst4|rtc~q\ : std_logic;
SIGNAL \inst|inst4|CLKO~0_combout\ : std_logic;
SIGNAL \inst|inst4|MOSI~0_combout\ : std_logic;
SIGNAL \inst|inst4|Add4~0_combout\ : std_logic;
SIGNAL \inst|inst4|Add4~1\ : std_logic;
SIGNAL \inst|inst4|Add4~2_combout\ : std_logic;
SIGNAL \inst|inst4|Add4~3\ : std_logic;
SIGNAL \inst|inst4|Add4~4_combout\ : std_logic;
SIGNAL \inst|inst4|Add4~5\ : std_logic;
SIGNAL \inst|inst4|Add4~6_combout\ : std_logic;
SIGNAL \inst|inst2|WideNor0~2_combout\ : std_logic;
SIGNAL \inst|inst2|WideNor0~3_combout\ : std_logic;
SIGNAL \inst|inst2|WideOr2~combout\ : std_logic;
SIGNAL \inst|inst2|WideNor0~4_combout\ : std_logic;
SIGNAL \inst|inst2|Equal1~12_combout\ : std_logic;
SIGNAL \inst|inst2|Equal2~0_combout\ : std_logic;
SIGNAL \inst|inst2|WideOr3~0_combout\ : std_logic;
SIGNAL \inst|inst2|WideOr3~1_combout\ : std_logic;
SIGNAL \inst|inst2|WideOr4~0_combout\ : std_logic;
SIGNAL \inst|inst2|WideOr4~1_combout\ : std_logic;
SIGNAL \inst|inst2|WideOr4~2_combout\ : std_logic;
SIGNAL \inst|inst4|Mux0~2_combout\ : std_logic;
SIGNAL \inst|inst4|Mux0~3_combout\ : std_logic;
SIGNAL \inst|inst2|WideOr0~combout\ : std_logic;
SIGNAL \inst|inst2|ADDRESS~0_combout\ : std_logic;
SIGNAL \inst|inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst|inst4|Mux0~1_combout\ : std_logic;
SIGNAL \inst|inst4|Mux0~4_combout\ : std_logic;
SIGNAL \inst|inst4|MOSI~q\ : std_logic;
SIGNAL \inst|inst4|CC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|inst2|ADDRESS\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|inst|addNo\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst20|Counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst11|rx_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst11|CC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst5|dataOut\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst11|BP\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|inst4|BP\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst11|dwReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|inst1|Data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst11|delay_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst5|idx\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst11|EC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|inst3|OS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|strtTx\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst11|PP\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|inst4|delay_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|inst4|EC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|inst1|addNo\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|inst3|FS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst3|NS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst15|nextTx\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_CLK_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\ : std_logic;

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
LED0 <= ww_LED0;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
LED4 <= ww_LED4;
LED5 <= ww_LED5;
LED6 <= ww_LED6;
LED7 <= ww_LED7;
MPU_CS <= ww_MPU_CS;
MPU_MSTR_CLK <= ww_MPU_MSTR_CLK;
MPU_MOSI <= ww_MPU_MOSI;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst20|CLK_OUT~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst20|CLK_OUT~q\);

\CLK_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50MHz~input_o\);
\ALT_INV_CLK_50MHz~inputclkctrl_outclk\ <= NOT \CLK_50MHz~inputclkctrl_outclk\;
\inst20|ALT_INV_CLK_OUT~clkctrl_outclk\ <= NOT \inst20|CLK_OUT~clkctrl_outclk\;
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
	i => \inst11|CS~combout\,
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
	i => \inst11|CLKO~0_combout\,
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
	i => \inst11|MOSI~q\,
	devoe => ww_devoe,
	o => \MOSI~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\LED0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|rx_data\(0),
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
	i => \inst11|rx_data\(1),
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
	i => \inst11|rx_data\(2),
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
	i => \inst11|rx_data\(3),
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
	i => \inst11|rx_data\(4),
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
	i => \inst11|rx_data\(5),
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
	i => \inst11|rx_data\(6),
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
	i => \inst11|rx_data\(7),
	devoe => ww_devoe,
	o => \LED7~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\MPU_CS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|CS~combout\,
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
	i => \inst|inst4|CLKO~0_combout\,
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
	i => \inst|inst4|MOSI~q\,
	devoe => ww_devoe,
	o => \MPU_MOSI~output_o\);

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

-- Location: LCCOMB_X28_Y21_N18
\inst20|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Add0~0_combout\ = (\inst20|Counter\(0) & (\inst20|Counter\(1) & (\inst20|Counter\(3) & \inst20|Counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Counter\(0),
	datab => \inst20|Counter\(1),
	datac => \inst20|Counter\(3),
	datad => \inst20|Counter\(2),
	combout => \inst20|Add0~0_combout\);

-- Location: LCCOMB_X28_Y21_N30
\inst20|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Add0~1_combout\ = \inst20|Counter\(3) $ (((\inst20|Counter\(1) & (\inst20|Counter\(0) & \inst20|Counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Counter\(3),
	datab => \inst20|Counter\(1),
	datac => \inst20|Counter\(0),
	datad => \inst20|Counter\(2),
	combout => \inst20|Add0~1_combout\);

-- Location: LCCOMB_X28_Y21_N22
\inst20|Counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Counter~1_combout\ = (\inst20|Add0~1_combout\ & ((\inst20|Counter\(4) $ (!\inst20|Add0~0_combout\)) # (!\inst20|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Counter\(4),
	datab => \inst20|Equal0~0_combout\,
	datac => \inst20|Add0~0_combout\,
	datad => \inst20|Add0~1_combout\,
	combout => \inst20|Counter~1_combout\);

-- Location: FF_X28_Y21_N23
\inst20|Counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	d => \inst20|Counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Counter\(3));

-- Location: LCCOMB_X28_Y21_N26
\inst20|Counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Counter~2_combout\ = (\inst20|Counter\(3) & !\inst20|Counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Counter\(3),
	datad => \inst20|Counter\(2),
	combout => \inst20|Counter~2_combout\);

-- Location: LCCOMB_X28_Y21_N24
\inst20|Counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Counter~3_combout\ = (!\inst20|Counter\(0) & (((\inst20|Counter\(1)) # (!\inst20|Counter~2_combout\)) # (!\inst20|Counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Counter\(4),
	datab => \inst20|Counter\(1),
	datac => \inst20|Counter\(0),
	datad => \inst20|Counter~2_combout\,
	combout => \inst20|Counter~3_combout\);

-- Location: FF_X28_Y21_N25
\inst20|Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	d => \inst20|Counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Counter\(0));

-- Location: LCCOMB_X28_Y21_N20
\inst20|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Add0~3_combout\ = \inst20|Counter\(0) $ (\inst20|Counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Counter\(0),
	datac => \inst20|Counter\(1),
	combout => \inst20|Add0~3_combout\);

-- Location: FF_X28_Y21_N21
\inst20|Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	d => \inst20|Add0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Counter\(1));

-- Location: LCCOMB_X28_Y21_N10
\inst20|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Add0~2_combout\ = \inst20|Counter\(2) $ (((\inst20|Counter\(1) & \inst20|Counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Counter\(1),
	datac => \inst20|Counter\(2),
	datad => \inst20|Counter\(0),
	combout => \inst20|Add0~2_combout\);

-- Location: FF_X28_Y21_N11
\inst20|Counter[2]\ : dffeas
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
	q => \inst20|Counter\(2));

-- Location: LCCOMB_X28_Y21_N2
\inst20|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Equal0~0_combout\ = (!\inst20|Counter\(2) & (!\inst20|Counter\(0) & (\inst20|Counter\(3) & !\inst20|Counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Counter\(2),
	datab => \inst20|Counter\(0),
	datac => \inst20|Counter\(3),
	datad => \inst20|Counter\(1),
	combout => \inst20|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y21_N28
\inst20|Counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Counter~0_combout\ = (!\inst20|Equal0~0_combout\ & (\inst20|Counter\(4) $ (\inst20|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Equal0~0_combout\,
	datac => \inst20|Counter\(4),
	datad => \inst20|Add0~0_combout\,
	combout => \inst20|Counter~0_combout\);

-- Location: FF_X28_Y21_N29
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

-- Location: FF_X28_Y21_N13
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

-- Location: LCCOMB_X28_Y21_N12
\inst20|OutputState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|OutputState~0_combout\ = \inst20|OutputState~q\ $ (((\inst20|Equal0~0_combout\ & (\inst20|Counter\(4) $ (\inst20|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Counter\(4),
	datab => \inst20|Equal0~0_combout\,
	datac => \inst20|OutputState~q\,
	datad => \inst20|Add0~0_combout\,
	combout => \inst20|OutputState~0_combout\);

-- Location: LCCOMB_X28_Y21_N0
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

-- Location: FF_X28_Y21_N1
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

-- Location: CLKCTRL_G11
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

-- Location: LCCOMB_X25_Y24_N0
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

-- Location: LCCOMB_X24_Y25_N26
\inst11|delay_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|delay_counter~5_combout\ = (\inst11|Add6~36_combout\ & !\inst11|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add6~36_combout\,
	datac => \inst11|Equal10~10_combout\,
	combout => \inst11|delay_counter~5_combout\);

-- Location: FF_X24_Y25_N27
\inst11|delay_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|delay_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(18));

-- Location: LCCOMB_X25_Y26_N0
\inst11|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~0_combout\ = \inst11|delay_counter\(0) $ (VCC)
-- \inst11|Add6~1\ = CARRY(\inst11|delay_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(0),
	datad => VCC,
	combout => \inst11|Add6~0_combout\,
	cout => \inst11|Add6~1\);

-- Location: FF_X25_Y26_N1
\inst11|delay_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(0));

-- Location: LCCOMB_X25_Y26_N2
\inst11|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~2_combout\ = (\inst11|delay_counter\(1) & (!\inst11|Add6~1\)) # (!\inst11|delay_counter\(1) & ((\inst11|Add6~1\) # (GND)))
-- \inst11|Add6~3\ = CARRY((!\inst11|Add6~1\) # (!\inst11|delay_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(1),
	datad => VCC,
	cin => \inst11|Add6~1\,
	combout => \inst11|Add6~2_combout\,
	cout => \inst11|Add6~3\);

-- Location: FF_X25_Y26_N3
\inst11|delay_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(1));

-- Location: LCCOMB_X25_Y26_N4
\inst11|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~4_combout\ = (\inst11|delay_counter\(2) & (\inst11|Add6~3\ $ (GND))) # (!\inst11|delay_counter\(2) & (!\inst11|Add6~3\ & VCC))
-- \inst11|Add6~5\ = CARRY((\inst11|delay_counter\(2) & !\inst11|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(2),
	datad => VCC,
	cin => \inst11|Add6~3\,
	combout => \inst11|Add6~4_combout\,
	cout => \inst11|Add6~5\);

-- Location: FF_X25_Y26_N5
\inst11|delay_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(2));

-- Location: LCCOMB_X25_Y26_N6
\inst11|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~6_combout\ = (\inst11|delay_counter\(3) & (!\inst11|Add6~5\)) # (!\inst11|delay_counter\(3) & ((\inst11|Add6~5\) # (GND)))
-- \inst11|Add6~7\ = CARRY((!\inst11|Add6~5\) # (!\inst11|delay_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|delay_counter\(3),
	datad => VCC,
	cin => \inst11|Add6~5\,
	combout => \inst11|Add6~6_combout\,
	cout => \inst11|Add6~7\);

-- Location: FF_X25_Y26_N7
\inst11|delay_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(3));

-- Location: LCCOMB_X25_Y26_N8
\inst11|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~8_combout\ = (\inst11|delay_counter\(4) & (\inst11|Add6~7\ $ (GND))) # (!\inst11|delay_counter\(4) & (!\inst11|Add6~7\ & VCC))
-- \inst11|Add6~9\ = CARRY((\inst11|delay_counter\(4) & !\inst11|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(4),
	datad => VCC,
	cin => \inst11|Add6~7\,
	combout => \inst11|Add6~8_combout\,
	cout => \inst11|Add6~9\);

-- Location: FF_X25_Y26_N9
\inst11|delay_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(4));

-- Location: LCCOMB_X25_Y26_N10
\inst11|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~10_combout\ = (\inst11|delay_counter\(5) & (!\inst11|Add6~9\)) # (!\inst11|delay_counter\(5) & ((\inst11|Add6~9\) # (GND)))
-- \inst11|Add6~11\ = CARRY((!\inst11|Add6~9\) # (!\inst11|delay_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|delay_counter\(5),
	datad => VCC,
	cin => \inst11|Add6~9\,
	combout => \inst11|Add6~10_combout\,
	cout => \inst11|Add6~11\);

-- Location: FF_X25_Y26_N11
\inst11|delay_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(5));

-- Location: LCCOMB_X25_Y26_N12
\inst11|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~12_combout\ = (\inst11|delay_counter\(6) & (\inst11|Add6~11\ $ (GND))) # (!\inst11|delay_counter\(6) & (!\inst11|Add6~11\ & VCC))
-- \inst11|Add6~13\ = CARRY((\inst11|delay_counter\(6) & !\inst11|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|delay_counter\(6),
	datad => VCC,
	cin => \inst11|Add6~11\,
	combout => \inst11|Add6~12_combout\,
	cout => \inst11|Add6~13\);

-- Location: LCCOMB_X24_Y25_N12
\inst11|delay_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|delay_counter~0_combout\ = (\inst11|Add6~12_combout\ & !\inst11|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add6~12_combout\,
	datac => \inst11|Equal10~10_combout\,
	combout => \inst11|delay_counter~0_combout\);

-- Location: FF_X24_Y25_N13
\inst11|delay_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|delay_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(6));

-- Location: LCCOMB_X25_Y26_N14
\inst11|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~14_combout\ = (\inst11|delay_counter\(7) & (!\inst11|Add6~13\)) # (!\inst11|delay_counter\(7) & ((\inst11|Add6~13\) # (GND)))
-- \inst11|Add6~15\ = CARRY((!\inst11|Add6~13\) # (!\inst11|delay_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(7),
	datad => VCC,
	cin => \inst11|Add6~13\,
	combout => \inst11|Add6~14_combout\,
	cout => \inst11|Add6~15\);

-- Location: FF_X25_Y26_N15
\inst11|delay_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(7));

-- Location: LCCOMB_X25_Y26_N16
\inst11|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~16_combout\ = (\inst11|delay_counter\(8) & (\inst11|Add6~15\ $ (GND))) # (!\inst11|delay_counter\(8) & (!\inst11|Add6~15\ & VCC))
-- \inst11|Add6~17\ = CARRY((\inst11|delay_counter\(8) & !\inst11|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(8),
	datad => VCC,
	cin => \inst11|Add6~15\,
	combout => \inst11|Add6~16_combout\,
	cout => \inst11|Add6~17\);

-- Location: FF_X25_Y26_N17
\inst11|delay_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(8));

-- Location: LCCOMB_X25_Y26_N18
\inst11|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~18_combout\ = (\inst11|delay_counter\(9) & (!\inst11|Add6~17\)) # (!\inst11|delay_counter\(9) & ((\inst11|Add6~17\) # (GND)))
-- \inst11|Add6~19\ = CARRY((!\inst11|Add6~17\) # (!\inst11|delay_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|delay_counter\(9),
	datad => VCC,
	cin => \inst11|Add6~17\,
	combout => \inst11|Add6~18_combout\,
	cout => \inst11|Add6~19\);

-- Location: LCCOMB_X24_Y25_N22
\inst11|delay_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|delay_counter~1_combout\ = (\inst11|Add6~18_combout\ & !\inst11|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add6~18_combout\,
	datad => \inst11|Equal10~10_combout\,
	combout => \inst11|delay_counter~1_combout\);

-- Location: FF_X24_Y25_N23
\inst11|delay_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|delay_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(9));

-- Location: LCCOMB_X25_Y26_N20
\inst11|Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~20_combout\ = (\inst11|delay_counter\(10) & (\inst11|Add6~19\ $ (GND))) # (!\inst11|delay_counter\(10) & (!\inst11|Add6~19\ & VCC))
-- \inst11|Add6~21\ = CARRY((\inst11|delay_counter\(10) & !\inst11|Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(10),
	datad => VCC,
	cin => \inst11|Add6~19\,
	combout => \inst11|Add6~20_combout\,
	cout => \inst11|Add6~21\);

-- Location: FF_X25_Y26_N21
\inst11|delay_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(10));

-- Location: LCCOMB_X25_Y26_N22
\inst11|Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~22_combout\ = (\inst11|delay_counter\(11) & (!\inst11|Add6~21\)) # (!\inst11|delay_counter\(11) & ((\inst11|Add6~21\) # (GND)))
-- \inst11|Add6~23\ = CARRY((!\inst11|Add6~21\) # (!\inst11|delay_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|delay_counter\(11),
	datad => VCC,
	cin => \inst11|Add6~21\,
	combout => \inst11|Add6~22_combout\,
	cout => \inst11|Add6~23\);

-- Location: FF_X25_Y26_N23
\inst11|delay_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(11));

-- Location: LCCOMB_X25_Y26_N24
\inst11|Add6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~24_combout\ = (\inst11|delay_counter\(12) & (\inst11|Add6~23\ $ (GND))) # (!\inst11|delay_counter\(12) & (!\inst11|Add6~23\ & VCC))
-- \inst11|Add6~25\ = CARRY((\inst11|delay_counter\(12) & !\inst11|Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(12),
	datad => VCC,
	cin => \inst11|Add6~23\,
	combout => \inst11|Add6~24_combout\,
	cout => \inst11|Add6~25\);

-- Location: FF_X25_Y26_N25
\inst11|delay_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(12));

-- Location: LCCOMB_X25_Y26_N26
\inst11|Add6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~26_combout\ = (\inst11|delay_counter\(13) & (!\inst11|Add6~25\)) # (!\inst11|delay_counter\(13) & ((\inst11|Add6~25\) # (GND)))
-- \inst11|Add6~27\ = CARRY((!\inst11|Add6~25\) # (!\inst11|delay_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|delay_counter\(13),
	datad => VCC,
	cin => \inst11|Add6~25\,
	combout => \inst11|Add6~26_combout\,
	cout => \inst11|Add6~27\);

-- Location: FF_X25_Y26_N27
\inst11|delay_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(13));

-- Location: LCCOMB_X25_Y26_N28
\inst11|Add6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~28_combout\ = (\inst11|delay_counter\(14) & (\inst11|Add6~27\ $ (GND))) # (!\inst11|delay_counter\(14) & (!\inst11|Add6~27\ & VCC))
-- \inst11|Add6~29\ = CARRY((\inst11|delay_counter\(14) & !\inst11|Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(14),
	datad => VCC,
	cin => \inst11|Add6~27\,
	combout => \inst11|Add6~28_combout\,
	cout => \inst11|Add6~29\);

-- Location: LCCOMB_X24_Y25_N0
\inst11|delay_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|delay_counter~2_combout\ = (\inst11|Add6~28_combout\ & !\inst11|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add6~28_combout\,
	datad => \inst11|Equal10~10_combout\,
	combout => \inst11|delay_counter~2_combout\);

-- Location: FF_X24_Y25_N1
\inst11|delay_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|delay_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(14));

-- Location: LCCOMB_X25_Y26_N30
\inst11|Add6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~30_combout\ = (\inst11|delay_counter\(15) & (!\inst11|Add6~29\)) # (!\inst11|delay_counter\(15) & ((\inst11|Add6~29\) # (GND)))
-- \inst11|Add6~31\ = CARRY((!\inst11|Add6~29\) # (!\inst11|delay_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|delay_counter\(15),
	datad => VCC,
	cin => \inst11|Add6~29\,
	combout => \inst11|Add6~30_combout\,
	cout => \inst11|Add6~31\);

-- Location: FF_X25_Y26_N31
\inst11|delay_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(15));

-- Location: LCCOMB_X25_Y25_N0
\inst11|Add6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~32_combout\ = (\inst11|delay_counter\(16) & (\inst11|Add6~31\ $ (GND))) # (!\inst11|delay_counter\(16) & (!\inst11|Add6~31\ & VCC))
-- \inst11|Add6~33\ = CARRY((\inst11|delay_counter\(16) & !\inst11|Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|delay_counter\(16),
	datad => VCC,
	cin => \inst11|Add6~31\,
	combout => \inst11|Add6~32_combout\,
	cout => \inst11|Add6~33\);

-- Location: LCCOMB_X24_Y25_N10
\inst11|delay_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|delay_counter~3_combout\ = (\inst11|Add6~32_combout\ & !\inst11|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add6~32_combout\,
	datad => \inst11|Equal10~10_combout\,
	combout => \inst11|delay_counter~3_combout\);

-- Location: FF_X24_Y25_N11
\inst11|delay_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|delay_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(16));

-- Location: LCCOMB_X25_Y25_N2
\inst11|Add6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~34_combout\ = (\inst11|delay_counter\(17) & (!\inst11|Add6~33\)) # (!\inst11|delay_counter\(17) & ((\inst11|Add6~33\) # (GND)))
-- \inst11|Add6~35\ = CARRY((!\inst11|Add6~33\) # (!\inst11|delay_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|delay_counter\(17),
	datad => VCC,
	cin => \inst11|Add6~33\,
	combout => \inst11|Add6~34_combout\,
	cout => \inst11|Add6~35\);

-- Location: LCCOMB_X24_Y25_N16
\inst11|delay_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|delay_counter~4_combout\ = (\inst11|Add6~34_combout\ & !\inst11|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add6~34_combout\,
	datac => \inst11|Equal10~10_combout\,
	combout => \inst11|delay_counter~4_combout\);

-- Location: FF_X24_Y25_N17
\inst11|delay_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|delay_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(17));

-- Location: LCCOMB_X25_Y25_N4
\inst11|Add6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~36_combout\ = (\inst11|delay_counter\(18) & (\inst11|Add6~35\ $ (GND))) # (!\inst11|delay_counter\(18) & (!\inst11|Add6~35\ & VCC))
-- \inst11|Add6~37\ = CARRY((\inst11|delay_counter\(18) & !\inst11|Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|delay_counter\(18),
	datad => VCC,
	cin => \inst11|Add6~35\,
	combout => \inst11|Add6~36_combout\,
	cout => \inst11|Add6~37\);

-- Location: LCCOMB_X24_Y25_N24
\inst11|delay_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|delay_counter~6_combout\ = (\inst11|Add6~38_combout\ & !\inst11|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add6~38_combout\,
	datac => \inst11|Equal10~10_combout\,
	combout => \inst11|delay_counter~6_combout\);

-- Location: FF_X24_Y25_N25
\inst11|delay_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|delay_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(19));

-- Location: LCCOMB_X25_Y25_N6
\inst11|Add6~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~38_combout\ = (\inst11|delay_counter\(19) & (!\inst11|Add6~37\)) # (!\inst11|delay_counter\(19) & ((\inst11|Add6~37\) # (GND)))
-- \inst11|Add6~39\ = CARRY((!\inst11|Add6~37\) # (!\inst11|delay_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(19),
	datad => VCC,
	cin => \inst11|Add6~37\,
	combout => \inst11|Add6~38_combout\,
	cout => \inst11|Add6~39\);

-- Location: LCCOMB_X24_Y25_N30
\inst11|Equal10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal10~5_combout\ = (\inst11|Add6~36_combout\ & (\inst11|Add6~32_combout\ & (\inst11|Add6~34_combout\ & \inst11|Add6~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add6~36_combout\,
	datab => \inst11|Add6~32_combout\,
	datac => \inst11|Add6~34_combout\,
	datad => \inst11|Add6~38_combout\,
	combout => \inst11|Equal10~5_combout\);

-- Location: FF_X25_Y25_N13
\inst11|delay_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(22));

-- Location: LCCOMB_X25_Y25_N8
\inst11|Add6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~40_combout\ = (\inst11|delay_counter\(20) & (\inst11|Add6~39\ $ (GND))) # (!\inst11|delay_counter\(20) & (!\inst11|Add6~39\ & VCC))
-- \inst11|Add6~41\ = CARRY((\inst11|delay_counter\(20) & !\inst11|Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(20),
	datad => VCC,
	cin => \inst11|Add6~39\,
	combout => \inst11|Add6~40_combout\,
	cout => \inst11|Add6~41\);

-- Location: FF_X25_Y25_N9
\inst11|delay_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(20));

-- Location: LCCOMB_X25_Y25_N10
\inst11|Add6~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~42_combout\ = (\inst11|delay_counter\(21) & (!\inst11|Add6~41\)) # (!\inst11|delay_counter\(21) & ((\inst11|Add6~41\) # (GND)))
-- \inst11|Add6~43\ = CARRY((!\inst11|Add6~41\) # (!\inst11|delay_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|delay_counter\(21),
	datad => VCC,
	cin => \inst11|Add6~41\,
	combout => \inst11|Add6~42_combout\,
	cout => \inst11|Add6~43\);

-- Location: FF_X25_Y25_N11
\inst11|delay_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(21));

-- Location: LCCOMB_X25_Y25_N12
\inst11|Add6~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~44_combout\ = (\inst11|delay_counter\(22) & (\inst11|Add6~43\ $ (GND))) # (!\inst11|delay_counter\(22) & (!\inst11|Add6~43\ & VCC))
-- \inst11|Add6~45\ = CARRY((\inst11|delay_counter\(22) & !\inst11|Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|delay_counter\(22),
	datad => VCC,
	cin => \inst11|Add6~43\,
	combout => \inst11|Add6~44_combout\,
	cout => \inst11|Add6~45\);

-- Location: FF_X25_Y25_N15
\inst11|delay_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(23));

-- Location: LCCOMB_X25_Y25_N14
\inst11|Add6~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~46_combout\ = (\inst11|delay_counter\(23) & (!\inst11|Add6~45\)) # (!\inst11|delay_counter\(23) & ((\inst11|Add6~45\) # (GND)))
-- \inst11|Add6~47\ = CARRY((!\inst11|Add6~45\) # (!\inst11|delay_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(23),
	datad => VCC,
	cin => \inst11|Add6~45\,
	combout => \inst11|Add6~46_combout\,
	cout => \inst11|Add6~47\);

-- Location: LCCOMB_X24_Y25_N28
\inst11|Equal10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal10~6_combout\ = (!\inst11|Add6~44_combout\ & (!\inst11|Add6~42_combout\ & (!\inst11|Add6~46_combout\ & !\inst11|Add6~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add6~44_combout\,
	datab => \inst11|Add6~42_combout\,
	datac => \inst11|Add6~46_combout\,
	datad => \inst11|Add6~40_combout\,
	combout => \inst11|Equal10~6_combout\);

-- Location: LCCOMB_X24_Y26_N12
\inst11|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal10~2_combout\ = (!\inst11|Add6~20_combout\ & (\inst11|Add6~18_combout\ & (!\inst11|Add6~22_combout\ & !\inst11|Add6~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add6~20_combout\,
	datab => \inst11|Add6~18_combout\,
	datac => \inst11|Add6~22_combout\,
	datad => \inst11|Add6~16_combout\,
	combout => \inst11|Equal10~2_combout\);

-- Location: LCCOMB_X24_Y26_N4
\inst11|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal10~0_combout\ = (!\inst11|Add6~6_combout\ & (!\inst11|Add6~2_combout\ & (!\inst11|Add6~0_combout\ & !\inst11|Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add6~6_combout\,
	datab => \inst11|Add6~2_combout\,
	datac => \inst11|Add6~0_combout\,
	datad => \inst11|Add6~4_combout\,
	combout => \inst11|Equal10~0_combout\);

-- Location: LCCOMB_X24_Y26_N30
\inst11|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal10~1_combout\ = (!\inst11|Add6~8_combout\ & (\inst11|Add6~12_combout\ & (!\inst11|Add6~14_combout\ & !\inst11|Add6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add6~8_combout\,
	datab => \inst11|Add6~12_combout\,
	datac => \inst11|Add6~14_combout\,
	datad => \inst11|Add6~10_combout\,
	combout => \inst11|Equal10~1_combout\);

-- Location: LCCOMB_X24_Y26_N10
\inst11|Equal10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal10~3_combout\ = (!\inst11|Add6~30_combout\ & (\inst11|Add6~28_combout\ & (!\inst11|Add6~26_combout\ & !\inst11|Add6~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add6~30_combout\,
	datab => \inst11|Add6~28_combout\,
	datac => \inst11|Add6~26_combout\,
	datad => \inst11|Add6~24_combout\,
	combout => \inst11|Equal10~3_combout\);

-- Location: LCCOMB_X24_Y26_N28
\inst11|Equal10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal10~4_combout\ = (\inst11|Equal10~2_combout\ & (\inst11|Equal10~0_combout\ & (\inst11|Equal10~1_combout\ & \inst11|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal10~2_combout\,
	datab => \inst11|Equal10~0_combout\,
	datac => \inst11|Equal10~1_combout\,
	datad => \inst11|Equal10~3_combout\,
	combout => \inst11|Equal10~4_combout\);

-- Location: FF_X25_Y25_N31
\inst11|delay_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(31));

-- Location: LCCOMB_X25_Y25_N16
\inst11|Add6~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~48_combout\ = (\inst11|delay_counter\(24) & (\inst11|Add6~47\ $ (GND))) # (!\inst11|delay_counter\(24) & (!\inst11|Add6~47\ & VCC))
-- \inst11|Add6~49\ = CARRY((\inst11|delay_counter\(24) & !\inst11|Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(24),
	datad => VCC,
	cin => \inst11|Add6~47\,
	combout => \inst11|Add6~48_combout\,
	cout => \inst11|Add6~49\);

-- Location: FF_X25_Y25_N17
\inst11|delay_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(24));

-- Location: LCCOMB_X25_Y25_N18
\inst11|Add6~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~50_combout\ = (\inst11|delay_counter\(25) & (!\inst11|Add6~49\)) # (!\inst11|delay_counter\(25) & ((\inst11|Add6~49\) # (GND)))
-- \inst11|Add6~51\ = CARRY((!\inst11|Add6~49\) # (!\inst11|delay_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(25),
	datad => VCC,
	cin => \inst11|Add6~49\,
	combout => \inst11|Add6~50_combout\,
	cout => \inst11|Add6~51\);

-- Location: FF_X25_Y25_N19
\inst11|delay_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(25));

-- Location: LCCOMB_X25_Y25_N20
\inst11|Add6~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~52_combout\ = (\inst11|delay_counter\(26) & (\inst11|Add6~51\ $ (GND))) # (!\inst11|delay_counter\(26) & (!\inst11|Add6~51\ & VCC))
-- \inst11|Add6~53\ = CARRY((\inst11|delay_counter\(26) & !\inst11|Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(26),
	datad => VCC,
	cin => \inst11|Add6~51\,
	combout => \inst11|Add6~52_combout\,
	cout => \inst11|Add6~53\);

-- Location: FF_X25_Y25_N21
\inst11|delay_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(26));

-- Location: LCCOMB_X25_Y25_N22
\inst11|Add6~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~54_combout\ = (\inst11|delay_counter\(27) & (!\inst11|Add6~53\)) # (!\inst11|delay_counter\(27) & ((\inst11|Add6~53\) # (GND)))
-- \inst11|Add6~55\ = CARRY((!\inst11|Add6~53\) # (!\inst11|delay_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|delay_counter\(27),
	datad => VCC,
	cin => \inst11|Add6~53\,
	combout => \inst11|Add6~54_combout\,
	cout => \inst11|Add6~55\);

-- Location: FF_X25_Y25_N23
\inst11|delay_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(27));

-- Location: LCCOMB_X25_Y25_N24
\inst11|Add6~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~56_combout\ = (\inst11|delay_counter\(28) & (\inst11|Add6~55\ $ (GND))) # (!\inst11|delay_counter\(28) & (!\inst11|Add6~55\ & VCC))
-- \inst11|Add6~57\ = CARRY((\inst11|delay_counter\(28) & !\inst11|Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(28),
	datad => VCC,
	cin => \inst11|Add6~55\,
	combout => \inst11|Add6~56_combout\,
	cout => \inst11|Add6~57\);

-- Location: FF_X25_Y25_N25
\inst11|delay_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(28));

-- Location: LCCOMB_X25_Y25_N26
\inst11|Add6~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~58_combout\ = (\inst11|delay_counter\(29) & (!\inst11|Add6~57\)) # (!\inst11|delay_counter\(29) & ((\inst11|Add6~57\) # (GND)))
-- \inst11|Add6~59\ = CARRY((!\inst11|Add6~57\) # (!\inst11|delay_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|delay_counter\(29),
	datad => VCC,
	cin => \inst11|Add6~57\,
	combout => \inst11|Add6~58_combout\,
	cout => \inst11|Add6~59\);

-- Location: FF_X25_Y25_N27
\inst11|delay_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(29));

-- Location: LCCOMB_X25_Y25_N28
\inst11|Add6~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~60_combout\ = (\inst11|delay_counter\(30) & (\inst11|Add6~59\ $ (GND))) # (!\inst11|delay_counter\(30) & (!\inst11|Add6~59\ & VCC))
-- \inst11|Add6~61\ = CARRY((\inst11|delay_counter\(30) & !\inst11|Add6~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(30),
	datad => VCC,
	cin => \inst11|Add6~59\,
	combout => \inst11|Add6~60_combout\,
	cout => \inst11|Add6~61\);

-- Location: FF_X25_Y25_N29
\inst11|delay_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add6~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|delay_counter\(30));

-- Location: LCCOMB_X25_Y25_N30
\inst11|Add6~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add6~62_combout\ = \inst11|delay_counter\(31) $ (\inst11|Add6~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|delay_counter\(31),
	cin => \inst11|Add6~61\,
	combout => \inst11|Add6~62_combout\);

-- Location: LCCOMB_X24_Y25_N4
\inst11|Equal10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal10~8_combout\ = (!\inst11|Add6~56_combout\ & !\inst11|Add6~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add6~56_combout\,
	datad => \inst11|Add6~58_combout\,
	combout => \inst11|Equal10~8_combout\);

-- Location: LCCOMB_X24_Y25_N18
\inst11|Equal10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal10~7_combout\ = (!\inst11|Add6~52_combout\ & (!\inst11|Add6~48_combout\ & (!\inst11|Add6~50_combout\ & !\inst11|Add6~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add6~52_combout\,
	datab => \inst11|Add6~48_combout\,
	datac => \inst11|Add6~50_combout\,
	datad => \inst11|Add6~54_combout\,
	combout => \inst11|Equal10~7_combout\);

-- Location: LCCOMB_X24_Y25_N6
\inst11|Equal10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal10~9_combout\ = (!\inst11|Add6~62_combout\ & (!\inst11|Add6~60_combout\ & (\inst11|Equal10~8_combout\ & \inst11|Equal10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add6~62_combout\,
	datab => \inst11|Add6~60_combout\,
	datac => \inst11|Equal10~8_combout\,
	datad => \inst11|Equal10~7_combout\,
	combout => \inst11|Equal10~9_combout\);

-- Location: LCCOMB_X24_Y25_N8
\inst11|Equal10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal10~10_combout\ = (\inst11|Equal10~5_combout\ & (\inst11|Equal10~6_combout\ & (\inst11|Equal10~4_combout\ & \inst11|Equal10~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal10~5_combout\,
	datab => \inst11|Equal10~6_combout\,
	datac => \inst11|Equal10~4_combout\,
	datad => \inst11|Equal10~9_combout\,
	combout => \inst11|Equal10~10_combout\);

-- Location: LCCOMB_X19_Y25_N30
\inst11|wt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|wt~0_combout\ = (!\inst11|Equal10~10_combout\ & ((\inst11|wt~q\) # ((\inst11|StartTx~q\ & \inst11|CS~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|StartTx~q\,
	datab => \inst11|CS~combout\,
	datac => \inst11|wt~q\,
	datad => \inst11|Equal10~10_combout\,
	combout => \inst11|wt~0_combout\);

-- Location: FF_X19_Y25_N31
\inst11|wt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|wt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|wt~q\);

-- Location: LCCOMB_X20_Y21_N18
\inst11|pstate~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|pstate~0_combout\ = !\inst11|wt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|wt~q\,
	combout => \inst11|pstate~0_combout\);

-- Location: FF_X20_Y21_N19
\inst11|pstate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|pstate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|pstate~q\);

-- Location: LCCOMB_X20_Y21_N20
\inst11|process_10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_10~0_combout\ = (!\inst11|pstate~q\ & !\inst11|wt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|pstate~q\,
	datad => \inst11|wt~q\,
	combout => \inst11|process_10~0_combout\);

-- Location: FF_X20_Y21_N21
\inst11|fPulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|process_10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|fPulse~q\);

-- Location: LCCOMB_X23_Y19_N0
\inst|inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~0_combout\ = \inst|inst|addNo\(0) $ (VCC)
-- \inst|inst|Add0~1\ = CARRY(\inst|inst|addNo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(0),
	datad => VCC,
	combout => \inst|inst|Add0~0_combout\,
	cout => \inst|inst|Add0~1\);

-- Location: FF_X23_Y19_N1
\inst|inst|addNo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~0_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(0));

-- Location: LCCOMB_X23_Y19_N2
\inst|inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~2_combout\ = (\inst|inst|addNo\(1) & (!\inst|inst|Add0~1\)) # (!\inst|inst|addNo\(1) & ((\inst|inst|Add0~1\) # (GND)))
-- \inst|inst|Add0~3\ = CARRY((!\inst|inst|Add0~1\) # (!\inst|inst|addNo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(1),
	datad => VCC,
	cin => \inst|inst|Add0~1\,
	combout => \inst|inst|Add0~2_combout\,
	cout => \inst|inst|Add0~3\);

-- Location: FF_X23_Y19_N3
\inst|inst|addNo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~2_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(1));

-- Location: LCCOMB_X23_Y19_N4
\inst|inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~4_combout\ = (\inst|inst|addNo\(2) & (\inst|inst|Add0~3\ $ (GND))) # (!\inst|inst|addNo\(2) & (!\inst|inst|Add0~3\ & VCC))
-- \inst|inst|Add0~5\ = CARRY((\inst|inst|addNo\(2) & !\inst|inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(2),
	datad => VCC,
	cin => \inst|inst|Add0~3\,
	combout => \inst|inst|Add0~4_combout\,
	cout => \inst|inst|Add0~5\);

-- Location: LCCOMB_X24_Y19_N2
\inst|inst|addNo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|addNo~1_combout\ = (\inst|inst|Add0~4_combout\ & !\inst|inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|Add0~4_combout\,
	datad => \inst|inst|Equal0~10_combout\,
	combout => \inst|inst|addNo~1_combout\);

-- Location: FF_X24_Y19_N3
\inst|inst|addNo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|addNo~1_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(2));

-- Location: LCCOMB_X23_Y19_N6
\inst|inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~6_combout\ = (\inst|inst|addNo\(3) & (!\inst|inst|Add0~5\)) # (!\inst|inst|addNo\(3) & ((\inst|inst|Add0~5\) # (GND)))
-- \inst|inst|Add0~7\ = CARRY((!\inst|inst|Add0~5\) # (!\inst|inst|addNo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(3),
	datad => VCC,
	cin => \inst|inst|Add0~5\,
	combout => \inst|inst|Add0~6_combout\,
	cout => \inst|inst|Add0~7\);

-- Location: LCCOMB_X24_Y19_N4
\inst|inst|addNo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|addNo~0_combout\ = (\inst|inst|Add0~6_combout\ & !\inst|inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|Add0~6_combout\,
	datad => \inst|inst|Equal0~10_combout\,
	combout => \inst|inst|addNo~0_combout\);

-- Location: FF_X24_Y19_N5
\inst|inst|addNo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|addNo~0_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(3));

-- Location: LCCOMB_X23_Y19_N8
\inst|inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~8_combout\ = (\inst|inst|addNo\(4) & (\inst|inst|Add0~7\ $ (GND))) # (!\inst|inst|addNo\(4) & (!\inst|inst|Add0~7\ & VCC))
-- \inst|inst|Add0~9\ = CARRY((\inst|inst|addNo\(4) & !\inst|inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(4),
	datad => VCC,
	cin => \inst|inst|Add0~7\,
	combout => \inst|inst|Add0~8_combout\,
	cout => \inst|inst|Add0~9\);

-- Location: FF_X23_Y19_N9
\inst|inst|addNo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~8_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(4));

-- Location: LCCOMB_X23_Y19_N10
\inst|inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~10_combout\ = (\inst|inst|addNo\(5) & (!\inst|inst|Add0~9\)) # (!\inst|inst|addNo\(5) & ((\inst|inst|Add0~9\) # (GND)))
-- \inst|inst|Add0~11\ = CARRY((!\inst|inst|Add0~9\) # (!\inst|inst|addNo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(5),
	datad => VCC,
	cin => \inst|inst|Add0~9\,
	combout => \inst|inst|Add0~10_combout\,
	cout => \inst|inst|Add0~11\);

-- Location: FF_X23_Y19_N11
\inst|inst|addNo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~10_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(5));

-- Location: LCCOMB_X23_Y19_N12
\inst|inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~12_combout\ = (\inst|inst|addNo\(6) & (\inst|inst|Add0~11\ $ (GND))) # (!\inst|inst|addNo\(6) & (!\inst|inst|Add0~11\ & VCC))
-- \inst|inst|Add0~13\ = CARRY((\inst|inst|addNo\(6) & !\inst|inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(6),
	datad => VCC,
	cin => \inst|inst|Add0~11\,
	combout => \inst|inst|Add0~12_combout\,
	cout => \inst|inst|Add0~13\);

-- Location: FF_X23_Y19_N13
\inst|inst|addNo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~12_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(6));

-- Location: LCCOMB_X23_Y19_N14
\inst|inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~14_combout\ = (\inst|inst|addNo\(7) & (!\inst|inst|Add0~13\)) # (!\inst|inst|addNo\(7) & ((\inst|inst|Add0~13\) # (GND)))
-- \inst|inst|Add0~15\ = CARRY((!\inst|inst|Add0~13\) # (!\inst|inst|addNo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(7),
	datad => VCC,
	cin => \inst|inst|Add0~13\,
	combout => \inst|inst|Add0~14_combout\,
	cout => \inst|inst|Add0~15\);

-- Location: FF_X23_Y19_N15
\inst|inst|addNo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~14_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(7));

-- Location: LCCOMB_X23_Y19_N16
\inst|inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~16_combout\ = (\inst|inst|addNo\(8) & (\inst|inst|Add0~15\ $ (GND))) # (!\inst|inst|addNo\(8) & (!\inst|inst|Add0~15\ & VCC))
-- \inst|inst|Add0~17\ = CARRY((\inst|inst|addNo\(8) & !\inst|inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(8),
	datad => VCC,
	cin => \inst|inst|Add0~15\,
	combout => \inst|inst|Add0~16_combout\,
	cout => \inst|inst|Add0~17\);

-- Location: FF_X23_Y19_N17
\inst|inst|addNo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~16_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(8));

-- Location: LCCOMB_X23_Y19_N18
\inst|inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~18_combout\ = (\inst|inst|addNo\(9) & (!\inst|inst|Add0~17\)) # (!\inst|inst|addNo\(9) & ((\inst|inst|Add0~17\) # (GND)))
-- \inst|inst|Add0~19\ = CARRY((!\inst|inst|Add0~17\) # (!\inst|inst|addNo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(9),
	datad => VCC,
	cin => \inst|inst|Add0~17\,
	combout => \inst|inst|Add0~18_combout\,
	cout => \inst|inst|Add0~19\);

-- Location: FF_X23_Y19_N19
\inst|inst|addNo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~18_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(9));

-- Location: LCCOMB_X23_Y19_N20
\inst|inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~20_combout\ = (\inst|inst|addNo\(10) & (\inst|inst|Add0~19\ $ (GND))) # (!\inst|inst|addNo\(10) & (!\inst|inst|Add0~19\ & VCC))
-- \inst|inst|Add0~21\ = CARRY((\inst|inst|addNo\(10) & !\inst|inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(10),
	datad => VCC,
	cin => \inst|inst|Add0~19\,
	combout => \inst|inst|Add0~20_combout\,
	cout => \inst|inst|Add0~21\);

-- Location: FF_X23_Y19_N21
\inst|inst|addNo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~20_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(10));

-- Location: LCCOMB_X23_Y19_N22
\inst|inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~22_combout\ = (\inst|inst|addNo\(11) & (!\inst|inst|Add0~21\)) # (!\inst|inst|addNo\(11) & ((\inst|inst|Add0~21\) # (GND)))
-- \inst|inst|Add0~23\ = CARRY((!\inst|inst|Add0~21\) # (!\inst|inst|addNo\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(11),
	datad => VCC,
	cin => \inst|inst|Add0~21\,
	combout => \inst|inst|Add0~22_combout\,
	cout => \inst|inst|Add0~23\);

-- Location: FF_X23_Y19_N23
\inst|inst|addNo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~22_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(11));

-- Location: LCCOMB_X23_Y19_N24
\inst|inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~24_combout\ = (\inst|inst|addNo\(12) & (\inst|inst|Add0~23\ $ (GND))) # (!\inst|inst|addNo\(12) & (!\inst|inst|Add0~23\ & VCC))
-- \inst|inst|Add0~25\ = CARRY((\inst|inst|addNo\(12) & !\inst|inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(12),
	datad => VCC,
	cin => \inst|inst|Add0~23\,
	combout => \inst|inst|Add0~24_combout\,
	cout => \inst|inst|Add0~25\);

-- Location: FF_X23_Y19_N25
\inst|inst|addNo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~24_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(12));

-- Location: LCCOMB_X23_Y19_N26
\inst|inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~26_combout\ = (\inst|inst|addNo\(13) & (!\inst|inst|Add0~25\)) # (!\inst|inst|addNo\(13) & ((\inst|inst|Add0~25\) # (GND)))
-- \inst|inst|Add0~27\ = CARRY((!\inst|inst|Add0~25\) # (!\inst|inst|addNo\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(13),
	datad => VCC,
	cin => \inst|inst|Add0~25\,
	combout => \inst|inst|Add0~26_combout\,
	cout => \inst|inst|Add0~27\);

-- Location: FF_X23_Y19_N27
\inst|inst|addNo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~26_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(13));

-- Location: LCCOMB_X23_Y19_N28
\inst|inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~28_combout\ = (\inst|inst|addNo\(14) & (\inst|inst|Add0~27\ $ (GND))) # (!\inst|inst|addNo\(14) & (!\inst|inst|Add0~27\ & VCC))
-- \inst|inst|Add0~29\ = CARRY((\inst|inst|addNo\(14) & !\inst|inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(14),
	datad => VCC,
	cin => \inst|inst|Add0~27\,
	combout => \inst|inst|Add0~28_combout\,
	cout => \inst|inst|Add0~29\);

-- Location: FF_X23_Y19_N29
\inst|inst|addNo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~28_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(14));

-- Location: LCCOMB_X23_Y19_N30
\inst|inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~30_combout\ = (\inst|inst|addNo\(15) & (!\inst|inst|Add0~29\)) # (!\inst|inst|addNo\(15) & ((\inst|inst|Add0~29\) # (GND)))
-- \inst|inst|Add0~31\ = CARRY((!\inst|inst|Add0~29\) # (!\inst|inst|addNo\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(15),
	datad => VCC,
	cin => \inst|inst|Add0~29\,
	combout => \inst|inst|Add0~30_combout\,
	cout => \inst|inst|Add0~31\);

-- Location: FF_X23_Y19_N31
\inst|inst|addNo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~30_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(15));

-- Location: LCCOMB_X23_Y18_N0
\inst|inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~32_combout\ = (\inst|inst|addNo\(16) & (\inst|inst|Add0~31\ $ (GND))) # (!\inst|inst|addNo\(16) & (!\inst|inst|Add0~31\ & VCC))
-- \inst|inst|Add0~33\ = CARRY((\inst|inst|addNo\(16) & !\inst|inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(16),
	datad => VCC,
	cin => \inst|inst|Add0~31\,
	combout => \inst|inst|Add0~32_combout\,
	cout => \inst|inst|Add0~33\);

-- Location: FF_X23_Y18_N1
\inst|inst|addNo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~32_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(16));

-- Location: LCCOMB_X23_Y18_N2
\inst|inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~34_combout\ = (\inst|inst|addNo\(17) & (!\inst|inst|Add0~33\)) # (!\inst|inst|addNo\(17) & ((\inst|inst|Add0~33\) # (GND)))
-- \inst|inst|Add0~35\ = CARRY((!\inst|inst|Add0~33\) # (!\inst|inst|addNo\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(17),
	datad => VCC,
	cin => \inst|inst|Add0~33\,
	combout => \inst|inst|Add0~34_combout\,
	cout => \inst|inst|Add0~35\);

-- Location: FF_X23_Y18_N3
\inst|inst|addNo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~34_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(17));

-- Location: LCCOMB_X23_Y18_N4
\inst|inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~36_combout\ = (\inst|inst|addNo\(18) & (\inst|inst|Add0~35\ $ (GND))) # (!\inst|inst|addNo\(18) & (!\inst|inst|Add0~35\ & VCC))
-- \inst|inst|Add0~37\ = CARRY((\inst|inst|addNo\(18) & !\inst|inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(18),
	datad => VCC,
	cin => \inst|inst|Add0~35\,
	combout => \inst|inst|Add0~36_combout\,
	cout => \inst|inst|Add0~37\);

-- Location: FF_X23_Y18_N5
\inst|inst|addNo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~36_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(18));

-- Location: LCCOMB_X23_Y18_N6
\inst|inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~38_combout\ = (\inst|inst|addNo\(19) & (!\inst|inst|Add0~37\)) # (!\inst|inst|addNo\(19) & ((\inst|inst|Add0~37\) # (GND)))
-- \inst|inst|Add0~39\ = CARRY((!\inst|inst|Add0~37\) # (!\inst|inst|addNo\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(19),
	datad => VCC,
	cin => \inst|inst|Add0~37\,
	combout => \inst|inst|Add0~38_combout\,
	cout => \inst|inst|Add0~39\);

-- Location: FF_X23_Y18_N7
\inst|inst|addNo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~38_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(19));

-- Location: LCCOMB_X23_Y18_N8
\inst|inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~40_combout\ = (\inst|inst|addNo\(20) & (\inst|inst|Add0~39\ $ (GND))) # (!\inst|inst|addNo\(20) & (!\inst|inst|Add0~39\ & VCC))
-- \inst|inst|Add0~41\ = CARRY((\inst|inst|addNo\(20) & !\inst|inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(20),
	datad => VCC,
	cin => \inst|inst|Add0~39\,
	combout => \inst|inst|Add0~40_combout\,
	cout => \inst|inst|Add0~41\);

-- Location: FF_X23_Y18_N9
\inst|inst|addNo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~40_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(20));

-- Location: LCCOMB_X23_Y18_N10
\inst|inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~42_combout\ = (\inst|inst|addNo\(21) & (!\inst|inst|Add0~41\)) # (!\inst|inst|addNo\(21) & ((\inst|inst|Add0~41\) # (GND)))
-- \inst|inst|Add0~43\ = CARRY((!\inst|inst|Add0~41\) # (!\inst|inst|addNo\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(21),
	datad => VCC,
	cin => \inst|inst|Add0~41\,
	combout => \inst|inst|Add0~42_combout\,
	cout => \inst|inst|Add0~43\);

-- Location: FF_X23_Y18_N11
\inst|inst|addNo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~42_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(21));

-- Location: LCCOMB_X23_Y18_N12
\inst|inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~44_combout\ = (\inst|inst|addNo\(22) & (\inst|inst|Add0~43\ $ (GND))) # (!\inst|inst|addNo\(22) & (!\inst|inst|Add0~43\ & VCC))
-- \inst|inst|Add0~45\ = CARRY((\inst|inst|addNo\(22) & !\inst|inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(22),
	datad => VCC,
	cin => \inst|inst|Add0~43\,
	combout => \inst|inst|Add0~44_combout\,
	cout => \inst|inst|Add0~45\);

-- Location: FF_X23_Y18_N13
\inst|inst|addNo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~44_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(22));

-- Location: LCCOMB_X23_Y18_N14
\inst|inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~46_combout\ = (\inst|inst|addNo\(23) & (!\inst|inst|Add0~45\)) # (!\inst|inst|addNo\(23) & ((\inst|inst|Add0~45\) # (GND)))
-- \inst|inst|Add0~47\ = CARRY((!\inst|inst|Add0~45\) # (!\inst|inst|addNo\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(23),
	datad => VCC,
	cin => \inst|inst|Add0~45\,
	combout => \inst|inst|Add0~46_combout\,
	cout => \inst|inst|Add0~47\);

-- Location: FF_X23_Y18_N15
\inst|inst|addNo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~46_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(23));

-- Location: LCCOMB_X23_Y18_N16
\inst|inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~48_combout\ = (\inst|inst|addNo\(24) & (\inst|inst|Add0~47\ $ (GND))) # (!\inst|inst|addNo\(24) & (!\inst|inst|Add0~47\ & VCC))
-- \inst|inst|Add0~49\ = CARRY((\inst|inst|addNo\(24) & !\inst|inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(24),
	datad => VCC,
	cin => \inst|inst|Add0~47\,
	combout => \inst|inst|Add0~48_combout\,
	cout => \inst|inst|Add0~49\);

-- Location: FF_X23_Y18_N17
\inst|inst|addNo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~48_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(24));

-- Location: LCCOMB_X23_Y18_N18
\inst|inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~50_combout\ = (\inst|inst|addNo\(25) & (!\inst|inst|Add0~49\)) # (!\inst|inst|addNo\(25) & ((\inst|inst|Add0~49\) # (GND)))
-- \inst|inst|Add0~51\ = CARRY((!\inst|inst|Add0~49\) # (!\inst|inst|addNo\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(25),
	datad => VCC,
	cin => \inst|inst|Add0~49\,
	combout => \inst|inst|Add0~50_combout\,
	cout => \inst|inst|Add0~51\);

-- Location: FF_X23_Y18_N19
\inst|inst|addNo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~50_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(25));

-- Location: LCCOMB_X23_Y18_N20
\inst|inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~52_combout\ = (\inst|inst|addNo\(26) & (\inst|inst|Add0~51\ $ (GND))) # (!\inst|inst|addNo\(26) & (!\inst|inst|Add0~51\ & VCC))
-- \inst|inst|Add0~53\ = CARRY((\inst|inst|addNo\(26) & !\inst|inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(26),
	datad => VCC,
	cin => \inst|inst|Add0~51\,
	combout => \inst|inst|Add0~52_combout\,
	cout => \inst|inst|Add0~53\);

-- Location: FF_X23_Y18_N21
\inst|inst|addNo[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~52_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(26));

-- Location: LCCOMB_X23_Y18_N22
\inst|inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~54_combout\ = (\inst|inst|addNo\(27) & (!\inst|inst|Add0~53\)) # (!\inst|inst|addNo\(27) & ((\inst|inst|Add0~53\) # (GND)))
-- \inst|inst|Add0~55\ = CARRY((!\inst|inst|Add0~53\) # (!\inst|inst|addNo\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(27),
	datad => VCC,
	cin => \inst|inst|Add0~53\,
	combout => \inst|inst|Add0~54_combout\,
	cout => \inst|inst|Add0~55\);

-- Location: FF_X23_Y18_N23
\inst|inst|addNo[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~54_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(27));

-- Location: LCCOMB_X24_Y18_N26
\inst|inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~8_combout\ = (!\inst|inst|addNo\(26) & (!\inst|inst|addNo\(25) & (!\inst|inst|addNo\(24) & !\inst|inst|addNo\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(26),
	datab => \inst|inst|addNo\(25),
	datac => \inst|inst|addNo\(24),
	datad => \inst|inst|addNo\(27),
	combout => \inst|inst|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y19_N12
\inst|inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~0_combout\ = (\inst|inst|addNo\(1) & (\inst|inst|addNo\(3) & (\inst|inst|addNo\(0) & !\inst|inst|addNo\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(1),
	datab => \inst|inst|addNo\(3),
	datac => \inst|inst|addNo\(0),
	datad => \inst|inst|addNo\(2),
	combout => \inst|inst|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y19_N16
\inst|inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~2_combout\ = (!\inst|inst|addNo\(11) & (!\inst|inst|addNo\(9) & (!\inst|inst|addNo\(8) & !\inst|inst|addNo\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(11),
	datab => \inst|inst|addNo\(9),
	datac => \inst|inst|addNo\(8),
	datad => \inst|inst|addNo\(10),
	combout => \inst|inst|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y19_N22
\inst|inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~3_combout\ = (!\inst|inst|addNo\(15) & (!\inst|inst|addNo\(12) & (!\inst|inst|addNo\(13) & !\inst|inst|addNo\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(15),
	datab => \inst|inst|addNo\(12),
	datac => \inst|inst|addNo\(13),
	datad => \inst|inst|addNo\(14),
	combout => \inst|inst|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y19_N18
\inst|inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~1_combout\ = (!\inst|inst|addNo\(4) & (!\inst|inst|addNo\(5) & (!\inst|inst|addNo\(7) & !\inst|inst|addNo\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(4),
	datab => \inst|inst|addNo\(5),
	datac => \inst|inst|addNo\(7),
	datad => \inst|inst|addNo\(6),
	combout => \inst|inst|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y19_N28
\inst|inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~4_combout\ = (\inst|inst|Equal0~0_combout\ & (\inst|inst|Equal0~2_combout\ & (\inst|inst|Equal0~3_combout\ & \inst|inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal0~0_combout\,
	datab => \inst|inst|Equal0~2_combout\,
	datac => \inst|inst|Equal0~3_combout\,
	datad => \inst|inst|Equal0~1_combout\,
	combout => \inst|inst|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y18_N24
\inst|inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~56_combout\ = (\inst|inst|addNo\(28) & (\inst|inst|Add0~55\ $ (GND))) # (!\inst|inst|addNo\(28) & (!\inst|inst|Add0~55\ & VCC))
-- \inst|inst|Add0~57\ = CARRY((\inst|inst|addNo\(28) & !\inst|inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(28),
	datad => VCC,
	cin => \inst|inst|Add0~55\,
	combout => \inst|inst|Add0~56_combout\,
	cout => \inst|inst|Add0~57\);

-- Location: FF_X23_Y18_N25
\inst|inst|addNo[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~56_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(28));

-- Location: LCCOMB_X23_Y18_N26
\inst|inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~58_combout\ = (\inst|inst|addNo\(29) & (!\inst|inst|Add0~57\)) # (!\inst|inst|addNo\(29) & ((\inst|inst|Add0~57\) # (GND)))
-- \inst|inst|Add0~59\ = CARRY((!\inst|inst|Add0~57\) # (!\inst|inst|addNo\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(29),
	datad => VCC,
	cin => \inst|inst|Add0~57\,
	combout => \inst|inst|Add0~58_combout\,
	cout => \inst|inst|Add0~59\);

-- Location: FF_X23_Y18_N27
\inst|inst|addNo[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~58_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(29));

-- Location: LCCOMB_X23_Y18_N28
\inst|inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~60_combout\ = (\inst|inst|addNo\(30) & (\inst|inst|Add0~59\ $ (GND))) # (!\inst|inst|addNo\(30) & (!\inst|inst|Add0~59\ & VCC))
-- \inst|inst|Add0~61\ = CARRY((\inst|inst|addNo\(30) & !\inst|inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|addNo\(30),
	datad => VCC,
	cin => \inst|inst|Add0~59\,
	combout => \inst|inst|Add0~60_combout\,
	cout => \inst|inst|Add0~61\);

-- Location: FF_X23_Y18_N29
\inst|inst|addNo[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~60_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(30));

-- Location: LCCOMB_X23_Y18_N30
\inst|inst|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~62_combout\ = \inst|inst|addNo\(31) $ (\inst|inst|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(31),
	cin => \inst|inst|Add0~61\,
	combout => \inst|inst|Add0~62_combout\);

-- Location: FF_X23_Y18_N31
\inst|inst|addNo[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Add0~62_combout\,
	ena => \inst|inst|state.STOREstate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|addNo\(31));

-- Location: LCCOMB_X24_Y18_N20
\inst|inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~9_combout\ = (!\inst|inst|addNo\(31) & (!\inst|inst|addNo\(28) & (!\inst|inst|addNo\(29) & !\inst|inst|addNo\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(31),
	datab => \inst|inst|addNo\(28),
	datac => \inst|inst|addNo\(29),
	datad => \inst|inst|addNo\(30),
	combout => \inst|inst|Equal0~9_combout\);

-- Location: LCCOMB_X24_Y18_N24
\inst|inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~5_combout\ = (!\inst|inst|addNo\(16) & (!\inst|inst|addNo\(18) & (!\inst|inst|addNo\(19) & !\inst|inst|addNo\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(16),
	datab => \inst|inst|addNo\(18),
	datac => \inst|inst|addNo\(19),
	datad => \inst|inst|addNo\(17),
	combout => \inst|inst|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y18_N30
\inst|inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~6_combout\ = (!\inst|inst|addNo\(21) & !\inst|inst|addNo\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(21),
	datad => \inst|inst|addNo\(20),
	combout => \inst|inst|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y18_N0
\inst|inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~7_combout\ = (!\inst|inst|addNo\(23) & (\inst|inst|Equal0~5_combout\ & (\inst|inst|Equal0~6_combout\ & !\inst|inst|addNo\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|addNo\(23),
	datab => \inst|inst|Equal0~5_combout\,
	datac => \inst|inst|Equal0~6_combout\,
	datad => \inst|inst|addNo\(22),
	combout => \inst|inst|Equal0~7_combout\);

-- Location: LCCOMB_X24_Y19_N10
\inst|inst|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~10_combout\ = (\inst|inst|Equal0~8_combout\ & (\inst|inst|Equal0~4_combout\ & (\inst|inst|Equal0~9_combout\ & \inst|inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal0~8_combout\,
	datab => \inst|inst|Equal0~4_combout\,
	datac => \inst|inst|Equal0~9_combout\,
	datad => \inst|inst|Equal0~7_combout\,
	combout => \inst|inst|Equal0~10_combout\);

-- Location: LCCOMB_X24_Y19_N24
\inst|inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector5~0_combout\ = (\inst|inst3|empty~combout\ & ((\inst|inst|state.W4BFFRrx~q\) # ((\inst|inst|state.STOREstate~q\ & \inst|inst|Equal0~10_combout\)))) # (!\inst|inst3|empty~combout\ & (\inst|inst|state.STOREstate~q\ & 
-- ((\inst|inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|empty~combout\,
	datab => \inst|inst|state.STOREstate~q\,
	datac => \inst|inst|state.W4BFFRrx~q\,
	datad => \inst|inst|Equal0~10_combout\,
	combout => \inst|inst|Selector5~0_combout\);

-- Location: FF_X24_Y19_N25
\inst|inst|state.W4BFFRrx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|state.W4BFFRrx~q\);

-- Location: LCCOMB_X25_Y19_N28
\inst|inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector0~0_combout\ = (\inst|inst3|empty~combout\) # ((\inst|inst|state.IDLE~q\ & !\inst|inst|state.W4BFFRrx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|empty~combout\,
	datac => \inst|inst|state.IDLE~q\,
	datad => \inst|inst|state.W4BFFRrx~q\,
	combout => \inst|inst|Selector0~0_combout\);

-- Location: FF_X25_Y19_N29
\inst|inst|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|state.IDLE~q\);

-- Location: LCCOMB_X28_Y16_N30
\inst|inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector1~0_combout\ = (\inst|inst3|empty~combout\ & (((\inst|inst|state.STOREstate~q\ & !\inst|inst|Equal0~10_combout\)) # (!\inst|inst|state.IDLE~q\))) # (!\inst|inst3|empty~combout\ & (((\inst|inst|state.STOREstate~q\ & 
-- !\inst|inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|empty~combout\,
	datab => \inst|inst|state.IDLE~q\,
	datac => \inst|inst|state.STOREstate~q\,
	datad => \inst|inst|Equal0~10_combout\,
	combout => \inst|inst|Selector1~0_combout\);

-- Location: FF_X28_Y16_N31
\inst|inst|state.NXTADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|state.NXTADDR~q\);

-- Location: FF_X28_Y16_N29
\inst|inst|state.STRTrx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst|state.NXTADDR~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|state.STRTrx~q\);

-- Location: FF_X29_Y16_N15
\inst|inst4|delay_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(23));

-- Location: LCCOMB_X29_Y17_N0
\inst|inst4|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~0_combout\ = \inst11|delay_counter\(0) $ (VCC)
-- \inst|inst4|Add6~1\ = CARRY(\inst11|delay_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|delay_counter\(0),
	datad => VCC,
	combout => \inst|inst4|Add6~0_combout\,
	cout => \inst|inst4|Add6~1\);

-- Location: LCCOMB_X29_Y17_N2
\inst|inst4|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~2_combout\ = (\inst11|delay_counter\(1) & (!\inst|inst4|Add6~1\)) # (!\inst11|delay_counter\(1) & ((\inst|inst4|Add6~1\) # (GND)))
-- \inst|inst4|Add6~3\ = CARRY((!\inst|inst4|Add6~1\) # (!\inst11|delay_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|delay_counter\(1),
	datad => VCC,
	cin => \inst|inst4|Add6~1\,
	combout => \inst|inst4|Add6~2_combout\,
	cout => \inst|inst4|Add6~3\);

-- Location: LCCOMB_X29_Y17_N4
\inst|inst4|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~4_combout\ = (\inst|inst4|delay_counter\(2) & (\inst|inst4|Add6~3\ $ (GND))) # (!\inst|inst4|delay_counter\(2) & (!\inst|inst4|Add6~3\ & VCC))
-- \inst|inst4|Add6~5\ = CARRY((\inst|inst4|delay_counter\(2) & !\inst|inst4|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|delay_counter\(2),
	datad => VCC,
	cin => \inst|inst4|Add6~3\,
	combout => \inst|inst4|Add6~4_combout\,
	cout => \inst|inst4|Add6~5\);

-- Location: FF_X29_Y17_N5
\inst|inst4|delay_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(2));

-- Location: LCCOMB_X29_Y17_N6
\inst|inst4|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~6_combout\ = (\inst|inst4|delay_counter\(3) & (!\inst|inst4|Add6~5\)) # (!\inst|inst4|delay_counter\(3) & ((\inst|inst4|Add6~5\) # (GND)))
-- \inst|inst4|Add6~7\ = CARRY((!\inst|inst4|Add6~5\) # (!\inst|inst4|delay_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|delay_counter\(3),
	datad => VCC,
	cin => \inst|inst4|Add6~5\,
	combout => \inst|inst4|Add6~6_combout\,
	cout => \inst|inst4|Add6~7\);

-- Location: FF_X29_Y17_N7
\inst|inst4|delay_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(3));

-- Location: LCCOMB_X29_Y17_N8
\inst|inst4|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~8_combout\ = (\inst|inst4|delay_counter\(4) & (\inst|inst4|Add6~7\ $ (GND))) # (!\inst|inst4|delay_counter\(4) & (!\inst|inst4|Add6~7\ & VCC))
-- \inst|inst4|Add6~9\ = CARRY((\inst|inst4|delay_counter\(4) & !\inst|inst4|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|delay_counter\(4),
	datad => VCC,
	cin => \inst|inst4|Add6~7\,
	combout => \inst|inst4|Add6~8_combout\,
	cout => \inst|inst4|Add6~9\);

-- Location: LCCOMB_X30_Y16_N4
\inst|inst4|delay_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|delay_counter~0_combout\ = (\inst|inst4|Add6~8_combout\ & !\inst|inst4|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|Add6~8_combout\,
	datad => \inst|inst4|Equal10~10_combout\,
	combout => \inst|inst4|delay_counter~0_combout\);

-- Location: FF_X30_Y16_N5
\inst|inst4|delay_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|delay_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(4));

-- Location: LCCOMB_X29_Y17_N10
\inst|inst4|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~10_combout\ = (\inst|inst4|delay_counter\(5) & (!\inst|inst4|Add6~9\)) # (!\inst|inst4|delay_counter\(5) & ((\inst|inst4|Add6~9\) # (GND)))
-- \inst|inst4|Add6~11\ = CARRY((!\inst|inst4|Add6~9\) # (!\inst|inst4|delay_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|delay_counter\(5),
	datad => VCC,
	cin => \inst|inst4|Add6~9\,
	combout => \inst|inst4|Add6~10_combout\,
	cout => \inst|inst4|Add6~11\);

-- Location: FF_X29_Y17_N11
\inst|inst4|delay_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(5));

-- Location: LCCOMB_X29_Y17_N12
\inst|inst4|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~12_combout\ = (\inst|inst4|delay_counter\(6) & (\inst|inst4|Add6~11\ $ (GND))) # (!\inst|inst4|delay_counter\(6) & (!\inst|inst4|Add6~11\ & VCC))
-- \inst|inst4|Add6~13\ = CARRY((\inst|inst4|delay_counter\(6) & !\inst|inst4|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|delay_counter\(6),
	datad => VCC,
	cin => \inst|inst4|Add6~11\,
	combout => \inst|inst4|Add6~12_combout\,
	cout => \inst|inst4|Add6~13\);

-- Location: LCCOMB_X30_Y16_N2
\inst|inst4|delay_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|delay_counter~1_combout\ = (\inst|inst4|Add6~12_combout\ & !\inst|inst4|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|Add6~12_combout\,
	datad => \inst|inst4|Equal10~10_combout\,
	combout => \inst|inst4|delay_counter~1_combout\);

-- Location: FF_X30_Y16_N3
\inst|inst4|delay_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|delay_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(6));

-- Location: LCCOMB_X29_Y17_N14
\inst|inst4|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~14_combout\ = (\inst|inst4|delay_counter\(7) & (!\inst|inst4|Add6~13\)) # (!\inst|inst4|delay_counter\(7) & ((\inst|inst4|Add6~13\) # (GND)))
-- \inst|inst4|Add6~15\ = CARRY((!\inst|inst4|Add6~13\) # (!\inst|inst4|delay_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|delay_counter\(7),
	datad => VCC,
	cin => \inst|inst4|Add6~13\,
	combout => \inst|inst4|Add6~14_combout\,
	cout => \inst|inst4|Add6~15\);

-- Location: LCCOMB_X30_Y16_N16
\inst|inst4|delay_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|delay_counter~2_combout\ = (\inst|inst4|Add6~14_combout\ & !\inst|inst4|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|Add6~14_combout\,
	datad => \inst|inst4|Equal10~10_combout\,
	combout => \inst|inst4|delay_counter~2_combout\);

-- Location: FF_X30_Y16_N17
\inst|inst4|delay_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|delay_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(7));

-- Location: LCCOMB_X29_Y17_N16
\inst|inst4|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~16_combout\ = (\inst|inst4|delay_counter\(8) & (\inst|inst4|Add6~15\ $ (GND))) # (!\inst|inst4|delay_counter\(8) & (!\inst|inst4|Add6~15\ & VCC))
-- \inst|inst4|Add6~17\ = CARRY((\inst|inst4|delay_counter\(8) & !\inst|inst4|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|delay_counter\(8),
	datad => VCC,
	cin => \inst|inst4|Add6~15\,
	combout => \inst|inst4|Add6~16_combout\,
	cout => \inst|inst4|Add6~17\);

-- Location: LCCOMB_X30_Y16_N14
\inst|inst4|delay_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|delay_counter~3_combout\ = (\inst|inst4|Add6~16_combout\ & !\inst|inst4|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|Add6~16_combout\,
	datad => \inst|inst4|Equal10~10_combout\,
	combout => \inst|inst4|delay_counter~3_combout\);

-- Location: FF_X30_Y16_N15
\inst|inst4|delay_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|delay_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(8));

-- Location: LCCOMB_X29_Y17_N18
\inst|inst4|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~18_combout\ = (\inst|inst4|delay_counter\(9) & (!\inst|inst4|Add6~17\)) # (!\inst|inst4|delay_counter\(9) & ((\inst|inst4|Add6~17\) # (GND)))
-- \inst|inst4|Add6~19\ = CARRY((!\inst|inst4|Add6~17\) # (!\inst|inst4|delay_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|delay_counter\(9),
	datad => VCC,
	cin => \inst|inst4|Add6~17\,
	combout => \inst|inst4|Add6~18_combout\,
	cout => \inst|inst4|Add6~19\);

-- Location: LCCOMB_X30_Y16_N20
\inst|inst4|delay_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|delay_counter~4_combout\ = (\inst|inst4|Add6~18_combout\ & !\inst|inst4|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|Add6~18_combout\,
	datad => \inst|inst4|Equal10~10_combout\,
	combout => \inst|inst4|delay_counter~4_combout\);

-- Location: FF_X30_Y16_N21
\inst|inst4|delay_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|delay_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(9));

-- Location: LCCOMB_X29_Y17_N20
\inst|inst4|Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~20_combout\ = (\inst|inst4|delay_counter\(10) & (\inst|inst4|Add6~19\ $ (GND))) # (!\inst|inst4|delay_counter\(10) & (!\inst|inst4|Add6~19\ & VCC))
-- \inst|inst4|Add6~21\ = CARRY((\inst|inst4|delay_counter\(10) & !\inst|inst4|Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|delay_counter\(10),
	datad => VCC,
	cin => \inst|inst4|Add6~19\,
	combout => \inst|inst4|Add6~20_combout\,
	cout => \inst|inst4|Add6~21\);

-- Location: LCCOMB_X30_Y16_N30
\inst|inst4|delay_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|delay_counter~5_combout\ = (\inst|inst4|Add6~20_combout\ & !\inst|inst4|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add6~20_combout\,
	datad => \inst|inst4|Equal10~10_combout\,
	combout => \inst|inst4|delay_counter~5_combout\);

-- Location: FF_X30_Y16_N31
\inst|inst4|delay_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|delay_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(10));

-- Location: LCCOMB_X29_Y17_N22
\inst|inst4|Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~22_combout\ = (\inst|inst4|delay_counter\(11) & (!\inst|inst4|Add6~21\)) # (!\inst|inst4|delay_counter\(11) & ((\inst|inst4|Add6~21\) # (GND)))
-- \inst|inst4|Add6~23\ = CARRY((!\inst|inst4|Add6~21\) # (!\inst|inst4|delay_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|delay_counter\(11),
	datad => VCC,
	cin => \inst|inst4|Add6~21\,
	combout => \inst|inst4|Add6~22_combout\,
	cout => \inst|inst4|Add6~23\);

-- Location: FF_X29_Y17_N23
\inst|inst4|delay_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(11));

-- Location: LCCOMB_X29_Y17_N24
\inst|inst4|Add6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~24_combout\ = (\inst|inst4|delay_counter\(12) & (\inst|inst4|Add6~23\ $ (GND))) # (!\inst|inst4|delay_counter\(12) & (!\inst|inst4|Add6~23\ & VCC))
-- \inst|inst4|Add6~25\ = CARRY((\inst|inst4|delay_counter\(12) & !\inst|inst4|Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|delay_counter\(12),
	datad => VCC,
	cin => \inst|inst4|Add6~23\,
	combout => \inst|inst4|Add6~24_combout\,
	cout => \inst|inst4|Add6~25\);

-- Location: FF_X29_Y17_N25
\inst|inst4|delay_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(12));

-- Location: LCCOMB_X29_Y17_N26
\inst|inst4|Add6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~26_combout\ = (\inst|inst4|delay_counter\(13) & (!\inst|inst4|Add6~25\)) # (!\inst|inst4|delay_counter\(13) & ((\inst|inst4|Add6~25\) # (GND)))
-- \inst|inst4|Add6~27\ = CARRY((!\inst|inst4|Add6~25\) # (!\inst|inst4|delay_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|delay_counter\(13),
	datad => VCC,
	cin => \inst|inst4|Add6~25\,
	combout => \inst|inst4|Add6~26_combout\,
	cout => \inst|inst4|Add6~27\);

-- Location: FF_X29_Y17_N27
\inst|inst4|delay_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(13));

-- Location: LCCOMB_X29_Y17_N28
\inst|inst4|Add6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~28_combout\ = (\inst|inst4|delay_counter\(14) & (\inst|inst4|Add6~27\ $ (GND))) # (!\inst|inst4|delay_counter\(14) & (!\inst|inst4|Add6~27\ & VCC))
-- \inst|inst4|Add6~29\ = CARRY((\inst|inst4|delay_counter\(14) & !\inst|inst4|Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|delay_counter\(14),
	datad => VCC,
	cin => \inst|inst4|Add6~27\,
	combout => \inst|inst4|Add6~28_combout\,
	cout => \inst|inst4|Add6~29\);

-- Location: FF_X29_Y17_N29
\inst|inst4|delay_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(14));

-- Location: LCCOMB_X29_Y17_N30
\inst|inst4|Add6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~30_combout\ = (\inst|inst4|delay_counter\(15) & (!\inst|inst4|Add6~29\)) # (!\inst|inst4|delay_counter\(15) & ((\inst|inst4|Add6~29\) # (GND)))
-- \inst|inst4|Add6~31\ = CARRY((!\inst|inst4|Add6~29\) # (!\inst|inst4|delay_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|delay_counter\(15),
	datad => VCC,
	cin => \inst|inst4|Add6~29\,
	combout => \inst|inst4|Add6~30_combout\,
	cout => \inst|inst4|Add6~31\);

-- Location: FF_X29_Y17_N31
\inst|inst4|delay_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(15));

-- Location: LCCOMB_X29_Y16_N0
\inst|inst4|Add6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~32_combout\ = (\inst|inst4|delay_counter\(16) & (\inst|inst4|Add6~31\ $ (GND))) # (!\inst|inst4|delay_counter\(16) & (!\inst|inst4|Add6~31\ & VCC))
-- \inst|inst4|Add6~33\ = CARRY((\inst|inst4|delay_counter\(16) & !\inst|inst4|Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|delay_counter\(16),
	datad => VCC,
	cin => \inst|inst4|Add6~31\,
	combout => \inst|inst4|Add6~32_combout\,
	cout => \inst|inst4|Add6~33\);

-- Location: FF_X29_Y16_N1
\inst|inst4|delay_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(16));

-- Location: LCCOMB_X29_Y16_N2
\inst|inst4|Add6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~34_combout\ = (\inst|inst4|delay_counter\(17) & (!\inst|inst4|Add6~33\)) # (!\inst|inst4|delay_counter\(17) & ((\inst|inst4|Add6~33\) # (GND)))
-- \inst|inst4|Add6~35\ = CARRY((!\inst|inst4|Add6~33\) # (!\inst|inst4|delay_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|delay_counter\(17),
	datad => VCC,
	cin => \inst|inst4|Add6~33\,
	combout => \inst|inst4|Add6~34_combout\,
	cout => \inst|inst4|Add6~35\);

-- Location: FF_X29_Y16_N3
\inst|inst4|delay_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(17));

-- Location: LCCOMB_X29_Y16_N4
\inst|inst4|Add6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~36_combout\ = (\inst|inst4|delay_counter\(18) & (\inst|inst4|Add6~35\ $ (GND))) # (!\inst|inst4|delay_counter\(18) & (!\inst|inst4|Add6~35\ & VCC))
-- \inst|inst4|Add6~37\ = CARRY((\inst|inst4|delay_counter\(18) & !\inst|inst4|Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|delay_counter\(18),
	datad => VCC,
	cin => \inst|inst4|Add6~35\,
	combout => \inst|inst4|Add6~36_combout\,
	cout => \inst|inst4|Add6~37\);

-- Location: FF_X29_Y16_N5
\inst|inst4|delay_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(18));

-- Location: LCCOMB_X29_Y16_N6
\inst|inst4|Add6~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~38_combout\ = (\inst|inst4|delay_counter\(19) & (!\inst|inst4|Add6~37\)) # (!\inst|inst4|delay_counter\(19) & ((\inst|inst4|Add6~37\) # (GND)))
-- \inst|inst4|Add6~39\ = CARRY((!\inst|inst4|Add6~37\) # (!\inst|inst4|delay_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|delay_counter\(19),
	datad => VCC,
	cin => \inst|inst4|Add6~37\,
	combout => \inst|inst4|Add6~38_combout\,
	cout => \inst|inst4|Add6~39\);

-- Location: FF_X29_Y16_N7
\inst|inst4|delay_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(19));

-- Location: LCCOMB_X29_Y16_N8
\inst|inst4|Add6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~40_combout\ = (\inst|inst4|delay_counter\(20) & (\inst|inst4|Add6~39\ $ (GND))) # (!\inst|inst4|delay_counter\(20) & (!\inst|inst4|Add6~39\ & VCC))
-- \inst|inst4|Add6~41\ = CARRY((\inst|inst4|delay_counter\(20) & !\inst|inst4|Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|delay_counter\(20),
	datad => VCC,
	cin => \inst|inst4|Add6~39\,
	combout => \inst|inst4|Add6~40_combout\,
	cout => \inst|inst4|Add6~41\);

-- Location: FF_X29_Y16_N9
\inst|inst4|delay_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(20));

-- Location: LCCOMB_X29_Y16_N10
\inst|inst4|Add6~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~42_combout\ = (\inst|inst4|delay_counter\(21) & (!\inst|inst4|Add6~41\)) # (!\inst|inst4|delay_counter\(21) & ((\inst|inst4|Add6~41\) # (GND)))
-- \inst|inst4|Add6~43\ = CARRY((!\inst|inst4|Add6~41\) # (!\inst|inst4|delay_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|delay_counter\(21),
	datad => VCC,
	cin => \inst|inst4|Add6~41\,
	combout => \inst|inst4|Add6~42_combout\,
	cout => \inst|inst4|Add6~43\);

-- Location: FF_X29_Y16_N11
\inst|inst4|delay_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(21));

-- Location: LCCOMB_X29_Y16_N12
\inst|inst4|Add6~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~44_combout\ = (\inst|inst4|delay_counter\(22) & (\inst|inst4|Add6~43\ $ (GND))) # (!\inst|inst4|delay_counter\(22) & (!\inst|inst4|Add6~43\ & VCC))
-- \inst|inst4|Add6~45\ = CARRY((\inst|inst4|delay_counter\(22) & !\inst|inst4|Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|delay_counter\(22),
	datad => VCC,
	cin => \inst|inst4|Add6~43\,
	combout => \inst|inst4|Add6~44_combout\,
	cout => \inst|inst4|Add6~45\);

-- Location: FF_X29_Y16_N13
\inst|inst4|delay_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(22));

-- Location: LCCOMB_X29_Y16_N14
\inst|inst4|Add6~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~46_combout\ = (\inst|inst4|delay_counter\(23) & (!\inst|inst4|Add6~45\)) # (!\inst|inst4|delay_counter\(23) & ((\inst|inst4|Add6~45\) # (GND)))
-- \inst|inst4|Add6~47\ = CARRY((!\inst|inst4|Add6~45\) # (!\inst|inst4|delay_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|delay_counter\(23),
	datad => VCC,
	cin => \inst|inst4|Add6~45\,
	combout => \inst|inst4|Add6~46_combout\,
	cout => \inst|inst4|Add6~47\);

-- Location: LCCOMB_X30_Y16_N22
\inst|inst4|Equal10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Equal10~5_combout\ = (!\inst|inst4|Add6~32_combout\ & (!\inst|inst4|Add6~38_combout\ & (!\inst|inst4|Add6~36_combout\ & !\inst|inst4|Add6~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add6~32_combout\,
	datab => \inst|inst4|Add6~38_combout\,
	datac => \inst|inst4|Add6~36_combout\,
	datad => \inst|inst4|Add6~34_combout\,
	combout => \inst|inst4|Equal10~5_combout\);

-- Location: LCCOMB_X30_Y16_N12
\inst|inst4|Equal10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Equal10~6_combout\ = (!\inst|inst4|Add6~40_combout\ & !\inst|inst4|Add6~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add6~40_combout\,
	datad => \inst|inst4|Add6~42_combout\,
	combout => \inst|inst4|Equal10~6_combout\);

-- Location: LCCOMB_X30_Y16_N26
\inst|inst4|Equal10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Equal10~7_combout\ = (!\inst|inst4|Add6~46_combout\ & (!\inst|inst4|Add6~44_combout\ & (\inst|inst4|Equal10~5_combout\ & \inst|inst4|Equal10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add6~46_combout\,
	datab => \inst|inst4|Add6~44_combout\,
	datac => \inst|inst4|Equal10~5_combout\,
	datad => \inst|inst4|Equal10~6_combout\,
	combout => \inst|inst4|Equal10~7_combout\);

-- Location: LCCOMB_X30_Y17_N2
\inst|inst4|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Equal10~1_combout\ = (!\inst|inst4|Add6~10_combout\ & (\inst|inst4|Add6~8_combout\ & (\inst|inst4|Add6~12_combout\ & \inst|inst4|Add6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add6~10_combout\,
	datab => \inst|inst4|Add6~8_combout\,
	datac => \inst|inst4|Add6~12_combout\,
	datad => \inst|inst4|Add6~14_combout\,
	combout => \inst|inst4|Equal10~1_combout\);

-- Location: LCCOMB_X30_Y17_N24
\inst|inst4|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Equal10~0_combout\ = (!\inst|inst4|Add6~0_combout\ & (!\inst|inst4|Add6~4_combout\ & (!\inst|inst4|Add6~6_combout\ & !\inst|inst4|Add6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add6~0_combout\,
	datab => \inst|inst4|Add6~4_combout\,
	datac => \inst|inst4|Add6~6_combout\,
	datad => \inst|inst4|Add6~2_combout\,
	combout => \inst|inst4|Equal10~0_combout\);

-- Location: LCCOMB_X30_Y17_N20
\inst|inst4|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Equal10~2_combout\ = (\inst|inst4|Add6~16_combout\ & (!\inst|inst4|Add6~22_combout\ & (\inst|inst4|Add6~18_combout\ & \inst|inst4|Add6~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add6~16_combout\,
	datab => \inst|inst4|Add6~22_combout\,
	datac => \inst|inst4|Add6~18_combout\,
	datad => \inst|inst4|Add6~20_combout\,
	combout => \inst|inst4|Equal10~2_combout\);

-- Location: LCCOMB_X30_Y17_N26
\inst|inst4|Equal10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Equal10~3_combout\ = (!\inst|inst4|Add6~26_combout\ & (!\inst|inst4|Add6~24_combout\ & (!\inst|inst4|Add6~28_combout\ & !\inst|inst4|Add6~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add6~26_combout\,
	datab => \inst|inst4|Add6~24_combout\,
	datac => \inst|inst4|Add6~28_combout\,
	datad => \inst|inst4|Add6~30_combout\,
	combout => \inst|inst4|Equal10~3_combout\);

-- Location: LCCOMB_X30_Y16_N24
\inst|inst4|Equal10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Equal10~4_combout\ = (\inst|inst4|Equal10~1_combout\ & (\inst|inst4|Equal10~0_combout\ & (\inst|inst4|Equal10~2_combout\ & \inst|inst4|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Equal10~1_combout\,
	datab => \inst|inst4|Equal10~0_combout\,
	datac => \inst|inst4|Equal10~2_combout\,
	datad => \inst|inst4|Equal10~3_combout\,
	combout => \inst|inst4|Equal10~4_combout\);

-- Location: FF_X29_Y16_N17
\inst|inst4|delay_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(24));

-- Location: LCCOMB_X29_Y16_N16
\inst|inst4|Add6~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~48_combout\ = (\inst|inst4|delay_counter\(24) & (\inst|inst4|Add6~47\ $ (GND))) # (!\inst|inst4|delay_counter\(24) & (!\inst|inst4|Add6~47\ & VCC))
-- \inst|inst4|Add6~49\ = CARRY((\inst|inst4|delay_counter\(24) & !\inst|inst4|Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|delay_counter\(24),
	datad => VCC,
	cin => \inst|inst4|Add6~47\,
	combout => \inst|inst4|Add6~48_combout\,
	cout => \inst|inst4|Add6~49\);

-- Location: FF_X29_Y16_N19
\inst|inst4|delay_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(25));

-- Location: LCCOMB_X29_Y16_N18
\inst|inst4|Add6~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~50_combout\ = (\inst|inst4|delay_counter\(25) & (!\inst|inst4|Add6~49\)) # (!\inst|inst4|delay_counter\(25) & ((\inst|inst4|Add6~49\) # (GND)))
-- \inst|inst4|Add6~51\ = CARRY((!\inst|inst4|Add6~49\) # (!\inst|inst4|delay_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|delay_counter\(25),
	datad => VCC,
	cin => \inst|inst4|Add6~49\,
	combout => \inst|inst4|Add6~50_combout\,
	cout => \inst|inst4|Add6~51\);

-- Location: FF_X29_Y16_N21
\inst|inst4|delay_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(26));

-- Location: LCCOMB_X29_Y16_N20
\inst|inst4|Add6~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~52_combout\ = (\inst|inst4|delay_counter\(26) & (\inst|inst4|Add6~51\ $ (GND))) # (!\inst|inst4|delay_counter\(26) & (!\inst|inst4|Add6~51\ & VCC))
-- \inst|inst4|Add6~53\ = CARRY((\inst|inst4|delay_counter\(26) & !\inst|inst4|Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|delay_counter\(26),
	datad => VCC,
	cin => \inst|inst4|Add6~51\,
	combout => \inst|inst4|Add6~52_combout\,
	cout => \inst|inst4|Add6~53\);

-- Location: FF_X29_Y16_N23
\inst|inst4|delay_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(27));

-- Location: LCCOMB_X29_Y16_N22
\inst|inst4|Add6~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~54_combout\ = (\inst|inst4|delay_counter\(27) & (!\inst|inst4|Add6~53\)) # (!\inst|inst4|delay_counter\(27) & ((\inst|inst4|Add6~53\) # (GND)))
-- \inst|inst4|Add6~55\ = CARRY((!\inst|inst4|Add6~53\) # (!\inst|inst4|delay_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|delay_counter\(27),
	datad => VCC,
	cin => \inst|inst4|Add6~53\,
	combout => \inst|inst4|Add6~54_combout\,
	cout => \inst|inst4|Add6~55\);

-- Location: LCCOMB_X30_Y16_N8
\inst|inst4|Equal10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Equal10~8_combout\ = (!\inst|inst4|Add6~48_combout\ & (!\inst|inst4|Add6~50_combout\ & (!\inst|inst4|Add6~52_combout\ & !\inst|inst4|Add6~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add6~48_combout\,
	datab => \inst|inst4|Add6~50_combout\,
	datac => \inst|inst4|Add6~52_combout\,
	datad => \inst|inst4|Add6~54_combout\,
	combout => \inst|inst4|Equal10~8_combout\);

-- Location: FF_X29_Y16_N27
\inst|inst4|delay_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(29));

-- Location: LCCOMB_X29_Y16_N24
\inst|inst4|Add6~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~56_combout\ = (\inst|inst4|delay_counter\(28) & (\inst|inst4|Add6~55\ $ (GND))) # (!\inst|inst4|delay_counter\(28) & (!\inst|inst4|Add6~55\ & VCC))
-- \inst|inst4|Add6~57\ = CARRY((\inst|inst4|delay_counter\(28) & !\inst|inst4|Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|delay_counter\(28),
	datad => VCC,
	cin => \inst|inst4|Add6~55\,
	combout => \inst|inst4|Add6~56_combout\,
	cout => \inst|inst4|Add6~57\);

-- Location: FF_X29_Y16_N25
\inst|inst4|delay_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(28));

-- Location: LCCOMB_X29_Y16_N26
\inst|inst4|Add6~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~58_combout\ = (\inst|inst4|delay_counter\(29) & (!\inst|inst4|Add6~57\)) # (!\inst|inst4|delay_counter\(29) & ((\inst|inst4|Add6~57\) # (GND)))
-- \inst|inst4|Add6~59\ = CARRY((!\inst|inst4|Add6~57\) # (!\inst|inst4|delay_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|delay_counter\(29),
	datad => VCC,
	cin => \inst|inst4|Add6~57\,
	combout => \inst|inst4|Add6~58_combout\,
	cout => \inst|inst4|Add6~59\);

-- Location: FF_X29_Y16_N29
\inst|inst4|delay_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(30));

-- Location: LCCOMB_X29_Y16_N28
\inst|inst4|Add6~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~60_combout\ = (\inst|inst4|delay_counter\(30) & (\inst|inst4|Add6~59\ $ (GND))) # (!\inst|inst4|delay_counter\(30) & (!\inst|inst4|Add6~59\ & VCC))
-- \inst|inst4|Add6~61\ = CARRY((\inst|inst4|delay_counter\(30) & !\inst|inst4|Add6~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|delay_counter\(30),
	datad => VCC,
	cin => \inst|inst4|Add6~59\,
	combout => \inst|inst4|Add6~60_combout\,
	cout => \inst|inst4|Add6~61\);

-- Location: FF_X29_Y16_N31
\inst|inst4|delay_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add6~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|delay_counter\(31));

-- Location: LCCOMB_X29_Y16_N30
\inst|inst4|Add6~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add6~62_combout\ = \inst|inst4|delay_counter\(31) $ (\inst|inst4|Add6~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|delay_counter\(31),
	cin => \inst|inst4|Add6~61\,
	combout => \inst|inst4|Add6~62_combout\);

-- Location: LCCOMB_X30_Y16_N10
\inst|inst4|Equal10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Equal10~9_combout\ = (!\inst|inst4|Add6~58_combout\ & (!\inst|inst4|Add6~56_combout\ & (!\inst|inst4|Add6~60_combout\ & !\inst|inst4|Add6~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add6~58_combout\,
	datab => \inst|inst4|Add6~56_combout\,
	datac => \inst|inst4|Add6~60_combout\,
	datad => \inst|inst4|Add6~62_combout\,
	combout => \inst|inst4|Equal10~9_combout\);

-- Location: LCCOMB_X30_Y16_N28
\inst|inst4|Equal10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Equal10~10_combout\ = (\inst|inst4|Equal10~7_combout\ & (\inst|inst4|Equal10~4_combout\ & (\inst|inst4|Equal10~8_combout\ & \inst|inst4|Equal10~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Equal10~7_combout\,
	datab => \inst|inst4|Equal10~4_combout\,
	datac => \inst|inst4|Equal10~8_combout\,
	datad => \inst|inst4|Equal10~9_combout\,
	combout => \inst|inst4|Equal10~10_combout\);

-- Location: LCCOMB_X29_Y12_N4
\inst|inst4|StartTx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|StartTx~0_combout\ = (\inst|inst|state.STRTrx~q\) # ((\inst|inst4|StartTx~q\ & !\inst|inst4|Equal10~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|state.STRTrx~q\,
	datac => \inst|inst4|StartTx~q\,
	datad => \inst|inst4|Equal10~10_combout\,
	combout => \inst|inst4|StartTx~0_combout\);

-- Location: FF_X29_Y12_N5
\inst|inst4|StartTx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|StartTx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|StartTx~q\);

-- Location: LCCOMB_X29_Y12_N28
\inst|inst4|process_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|process_6~0_combout\ = (\inst|inst4|StartTx~q\ & !\inst|inst4|wt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|StartTx~q\,
	datad => \inst|inst4|wt~q\,
	combout => \inst|inst4|process_6~0_combout\);

-- Location: FF_X31_Y9_N31
\inst|inst4|process_1:EC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~62_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[31]~q\);

-- Location: LCCOMB_X31_Y10_N0
\inst|inst4|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~0_combout\ = \inst|inst4|process_1:EC[0]~q\ $ (VCC)
-- \inst|inst4|Add1~1\ = CARRY(\inst|inst4|process_1:EC[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|process_1:EC[0]~q\,
	datad => VCC,
	combout => \inst|inst4|Add1~0_combout\,
	cout => \inst|inst4|Add1~1\);

-- Location: LCCOMB_X30_Y9_N20
\inst|inst4|EC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|EC~0_combout\ = (\inst|inst4|Add1~0_combout\ & !\inst|inst4|state_csl~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|Add1~0_combout\,
	datad => \inst|inst4|state_csl~12_combout\,
	combout => \inst|inst4|EC~0_combout\);

-- Location: FF_X30_Y9_N21
\inst|inst4|process_1:EC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|EC~0_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[0]~q\);

-- Location: LCCOMB_X31_Y10_N2
\inst|inst4|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~2_combout\ = (\inst|inst4|process_1:EC[1]~q\ & (!\inst|inst4|Add1~1\)) # (!\inst|inst4|process_1:EC[1]~q\ & ((\inst|inst4|Add1~1\) # (GND)))
-- \inst|inst4|Add1~3\ = CARRY((!\inst|inst4|Add1~1\) # (!\inst|inst4|process_1:EC[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[1]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~1\,
	combout => \inst|inst4|Add1~2_combout\,
	cout => \inst|inst4|Add1~3\);

-- Location: LCCOMB_X30_Y9_N4
\inst|inst4|EC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|EC~2_combout\ = (\inst|inst4|Add1~2_combout\ & !\inst|inst4|state_csl~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|Add1~2_combout\,
	datad => \inst|inst4|state_csl~12_combout\,
	combout => \inst|inst4|EC~2_combout\);

-- Location: FF_X30_Y9_N5
\inst|inst4|process_1:EC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|EC~2_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[1]~q\);

-- Location: LCCOMB_X31_Y10_N4
\inst|inst4|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~4_combout\ = (\inst|inst4|process_1:EC[2]~q\ & (\inst|inst4|Add1~3\ $ (GND))) # (!\inst|inst4|process_1:EC[2]~q\ & (!\inst|inst4|Add1~3\ & VCC))
-- \inst|inst4|Add1~5\ = CARRY((\inst|inst4|process_1:EC[2]~q\ & !\inst|inst4|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[2]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~3\,
	combout => \inst|inst4|Add1~4_combout\,
	cout => \inst|inst4|Add1~5\);

-- Location: FF_X31_Y10_N5
\inst|inst4|process_1:EC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~4_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[2]~q\);

-- Location: LCCOMB_X31_Y10_N6
\inst|inst4|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~6_combout\ = (\inst|inst4|process_1:EC[3]~q\ & (!\inst|inst4|Add1~5\)) # (!\inst|inst4|process_1:EC[3]~q\ & ((\inst|inst4|Add1~5\) # (GND)))
-- \inst|inst4|Add1~7\ = CARRY((!\inst|inst4|Add1~5\) # (!\inst|inst4|process_1:EC[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|process_1:EC[3]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~5\,
	combout => \inst|inst4|Add1~6_combout\,
	cout => \inst|inst4|Add1~7\);

-- Location: FF_X31_Y10_N7
\inst|inst4|process_1:EC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~6_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[3]~q\);

-- Location: LCCOMB_X31_Y10_N8
\inst|inst4|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~8_combout\ = (\inst|inst4|process_1:EC[4]~q\ & (\inst|inst4|Add1~7\ $ (GND))) # (!\inst|inst4|process_1:EC[4]~q\ & (!\inst|inst4|Add1~7\ & VCC))
-- \inst|inst4|Add1~9\ = CARRY((\inst|inst4|process_1:EC[4]~q\ & !\inst|inst4|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|process_1:EC[4]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~7\,
	combout => \inst|inst4|Add1~8_combout\,
	cout => \inst|inst4|Add1~9\);

-- Location: LCCOMB_X30_Y9_N18
\inst|inst4|EC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|EC~1_combout\ = (\inst|inst4|Add1~8_combout\ & !\inst|inst4|state_csl~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|Add1~8_combout\,
	datad => \inst|inst4|state_csl~12_combout\,
	combout => \inst|inst4|EC~1_combout\);

-- Location: FF_X30_Y9_N19
\inst|inst4|process_1:EC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|EC~1_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[4]~q\);

-- Location: LCCOMB_X31_Y10_N10
\inst|inst4|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~10_combout\ = (\inst|inst4|process_1:EC[5]~q\ & (!\inst|inst4|Add1~9\)) # (!\inst|inst4|process_1:EC[5]~q\ & ((\inst|inst4|Add1~9\) # (GND)))
-- \inst|inst4|Add1~11\ = CARRY((!\inst|inst4|Add1~9\) # (!\inst|inst4|process_1:EC[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|process_1:EC[5]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~9\,
	combout => \inst|inst4|Add1~10_combout\,
	cout => \inst|inst4|Add1~11\);

-- Location: FF_X31_Y10_N11
\inst|inst4|process_1:EC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~10_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[5]~q\);

-- Location: LCCOMB_X31_Y10_N12
\inst|inst4|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~12_combout\ = (\inst|inst4|process_1:EC[6]~q\ & (\inst|inst4|Add1~11\ $ (GND))) # (!\inst|inst4|process_1:EC[6]~q\ & (!\inst|inst4|Add1~11\ & VCC))
-- \inst|inst4|Add1~13\ = CARRY((\inst|inst4|process_1:EC[6]~q\ & !\inst|inst4|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|process_1:EC[6]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~11\,
	combout => \inst|inst4|Add1~12_combout\,
	cout => \inst|inst4|Add1~13\);

-- Location: FF_X31_Y10_N13
\inst|inst4|process_1:EC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~12_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[6]~q\);

-- Location: LCCOMB_X31_Y10_N14
\inst|inst4|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~14_combout\ = (\inst|inst4|process_1:EC[7]~q\ & (!\inst|inst4|Add1~13\)) # (!\inst|inst4|process_1:EC[7]~q\ & ((\inst|inst4|Add1~13\) # (GND)))
-- \inst|inst4|Add1~15\ = CARRY((!\inst|inst4|Add1~13\) # (!\inst|inst4|process_1:EC[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[7]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~13\,
	combout => \inst|inst4|Add1~14_combout\,
	cout => \inst|inst4|Add1~15\);

-- Location: FF_X31_Y10_N15
\inst|inst4|process_1:EC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~14_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[7]~q\);

-- Location: LCCOMB_X31_Y10_N16
\inst|inst4|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~16_combout\ = (\inst|inst4|process_1:EC[8]~q\ & (\inst|inst4|Add1~15\ $ (GND))) # (!\inst|inst4|process_1:EC[8]~q\ & (!\inst|inst4|Add1~15\ & VCC))
-- \inst|inst4|Add1~17\ = CARRY((\inst|inst4|process_1:EC[8]~q\ & !\inst|inst4|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[8]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~15\,
	combout => \inst|inst4|Add1~16_combout\,
	cout => \inst|inst4|Add1~17\);

-- Location: FF_X31_Y10_N17
\inst|inst4|process_1:EC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~16_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[8]~q\);

-- Location: LCCOMB_X31_Y10_N18
\inst|inst4|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~18_combout\ = (\inst|inst4|process_1:EC[9]~q\ & (!\inst|inst4|Add1~17\)) # (!\inst|inst4|process_1:EC[9]~q\ & ((\inst|inst4|Add1~17\) # (GND)))
-- \inst|inst4|Add1~19\ = CARRY((!\inst|inst4|Add1~17\) # (!\inst|inst4|process_1:EC[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[9]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~17\,
	combout => \inst|inst4|Add1~18_combout\,
	cout => \inst|inst4|Add1~19\);

-- Location: FF_X31_Y10_N19
\inst|inst4|process_1:EC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~18_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[9]~q\);

-- Location: LCCOMB_X31_Y10_N20
\inst|inst4|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~20_combout\ = (\inst|inst4|process_1:EC[10]~q\ & (\inst|inst4|Add1~19\ $ (GND))) # (!\inst|inst4|process_1:EC[10]~q\ & (!\inst|inst4|Add1~19\ & VCC))
-- \inst|inst4|Add1~21\ = CARRY((\inst|inst4|process_1:EC[10]~q\ & !\inst|inst4|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[10]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~19\,
	combout => \inst|inst4|Add1~20_combout\,
	cout => \inst|inst4|Add1~21\);

-- Location: FF_X31_Y10_N21
\inst|inst4|process_1:EC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~20_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[10]~q\);

-- Location: LCCOMB_X31_Y10_N22
\inst|inst4|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~22_combout\ = (\inst|inst4|process_1:EC[11]~q\ & (!\inst|inst4|Add1~21\)) # (!\inst|inst4|process_1:EC[11]~q\ & ((\inst|inst4|Add1~21\) # (GND)))
-- \inst|inst4|Add1~23\ = CARRY((!\inst|inst4|Add1~21\) # (!\inst|inst4|process_1:EC[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|process_1:EC[11]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~21\,
	combout => \inst|inst4|Add1~22_combout\,
	cout => \inst|inst4|Add1~23\);

-- Location: FF_X31_Y10_N23
\inst|inst4|process_1:EC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~22_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[11]~q\);

-- Location: LCCOMB_X31_Y10_N24
\inst|inst4|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~24_combout\ = (\inst|inst4|process_1:EC[12]~q\ & (\inst|inst4|Add1~23\ $ (GND))) # (!\inst|inst4|process_1:EC[12]~q\ & (!\inst|inst4|Add1~23\ & VCC))
-- \inst|inst4|Add1~25\ = CARRY((\inst|inst4|process_1:EC[12]~q\ & !\inst|inst4|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[12]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~23\,
	combout => \inst|inst4|Add1~24_combout\,
	cout => \inst|inst4|Add1~25\);

-- Location: FF_X31_Y10_N25
\inst|inst4|process_1:EC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~24_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[12]~q\);

-- Location: LCCOMB_X31_Y10_N26
\inst|inst4|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~26_combout\ = (\inst|inst4|process_1:EC[13]~q\ & (!\inst|inst4|Add1~25\)) # (!\inst|inst4|process_1:EC[13]~q\ & ((\inst|inst4|Add1~25\) # (GND)))
-- \inst|inst4|Add1~27\ = CARRY((!\inst|inst4|Add1~25\) # (!\inst|inst4|process_1:EC[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|process_1:EC[13]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~25\,
	combout => \inst|inst4|Add1~26_combout\,
	cout => \inst|inst4|Add1~27\);

-- Location: FF_X31_Y10_N27
\inst|inst4|process_1:EC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~26_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[13]~q\);

-- Location: LCCOMB_X31_Y10_N28
\inst|inst4|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~28_combout\ = (\inst|inst4|process_1:EC[14]~q\ & (\inst|inst4|Add1~27\ $ (GND))) # (!\inst|inst4|process_1:EC[14]~q\ & (!\inst|inst4|Add1~27\ & VCC))
-- \inst|inst4|Add1~29\ = CARRY((\inst|inst4|process_1:EC[14]~q\ & !\inst|inst4|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[14]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~27\,
	combout => \inst|inst4|Add1~28_combout\,
	cout => \inst|inst4|Add1~29\);

-- Location: FF_X31_Y10_N29
\inst|inst4|process_1:EC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~28_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[14]~q\);

-- Location: LCCOMB_X31_Y10_N30
\inst|inst4|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~30_combout\ = (\inst|inst4|process_1:EC[15]~q\ & (!\inst|inst4|Add1~29\)) # (!\inst|inst4|process_1:EC[15]~q\ & ((\inst|inst4|Add1~29\) # (GND)))
-- \inst|inst4|Add1~31\ = CARRY((!\inst|inst4|Add1~29\) # (!\inst|inst4|process_1:EC[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|process_1:EC[15]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~29\,
	combout => \inst|inst4|Add1~30_combout\,
	cout => \inst|inst4|Add1~31\);

-- Location: FF_X31_Y10_N31
\inst|inst4|process_1:EC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~30_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[15]~q\);

-- Location: LCCOMB_X31_Y9_N0
\inst|inst4|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~32_combout\ = (\inst|inst4|process_1:EC[16]~q\ & (\inst|inst4|Add1~31\ $ (GND))) # (!\inst|inst4|process_1:EC[16]~q\ & (!\inst|inst4|Add1~31\ & VCC))
-- \inst|inst4|Add1~33\ = CARRY((\inst|inst4|process_1:EC[16]~q\ & !\inst|inst4|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[16]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~31\,
	combout => \inst|inst4|Add1~32_combout\,
	cout => \inst|inst4|Add1~33\);

-- Location: FF_X31_Y9_N1
\inst|inst4|process_1:EC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~32_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[16]~q\);

-- Location: LCCOMB_X31_Y9_N2
\inst|inst4|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~34_combout\ = (\inst|inst4|process_1:EC[17]~q\ & (!\inst|inst4|Add1~33\)) # (!\inst|inst4|process_1:EC[17]~q\ & ((\inst|inst4|Add1~33\) # (GND)))
-- \inst|inst4|Add1~35\ = CARRY((!\inst|inst4|Add1~33\) # (!\inst|inst4|process_1:EC[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[17]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~33\,
	combout => \inst|inst4|Add1~34_combout\,
	cout => \inst|inst4|Add1~35\);

-- Location: FF_X31_Y9_N3
\inst|inst4|process_1:EC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~34_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[17]~q\);

-- Location: LCCOMB_X31_Y9_N4
\inst|inst4|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~36_combout\ = (\inst|inst4|process_1:EC[18]~q\ & (\inst|inst4|Add1~35\ $ (GND))) # (!\inst|inst4|process_1:EC[18]~q\ & (!\inst|inst4|Add1~35\ & VCC))
-- \inst|inst4|Add1~37\ = CARRY((\inst|inst4|process_1:EC[18]~q\ & !\inst|inst4|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[18]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~35\,
	combout => \inst|inst4|Add1~36_combout\,
	cout => \inst|inst4|Add1~37\);

-- Location: FF_X31_Y9_N5
\inst|inst4|process_1:EC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~36_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[18]~q\);

-- Location: LCCOMB_X31_Y9_N6
\inst|inst4|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~38_combout\ = (\inst|inst4|process_1:EC[19]~q\ & (!\inst|inst4|Add1~37\)) # (!\inst|inst4|process_1:EC[19]~q\ & ((\inst|inst4|Add1~37\) # (GND)))
-- \inst|inst4|Add1~39\ = CARRY((!\inst|inst4|Add1~37\) # (!\inst|inst4|process_1:EC[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|process_1:EC[19]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~37\,
	combout => \inst|inst4|Add1~38_combout\,
	cout => \inst|inst4|Add1~39\);

-- Location: FF_X31_Y9_N7
\inst|inst4|process_1:EC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~38_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[19]~q\);

-- Location: LCCOMB_X31_Y9_N8
\inst|inst4|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~40_combout\ = (\inst|inst4|process_1:EC[20]~q\ & (\inst|inst4|Add1~39\ $ (GND))) # (!\inst|inst4|process_1:EC[20]~q\ & (!\inst|inst4|Add1~39\ & VCC))
-- \inst|inst4|Add1~41\ = CARRY((\inst|inst4|process_1:EC[20]~q\ & !\inst|inst4|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[20]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~39\,
	combout => \inst|inst4|Add1~40_combout\,
	cout => \inst|inst4|Add1~41\);

-- Location: FF_X31_Y9_N9
\inst|inst4|process_1:EC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~40_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[20]~q\);

-- Location: LCCOMB_X31_Y9_N10
\inst|inst4|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~42_combout\ = (\inst|inst4|process_1:EC[21]~q\ & (!\inst|inst4|Add1~41\)) # (!\inst|inst4|process_1:EC[21]~q\ & ((\inst|inst4|Add1~41\) # (GND)))
-- \inst|inst4|Add1~43\ = CARRY((!\inst|inst4|Add1~41\) # (!\inst|inst4|process_1:EC[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|process_1:EC[21]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~41\,
	combout => \inst|inst4|Add1~42_combout\,
	cout => \inst|inst4|Add1~43\);

-- Location: FF_X31_Y9_N11
\inst|inst4|process_1:EC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~42_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[21]~q\);

-- Location: LCCOMB_X31_Y9_N12
\inst|inst4|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~44_combout\ = (\inst|inst4|process_1:EC[22]~q\ & (\inst|inst4|Add1~43\ $ (GND))) # (!\inst|inst4|process_1:EC[22]~q\ & (!\inst|inst4|Add1~43\ & VCC))
-- \inst|inst4|Add1~45\ = CARRY((\inst|inst4|process_1:EC[22]~q\ & !\inst|inst4|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|process_1:EC[22]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~43\,
	combout => \inst|inst4|Add1~44_combout\,
	cout => \inst|inst4|Add1~45\);

-- Location: FF_X31_Y9_N13
\inst|inst4|process_1:EC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~44_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[22]~q\);

-- Location: LCCOMB_X31_Y9_N14
\inst|inst4|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~46_combout\ = (\inst|inst4|process_1:EC[23]~q\ & (!\inst|inst4|Add1~45\)) # (!\inst|inst4|process_1:EC[23]~q\ & ((\inst|inst4|Add1~45\) # (GND)))
-- \inst|inst4|Add1~47\ = CARRY((!\inst|inst4|Add1~45\) # (!\inst|inst4|process_1:EC[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[23]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~45\,
	combout => \inst|inst4|Add1~46_combout\,
	cout => \inst|inst4|Add1~47\);

-- Location: FF_X31_Y9_N15
\inst|inst4|process_1:EC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~46_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[23]~q\);

-- Location: LCCOMB_X31_Y9_N16
\inst|inst4|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~48_combout\ = (\inst|inst4|process_1:EC[24]~q\ & (\inst|inst4|Add1~47\ $ (GND))) # (!\inst|inst4|process_1:EC[24]~q\ & (!\inst|inst4|Add1~47\ & VCC))
-- \inst|inst4|Add1~49\ = CARRY((\inst|inst4|process_1:EC[24]~q\ & !\inst|inst4|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[24]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~47\,
	combout => \inst|inst4|Add1~48_combout\,
	cout => \inst|inst4|Add1~49\);

-- Location: FF_X31_Y9_N17
\inst|inst4|process_1:EC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~48_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[24]~q\);

-- Location: LCCOMB_X31_Y9_N18
\inst|inst4|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~50_combout\ = (\inst|inst4|process_1:EC[25]~q\ & (!\inst|inst4|Add1~49\)) # (!\inst|inst4|process_1:EC[25]~q\ & ((\inst|inst4|Add1~49\) # (GND)))
-- \inst|inst4|Add1~51\ = CARRY((!\inst|inst4|Add1~49\) # (!\inst|inst4|process_1:EC[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[25]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~49\,
	combout => \inst|inst4|Add1~50_combout\,
	cout => \inst|inst4|Add1~51\);

-- Location: FF_X31_Y9_N19
\inst|inst4|process_1:EC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~50_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[25]~q\);

-- Location: LCCOMB_X31_Y9_N20
\inst|inst4|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~52_combout\ = (\inst|inst4|process_1:EC[26]~q\ & (\inst|inst4|Add1~51\ $ (GND))) # (!\inst|inst4|process_1:EC[26]~q\ & (!\inst|inst4|Add1~51\ & VCC))
-- \inst|inst4|Add1~53\ = CARRY((\inst|inst4|process_1:EC[26]~q\ & !\inst|inst4|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[26]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~51\,
	combout => \inst|inst4|Add1~52_combout\,
	cout => \inst|inst4|Add1~53\);

-- Location: FF_X31_Y9_N21
\inst|inst4|process_1:EC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~52_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[26]~q\);

-- Location: LCCOMB_X31_Y9_N22
\inst|inst4|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~54_combout\ = (\inst|inst4|process_1:EC[27]~q\ & (!\inst|inst4|Add1~53\)) # (!\inst|inst4|process_1:EC[27]~q\ & ((\inst|inst4|Add1~53\) # (GND)))
-- \inst|inst4|Add1~55\ = CARRY((!\inst|inst4|Add1~53\) # (!\inst|inst4|process_1:EC[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|process_1:EC[27]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~53\,
	combout => \inst|inst4|Add1~54_combout\,
	cout => \inst|inst4|Add1~55\);

-- Location: FF_X31_Y9_N23
\inst|inst4|process_1:EC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~54_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[27]~q\);

-- Location: LCCOMB_X31_Y9_N24
\inst|inst4|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~56_combout\ = (\inst|inst4|process_1:EC[28]~q\ & (\inst|inst4|Add1~55\ $ (GND))) # (!\inst|inst4|process_1:EC[28]~q\ & (!\inst|inst4|Add1~55\ & VCC))
-- \inst|inst4|Add1~57\ = CARRY((\inst|inst4|process_1:EC[28]~q\ & !\inst|inst4|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[28]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~55\,
	combout => \inst|inst4|Add1~56_combout\,
	cout => \inst|inst4|Add1~57\);

-- Location: FF_X31_Y9_N25
\inst|inst4|process_1:EC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~56_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[28]~q\);

-- Location: LCCOMB_X31_Y9_N26
\inst|inst4|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~58_combout\ = (\inst|inst4|process_1:EC[29]~q\ & (!\inst|inst4|Add1~57\)) # (!\inst|inst4|process_1:EC[29]~q\ & ((\inst|inst4|Add1~57\) # (GND)))
-- \inst|inst4|Add1~59\ = CARRY((!\inst|inst4|Add1~57\) # (!\inst|inst4|process_1:EC[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|process_1:EC[29]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~57\,
	combout => \inst|inst4|Add1~58_combout\,
	cout => \inst|inst4|Add1~59\);

-- Location: FF_X31_Y9_N27
\inst|inst4|process_1:EC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~58_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[29]~q\);

-- Location: LCCOMB_X31_Y9_N28
\inst|inst4|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~60_combout\ = (\inst|inst4|process_1:EC[30]~q\ & (\inst|inst4|Add1~59\ $ (GND))) # (!\inst|inst4|process_1:EC[30]~q\ & (!\inst|inst4|Add1~59\ & VCC))
-- \inst|inst4|Add1~61\ = CARRY((\inst|inst4|process_1:EC[30]~q\ & !\inst|inst4|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|process_1:EC[30]~q\,
	datad => VCC,
	cin => \inst|inst4|Add1~59\,
	combout => \inst|inst4|Add1~60_combout\,
	cout => \inst|inst4|Add1~61\);

-- Location: FF_X31_Y9_N29
\inst|inst4|process_1:EC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add1~60_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|process_1:EC[30]~q\);

-- Location: LCCOMB_X31_Y9_N30
\inst|inst4|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add1~62_combout\ = \inst|inst4|process_1:EC[31]~q\ $ (\inst|inst4|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|process_1:EC[31]~q\,
	cin => \inst|inst4|Add1~61\,
	combout => \inst|inst4|Add1~62_combout\);

-- Location: LCCOMB_X30_Y9_N30
\inst|inst4|state_csl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csl~2_combout\ = (\inst|inst4|Add1~2_combout\ & (!\inst|inst4|Add1~8_combout\ & (\inst|inst4|state_csl~q\ & !\inst|inst4|Add1~0_combout\))) # (!\inst|inst4|Add1~2_combout\ & (\inst|inst4|Add1~8_combout\ & (!\inst|inst4|state_csl~q\ & 
-- \inst|inst4|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add1~2_combout\,
	datab => \inst|inst4|Add1~8_combout\,
	datac => \inst|inst4|state_csl~q\,
	datad => \inst|inst4|Add1~0_combout\,
	combout => \inst|inst4|state_csl~2_combout\);

-- Location: LCCOMB_X30_Y10_N30
\inst|inst4|state_csl~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csl~4_combout\ = (!\inst|inst4|Add1~20_combout\ & (!\inst|inst4|Add1~18_combout\ & (!\inst|inst4|Add1~14_combout\ & !\inst|inst4|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add1~20_combout\,
	datab => \inst|inst4|Add1~18_combout\,
	datac => \inst|inst4|Add1~14_combout\,
	datad => \inst|inst4|Add1~16_combout\,
	combout => \inst|inst4|state_csl~4_combout\);

-- Location: LCCOMB_X30_Y10_N8
\inst|inst4|state_csl~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csl~3_combout\ = (!\inst|inst4|Add1~6_combout\ & (!\inst|inst4|Add1~12_combout\ & (!\inst|inst4|Add1~10_combout\ & !\inst|inst4|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add1~6_combout\,
	datab => \inst|inst4|Add1~12_combout\,
	datac => \inst|inst4|Add1~10_combout\,
	datad => \inst|inst4|Add1~4_combout\,
	combout => \inst|inst4|state_csl~3_combout\);

-- Location: LCCOMB_X30_Y9_N28
\inst|inst4|state_csl~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csl~5_combout\ = (\inst|inst4|state_csl~2_combout\ & (\inst|inst4|state_csl~4_combout\ & \inst|inst4|state_csl~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|state_csl~2_combout\,
	datac => \inst|inst4|state_csl~4_combout\,
	datad => \inst|inst4|state_csl~3_combout\,
	combout => \inst|inst4|state_csl~5_combout\);

-- Location: LCCOMB_X30_Y9_N22
\inst|inst4|state_csl~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csl~11_combout\ = (!\inst|inst4|Add1~58_combout\ & (!\inst|inst4|Add1~56_combout\ & (!\inst|inst4|Add1~54_combout\ & !\inst|inst4|Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add1~58_combout\,
	datab => \inst|inst4|Add1~56_combout\,
	datac => \inst|inst4|Add1~54_combout\,
	datad => \inst|inst4|Add1~60_combout\,
	combout => \inst|inst4|state_csl~11_combout\);

-- Location: LCCOMB_X30_Y9_N10
\inst|inst4|state_csl~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csl~7_combout\ = (!\inst|inst4|Add1~36_combout\ & (!\inst|inst4|Add1~32_combout\ & (!\inst|inst4|Add1~30_combout\ & !\inst|inst4|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add1~36_combout\,
	datab => \inst|inst4|Add1~32_combout\,
	datac => \inst|inst4|Add1~30_combout\,
	datad => \inst|inst4|Add1~34_combout\,
	combout => \inst|inst4|state_csl~7_combout\);

-- Location: LCCOMB_X30_Y9_N16
\inst|inst4|state_csl~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csl~8_combout\ = (!\inst|inst4|Add1~42_combout\ & (!\inst|inst4|Add1~44_combout\ & (!\inst|inst4|Add1~40_combout\ & !\inst|inst4|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add1~42_combout\,
	datab => \inst|inst4|Add1~44_combout\,
	datac => \inst|inst4|Add1~40_combout\,
	datad => \inst|inst4|Add1~38_combout\,
	combout => \inst|inst4|state_csl~8_combout\);

-- Location: LCCOMB_X30_Y9_N26
\inst|inst4|state_csl~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csl~9_combout\ = (!\inst|inst4|Add1~52_combout\ & (!\inst|inst4|Add1~50_combout\ & (!\inst|inst4|Add1~46_combout\ & !\inst|inst4|Add1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add1~52_combout\,
	datab => \inst|inst4|Add1~50_combout\,
	datac => \inst|inst4|Add1~46_combout\,
	datad => \inst|inst4|Add1~48_combout\,
	combout => \inst|inst4|state_csl~9_combout\);

-- Location: LCCOMB_X30_Y10_N12
\inst|inst4|state_csl~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csl~6_combout\ = (!\inst|inst4|Add1~26_combout\ & (!\inst|inst4|Add1~28_combout\ & (!\inst|inst4|Add1~24_combout\ & !\inst|inst4|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add1~26_combout\,
	datab => \inst|inst4|Add1~28_combout\,
	datac => \inst|inst4|Add1~24_combout\,
	datad => \inst|inst4|Add1~22_combout\,
	combout => \inst|inst4|state_csl~6_combout\);

-- Location: LCCOMB_X30_Y9_N0
\inst|inst4|state_csl~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csl~10_combout\ = (\inst|inst4|state_csl~7_combout\ & (\inst|inst4|state_csl~8_combout\ & (\inst|inst4|state_csl~9_combout\ & \inst|inst4|state_csl~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|state_csl~7_combout\,
	datab => \inst|inst4|state_csl~8_combout\,
	datac => \inst|inst4|state_csl~9_combout\,
	datad => \inst|inst4|state_csl~6_combout\,
	combout => \inst|inst4|state_csl~10_combout\);

-- Location: LCCOMB_X30_Y9_N12
\inst|inst4|state_csl~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csl~12_combout\ = (!\inst|inst4|Add1~62_combout\ & (\inst|inst4|state_csl~5_combout\ & (\inst|inst4|state_csl~11_combout\ & \inst|inst4|state_csl~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add1~62_combout\,
	datab => \inst|inst4|state_csl~5_combout\,
	datac => \inst|inst4|state_csl~11_combout\,
	datad => \inst|inst4|state_csl~10_combout\,
	combout => \inst|inst4|state_csl~12_combout\);

-- Location: LCCOMB_X30_Y9_N14
\inst|inst4|state_csl~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csl~13_combout\ = \inst|inst4|state_csl~q\ $ (((\inst|inst4|StartTx~q\ & (!\inst|inst4|wt~q\ & \inst|inst4|state_csl~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|StartTx~q\,
	datab => \inst|inst4|wt~q\,
	datac => \inst|inst4|state_csl~q\,
	datad => \inst|inst4|state_csl~12_combout\,
	combout => \inst|inst4|state_csl~13_combout\);

-- Location: FF_X30_Y9_N15
\inst|inst4|state_csl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|state_csl~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|state_csl~q\);

-- Location: LCCOMB_X30_Y9_N8
\inst|inst4|CSD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|CSD~0_combout\ = !\inst|inst4|state_csl~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|state_csl~q\,
	combout => \inst|inst4|CSD~0_combout\);

-- Location: FF_X30_Y9_N9
\inst|inst4|CSD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|CSD~0_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CSD~q\);

-- Location: FF_X28_Y10_N15
\inst|inst4|EC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~14_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(7));

-- Location: LCCOMB_X28_Y10_N0
\inst|inst4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~0_combout\ = \inst|inst4|EC\(0) $ (VCC)
-- \inst|inst4|Add0~1\ = CARRY(\inst|inst4|EC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(0),
	datad => VCC,
	combout => \inst|inst4|Add0~0_combout\,
	cout => \inst|inst4|Add0~1\);

-- Location: LCCOMB_X29_Y9_N22
\inst|inst4|EC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|EC~3_combout\ = (\inst|inst4|Add0~0_combout\ & !\inst|inst4|state_csh~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|Add0~0_combout\,
	datad => \inst|inst4|state_csh~12_combout\,
	combout => \inst|inst4|EC~3_combout\);

-- Location: FF_X29_Y9_N23
\inst|inst4|EC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|EC~3_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(0));

-- Location: LCCOMB_X28_Y10_N2
\inst|inst4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~2_combout\ = (\inst|inst4|EC\(1) & (!\inst|inst4|Add0~1\)) # (!\inst|inst4|EC\(1) & ((\inst|inst4|Add0~1\) # (GND)))
-- \inst|inst4|Add0~3\ = CARRY((!\inst|inst4|Add0~1\) # (!\inst|inst4|EC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(1),
	datad => VCC,
	cin => \inst|inst4|Add0~1\,
	combout => \inst|inst4|Add0~2_combout\,
	cout => \inst|inst4|Add0~3\);

-- Location: LCCOMB_X29_Y9_N2
\inst|inst4|EC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|EC~5_combout\ = (\inst|inst4|Add0~2_combout\ & !\inst|inst4|state_csh~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|Add0~2_combout\,
	datad => \inst|inst4|state_csh~12_combout\,
	combout => \inst|inst4|EC~5_combout\);

-- Location: FF_X29_Y9_N3
\inst|inst4|EC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|EC~5_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(1));

-- Location: LCCOMB_X28_Y10_N4
\inst|inst4|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~4_combout\ = (\inst|inst4|EC\(2) & (\inst|inst4|Add0~3\ $ (GND))) # (!\inst|inst4|EC\(2) & (!\inst|inst4|Add0~3\ & VCC))
-- \inst|inst4|Add0~5\ = CARRY((\inst|inst4|EC\(2) & !\inst|inst4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(2),
	datad => VCC,
	cin => \inst|inst4|Add0~3\,
	combout => \inst|inst4|Add0~4_combout\,
	cout => \inst|inst4|Add0~5\);

-- Location: FF_X28_Y10_N5
\inst|inst4|EC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~4_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(2));

-- Location: LCCOMB_X28_Y10_N6
\inst|inst4|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~6_combout\ = (\inst|inst4|EC\(3) & (!\inst|inst4|Add0~5\)) # (!\inst|inst4|EC\(3) & ((\inst|inst4|Add0~5\) # (GND)))
-- \inst|inst4|Add0~7\ = CARRY((!\inst|inst4|Add0~5\) # (!\inst|inst4|EC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|EC\(3),
	datad => VCC,
	cin => \inst|inst4|Add0~5\,
	combout => \inst|inst4|Add0~6_combout\,
	cout => \inst|inst4|Add0~7\);

-- Location: FF_X28_Y10_N7
\inst|inst4|EC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~6_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(3));

-- Location: LCCOMB_X28_Y10_N8
\inst|inst4|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~8_combout\ = (\inst|inst4|EC\(4) & (\inst|inst4|Add0~7\ $ (GND))) # (!\inst|inst4|EC\(4) & (!\inst|inst4|Add0~7\ & VCC))
-- \inst|inst4|Add0~9\ = CARRY((\inst|inst4|EC\(4) & !\inst|inst4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(4),
	datad => VCC,
	cin => \inst|inst4|Add0~7\,
	combout => \inst|inst4|Add0~8_combout\,
	cout => \inst|inst4|Add0~9\);

-- Location: LCCOMB_X29_Y9_N0
\inst|inst4|EC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|EC~4_combout\ = (\inst|inst4|Add0~8_combout\ & !\inst|inst4|state_csh~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|Add0~8_combout\,
	datad => \inst|inst4|state_csh~12_combout\,
	combout => \inst|inst4|EC~4_combout\);

-- Location: FF_X29_Y9_N1
\inst|inst4|EC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|EC~4_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(4));

-- Location: LCCOMB_X28_Y10_N10
\inst|inst4|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~10_combout\ = (\inst|inst4|EC\(5) & (!\inst|inst4|Add0~9\)) # (!\inst|inst4|EC\(5) & ((\inst|inst4|Add0~9\) # (GND)))
-- \inst|inst4|Add0~11\ = CARRY((!\inst|inst4|Add0~9\) # (!\inst|inst4|EC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|EC\(5),
	datad => VCC,
	cin => \inst|inst4|Add0~9\,
	combout => \inst|inst4|Add0~10_combout\,
	cout => \inst|inst4|Add0~11\);

-- Location: FF_X28_Y10_N11
\inst|inst4|EC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~10_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(5));

-- Location: LCCOMB_X28_Y10_N12
\inst|inst4|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~12_combout\ = (\inst|inst4|EC\(6) & (\inst|inst4|Add0~11\ $ (GND))) # (!\inst|inst4|EC\(6) & (!\inst|inst4|Add0~11\ & VCC))
-- \inst|inst4|Add0~13\ = CARRY((\inst|inst4|EC\(6) & !\inst|inst4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|EC\(6),
	datad => VCC,
	cin => \inst|inst4|Add0~11\,
	combout => \inst|inst4|Add0~12_combout\,
	cout => \inst|inst4|Add0~13\);

-- Location: FF_X28_Y10_N13
\inst|inst4|EC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~12_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(6));

-- Location: LCCOMB_X28_Y10_N14
\inst|inst4|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~14_combout\ = (\inst|inst4|EC\(7) & (!\inst|inst4|Add0~13\)) # (!\inst|inst4|EC\(7) & ((\inst|inst4|Add0~13\) # (GND)))
-- \inst|inst4|Add0~15\ = CARRY((!\inst|inst4|Add0~13\) # (!\inst|inst4|EC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(7),
	datad => VCC,
	cin => \inst|inst4|Add0~13\,
	combout => \inst|inst4|Add0~14_combout\,
	cout => \inst|inst4|Add0~15\);

-- Location: FF_X28_Y10_N19
\inst|inst4|EC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~18_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(9));

-- Location: LCCOMB_X28_Y10_N16
\inst|inst4|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~16_combout\ = (\inst|inst4|EC\(8) & (\inst|inst4|Add0~15\ $ (GND))) # (!\inst|inst4|EC\(8) & (!\inst|inst4|Add0~15\ & VCC))
-- \inst|inst4|Add0~17\ = CARRY((\inst|inst4|EC\(8) & !\inst|inst4|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(8),
	datad => VCC,
	cin => \inst|inst4|Add0~15\,
	combout => \inst|inst4|Add0~16_combout\,
	cout => \inst|inst4|Add0~17\);

-- Location: FF_X28_Y10_N17
\inst|inst4|EC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~16_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(8));

-- Location: LCCOMB_X28_Y10_N18
\inst|inst4|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~18_combout\ = (\inst|inst4|EC\(9) & (!\inst|inst4|Add0~17\)) # (!\inst|inst4|EC\(9) & ((\inst|inst4|Add0~17\) # (GND)))
-- \inst|inst4|Add0~19\ = CARRY((!\inst|inst4|Add0~17\) # (!\inst|inst4|EC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(9),
	datad => VCC,
	cin => \inst|inst4|Add0~17\,
	combout => \inst|inst4|Add0~18_combout\,
	cout => \inst|inst4|Add0~19\);

-- Location: FF_X28_Y10_N21
\inst|inst4|EC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~20_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(10));

-- Location: LCCOMB_X28_Y10_N20
\inst|inst4|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~20_combout\ = (\inst|inst4|EC\(10) & (\inst|inst4|Add0~19\ $ (GND))) # (!\inst|inst4|EC\(10) & (!\inst|inst4|Add0~19\ & VCC))
-- \inst|inst4|Add0~21\ = CARRY((\inst|inst4|EC\(10) & !\inst|inst4|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(10),
	datad => VCC,
	cin => \inst|inst4|Add0~19\,
	combout => \inst|inst4|Add0~20_combout\,
	cout => \inst|inst4|Add0~21\);

-- Location: LCCOMB_X29_Y10_N30
\inst|inst4|state_csh~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csh~4_combout\ = (!\inst|inst4|Add0~14_combout\ & (!\inst|inst4|Add0~18_combout\ & (!\inst|inst4|Add0~16_combout\ & !\inst|inst4|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add0~14_combout\,
	datab => \inst|inst4|Add0~18_combout\,
	datac => \inst|inst4|Add0~16_combout\,
	datad => \inst|inst4|Add0~20_combout\,
	combout => \inst|inst4|state_csh~4_combout\);

-- Location: LCCOMB_X29_Y9_N16
\inst|inst4|state_csh~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csh~2_combout\ = (\inst|inst4|Add0~8_combout\ & (!\inst|inst4|state_csh~q\ & (\inst|inst4|Add0~0_combout\ & !\inst|inst4|Add0~2_combout\))) # (!\inst|inst4|Add0~8_combout\ & (\inst|inst4|state_csh~q\ & (!\inst|inst4|Add0~0_combout\ & 
-- \inst|inst4|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add0~8_combout\,
	datab => \inst|inst4|state_csh~q\,
	datac => \inst|inst4|Add0~0_combout\,
	datad => \inst|inst4|Add0~2_combout\,
	combout => \inst|inst4|state_csh~2_combout\);

-- Location: LCCOMB_X29_Y10_N4
\inst|inst4|state_csh~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csh~3_combout\ = (!\inst|inst4|Add0~12_combout\ & (!\inst|inst4|Add0~6_combout\ & (!\inst|inst4|Add0~4_combout\ & !\inst|inst4|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add0~12_combout\,
	datab => \inst|inst4|Add0~6_combout\,
	datac => \inst|inst4|Add0~4_combout\,
	datad => \inst|inst4|Add0~10_combout\,
	combout => \inst|inst4|state_csh~3_combout\);

-- Location: LCCOMB_X29_Y9_N30
\inst|inst4|state_csh~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csh~5_combout\ = (\inst|inst4|state_csh~4_combout\ & (\inst|inst4|state_csh~2_combout\ & \inst|inst4|state_csh~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|state_csh~4_combout\,
	datab => \inst|inst4|state_csh~2_combout\,
	datad => \inst|inst4|state_csh~3_combout\,
	combout => \inst|inst4|state_csh~5_combout\);

-- Location: FF_X28_Y9_N31
\inst|inst4|EC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~62_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(31));

-- Location: LCCOMB_X28_Y10_N22
\inst|inst4|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~22_combout\ = (\inst|inst4|EC\(11) & (!\inst|inst4|Add0~21\)) # (!\inst|inst4|EC\(11) & ((\inst|inst4|Add0~21\) # (GND)))
-- \inst|inst4|Add0~23\ = CARRY((!\inst|inst4|Add0~21\) # (!\inst|inst4|EC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|EC\(11),
	datad => VCC,
	cin => \inst|inst4|Add0~21\,
	combout => \inst|inst4|Add0~22_combout\,
	cout => \inst|inst4|Add0~23\);

-- Location: FF_X28_Y10_N23
\inst|inst4|EC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~22_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(11));

-- Location: LCCOMB_X28_Y10_N24
\inst|inst4|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~24_combout\ = (\inst|inst4|EC\(12) & (\inst|inst4|Add0~23\ $ (GND))) # (!\inst|inst4|EC\(12) & (!\inst|inst4|Add0~23\ & VCC))
-- \inst|inst4|Add0~25\ = CARRY((\inst|inst4|EC\(12) & !\inst|inst4|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(12),
	datad => VCC,
	cin => \inst|inst4|Add0~23\,
	combout => \inst|inst4|Add0~24_combout\,
	cout => \inst|inst4|Add0~25\);

-- Location: FF_X28_Y10_N25
\inst|inst4|EC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~24_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(12));

-- Location: LCCOMB_X28_Y10_N26
\inst|inst4|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~26_combout\ = (\inst|inst4|EC\(13) & (!\inst|inst4|Add0~25\)) # (!\inst|inst4|EC\(13) & ((\inst|inst4|Add0~25\) # (GND)))
-- \inst|inst4|Add0~27\ = CARRY((!\inst|inst4|Add0~25\) # (!\inst|inst4|EC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|EC\(13),
	datad => VCC,
	cin => \inst|inst4|Add0~25\,
	combout => \inst|inst4|Add0~26_combout\,
	cout => \inst|inst4|Add0~27\);

-- Location: FF_X28_Y10_N27
\inst|inst4|EC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~26_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(13));

-- Location: LCCOMB_X28_Y10_N28
\inst|inst4|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~28_combout\ = (\inst|inst4|EC\(14) & (\inst|inst4|Add0~27\ $ (GND))) # (!\inst|inst4|EC\(14) & (!\inst|inst4|Add0~27\ & VCC))
-- \inst|inst4|Add0~29\ = CARRY((\inst|inst4|EC\(14) & !\inst|inst4|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(14),
	datad => VCC,
	cin => \inst|inst4|Add0~27\,
	combout => \inst|inst4|Add0~28_combout\,
	cout => \inst|inst4|Add0~29\);

-- Location: FF_X28_Y10_N29
\inst|inst4|EC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~28_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(14));

-- Location: LCCOMB_X28_Y10_N30
\inst|inst4|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~30_combout\ = (\inst|inst4|EC\(15) & (!\inst|inst4|Add0~29\)) # (!\inst|inst4|EC\(15) & ((\inst|inst4|Add0~29\) # (GND)))
-- \inst|inst4|Add0~31\ = CARRY((!\inst|inst4|Add0~29\) # (!\inst|inst4|EC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|EC\(15),
	datad => VCC,
	cin => \inst|inst4|Add0~29\,
	combout => \inst|inst4|Add0~30_combout\,
	cout => \inst|inst4|Add0~31\);

-- Location: FF_X28_Y10_N31
\inst|inst4|EC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~30_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(15));

-- Location: LCCOMB_X28_Y9_N0
\inst|inst4|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~32_combout\ = (\inst|inst4|EC\(16) & (\inst|inst4|Add0~31\ $ (GND))) # (!\inst|inst4|EC\(16) & (!\inst|inst4|Add0~31\ & VCC))
-- \inst|inst4|Add0~33\ = CARRY((\inst|inst4|EC\(16) & !\inst|inst4|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(16),
	datad => VCC,
	cin => \inst|inst4|Add0~31\,
	combout => \inst|inst4|Add0~32_combout\,
	cout => \inst|inst4|Add0~33\);

-- Location: FF_X28_Y9_N1
\inst|inst4|EC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~32_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(16));

-- Location: LCCOMB_X28_Y9_N2
\inst|inst4|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~34_combout\ = (\inst|inst4|EC\(17) & (!\inst|inst4|Add0~33\)) # (!\inst|inst4|EC\(17) & ((\inst|inst4|Add0~33\) # (GND)))
-- \inst|inst4|Add0~35\ = CARRY((!\inst|inst4|Add0~33\) # (!\inst|inst4|EC\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(17),
	datad => VCC,
	cin => \inst|inst4|Add0~33\,
	combout => \inst|inst4|Add0~34_combout\,
	cout => \inst|inst4|Add0~35\);

-- Location: FF_X28_Y9_N3
\inst|inst4|EC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~34_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(17));

-- Location: LCCOMB_X28_Y9_N4
\inst|inst4|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~36_combout\ = (\inst|inst4|EC\(18) & (\inst|inst4|Add0~35\ $ (GND))) # (!\inst|inst4|EC\(18) & (!\inst|inst4|Add0~35\ & VCC))
-- \inst|inst4|Add0~37\ = CARRY((\inst|inst4|EC\(18) & !\inst|inst4|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(18),
	datad => VCC,
	cin => \inst|inst4|Add0~35\,
	combout => \inst|inst4|Add0~36_combout\,
	cout => \inst|inst4|Add0~37\);

-- Location: FF_X28_Y9_N5
\inst|inst4|EC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~36_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(18));

-- Location: LCCOMB_X28_Y9_N6
\inst|inst4|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~38_combout\ = (\inst|inst4|EC\(19) & (!\inst|inst4|Add0~37\)) # (!\inst|inst4|EC\(19) & ((\inst|inst4|Add0~37\) # (GND)))
-- \inst|inst4|Add0~39\ = CARRY((!\inst|inst4|Add0~37\) # (!\inst|inst4|EC\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|EC\(19),
	datad => VCC,
	cin => \inst|inst4|Add0~37\,
	combout => \inst|inst4|Add0~38_combout\,
	cout => \inst|inst4|Add0~39\);

-- Location: FF_X28_Y9_N7
\inst|inst4|EC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~38_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(19));

-- Location: LCCOMB_X28_Y9_N8
\inst|inst4|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~40_combout\ = (\inst|inst4|EC\(20) & (\inst|inst4|Add0~39\ $ (GND))) # (!\inst|inst4|EC\(20) & (!\inst|inst4|Add0~39\ & VCC))
-- \inst|inst4|Add0~41\ = CARRY((\inst|inst4|EC\(20) & !\inst|inst4|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(20),
	datad => VCC,
	cin => \inst|inst4|Add0~39\,
	combout => \inst|inst4|Add0~40_combout\,
	cout => \inst|inst4|Add0~41\);

-- Location: FF_X28_Y9_N9
\inst|inst4|EC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~40_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(20));

-- Location: LCCOMB_X28_Y9_N10
\inst|inst4|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~42_combout\ = (\inst|inst4|EC\(21) & (!\inst|inst4|Add0~41\)) # (!\inst|inst4|EC\(21) & ((\inst|inst4|Add0~41\) # (GND)))
-- \inst|inst4|Add0~43\ = CARRY((!\inst|inst4|Add0~41\) # (!\inst|inst4|EC\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|EC\(21),
	datad => VCC,
	cin => \inst|inst4|Add0~41\,
	combout => \inst|inst4|Add0~42_combout\,
	cout => \inst|inst4|Add0~43\);

-- Location: FF_X28_Y9_N11
\inst|inst4|EC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~42_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(21));

-- Location: LCCOMB_X28_Y9_N12
\inst|inst4|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~44_combout\ = (\inst|inst4|EC\(22) & (\inst|inst4|Add0~43\ $ (GND))) # (!\inst|inst4|EC\(22) & (!\inst|inst4|Add0~43\ & VCC))
-- \inst|inst4|Add0~45\ = CARRY((\inst|inst4|EC\(22) & !\inst|inst4|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|EC\(22),
	datad => VCC,
	cin => \inst|inst4|Add0~43\,
	combout => \inst|inst4|Add0~44_combout\,
	cout => \inst|inst4|Add0~45\);

-- Location: FF_X28_Y9_N13
\inst|inst4|EC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~44_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(22));

-- Location: LCCOMB_X28_Y9_N14
\inst|inst4|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~46_combout\ = (\inst|inst4|EC\(23) & (!\inst|inst4|Add0~45\)) # (!\inst|inst4|EC\(23) & ((\inst|inst4|Add0~45\) # (GND)))
-- \inst|inst4|Add0~47\ = CARRY((!\inst|inst4|Add0~45\) # (!\inst|inst4|EC\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(23),
	datad => VCC,
	cin => \inst|inst4|Add0~45\,
	combout => \inst|inst4|Add0~46_combout\,
	cout => \inst|inst4|Add0~47\);

-- Location: FF_X28_Y9_N15
\inst|inst4|EC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~46_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(23));

-- Location: LCCOMB_X28_Y9_N16
\inst|inst4|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~48_combout\ = (\inst|inst4|EC\(24) & (\inst|inst4|Add0~47\ $ (GND))) # (!\inst|inst4|EC\(24) & (!\inst|inst4|Add0~47\ & VCC))
-- \inst|inst4|Add0~49\ = CARRY((\inst|inst4|EC\(24) & !\inst|inst4|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(24),
	datad => VCC,
	cin => \inst|inst4|Add0~47\,
	combout => \inst|inst4|Add0~48_combout\,
	cout => \inst|inst4|Add0~49\);

-- Location: FF_X28_Y9_N17
\inst|inst4|EC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~48_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(24));

-- Location: LCCOMB_X28_Y9_N18
\inst|inst4|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~50_combout\ = (\inst|inst4|EC\(25) & (!\inst|inst4|Add0~49\)) # (!\inst|inst4|EC\(25) & ((\inst|inst4|Add0~49\) # (GND)))
-- \inst|inst4|Add0~51\ = CARRY((!\inst|inst4|Add0~49\) # (!\inst|inst4|EC\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(25),
	datad => VCC,
	cin => \inst|inst4|Add0~49\,
	combout => \inst|inst4|Add0~50_combout\,
	cout => \inst|inst4|Add0~51\);

-- Location: FF_X28_Y9_N19
\inst|inst4|EC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~50_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(25));

-- Location: LCCOMB_X28_Y9_N20
\inst|inst4|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~52_combout\ = (\inst|inst4|EC\(26) & (\inst|inst4|Add0~51\ $ (GND))) # (!\inst|inst4|EC\(26) & (!\inst|inst4|Add0~51\ & VCC))
-- \inst|inst4|Add0~53\ = CARRY((\inst|inst4|EC\(26) & !\inst|inst4|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(26),
	datad => VCC,
	cin => \inst|inst4|Add0~51\,
	combout => \inst|inst4|Add0~52_combout\,
	cout => \inst|inst4|Add0~53\);

-- Location: FF_X28_Y9_N21
\inst|inst4|EC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~52_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(26));

-- Location: LCCOMB_X28_Y9_N22
\inst|inst4|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~54_combout\ = (\inst|inst4|EC\(27) & (!\inst|inst4|Add0~53\)) # (!\inst|inst4|EC\(27) & ((\inst|inst4|Add0~53\) # (GND)))
-- \inst|inst4|Add0~55\ = CARRY((!\inst|inst4|Add0~53\) # (!\inst|inst4|EC\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|EC\(27),
	datad => VCC,
	cin => \inst|inst4|Add0~53\,
	combout => \inst|inst4|Add0~54_combout\,
	cout => \inst|inst4|Add0~55\);

-- Location: FF_X28_Y9_N23
\inst|inst4|EC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~54_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(27));

-- Location: LCCOMB_X28_Y9_N24
\inst|inst4|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~56_combout\ = (\inst|inst4|EC\(28) & (\inst|inst4|Add0~55\ $ (GND))) # (!\inst|inst4|EC\(28) & (!\inst|inst4|Add0~55\ & VCC))
-- \inst|inst4|Add0~57\ = CARRY((\inst|inst4|EC\(28) & !\inst|inst4|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(28),
	datad => VCC,
	cin => \inst|inst4|Add0~55\,
	combout => \inst|inst4|Add0~56_combout\,
	cout => \inst|inst4|Add0~57\);

-- Location: FF_X28_Y9_N25
\inst|inst4|EC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~56_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(28));

-- Location: LCCOMB_X28_Y9_N26
\inst|inst4|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~58_combout\ = (\inst|inst4|EC\(29) & (!\inst|inst4|Add0~57\)) # (!\inst|inst4|EC\(29) & ((\inst|inst4|Add0~57\) # (GND)))
-- \inst|inst4|Add0~59\ = CARRY((!\inst|inst4|Add0~57\) # (!\inst|inst4|EC\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|EC\(29),
	datad => VCC,
	cin => \inst|inst4|Add0~57\,
	combout => \inst|inst4|Add0~58_combout\,
	cout => \inst|inst4|Add0~59\);

-- Location: FF_X28_Y9_N27
\inst|inst4|EC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~58_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(29));

-- Location: LCCOMB_X28_Y9_N28
\inst|inst4|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~60_combout\ = (\inst|inst4|EC\(30) & (\inst|inst4|Add0~59\ $ (GND))) # (!\inst|inst4|EC\(30) & (!\inst|inst4|Add0~59\ & VCC))
-- \inst|inst4|Add0~61\ = CARRY((\inst|inst4|EC\(30) & !\inst|inst4|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|EC\(30),
	datad => VCC,
	cin => \inst|inst4|Add0~59\,
	combout => \inst|inst4|Add0~60_combout\,
	cout => \inst|inst4|Add0~61\);

-- Location: FF_X28_Y9_N29
\inst|inst4|EC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add0~60_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|EC\(30));

-- Location: LCCOMB_X28_Y9_N30
\inst|inst4|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add0~62_combout\ = \inst|inst4|EC\(31) $ (\inst|inst4|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|EC\(31),
	cin => \inst|inst4|Add0~61\,
	combout => \inst|inst4|Add0~62_combout\);

-- Location: LCCOMB_X29_Y9_N12
\inst|inst4|state_csh~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csh~7_combout\ = (!\inst|inst4|Add0~34_combout\ & (!\inst|inst4|Add0~36_combout\ & (!\inst|inst4|Add0~32_combout\ & !\inst|inst4|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add0~34_combout\,
	datab => \inst|inst4|Add0~36_combout\,
	datac => \inst|inst4|Add0~32_combout\,
	datad => \inst|inst4|Add0~30_combout\,
	combout => \inst|inst4|state_csh~7_combout\);

-- Location: LCCOMB_X29_Y9_N8
\inst|inst4|state_csh~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csh~9_combout\ = (!\inst|inst4|Add0~46_combout\ & (!\inst|inst4|Add0~52_combout\ & (!\inst|inst4|Add0~48_combout\ & !\inst|inst4|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add0~46_combout\,
	datab => \inst|inst4|Add0~52_combout\,
	datac => \inst|inst4|Add0~48_combout\,
	datad => \inst|inst4|Add0~50_combout\,
	combout => \inst|inst4|state_csh~9_combout\);

-- Location: LCCOMB_X29_Y9_N26
\inst|inst4|state_csh~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csh~8_combout\ = (!\inst|inst4|Add0~42_combout\ & (!\inst|inst4|Add0~38_combout\ & (!\inst|inst4|Add0~44_combout\ & !\inst|inst4|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add0~42_combout\,
	datab => \inst|inst4|Add0~38_combout\,
	datac => \inst|inst4|Add0~44_combout\,
	datad => \inst|inst4|Add0~40_combout\,
	combout => \inst|inst4|state_csh~8_combout\);

-- Location: LCCOMB_X29_Y10_N20
\inst|inst4|state_csh~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csh~6_combout\ = (!\inst|inst4|Add0~26_combout\ & (!\inst|inst4|Add0~24_combout\ & (!\inst|inst4|Add0~28_combout\ & !\inst|inst4|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add0~26_combout\,
	datab => \inst|inst4|Add0~24_combout\,
	datac => \inst|inst4|Add0~28_combout\,
	datad => \inst|inst4|Add0~22_combout\,
	combout => \inst|inst4|state_csh~6_combout\);

-- Location: LCCOMB_X29_Y9_N14
\inst|inst4|state_csh~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csh~10_combout\ = (\inst|inst4|state_csh~7_combout\ & (\inst|inst4|state_csh~9_combout\ & (\inst|inst4|state_csh~8_combout\ & \inst|inst4|state_csh~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|state_csh~7_combout\,
	datab => \inst|inst4|state_csh~9_combout\,
	datac => \inst|inst4|state_csh~8_combout\,
	datad => \inst|inst4|state_csh~6_combout\,
	combout => \inst|inst4|state_csh~10_combout\);

-- Location: LCCOMB_X29_Y9_N20
\inst|inst4|state_csh~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csh~11_combout\ = (!\inst|inst4|Add0~60_combout\ & (!\inst|inst4|Add0~56_combout\ & (!\inst|inst4|Add0~58_combout\ & !\inst|inst4|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add0~60_combout\,
	datab => \inst|inst4|Add0~56_combout\,
	datac => \inst|inst4|Add0~58_combout\,
	datad => \inst|inst4|Add0~54_combout\,
	combout => \inst|inst4|state_csh~11_combout\);

-- Location: LCCOMB_X29_Y9_N6
\inst|inst4|state_csh~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csh~12_combout\ = (\inst|inst4|state_csh~5_combout\ & (!\inst|inst4|Add0~62_combout\ & (\inst|inst4|state_csh~10_combout\ & \inst|inst4|state_csh~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|state_csh~5_combout\,
	datab => \inst|inst4|Add0~62_combout\,
	datac => \inst|inst4|state_csh~10_combout\,
	datad => \inst|inst4|state_csh~11_combout\,
	combout => \inst|inst4|state_csh~12_combout\);

-- Location: LCCOMB_X29_Y9_N4
\inst|inst4|state_csh~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_csh~13_combout\ = \inst|inst4|state_csh~q\ $ (((!\inst|inst4|wt~q\ & (\inst|inst4|StartTx~q\ & \inst|inst4|state_csh~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|wt~q\,
	datab => \inst|inst4|StartTx~q\,
	datac => \inst|inst4|state_csh~q\,
	datad => \inst|inst4|state_csh~12_combout\,
	combout => \inst|inst4|state_csh~13_combout\);

-- Location: FF_X29_Y9_N5
\inst|inst4|state_csh\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|state_csh~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|state_csh~q\);

-- Location: LCCOMB_X29_Y9_N24
\inst|inst4|CSU~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|CSU~0_combout\ = !\inst|inst4|state_csh~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|state_csh~q\,
	combout => \inst|inst4|CSU~0_combout\);

-- Location: FF_X29_Y9_N25
\inst|inst4|CSU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|CSU~0_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CSU~q\);

-- Location: LCCOMB_X29_Y9_N10
\inst|inst4|CS\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|CS~combout\ = (!\inst|inst4|CSD~q\ & !\inst|inst4|CSU~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|CSD~q\,
	datad => \inst|inst4|CSU~q\,
	combout => \inst|inst4|CS~combout\);

-- Location: LCCOMB_X29_Y12_N18
\inst|inst4|wt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|wt~0_combout\ = (!\inst|inst4|Equal10~10_combout\ & ((\inst|inst4|wt~q\) # ((\inst|inst4|CS~combout\ & \inst|inst4|StartTx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|CS~combout\,
	datab => \inst|inst4|StartTx~q\,
	datac => \inst|inst4|wt~q\,
	datad => \inst|inst4|Equal10~10_combout\,
	combout => \inst|inst4|wt~0_combout\);

-- Location: FF_X29_Y12_N19
\inst|inst4|wt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|wt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|wt~q\);

-- Location: LCCOMB_X29_Y12_N30
\inst|inst4|pstate~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|pstate~0_combout\ = !\inst|inst4|wt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst4|wt~q\,
	combout => \inst|inst4|pstate~0_combout\);

-- Location: FF_X29_Y12_N31
\inst|inst4|pstate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|pstate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|pstate~q\);

-- Location: LCCOMB_X29_Y12_N16
\inst|inst4|process_10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|process_10~0_combout\ = (!\inst|inst4|pstate~q\ & !\inst|inst4|wt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|pstate~q\,
	datad => \inst|inst4|wt~q\,
	combout => \inst|inst4|process_10~0_combout\);

-- Location: FF_X29_Y12_N17
\inst|inst4|fPulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|process_10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|fPulse~q\);

-- Location: LCCOMB_X28_Y16_N26
\inst|inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector3~0_combout\ = (\inst|inst|state.STRTrx~q\) # ((!\inst|inst4|fPulse~q\ & \inst|inst|state.WAITINGrx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|fPulse~q\,
	datac => \inst|inst|state.WAITINGrx~q\,
	datad => \inst|inst|state.STRTrx~q\,
	combout => \inst|inst|Selector3~0_combout\);

-- Location: FF_X28_Y16_N27
\inst|inst|state.WAITINGrx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|state.WAITINGrx~q\);

-- Location: LCCOMB_X28_Y16_N4
\inst|inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector4~0_combout\ = (\inst|inst|state.WAITINGrx~q\ & \inst|inst4|fPulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|state.WAITINGrx~q\,
	datad => \inst|inst4|fPulse~q\,
	combout => \inst|inst|Selector4~0_combout\);

-- Location: FF_X28_Y16_N5
\inst|inst|state.STOREstate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|state.STOREstate~q\);

-- Location: LCCOMB_X27_Y21_N6
\inst|inst3|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|state~9_combout\ = (!\inst|inst3|state.IDLE~q\ & ((\inst|inst15|state.NXTtx~q\) # (\inst|inst|state.STOREstate~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|state.NXTtx~q\,
	datac => \inst|inst3|state.IDLE~q\,
	datad => \inst|inst|state.STOREstate~q\,
	combout => \inst|inst3|state~9_combout\);

-- Location: FF_X27_Y21_N7
\inst|inst3|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst3|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|state.IDLE~q\);

-- Location: LCCOMB_X27_Y21_N8
\inst|inst3|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|state~10_combout\ = (!\inst|inst|state.STOREstate~q\ & (\inst|inst15|state.NXTtx~q\ & !\inst|inst3|state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|state.STOREstate~q\,
	datac => \inst|inst15|state.NXTtx~q\,
	datad => \inst|inst3|state.IDLE~q\,
	combout => \inst|inst3|state~10_combout\);

-- Location: FF_X27_Y21_N9
\inst|inst3|state.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst3|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|state.SEND~q\);

-- Location: LCCOMB_X26_Y18_N28
\inst|inst3|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector23~0_combout\ = (!\inst|inst3|state.SEND~q\ & ((!\inst|inst3|FS\(0)) # (!\inst|inst3|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Equal2~0_combout\,
	datac => \inst|inst3|FS\(0),
	datad => \inst|inst3|state.SEND~q\,
	combout => \inst|inst3|Selector23~0_combout\);

-- Location: LCCOMB_X26_Y21_N30
\inst|inst3|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector27~0_combout\ = (!\inst|inst3|state.SEND~q\ & (!\inst|inst3|process_0~3_combout\ & ((!\inst|inst3|NS\(0)) # (!\inst|inst3|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.SEND~q\,
	datab => \inst|inst3|Equal2~0_combout\,
	datac => \inst|inst3|process_0~3_combout\,
	datad => \inst|inst3|NS\(0),
	combout => \inst|inst3|Selector27~0_combout\);

-- Location: FF_X26_Y21_N15
\inst|inst3|NS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst3|Selector27~0_combout\,
	sload => VCC,
	ena => \inst|inst3|NS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|NS\(0));

-- Location: LCCOMB_X26_Y21_N16
\inst|inst3|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Add1~0_combout\ = \inst|inst3|NS\(0) $ (\inst|inst3|NS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|NS\(0),
	datad => \inst|inst3|NS\(1),
	combout => \inst|inst3|Add1~0_combout\);

-- Location: LCCOMB_X26_Y21_N22
\inst|inst3|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector26~0_combout\ = (!\inst|inst3|process_0~3_combout\ & (!\inst|inst3|state.SEND~q\ & ((\inst|inst3|Add1~0_combout\) # (!\inst|inst3|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Add1~0_combout\,
	datab => \inst|inst3|process_0~3_combout\,
	datac => \inst|inst3|state.SEND~q\,
	datad => \inst|inst3|Equal2~0_combout\,
	combout => \inst|inst3|Selector26~0_combout\);

-- Location: FF_X26_Y21_N23
\inst|inst3|NS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~q\,
	d => \inst|inst3|Selector26~0_combout\,
	ena => \inst|inst3|NS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|NS\(1));

-- Location: LCCOMB_X26_Y21_N12
\inst|inst3|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Add1~1_combout\ = \inst|inst3|NS\(3) $ (((\inst|inst3|NS\(2) & (\inst|inst3|NS\(0) & \inst|inst3|NS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|NS\(3),
	datab => \inst|inst3|NS\(2),
	datac => \inst|inst3|NS\(0),
	datad => \inst|inst3|NS\(1),
	combout => \inst|inst3|Add1~1_combout\);

-- Location: LCCOMB_X26_Y21_N18
\inst|inst3|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector24~0_combout\ = (!\inst|inst3|process_0~3_combout\ & (!\inst|inst3|state.SEND~q\ & ((\inst|inst3|Add1~1_combout\) # (!\inst|inst3|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Equal2~0_combout\,
	datab => \inst|inst3|process_0~3_combout\,
	datac => \inst|inst3|Add1~1_combout\,
	datad => \inst|inst3|state.SEND~q\,
	combout => \inst|inst3|Selector24~0_combout\);

-- Location: FF_X26_Y21_N19
\inst|inst3|NS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~q\,
	d => \inst|inst3|Selector24~0_combout\,
	ena => \inst|inst3|NS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|NS\(3));

-- Location: LCCOMB_X26_Y21_N8
\inst|inst3|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|process_0~2_combout\ = (!\inst|inst3|NS\(2) & (!\inst|inst3|NS\(1) & !\inst|inst3|NS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|NS\(2),
	datac => \inst|inst3|NS\(1),
	datad => \inst|inst3|NS\(3),
	combout => \inst|inst3|process_0~2_combout\);

-- Location: LCCOMB_X27_Y21_N24
\inst|inst3|state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|state~8_combout\ = (\inst|inst|state.STOREstate~q\ & !\inst|inst3|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|state.STOREstate~q\,
	datad => \inst|inst3|state.IDLE~q\,
	combout => \inst|inst3|state~8_combout\);

-- Location: FF_X27_Y21_N25
\inst|inst3|state.STORE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst3|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|state.STORE~q\);

-- Location: LCCOMB_X27_Y21_N20
\inst|inst3|OS[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|OS[2]~0_combout\ = ((!\inst|inst3|process_0~3_combout\ & \inst|inst3|state.STORE~q\)) # (!\inst|inst3|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.IDLE~q\,
	datab => \inst|inst3|process_0~3_combout\,
	datad => \inst|inst3|state.STORE~q\,
	combout => \inst|inst3|OS[2]~0_combout\);

-- Location: LCCOMB_X27_Y21_N30
\inst|inst3|OS[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|OS[0]~4_combout\ = (\inst|inst3|OS\(0) & ((\inst|inst3|OS[2]~0_combout\))) # (!\inst|inst3|OS\(0) & (\inst|inst3|OS[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS[0]~2_combout\,
	datac => \inst|inst3|OS\(0),
	datad => \inst|inst3|OS[2]~0_combout\,
	combout => \inst|inst3|OS[0]~4_combout\);

-- Location: FF_X27_Y21_N31
\inst|inst3|OS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~q\,
	d => \inst|inst3|OS[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|OS\(0));

-- Location: LCCOMB_X27_Y21_N16
\inst|inst3|OS[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|OS[1]~3_combout\ = (\inst|inst3|OS\(1) & ((\inst|inst3|OS[2]~0_combout\) # ((\inst|inst3|OS[0]~2_combout\ & !\inst|inst3|OS\(0))))) # (!\inst|inst3|OS\(1) & (\inst|inst3|OS[0]~2_combout\ & (\inst|inst3|OS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS[0]~2_combout\,
	datab => \inst|inst3|OS\(0),
	datac => \inst|inst3|OS\(1),
	datad => \inst|inst3|OS[2]~0_combout\,
	combout => \inst|inst3|OS[1]~3_combout\);

-- Location: FF_X27_Y21_N17
\inst|inst3|OS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~q\,
	d => \inst|inst3|OS[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|OS\(1));

-- Location: LCCOMB_X27_Y21_N18
\inst|inst3|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Add2~0_combout\ = (\inst|inst3|OS\(0) & \inst|inst3|OS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|OS\(0),
	datad => \inst|inst3|OS\(1),
	combout => \inst|inst3|Add2~0_combout\);

-- Location: LCCOMB_X27_Y21_N22
\inst|inst3|OS[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|OS[2]~6_combout\ = (\inst|inst3|OS\(2) & ((\inst|inst3|OS[2]~0_combout\) # ((\inst|inst3|OS[0]~2_combout\ & !\inst|inst3|Add2~0_combout\)))) # (!\inst|inst3|OS\(2) & (\inst|inst3|OS[0]~2_combout\ & (\inst|inst3|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS[0]~2_combout\,
	datab => \inst|inst3|Add2~0_combout\,
	datac => \inst|inst3|OS\(2),
	datad => \inst|inst3|OS[2]~0_combout\,
	combout => \inst|inst3|OS[2]~6_combout\);

-- Location: FF_X27_Y21_N23
\inst|inst3|OS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~q\,
	d => \inst|inst3|OS[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|OS\(2));

-- Location: LCCOMB_X27_Y21_N10
\inst|inst3|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|process_0~0_combout\ = (!\inst|inst3|OS\(0) & (!\inst|inst3|OS\(3) & (!\inst|inst3|OS\(2) & !\inst|inst3|OS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS\(0),
	datab => \inst|inst3|OS\(3),
	datac => \inst|inst3|OS\(2),
	datad => \inst|inst3|OS\(1),
	combout => \inst|inst3|process_0~0_combout\);

-- Location: LCCOMB_X26_Y18_N18
\inst|inst3|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector20~0_combout\ = (!\inst|inst3|state.SEND~q\ & (\inst|inst3|FS\(3) $ (((\inst|inst3|FS\(2) & \inst|inst3|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|FS\(2),
	datab => \inst|inst3|Add0~0_combout\,
	datac => \inst|inst3|FS\(3),
	datad => \inst|inst3|state.SEND~q\,
	combout => \inst|inst3|Selector20~0_combout\);

-- Location: FF_X26_Y18_N19
\inst|inst3|FS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst3|Selector20~0_combout\,
	ena => \inst|inst3|NS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|FS\(3));

-- Location: LCCOMB_X25_Y18_N22
\inst|inst3|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|process_0~1_combout\ = (!\inst|inst3|FS\(3) & (!\inst|inst3|FS\(2) & (!\inst|inst3|FS\(1) & !\inst|inst3|FS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|FS\(3),
	datab => \inst|inst3|FS\(2),
	datac => \inst|inst3|FS\(1),
	datad => \inst|inst3|FS\(0),
	combout => \inst|inst3|process_0~1_combout\);

-- Location: LCCOMB_X26_Y21_N28
\inst|inst3|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|process_0~3_combout\ = (!\inst|inst3|NS\(0) & (\inst|inst3|process_0~2_combout\ & (\inst|inst3|process_0~0_combout\ & \inst|inst3|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|NS\(0),
	datab => \inst|inst3|process_0~2_combout\,
	datac => \inst|inst3|process_0~0_combout\,
	datad => \inst|inst3|process_0~1_combout\,
	combout => \inst|inst3|process_0~3_combout\);

-- Location: LCCOMB_X27_Y21_N12
\inst|inst3|OS[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|OS[0]~2_combout\ = (\inst|inst3|state.IDLE~q\ & (\inst|inst3|OS[2]~1_combout\ & ((\inst|inst3|process_0~3_combout\) # (!\inst|inst3|state.STORE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.IDLE~q\,
	datab => \inst|inst3|process_0~3_combout\,
	datac => \inst|inst3|state.STORE~q\,
	datad => \inst|inst3|OS[2]~1_combout\,
	combout => \inst|inst3|OS[0]~2_combout\);

-- Location: LCCOMB_X27_Y21_N2
\inst|inst3|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Add2~1_combout\ = \inst|inst3|OS\(3) $ (((\inst|inst3|OS\(0) & (\inst|inst3|OS\(2) & \inst|inst3|OS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS\(3),
	datab => \inst|inst3|OS\(0),
	datac => \inst|inst3|OS\(2),
	datad => \inst|inst3|OS\(1),
	combout => \inst|inst3|Add2~1_combout\);

-- Location: LCCOMB_X27_Y21_N28
\inst|inst3|OS[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|OS[3]~5_combout\ = (\inst|inst3|OS[0]~2_combout\ & ((\inst|inst3|Add2~1_combout\) # ((\inst|inst3|OS[2]~0_combout\ & \inst|inst3|OS\(3))))) # (!\inst|inst3|OS[0]~2_combout\ & (\inst|inst3|OS[2]~0_combout\ & (\inst|inst3|OS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS[0]~2_combout\,
	datab => \inst|inst3|OS[2]~0_combout\,
	datac => \inst|inst3|OS\(3),
	datad => \inst|inst3|Add2~1_combout\,
	combout => \inst|inst3|OS[3]~5_combout\);

-- Location: FF_X27_Y21_N29
\inst|inst3|OS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~q\,
	d => \inst|inst3|OS[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|OS\(3));

-- Location: LCCOMB_X27_Y21_N26
\inst|inst3|OS[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|OS[2]~1_combout\ = (\inst|inst3|state.SEND~q\ & (((\inst|inst3|OS\(2)) # (!\inst|inst3|Add2~0_combout\)) # (!\inst|inst3|OS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS\(3),
	datab => \inst|inst3|Add2~0_combout\,
	datac => \inst|inst3|OS\(2),
	datad => \inst|inst3|state.SEND~q\,
	combout => \inst|inst3|OS[2]~1_combout\);

-- Location: LCCOMB_X27_Y21_N14
\inst|inst3|NS[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|NS[3]~0_combout\ = (!\inst|inst3|OS[2]~1_combout\ & \inst|inst3|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|OS[2]~1_combout\,
	datad => \inst|inst3|state.IDLE~q\,
	combout => \inst|inst3|NS[3]~0_combout\);

-- Location: FF_X26_Y18_N29
\inst|inst3|FS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst3|Selector23~0_combout\,
	ena => \inst|inst3|NS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|FS\(0));

-- Location: LCCOMB_X26_Y18_N14
\inst|inst3|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector22~0_combout\ = (!\inst|inst3|state.SEND~q\ & ((\inst|inst3|FS\(0) $ (\inst|inst3|FS\(1))) # (!\inst|inst3|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Equal2~0_combout\,
	datab => \inst|inst3|FS\(0),
	datac => \inst|inst3|FS\(1),
	datad => \inst|inst3|state.SEND~q\,
	combout => \inst|inst3|Selector22~0_combout\);

-- Location: FF_X26_Y18_N15
\inst|inst3|FS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst3|Selector22~0_combout\,
	ena => \inst|inst3|NS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|FS\(1));

-- Location: LCCOMB_X26_Y18_N20
\inst|inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Add0~0_combout\ = (\inst|inst3|FS\(1) & \inst|inst3|FS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|FS\(1),
	datad => \inst|inst3|FS\(0),
	combout => \inst|inst3|Add0~0_combout\);

-- Location: LCCOMB_X26_Y18_N24
\inst|inst3|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector21~0_combout\ = (\inst|inst3|Equal2~0_combout\ & (!\inst|inst3|state.SEND~q\ & (\inst|inst3|Add0~0_combout\ $ (\inst|inst3|FS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Equal2~0_combout\,
	datab => \inst|inst3|Add0~0_combout\,
	datac => \inst|inst3|FS\(2),
	datad => \inst|inst3|state.SEND~q\,
	combout => \inst|inst3|Selector21~0_combout\);

-- Location: FF_X26_Y18_N25
\inst|inst3|FS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst3|Selector21~0_combout\,
	ena => \inst|inst3|NS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|FS\(2));

-- Location: LCCOMB_X26_Y18_N26
\inst|inst3|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Equal2~0_combout\ = (\inst|inst3|FS\(2)) # (((!\inst|inst3|FS\(3)) # (!\inst|inst3|FS\(1))) # (!\inst|inst3|FS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|FS\(2),
	datab => \inst|inst3|FS\(0),
	datac => \inst|inst3|FS\(1),
	datad => \inst|inst3|FS\(3),
	combout => \inst|inst3|Equal2~0_combout\);

-- Location: LCCOMB_X26_Y21_N6
\inst|inst3|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector25~0_combout\ = (!\inst|inst3|state.SEND~q\ & (\inst|inst3|NS\(2) $ (((\inst|inst3|NS\(1) & \inst|inst3|NS\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|NS\(1),
	datab => \inst|inst3|state.SEND~q\,
	datac => \inst|inst3|NS\(0),
	datad => \inst|inst3|NS\(2),
	combout => \inst|inst3|Selector25~0_combout\);

-- Location: LCCOMB_X26_Y21_N24
\inst|inst3|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector25~1_combout\ = (\inst|inst3|Equal2~0_combout\ & (!\inst|inst3|process_0~3_combout\ & \inst|inst3|Selector25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Equal2~0_combout\,
	datab => \inst|inst3|process_0~3_combout\,
	datac => \inst|inst3|Selector25~0_combout\,
	combout => \inst|inst3|Selector25~1_combout\);

-- Location: FF_X26_Y21_N25
\inst|inst3|NS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~q\,
	d => \inst|inst3|Selector25~1_combout\,
	ena => \inst|inst3|NS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|NS\(2));

-- Location: LCCOMB_X26_Y21_N10
\inst|inst3|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Equal4~0_combout\ = (!\inst|inst3|NS\(2) & (\inst|inst3|NS\(0) & (\inst|inst3|NS\(1) & \inst|inst3|NS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|NS\(2),
	datab => \inst|inst3|NS\(0),
	datac => \inst|inst3|NS\(1),
	datad => \inst|inst3|NS\(3),
	combout => \inst|inst3|Equal4~0_combout\);

-- Location: LCCOMB_X26_Y21_N20
\inst|inst3|empty~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|empty~0_combout\ = (\inst|inst3|process_0~0_combout\) # (\inst|inst3|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|process_0~0_combout\,
	datad => \inst|inst3|Equal4~0_combout\,
	combout => \inst|inst3|empty~0_combout\);

-- Location: LCCOMB_X26_Y21_N26
\inst|inst3|empty\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|empty~combout\ = (\inst|inst3|empty~0_combout\ & (!\inst|inst3|Equal4~0_combout\)) # (!\inst|inst3|empty~0_combout\ & ((\inst|inst3|empty~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Equal4~0_combout\,
	datac => \inst|inst3|empty~combout\,
	datad => \inst|inst3|empty~0_combout\,
	combout => \inst|inst3|empty~combout\);

-- Location: LCCOMB_X25_Y21_N26
\inst|inst15|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Selector3~0_combout\ = (\inst|inst15|state.STRTtx~q\) # ((!\inst11|fPulse~q\ & \inst|inst15|state.WAITINGtx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|fPulse~q\,
	datac => \inst|inst15|state.WAITINGtx~q\,
	datad => \inst|inst15|state.STRTtx~q\,
	combout => \inst|inst15|Selector3~0_combout\);

-- Location: FF_X25_Y21_N27
\inst|inst15|state.WAITINGtx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|state.WAITINGtx~q\);

-- Location: LCCOMB_X25_Y21_N18
\inst|inst15|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Selector1~0_combout\ = (!\inst|inst3|empty~combout\ & ((\inst|inst15|state.RDY2SND~q\) # (!\inst|inst15|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|empty~combout\,
	datac => \inst|inst15|state.RDY2SND~q\,
	datad => \inst|inst15|state.IDLE~q\,
	combout => \inst|inst15|Selector1~0_combout\);

-- Location: LCCOMB_X25_Y21_N6
\inst|inst15|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Selector1~1_combout\ = (\inst|inst15|Selector4~1_combout\ & ((\inst|inst15|Selector1~0_combout\) # ((!\inst|inst15|state.W4BFFRtx~q\ & \inst|inst15|state.RDY2SND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|Selector4~1_combout\,
	datab => \inst|inst15|state.W4BFFRtx~q\,
	datac => \inst|inst15|state.RDY2SND~q\,
	datad => \inst|inst15|Selector1~0_combout\,
	combout => \inst|inst15|Selector1~1_combout\);

-- Location: FF_X25_Y21_N7
\inst|inst15|state.RDY2SND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|state.RDY2SND~q\);

-- Location: LCCOMB_X26_Y24_N22
\inst5|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~1_combout\ = (\inst5|Mux0~0_combout\) # ((\inst|inst15|state.W4BFFRtx~q\) # (!\inst|inst15|state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~0_combout\,
	datab => \inst|inst15|state.W4BFFRtx~q\,
	datac => \inst|inst15|state.IDLE~q\,
	combout => \inst5|Mux0~1_combout\);

-- Location: LCCOMB_X27_Y24_N26
\inst5|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector19~0_combout\ = (\inst5|state.STRT~q\) # ((\inst5|state.WAITING~q\ & !\inst5|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|state.STRT~q\,
	datac => \inst5|state.WAITING~q\,
	datad => \inst5|Mux0~1_combout\,
	combout => \inst5|Selector19~0_combout\);

-- Location: FF_X27_Y24_N27
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

-- Location: LCCOMB_X27_Y24_N24
\inst5|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector17~0_combout\ = ((!\inst5|state.WAITING~q\ & \inst5|state.SEARCH~q\)) # (!\inst5|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.WAITING~q\,
	datac => \inst5|state.SEARCH~q\,
	datad => \inst5|Mux0~1_combout\,
	combout => \inst5|Selector17~0_combout\);

-- Location: FF_X27_Y24_N25
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

-- Location: LCCOMB_X26_Y24_N2
\inst5|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector18~0_combout\ = (\inst|inst15|state.IDLE~q\ & (!\inst5|Mux0~0_combout\ & (!\inst|inst15|state.W4BFFRtx~q\ & !\inst5|state.SEARCH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|state.IDLE~q\,
	datab => \inst5|Mux0~0_combout\,
	datac => \inst|inst15|state.W4BFFRtx~q\,
	datad => \inst5|state.SEARCH~q\,
	combout => \inst5|Selector18~0_combout\);

-- Location: LCCOMB_X27_Y24_N28
\inst5|state.STRT~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state.STRT~feeder_combout\ = \inst5|Selector18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Selector18~0_combout\,
	combout => \inst5|state.STRT~feeder_combout\);

-- Location: FF_X27_Y24_N29
\inst5|state.STRT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|state.STRT~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.STRT~q\);

-- Location: LCCOMB_X27_Y24_N22
\inst5|strtTx[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|strtTx\(0) = (\inst5|Mux0~0_combout\ & (\inst5|strtTx\(0))) # (!\inst5|Mux0~0_combout\ & ((\inst5|state.STRT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|strtTx\(0),
	datac => \inst5|Mux0~0_combout\,
	datad => \inst5|state.STRT~q\,
	combout => \inst5|strtTx\(0));

-- Location: LCCOMB_X25_Y21_N22
\inst|inst15|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Selector5~0_combout\ = (\inst|inst15|state.RDY2SND~q\ & (!\inst5|strtTx\(0) & (\inst|inst3|empty~combout\ $ (\inst|inst15|state.IDLE~q\)))) # (!\inst|inst15|state.RDY2SND~q\ & (\inst|inst3|empty~combout\ $ ((\inst|inst15|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|state.RDY2SND~q\,
	datab => \inst|inst3|empty~combout\,
	datac => \inst|inst15|state.IDLE~q\,
	datad => \inst5|strtTx\(0),
	combout => \inst|inst15|Selector5~0_combout\);

-- Location: LCCOMB_X24_Y21_N0
\inst|inst15|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~0_combout\ = \inst|inst15|nextTx\(0) $ (VCC)
-- \inst|inst15|Add0~1\ = CARRY(\inst|inst15|nextTx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(0),
	datad => VCC,
	combout => \inst|inst15|Add0~0_combout\,
	cout => \inst|inst15|Add0~1\);

-- Location: FF_X24_Y21_N1
\inst|inst15|nextTx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~0_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(0));

-- Location: LCCOMB_X24_Y21_N2
\inst|inst15|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~2_combout\ = (\inst|inst15|nextTx\(1) & (!\inst|inst15|Add0~1\)) # (!\inst|inst15|nextTx\(1) & ((\inst|inst15|Add0~1\) # (GND)))
-- \inst|inst15|Add0~3\ = CARRY((!\inst|inst15|Add0~1\) # (!\inst|inst15|nextTx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(1),
	datad => VCC,
	cin => \inst|inst15|Add0~1\,
	combout => \inst|inst15|Add0~2_combout\,
	cout => \inst|inst15|Add0~3\);

-- Location: FF_X24_Y21_N3
\inst|inst15|nextTx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~2_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(1));

-- Location: LCCOMB_X24_Y21_N4
\inst|inst15|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~4_combout\ = (\inst|inst15|nextTx\(2) & (\inst|inst15|Add0~3\ $ (GND))) # (!\inst|inst15|nextTx\(2) & (!\inst|inst15|Add0~3\ & VCC))
-- \inst|inst15|Add0~5\ = CARRY((\inst|inst15|nextTx\(2) & !\inst|inst15|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(2),
	datad => VCC,
	cin => \inst|inst15|Add0~3\,
	combout => \inst|inst15|Add0~4_combout\,
	cout => \inst|inst15|Add0~5\);

-- Location: LCCOMB_X25_Y21_N2
\inst|inst15|nextTx~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|nextTx~1_combout\ = (\inst|inst15|Add0~4_combout\ & !\inst|inst15|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst15|Add0~4_combout\,
	datad => \inst|inst15|Equal0~10_combout\,
	combout => \inst|inst15|nextTx~1_combout\);

-- Location: FF_X25_Y21_N3
\inst|inst15|nextTx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|nextTx~1_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(2));

-- Location: LCCOMB_X24_Y21_N6
\inst|inst15|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~6_combout\ = (\inst|inst15|nextTx\(3) & (!\inst|inst15|Add0~5\)) # (!\inst|inst15|nextTx\(3) & ((\inst|inst15|Add0~5\) # (GND)))
-- \inst|inst15|Add0~7\ = CARRY((!\inst|inst15|Add0~5\) # (!\inst|inst15|nextTx\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(3),
	datad => VCC,
	cin => \inst|inst15|Add0~5\,
	combout => \inst|inst15|Add0~6_combout\,
	cout => \inst|inst15|Add0~7\);

-- Location: LCCOMB_X25_Y21_N0
\inst|inst15|nextTx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|nextTx~0_combout\ = (\inst|inst15|Add0~6_combout\ & !\inst|inst15|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst15|Add0~6_combout\,
	datad => \inst|inst15|Equal0~10_combout\,
	combout => \inst|inst15|nextTx~0_combout\);

-- Location: FF_X25_Y21_N1
\inst|inst15|nextTx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|nextTx~0_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(3));

-- Location: LCCOMB_X24_Y21_N8
\inst|inst15|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~8_combout\ = (\inst|inst15|nextTx\(4) & (\inst|inst15|Add0~7\ $ (GND))) # (!\inst|inst15|nextTx\(4) & (!\inst|inst15|Add0~7\ & VCC))
-- \inst|inst15|Add0~9\ = CARRY((\inst|inst15|nextTx\(4) & !\inst|inst15|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(4),
	datad => VCC,
	cin => \inst|inst15|Add0~7\,
	combout => \inst|inst15|Add0~8_combout\,
	cout => \inst|inst15|Add0~9\);

-- Location: FF_X24_Y21_N9
\inst|inst15|nextTx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~8_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(4));

-- Location: LCCOMB_X24_Y21_N10
\inst|inst15|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~10_combout\ = (\inst|inst15|nextTx\(5) & (!\inst|inst15|Add0~9\)) # (!\inst|inst15|nextTx\(5) & ((\inst|inst15|Add0~9\) # (GND)))
-- \inst|inst15|Add0~11\ = CARRY((!\inst|inst15|Add0~9\) # (!\inst|inst15|nextTx\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(5),
	datad => VCC,
	cin => \inst|inst15|Add0~9\,
	combout => \inst|inst15|Add0~10_combout\,
	cout => \inst|inst15|Add0~11\);

-- Location: FF_X24_Y21_N11
\inst|inst15|nextTx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~10_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(5));

-- Location: LCCOMB_X24_Y21_N12
\inst|inst15|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~12_combout\ = (\inst|inst15|nextTx\(6) & (\inst|inst15|Add0~11\ $ (GND))) # (!\inst|inst15|nextTx\(6) & (!\inst|inst15|Add0~11\ & VCC))
-- \inst|inst15|Add0~13\ = CARRY((\inst|inst15|nextTx\(6) & !\inst|inst15|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(6),
	datad => VCC,
	cin => \inst|inst15|Add0~11\,
	combout => \inst|inst15|Add0~12_combout\,
	cout => \inst|inst15|Add0~13\);

-- Location: FF_X24_Y21_N13
\inst|inst15|nextTx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~12_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(6));

-- Location: LCCOMB_X24_Y21_N14
\inst|inst15|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~14_combout\ = (\inst|inst15|nextTx\(7) & (!\inst|inst15|Add0~13\)) # (!\inst|inst15|nextTx\(7) & ((\inst|inst15|Add0~13\) # (GND)))
-- \inst|inst15|Add0~15\ = CARRY((!\inst|inst15|Add0~13\) # (!\inst|inst15|nextTx\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(7),
	datad => VCC,
	cin => \inst|inst15|Add0~13\,
	combout => \inst|inst15|Add0~14_combout\,
	cout => \inst|inst15|Add0~15\);

-- Location: FF_X24_Y21_N15
\inst|inst15|nextTx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~14_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(7));

-- Location: LCCOMB_X24_Y21_N16
\inst|inst15|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~16_combout\ = (\inst|inst15|nextTx\(8) & (\inst|inst15|Add0~15\ $ (GND))) # (!\inst|inst15|nextTx\(8) & (!\inst|inst15|Add0~15\ & VCC))
-- \inst|inst15|Add0~17\ = CARRY((\inst|inst15|nextTx\(8) & !\inst|inst15|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(8),
	datad => VCC,
	cin => \inst|inst15|Add0~15\,
	combout => \inst|inst15|Add0~16_combout\,
	cout => \inst|inst15|Add0~17\);

-- Location: FF_X24_Y21_N17
\inst|inst15|nextTx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~16_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(8));

-- Location: LCCOMB_X24_Y21_N18
\inst|inst15|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~18_combout\ = (\inst|inst15|nextTx\(9) & (!\inst|inst15|Add0~17\)) # (!\inst|inst15|nextTx\(9) & ((\inst|inst15|Add0~17\) # (GND)))
-- \inst|inst15|Add0~19\ = CARRY((!\inst|inst15|Add0~17\) # (!\inst|inst15|nextTx\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(9),
	datad => VCC,
	cin => \inst|inst15|Add0~17\,
	combout => \inst|inst15|Add0~18_combout\,
	cout => \inst|inst15|Add0~19\);

-- Location: FF_X24_Y21_N19
\inst|inst15|nextTx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~18_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(9));

-- Location: LCCOMB_X24_Y21_N20
\inst|inst15|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~20_combout\ = (\inst|inst15|nextTx\(10) & (\inst|inst15|Add0~19\ $ (GND))) # (!\inst|inst15|nextTx\(10) & (!\inst|inst15|Add0~19\ & VCC))
-- \inst|inst15|Add0~21\ = CARRY((\inst|inst15|nextTx\(10) & !\inst|inst15|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(10),
	datad => VCC,
	cin => \inst|inst15|Add0~19\,
	combout => \inst|inst15|Add0~20_combout\,
	cout => \inst|inst15|Add0~21\);

-- Location: FF_X24_Y21_N21
\inst|inst15|nextTx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~20_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(10));

-- Location: LCCOMB_X24_Y21_N22
\inst|inst15|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~22_combout\ = (\inst|inst15|nextTx\(11) & (!\inst|inst15|Add0~21\)) # (!\inst|inst15|nextTx\(11) & ((\inst|inst15|Add0~21\) # (GND)))
-- \inst|inst15|Add0~23\ = CARRY((!\inst|inst15|Add0~21\) # (!\inst|inst15|nextTx\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(11),
	datad => VCC,
	cin => \inst|inst15|Add0~21\,
	combout => \inst|inst15|Add0~22_combout\,
	cout => \inst|inst15|Add0~23\);

-- Location: FF_X24_Y21_N23
\inst|inst15|nextTx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~22_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(11));

-- Location: LCCOMB_X24_Y21_N24
\inst|inst15|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~24_combout\ = (\inst|inst15|nextTx\(12) & (\inst|inst15|Add0~23\ $ (GND))) # (!\inst|inst15|nextTx\(12) & (!\inst|inst15|Add0~23\ & VCC))
-- \inst|inst15|Add0~25\ = CARRY((\inst|inst15|nextTx\(12) & !\inst|inst15|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(12),
	datad => VCC,
	cin => \inst|inst15|Add0~23\,
	combout => \inst|inst15|Add0~24_combout\,
	cout => \inst|inst15|Add0~25\);

-- Location: FF_X24_Y21_N25
\inst|inst15|nextTx[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~24_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(12));

-- Location: LCCOMB_X24_Y21_N26
\inst|inst15|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~26_combout\ = (\inst|inst15|nextTx\(13) & (!\inst|inst15|Add0~25\)) # (!\inst|inst15|nextTx\(13) & ((\inst|inst15|Add0~25\) # (GND)))
-- \inst|inst15|Add0~27\ = CARRY((!\inst|inst15|Add0~25\) # (!\inst|inst15|nextTx\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(13),
	datad => VCC,
	cin => \inst|inst15|Add0~25\,
	combout => \inst|inst15|Add0~26_combout\,
	cout => \inst|inst15|Add0~27\);

-- Location: FF_X24_Y21_N27
\inst|inst15|nextTx[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~26_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(13));

-- Location: LCCOMB_X24_Y21_N28
\inst|inst15|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~28_combout\ = (\inst|inst15|nextTx\(14) & (\inst|inst15|Add0~27\ $ (GND))) # (!\inst|inst15|nextTx\(14) & (!\inst|inst15|Add0~27\ & VCC))
-- \inst|inst15|Add0~29\ = CARRY((\inst|inst15|nextTx\(14) & !\inst|inst15|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(14),
	datad => VCC,
	cin => \inst|inst15|Add0~27\,
	combout => \inst|inst15|Add0~28_combout\,
	cout => \inst|inst15|Add0~29\);

-- Location: FF_X24_Y21_N29
\inst|inst15|nextTx[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~28_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(14));

-- Location: LCCOMB_X24_Y21_N30
\inst|inst15|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~30_combout\ = (\inst|inst15|nextTx\(15) & (!\inst|inst15|Add0~29\)) # (!\inst|inst15|nextTx\(15) & ((\inst|inst15|Add0~29\) # (GND)))
-- \inst|inst15|Add0~31\ = CARRY((!\inst|inst15|Add0~29\) # (!\inst|inst15|nextTx\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(15),
	datad => VCC,
	cin => \inst|inst15|Add0~29\,
	combout => \inst|inst15|Add0~30_combout\,
	cout => \inst|inst15|Add0~31\);

-- Location: FF_X24_Y21_N31
\inst|inst15|nextTx[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~30_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(15));

-- Location: LCCOMB_X24_Y20_N0
\inst|inst15|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~32_combout\ = (\inst|inst15|nextTx\(16) & (\inst|inst15|Add0~31\ $ (GND))) # (!\inst|inst15|nextTx\(16) & (!\inst|inst15|Add0~31\ & VCC))
-- \inst|inst15|Add0~33\ = CARRY((\inst|inst15|nextTx\(16) & !\inst|inst15|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(16),
	datad => VCC,
	cin => \inst|inst15|Add0~31\,
	combout => \inst|inst15|Add0~32_combout\,
	cout => \inst|inst15|Add0~33\);

-- Location: FF_X24_Y20_N1
\inst|inst15|nextTx[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~32_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(16));

-- Location: LCCOMB_X24_Y20_N2
\inst|inst15|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~34_combout\ = (\inst|inst15|nextTx\(17) & (!\inst|inst15|Add0~33\)) # (!\inst|inst15|nextTx\(17) & ((\inst|inst15|Add0~33\) # (GND)))
-- \inst|inst15|Add0~35\ = CARRY((!\inst|inst15|Add0~33\) # (!\inst|inst15|nextTx\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(17),
	datad => VCC,
	cin => \inst|inst15|Add0~33\,
	combout => \inst|inst15|Add0~34_combout\,
	cout => \inst|inst15|Add0~35\);

-- Location: FF_X24_Y20_N3
\inst|inst15|nextTx[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~34_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(17));

-- Location: LCCOMB_X24_Y20_N4
\inst|inst15|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~36_combout\ = (\inst|inst15|nextTx\(18) & (\inst|inst15|Add0~35\ $ (GND))) # (!\inst|inst15|nextTx\(18) & (!\inst|inst15|Add0~35\ & VCC))
-- \inst|inst15|Add0~37\ = CARRY((\inst|inst15|nextTx\(18) & !\inst|inst15|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(18),
	datad => VCC,
	cin => \inst|inst15|Add0~35\,
	combout => \inst|inst15|Add0~36_combout\,
	cout => \inst|inst15|Add0~37\);

-- Location: FF_X24_Y20_N5
\inst|inst15|nextTx[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~36_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(18));

-- Location: LCCOMB_X24_Y20_N6
\inst|inst15|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~38_combout\ = (\inst|inst15|nextTx\(19) & (!\inst|inst15|Add0~37\)) # (!\inst|inst15|nextTx\(19) & ((\inst|inst15|Add0~37\) # (GND)))
-- \inst|inst15|Add0~39\ = CARRY((!\inst|inst15|Add0~37\) # (!\inst|inst15|nextTx\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(19),
	datad => VCC,
	cin => \inst|inst15|Add0~37\,
	combout => \inst|inst15|Add0~38_combout\,
	cout => \inst|inst15|Add0~39\);

-- Location: FF_X24_Y20_N7
\inst|inst15|nextTx[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~38_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(19));

-- Location: LCCOMB_X24_Y20_N8
\inst|inst15|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~40_combout\ = (\inst|inst15|nextTx\(20) & (\inst|inst15|Add0~39\ $ (GND))) # (!\inst|inst15|nextTx\(20) & (!\inst|inst15|Add0~39\ & VCC))
-- \inst|inst15|Add0~41\ = CARRY((\inst|inst15|nextTx\(20) & !\inst|inst15|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(20),
	datad => VCC,
	cin => \inst|inst15|Add0~39\,
	combout => \inst|inst15|Add0~40_combout\,
	cout => \inst|inst15|Add0~41\);

-- Location: FF_X24_Y20_N9
\inst|inst15|nextTx[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~40_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(20));

-- Location: LCCOMB_X24_Y20_N10
\inst|inst15|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~42_combout\ = (\inst|inst15|nextTx\(21) & (!\inst|inst15|Add0~41\)) # (!\inst|inst15|nextTx\(21) & ((\inst|inst15|Add0~41\) # (GND)))
-- \inst|inst15|Add0~43\ = CARRY((!\inst|inst15|Add0~41\) # (!\inst|inst15|nextTx\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(21),
	datad => VCC,
	cin => \inst|inst15|Add0~41\,
	combout => \inst|inst15|Add0~42_combout\,
	cout => \inst|inst15|Add0~43\);

-- Location: FF_X24_Y20_N11
\inst|inst15|nextTx[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~42_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(21));

-- Location: LCCOMB_X24_Y20_N12
\inst|inst15|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~44_combout\ = (\inst|inst15|nextTx\(22) & (\inst|inst15|Add0~43\ $ (GND))) # (!\inst|inst15|nextTx\(22) & (!\inst|inst15|Add0~43\ & VCC))
-- \inst|inst15|Add0~45\ = CARRY((\inst|inst15|nextTx\(22) & !\inst|inst15|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(22),
	datad => VCC,
	cin => \inst|inst15|Add0~43\,
	combout => \inst|inst15|Add0~44_combout\,
	cout => \inst|inst15|Add0~45\);

-- Location: FF_X24_Y20_N13
\inst|inst15|nextTx[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~44_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(22));

-- Location: LCCOMB_X24_Y20_N14
\inst|inst15|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~46_combout\ = (\inst|inst15|nextTx\(23) & (!\inst|inst15|Add0~45\)) # (!\inst|inst15|nextTx\(23) & ((\inst|inst15|Add0~45\) # (GND)))
-- \inst|inst15|Add0~47\ = CARRY((!\inst|inst15|Add0~45\) # (!\inst|inst15|nextTx\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(23),
	datad => VCC,
	cin => \inst|inst15|Add0~45\,
	combout => \inst|inst15|Add0~46_combout\,
	cout => \inst|inst15|Add0~47\);

-- Location: FF_X24_Y20_N15
\inst|inst15|nextTx[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~46_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(23));

-- Location: LCCOMB_X24_Y20_N16
\inst|inst15|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~48_combout\ = (\inst|inst15|nextTx\(24) & (\inst|inst15|Add0~47\ $ (GND))) # (!\inst|inst15|nextTx\(24) & (!\inst|inst15|Add0~47\ & VCC))
-- \inst|inst15|Add0~49\ = CARRY((\inst|inst15|nextTx\(24) & !\inst|inst15|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(24),
	datad => VCC,
	cin => \inst|inst15|Add0~47\,
	combout => \inst|inst15|Add0~48_combout\,
	cout => \inst|inst15|Add0~49\);

-- Location: FF_X24_Y20_N17
\inst|inst15|nextTx[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~48_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(24));

-- Location: LCCOMB_X24_Y20_N18
\inst|inst15|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~50_combout\ = (\inst|inst15|nextTx\(25) & (!\inst|inst15|Add0~49\)) # (!\inst|inst15|nextTx\(25) & ((\inst|inst15|Add0~49\) # (GND)))
-- \inst|inst15|Add0~51\ = CARRY((!\inst|inst15|Add0~49\) # (!\inst|inst15|nextTx\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(25),
	datad => VCC,
	cin => \inst|inst15|Add0~49\,
	combout => \inst|inst15|Add0~50_combout\,
	cout => \inst|inst15|Add0~51\);

-- Location: FF_X24_Y20_N19
\inst|inst15|nextTx[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~50_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(25));

-- Location: LCCOMB_X24_Y20_N20
\inst|inst15|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~52_combout\ = (\inst|inst15|nextTx\(26) & (\inst|inst15|Add0~51\ $ (GND))) # (!\inst|inst15|nextTx\(26) & (!\inst|inst15|Add0~51\ & VCC))
-- \inst|inst15|Add0~53\ = CARRY((\inst|inst15|nextTx\(26) & !\inst|inst15|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(26),
	datad => VCC,
	cin => \inst|inst15|Add0~51\,
	combout => \inst|inst15|Add0~52_combout\,
	cout => \inst|inst15|Add0~53\);

-- Location: FF_X24_Y20_N21
\inst|inst15|nextTx[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~52_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(26));

-- Location: LCCOMB_X24_Y20_N22
\inst|inst15|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~54_combout\ = (\inst|inst15|nextTx\(27) & (!\inst|inst15|Add0~53\)) # (!\inst|inst15|nextTx\(27) & ((\inst|inst15|Add0~53\) # (GND)))
-- \inst|inst15|Add0~55\ = CARRY((!\inst|inst15|Add0~53\) # (!\inst|inst15|nextTx\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(27),
	datad => VCC,
	cin => \inst|inst15|Add0~53\,
	combout => \inst|inst15|Add0~54_combout\,
	cout => \inst|inst15|Add0~55\);

-- Location: FF_X24_Y20_N23
\inst|inst15|nextTx[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~54_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(27));

-- Location: LCCOMB_X25_Y20_N22
\inst|inst15|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Equal0~8_combout\ = (!\inst|inst15|nextTx\(26) & (!\inst|inst15|nextTx\(25) & (!\inst|inst15|nextTx\(24) & !\inst|inst15|nextTx\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(26),
	datab => \inst|inst15|nextTx\(25),
	datac => \inst|inst15|nextTx\(24),
	datad => \inst|inst15|nextTx\(27),
	combout => \inst|inst15|Equal0~8_combout\);

-- Location: LCCOMB_X25_Y20_N18
\inst|inst15|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Equal0~6_combout\ = (!\inst|inst15|nextTx\(20) & (!\inst|inst15|nextTx\(21) & (!\inst|inst15|nextTx\(22) & !\inst|inst15|nextTx\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(20),
	datab => \inst|inst15|nextTx\(21),
	datac => \inst|inst15|nextTx\(22),
	datad => \inst|inst15|nextTx\(23),
	combout => \inst|inst15|Equal0~6_combout\);

-- Location: LCCOMB_X25_Y20_N28
\inst|inst15|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Equal0~5_combout\ = (!\inst|inst15|nextTx\(16) & (!\inst|inst15|nextTx\(18) & (!\inst|inst15|nextTx\(19) & !\inst|inst15|nextTx\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(16),
	datab => \inst|inst15|nextTx\(18),
	datac => \inst|inst15|nextTx\(19),
	datad => \inst|inst15|nextTx\(17),
	combout => \inst|inst15|Equal0~5_combout\);

-- Location: LCCOMB_X25_Y20_N0
\inst|inst15|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Equal0~7_combout\ = (\inst|inst15|Equal0~6_combout\ & \inst|inst15|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|Equal0~6_combout\,
	datad => \inst|inst15|Equal0~5_combout\,
	combout => \inst|inst15|Equal0~7_combout\);

-- Location: LCCOMB_X24_Y20_N24
\inst|inst15|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~56_combout\ = (\inst|inst15|nextTx\(28) & (\inst|inst15|Add0~55\ $ (GND))) # (!\inst|inst15|nextTx\(28) & (!\inst|inst15|Add0~55\ & VCC))
-- \inst|inst15|Add0~57\ = CARRY((\inst|inst15|nextTx\(28) & !\inst|inst15|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(28),
	datad => VCC,
	cin => \inst|inst15|Add0~55\,
	combout => \inst|inst15|Add0~56_combout\,
	cout => \inst|inst15|Add0~57\);

-- Location: FF_X24_Y20_N25
\inst|inst15|nextTx[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~56_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(28));

-- Location: LCCOMB_X24_Y20_N26
\inst|inst15|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~58_combout\ = (\inst|inst15|nextTx\(29) & (!\inst|inst15|Add0~57\)) # (!\inst|inst15|nextTx\(29) & ((\inst|inst15|Add0~57\) # (GND)))
-- \inst|inst15|Add0~59\ = CARRY((!\inst|inst15|Add0~57\) # (!\inst|inst15|nextTx\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(29),
	datad => VCC,
	cin => \inst|inst15|Add0~57\,
	combout => \inst|inst15|Add0~58_combout\,
	cout => \inst|inst15|Add0~59\);

-- Location: FF_X24_Y20_N27
\inst|inst15|nextTx[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~58_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(29));

-- Location: LCCOMB_X24_Y20_N28
\inst|inst15|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~60_combout\ = (\inst|inst15|nextTx\(30) & (\inst|inst15|Add0~59\ $ (GND))) # (!\inst|inst15|nextTx\(30) & (!\inst|inst15|Add0~59\ & VCC))
-- \inst|inst15|Add0~61\ = CARRY((\inst|inst15|nextTx\(30) & !\inst|inst15|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst15|nextTx\(30),
	datad => VCC,
	cin => \inst|inst15|Add0~59\,
	combout => \inst|inst15|Add0~60_combout\,
	cout => \inst|inst15|Add0~61\);

-- Location: FF_X24_Y20_N29
\inst|inst15|nextTx[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~60_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(30));

-- Location: LCCOMB_X24_Y20_N30
\inst|inst15|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Add0~62_combout\ = \inst|inst15|nextTx\(31) $ (\inst|inst15|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(31),
	cin => \inst|inst15|Add0~61\,
	combout => \inst|inst15|Add0~62_combout\);

-- Location: FF_X24_Y20_N31
\inst|inst15|nextTx[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Add0~62_combout\,
	ena => \inst|inst15|state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|nextTx\(31));

-- Location: LCCOMB_X23_Y20_N0
\inst|inst15|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Equal0~9_combout\ = (!\inst|inst15|nextTx\(29) & (!\inst|inst15|nextTx\(30) & (!\inst|inst15|nextTx\(31) & !\inst|inst15|nextTx\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(29),
	datab => \inst|inst15|nextTx\(30),
	datac => \inst|inst15|nextTx\(31),
	datad => \inst|inst15|nextTx\(28),
	combout => \inst|inst15|Equal0~9_combout\);

-- Location: LCCOMB_X25_Y21_N12
\inst|inst15|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Equal0~0_combout\ = (\inst|inst15|nextTx\(1) & (\inst|inst15|nextTx\(3) & (\inst|inst15|nextTx\(0) & !\inst|inst15|nextTx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(1),
	datab => \inst|inst15|nextTx\(3),
	datac => \inst|inst15|nextTx\(0),
	datad => \inst|inst15|nextTx\(2),
	combout => \inst|inst15|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y21_N12
\inst|inst15|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Equal0~2_combout\ = (!\inst|inst15|nextTx\(9) & (!\inst|inst15|nextTx\(11) & (!\inst|inst15|nextTx\(10) & !\inst|inst15|nextTx\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(9),
	datab => \inst|inst15|nextTx\(11),
	datac => \inst|inst15|nextTx\(10),
	datad => \inst|inst15|nextTx\(8),
	combout => \inst|inst15|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y22_N8
\inst|inst15|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Equal0~1_combout\ = (!\inst|inst15|nextTx\(7) & (!\inst|inst15|nextTx\(4) & (!\inst|inst15|nextTx\(5) & !\inst|inst15|nextTx\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(7),
	datab => \inst|inst15|nextTx\(4),
	datac => \inst|inst15|nextTx\(5),
	datad => \inst|inst15|nextTx\(6),
	combout => \inst|inst15|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y22_N30
\inst|inst15|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Equal0~3_combout\ = (!\inst|inst15|nextTx\(13) & (!\inst|inst15|nextTx\(15) & (!\inst|inst15|nextTx\(12) & !\inst|inst15|nextTx\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|nextTx\(13),
	datab => \inst|inst15|nextTx\(15),
	datac => \inst|inst15|nextTx\(12),
	datad => \inst|inst15|nextTx\(14),
	combout => \inst|inst15|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y21_N10
\inst|inst15|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Equal0~4_combout\ = (\inst|inst15|Equal0~0_combout\ & (\inst|inst15|Equal0~2_combout\ & (\inst|inst15|Equal0~1_combout\ & \inst|inst15|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|Equal0~0_combout\,
	datab => \inst|inst15|Equal0~2_combout\,
	datac => \inst|inst15|Equal0~1_combout\,
	datad => \inst|inst15|Equal0~3_combout\,
	combout => \inst|inst15|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y21_N28
\inst|inst15|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Equal0~10_combout\ = (\inst|inst15|Equal0~8_combout\ & (\inst|inst15|Equal0~7_combout\ & (\inst|inst15|Equal0~9_combout\ & \inst|inst15|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|Equal0~8_combout\,
	datab => \inst|inst15|Equal0~7_combout\,
	datac => \inst|inst15|Equal0~9_combout\,
	datad => \inst|inst15|Equal0~4_combout\,
	combout => \inst|inst15|Equal0~10_combout\);

-- Location: LCCOMB_X25_Y21_N14
\inst|inst15|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Selector5~1_combout\ = (\inst|inst15|state.NXTtx~q\ & (((\inst|inst15|Equal0~10_combout\)))) # (!\inst|inst15|state.NXTtx~q\ & (\inst|inst15|Selector5~0_combout\ & ((\inst|inst15|state.W4BFFRtx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|Selector5~0_combout\,
	datab => \inst|inst15|Equal0~10_combout\,
	datac => \inst|inst15|state.W4BFFRtx~q\,
	datad => \inst|inst15|state.NXTtx~q\,
	combout => \inst|inst15|Selector5~1_combout\);

-- Location: FF_X25_Y21_N15
\inst|inst15|state.W4BFFRtx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|state.W4BFFRtx~q\);

-- Location: LCCOMB_X25_Y21_N8
\inst|inst15|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Selector4~2_combout\ = (\inst11|fPulse~q\ & (\inst|inst15|state.WAITINGtx~q\ & ((!\inst|inst15|state.W4BFFRtx~q\) # (!\inst|inst3|empty~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|fPulse~q\,
	datab => \inst|inst3|empty~combout\,
	datac => \inst|inst15|state.WAITINGtx~q\,
	datad => \inst|inst15|state.W4BFFRtx~q\,
	combout => \inst|inst15|Selector4~2_combout\);

-- Location: FF_X25_Y21_N9
\inst|inst15|state.NXTtx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|state.NXTtx~q\);

-- Location: LCCOMB_X25_Y21_N30
\inst|inst15|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Selector2~0_combout\ = (!\inst|inst15|state.NXTtx~q\ & (((\inst|inst15|state.STRTtx~q\) # (!\inst5|strtTx\(0))) # (!\inst|inst15|state.RDY2SND~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|state.RDY2SND~q\,
	datab => \inst5|strtTx\(0),
	datac => \inst|inst15|state.NXTtx~q\,
	datad => \inst|inst15|state.STRTtx~q\,
	combout => \inst|inst15|Selector2~0_combout\);

-- Location: LCCOMB_X25_Y21_N4
\inst|inst15|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Selector2~1_combout\ = (!\inst|inst15|Selector2~0_combout\ & ((!\inst|inst15|Equal0~10_combout\) # (!\inst|inst15|state.NXTtx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|state.NXTtx~q\,
	datac => \inst|inst15|Selector2~0_combout\,
	datad => \inst|inst15|Equal0~10_combout\,
	combout => \inst|inst15|Selector2~1_combout\);

-- Location: FF_X25_Y21_N5
\inst|inst15|state.STRTtx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|state.STRTtx~q\);

-- Location: LCCOMB_X25_Y21_N24
\inst|inst15|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Selector4~0_combout\ = (!\inst|inst15|state.STRTtx~q\ & (!\inst|inst15|state.NXTtx~q\ & ((!\inst|inst15|state.RDY2SND~q\) # (!\inst5|strtTx\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|state.STRTtx~q\,
	datab => \inst|inst15|state.NXTtx~q\,
	datac => \inst5|strtTx\(0),
	datad => \inst|inst15|state.RDY2SND~q\,
	combout => \inst|inst15|Selector4~0_combout\);

-- Location: LCCOMB_X25_Y21_N20
\inst|inst15|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|Selector4~1_combout\ = (\inst|inst15|Selector4~0_combout\ & ((!\inst11|fPulse~q\) # (!\inst|inst15|state.WAITINGtx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|Selector4~0_combout\,
	datac => \inst|inst15|state.WAITINGtx~q\,
	datad => \inst11|fPulse~q\,
	combout => \inst|inst15|Selector4~1_combout\);

-- Location: LCCOMB_X25_Y21_N16
\inst|inst15|state.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst15|state.IDLE~0_combout\ = ((!\inst|inst15|state.W4BFFRtx~q\ & ((\inst|inst15|state.IDLE~q\) # (!\inst|inst15|Selector4~1_combout\)))) # (!\inst|inst3|empty~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15|Selector4~1_combout\,
	datab => \inst|inst15|state.W4BFFRtx~q\,
	datac => \inst|inst15|state.IDLE~q\,
	datad => \inst|inst3|empty~combout\,
	combout => \inst|inst15|state.IDLE~0_combout\);

-- Location: FF_X25_Y21_N17
\inst|inst15|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst15|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15|state.IDLE~q\);

-- Location: LCCOMB_X26_Y24_N8
\inst5|idx[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|idx[0]~0_combout\ = (!\inst5|state.SEARCH~q\ & ((\inst5|Mux0~0_combout\) # ((\inst|inst15|state.W4BFFRtx~q\) # (!\inst|inst15|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~0_combout\,
	datab => \inst|inst15|state.IDLE~q\,
	datac => \inst|inst15|state.W4BFFRtx~q\,
	datad => \inst5|state.SEARCH~q\,
	combout => \inst5|idx[0]~0_combout\);

-- Location: FF_X26_Y24_N25
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
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(0));

-- Location: LCCOMB_X25_Y24_N2
\inst5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|idx\(1) & (!\inst5|Add0~1\)) # (!\inst5|idx\(1) & ((\inst5|Add0~1\) # (GND)))
-- \inst5|Add0~3\ = CARRY((!\inst5|Add0~1\) # (!\inst5|idx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(1),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: LCCOMB_X26_Y24_N10
\inst5|idx[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|idx[1]~3_combout\ = (\inst5|idx[2]~1_combout\ & ((\inst5|Add0~2_combout\) # ((\inst5|state.SEARCH~q\ & \inst5|idx\(1))))) # (!\inst5|idx[2]~1_combout\ & (\inst5|state.SEARCH~q\ & (\inst5|idx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx[2]~1_combout\,
	datab => \inst5|state.SEARCH~q\,
	datac => \inst5|idx\(1),
	datad => \inst5|Add0~2_combout\,
	combout => \inst5|idx[1]~3_combout\);

-- Location: FF_X26_Y24_N11
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

-- Location: LCCOMB_X26_Y24_N18
\inst5|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~10_combout\ = (!\inst5|idx\(1) & (\inst5|idx\(2) & \inst5|idx\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(1),
	datac => \inst5|idx\(2),
	datad => \inst5|idx\(0),
	combout => \inst5|Equal0~10_combout\);

-- Location: LCCOMB_X25_Y24_N4
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

-- Location: LCCOMB_X25_Y24_N6
\inst5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|idx\(3) & (!\inst5|Add0~5\)) # (!\inst5|idx\(3) & ((\inst5|Add0~5\) # (GND)))
-- \inst5|Add0~7\ = CARRY((!\inst5|Add0~5\) # (!\inst5|idx\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(3),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: FF_X26_Y24_N1
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
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(3));

-- Location: LCCOMB_X25_Y24_N8
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

-- Location: FF_X25_Y24_N9
\inst5|idx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~8_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(4));

-- Location: LCCOMB_X25_Y24_N10
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

-- Location: FF_X25_Y24_N11
\inst5|idx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~10_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(5));

-- Location: LCCOMB_X25_Y24_N12
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

-- Location: FF_X25_Y24_N13
\inst5|idx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~12_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(6));

-- Location: LCCOMB_X25_Y24_N14
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

-- Location: FF_X25_Y24_N15
\inst5|idx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~14_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(7));

-- Location: LCCOMB_X25_Y24_N16
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

-- Location: FF_X25_Y24_N17
\inst5|idx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~16_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(8));

-- Location: LCCOMB_X25_Y24_N18
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

-- Location: FF_X25_Y24_N19
\inst5|idx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~18_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(9));

-- Location: LCCOMB_X25_Y24_N20
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

-- Location: FF_X25_Y24_N21
\inst5|idx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~20_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(10));

-- Location: LCCOMB_X25_Y24_N22
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

-- Location: FF_X25_Y24_N23
\inst5|idx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~22_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(11));

-- Location: LCCOMB_X25_Y24_N24
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

-- Location: FF_X25_Y24_N25
\inst5|idx[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~24_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(12));

-- Location: LCCOMB_X25_Y24_N26
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

-- Location: FF_X25_Y24_N27
\inst5|idx[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~26_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(13));

-- Location: LCCOMB_X25_Y24_N28
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

-- Location: FF_X25_Y24_N29
\inst5|idx[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~28_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(14));

-- Location: LCCOMB_X25_Y24_N30
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

-- Location: FF_X25_Y24_N31
\inst5|idx[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~30_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(15));

-- Location: LCCOMB_X25_Y23_N0
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

-- Location: FF_X25_Y23_N1
\inst5|idx[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~32_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(16));

-- Location: LCCOMB_X25_Y23_N2
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

-- Location: FF_X25_Y23_N3
\inst5|idx[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~34_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(17));

-- Location: LCCOMB_X25_Y23_N4
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

-- Location: FF_X25_Y23_N5
\inst5|idx[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~36_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(18));

-- Location: LCCOMB_X25_Y23_N6
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

-- Location: FF_X25_Y23_N7
\inst5|idx[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~38_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(19));

-- Location: LCCOMB_X25_Y23_N8
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

-- Location: FF_X25_Y23_N9
\inst5|idx[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~40_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(20));

-- Location: LCCOMB_X25_Y23_N10
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

-- Location: FF_X25_Y23_N11
\inst5|idx[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~42_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(21));

-- Location: LCCOMB_X25_Y23_N12
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

-- Location: FF_X25_Y23_N13
\inst5|idx[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~44_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(22));

-- Location: LCCOMB_X25_Y23_N14
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

-- Location: FF_X25_Y23_N15
\inst5|idx[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~46_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(23));

-- Location: LCCOMB_X25_Y23_N16
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

-- Location: FF_X25_Y23_N17
\inst5|idx[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~48_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(24));

-- Location: LCCOMB_X25_Y23_N18
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

-- Location: FF_X25_Y23_N19
\inst5|idx[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~50_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(25));

-- Location: LCCOMB_X25_Y23_N20
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

-- Location: FF_X25_Y23_N21
\inst5|idx[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~52_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(26));

-- Location: LCCOMB_X26_Y23_N22
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

-- Location: LCCOMB_X25_Y23_N22
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

-- Location: FF_X25_Y23_N23
\inst5|idx[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~54_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(27));

-- Location: LCCOMB_X25_Y23_N24
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

-- Location: FF_X25_Y23_N25
\inst5|idx[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~56_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(28));

-- Location: LCCOMB_X25_Y23_N26
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

-- Location: FF_X25_Y23_N27
\inst5|idx[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~58_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(29));

-- Location: LCCOMB_X25_Y23_N28
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

-- Location: FF_X25_Y23_N29
\inst5|idx[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~60_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(30));

-- Location: LCCOMB_X25_Y23_N30
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

-- Location: FF_X25_Y23_N31
\inst5|idx[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|Add0~62_combout\,
	ena => \inst5|idx[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(31));

-- Location: LCCOMB_X26_Y23_N8
\inst5|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~7_combout\ = (!\inst5|idx\(27) & !\inst5|idx\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(27),
	datad => \inst5|idx\(28),
	combout => \inst5|Equal0~7_combout\);

-- Location: LCCOMB_X26_Y23_N26
\inst5|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~8_combout\ = (!\inst5|idx\(29) & (!\inst5|idx\(31) & (\inst5|Equal0~7_combout\ & !\inst5|idx\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(29),
	datab => \inst5|idx\(31),
	datac => \inst5|Equal0~7_combout\,
	datad => \inst5|idx\(30),
	combout => \inst5|Equal0~8_combout\);

-- Location: LCCOMB_X26_Y23_N0
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

-- Location: LCCOMB_X26_Y24_N30
\inst5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (!\inst5|idx\(6) & (!\inst5|idx\(3) & (!\inst5|idx\(4) & !\inst5|idx\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(6),
	datab => \inst5|idx\(3),
	datac => \inst5|idx\(4),
	datad => \inst5|idx\(5),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y24_N20
\inst5|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (!\inst5|idx\(13) & (!\inst5|idx\(12) & (!\inst5|idx\(11) & !\inst5|idx\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(13),
	datab => \inst5|idx\(12),
	datac => \inst5|idx\(11),
	datad => \inst5|idx\(14),
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y24_N26
\inst5|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (!\inst5|idx\(7) & (!\inst5|idx\(10) & (!\inst5|idx\(8) & !\inst5|idx\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(7),
	datab => \inst5|idx\(10),
	datac => \inst5|idx\(8),
	datad => \inst5|idx\(9),
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y24_N28
\inst5|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (!\inst5|idx\(15) & (!\inst5|idx\(17) & (!\inst5|idx\(18) & !\inst5|idx\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(15),
	datab => \inst5|idx\(17),
	datac => \inst5|idx\(18),
	datad => \inst5|idx\(16),
	combout => \inst5|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y24_N16
\inst5|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (\inst5|Equal0~0_combout\ & (\inst5|Equal0~2_combout\ & (\inst5|Equal0~1_combout\ & \inst5|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~0_combout\,
	datab => \inst5|Equal0~2_combout\,
	datac => \inst5|Equal0~1_combout\,
	datad => \inst5|Equal0~3_combout\,
	combout => \inst5|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y24_N14
\inst5|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~9_combout\ = (\inst5|Equal0~6_combout\ & (\inst5|Equal0~8_combout\ & (\inst5|Equal0~5_combout\ & \inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~6_combout\,
	datab => \inst5|Equal0~8_combout\,
	datac => \inst5|Equal0~5_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|Equal0~9_combout\);

-- Location: LCCOMB_X26_Y24_N12
\inst5|idx[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|idx[2]~1_combout\ = (!\inst5|state.SEARCH~q\ & (\inst5|Mux0~1_combout\ & ((!\inst5|Equal0~9_combout\) # (!\inst5|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~10_combout\,
	datab => \inst5|state.SEARCH~q\,
	datac => \inst5|Equal0~9_combout\,
	datad => \inst5|Mux0~1_combout\,
	combout => \inst5|idx[2]~1_combout\);

-- Location: LCCOMB_X26_Y24_N4
\inst5|idx[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|idx[2]~2_combout\ = (\inst5|idx[2]~1_combout\ & ((\inst5|Add0~4_combout\) # ((\inst5|state.SEARCH~q\ & \inst5|idx\(2))))) # (!\inst5|idx[2]~1_combout\ & (\inst5|state.SEARCH~q\ & (\inst5|idx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx[2]~1_combout\,
	datab => \inst5|state.SEARCH~q\,
	datac => \inst5|idx\(2),
	datad => \inst5|Add0~4_combout\,
	combout => \inst5|idx[2]~2_combout\);

-- Location: FF_X26_Y24_N5
\inst5|idx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~q\,
	d => \inst5|idx[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|idx\(2));

-- Location: LCCOMB_X26_Y24_N6
\inst5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (\inst5|idx\(0)) # ((\inst5|idx\(2)) # (\inst5|idx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|idx\(0),
	datac => \inst5|idx\(2),
	datad => \inst5|idx\(1),
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y24_N24
\inst5|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Selector20~0_combout\ = (!\inst5|Mux0~0_combout\ & (\inst|inst15|state.STRTtx~q\ & \inst5|state.SEARCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~0_combout\,
	datab => \inst|inst15|state.STRTtx~q\,
	datad => \inst5|state.SEARCH~q\,
	combout => \inst5|Selector20~0_combout\);

-- Location: LCCOMB_X23_Y25_N8
\inst5|TRANSMIT~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|TRANSMIT~feeder_combout\ = \inst5|Selector20~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Selector20~0_combout\,
	combout => \inst5|TRANSMIT~feeder_combout\);

-- Location: FF_X23_Y25_N9
\inst5|TRANSMIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst5|TRANSMIT~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|TRANSMIT~q\);

-- Location: LCCOMB_X19_Y25_N28
\inst11|StartTx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|StartTx~0_combout\ = (\inst5|TRANSMIT~q\) # ((\inst11|StartTx~q\ & !\inst11|Equal10~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|TRANSMIT~q\,
	datac => \inst11|StartTx~q\,
	datad => \inst11|Equal10~10_combout\,
	combout => \inst11|StartTx~0_combout\);

-- Location: FF_X19_Y25_N29
\inst11|StartTx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|StartTx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|StartTx~q\);

-- Location: LCCOMB_X19_Y25_N24
\inst11|process_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|process_6~0_combout\ = (!\inst11|wt~q\ & \inst11|StartTx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|wt~q\,
	datad => \inst11|StartTx~q\,
	combout => \inst11|process_6~0_combout\);

-- Location: FF_X16_Y25_N13
\inst11|process_1:EC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~12_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[6]~q\);

-- Location: LCCOMB_X16_Y25_N0
\inst11|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~0_combout\ = \inst11|process_1:EC[0]~q\ $ (VCC)
-- \inst11|Add1~1\ = CARRY(\inst11|process_1:EC[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_1:EC[0]~q\,
	datad => VCC,
	combout => \inst11|Add1~0_combout\,
	cout => \inst11|Add1~1\);

-- Location: LCCOMB_X17_Y25_N2
\inst11|EC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|EC~0_combout\ = (\inst11|Add1~0_combout\ & !\inst11|state_csl~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add1~0_combout\,
	datad => \inst11|state_csl~12_combout\,
	combout => \inst11|EC~0_combout\);

-- Location: FF_X17_Y25_N3
\inst11|process_1:EC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|EC~0_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[0]~q\);

-- Location: LCCOMB_X16_Y25_N2
\inst11|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~2_combout\ = (\inst11|process_1:EC[1]~q\ & (!\inst11|Add1~1\)) # (!\inst11|process_1:EC[1]~q\ & ((\inst11|Add1~1\) # (GND)))
-- \inst11|Add1~3\ = CARRY((!\inst11|Add1~1\) # (!\inst11|process_1:EC[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[1]~q\,
	datad => VCC,
	cin => \inst11|Add1~1\,
	combout => \inst11|Add1~2_combout\,
	cout => \inst11|Add1~3\);

-- Location: LCCOMB_X17_Y25_N26
\inst11|EC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|EC~2_combout\ = (\inst11|Add1~2_combout\ & !\inst11|state_csl~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add1~2_combout\,
	datad => \inst11|state_csl~12_combout\,
	combout => \inst11|EC~2_combout\);

-- Location: FF_X17_Y25_N27
\inst11|process_1:EC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|EC~2_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[1]~q\);

-- Location: LCCOMB_X16_Y25_N4
\inst11|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~4_combout\ = (\inst11|process_1:EC[2]~q\ & (\inst11|Add1~3\ $ (GND))) # (!\inst11|process_1:EC[2]~q\ & (!\inst11|Add1~3\ & VCC))
-- \inst11|Add1~5\ = CARRY((\inst11|process_1:EC[2]~q\ & !\inst11|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[2]~q\,
	datad => VCC,
	cin => \inst11|Add1~3\,
	combout => \inst11|Add1~4_combout\,
	cout => \inst11|Add1~5\);

-- Location: FF_X16_Y25_N5
\inst11|process_1:EC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~4_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[2]~q\);

-- Location: LCCOMB_X16_Y25_N6
\inst11|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~6_combout\ = (\inst11|process_1:EC[3]~q\ & (!\inst11|Add1~5\)) # (!\inst11|process_1:EC[3]~q\ & ((\inst11|Add1~5\) # (GND)))
-- \inst11|Add1~7\ = CARRY((!\inst11|Add1~5\) # (!\inst11|process_1:EC[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_1:EC[3]~q\,
	datad => VCC,
	cin => \inst11|Add1~5\,
	combout => \inst11|Add1~6_combout\,
	cout => \inst11|Add1~7\);

-- Location: FF_X16_Y25_N7
\inst11|process_1:EC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~6_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[3]~q\);

-- Location: LCCOMB_X16_Y25_N8
\inst11|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~8_combout\ = (\inst11|process_1:EC[4]~q\ & (\inst11|Add1~7\ $ (GND))) # (!\inst11|process_1:EC[4]~q\ & (!\inst11|Add1~7\ & VCC))
-- \inst11|Add1~9\ = CARRY((\inst11|process_1:EC[4]~q\ & !\inst11|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_1:EC[4]~q\,
	datad => VCC,
	cin => \inst11|Add1~7\,
	combout => \inst11|Add1~8_combout\,
	cout => \inst11|Add1~9\);

-- Location: LCCOMB_X17_Y25_N4
\inst11|EC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|EC~1_combout\ = (\inst11|Add1~8_combout\ & !\inst11|state_csl~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~8_combout\,
	datad => \inst11|state_csl~12_combout\,
	combout => \inst11|EC~1_combout\);

-- Location: FF_X17_Y25_N5
\inst11|process_1:EC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|EC~1_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[4]~q\);

-- Location: LCCOMB_X16_Y25_N10
\inst11|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~10_combout\ = (\inst11|process_1:EC[5]~q\ & (!\inst11|Add1~9\)) # (!\inst11|process_1:EC[5]~q\ & ((\inst11|Add1~9\) # (GND)))
-- \inst11|Add1~11\ = CARRY((!\inst11|Add1~9\) # (!\inst11|process_1:EC[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_1:EC[5]~q\,
	datad => VCC,
	cin => \inst11|Add1~9\,
	combout => \inst11|Add1~10_combout\,
	cout => \inst11|Add1~11\);

-- Location: FF_X16_Y25_N11
\inst11|process_1:EC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~10_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[5]~q\);

-- Location: LCCOMB_X16_Y25_N12
\inst11|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~12_combout\ = (\inst11|process_1:EC[6]~q\ & (\inst11|Add1~11\ $ (GND))) # (!\inst11|process_1:EC[6]~q\ & (!\inst11|Add1~11\ & VCC))
-- \inst11|Add1~13\ = CARRY((\inst11|process_1:EC[6]~q\ & !\inst11|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_1:EC[6]~q\,
	datad => VCC,
	cin => \inst11|Add1~11\,
	combout => \inst11|Add1~12_combout\,
	cout => \inst11|Add1~13\);

-- Location: LCCOMB_X17_Y25_N18
\inst11|state_csl~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csl~3_combout\ = (!\inst11|Add1~12_combout\ & (!\inst11|Add1~6_combout\ & (!\inst11|Add1~4_combout\ & !\inst11|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~12_combout\,
	datab => \inst11|Add1~6_combout\,
	datac => \inst11|Add1~4_combout\,
	datad => \inst11|Add1~10_combout\,
	combout => \inst11|state_csl~3_combout\);

-- Location: FF_X16_Y25_N21
\inst11|process_1:EC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~20_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[10]~q\);

-- Location: LCCOMB_X16_Y25_N14
\inst11|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~14_combout\ = (\inst11|process_1:EC[7]~q\ & (!\inst11|Add1~13\)) # (!\inst11|process_1:EC[7]~q\ & ((\inst11|Add1~13\) # (GND)))
-- \inst11|Add1~15\ = CARRY((!\inst11|Add1~13\) # (!\inst11|process_1:EC[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[7]~q\,
	datad => VCC,
	cin => \inst11|Add1~13\,
	combout => \inst11|Add1~14_combout\,
	cout => \inst11|Add1~15\);

-- Location: FF_X16_Y25_N15
\inst11|process_1:EC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~14_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[7]~q\);

-- Location: LCCOMB_X16_Y25_N16
\inst11|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~16_combout\ = (\inst11|process_1:EC[8]~q\ & (\inst11|Add1~15\ $ (GND))) # (!\inst11|process_1:EC[8]~q\ & (!\inst11|Add1~15\ & VCC))
-- \inst11|Add1~17\ = CARRY((\inst11|process_1:EC[8]~q\ & !\inst11|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[8]~q\,
	datad => VCC,
	cin => \inst11|Add1~15\,
	combout => \inst11|Add1~16_combout\,
	cout => \inst11|Add1~17\);

-- Location: FF_X16_Y25_N17
\inst11|process_1:EC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~16_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[8]~q\);

-- Location: LCCOMB_X16_Y25_N18
\inst11|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~18_combout\ = (\inst11|process_1:EC[9]~q\ & (!\inst11|Add1~17\)) # (!\inst11|process_1:EC[9]~q\ & ((\inst11|Add1~17\) # (GND)))
-- \inst11|Add1~19\ = CARRY((!\inst11|Add1~17\) # (!\inst11|process_1:EC[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[9]~q\,
	datad => VCC,
	cin => \inst11|Add1~17\,
	combout => \inst11|Add1~18_combout\,
	cout => \inst11|Add1~19\);

-- Location: FF_X16_Y25_N19
\inst11|process_1:EC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~18_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[9]~q\);

-- Location: LCCOMB_X16_Y25_N20
\inst11|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~20_combout\ = (\inst11|process_1:EC[10]~q\ & (\inst11|Add1~19\ $ (GND))) # (!\inst11|process_1:EC[10]~q\ & (!\inst11|Add1~19\ & VCC))
-- \inst11|Add1~21\ = CARRY((\inst11|process_1:EC[10]~q\ & !\inst11|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[10]~q\,
	datad => VCC,
	cin => \inst11|Add1~19\,
	combout => \inst11|Add1~20_combout\,
	cout => \inst11|Add1~21\);

-- Location: LCCOMB_X17_Y25_N8
\inst11|state_csl~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csl~4_combout\ = (!\inst11|Add1~20_combout\ & (!\inst11|Add1~18_combout\ & (!\inst11|Add1~16_combout\ & !\inst11|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~20_combout\,
	datab => \inst11|Add1~18_combout\,
	datac => \inst11|Add1~16_combout\,
	datad => \inst11|Add1~14_combout\,
	combout => \inst11|state_csl~4_combout\);

-- Location: LCCOMB_X17_Y25_N16
\inst11|state_csl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csl~2_combout\ = (\inst11|Add1~0_combout\ & (!\inst11|state_csl~q\ & (!\inst11|Add1~2_combout\ & \inst11|Add1~8_combout\))) # (!\inst11|Add1~0_combout\ & (\inst11|state_csl~q\ & (\inst11|Add1~2_combout\ & !\inst11|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~0_combout\,
	datab => \inst11|state_csl~q\,
	datac => \inst11|Add1~2_combout\,
	datad => \inst11|Add1~8_combout\,
	combout => \inst11|state_csl~2_combout\);

-- Location: LCCOMB_X17_Y25_N22
\inst11|state_csl~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csl~5_combout\ = (\inst11|state_csl~3_combout\ & (\inst11|state_csl~4_combout\ & \inst11|state_csl~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|state_csl~3_combout\,
	datac => \inst11|state_csl~4_combout\,
	datad => \inst11|state_csl~2_combout\,
	combout => \inst11|state_csl~5_combout\);

-- Location: FF_X16_Y24_N31
\inst11|process_1:EC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~62_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[31]~q\);

-- Location: LCCOMB_X16_Y25_N22
\inst11|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~22_combout\ = (\inst11|process_1:EC[11]~q\ & (!\inst11|Add1~21\)) # (!\inst11|process_1:EC[11]~q\ & ((\inst11|Add1~21\) # (GND)))
-- \inst11|Add1~23\ = CARRY((!\inst11|Add1~21\) # (!\inst11|process_1:EC[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_1:EC[11]~q\,
	datad => VCC,
	cin => \inst11|Add1~21\,
	combout => \inst11|Add1~22_combout\,
	cout => \inst11|Add1~23\);

-- Location: FF_X16_Y25_N23
\inst11|process_1:EC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~22_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[11]~q\);

-- Location: LCCOMB_X16_Y25_N24
\inst11|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~24_combout\ = (\inst11|process_1:EC[12]~q\ & (\inst11|Add1~23\ $ (GND))) # (!\inst11|process_1:EC[12]~q\ & (!\inst11|Add1~23\ & VCC))
-- \inst11|Add1~25\ = CARRY((\inst11|process_1:EC[12]~q\ & !\inst11|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[12]~q\,
	datad => VCC,
	cin => \inst11|Add1~23\,
	combout => \inst11|Add1~24_combout\,
	cout => \inst11|Add1~25\);

-- Location: FF_X16_Y25_N25
\inst11|process_1:EC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~24_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[12]~q\);

-- Location: LCCOMB_X16_Y25_N26
\inst11|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~26_combout\ = (\inst11|process_1:EC[13]~q\ & (!\inst11|Add1~25\)) # (!\inst11|process_1:EC[13]~q\ & ((\inst11|Add1~25\) # (GND)))
-- \inst11|Add1~27\ = CARRY((!\inst11|Add1~25\) # (!\inst11|process_1:EC[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_1:EC[13]~q\,
	datad => VCC,
	cin => \inst11|Add1~25\,
	combout => \inst11|Add1~26_combout\,
	cout => \inst11|Add1~27\);

-- Location: FF_X16_Y25_N27
\inst11|process_1:EC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~26_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[13]~q\);

-- Location: LCCOMB_X16_Y25_N28
\inst11|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~28_combout\ = (\inst11|process_1:EC[14]~q\ & (\inst11|Add1~27\ $ (GND))) # (!\inst11|process_1:EC[14]~q\ & (!\inst11|Add1~27\ & VCC))
-- \inst11|Add1~29\ = CARRY((\inst11|process_1:EC[14]~q\ & !\inst11|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[14]~q\,
	datad => VCC,
	cin => \inst11|Add1~27\,
	combout => \inst11|Add1~28_combout\,
	cout => \inst11|Add1~29\);

-- Location: FF_X16_Y25_N29
\inst11|process_1:EC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~28_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[14]~q\);

-- Location: LCCOMB_X16_Y25_N30
\inst11|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~30_combout\ = (\inst11|process_1:EC[15]~q\ & (!\inst11|Add1~29\)) # (!\inst11|process_1:EC[15]~q\ & ((\inst11|Add1~29\) # (GND)))
-- \inst11|Add1~31\ = CARRY((!\inst11|Add1~29\) # (!\inst11|process_1:EC[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_1:EC[15]~q\,
	datad => VCC,
	cin => \inst11|Add1~29\,
	combout => \inst11|Add1~30_combout\,
	cout => \inst11|Add1~31\);

-- Location: FF_X16_Y25_N31
\inst11|process_1:EC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~30_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[15]~q\);

-- Location: LCCOMB_X16_Y24_N0
\inst11|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~32_combout\ = (\inst11|process_1:EC[16]~q\ & (\inst11|Add1~31\ $ (GND))) # (!\inst11|process_1:EC[16]~q\ & (!\inst11|Add1~31\ & VCC))
-- \inst11|Add1~33\ = CARRY((\inst11|process_1:EC[16]~q\ & !\inst11|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[16]~q\,
	datad => VCC,
	cin => \inst11|Add1~31\,
	combout => \inst11|Add1~32_combout\,
	cout => \inst11|Add1~33\);

-- Location: FF_X16_Y24_N1
\inst11|process_1:EC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~32_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[16]~q\);

-- Location: LCCOMB_X16_Y24_N2
\inst11|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~34_combout\ = (\inst11|process_1:EC[17]~q\ & (!\inst11|Add1~33\)) # (!\inst11|process_1:EC[17]~q\ & ((\inst11|Add1~33\) # (GND)))
-- \inst11|Add1~35\ = CARRY((!\inst11|Add1~33\) # (!\inst11|process_1:EC[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[17]~q\,
	datad => VCC,
	cin => \inst11|Add1~33\,
	combout => \inst11|Add1~34_combout\,
	cout => \inst11|Add1~35\);

-- Location: FF_X16_Y24_N3
\inst11|process_1:EC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~34_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[17]~q\);

-- Location: LCCOMB_X16_Y24_N4
\inst11|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~36_combout\ = (\inst11|process_1:EC[18]~q\ & (\inst11|Add1~35\ $ (GND))) # (!\inst11|process_1:EC[18]~q\ & (!\inst11|Add1~35\ & VCC))
-- \inst11|Add1~37\ = CARRY((\inst11|process_1:EC[18]~q\ & !\inst11|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[18]~q\,
	datad => VCC,
	cin => \inst11|Add1~35\,
	combout => \inst11|Add1~36_combout\,
	cout => \inst11|Add1~37\);

-- Location: FF_X16_Y24_N5
\inst11|process_1:EC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~36_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[18]~q\);

-- Location: LCCOMB_X16_Y24_N6
\inst11|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~38_combout\ = (\inst11|process_1:EC[19]~q\ & (!\inst11|Add1~37\)) # (!\inst11|process_1:EC[19]~q\ & ((\inst11|Add1~37\) # (GND)))
-- \inst11|Add1~39\ = CARRY((!\inst11|Add1~37\) # (!\inst11|process_1:EC[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_1:EC[19]~q\,
	datad => VCC,
	cin => \inst11|Add1~37\,
	combout => \inst11|Add1~38_combout\,
	cout => \inst11|Add1~39\);

-- Location: FF_X16_Y24_N7
\inst11|process_1:EC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~38_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[19]~q\);

-- Location: LCCOMB_X16_Y24_N8
\inst11|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~40_combout\ = (\inst11|process_1:EC[20]~q\ & (\inst11|Add1~39\ $ (GND))) # (!\inst11|process_1:EC[20]~q\ & (!\inst11|Add1~39\ & VCC))
-- \inst11|Add1~41\ = CARRY((\inst11|process_1:EC[20]~q\ & !\inst11|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[20]~q\,
	datad => VCC,
	cin => \inst11|Add1~39\,
	combout => \inst11|Add1~40_combout\,
	cout => \inst11|Add1~41\);

-- Location: FF_X16_Y24_N9
\inst11|process_1:EC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~40_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[20]~q\);

-- Location: LCCOMB_X16_Y24_N10
\inst11|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~42_combout\ = (\inst11|process_1:EC[21]~q\ & (!\inst11|Add1~41\)) # (!\inst11|process_1:EC[21]~q\ & ((\inst11|Add1~41\) # (GND)))
-- \inst11|Add1~43\ = CARRY((!\inst11|Add1~41\) # (!\inst11|process_1:EC[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_1:EC[21]~q\,
	datad => VCC,
	cin => \inst11|Add1~41\,
	combout => \inst11|Add1~42_combout\,
	cout => \inst11|Add1~43\);

-- Location: FF_X16_Y24_N11
\inst11|process_1:EC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~42_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[21]~q\);

-- Location: LCCOMB_X16_Y24_N12
\inst11|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~44_combout\ = (\inst11|process_1:EC[22]~q\ & (\inst11|Add1~43\ $ (GND))) # (!\inst11|process_1:EC[22]~q\ & (!\inst11|Add1~43\ & VCC))
-- \inst11|Add1~45\ = CARRY((\inst11|process_1:EC[22]~q\ & !\inst11|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_1:EC[22]~q\,
	datad => VCC,
	cin => \inst11|Add1~43\,
	combout => \inst11|Add1~44_combout\,
	cout => \inst11|Add1~45\);

-- Location: FF_X16_Y24_N13
\inst11|process_1:EC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~44_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[22]~q\);

-- Location: LCCOMB_X16_Y24_N14
\inst11|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~46_combout\ = (\inst11|process_1:EC[23]~q\ & (!\inst11|Add1~45\)) # (!\inst11|process_1:EC[23]~q\ & ((\inst11|Add1~45\) # (GND)))
-- \inst11|Add1~47\ = CARRY((!\inst11|Add1~45\) # (!\inst11|process_1:EC[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[23]~q\,
	datad => VCC,
	cin => \inst11|Add1~45\,
	combout => \inst11|Add1~46_combout\,
	cout => \inst11|Add1~47\);

-- Location: FF_X16_Y24_N15
\inst11|process_1:EC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~46_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[23]~q\);

-- Location: LCCOMB_X16_Y24_N16
\inst11|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~48_combout\ = (\inst11|process_1:EC[24]~q\ & (\inst11|Add1~47\ $ (GND))) # (!\inst11|process_1:EC[24]~q\ & (!\inst11|Add1~47\ & VCC))
-- \inst11|Add1~49\ = CARRY((\inst11|process_1:EC[24]~q\ & !\inst11|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[24]~q\,
	datad => VCC,
	cin => \inst11|Add1~47\,
	combout => \inst11|Add1~48_combout\,
	cout => \inst11|Add1~49\);

-- Location: FF_X16_Y24_N17
\inst11|process_1:EC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~48_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[24]~q\);

-- Location: LCCOMB_X16_Y24_N18
\inst11|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~50_combout\ = (\inst11|process_1:EC[25]~q\ & (!\inst11|Add1~49\)) # (!\inst11|process_1:EC[25]~q\ & ((\inst11|Add1~49\) # (GND)))
-- \inst11|Add1~51\ = CARRY((!\inst11|Add1~49\) # (!\inst11|process_1:EC[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[25]~q\,
	datad => VCC,
	cin => \inst11|Add1~49\,
	combout => \inst11|Add1~50_combout\,
	cout => \inst11|Add1~51\);

-- Location: FF_X16_Y24_N19
\inst11|process_1:EC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~50_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[25]~q\);

-- Location: LCCOMB_X16_Y24_N20
\inst11|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~52_combout\ = (\inst11|process_1:EC[26]~q\ & (\inst11|Add1~51\ $ (GND))) # (!\inst11|process_1:EC[26]~q\ & (!\inst11|Add1~51\ & VCC))
-- \inst11|Add1~53\ = CARRY((\inst11|process_1:EC[26]~q\ & !\inst11|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[26]~q\,
	datad => VCC,
	cin => \inst11|Add1~51\,
	combout => \inst11|Add1~52_combout\,
	cout => \inst11|Add1~53\);

-- Location: FF_X16_Y24_N21
\inst11|process_1:EC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~52_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[26]~q\);

-- Location: LCCOMB_X16_Y24_N22
\inst11|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~54_combout\ = (\inst11|process_1:EC[27]~q\ & (!\inst11|Add1~53\)) # (!\inst11|process_1:EC[27]~q\ & ((\inst11|Add1~53\) # (GND)))
-- \inst11|Add1~55\ = CARRY((!\inst11|Add1~53\) # (!\inst11|process_1:EC[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_1:EC[27]~q\,
	datad => VCC,
	cin => \inst11|Add1~53\,
	combout => \inst11|Add1~54_combout\,
	cout => \inst11|Add1~55\);

-- Location: FF_X16_Y24_N23
\inst11|process_1:EC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~54_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[27]~q\);

-- Location: LCCOMB_X16_Y24_N24
\inst11|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~56_combout\ = (\inst11|process_1:EC[28]~q\ & (\inst11|Add1~55\ $ (GND))) # (!\inst11|process_1:EC[28]~q\ & (!\inst11|Add1~55\ & VCC))
-- \inst11|Add1~57\ = CARRY((\inst11|process_1:EC[28]~q\ & !\inst11|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[28]~q\,
	datad => VCC,
	cin => \inst11|Add1~55\,
	combout => \inst11|Add1~56_combout\,
	cout => \inst11|Add1~57\);

-- Location: FF_X16_Y24_N25
\inst11|process_1:EC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~56_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[28]~q\);

-- Location: LCCOMB_X16_Y24_N26
\inst11|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~58_combout\ = (\inst11|process_1:EC[29]~q\ & (!\inst11|Add1~57\)) # (!\inst11|process_1:EC[29]~q\ & ((\inst11|Add1~57\) # (GND)))
-- \inst11|Add1~59\ = CARRY((!\inst11|Add1~57\) # (!\inst11|process_1:EC[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_1:EC[29]~q\,
	datad => VCC,
	cin => \inst11|Add1~57\,
	combout => \inst11|Add1~58_combout\,
	cout => \inst11|Add1~59\);

-- Location: FF_X16_Y24_N27
\inst11|process_1:EC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~58_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[29]~q\);

-- Location: LCCOMB_X16_Y24_N28
\inst11|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~60_combout\ = (\inst11|process_1:EC[30]~q\ & (\inst11|Add1~59\ $ (GND))) # (!\inst11|process_1:EC[30]~q\ & (!\inst11|Add1~59\ & VCC))
-- \inst11|Add1~61\ = CARRY((\inst11|process_1:EC[30]~q\ & !\inst11|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_1:EC[30]~q\,
	datad => VCC,
	cin => \inst11|Add1~59\,
	combout => \inst11|Add1~60_combout\,
	cout => \inst11|Add1~61\);

-- Location: FF_X16_Y24_N29
\inst11|process_1:EC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add1~60_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|process_1:EC[30]~q\);

-- Location: LCCOMB_X16_Y24_N30
\inst11|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~62_combout\ = \inst11|process_1:EC[31]~q\ $ (\inst11|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_1:EC[31]~q\,
	cin => \inst11|Add1~61\,
	combout => \inst11|Add1~62_combout\);

-- Location: LCCOMB_X17_Y24_N4
\inst11|state_csl~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csl~11_combout\ = (!\inst11|Add1~58_combout\ & (!\inst11|Add1~56_combout\ & (!\inst11|Add1~60_combout\ & !\inst11|Add1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~58_combout\,
	datab => \inst11|Add1~56_combout\,
	datac => \inst11|Add1~60_combout\,
	datad => \inst11|Add1~54_combout\,
	combout => \inst11|state_csl~11_combout\);

-- Location: LCCOMB_X17_Y25_N10
\inst11|state_csl~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csl~7_combout\ = (!\inst11|Add1~30_combout\ & (!\inst11|Add1~32_combout\ & (!\inst11|Add1~34_combout\ & !\inst11|Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~30_combout\,
	datab => \inst11|Add1~32_combout\,
	datac => \inst11|Add1~34_combout\,
	datad => \inst11|Add1~36_combout\,
	combout => \inst11|state_csl~7_combout\);

-- Location: LCCOMB_X17_Y24_N0
\inst11|state_csl~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csl~8_combout\ = (!\inst11|Add1~40_combout\ & (!\inst11|Add1~38_combout\ & (!\inst11|Add1~42_combout\ & !\inst11|Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~40_combout\,
	datab => \inst11|Add1~38_combout\,
	datac => \inst11|Add1~42_combout\,
	datad => \inst11|Add1~44_combout\,
	combout => \inst11|state_csl~8_combout\);

-- Location: LCCOMB_X17_Y24_N26
\inst11|state_csl~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csl~9_combout\ = (!\inst11|Add1~46_combout\ & (!\inst11|Add1~50_combout\ & (!\inst11|Add1~48_combout\ & !\inst11|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~46_combout\,
	datab => \inst11|Add1~50_combout\,
	datac => \inst11|Add1~48_combout\,
	datad => \inst11|Add1~52_combout\,
	combout => \inst11|state_csl~9_combout\);

-- Location: LCCOMB_X17_Y25_N12
\inst11|state_csl~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csl~6_combout\ = (!\inst11|Add1~26_combout\ & (!\inst11|Add1~22_combout\ & (!\inst11|Add1~28_combout\ & !\inst11|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~26_combout\,
	datab => \inst11|Add1~22_combout\,
	datac => \inst11|Add1~28_combout\,
	datad => \inst11|Add1~24_combout\,
	combout => \inst11|state_csl~6_combout\);

-- Location: LCCOMB_X17_Y25_N20
\inst11|state_csl~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csl~10_combout\ = (\inst11|state_csl~7_combout\ & (\inst11|state_csl~8_combout\ & (\inst11|state_csl~9_combout\ & \inst11|state_csl~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|state_csl~7_combout\,
	datab => \inst11|state_csl~8_combout\,
	datac => \inst11|state_csl~9_combout\,
	datad => \inst11|state_csl~6_combout\,
	combout => \inst11|state_csl~10_combout\);

-- Location: LCCOMB_X17_Y25_N6
\inst11|state_csl~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csl~12_combout\ = (\inst11|state_csl~5_combout\ & (!\inst11|Add1~62_combout\ & (\inst11|state_csl~11_combout\ & \inst11|state_csl~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|state_csl~5_combout\,
	datab => \inst11|Add1~62_combout\,
	datac => \inst11|state_csl~11_combout\,
	datad => \inst11|state_csl~10_combout\,
	combout => \inst11|state_csl~12_combout\);

-- Location: LCCOMB_X17_Y25_N24
\inst11|state_csl~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csl~13_combout\ = \inst11|state_csl~q\ $ (((\inst11|StartTx~q\ & (!\inst11|wt~q\ & \inst11|state_csl~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|StartTx~q\,
	datab => \inst11|wt~q\,
	datac => \inst11|state_csl~q\,
	datad => \inst11|state_csl~12_combout\,
	combout => \inst11|state_csl~13_combout\);

-- Location: FF_X17_Y25_N25
\inst11|state_csl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|state_csl~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|state_csl~q\);

-- Location: LCCOMB_X18_Y25_N24
\inst11|CSD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|CSD~0_combout\ = !\inst11|state_csl~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|state_csl~q\,
	combout => \inst11|CSD~0_combout\);

-- Location: FF_X18_Y25_N25
\inst11|CSD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|CSD~0_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CSD~q\);

-- Location: FF_X19_Y20_N29
\inst11|EC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~60_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(30));

-- Location: LCCOMB_X19_Y21_N0
\inst11|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~0_combout\ = \inst11|EC\(0) $ (VCC)
-- \inst11|Add0~1\ = CARRY(\inst11|EC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|EC\(0),
	datad => VCC,
	combout => \inst11|Add0~0_combout\,
	cout => \inst11|Add0~1\);

-- Location: LCCOMB_X18_Y21_N16
\inst11|EC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|EC~3_combout\ = (\inst11|Add0~0_combout\ & !\inst11|state_csh~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add0~0_combout\,
	datad => \inst11|state_csh~12_combout\,
	combout => \inst11|EC~3_combout\);

-- Location: FF_X18_Y21_N17
\inst11|EC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|EC~3_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(0));

-- Location: LCCOMB_X19_Y21_N2
\inst11|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~2_combout\ = (\inst11|EC\(1) & (!\inst11|Add0~1\)) # (!\inst11|EC\(1) & ((\inst11|Add0~1\) # (GND)))
-- \inst11|Add0~3\ = CARRY((!\inst11|Add0~1\) # (!\inst11|EC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(1),
	datad => VCC,
	cin => \inst11|Add0~1\,
	combout => \inst11|Add0~2_combout\,
	cout => \inst11|Add0~3\);

-- Location: LCCOMB_X18_Y21_N24
\inst11|EC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|EC~5_combout\ = (\inst11|Add0~2_combout\ & !\inst11|state_csh~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~2_combout\,
	datad => \inst11|state_csh~12_combout\,
	combout => \inst11|EC~5_combout\);

-- Location: FF_X18_Y21_N25
\inst11|EC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|EC~5_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(1));

-- Location: LCCOMB_X19_Y21_N4
\inst11|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~4_combout\ = (\inst11|EC\(2) & (\inst11|Add0~3\ $ (GND))) # (!\inst11|EC\(2) & (!\inst11|Add0~3\ & VCC))
-- \inst11|Add0~5\ = CARRY((\inst11|EC\(2) & !\inst11|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(2),
	datad => VCC,
	cin => \inst11|Add0~3\,
	combout => \inst11|Add0~4_combout\,
	cout => \inst11|Add0~5\);

-- Location: FF_X19_Y21_N5
\inst11|EC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~4_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(2));

-- Location: LCCOMB_X19_Y21_N6
\inst11|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~6_combout\ = (\inst11|EC\(3) & (!\inst11|Add0~5\)) # (!\inst11|EC\(3) & ((\inst11|Add0~5\) # (GND)))
-- \inst11|Add0~7\ = CARRY((!\inst11|Add0~5\) # (!\inst11|EC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|EC\(3),
	datad => VCC,
	cin => \inst11|Add0~5\,
	combout => \inst11|Add0~6_combout\,
	cout => \inst11|Add0~7\);

-- Location: FF_X19_Y21_N7
\inst11|EC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~6_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(3));

-- Location: LCCOMB_X19_Y21_N8
\inst11|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~8_combout\ = (\inst11|EC\(4) & (\inst11|Add0~7\ $ (GND))) # (!\inst11|EC\(4) & (!\inst11|Add0~7\ & VCC))
-- \inst11|Add0~9\ = CARRY((\inst11|EC\(4) & !\inst11|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(4),
	datad => VCC,
	cin => \inst11|Add0~7\,
	combout => \inst11|Add0~8_combout\,
	cout => \inst11|Add0~9\);

-- Location: LCCOMB_X18_Y21_N6
\inst11|EC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|EC~4_combout\ = (\inst11|Add0~8_combout\ & !\inst11|state_csh~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add0~8_combout\,
	datad => \inst11|state_csh~12_combout\,
	combout => \inst11|EC~4_combout\);

-- Location: FF_X18_Y21_N7
\inst11|EC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|EC~4_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(4));

-- Location: LCCOMB_X19_Y21_N10
\inst11|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~10_combout\ = (\inst11|EC\(5) & (!\inst11|Add0~9\)) # (!\inst11|EC\(5) & ((\inst11|Add0~9\) # (GND)))
-- \inst11|Add0~11\ = CARRY((!\inst11|Add0~9\) # (!\inst11|EC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|EC\(5),
	datad => VCC,
	cin => \inst11|Add0~9\,
	combout => \inst11|Add0~10_combout\,
	cout => \inst11|Add0~11\);

-- Location: FF_X19_Y21_N11
\inst11|EC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~10_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(5));

-- Location: LCCOMB_X19_Y21_N12
\inst11|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~12_combout\ = (\inst11|EC\(6) & (\inst11|Add0~11\ $ (GND))) # (!\inst11|EC\(6) & (!\inst11|Add0~11\ & VCC))
-- \inst11|Add0~13\ = CARRY((\inst11|EC\(6) & !\inst11|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|EC\(6),
	datad => VCC,
	cin => \inst11|Add0~11\,
	combout => \inst11|Add0~12_combout\,
	cout => \inst11|Add0~13\);

-- Location: FF_X19_Y21_N13
\inst11|EC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~12_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(6));

-- Location: LCCOMB_X19_Y21_N14
\inst11|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~14_combout\ = (\inst11|EC\(7) & (!\inst11|Add0~13\)) # (!\inst11|EC\(7) & ((\inst11|Add0~13\) # (GND)))
-- \inst11|Add0~15\ = CARRY((!\inst11|Add0~13\) # (!\inst11|EC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(7),
	datad => VCC,
	cin => \inst11|Add0~13\,
	combout => \inst11|Add0~14_combout\,
	cout => \inst11|Add0~15\);

-- Location: FF_X19_Y21_N15
\inst11|EC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~14_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(7));

-- Location: LCCOMB_X19_Y21_N16
\inst11|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~16_combout\ = (\inst11|EC\(8) & (\inst11|Add0~15\ $ (GND))) # (!\inst11|EC\(8) & (!\inst11|Add0~15\ & VCC))
-- \inst11|Add0~17\ = CARRY((\inst11|EC\(8) & !\inst11|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(8),
	datad => VCC,
	cin => \inst11|Add0~15\,
	combout => \inst11|Add0~16_combout\,
	cout => \inst11|Add0~17\);

-- Location: FF_X19_Y21_N17
\inst11|EC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~16_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(8));

-- Location: LCCOMB_X19_Y21_N18
\inst11|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~18_combout\ = (\inst11|EC\(9) & (!\inst11|Add0~17\)) # (!\inst11|EC\(9) & ((\inst11|Add0~17\) # (GND)))
-- \inst11|Add0~19\ = CARRY((!\inst11|Add0~17\) # (!\inst11|EC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(9),
	datad => VCC,
	cin => \inst11|Add0~17\,
	combout => \inst11|Add0~18_combout\,
	cout => \inst11|Add0~19\);

-- Location: FF_X19_Y21_N19
\inst11|EC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~18_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(9));

-- Location: LCCOMB_X19_Y21_N20
\inst11|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~20_combout\ = (\inst11|EC\(10) & (\inst11|Add0~19\ $ (GND))) # (!\inst11|EC\(10) & (!\inst11|Add0~19\ & VCC))
-- \inst11|Add0~21\ = CARRY((\inst11|EC\(10) & !\inst11|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(10),
	datad => VCC,
	cin => \inst11|Add0~19\,
	combout => \inst11|Add0~20_combout\,
	cout => \inst11|Add0~21\);

-- Location: FF_X19_Y21_N21
\inst11|EC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~20_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(10));

-- Location: LCCOMB_X19_Y21_N22
\inst11|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~22_combout\ = (\inst11|EC\(11) & (!\inst11|Add0~21\)) # (!\inst11|EC\(11) & ((\inst11|Add0~21\) # (GND)))
-- \inst11|Add0~23\ = CARRY((!\inst11|Add0~21\) # (!\inst11|EC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|EC\(11),
	datad => VCC,
	cin => \inst11|Add0~21\,
	combout => \inst11|Add0~22_combout\,
	cout => \inst11|Add0~23\);

-- Location: FF_X19_Y21_N23
\inst11|EC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~22_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(11));

-- Location: LCCOMB_X19_Y21_N24
\inst11|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~24_combout\ = (\inst11|EC\(12) & (\inst11|Add0~23\ $ (GND))) # (!\inst11|EC\(12) & (!\inst11|Add0~23\ & VCC))
-- \inst11|Add0~25\ = CARRY((\inst11|EC\(12) & !\inst11|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(12),
	datad => VCC,
	cin => \inst11|Add0~23\,
	combout => \inst11|Add0~24_combout\,
	cout => \inst11|Add0~25\);

-- Location: FF_X19_Y21_N25
\inst11|EC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~24_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(12));

-- Location: LCCOMB_X19_Y21_N26
\inst11|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~26_combout\ = (\inst11|EC\(13) & (!\inst11|Add0~25\)) # (!\inst11|EC\(13) & ((\inst11|Add0~25\) # (GND)))
-- \inst11|Add0~27\ = CARRY((!\inst11|Add0~25\) # (!\inst11|EC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|EC\(13),
	datad => VCC,
	cin => \inst11|Add0~25\,
	combout => \inst11|Add0~26_combout\,
	cout => \inst11|Add0~27\);

-- Location: FF_X19_Y21_N27
\inst11|EC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~26_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(13));

-- Location: LCCOMB_X19_Y21_N28
\inst11|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~28_combout\ = (\inst11|EC\(14) & (\inst11|Add0~27\ $ (GND))) # (!\inst11|EC\(14) & (!\inst11|Add0~27\ & VCC))
-- \inst11|Add0~29\ = CARRY((\inst11|EC\(14) & !\inst11|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(14),
	datad => VCC,
	cin => \inst11|Add0~27\,
	combout => \inst11|Add0~28_combout\,
	cout => \inst11|Add0~29\);

-- Location: FF_X19_Y21_N29
\inst11|EC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~28_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(14));

-- Location: LCCOMB_X19_Y21_N30
\inst11|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~30_combout\ = (\inst11|EC\(15) & (!\inst11|Add0~29\)) # (!\inst11|EC\(15) & ((\inst11|Add0~29\) # (GND)))
-- \inst11|Add0~31\ = CARRY((!\inst11|Add0~29\) # (!\inst11|EC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|EC\(15),
	datad => VCC,
	cin => \inst11|Add0~29\,
	combout => \inst11|Add0~30_combout\,
	cout => \inst11|Add0~31\);

-- Location: FF_X19_Y21_N31
\inst11|EC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~30_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(15));

-- Location: LCCOMB_X19_Y20_N0
\inst11|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~32_combout\ = (\inst11|EC\(16) & (\inst11|Add0~31\ $ (GND))) # (!\inst11|EC\(16) & (!\inst11|Add0~31\ & VCC))
-- \inst11|Add0~33\ = CARRY((\inst11|EC\(16) & !\inst11|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(16),
	datad => VCC,
	cin => \inst11|Add0~31\,
	combout => \inst11|Add0~32_combout\,
	cout => \inst11|Add0~33\);

-- Location: FF_X19_Y20_N1
\inst11|EC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~32_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(16));

-- Location: LCCOMB_X19_Y20_N2
\inst11|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~34_combout\ = (\inst11|EC\(17) & (!\inst11|Add0~33\)) # (!\inst11|EC\(17) & ((\inst11|Add0~33\) # (GND)))
-- \inst11|Add0~35\ = CARRY((!\inst11|Add0~33\) # (!\inst11|EC\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(17),
	datad => VCC,
	cin => \inst11|Add0~33\,
	combout => \inst11|Add0~34_combout\,
	cout => \inst11|Add0~35\);

-- Location: FF_X19_Y20_N3
\inst11|EC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~34_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(17));

-- Location: LCCOMB_X19_Y20_N4
\inst11|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~36_combout\ = (\inst11|EC\(18) & (\inst11|Add0~35\ $ (GND))) # (!\inst11|EC\(18) & (!\inst11|Add0~35\ & VCC))
-- \inst11|Add0~37\ = CARRY((\inst11|EC\(18) & !\inst11|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(18),
	datad => VCC,
	cin => \inst11|Add0~35\,
	combout => \inst11|Add0~36_combout\,
	cout => \inst11|Add0~37\);

-- Location: FF_X19_Y20_N5
\inst11|EC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~36_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(18));

-- Location: LCCOMB_X19_Y20_N6
\inst11|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~38_combout\ = (\inst11|EC\(19) & (!\inst11|Add0~37\)) # (!\inst11|EC\(19) & ((\inst11|Add0~37\) # (GND)))
-- \inst11|Add0~39\ = CARRY((!\inst11|Add0~37\) # (!\inst11|EC\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|EC\(19),
	datad => VCC,
	cin => \inst11|Add0~37\,
	combout => \inst11|Add0~38_combout\,
	cout => \inst11|Add0~39\);

-- Location: FF_X19_Y20_N7
\inst11|EC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~38_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(19));

-- Location: LCCOMB_X19_Y20_N8
\inst11|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~40_combout\ = (\inst11|EC\(20) & (\inst11|Add0~39\ $ (GND))) # (!\inst11|EC\(20) & (!\inst11|Add0~39\ & VCC))
-- \inst11|Add0~41\ = CARRY((\inst11|EC\(20) & !\inst11|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(20),
	datad => VCC,
	cin => \inst11|Add0~39\,
	combout => \inst11|Add0~40_combout\,
	cout => \inst11|Add0~41\);

-- Location: FF_X19_Y20_N9
\inst11|EC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~40_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(20));

-- Location: LCCOMB_X19_Y20_N10
\inst11|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~42_combout\ = (\inst11|EC\(21) & (!\inst11|Add0~41\)) # (!\inst11|EC\(21) & ((\inst11|Add0~41\) # (GND)))
-- \inst11|Add0~43\ = CARRY((!\inst11|Add0~41\) # (!\inst11|EC\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|EC\(21),
	datad => VCC,
	cin => \inst11|Add0~41\,
	combout => \inst11|Add0~42_combout\,
	cout => \inst11|Add0~43\);

-- Location: FF_X19_Y20_N11
\inst11|EC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~42_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(21));

-- Location: LCCOMB_X19_Y20_N12
\inst11|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~44_combout\ = (\inst11|EC\(22) & (\inst11|Add0~43\ $ (GND))) # (!\inst11|EC\(22) & (!\inst11|Add0~43\ & VCC))
-- \inst11|Add0~45\ = CARRY((\inst11|EC\(22) & !\inst11|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|EC\(22),
	datad => VCC,
	cin => \inst11|Add0~43\,
	combout => \inst11|Add0~44_combout\,
	cout => \inst11|Add0~45\);

-- Location: FF_X19_Y20_N13
\inst11|EC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~44_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(22));

-- Location: LCCOMB_X19_Y20_N14
\inst11|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~46_combout\ = (\inst11|EC\(23) & (!\inst11|Add0~45\)) # (!\inst11|EC\(23) & ((\inst11|Add0~45\) # (GND)))
-- \inst11|Add0~47\ = CARRY((!\inst11|Add0~45\) # (!\inst11|EC\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(23),
	datad => VCC,
	cin => \inst11|Add0~45\,
	combout => \inst11|Add0~46_combout\,
	cout => \inst11|Add0~47\);

-- Location: FF_X19_Y20_N15
\inst11|EC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~46_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(23));

-- Location: LCCOMB_X19_Y20_N16
\inst11|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~48_combout\ = (\inst11|EC\(24) & (\inst11|Add0~47\ $ (GND))) # (!\inst11|EC\(24) & (!\inst11|Add0~47\ & VCC))
-- \inst11|Add0~49\ = CARRY((\inst11|EC\(24) & !\inst11|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(24),
	datad => VCC,
	cin => \inst11|Add0~47\,
	combout => \inst11|Add0~48_combout\,
	cout => \inst11|Add0~49\);

-- Location: FF_X19_Y20_N17
\inst11|EC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~48_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(24));

-- Location: LCCOMB_X19_Y20_N18
\inst11|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~50_combout\ = (\inst11|EC\(25) & (!\inst11|Add0~49\)) # (!\inst11|EC\(25) & ((\inst11|Add0~49\) # (GND)))
-- \inst11|Add0~51\ = CARRY((!\inst11|Add0~49\) # (!\inst11|EC\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(25),
	datad => VCC,
	cin => \inst11|Add0~49\,
	combout => \inst11|Add0~50_combout\,
	cout => \inst11|Add0~51\);

-- Location: FF_X19_Y20_N19
\inst11|EC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~50_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(25));

-- Location: LCCOMB_X19_Y20_N20
\inst11|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~52_combout\ = (\inst11|EC\(26) & (\inst11|Add0~51\ $ (GND))) # (!\inst11|EC\(26) & (!\inst11|Add0~51\ & VCC))
-- \inst11|Add0~53\ = CARRY((\inst11|EC\(26) & !\inst11|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(26),
	datad => VCC,
	cin => \inst11|Add0~51\,
	combout => \inst11|Add0~52_combout\,
	cout => \inst11|Add0~53\);

-- Location: FF_X19_Y20_N21
\inst11|EC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~52_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(26));

-- Location: LCCOMB_X19_Y20_N22
\inst11|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~54_combout\ = (\inst11|EC\(27) & (!\inst11|Add0~53\)) # (!\inst11|EC\(27) & ((\inst11|Add0~53\) # (GND)))
-- \inst11|Add0~55\ = CARRY((!\inst11|Add0~53\) # (!\inst11|EC\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|EC\(27),
	datad => VCC,
	cin => \inst11|Add0~53\,
	combout => \inst11|Add0~54_combout\,
	cout => \inst11|Add0~55\);

-- Location: FF_X19_Y20_N23
\inst11|EC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~54_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(27));

-- Location: LCCOMB_X19_Y20_N24
\inst11|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~56_combout\ = (\inst11|EC\(28) & (\inst11|Add0~55\ $ (GND))) # (!\inst11|EC\(28) & (!\inst11|Add0~55\ & VCC))
-- \inst11|Add0~57\ = CARRY((\inst11|EC\(28) & !\inst11|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(28),
	datad => VCC,
	cin => \inst11|Add0~55\,
	combout => \inst11|Add0~56_combout\,
	cout => \inst11|Add0~57\);

-- Location: FF_X19_Y20_N25
\inst11|EC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~56_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(28));

-- Location: LCCOMB_X19_Y20_N26
\inst11|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~58_combout\ = (\inst11|EC\(29) & (!\inst11|Add0~57\)) # (!\inst11|EC\(29) & ((\inst11|Add0~57\) # (GND)))
-- \inst11|Add0~59\ = CARRY((!\inst11|Add0~57\) # (!\inst11|EC\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|EC\(29),
	datad => VCC,
	cin => \inst11|Add0~57\,
	combout => \inst11|Add0~58_combout\,
	cout => \inst11|Add0~59\);

-- Location: FF_X19_Y20_N27
\inst11|EC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~58_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(29));

-- Location: LCCOMB_X19_Y20_N28
\inst11|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~60_combout\ = (\inst11|EC\(30) & (\inst11|Add0~59\ $ (GND))) # (!\inst11|EC\(30) & (!\inst11|Add0~59\ & VCC))
-- \inst11|Add0~61\ = CARRY((\inst11|EC\(30) & !\inst11|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|EC\(30),
	datad => VCC,
	cin => \inst11|Add0~59\,
	combout => \inst11|Add0~60_combout\,
	cout => \inst11|Add0~61\);

-- Location: LCCOMB_X18_Y20_N4
\inst11|state_csh~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csh~11_combout\ = (!\inst11|Add0~60_combout\ & (!\inst11|Add0~56_combout\ & (!\inst11|Add0~58_combout\ & !\inst11|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~60_combout\,
	datab => \inst11|Add0~56_combout\,
	datac => \inst11|Add0~58_combout\,
	datad => \inst11|Add0~54_combout\,
	combout => \inst11|state_csh~11_combout\);

-- Location: LCCOMB_X18_Y21_N26
\inst11|state_csh~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csh~2_combout\ = (\inst11|state_csh~q\ & (!\inst11|Add0~0_combout\ & (!\inst11|Add0~8_combout\ & \inst11|Add0~2_combout\))) # (!\inst11|state_csh~q\ & (\inst11|Add0~0_combout\ & (\inst11|Add0~8_combout\ & !\inst11|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|state_csh~q\,
	datab => \inst11|Add0~0_combout\,
	datac => \inst11|Add0~8_combout\,
	datad => \inst11|Add0~2_combout\,
	combout => \inst11|state_csh~2_combout\);

-- Location: LCCOMB_X18_Y21_N22
\inst11|state_csh~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csh~4_combout\ = (!\inst11|Add0~20_combout\ & (!\inst11|Add0~18_combout\ & (!\inst11|Add0~14_combout\ & !\inst11|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~20_combout\,
	datab => \inst11|Add0~18_combout\,
	datac => \inst11|Add0~14_combout\,
	datad => \inst11|Add0~16_combout\,
	combout => \inst11|state_csh~4_combout\);

-- Location: LCCOMB_X18_Y21_N12
\inst11|state_csh~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csh~3_combout\ = (!\inst11|Add0~6_combout\ & (!\inst11|Add0~10_combout\ & (!\inst11|Add0~12_combout\ & !\inst11|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~6_combout\,
	datab => \inst11|Add0~10_combout\,
	datac => \inst11|Add0~12_combout\,
	datad => \inst11|Add0~4_combout\,
	combout => \inst11|state_csh~3_combout\);

-- Location: LCCOMB_X18_Y21_N28
\inst11|state_csh~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csh~5_combout\ = (\inst11|state_csh~2_combout\ & (\inst11|state_csh~4_combout\ & \inst11|state_csh~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|state_csh~2_combout\,
	datac => \inst11|state_csh~4_combout\,
	datad => \inst11|state_csh~3_combout\,
	combout => \inst11|state_csh~5_combout\);

-- Location: FF_X19_Y20_N31
\inst11|EC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add0~62_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|EC\(31));

-- Location: LCCOMB_X19_Y20_N30
\inst11|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~62_combout\ = \inst11|EC\(31) $ (\inst11|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|EC\(31),
	cin => \inst11|Add0~61\,
	combout => \inst11|Add0~62_combout\);

-- Location: LCCOMB_X18_Y20_N6
\inst11|state_csh~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csh~9_combout\ = (!\inst11|Add0~52_combout\ & (!\inst11|Add0~50_combout\ & (!\inst11|Add0~46_combout\ & !\inst11|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~52_combout\,
	datab => \inst11|Add0~50_combout\,
	datac => \inst11|Add0~46_combout\,
	datad => \inst11|Add0~48_combout\,
	combout => \inst11|state_csh~9_combout\);

-- Location: LCCOMB_X18_Y21_N18
\inst11|state_csh~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csh~6_combout\ = (!\inst11|Add0~26_combout\ & (!\inst11|Add0~28_combout\ & (!\inst11|Add0~24_combout\ & !\inst11|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~26_combout\,
	datab => \inst11|Add0~28_combout\,
	datac => \inst11|Add0~24_combout\,
	datad => \inst11|Add0~22_combout\,
	combout => \inst11|state_csh~6_combout\);

-- Location: LCCOMB_X18_Y21_N8
\inst11|state_csh~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csh~7_combout\ = (!\inst11|Add0~30_combout\ & (!\inst11|Add0~36_combout\ & (!\inst11|Add0~34_combout\ & !\inst11|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~30_combout\,
	datab => \inst11|Add0~36_combout\,
	datac => \inst11|Add0~34_combout\,
	datad => \inst11|Add0~32_combout\,
	combout => \inst11|state_csh~7_combout\);

-- Location: LCCOMB_X18_Y20_N0
\inst11|state_csh~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csh~8_combout\ = (!\inst11|Add0~42_combout\ & (!\inst11|Add0~44_combout\ & (!\inst11|Add0~40_combout\ & !\inst11|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~42_combout\,
	datab => \inst11|Add0~44_combout\,
	datac => \inst11|Add0~40_combout\,
	datad => \inst11|Add0~38_combout\,
	combout => \inst11|state_csh~8_combout\);

-- Location: LCCOMB_X18_Y21_N10
\inst11|state_csh~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csh~10_combout\ = (\inst11|state_csh~9_combout\ & (\inst11|state_csh~6_combout\ & (\inst11|state_csh~7_combout\ & \inst11|state_csh~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|state_csh~9_combout\,
	datab => \inst11|state_csh~6_combout\,
	datac => \inst11|state_csh~7_combout\,
	datad => \inst11|state_csh~8_combout\,
	combout => \inst11|state_csh~10_combout\);

-- Location: LCCOMB_X18_Y21_N20
\inst11|state_csh~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csh~12_combout\ = (\inst11|state_csh~11_combout\ & (\inst11|state_csh~5_combout\ & (!\inst11|Add0~62_combout\ & \inst11|state_csh~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|state_csh~11_combout\,
	datab => \inst11|state_csh~5_combout\,
	datac => \inst11|Add0~62_combout\,
	datad => \inst11|state_csh~10_combout\,
	combout => \inst11|state_csh~12_combout\);

-- Location: LCCOMB_X18_Y21_N30
\inst11|state_csh~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_csh~13_combout\ = \inst11|state_csh~q\ $ (((\inst11|StartTx~q\ & (!\inst11|wt~q\ & \inst11|state_csh~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|StartTx~q\,
	datab => \inst11|wt~q\,
	datac => \inst11|state_csh~q\,
	datad => \inst11|state_csh~12_combout\,
	combout => \inst11|state_csh~13_combout\);

-- Location: FF_X18_Y21_N31
\inst11|state_csh\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|state_csh~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|state_csh~q\);

-- Location: LCCOMB_X18_Y21_N4
\inst11|CSU~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|CSU~0_combout\ = !\inst11|state_csh~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|state_csh~q\,
	combout => \inst11|CSU~0_combout\);

-- Location: FF_X18_Y21_N5
\inst11|CSU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|CSU~0_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CSU~q\);

-- Location: LCCOMB_X19_Y25_N16
\inst11|CS\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|CS~combout\ = (!\inst11|CSD~q\ & !\inst11|CSU~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CSD~q\,
	datad => \inst11|CSU~q\,
	combout => \inst11|CS~combout\);

-- Location: FF_X21_Y25_N21
\inst11|CC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~20_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(10));

-- Location: LCCOMB_X21_Y25_N0
\inst11|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~0_combout\ = \inst11|CC\(0) $ (VCC)
-- \inst11|Add2~1\ = CARRY(\inst11|CC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|CC\(0),
	datad => VCC,
	combout => \inst11|Add2~0_combout\,
	cout => \inst11|Add2~1\);

-- Location: LCCOMB_X20_Y25_N8
\inst11|CC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|CC~0_combout\ = (\inst11|Add2~0_combout\ & !\inst11|state_clk~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add2~0_combout\,
	datad => \inst11|state_clk~12_combout\,
	combout => \inst11|CC~0_combout\);

-- Location: FF_X20_Y25_N9
\inst11|CC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|CC~0_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(0));

-- Location: LCCOMB_X21_Y25_N2
\inst11|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~2_combout\ = (\inst11|CC\(1) & (!\inst11|Add2~1\)) # (!\inst11|CC\(1) & ((\inst11|Add2~1\) # (GND)))
-- \inst11|Add2~3\ = CARRY((!\inst11|Add2~1\) # (!\inst11|CC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(1),
	datad => VCC,
	cin => \inst11|Add2~1\,
	combout => \inst11|Add2~2_combout\,
	cout => \inst11|Add2~3\);

-- Location: LCCOMB_X20_Y25_N6
\inst11|CC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|CC~1_combout\ = (\inst11|Add2~2_combout\ & !\inst11|state_clk~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add2~2_combout\,
	datad => \inst11|state_clk~12_combout\,
	combout => \inst11|CC~1_combout\);

-- Location: FF_X20_Y25_N7
\inst11|CC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|CC~1_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(1));

-- Location: LCCOMB_X21_Y25_N4
\inst11|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~4_combout\ = (\inst11|CC\(2) & (\inst11|Add2~3\ $ (GND))) # (!\inst11|CC\(2) & (!\inst11|Add2~3\ & VCC))
-- \inst11|Add2~5\ = CARRY((\inst11|CC\(2) & !\inst11|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(2),
	datad => VCC,
	cin => \inst11|Add2~3\,
	combout => \inst11|Add2~4_combout\,
	cout => \inst11|Add2~5\);

-- Location: FF_X21_Y25_N5
\inst11|CC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~4_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(2));

-- Location: LCCOMB_X21_Y25_N6
\inst11|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~6_combout\ = (\inst11|CC\(3) & (!\inst11|Add2~5\)) # (!\inst11|CC\(3) & ((\inst11|Add2~5\) # (GND)))
-- \inst11|Add2~7\ = CARRY((!\inst11|Add2~5\) # (!\inst11|CC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|CC\(3),
	datad => VCC,
	cin => \inst11|Add2~5\,
	combout => \inst11|Add2~6_combout\,
	cout => \inst11|Add2~7\);

-- Location: FF_X21_Y25_N7
\inst11|CC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~6_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(3));

-- Location: LCCOMB_X21_Y25_N8
\inst11|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~8_combout\ = (\inst11|CC\(4) & (\inst11|Add2~7\ $ (GND))) # (!\inst11|CC\(4) & (!\inst11|Add2~7\ & VCC))
-- \inst11|Add2~9\ = CARRY((\inst11|CC\(4) & !\inst11|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|CC\(4),
	datad => VCC,
	cin => \inst11|Add2~7\,
	combout => \inst11|Add2~8_combout\,
	cout => \inst11|Add2~9\);

-- Location: LCCOMB_X20_Y25_N16
\inst11|CC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|CC~2_combout\ = (\inst11|Add2~8_combout\ & !\inst11|state_clk~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add2~8_combout\,
	datad => \inst11|state_clk~12_combout\,
	combout => \inst11|CC~2_combout\);

-- Location: FF_X20_Y25_N17
\inst11|CC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|CC~2_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(4));

-- Location: LCCOMB_X21_Y25_N10
\inst11|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~10_combout\ = (\inst11|CC\(5) & (!\inst11|Add2~9\)) # (!\inst11|CC\(5) & ((\inst11|Add2~9\) # (GND)))
-- \inst11|Add2~11\ = CARRY((!\inst11|Add2~9\) # (!\inst11|CC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|CC\(5),
	datad => VCC,
	cin => \inst11|Add2~9\,
	combout => \inst11|Add2~10_combout\,
	cout => \inst11|Add2~11\);

-- Location: FF_X21_Y25_N11
\inst11|CC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~10_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(5));

-- Location: LCCOMB_X21_Y25_N12
\inst11|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~12_combout\ = (\inst11|CC\(6) & (\inst11|Add2~11\ $ (GND))) # (!\inst11|CC\(6) & (!\inst11|Add2~11\ & VCC))
-- \inst11|Add2~13\ = CARRY((\inst11|CC\(6) & !\inst11|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|CC\(6),
	datad => VCC,
	cin => \inst11|Add2~11\,
	combout => \inst11|Add2~12_combout\,
	cout => \inst11|Add2~13\);

-- Location: FF_X21_Y25_N13
\inst11|CC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~12_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(6));

-- Location: LCCOMB_X21_Y25_N14
\inst11|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~14_combout\ = (\inst11|CC\(7) & (!\inst11|Add2~13\)) # (!\inst11|CC\(7) & ((\inst11|Add2~13\) # (GND)))
-- \inst11|Add2~15\ = CARRY((!\inst11|Add2~13\) # (!\inst11|CC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(7),
	datad => VCC,
	cin => \inst11|Add2~13\,
	combout => \inst11|Add2~14_combout\,
	cout => \inst11|Add2~15\);

-- Location: FF_X21_Y25_N15
\inst11|CC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~14_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(7));

-- Location: LCCOMB_X21_Y25_N16
\inst11|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~16_combout\ = (\inst11|CC\(8) & (\inst11|Add2~15\ $ (GND))) # (!\inst11|CC\(8) & (!\inst11|Add2~15\ & VCC))
-- \inst11|Add2~17\ = CARRY((\inst11|CC\(8) & !\inst11|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(8),
	datad => VCC,
	cin => \inst11|Add2~15\,
	combout => \inst11|Add2~16_combout\,
	cout => \inst11|Add2~17\);

-- Location: FF_X21_Y25_N17
\inst11|CC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~16_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(8));

-- Location: LCCOMB_X21_Y25_N18
\inst11|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~18_combout\ = (\inst11|CC\(9) & (!\inst11|Add2~17\)) # (!\inst11|CC\(9) & ((\inst11|Add2~17\) # (GND)))
-- \inst11|Add2~19\ = CARRY((!\inst11|Add2~17\) # (!\inst11|CC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(9),
	datad => VCC,
	cin => \inst11|Add2~17\,
	combout => \inst11|Add2~18_combout\,
	cout => \inst11|Add2~19\);

-- Location: FF_X21_Y25_N19
\inst11|CC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~18_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(9));

-- Location: LCCOMB_X21_Y25_N20
\inst11|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~20_combout\ = (\inst11|CC\(10) & (\inst11|Add2~19\ $ (GND))) # (!\inst11|CC\(10) & (!\inst11|Add2~19\ & VCC))
-- \inst11|Add2~21\ = CARRY((\inst11|CC\(10) & !\inst11|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(10),
	datad => VCC,
	cin => \inst11|Add2~19\,
	combout => \inst11|Add2~20_combout\,
	cout => \inst11|Add2~21\);

-- Location: LCCOMB_X20_Y25_N18
\inst11|state_clk~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_clk~4_combout\ = (!\inst11|Add2~20_combout\ & (!\inst11|Add2~18_combout\ & (!\inst11|Add2~14_combout\ & !\inst11|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add2~20_combout\,
	datab => \inst11|Add2~18_combout\,
	datac => \inst11|Add2~14_combout\,
	datad => \inst11|Add2~16_combout\,
	combout => \inst11|state_clk~4_combout\);

-- Location: LCCOMB_X20_Y25_N22
\inst11|state_clk~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_clk~2_combout\ = (\inst11|state_clk~q\ & (!\inst11|Add2~8_combout\ & (\inst11|Add2~0_combout\ & \inst11|Add2~2_combout\))) # (!\inst11|state_clk~q\ & (\inst11|Add2~8_combout\ & (!\inst11|Add2~0_combout\ & !\inst11|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|state_clk~q\,
	datab => \inst11|Add2~8_combout\,
	datac => \inst11|Add2~0_combout\,
	datad => \inst11|Add2~2_combout\,
	combout => \inst11|state_clk~2_combout\);

-- Location: LCCOMB_X20_Y25_N20
\inst11|state_clk~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_clk~3_combout\ = (!\inst11|Add2~6_combout\ & (!\inst11|Add2~12_combout\ & (!\inst11|Add2~10_combout\ & !\inst11|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add2~6_combout\,
	datab => \inst11|Add2~12_combout\,
	datac => \inst11|Add2~10_combout\,
	datad => \inst11|Add2~4_combout\,
	combout => \inst11|state_clk~3_combout\);

-- Location: LCCOMB_X20_Y25_N12
\inst11|state_clk~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_clk~5_combout\ = (\inst11|state_clk~4_combout\ & (\inst11|state_clk~2_combout\ & \inst11|state_clk~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|state_clk~4_combout\,
	datac => \inst11|state_clk~2_combout\,
	datad => \inst11|state_clk~3_combout\,
	combout => \inst11|state_clk~5_combout\);

-- Location: FF_X21_Y24_N25
\inst11|CC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~56_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(28));

-- Location: LCCOMB_X21_Y25_N22
\inst11|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~22_combout\ = (\inst11|CC\(11) & (!\inst11|Add2~21\)) # (!\inst11|CC\(11) & ((\inst11|Add2~21\) # (GND)))
-- \inst11|Add2~23\ = CARRY((!\inst11|Add2~21\) # (!\inst11|CC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|CC\(11),
	datad => VCC,
	cin => \inst11|Add2~21\,
	combout => \inst11|Add2~22_combout\,
	cout => \inst11|Add2~23\);

-- Location: FF_X21_Y25_N23
\inst11|CC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~22_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(11));

-- Location: LCCOMB_X21_Y25_N24
\inst11|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~24_combout\ = (\inst11|CC\(12) & (\inst11|Add2~23\ $ (GND))) # (!\inst11|CC\(12) & (!\inst11|Add2~23\ & VCC))
-- \inst11|Add2~25\ = CARRY((\inst11|CC\(12) & !\inst11|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(12),
	datad => VCC,
	cin => \inst11|Add2~23\,
	combout => \inst11|Add2~24_combout\,
	cout => \inst11|Add2~25\);

-- Location: FF_X21_Y25_N25
\inst11|CC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~24_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(12));

-- Location: LCCOMB_X21_Y25_N26
\inst11|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~26_combout\ = (\inst11|CC\(13) & (!\inst11|Add2~25\)) # (!\inst11|CC\(13) & ((\inst11|Add2~25\) # (GND)))
-- \inst11|Add2~27\ = CARRY((!\inst11|Add2~25\) # (!\inst11|CC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|CC\(13),
	datad => VCC,
	cin => \inst11|Add2~25\,
	combout => \inst11|Add2~26_combout\,
	cout => \inst11|Add2~27\);

-- Location: FF_X21_Y25_N27
\inst11|CC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~26_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(13));

-- Location: LCCOMB_X21_Y25_N28
\inst11|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~28_combout\ = (\inst11|CC\(14) & (\inst11|Add2~27\ $ (GND))) # (!\inst11|CC\(14) & (!\inst11|Add2~27\ & VCC))
-- \inst11|Add2~29\ = CARRY((\inst11|CC\(14) & !\inst11|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(14),
	datad => VCC,
	cin => \inst11|Add2~27\,
	combout => \inst11|Add2~28_combout\,
	cout => \inst11|Add2~29\);

-- Location: FF_X21_Y25_N29
\inst11|CC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~28_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(14));

-- Location: LCCOMB_X21_Y25_N30
\inst11|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~30_combout\ = (\inst11|CC\(15) & (!\inst11|Add2~29\)) # (!\inst11|CC\(15) & ((\inst11|Add2~29\) # (GND)))
-- \inst11|Add2~31\ = CARRY((!\inst11|Add2~29\) # (!\inst11|CC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|CC\(15),
	datad => VCC,
	cin => \inst11|Add2~29\,
	combout => \inst11|Add2~30_combout\,
	cout => \inst11|Add2~31\);

-- Location: FF_X21_Y25_N31
\inst11|CC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~30_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(15));

-- Location: LCCOMB_X21_Y24_N0
\inst11|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~32_combout\ = (\inst11|CC\(16) & (\inst11|Add2~31\ $ (GND))) # (!\inst11|CC\(16) & (!\inst11|Add2~31\ & VCC))
-- \inst11|Add2~33\ = CARRY((\inst11|CC\(16) & !\inst11|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(16),
	datad => VCC,
	cin => \inst11|Add2~31\,
	combout => \inst11|Add2~32_combout\,
	cout => \inst11|Add2~33\);

-- Location: FF_X21_Y24_N1
\inst11|CC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~32_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(16));

-- Location: LCCOMB_X21_Y24_N2
\inst11|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~34_combout\ = (\inst11|CC\(17) & (!\inst11|Add2~33\)) # (!\inst11|CC\(17) & ((\inst11|Add2~33\) # (GND)))
-- \inst11|Add2~35\ = CARRY((!\inst11|Add2~33\) # (!\inst11|CC\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(17),
	datad => VCC,
	cin => \inst11|Add2~33\,
	combout => \inst11|Add2~34_combout\,
	cout => \inst11|Add2~35\);

-- Location: FF_X21_Y24_N3
\inst11|CC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~34_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(17));

-- Location: LCCOMB_X21_Y24_N4
\inst11|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~36_combout\ = (\inst11|CC\(18) & (\inst11|Add2~35\ $ (GND))) # (!\inst11|CC\(18) & (!\inst11|Add2~35\ & VCC))
-- \inst11|Add2~37\ = CARRY((\inst11|CC\(18) & !\inst11|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(18),
	datad => VCC,
	cin => \inst11|Add2~35\,
	combout => \inst11|Add2~36_combout\,
	cout => \inst11|Add2~37\);

-- Location: FF_X21_Y24_N5
\inst11|CC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~36_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(18));

-- Location: LCCOMB_X21_Y24_N6
\inst11|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~38_combout\ = (\inst11|CC\(19) & (!\inst11|Add2~37\)) # (!\inst11|CC\(19) & ((\inst11|Add2~37\) # (GND)))
-- \inst11|Add2~39\ = CARRY((!\inst11|Add2~37\) # (!\inst11|CC\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|CC\(19),
	datad => VCC,
	cin => \inst11|Add2~37\,
	combout => \inst11|Add2~38_combout\,
	cout => \inst11|Add2~39\);

-- Location: FF_X21_Y24_N7
\inst11|CC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~38_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(19));

-- Location: LCCOMB_X21_Y24_N8
\inst11|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~40_combout\ = (\inst11|CC\(20) & (\inst11|Add2~39\ $ (GND))) # (!\inst11|CC\(20) & (!\inst11|Add2~39\ & VCC))
-- \inst11|Add2~41\ = CARRY((\inst11|CC\(20) & !\inst11|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(20),
	datad => VCC,
	cin => \inst11|Add2~39\,
	combout => \inst11|Add2~40_combout\,
	cout => \inst11|Add2~41\);

-- Location: FF_X21_Y24_N9
\inst11|CC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~40_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(20));

-- Location: LCCOMB_X21_Y24_N10
\inst11|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~42_combout\ = (\inst11|CC\(21) & (!\inst11|Add2~41\)) # (!\inst11|CC\(21) & ((\inst11|Add2~41\) # (GND)))
-- \inst11|Add2~43\ = CARRY((!\inst11|Add2~41\) # (!\inst11|CC\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|CC\(21),
	datad => VCC,
	cin => \inst11|Add2~41\,
	combout => \inst11|Add2~42_combout\,
	cout => \inst11|Add2~43\);

-- Location: FF_X21_Y24_N11
\inst11|CC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~42_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(21));

-- Location: LCCOMB_X21_Y24_N12
\inst11|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~44_combout\ = (\inst11|CC\(22) & (\inst11|Add2~43\ $ (GND))) # (!\inst11|CC\(22) & (!\inst11|Add2~43\ & VCC))
-- \inst11|Add2~45\ = CARRY((\inst11|CC\(22) & !\inst11|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|CC\(22),
	datad => VCC,
	cin => \inst11|Add2~43\,
	combout => \inst11|Add2~44_combout\,
	cout => \inst11|Add2~45\);

-- Location: FF_X21_Y24_N13
\inst11|CC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~44_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(22));

-- Location: LCCOMB_X21_Y24_N14
\inst11|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~46_combout\ = (\inst11|CC\(23) & (!\inst11|Add2~45\)) # (!\inst11|CC\(23) & ((\inst11|Add2~45\) # (GND)))
-- \inst11|Add2~47\ = CARRY((!\inst11|Add2~45\) # (!\inst11|CC\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(23),
	datad => VCC,
	cin => \inst11|Add2~45\,
	combout => \inst11|Add2~46_combout\,
	cout => \inst11|Add2~47\);

-- Location: FF_X21_Y24_N15
\inst11|CC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~46_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(23));

-- Location: LCCOMB_X21_Y24_N16
\inst11|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~48_combout\ = (\inst11|CC\(24) & (\inst11|Add2~47\ $ (GND))) # (!\inst11|CC\(24) & (!\inst11|Add2~47\ & VCC))
-- \inst11|Add2~49\ = CARRY((\inst11|CC\(24) & !\inst11|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(24),
	datad => VCC,
	cin => \inst11|Add2~47\,
	combout => \inst11|Add2~48_combout\,
	cout => \inst11|Add2~49\);

-- Location: FF_X21_Y24_N17
\inst11|CC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~48_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(24));

-- Location: LCCOMB_X21_Y24_N18
\inst11|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~50_combout\ = (\inst11|CC\(25) & (!\inst11|Add2~49\)) # (!\inst11|CC\(25) & ((\inst11|Add2~49\) # (GND)))
-- \inst11|Add2~51\ = CARRY((!\inst11|Add2~49\) # (!\inst11|CC\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(25),
	datad => VCC,
	cin => \inst11|Add2~49\,
	combout => \inst11|Add2~50_combout\,
	cout => \inst11|Add2~51\);

-- Location: FF_X21_Y24_N19
\inst11|CC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~50_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(25));

-- Location: LCCOMB_X21_Y24_N20
\inst11|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~52_combout\ = (\inst11|CC\(26) & (\inst11|Add2~51\ $ (GND))) # (!\inst11|CC\(26) & (!\inst11|Add2~51\ & VCC))
-- \inst11|Add2~53\ = CARRY((\inst11|CC\(26) & !\inst11|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(26),
	datad => VCC,
	cin => \inst11|Add2~51\,
	combout => \inst11|Add2~52_combout\,
	cout => \inst11|Add2~53\);

-- Location: FF_X21_Y24_N21
\inst11|CC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~52_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(26));

-- Location: LCCOMB_X21_Y24_N22
\inst11|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~54_combout\ = (\inst11|CC\(27) & (!\inst11|Add2~53\)) # (!\inst11|CC\(27) & ((\inst11|Add2~53\) # (GND)))
-- \inst11|Add2~55\ = CARRY((!\inst11|Add2~53\) # (!\inst11|CC\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|CC\(27),
	datad => VCC,
	cin => \inst11|Add2~53\,
	combout => \inst11|Add2~54_combout\,
	cout => \inst11|Add2~55\);

-- Location: FF_X21_Y24_N23
\inst11|CC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~54_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(27));

-- Location: LCCOMB_X21_Y24_N24
\inst11|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~56_combout\ = (\inst11|CC\(28) & (\inst11|Add2~55\ $ (GND))) # (!\inst11|CC\(28) & (!\inst11|Add2~55\ & VCC))
-- \inst11|Add2~57\ = CARRY((\inst11|CC\(28) & !\inst11|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(28),
	datad => VCC,
	cin => \inst11|Add2~55\,
	combout => \inst11|Add2~56_combout\,
	cout => \inst11|Add2~57\);

-- Location: FF_X21_Y24_N27
\inst11|CC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~58_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(29));

-- Location: LCCOMB_X21_Y24_N26
\inst11|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~58_combout\ = (\inst11|CC\(29) & (!\inst11|Add2~57\)) # (!\inst11|CC\(29) & ((\inst11|Add2~57\) # (GND)))
-- \inst11|Add2~59\ = CARRY((!\inst11|Add2~57\) # (!\inst11|CC\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|CC\(29),
	datad => VCC,
	cin => \inst11|Add2~57\,
	combout => \inst11|Add2~58_combout\,
	cout => \inst11|Add2~59\);

-- Location: FF_X21_Y24_N29
\inst11|CC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~60_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(30));

-- Location: LCCOMB_X21_Y24_N28
\inst11|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~60_combout\ = (\inst11|CC\(30) & (\inst11|Add2~59\ $ (GND))) # (!\inst11|CC\(30) & (!\inst11|Add2~59\ & VCC))
-- \inst11|Add2~61\ = CARRY((\inst11|CC\(30) & !\inst11|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|CC\(30),
	datad => VCC,
	cin => \inst11|Add2~59\,
	combout => \inst11|Add2~60_combout\,
	cout => \inst11|Add2~61\);

-- Location: LCCOMB_X20_Y24_N12
\inst11|state_clk~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_clk~11_combout\ = (!\inst11|Add2~56_combout\ & (!\inst11|Add2~54_combout\ & (!\inst11|Add2~58_combout\ & !\inst11|Add2~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add2~56_combout\,
	datab => \inst11|Add2~54_combout\,
	datac => \inst11|Add2~58_combout\,
	datad => \inst11|Add2~60_combout\,
	combout => \inst11|state_clk~11_combout\);

-- Location: FF_X21_Y24_N31
\inst11|CC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add2~62_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CC\(31));

-- Location: LCCOMB_X21_Y24_N30
\inst11|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add2~62_combout\ = \inst11|CC\(31) $ (\inst11|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|CC\(31),
	cin => \inst11|Add2~61\,
	combout => \inst11|Add2~62_combout\);

-- Location: LCCOMB_X20_Y25_N30
\inst11|state_clk~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_clk~6_combout\ = (!\inst11|Add2~26_combout\ & (!\inst11|Add2~28_combout\ & (!\inst11|Add2~24_combout\ & !\inst11|Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add2~26_combout\,
	datab => \inst11|Add2~28_combout\,
	datac => \inst11|Add2~24_combout\,
	datad => \inst11|Add2~22_combout\,
	combout => \inst11|state_clk~6_combout\);

-- Location: LCCOMB_X20_Y24_N0
\inst11|state_clk~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_clk~8_combout\ = (!\inst11|Add2~44_combout\ & (!\inst11|Add2~42_combout\ & (!\inst11|Add2~40_combout\ & !\inst11|Add2~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add2~44_combout\,
	datab => \inst11|Add2~42_combout\,
	datac => \inst11|Add2~40_combout\,
	datad => \inst11|Add2~38_combout\,
	combout => \inst11|state_clk~8_combout\);

-- Location: LCCOMB_X20_Y25_N4
\inst11|state_clk~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_clk~7_combout\ = (!\inst11|Add2~30_combout\ & (!\inst11|Add2~34_combout\ & (!\inst11|Add2~36_combout\ & !\inst11|Add2~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add2~30_combout\,
	datab => \inst11|Add2~34_combout\,
	datac => \inst11|Add2~36_combout\,
	datad => \inst11|Add2~32_combout\,
	combout => \inst11|state_clk~7_combout\);

-- Location: LCCOMB_X20_Y24_N6
\inst11|state_clk~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_clk~9_combout\ = (!\inst11|Add2~52_combout\ & (!\inst11|Add2~50_combout\ & (!\inst11|Add2~46_combout\ & !\inst11|Add2~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add2~52_combout\,
	datab => \inst11|Add2~50_combout\,
	datac => \inst11|Add2~46_combout\,
	datad => \inst11|Add2~48_combout\,
	combout => \inst11|state_clk~9_combout\);

-- Location: LCCOMB_X20_Y25_N10
\inst11|state_clk~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_clk~10_combout\ = (\inst11|state_clk~6_combout\ & (\inst11|state_clk~8_combout\ & (\inst11|state_clk~7_combout\ & \inst11|state_clk~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|state_clk~6_combout\,
	datab => \inst11|state_clk~8_combout\,
	datac => \inst11|state_clk~7_combout\,
	datad => \inst11|state_clk~9_combout\,
	combout => \inst11|state_clk~10_combout\);

-- Location: LCCOMB_X20_Y25_N24
\inst11|state_clk~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_clk~12_combout\ = (\inst11|state_clk~5_combout\ & (\inst11|state_clk~11_combout\ & (!\inst11|Add2~62_combout\ & \inst11|state_clk~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|state_clk~5_combout\,
	datab => \inst11|state_clk~11_combout\,
	datac => \inst11|Add2~62_combout\,
	datad => \inst11|state_clk~10_combout\,
	combout => \inst11|state_clk~12_combout\);

-- Location: LCCOMB_X20_Y25_N14
\inst11|state_clk~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|state_clk~13_combout\ = \inst11|state_clk~q\ $ (((\inst11|StartTx~q\ & (!\inst11|wt~q\ & \inst11|state_clk~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|StartTx~q\,
	datab => \inst11|wt~q\,
	datac => \inst11|state_clk~q\,
	datad => \inst11|state_clk~12_combout\,
	combout => \inst11|state_clk~13_combout\);

-- Location: FF_X20_Y25_N15
\inst11|state_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|state_clk~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|state_clk~q\);

-- Location: LCCOMB_X20_Y25_N0
\inst11|rtc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|rtc~0_combout\ = !\inst11|state_clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|state_clk~q\,
	combout => \inst11|rtc~0_combout\);

-- Location: FF_X20_Y25_N1
\inst11|rtc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|rtc~0_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|rtc~q\);

-- Location: LCCOMB_X20_Y23_N4
\inst11|CLKO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|CLKO~0_combout\ = (\inst20|CLK_OUT~q\) # (!\inst11|rtc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|CLK_OUT~q\,
	datad => \inst11|rtc~q\,
	combout => \inst11|CLKO~0_combout\);

-- Location: LCCOMB_X19_Y25_N6
\inst11|MOSI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|MOSI~0_combout\ = (\inst11|rtc~q\ & (!\inst11|wt~q\ & \inst11|StartTx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|rtc~q\,
	datac => \inst11|wt~q\,
	datad => \inst11|StartTx~q\,
	combout => \inst11|MOSI~0_combout\);

-- Location: FF_X19_Y25_N13
\inst11|BP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add4~4_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|BP\(2));

-- Location: LCCOMB_X19_Y25_N8
\inst11|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add4~0_combout\ = \inst11|BP\(0) $ (VCC)
-- \inst11|Add4~1\ = CARRY(\inst11|BP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|BP\(0),
	datad => VCC,
	combout => \inst11|Add4~0_combout\,
	cout => \inst11|Add4~1\);

-- Location: FF_X19_Y25_N9
\inst11|BP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add4~0_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|BP\(0));

-- Location: LCCOMB_X19_Y25_N10
\inst11|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add4~2_combout\ = (\inst11|BP\(1) & (\inst11|Add4~1\ & VCC)) # (!\inst11|BP\(1) & (!\inst11|Add4~1\))
-- \inst11|Add4~3\ = CARRY((!\inst11|BP\(1) & !\inst11|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|BP\(1),
	datad => VCC,
	cin => \inst11|Add4~1\,
	combout => \inst11|Add4~2_combout\,
	cout => \inst11|Add4~3\);

-- Location: FF_X19_Y25_N11
\inst11|BP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add4~2_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|BP\(1));

-- Location: LCCOMB_X19_Y25_N12
\inst11|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add4~4_combout\ = (\inst11|BP\(2) & ((GND) # (!\inst11|Add4~3\))) # (!\inst11|BP\(2) & (\inst11|Add4~3\ $ (GND)))
-- \inst11|Add4~5\ = CARRY((\inst11|BP\(2)) # (!\inst11|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|BP\(2),
	datad => VCC,
	cin => \inst11|Add4~3\,
	combout => \inst11|Add4~4_combout\,
	cout => \inst11|Add4~5\);

-- Location: FF_X19_Y25_N15
\inst11|BP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add4~6_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|BP\(3));

-- Location: LCCOMB_X19_Y25_N14
\inst11|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add4~6_combout\ = \inst11|Add4~5\ $ (!\inst11|BP\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst11|BP\(3),
	cin => \inst11|Add4~5\,
	combout => \inst11|Add4~6_combout\);

-- Location: FF_X29_Y15_N5
\inst|inst1|addNo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(2));

-- Location: LCCOMB_X29_Y15_N0
\inst|inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~0_combout\ = \inst|inst1|addNo\(0) $ (VCC)
-- \inst|inst2|Add0~1\ = CARRY(\inst|inst1|addNo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(0),
	datad => VCC,
	combout => \inst|inst2|Add0~0_combout\,
	cout => \inst|inst2|Add0~1\);

-- Location: LCCOMB_X28_Y14_N16
\inst|inst2|addNo~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~30_combout\ = (\inst|inst|state.NXTADDR~q\ & (\inst|inst2|Add0~0_combout\)) # (!\inst|inst|state.NXTADDR~q\ & ((\inst|inst1|addNo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datab => \inst|inst2|Add0~0_combout\,
	datad => \inst|inst1|addNo\(0),
	combout => \inst|inst2|addNo~30_combout\);

-- Location: FF_X29_Y15_N9
\inst|inst1|addNo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(0));

-- Location: LCCOMB_X29_Y15_N2
\inst|inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~2_combout\ = (\inst|inst1|addNo\(1) & (!\inst|inst2|Add0~1\)) # (!\inst|inst1|addNo\(1) & ((\inst|inst2|Add0~1\) # (GND)))
-- \inst|inst2|Add0~3\ = CARRY((!\inst|inst2|Add0~1\) # (!\inst|inst1|addNo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(1),
	datad => VCC,
	cin => \inst|inst2|Add0~1\,
	combout => \inst|inst2|Add0~2_combout\,
	cout => \inst|inst2|Add0~3\);

-- Location: LCCOMB_X28_Y15_N6
\inst|inst2|addNo~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~28_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~2_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datab => \inst|inst1|addNo\(1),
	datad => \inst|inst2|Add0~2_combout\,
	combout => \inst|inst2|addNo~28_combout\);

-- Location: FF_X29_Y15_N27
\inst|inst1|addNo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(1));

-- Location: LCCOMB_X29_Y15_N4
\inst|inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~4_combout\ = (\inst|inst1|addNo\(2) & (\inst|inst2|Add0~3\ $ (GND))) # (!\inst|inst1|addNo\(2) & (!\inst|inst2|Add0~3\ & VCC))
-- \inst|inst2|Add0~5\ = CARRY((\inst|inst1|addNo\(2) & !\inst|inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(2),
	datad => VCC,
	cin => \inst|inst2|Add0~3\,
	combout => \inst|inst2|Add0~4_combout\,
	cout => \inst|inst2|Add0~5\);

-- Location: LCCOMB_X29_Y15_N6
\inst|inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~6_combout\ = (\inst|inst1|addNo\(3) & (!\inst|inst2|Add0~5\)) # (!\inst|inst1|addNo\(3) & ((\inst|inst2|Add0~5\) # (GND)))
-- \inst|inst2|Add0~7\ = CARRY((!\inst|inst2|Add0~5\) # (!\inst|inst1|addNo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(3),
	datad => VCC,
	cin => \inst|inst2|Add0~5\,
	combout => \inst|inst2|Add0~6_combout\,
	cout => \inst|inst2|Add0~7\);

-- Location: LCCOMB_X28_Y15_N30
\inst|inst2|addNo~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~29_combout\ = (\inst|inst2|Add0~6_combout\ & ((\inst|inst2|addNo~26_combout\) # ((\inst|inst1|addNo\(3) & !\inst|inst|state.NXTADDR~q\)))) # (!\inst|inst2|Add0~6_combout\ & (\inst|inst1|addNo\(3) & (!\inst|inst|state.NXTADDR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add0~6_combout\,
	datab => \inst|inst1|addNo\(3),
	datac => \inst|inst|state.NXTADDR~q\,
	datad => \inst|inst2|addNo~26_combout\,
	combout => \inst|inst2|addNo~29_combout\);

-- Location: FF_X29_Y15_N13
\inst|inst1|addNo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(3));

-- Location: LCCOMB_X28_Y15_N26
\inst|inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal0~0_combout\ = (\inst|inst1|addNo\(2) & (!\inst|inst1|addNo\(0) & (\inst|inst1|addNo\(3) & !\inst|inst1|addNo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(2),
	datab => \inst|inst1|addNo\(0),
	datac => \inst|inst1|addNo\(3),
	datad => \inst|inst1|addNo\(1),
	combout => \inst|inst2|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y15_N8
\inst|inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~8_combout\ = (\inst|inst1|addNo\(4) & (\inst|inst2|Add0~7\ $ (GND))) # (!\inst|inst1|addNo\(4) & (!\inst|inst2|Add0~7\ & VCC))
-- \inst|inst2|Add0~9\ = CARRY((\inst|inst1|addNo\(4) & !\inst|inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(4),
	datad => VCC,
	cin => \inst|inst2|Add0~7\,
	combout => \inst|inst2|Add0~8_combout\,
	cout => \inst|inst2|Add0~9\);

-- Location: LCCOMB_X30_Y15_N16
\inst|inst2|addNo~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~10_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~8_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datab => \inst|inst1|addNo\(4),
	datad => \inst|inst2|Add0~8_combout\,
	combout => \inst|inst2|addNo~10_combout\);

-- Location: FF_X29_Y15_N11
\inst|inst1|addNo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(4));

-- Location: LCCOMB_X29_Y15_N10
\inst|inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~10_combout\ = (\inst|inst1|addNo\(5) & (!\inst|inst2|Add0~9\)) # (!\inst|inst1|addNo\(5) & ((\inst|inst2|Add0~9\) # (GND)))
-- \inst|inst2|Add0~11\ = CARRY((!\inst|inst2|Add0~9\) # (!\inst|inst1|addNo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(5),
	datad => VCC,
	cin => \inst|inst2|Add0~9\,
	combout => \inst|inst2|Add0~10_combout\,
	cout => \inst|inst2|Add0~11\);

-- Location: LCCOMB_X30_Y15_N28
\inst|inst2|addNo~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~11_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~10_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(5),
	datab => \inst|inst2|Add0~10_combout\,
	datad => \inst|inst|state.NXTADDR~q\,
	combout => \inst|inst2|addNo~11_combout\);

-- Location: FF_X29_Y15_N1
\inst|inst1|addNo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(5));

-- Location: LCCOMB_X29_Y15_N12
\inst|inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~12_combout\ = (\inst|inst1|addNo\(6) & (\inst|inst2|Add0~11\ $ (GND))) # (!\inst|inst1|addNo\(6) & (!\inst|inst2|Add0~11\ & VCC))
-- \inst|inst2|Add0~13\ = CARRY((\inst|inst1|addNo\(6) & !\inst|inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(6),
	datad => VCC,
	cin => \inst|inst2|Add0~11\,
	combout => \inst|inst2|Add0~12_combout\,
	cout => \inst|inst2|Add0~13\);

-- Location: LCCOMB_X30_Y15_N26
\inst|inst2|addNo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~1_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~12_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datab => \inst|inst1|addNo\(6),
	datad => \inst|inst2|Add0~12_combout\,
	combout => \inst|inst2|addNo~1_combout\);

-- Location: FF_X29_Y15_N23
\inst|inst1|addNo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(6));

-- Location: LCCOMB_X29_Y15_N14
\inst|inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~14_combout\ = (\inst|inst1|addNo\(7) & (!\inst|inst2|Add0~13\)) # (!\inst|inst1|addNo\(7) & ((\inst|inst2|Add0~13\) # (GND)))
-- \inst|inst2|Add0~15\ = CARRY((!\inst|inst2|Add0~13\) # (!\inst|inst1|addNo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(7),
	datad => VCC,
	cin => \inst|inst2|Add0~13\,
	combout => \inst|inst2|Add0~14_combout\,
	cout => \inst|inst2|Add0~15\);

-- Location: LCCOMB_X30_Y15_N18
\inst|inst2|addNo~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~18_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~14_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datab => \inst|inst1|addNo\(7),
	datad => \inst|inst2|Add0~14_combout\,
	combout => \inst|inst2|addNo~18_combout\);

-- Location: FF_X30_Y15_N5
\inst|inst1|addNo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(7));

-- Location: LCCOMB_X30_Y15_N4
\inst|inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal0~1_combout\ = (!\inst|inst1|addNo\(5) & (!\inst|inst1|addNo\(4) & (!\inst|inst1|addNo\(7) & !\inst|inst1|addNo\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(5),
	datab => \inst|inst1|addNo\(4),
	datac => \inst|inst1|addNo\(7),
	datad => \inst|inst1|addNo\(6),
	combout => \inst|inst2|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y15_N16
\inst|inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~16_combout\ = (\inst|inst1|addNo\(8) & (\inst|inst2|Add0~15\ $ (GND))) # (!\inst|inst1|addNo\(8) & (!\inst|inst2|Add0~15\ & VCC))
-- \inst|inst2|Add0~17\ = CARRY((\inst|inst1|addNo\(8) & !\inst|inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(8),
	datad => VCC,
	cin => \inst|inst2|Add0~15\,
	combout => \inst|inst2|Add0~16_combout\,
	cout => \inst|inst2|Add0~17\);

-- Location: LCCOMB_X30_Y15_N14
\inst|inst2|addNo~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~19_combout\ = (\inst|inst|state.NXTADDR~q\ & (\inst|inst2|Add0~16_combout\)) # (!\inst|inst|state.NXTADDR~q\ & ((\inst|inst1|addNo\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Add0~16_combout\,
	datac => \inst|inst1|addNo\(8),
	datad => \inst|inst|state.NXTADDR~q\,
	combout => \inst|inst2|addNo~19_combout\);

-- Location: FF_X30_Y15_N15
\inst|inst1|addNo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst2|addNo~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(8));

-- Location: LCCOMB_X29_Y15_N18
\inst|inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~18_combout\ = (\inst|inst1|addNo\(9) & (!\inst|inst2|Add0~17\)) # (!\inst|inst1|addNo\(9) & ((\inst|inst2|Add0~17\) # (GND)))
-- \inst|inst2|Add0~19\ = CARRY((!\inst|inst2|Add0~17\) # (!\inst|inst1|addNo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(9),
	datad => VCC,
	cin => \inst|inst2|Add0~17\,
	combout => \inst|inst2|Add0~18_combout\,
	cout => \inst|inst2|Add0~19\);

-- Location: LCCOMB_X30_Y15_N12
\inst|inst2|addNo~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~20_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~18_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datab => \inst|inst1|addNo\(9),
	datad => \inst|inst2|Add0~18_combout\,
	combout => \inst|inst2|addNo~20_combout\);

-- Location: FF_X30_Y15_N17
\inst|inst1|addNo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(9));

-- Location: LCCOMB_X29_Y15_N20
\inst|inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~20_combout\ = (\inst|inst1|addNo\(10) & (\inst|inst2|Add0~19\ $ (GND))) # (!\inst|inst1|addNo\(10) & (!\inst|inst2|Add0~19\ & VCC))
-- \inst|inst2|Add0~21\ = CARRY((\inst|inst1|addNo\(10) & !\inst|inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(10),
	datad => VCC,
	cin => \inst|inst2|Add0~19\,
	combout => \inst|inst2|Add0~20_combout\,
	cout => \inst|inst2|Add0~21\);

-- Location: LCCOMB_X30_Y15_N0
\inst|inst2|addNo~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~21_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~20_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datab => \inst|inst1|addNo\(10),
	datad => \inst|inst2|Add0~20_combout\,
	combout => \inst|inst2|addNo~21_combout\);

-- Location: FF_X30_Y15_N27
\inst|inst1|addNo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(10));

-- Location: LCCOMB_X29_Y15_N22
\inst|inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~22_combout\ = (\inst|inst1|addNo\(11) & (!\inst|inst2|Add0~21\)) # (!\inst|inst1|addNo\(11) & ((\inst|inst2|Add0~21\) # (GND)))
-- \inst|inst2|Add0~23\ = CARRY((!\inst|inst2|Add0~21\) # (!\inst|inst1|addNo\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(11),
	datad => VCC,
	cin => \inst|inst2|Add0~21\,
	combout => \inst|inst2|Add0~22_combout\,
	cout => \inst|inst2|Add0~23\);

-- Location: LCCOMB_X28_Y15_N28
\inst|inst2|addNo~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~22_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~22_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(11),
	datac => \inst|inst|state.NXTADDR~q\,
	datad => \inst|inst2|Add0~22_combout\,
	combout => \inst|inst2|addNo~22_combout\);

-- Location: FF_X28_Y15_N15
\inst|inst1|addNo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(11));

-- Location: LCCOMB_X28_Y15_N14
\inst|inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal0~2_combout\ = (!\inst|inst1|addNo\(9) & (!\inst|inst1|addNo\(8) & (!\inst|inst1|addNo\(11) & !\inst|inst1|addNo\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(9),
	datab => \inst|inst1|addNo\(8),
	datac => \inst|inst1|addNo\(11),
	datad => \inst|inst1|addNo\(10),
	combout => \inst|inst2|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y15_N24
\inst|inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~24_combout\ = (\inst|inst1|addNo\(12) & (\inst|inst2|Add0~23\ $ (GND))) # (!\inst|inst1|addNo\(12) & (!\inst|inst2|Add0~23\ & VCC))
-- \inst|inst2|Add0~25\ = CARRY((\inst|inst1|addNo\(12) & !\inst|inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(12),
	datad => VCC,
	cin => \inst|inst2|Add0~23\,
	combout => \inst|inst2|Add0~24_combout\,
	cout => \inst|inst2|Add0~25\);

-- Location: LCCOMB_X28_Y15_N22
\inst|inst2|addNo~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~23_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~24_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(12),
	datac => \inst|inst|state.NXTADDR~q\,
	datad => \inst|inst2|Add0~24_combout\,
	combout => \inst|inst2|addNo~23_combout\);

-- Location: FF_X28_Y15_N21
\inst|inst1|addNo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(12));

-- Location: LCCOMB_X29_Y15_N26
\inst|inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~26_combout\ = (\inst|inst1|addNo\(13) & (!\inst|inst2|Add0~25\)) # (!\inst|inst1|addNo\(13) & ((\inst|inst2|Add0~25\) # (GND)))
-- \inst|inst2|Add0~27\ = CARRY((!\inst|inst2|Add0~25\) # (!\inst|inst1|addNo\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(13),
	datad => VCC,
	cin => \inst|inst2|Add0~25\,
	combout => \inst|inst2|Add0~26_combout\,
	cout => \inst|inst2|Add0~27\);

-- Location: LCCOMB_X28_Y15_N8
\inst|inst2|addNo~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~24_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~26_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(13),
	datac => \inst|inst|state.NXTADDR~q\,
	datad => \inst|inst2|Add0~26_combout\,
	combout => \inst|inst2|addNo~24_combout\);

-- Location: FF_X28_Y15_N7
\inst|inst1|addNo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(13));

-- Location: LCCOMB_X29_Y15_N28
\inst|inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~28_combout\ = (\inst|inst1|addNo\(14) & (\inst|inst2|Add0~27\ $ (GND))) # (!\inst|inst1|addNo\(14) & (!\inst|inst2|Add0~27\ & VCC))
-- \inst|inst2|Add0~29\ = CARRY((\inst|inst1|addNo\(14) & !\inst|inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(14),
	datad => VCC,
	cin => \inst|inst2|Add0~27\,
	combout => \inst|inst2|Add0~28_combout\,
	cout => \inst|inst2|Add0~29\);

-- Location: LCCOMB_X28_Y15_N18
\inst|inst2|addNo~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~25_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~28_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(14),
	datac => \inst|inst|state.NXTADDR~q\,
	datad => \inst|inst2|Add0~28_combout\,
	combout => \inst|inst2|addNo~25_combout\);

-- Location: LCCOMB_X28_Y15_N16
\inst|inst1|addNo[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|addNo[14]~feeder_combout\ = \inst|inst2|addNo~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst2|addNo~25_combout\,
	combout => \inst|inst1|addNo[14]~feeder_combout\);

-- Location: FF_X28_Y15_N17
\inst|inst1|addNo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst1|addNo[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(14));

-- Location: LCCOMB_X29_Y15_N30
\inst|inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~30_combout\ = (\inst|inst1|addNo\(15) & (!\inst|inst2|Add0~29\)) # (!\inst|inst1|addNo\(15) & ((\inst|inst2|Add0~29\) # (GND)))
-- \inst|inst2|Add0~31\ = CARRY((!\inst|inst2|Add0~29\) # (!\inst|inst1|addNo\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(15),
	datad => VCC,
	cin => \inst|inst2|Add0~29\,
	combout => \inst|inst2|Add0~30_combout\,
	cout => \inst|inst2|Add0~31\);

-- Location: LCCOMB_X30_Y15_N2
\inst|inst2|addNo~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~2_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~30_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datac => \inst|inst1|addNo\(15),
	datad => \inst|inst2|Add0~30_combout\,
	combout => \inst|inst2|addNo~2_combout\);

-- Location: FF_X30_Y15_N29
\inst|inst1|addNo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(15));

-- Location: LCCOMB_X28_Y15_N20
\inst|inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal0~3_combout\ = (!\inst|inst1|addNo\(15) & (!\inst|inst1|addNo\(14) & (!\inst|inst1|addNo\(12) & !\inst|inst1|addNo\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(15),
	datab => \inst|inst1|addNo\(14),
	datac => \inst|inst1|addNo\(12),
	datad => \inst|inst1|addNo\(13),
	combout => \inst|inst2|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y15_N4
\inst|inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal0~4_combout\ = (\inst|inst2|Equal0~0_combout\ & (\inst|inst2|Equal0~1_combout\ & (\inst|inst2|Equal0~2_combout\ & \inst|inst2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal0~0_combout\,
	datab => \inst|inst2|Equal0~1_combout\,
	datac => \inst|inst2|Equal0~2_combout\,
	datad => \inst|inst2|Equal0~3_combout\,
	combout => \inst|inst2|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y14_N0
\inst|inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~32_combout\ = (\inst|inst1|addNo\(16) & (\inst|inst2|Add0~31\ $ (GND))) # (!\inst|inst1|addNo\(16) & (!\inst|inst2|Add0~31\ & VCC))
-- \inst|inst2|Add0~33\ = CARRY((\inst|inst1|addNo\(16) & !\inst|inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(16),
	datad => VCC,
	cin => \inst|inst2|Add0~31\,
	combout => \inst|inst2|Add0~32_combout\,
	cout => \inst|inst2|Add0~33\);

-- Location: LCCOMB_X30_Y14_N22
\inst|inst2|addNo~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~8_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~32_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datac => \inst|inst1|addNo\(16),
	datad => \inst|inst2|Add0~32_combout\,
	combout => \inst|inst2|addNo~8_combout\);

-- Location: FF_X30_Y14_N23
\inst|inst1|addNo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst2|addNo~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(16));

-- Location: LCCOMB_X29_Y14_N2
\inst|inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~34_combout\ = (\inst|inst1|addNo\(17) & (!\inst|inst2|Add0~33\)) # (!\inst|inst1|addNo\(17) & ((\inst|inst2|Add0~33\) # (GND)))
-- \inst|inst2|Add0~35\ = CARRY((!\inst|inst2|Add0~33\) # (!\inst|inst1|addNo\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(17),
	datad => VCC,
	cin => \inst|inst2|Add0~33\,
	combout => \inst|inst2|Add0~34_combout\,
	cout => \inst|inst2|Add0~35\);

-- Location: LCCOMB_X30_Y14_N28
\inst|inst2|addNo~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~7_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~34_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datab => \inst|inst1|addNo\(17),
	datad => \inst|inst2|Add0~34_combout\,
	combout => \inst|inst2|addNo~7_combout\);

-- Location: LCCOMB_X30_Y14_N8
\inst|inst1|addNo[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|addNo[17]~feeder_combout\ = \inst|inst2|addNo~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst2|addNo~7_combout\,
	combout => \inst|inst1|addNo[17]~feeder_combout\);

-- Location: FF_X30_Y14_N9
\inst|inst1|addNo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst1|addNo[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(17));

-- Location: LCCOMB_X29_Y14_N4
\inst|inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~36_combout\ = (\inst|inst1|addNo\(18) & (\inst|inst2|Add0~35\ $ (GND))) # (!\inst|inst1|addNo\(18) & (!\inst|inst2|Add0~35\ & VCC))
-- \inst|inst2|Add0~37\ = CARRY((\inst|inst1|addNo\(18) & !\inst|inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(18),
	datad => VCC,
	cin => \inst|inst2|Add0~35\,
	combout => \inst|inst2|Add0~36_combout\,
	cout => \inst|inst2|Add0~37\);

-- Location: LCCOMB_X30_Y14_N4
\inst|inst2|addNo~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~6_combout\ = (\inst|inst|state.NXTADDR~q\ & (\inst|inst2|Add0~36_combout\)) # (!\inst|inst|state.NXTADDR~q\ & ((\inst|inst1|addNo\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datac => \inst|inst2|Add0~36_combout\,
	datad => \inst|inst1|addNo\(18),
	combout => \inst|inst2|addNo~6_combout\);

-- Location: FF_X30_Y14_N15
\inst|inst1|addNo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(18));

-- Location: LCCOMB_X29_Y14_N6
\inst|inst2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~38_combout\ = (\inst|inst1|addNo\(19) & (!\inst|inst2|Add0~37\)) # (!\inst|inst1|addNo\(19) & ((\inst|inst2|Add0~37\) # (GND)))
-- \inst|inst2|Add0~39\ = CARRY((!\inst|inst2|Add0~37\) # (!\inst|inst1|addNo\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(19),
	datad => VCC,
	cin => \inst|inst2|Add0~37\,
	combout => \inst|inst2|Add0~38_combout\,
	cout => \inst|inst2|Add0~39\);

-- Location: LCCOMB_X30_Y14_N18
\inst|inst2|addNo~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~5_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~38_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(19),
	datab => \inst|inst2|Add0~38_combout\,
	datad => \inst|inst|state.NXTADDR~q\,
	combout => \inst|inst2|addNo~5_combout\);

-- Location: FF_X30_Y14_N29
\inst|inst1|addNo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(19));

-- Location: LCCOMB_X29_Y14_N8
\inst|inst2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~40_combout\ = (\inst|inst1|addNo\(20) & (\inst|inst2|Add0~39\ $ (GND))) # (!\inst|inst1|addNo\(20) & (!\inst|inst2|Add0~39\ & VCC))
-- \inst|inst2|Add0~41\ = CARRY((\inst|inst1|addNo\(20) & !\inst|inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(20),
	datad => VCC,
	cin => \inst|inst2|Add0~39\,
	combout => \inst|inst2|Add0~40_combout\,
	cout => \inst|inst2|Add0~41\);

-- Location: LCCOMB_X28_Y14_N24
\inst|inst2|addNo~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~14_combout\ = (\inst|inst|state.NXTADDR~q\ & (\inst|inst2|Add0~40_combout\)) # (!\inst|inst|state.NXTADDR~q\ & ((\inst|inst1|addNo\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datab => \inst|inst2|Add0~40_combout\,
	datad => \inst|inst1|addNo\(20),
	combout => \inst|inst2|addNo~14_combout\);

-- Location: FF_X29_Y14_N25
\inst|inst1|addNo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(20));

-- Location: LCCOMB_X29_Y14_N10
\inst|inst2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~42_combout\ = (\inst|inst1|addNo\(21) & (!\inst|inst2|Add0~41\)) # (!\inst|inst1|addNo\(21) & ((\inst|inst2|Add0~41\) # (GND)))
-- \inst|inst2|Add0~43\ = CARRY((!\inst|inst2|Add0~41\) # (!\inst|inst1|addNo\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(21),
	datad => VCC,
	cin => \inst|inst2|Add0~41\,
	combout => \inst|inst2|Add0~42_combout\,
	cout => \inst|inst2|Add0~43\);

-- Location: LCCOMB_X30_Y15_N8
\inst|inst2|addNo~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~12_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~42_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datab => \inst|inst1|addNo\(21),
	datad => \inst|inst2|Add0~42_combout\,
	combout => \inst|inst2|addNo~12_combout\);

-- Location: FF_X30_Y15_N19
\inst|inst1|addNo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(21));

-- Location: LCCOMB_X29_Y14_N12
\inst|inst2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~44_combout\ = (\inst|inst1|addNo\(22) & (\inst|inst2|Add0~43\ $ (GND))) # (!\inst|inst1|addNo\(22) & (!\inst|inst2|Add0~43\ & VCC))
-- \inst|inst2|Add0~45\ = CARRY((\inst|inst1|addNo\(22) & !\inst|inst2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(22),
	datad => VCC,
	cin => \inst|inst2|Add0~43\,
	combout => \inst|inst2|Add0~44_combout\,
	cout => \inst|inst2|Add0~45\);

-- Location: LCCOMB_X30_Y15_N22
\inst|inst2|addNo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~0_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~44_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datac => \inst|inst1|addNo\(22),
	datad => \inst|inst2|Add0~44_combout\,
	combout => \inst|inst2|addNo~0_combout\);

-- Location: FF_X30_Y15_N13
\inst|inst1|addNo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(22));

-- Location: LCCOMB_X29_Y14_N14
\inst|inst2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~46_combout\ = (\inst|inst1|addNo\(23) & (!\inst|inst2|Add0~45\)) # (!\inst|inst1|addNo\(23) & ((\inst|inst2|Add0~45\) # (GND)))
-- \inst|inst2|Add0~47\ = CARRY((!\inst|inst2|Add0~45\) # (!\inst|inst1|addNo\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(23),
	datad => VCC,
	cin => \inst|inst2|Add0~45\,
	combout => \inst|inst2|Add0~46_combout\,
	cout => \inst|inst2|Add0~47\);

-- Location: LCCOMB_X30_Y15_N10
\inst|inst2|addNo~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~13_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~46_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datac => \inst|inst1|addNo\(23),
	datad => \inst|inst2|Add0~46_combout\,
	combout => \inst|inst2|addNo~13_combout\);

-- Location: FF_X30_Y15_N1
\inst|inst1|addNo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(23));

-- Location: LCCOMB_X28_Y15_N10
\inst|inst2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal0~6_combout\ = (!\inst|inst1|addNo\(21) & (!\inst|inst1|addNo\(23) & (!\inst|inst1|addNo\(20) & !\inst|inst1|addNo\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(21),
	datab => \inst|inst1|addNo\(23),
	datac => \inst|inst1|addNo\(20),
	datad => \inst|inst1|addNo\(22),
	combout => \inst|inst2|Equal0~6_combout\);

-- Location: LCCOMB_X30_Y14_N14
\inst|inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal0~5_combout\ = (!\inst|inst1|addNo\(19) & (!\inst|inst1|addNo\(16) & (!\inst|inst1|addNo\(18) & !\inst|inst1|addNo\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(19),
	datab => \inst|inst1|addNo\(16),
	datac => \inst|inst1|addNo\(18),
	datad => \inst|inst1|addNo\(17),
	combout => \inst|inst2|Equal0~5_combout\);

-- Location: LCCOMB_X29_Y14_N16
\inst|inst2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~48_combout\ = (\inst|inst1|addNo\(24) & (\inst|inst2|Add0~47\ $ (GND))) # (!\inst|inst1|addNo\(24) & (!\inst|inst2|Add0~47\ & VCC))
-- \inst|inst2|Add0~49\ = CARRY((\inst|inst1|addNo\(24) & !\inst|inst2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(24),
	datad => VCC,
	cin => \inst|inst2|Add0~47\,
	combout => \inst|inst2|Add0~48_combout\,
	cout => \inst|inst2|Add0~49\);

-- Location: LCCOMB_X28_Y14_N30
\inst|inst2|addNo~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~15_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~48_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(24),
	datac => \inst|inst|state.NXTADDR~q\,
	datad => \inst|inst2|Add0~48_combout\,
	combout => \inst|inst2|addNo~15_combout\);

-- Location: FF_X28_Y14_N17
\inst|inst1|addNo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(24));

-- Location: LCCOMB_X29_Y14_N18
\inst|inst2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~50_combout\ = (\inst|inst1|addNo\(25) & (!\inst|inst2|Add0~49\)) # (!\inst|inst1|addNo\(25) & ((\inst|inst2|Add0~49\) # (GND)))
-- \inst|inst2|Add0~51\ = CARRY((!\inst|inst2|Add0~49\) # (!\inst|inst1|addNo\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(25),
	datad => VCC,
	cin => \inst|inst2|Add0~49\,
	combout => \inst|inst2|Add0~50_combout\,
	cout => \inst|inst2|Add0~51\);

-- Location: LCCOMB_X30_Y14_N12
\inst|inst2|addNo~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~4_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~50_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datac => \inst|inst1|addNo\(25),
	datad => \inst|inst2|Add0~50_combout\,
	combout => \inst|inst2|addNo~4_combout\);

-- Location: FF_X30_Y14_N13
\inst|inst1|addNo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst2|addNo~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(25));

-- Location: LCCOMB_X29_Y14_N20
\inst|inst2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~52_combout\ = (\inst|inst1|addNo\(26) & (\inst|inst2|Add0~51\ $ (GND))) # (!\inst|inst1|addNo\(26) & (!\inst|inst2|Add0~51\ & VCC))
-- \inst|inst2|Add0~53\ = CARRY((\inst|inst1|addNo\(26) & !\inst|inst2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(26),
	datad => VCC,
	cin => \inst|inst2|Add0~51\,
	combout => \inst|inst2|Add0~52_combout\,
	cout => \inst|inst2|Add0~53\);

-- Location: LCCOMB_X30_Y14_N26
\inst|inst2|addNo~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~3_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~52_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(26),
	datac => \inst|inst|state.NXTADDR~q\,
	datad => \inst|inst2|Add0~52_combout\,
	combout => \inst|inst2|addNo~3_combout\);

-- Location: FF_X30_Y14_N19
\inst|inst1|addNo[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(26));

-- Location: LCCOMB_X29_Y14_N22
\inst|inst2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~54_combout\ = (\inst|inst1|addNo\(27) & (!\inst|inst2|Add0~53\)) # (!\inst|inst1|addNo\(27) & ((\inst|inst2|Add0~53\) # (GND)))
-- \inst|inst2|Add0~55\ = CARRY((!\inst|inst2|Add0~53\) # (!\inst|inst1|addNo\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(27),
	datad => VCC,
	cin => \inst|inst2|Add0~53\,
	combout => \inst|inst2|Add0~54_combout\,
	cout => \inst|inst2|Add0~55\);

-- Location: LCCOMB_X28_Y14_N18
\inst|inst2|addNo~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~17_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~54_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(27),
	datac => \inst|inst|state.NXTADDR~q\,
	datad => \inst|inst2|Add0~54_combout\,
	combout => \inst|inst2|addNo~17_combout\);

-- Location: FF_X28_Y14_N7
\inst|inst1|addNo[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(27));

-- Location: LCCOMB_X28_Y14_N6
\inst|inst2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal0~7_combout\ = (!\inst|inst1|addNo\(26) & (!\inst|inst1|addNo\(25) & (!\inst|inst1|addNo\(27) & !\inst|inst1|addNo\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(26),
	datab => \inst|inst1|addNo\(25),
	datac => \inst|inst1|addNo\(27),
	datad => \inst|inst1|addNo\(24),
	combout => \inst|inst2|Equal0~7_combout\);

-- Location: LCCOMB_X29_Y14_N24
\inst|inst2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~56_combout\ = (\inst|inst1|addNo\(28) & (\inst|inst2|Add0~55\ $ (GND))) # (!\inst|inst1|addNo\(28) & (!\inst|inst2|Add0~55\ & VCC))
-- \inst|inst2|Add0~57\ = CARRY((\inst|inst1|addNo\(28) & !\inst|inst2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(28),
	datad => VCC,
	cin => \inst|inst2|Add0~55\,
	combout => \inst|inst2|Add0~56_combout\,
	cout => \inst|inst2|Add0~57\);

-- Location: LCCOMB_X28_Y14_N28
\inst|inst2|addNo~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~16_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~56_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(28),
	datac => \inst|inst|state.NXTADDR~q\,
	datad => \inst|inst2|Add0~56_combout\,
	combout => \inst|inst2|addNo~16_combout\);

-- Location: FF_X28_Y14_N25
\inst|inst1|addNo[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(28));

-- Location: LCCOMB_X29_Y14_N26
\inst|inst2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~58_combout\ = (\inst|inst1|addNo\(29) & (!\inst|inst2|Add0~57\)) # (!\inst|inst1|addNo\(29) & ((\inst|inst2|Add0~57\) # (GND)))
-- \inst|inst2|Add0~59\ = CARRY((!\inst|inst2|Add0~57\) # (!\inst|inst1|addNo\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|addNo\(29),
	datad => VCC,
	cin => \inst|inst2|Add0~57\,
	combout => \inst|inst2|Add0~58_combout\,
	cout => \inst|inst2|Add0~59\);

-- Location: LCCOMB_X30_Y14_N10
\inst|inst2|addNo~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~9_combout\ = (\inst|inst|state.NXTADDR~q\ & (\inst|inst2|Add0~58_combout\)) # (!\inst|inst|state.NXTADDR~q\ & ((\inst|inst1|addNo\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datac => \inst|inst2|Add0~58_combout\,
	datad => \inst|inst1|addNo\(29),
	combout => \inst|inst2|addNo~9_combout\);

-- Location: FF_X30_Y14_N1
\inst|inst1|addNo[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst2|addNo~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(29));

-- Location: LCCOMB_X29_Y14_N28
\inst|inst2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~60_combout\ = (\inst|inst1|addNo\(30) & (\inst|inst2|Add0~59\ $ (GND))) # (!\inst|inst1|addNo\(30) & (!\inst|inst2|Add0~59\ & VCC))
-- \inst|inst2|Add0~61\ = CARRY((\inst|inst1|addNo\(30) & !\inst|inst2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(30),
	datad => VCC,
	cin => \inst|inst2|Add0~59\,
	combout => \inst|inst2|Add0~60_combout\,
	cout => \inst|inst2|Add0~61\);

-- Location: LCCOMB_X30_Y14_N2
\inst|inst2|addNo~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~32_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~60_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datac => \inst|inst1|addNo\(30),
	datad => \inst|inst2|Add0~60_combout\,
	combout => \inst|inst2|addNo~32_combout\);

-- Location: FF_X30_Y14_N3
\inst|inst1|addNo[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst2|addNo~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(30));

-- Location: LCCOMB_X29_Y14_N30
\inst|inst2|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Add0~62_combout\ = \inst|inst2|Add0~61\ $ (\inst|inst1|addNo\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|addNo\(31),
	cin => \inst|inst2|Add0~61\,
	combout => \inst|inst2|Add0~62_combout\);

-- Location: LCCOMB_X30_Y14_N24
\inst|inst2|addNo~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~31_combout\ = (\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~62_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datac => \inst|inst1|addNo\(31),
	datad => \inst|inst2|Add0~62_combout\,
	combout => \inst|inst2|addNo~31_combout\);

-- Location: FF_X30_Y14_N25
\inst|inst1|addNo[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst2|addNo~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|addNo\(31));

-- Location: LCCOMB_X30_Y14_N0
\inst|inst2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal0~8_combout\ = (!\inst|inst1|addNo\(31) & (!\inst|inst1|addNo\(28) & (!\inst|inst1|addNo\(29) & !\inst|inst1|addNo\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(31),
	datab => \inst|inst1|addNo\(28),
	datac => \inst|inst1|addNo\(29),
	datad => \inst|inst1|addNo\(30),
	combout => \inst|inst2|Equal0~8_combout\);

-- Location: LCCOMB_X28_Y15_N12
\inst|inst2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal0~9_combout\ = (\inst|inst2|Equal0~6_combout\ & (\inst|inst2|Equal0~5_combout\ & (\inst|inst2|Equal0~7_combout\ & \inst|inst2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal0~6_combout\,
	datab => \inst|inst2|Equal0~5_combout\,
	datac => \inst|inst2|Equal0~7_combout\,
	datad => \inst|inst2|Equal0~8_combout\,
	combout => \inst|inst2|Equal0~9_combout\);

-- Location: LCCOMB_X28_Y15_N2
\inst|inst2|addNo~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~26_combout\ = (\inst|inst|state.NXTADDR~q\ & ((!\inst|inst2|Equal0~9_combout\) # (!\inst|inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datac => \inst|inst2|Equal0~4_combout\,
	datad => \inst|inst2|Equal0~9_combout\,
	combout => \inst|inst2|addNo~26_combout\);

-- Location: LCCOMB_X28_Y15_N0
\inst|inst2|addNo~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|addNo~27_combout\ = (\inst|inst1|addNo\(2) & (((\inst|inst2|Add0~4_combout\ & \inst|inst2|addNo~26_combout\)) # (!\inst|inst|state.NXTADDR~q\))) # (!\inst|inst1|addNo\(2) & (\inst|inst2|Add0~4_combout\ & ((\inst|inst2|addNo~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|addNo\(2),
	datab => \inst|inst2|Add0~4_combout\,
	datac => \inst|inst|state.NXTADDR~q\,
	datad => \inst|inst2|addNo~26_combout\,
	combout => \inst|inst2|addNo~27_combout\);

-- Location: LCCOMB_X30_Y14_N16
\inst|inst2|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal1~2_combout\ = (!\inst|inst2|addNo~4_combout\ & (!\inst|inst2|addNo~5_combout\ & ((\inst|inst|state.NXTADDR~q\) # (!\inst|inst1|addNo\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|addNo~4_combout\,
	datab => \inst|inst1|addNo\(30),
	datac => \inst|inst|state.NXTADDR~q\,
	datad => \inst|inst2|addNo~5_combout\,
	combout => \inst|inst2|Equal1~2_combout\);

-- Location: LCCOMB_X30_Y14_N30
\inst|inst2|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal1~3_combout\ = (!\inst|inst2|addNo~3_combout\ & (\inst|inst2|Equal1~2_combout\ & ((!\inst|inst2|Add0~60_combout\) # (!\inst|inst|state.NXTADDR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datab => \inst|inst2|Add0~60_combout\,
	datac => \inst|inst2|addNo~3_combout\,
	datad => \inst|inst2|Equal1~2_combout\,
	combout => \inst|inst2|Equal1~3_combout\);

-- Location: LCCOMB_X30_Y14_N20
\inst|inst2|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal1~4_combout\ = (!\inst|inst2|addNo~8_combout\ & (!\inst|inst2|addNo~7_combout\ & (!\inst|inst2|addNo~6_combout\ & !\inst|inst2|addNo~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|addNo~8_combout\,
	datab => \inst|inst2|addNo~7_combout\,
	datac => \inst|inst2|addNo~6_combout\,
	datad => \inst|inst2|addNo~9_combout\,
	combout => \inst|inst2|Equal1~4_combout\);

-- Location: LCCOMB_X30_Y15_N24
\inst|inst2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal1~0_combout\ = (!\inst|inst2|addNo~1_combout\ & (!\inst|inst2|addNo~2_combout\ & ((\inst|inst|state.NXTADDR~q\) # (!\inst|inst1|addNo\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datab => \inst|inst1|addNo\(31),
	datac => \inst|inst2|addNo~1_combout\,
	datad => \inst|inst2|addNo~2_combout\,
	combout => \inst|inst2|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y15_N30
\inst|inst2|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal1~1_combout\ = (\inst|inst2|Equal1~0_combout\ & (!\inst|inst2|addNo~0_combout\ & ((!\inst|inst2|Add0~62_combout\) # (!\inst|inst|state.NXTADDR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datab => \inst|inst2|Equal1~0_combout\,
	datac => \inst|inst2|addNo~0_combout\,
	datad => \inst|inst2|Add0~62_combout\,
	combout => \inst|inst2|Equal1~1_combout\);

-- Location: LCCOMB_X30_Y15_N20
\inst|inst2|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal1~5_combout\ = (!\inst|inst2|addNo~10_combout\ & (!\inst|inst2|addNo~11_combout\ & (!\inst|inst2|addNo~12_combout\ & !\inst|inst2|addNo~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|addNo~10_combout\,
	datab => \inst|inst2|addNo~11_combout\,
	datac => \inst|inst2|addNo~12_combout\,
	datad => \inst|inst2|addNo~13_combout\,
	combout => \inst|inst2|Equal1~5_combout\);

-- Location: LCCOMB_X30_Y14_N6
\inst|inst2|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal1~6_combout\ = (\inst|inst2|Equal1~3_combout\ & (\inst|inst2|Equal1~4_combout\ & (\inst|inst2|Equal1~1_combout\ & \inst|inst2|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal1~3_combout\,
	datab => \inst|inst2|Equal1~4_combout\,
	datac => \inst|inst2|Equal1~1_combout\,
	datad => \inst|inst2|Equal1~5_combout\,
	combout => \inst|inst2|Equal1~6_combout\);

-- Location: LCCOMB_X28_Y15_N24
\inst|inst2|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal1~9_combout\ = (!\inst|inst2|addNo~23_combout\ & (!\inst|inst2|addNo~22_combout\ & (!\inst|inst2|addNo~24_combout\ & !\inst|inst2|addNo~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|addNo~23_combout\,
	datab => \inst|inst2|addNo~22_combout\,
	datac => \inst|inst2|addNo~24_combout\,
	datad => \inst|inst2|addNo~25_combout\,
	combout => \inst|inst2|Equal1~9_combout\);

-- Location: LCCOMB_X30_Y15_N6
\inst|inst2|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal1~8_combout\ = (!\inst|inst2|addNo~18_combout\ & (!\inst|inst2|addNo~19_combout\ & (!\inst|inst2|addNo~20_combout\ & !\inst|inst2|addNo~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|addNo~18_combout\,
	datab => \inst|inst2|addNo~19_combout\,
	datac => \inst|inst2|addNo~20_combout\,
	datad => \inst|inst2|addNo~21_combout\,
	combout => \inst|inst2|Equal1~8_combout\);

-- Location: LCCOMB_X28_Y14_N12
\inst|inst2|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal1~7_combout\ = (!\inst|inst2|addNo~15_combout\ & (!\inst|inst2|addNo~14_combout\ & (!\inst|inst2|addNo~16_combout\ & !\inst|inst2|addNo~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|addNo~15_combout\,
	datab => \inst|inst2|addNo~14_combout\,
	datac => \inst|inst2|addNo~16_combout\,
	datad => \inst|inst2|addNo~17_combout\,
	combout => \inst|inst2|Equal1~7_combout\);

-- Location: LCCOMB_X28_Y14_N22
\inst|inst2|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal1~10_combout\ = (\inst|inst2|Equal1~9_combout\ & (\inst|inst2|Equal1~8_combout\ & \inst|inst2|Equal1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Equal1~9_combout\,
	datac => \inst|inst2|Equal1~8_combout\,
	datad => \inst|inst2|Equal1~7_combout\,
	combout => \inst|inst2|Equal1~10_combout\);

-- Location: LCCOMB_X27_Y14_N22
\inst|inst2|WideNor0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|WideNor0~5_combout\ = (\inst|inst2|addNo~27_combout\) # (((!\inst|inst2|Equal1~10_combout\) # (!\inst|inst2|Equal1~6_combout\)) # (!\inst|inst2|addNo~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|addNo~27_combout\,
	datab => \inst|inst2|addNo~29_combout\,
	datac => \inst|inst2|Equal1~6_combout\,
	datad => \inst|inst2|Equal1~10_combout\,
	combout => \inst|inst2|WideNor0~5_combout\);

-- Location: LCCOMB_X27_Y14_N12
\inst|inst2|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal13~0_combout\ = (\inst|inst2|addNo~27_combout\ & (\inst|inst2|Equal1~6_combout\ & \inst|inst2|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|addNo~27_combout\,
	datac => \inst|inst2|Equal1~6_combout\,
	datad => \inst|inst2|Equal1~10_combout\,
	combout => \inst|inst2|Equal13~0_combout\);

-- Location: LCCOMB_X27_Y14_N16
\inst|inst2|Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal13~1_combout\ = (!\inst|inst2|addNo~28_combout\ & (\inst|inst2|addNo~29_combout\ & (!\inst|inst2|addNo~30_combout\ & \inst|inst2|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|addNo~28_combout\,
	datab => \inst|inst2|addNo~29_combout\,
	datac => \inst|inst2|addNo~30_combout\,
	datad => \inst|inst2|Equal13~0_combout\,
	combout => \inst|inst2|Equal13~1_combout\);

-- Location: LCCOMB_X27_Y14_N24
\inst|inst1|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|WideOr0~combout\ = (\inst|inst2|Equal13~1_combout\) # (!\inst|inst2|WideNor0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2|WideNor0~5_combout\,
	datad => \inst|inst2|Equal13~1_combout\,
	combout => \inst|inst1|WideOr0~combout\);

-- Location: FF_X27_Y14_N25
\inst|inst1|Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst1|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|Data\(3));

-- Location: LCCOMB_X26_Y18_N4
\inst|inst3|datArray~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~114_combout\ = (!\inst|inst3|FS\(2) & (\inst|inst3|FS\(0) & (\inst|inst3|FS\(1) & !\inst|inst3|FS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|FS\(2),
	datab => \inst|inst3|FS\(0),
	datac => \inst|inst3|FS\(1),
	datad => \inst|inst3|FS\(3),
	combout => \inst|inst3|datArray~114_combout\);

-- Location: LCCOMB_X25_Y18_N14
\inst|inst3|datArray~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~115_combout\ = (\inst|inst3|state.STORE~q\ & \inst|inst3|datArray~114_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|state.STORE~q\,
	datad => \inst|inst3|datArray~114_combout\,
	combout => \inst|inst3|datArray~115_combout\);

-- Location: FF_X24_Y18_N7
\inst|inst3|datArray~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(3),
	sload => VCC,
	ena => \inst|inst3|datArray~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~36_q\);

-- Location: LCCOMB_X25_Y18_N30
\inst|inst3|datArray~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~109_combout\ = (!\inst|inst3|FS\(3) & (!\inst|inst3|FS\(2) & (\inst|inst3|FS\(1) & !\inst|inst3|FS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|FS\(3),
	datab => \inst|inst3|FS\(2),
	datac => \inst|inst3|FS\(1),
	datad => \inst|inst3|FS\(0),
	combout => \inst|inst3|datArray~109_combout\);

-- Location: LCCOMB_X25_Y18_N28
\inst|inst3|datArray~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~110_combout\ = (\inst|inst3|state.STORE~q\ & \inst|inst3|datArray~109_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.STORE~q\,
	datac => \inst|inst3|datArray~109_combout\,
	combout => \inst|inst3|datArray~110_combout\);

-- Location: FF_X24_Y18_N5
\inst|inst3|datArray~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(3),
	sload => VCC,
	ena => \inst|inst3|datArray~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~32_q\);

-- Location: LCCOMB_X25_Y18_N0
\inst|inst3|datArray~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~113_combout\ = (\inst|inst3|state.STORE~q\ & \inst|inst3|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.STORE~q\,
	datac => \inst|inst3|process_0~1_combout\,
	combout => \inst|inst3|datArray~113_combout\);

-- Location: FF_X25_Y18_N3
\inst|inst3|datArray~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(3),
	sload => VCC,
	ena => \inst|inst3|datArray~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~24_q\);

-- Location: LCCOMB_X25_Y18_N18
\inst|inst3|datArray~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~111_combout\ = (!\inst|inst3|FS\(3) & (!\inst|inst3|FS\(2) & (!\inst|inst3|FS\(1) & \inst|inst3|FS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|FS\(3),
	datab => \inst|inst3|FS\(2),
	datac => \inst|inst3|FS\(1),
	datad => \inst|inst3|FS\(0),
	combout => \inst|inst3|datArray~111_combout\);

-- Location: LCCOMB_X25_Y18_N8
\inst|inst3|datArray~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~112_combout\ = (\inst|inst3|state.STORE~q\ & \inst|inst3|datArray~111_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.STORE~q\,
	datad => \inst|inst3|datArray~111_combout\,
	combout => \inst|inst3|datArray~112_combout\);

-- Location: FF_X25_Y18_N9
\inst|inst3|datArray~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(3),
	sload => VCC,
	ena => \inst|inst3|datArray~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~28_q\);

-- Location: LCCOMB_X25_Y18_N2
\inst|inst3|datArray~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~95_combout\ = (\inst|inst3|OS\(1) & (\inst|inst3|OS\(0))) # (!\inst|inst3|OS\(1) & ((\inst|inst3|OS\(0) & ((\inst|inst3|datArray~28_q\))) # (!\inst|inst3|OS\(0) & (\inst|inst3|datArray~24_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS\(1),
	datab => \inst|inst3|OS\(0),
	datac => \inst|inst3|datArray~24_q\,
	datad => \inst|inst3|datArray~28_q\,
	combout => \inst|inst3|datArray~95_combout\);

-- Location: LCCOMB_X24_Y18_N4
\inst|inst3|datArray~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~96_combout\ = (\inst|inst3|OS\(1) & ((\inst|inst3|datArray~95_combout\ & (\inst|inst3|datArray~36_q\)) # (!\inst|inst3|datArray~95_combout\ & ((\inst|inst3|datArray~32_q\))))) # (!\inst|inst3|OS\(1) & 
-- (((\inst|inst3|datArray~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~36_q\,
	datab => \inst|inst3|OS\(1),
	datac => \inst|inst3|datArray~32_q\,
	datad => \inst|inst3|datArray~95_combout\,
	combout => \inst|inst3|datArray~96_combout\);

-- Location: LCCOMB_X26_Y18_N0
\inst|inst3|datArray~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~107_combout\ = (!\inst|inst3|FS\(2) & (\inst|inst3|FS\(0) & (\inst|inst3|FS\(1) & \inst|inst3|FS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|FS\(2),
	datab => \inst|inst3|FS\(0),
	datac => \inst|inst3|FS\(1),
	datad => \inst|inst3|FS\(3),
	combout => \inst|inst3|datArray~107_combout\);

-- Location: LCCOMB_X26_Y18_N10
\inst|inst3|datArray~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~108_combout\ = (\inst|inst3|state.STORE~q\ & \inst|inst3|datArray~107_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|state.STORE~q\,
	datad => \inst|inst3|datArray~107_combout\,
	combout => \inst|inst3|datArray~108_combout\);

-- Location: FF_X23_Y17_N11
\inst|inst3|datArray~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(3),
	sload => VCC,
	ena => \inst|inst3|datArray~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~68_q\);

-- Location: LCCOMB_X26_Y18_N16
\inst|inst3|datArray~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~103_combout\ = (!\inst|inst3|FS\(2) & (\inst|inst3|FS\(0) & (!\inst|inst3|FS\(1) & \inst|inst3|FS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|FS\(2),
	datab => \inst|inst3|FS\(0),
	datac => \inst|inst3|FS\(1),
	datad => \inst|inst3|FS\(3),
	combout => \inst|inst3|datArray~103_combout\);

-- Location: LCCOMB_X26_Y18_N30
\inst|inst3|datArray~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~104_combout\ = (\inst|inst3|state.STORE~q\ & \inst|inst3|datArray~103_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|state.STORE~q\,
	datad => \inst|inst3|datArray~103_combout\,
	combout => \inst|inst3|datArray~104_combout\);

-- Location: FF_X23_Y17_N21
\inst|inst3|datArray~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(3),
	sload => VCC,
	ena => \inst|inst3|datArray~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~60_q\);

-- Location: LCCOMB_X25_Y18_N20
\inst|inst3|datArray~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~101_combout\ = (\inst|inst3|FS\(3) & (!\inst|inst3|FS\(2) & (\inst|inst3|FS\(1) & !\inst|inst3|FS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|FS\(3),
	datab => \inst|inst3|FS\(2),
	datac => \inst|inst3|FS\(1),
	datad => \inst|inst3|FS\(0),
	combout => \inst|inst3|datArray~101_combout\);

-- Location: LCCOMB_X24_Y17_N24
\inst|inst3|datArray~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~102_combout\ = (\inst|inst3|state.STORE~q\ & \inst|inst3|datArray~101_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|state.STORE~q\,
	datad => \inst|inst3|datArray~101_combout\,
	combout => \inst|inst3|datArray~102_combout\);

-- Location: FF_X24_Y17_N21
\inst|inst3|datArray~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(3),
	sload => VCC,
	ena => \inst|inst3|datArray~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~64_q\);

-- Location: LCCOMB_X25_Y18_N4
\inst|inst3|datArray~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~105_combout\ = (\inst|inst3|FS\(3) & (!\inst|inst3|FS\(2) & (!\inst|inst3|FS\(1) & !\inst|inst3|FS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|FS\(3),
	datab => \inst|inst3|FS\(2),
	datac => \inst|inst3|FS\(1),
	datad => \inst|inst3|FS\(0),
	combout => \inst|inst3|datArray~105_combout\);

-- Location: LCCOMB_X24_Y17_N22
\inst|inst3|datArray~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~106_combout\ = (\inst|inst3|datArray~105_combout\ & \inst|inst3|state.STORE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|datArray~105_combout\,
	datad => \inst|inst3|state.STORE~q\,
	combout => \inst|inst3|datArray~106_combout\);

-- Location: FF_X24_Y17_N7
\inst|inst3|datArray~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(3),
	sload => VCC,
	ena => \inst|inst3|datArray~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~56_q\);

-- Location: LCCOMB_X24_Y17_N6
\inst|inst3|datArray~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~93_combout\ = (\inst|inst3|OS\(0) & (((\inst|inst3|OS\(1))))) # (!\inst|inst3|OS\(0) & ((\inst|inst3|OS\(1) & (\inst|inst3|datArray~64_q\)) # (!\inst|inst3|OS\(1) & ((\inst|inst3|datArray~56_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~64_q\,
	datab => \inst|inst3|OS\(0),
	datac => \inst|inst3|datArray~56_q\,
	datad => \inst|inst3|OS\(1),
	combout => \inst|inst3|datArray~93_combout\);

-- Location: LCCOMB_X23_Y17_N20
\inst|inst3|datArray~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~94_combout\ = (\inst|inst3|OS\(0) & ((\inst|inst3|datArray~93_combout\ & (\inst|inst3|datArray~68_q\)) # (!\inst|inst3|datArray~93_combout\ & ((\inst|inst3|datArray~60_q\))))) # (!\inst|inst3|OS\(0) & 
-- (((\inst|inst3|datArray~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~68_q\,
	datab => \inst|inst3|OS\(0),
	datac => \inst|inst3|datArray~60_q\,
	datad => \inst|inst3|datArray~93_combout\,
	combout => \inst|inst3|datArray~94_combout\);

-- Location: LCCOMB_X23_Y21_N18
\inst|inst3|datArray~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~97_combout\ = (!\inst|inst3|OS\(2) & ((\inst|inst3|OS\(3) & ((\inst|inst3|datArray~94_combout\))) # (!\inst|inst3|OS\(3) & (\inst|inst3|datArray~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS\(3),
	datab => \inst|inst3|OS\(2),
	datac => \inst|inst3|datArray~96_combout\,
	datad => \inst|inst3|datArray~94_combout\,
	combout => \inst|inst3|datArray~97_combout\);

-- Location: LCCOMB_X26_Y18_N8
\inst|inst3|datArray~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~122_combout\ = (\inst|inst3|FS\(2) & (\inst|inst3|FS\(0) & (\inst|inst3|FS\(1) & !\inst|inst3|FS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|FS\(2),
	datab => \inst|inst3|FS\(0),
	datac => \inst|inst3|FS\(1),
	datad => \inst|inst3|FS\(3),
	combout => \inst|inst3|datArray~122_combout\);

-- Location: LCCOMB_X26_Y17_N18
\inst|inst3|datArray~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~123_combout\ = (\inst|inst3|state.STORE~q\ & \inst|inst3|datArray~122_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|state.STORE~q\,
	datad => \inst|inst3|datArray~122_combout\,
	combout => \inst|inst3|datArray~123_combout\);

-- Location: FF_X26_Y17_N7
\inst|inst3|datArray~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(3),
	sload => VCC,
	ena => \inst|inst3|datArray~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~52_q\);

-- Location: LCCOMB_X26_Y18_N12
\inst|inst3|datArray~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~118_combout\ = (\inst|inst3|FS\(2) & (!\inst|inst3|FS\(0) & (\inst|inst3|FS\(1) & !\inst|inst3|FS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|FS\(2),
	datab => \inst|inst3|FS\(0),
	datac => \inst|inst3|FS\(1),
	datad => \inst|inst3|FS\(3),
	combout => \inst|inst3|datArray~118_combout\);

-- Location: LCCOMB_X26_Y17_N24
\inst|inst3|datArray~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~119_combout\ = (\inst|inst3|state.STORE~q\ & \inst|inst3|datArray~118_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|state.STORE~q\,
	datad => \inst|inst3|datArray~118_combout\,
	combout => \inst|inst3|datArray~119_combout\);

-- Location: FF_X26_Y17_N21
\inst|inst3|datArray~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(3),
	sload => VCC,
	ena => \inst|inst3|datArray~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~48_q\);

-- Location: LCCOMB_X26_Y18_N22
\inst|inst3|datArray~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~120_combout\ = (\inst|inst3|FS\(2) & (!\inst|inst3|FS\(0) & (!\inst|inst3|FS\(1) & !\inst|inst3|FS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|FS\(2),
	datab => \inst|inst3|FS\(0),
	datac => \inst|inst3|FS\(1),
	datad => \inst|inst3|FS\(3),
	combout => \inst|inst3|datArray~120_combout\);

-- Location: LCCOMB_X25_Y18_N12
\inst|inst3|datArray~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~121_combout\ = (\inst|inst3|state.STORE~q\ & \inst|inst3|datArray~120_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.STORE~q\,
	datad => \inst|inst3|datArray~120_combout\,
	combout => \inst|inst3|datArray~121_combout\);

-- Location: FF_X25_Y17_N3
\inst|inst3|datArray~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(3),
	sload => VCC,
	ena => \inst|inst3|datArray~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~40_q\);

-- Location: LCCOMB_X26_Y18_N2
\inst|inst3|datArray~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~116_combout\ = (\inst|inst3|FS\(2) & (\inst|inst3|FS\(0) & (!\inst|inst3|FS\(1) & !\inst|inst3|FS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|FS\(2),
	datab => \inst|inst3|FS\(0),
	datac => \inst|inst3|FS\(1),
	datad => \inst|inst3|FS\(3),
	combout => \inst|inst3|datArray~116_combout\);

-- Location: LCCOMB_X25_Y18_N24
\inst|inst3|datArray~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~117_combout\ = (\inst|inst3|state.STORE~q\ & \inst|inst3|datArray~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.STORE~q\,
	datad => \inst|inst3|datArray~116_combout\,
	combout => \inst|inst3|datArray~117_combout\);

-- Location: FF_X25_Y17_N29
\inst|inst3|datArray~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(3),
	sload => VCC,
	ena => \inst|inst3|datArray~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~44_q\);

-- Location: LCCOMB_X25_Y17_N2
\inst|inst3|datArray~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~98_combout\ = (\inst|inst3|OS\(0) & ((\inst|inst3|OS\(1)) # ((\inst|inst3|datArray~44_q\)))) # (!\inst|inst3|OS\(0) & (!\inst|inst3|OS\(1) & (\inst|inst3|datArray~40_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS\(0),
	datab => \inst|inst3|OS\(1),
	datac => \inst|inst3|datArray~40_q\,
	datad => \inst|inst3|datArray~44_q\,
	combout => \inst|inst3|datArray~98_combout\);

-- Location: LCCOMB_X26_Y17_N20
\inst|inst3|datArray~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~99_combout\ = (\inst|inst3|OS\(1) & ((\inst|inst3|datArray~98_combout\ & (\inst|inst3|datArray~52_q\)) # (!\inst|inst3|datArray~98_combout\ & ((\inst|inst3|datArray~48_q\))))) # (!\inst|inst3|OS\(1) & 
-- (((\inst|inst3|datArray~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~52_q\,
	datab => \inst|inst3|OS\(1),
	datac => \inst|inst3|datArray~48_q\,
	datad => \inst|inst3|datArray~98_combout\,
	combout => \inst|inst3|datArray~99_combout\);

-- Location: LCCOMB_X23_Y21_N26
\inst|inst3|datArray~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~100_combout\ = (\inst|inst3|datArray~97_combout\) # ((!\inst|inst3|OS\(3) & (\inst|inst3|OS\(2) & \inst|inst3|datArray~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS\(3),
	datab => \inst|inst3|OS\(2),
	datac => \inst|inst3|datArray~97_combout\,
	datad => \inst|inst3|datArray~99_combout\,
	combout => \inst|inst3|datArray~100_combout\);

-- Location: LCCOMB_X26_Y24_N0
\inst5|WideNor0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|WideNor0~0_combout\ = (\inst5|Equal0~9_combout\ & ((!\inst5|idx\(1)) # (!\inst5|idx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|idx\(2),
	datab => \inst5|Equal0~9_combout\,
	datad => \inst5|idx\(1),
	combout => \inst5|WideNor0~0_combout\);

-- Location: FF_X23_Y21_N27
\inst5|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst3|datArray~100_combout\,
	ena => \inst5|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataOut\(3));

-- Location: LCCOMB_X27_Y14_N2
\inst|inst1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|WideOr1~0_combout\ = (\inst|inst2|Equal13~0_combout\ & (((!\inst|inst2|addNo~28_combout\ & !\inst|inst2|addNo~30_combout\)) # (!\inst|inst2|addNo~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|addNo~28_combout\,
	datab => \inst|inst2|addNo~29_combout\,
	datac => \inst|inst2|addNo~30_combout\,
	datad => \inst|inst2|Equal13~0_combout\,
	combout => \inst|inst1|WideOr1~0_combout\);

-- Location: FF_X27_Y14_N3
\inst|inst1|Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst1|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|Data\(2));

-- Location: FF_X24_Y18_N11
\inst|inst3|datArray~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(2),
	sload => VCC,
	ena => \inst|inst3|datArray~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~35_q\);

-- Location: FF_X25_Y18_N13
\inst|inst3|datArray~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(2),
	sload => VCC,
	ena => \inst|inst3|datArray~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~27_q\);

-- Location: FF_X25_Y18_N27
\inst|inst3|datArray~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(2),
	sload => VCC,
	ena => \inst|inst3|datArray~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~23_q\);

-- Location: LCCOMB_X25_Y18_N26
\inst|inst3|datArray~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~71_combout\ = (\inst|inst3|OS\(0) & ((\inst|inst3|datArray~27_q\) # ((\inst|inst3|OS\(1))))) # (!\inst|inst3|OS\(0) & (((\inst|inst3|datArray~23_q\ & !\inst|inst3|OS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~27_q\,
	datab => \inst|inst3|OS\(0),
	datac => \inst|inst3|datArray~23_q\,
	datad => \inst|inst3|OS\(1),
	combout => \inst|inst3|datArray~71_combout\);

-- Location: FF_X24_Y18_N13
\inst|inst3|datArray~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(2),
	sload => VCC,
	ena => \inst|inst3|datArray~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~31_q\);

-- Location: LCCOMB_X24_Y18_N12
\inst|inst3|datArray~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~72_combout\ = (\inst|inst3|datArray~71_combout\ & ((\inst|inst3|datArray~35_q\) # ((!\inst|inst3|OS\(1))))) # (!\inst|inst3|datArray~71_combout\ & (((\inst|inst3|datArray~31_q\ & \inst|inst3|OS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~35_q\,
	datab => \inst|inst3|datArray~71_combout\,
	datac => \inst|inst3|datArray~31_q\,
	datad => \inst|inst3|OS\(1),
	combout => \inst|inst3|datArray~72_combout\);

-- Location: LCCOMB_X23_Y17_N2
\inst|inst3|datArray~67feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~67feeder_combout\ = \inst|inst1|Data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|Data\(2),
	combout => \inst|inst3|datArray~67feeder_combout\);

-- Location: FF_X23_Y17_N3
\inst|inst3|datArray~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst3|datArray~67feeder_combout\,
	ena => \inst|inst3|datArray~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~67_q\);

-- Location: FF_X24_Y17_N5
\inst|inst3|datArray~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(2),
	sload => VCC,
	ena => \inst|inst3|datArray~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~63_q\);

-- Location: LCCOMB_X23_Y17_N24
\inst|inst3|datArray~59feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~59feeder_combout\ = \inst|inst1|Data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|Data\(2),
	combout => \inst|inst3|datArray~59feeder_combout\);

-- Location: FF_X23_Y17_N25
\inst|inst3|datArray~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst3|datArray~59feeder_combout\,
	ena => \inst|inst3|datArray~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~59_q\);

-- Location: FF_X24_Y17_N11
\inst|inst3|datArray~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(2),
	sload => VCC,
	ena => \inst|inst3|datArray~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~55_q\);

-- Location: LCCOMB_X24_Y17_N10
\inst|inst3|datArray~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~69_combout\ = (\inst|inst3|OS\(0) & ((\inst|inst3|datArray~59_q\) # ((\inst|inst3|OS\(1))))) # (!\inst|inst3|OS\(0) & (((\inst|inst3|datArray~55_q\ & !\inst|inst3|OS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~59_q\,
	datab => \inst|inst3|OS\(0),
	datac => \inst|inst3|datArray~55_q\,
	datad => \inst|inst3|OS\(1),
	combout => \inst|inst3|datArray~69_combout\);

-- Location: LCCOMB_X24_Y17_N4
\inst|inst3|datArray~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~70_combout\ = (\inst|inst3|OS\(1) & ((\inst|inst3|datArray~69_combout\ & (\inst|inst3|datArray~67_q\)) # (!\inst|inst3|datArray~69_combout\ & ((\inst|inst3|datArray~63_q\))))) # (!\inst|inst3|OS\(1) & 
-- (((\inst|inst3|datArray~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~67_q\,
	datab => \inst|inst3|OS\(1),
	datac => \inst|inst3|datArray~63_q\,
	datad => \inst|inst3|datArray~69_combout\,
	combout => \inst|inst3|datArray~70_combout\);

-- Location: LCCOMB_X23_Y21_N20
\inst|inst3|datArray~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~73_combout\ = (!\inst|inst3|OS\(2) & ((\inst|inst3|OS\(3) & ((\inst|inst3|datArray~70_combout\))) # (!\inst|inst3|OS\(3) & (\inst|inst3|datArray~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS\(3),
	datab => \inst|inst3|OS\(2),
	datac => \inst|inst3|datArray~72_combout\,
	datad => \inst|inst3|datArray~70_combout\,
	combout => \inst|inst3|datArray~73_combout\);

-- Location: FF_X25_Y17_N17
\inst|inst3|datArray~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(2),
	sload => VCC,
	ena => \inst|inst3|datArray~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~43_q\);

-- Location: FF_X26_Y17_N23
\inst|inst3|datArray~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(2),
	sload => VCC,
	ena => \inst|inst3|datArray~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~51_q\);

-- Location: FF_X25_Y17_N11
\inst|inst3|datArray~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(2),
	sload => VCC,
	ena => \inst|inst3|datArray~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~39_q\);

-- Location: FF_X26_Y17_N29
\inst|inst3|datArray~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(2),
	sload => VCC,
	ena => \inst|inst3|datArray~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~47_q\);

-- Location: LCCOMB_X25_Y17_N10
\inst|inst3|datArray~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~74_combout\ = (\inst|inst3|OS\(0) & (\inst|inst3|OS\(1))) # (!\inst|inst3|OS\(0) & ((\inst|inst3|OS\(1) & ((\inst|inst3|datArray~47_q\))) # (!\inst|inst3|OS\(1) & (\inst|inst3|datArray~39_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS\(0),
	datab => \inst|inst3|OS\(1),
	datac => \inst|inst3|datArray~39_q\,
	datad => \inst|inst3|datArray~47_q\,
	combout => \inst|inst3|datArray~74_combout\);

-- Location: LCCOMB_X26_Y17_N22
\inst|inst3|datArray~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~75_combout\ = (\inst|inst3|OS\(0) & ((\inst|inst3|datArray~74_combout\ & ((\inst|inst3|datArray~51_q\))) # (!\inst|inst3|datArray~74_combout\ & (\inst|inst3|datArray~43_q\)))) # (!\inst|inst3|OS\(0) & 
-- (((\inst|inst3|datArray~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~43_q\,
	datab => \inst|inst3|OS\(0),
	datac => \inst|inst3|datArray~51_q\,
	datad => \inst|inst3|datArray~74_combout\,
	combout => \inst|inst3|datArray~75_combout\);

-- Location: LCCOMB_X23_Y21_N24
\inst|inst3|datArray~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~76_combout\ = (\inst|inst3|datArray~73_combout\) # ((!\inst|inst3|OS\(3) & (\inst|inst3|OS\(2) & \inst|inst3|datArray~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS\(3),
	datab => \inst|inst3|OS\(2),
	datac => \inst|inst3|datArray~73_combout\,
	datad => \inst|inst3|datArray~75_combout\,
	combout => \inst|inst3|datArray~76_combout\);

-- Location: FF_X23_Y21_N25
\inst5|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst3|datArray~76_combout\,
	ena => \inst5|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataOut\(2));

-- Location: LCCOMB_X28_Y14_N4
\inst|inst2|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal5~0_combout\ = (!\inst|inst2|addNo~29_combout\ & (\inst|inst2|addNo~27_combout\ & (\inst|inst2|Equal1~10_combout\ & \inst|inst2|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|addNo~29_combout\,
	datab => \inst|inst2|addNo~27_combout\,
	datac => \inst|inst2|Equal1~10_combout\,
	datad => \inst|inst2|Equal1~6_combout\,
	combout => \inst|inst2|Equal5~0_combout\);

-- Location: LCCOMB_X27_Y14_N30
\inst|inst2|Equal1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal1~11_combout\ = (\inst|inst2|Equal1~10_combout\ & (!\inst|inst2|addNo~27_combout\ & \inst|inst2|Equal1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|Equal1~10_combout\,
	datac => \inst|inst2|addNo~27_combout\,
	datad => \inst|inst2|Equal1~6_combout\,
	combout => \inst|inst2|Equal1~11_combout\);

-- Location: LCCOMB_X28_Y14_N8
\inst|inst1|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|WideOr2~combout\ = (\inst|inst2|addNo~28_combout\ & ((\inst|inst2|Equal5~0_combout\) # (\inst|inst2|Equal1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|addNo~28_combout\,
	datac => \inst|inst2|Equal5~0_combout\,
	datad => \inst|inst2|Equal1~11_combout\,
	combout => \inst|inst1|WideOr2~combout\);

-- Location: FF_X28_Y14_N9
\inst|inst1|Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst1|WideOr2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|Data\(1));

-- Location: FF_X23_Y17_N7
\inst|inst3|datArray~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(1),
	sload => VCC,
	ena => \inst|inst3|datArray~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~66_q\);

-- Location: FF_X23_Y17_N5
\inst|inst3|datArray~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(1),
	sload => VCC,
	ena => \inst|inst3|datArray~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~58_q\);

-- Location: FF_X24_Y17_N29
\inst|inst3|datArray~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(1),
	sload => VCC,
	ena => \inst|inst3|datArray~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~62_q\);

-- Location: FF_X24_Y17_N27
\inst|inst3|datArray~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(1),
	sload => VCC,
	ena => \inst|inst3|datArray~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~54_q\);

-- Location: LCCOMB_X24_Y17_N26
\inst|inst3|datArray~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~77_combout\ = (\inst|inst3|OS\(0) & (((\inst|inst3|OS\(1))))) # (!\inst|inst3|OS\(0) & ((\inst|inst3|OS\(1) & (\inst|inst3|datArray~62_q\)) # (!\inst|inst3|OS\(1) & ((\inst|inst3|datArray~54_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS\(0),
	datab => \inst|inst3|datArray~62_q\,
	datac => \inst|inst3|datArray~54_q\,
	datad => \inst|inst3|OS\(1),
	combout => \inst|inst3|datArray~77_combout\);

-- Location: LCCOMB_X23_Y17_N4
\inst|inst3|datArray~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~78_combout\ = (\inst|inst3|OS\(0) & ((\inst|inst3|datArray~77_combout\ & (\inst|inst3|datArray~66_q\)) # (!\inst|inst3|datArray~77_combout\ & ((\inst|inst3|datArray~58_q\))))) # (!\inst|inst3|OS\(0) & 
-- (((\inst|inst3|datArray~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~66_q\,
	datab => \inst|inst3|OS\(0),
	datac => \inst|inst3|datArray~58_q\,
	datad => \inst|inst3|datArray~77_combout\,
	combout => \inst|inst3|datArray~78_combout\);

-- Location: FF_X24_Y18_N9
\inst|inst3|datArray~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(1),
	sload => VCC,
	ena => \inst|inst3|datArray~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~30_q\);

-- Location: FF_X25_Y18_N11
\inst|inst3|datArray~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(1),
	sload => VCC,
	ena => \inst|inst3|datArray~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~22_q\);

-- Location: LCCOMB_X25_Y18_N10
\inst|inst3|datArray~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~79_combout\ = (\inst|inst3|OS\(0) & (((\inst|inst3|OS\(1))))) # (!\inst|inst3|OS\(0) & ((\inst|inst3|OS\(1) & (\inst|inst3|datArray~30_q\)) # (!\inst|inst3|OS\(1) & ((\inst|inst3|datArray~22_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~30_q\,
	datab => \inst|inst3|OS\(0),
	datac => \inst|inst3|datArray~22_q\,
	datad => \inst|inst3|OS\(1),
	combout => \inst|inst3|datArray~79_combout\);

-- Location: FF_X24_Y18_N3
\inst|inst3|datArray~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(1),
	sload => VCC,
	ena => \inst|inst3|datArray~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~34_q\);

-- Location: FF_X25_Y18_N17
\inst|inst3|datArray~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(1),
	sload => VCC,
	ena => \inst|inst3|datArray~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~26_q\);

-- Location: LCCOMB_X25_Y18_N16
\inst|inst3|datArray~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~80_combout\ = (\inst|inst3|datArray~79_combout\ & ((\inst|inst3|datArray~34_q\) # ((!\inst|inst3|OS\(0))))) # (!\inst|inst3|datArray~79_combout\ & (((\inst|inst3|datArray~26_q\ & \inst|inst3|OS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~79_combout\,
	datab => \inst|inst3|datArray~34_q\,
	datac => \inst|inst3|datArray~26_q\,
	datad => \inst|inst3|OS\(0),
	combout => \inst|inst3|datArray~80_combout\);

-- Location: LCCOMB_X23_Y21_N10
\inst|inst3|datArray~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~81_combout\ = (!\inst|inst3|OS\(2) & ((\inst|inst3|OS\(3) & (\inst|inst3|datArray~78_combout\)) # (!\inst|inst3|OS\(3) & ((\inst|inst3|datArray~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS\(3),
	datab => \inst|inst3|OS\(2),
	datac => \inst|inst3|datArray~78_combout\,
	datad => \inst|inst3|datArray~80_combout\,
	combout => \inst|inst3|datArray~81_combout\);

-- Location: FF_X26_Y17_N11
\inst|inst3|datArray~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(1),
	sload => VCC,
	ena => \inst|inst3|datArray~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~50_q\);

-- Location: FF_X26_Y17_N13
\inst|inst3|datArray~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(1),
	sload => VCC,
	ena => \inst|inst3|datArray~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~46_q\);

-- Location: FF_X25_Y17_N13
\inst|inst3|datArray~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(1),
	sload => VCC,
	ena => \inst|inst3|datArray~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~42_q\);

-- Location: FF_X25_Y17_N15
\inst|inst3|datArray~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(1),
	sload => VCC,
	ena => \inst|inst3|datArray~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~38_q\);

-- Location: LCCOMB_X25_Y17_N14
\inst|inst3|datArray~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~82_combout\ = (\inst|inst3|OS\(1) & (((\inst|inst3|OS\(0))))) # (!\inst|inst3|OS\(1) & ((\inst|inst3|OS\(0) & (\inst|inst3|datArray~42_q\)) # (!\inst|inst3|OS\(0) & ((\inst|inst3|datArray~38_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~42_q\,
	datab => \inst|inst3|OS\(1),
	datac => \inst|inst3|datArray~38_q\,
	datad => \inst|inst3|OS\(0),
	combout => \inst|inst3|datArray~82_combout\);

-- Location: LCCOMB_X26_Y17_N12
\inst|inst3|datArray~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~83_combout\ = (\inst|inst3|OS\(1) & ((\inst|inst3|datArray~82_combout\ & (\inst|inst3|datArray~50_q\)) # (!\inst|inst3|datArray~82_combout\ & ((\inst|inst3|datArray~46_q\))))) # (!\inst|inst3|OS\(1) & 
-- (((\inst|inst3|datArray~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~50_q\,
	datab => \inst|inst3|OS\(1),
	datac => \inst|inst3|datArray~46_q\,
	datad => \inst|inst3|datArray~82_combout\,
	combout => \inst|inst3|datArray~83_combout\);

-- Location: LCCOMB_X23_Y21_N22
\inst|inst3|datArray~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~84_combout\ = (\inst|inst3|datArray~81_combout\) # ((!\inst|inst3|OS\(3) & (\inst|inst3|datArray~83_combout\ & \inst|inst3|OS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS\(3),
	datab => \inst|inst3|datArray~81_combout\,
	datac => \inst|inst3|datArray~83_combout\,
	datad => \inst|inst3|OS\(2),
	combout => \inst|inst3|datArray~84_combout\);

-- Location: FF_X23_Y21_N23
\inst5|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst3|datArray~84_combout\,
	ena => \inst5|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataOut\(1));

-- Location: LCCOMB_X28_Y14_N26
\inst|inst2|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal2~1_combout\ = (\inst|inst2|addNo~30_combout\ & (!\inst|inst2|addNo~27_combout\ & (\inst|inst2|Equal1~10_combout\ & \inst|inst2|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|addNo~30_combout\,
	datab => \inst|inst2|addNo~27_combout\,
	datac => \inst|inst2|Equal1~10_combout\,
	datad => \inst|inst2|Equal1~6_combout\,
	combout => \inst|inst2|Equal2~1_combout\);

-- Location: LCCOMB_X28_Y14_N2
\inst|inst2|Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal6~2_combout\ = (\inst|inst2|Equal5~0_combout\ & ((\inst|inst|state.NXTADDR~q\ & ((\inst|inst2|Add0~0_combout\))) # (!\inst|inst|state.NXTADDR~q\ & (\inst|inst1|addNo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|state.NXTADDR~q\,
	datab => \inst|inst1|addNo\(0),
	datac => \inst|inst2|Add0~0_combout\,
	datad => \inst|inst2|Equal5~0_combout\,
	combout => \inst|inst2|Equal6~2_combout\);

-- Location: LCCOMB_X28_Y14_N14
\inst|inst1|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|WideOr3~combout\ = (\inst|inst2|Equal2~1_combout\) # (\inst|inst2|Equal6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2|Equal2~1_combout\,
	datad => \inst|inst2|Equal6~2_combout\,
	combout => \inst|inst1|WideOr3~combout\);

-- Location: FF_X28_Y14_N15
\inst|inst1|Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst1|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|Data\(0));

-- Location: LCCOMB_X23_Y17_N14
\inst|inst3|datArray~65feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~65feeder_combout\ = \inst|inst1|Data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|Data\(0),
	combout => \inst|inst3|datArray~65feeder_combout\);

-- Location: FF_X23_Y17_N15
\inst|inst3|datArray~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst3|datArray~65feeder_combout\,
	ena => \inst|inst3|datArray~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~65_q\);

-- Location: FF_X24_Y17_N13
\inst|inst3|datArray~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(0),
	sload => VCC,
	ena => \inst|inst3|datArray~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~61_q\);

-- Location: LCCOMB_X23_Y17_N8
\inst|inst3|datArray~57feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~57feeder_combout\ = \inst|inst1|Data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|Data\(0),
	combout => \inst|inst3|datArray~57feeder_combout\);

-- Location: FF_X23_Y17_N9
\inst|inst3|datArray~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst3|datArray~57feeder_combout\,
	ena => \inst|inst3|datArray~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~57_q\);

-- Location: FF_X24_Y17_N19
\inst|inst3|datArray~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(0),
	sload => VCC,
	ena => \inst|inst3|datArray~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~53_q\);

-- Location: LCCOMB_X24_Y17_N18
\inst|inst3|datArray~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~85_combout\ = (\inst|inst3|OS\(0) & ((\inst|inst3|datArray~57_q\) # ((\inst|inst3|OS\(1))))) # (!\inst|inst3|OS\(0) & (((\inst|inst3|datArray~53_q\ & !\inst|inst3|OS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~57_q\,
	datab => \inst|inst3|OS\(0),
	datac => \inst|inst3|datArray~53_q\,
	datad => \inst|inst3|OS\(1),
	combout => \inst|inst3|datArray~85_combout\);

-- Location: LCCOMB_X24_Y17_N12
\inst|inst3|datArray~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~86_combout\ = (\inst|inst3|OS\(1) & ((\inst|inst3|datArray~85_combout\ & (\inst|inst3|datArray~65_q\)) # (!\inst|inst3|datArray~85_combout\ & ((\inst|inst3|datArray~61_q\))))) # (!\inst|inst3|OS\(1) & 
-- (((\inst|inst3|datArray~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~65_q\,
	datab => \inst|inst3|OS\(1),
	datac => \inst|inst3|datArray~61_q\,
	datad => \inst|inst3|datArray~85_combout\,
	combout => \inst|inst3|datArray~86_combout\);

-- Location: FF_X25_Y18_N7
\inst|inst3|datArray~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(0),
	sload => VCC,
	ena => \inst|inst3|datArray~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~21_q\);

-- Location: FF_X25_Y18_N25
\inst|inst3|datArray~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(0),
	sload => VCC,
	ena => \inst|inst3|datArray~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~25_q\);

-- Location: LCCOMB_X25_Y18_N6
\inst|inst3|datArray~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~87_combout\ = (\inst|inst3|OS\(1) & (\inst|inst3|OS\(0))) # (!\inst|inst3|OS\(1) & ((\inst|inst3|OS\(0) & ((\inst|inst3|datArray~25_q\))) # (!\inst|inst3|OS\(0) & (\inst|inst3|datArray~21_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS\(1),
	datab => \inst|inst3|OS\(0),
	datac => \inst|inst3|datArray~21_q\,
	datad => \inst|inst3|datArray~25_q\,
	combout => \inst|inst3|datArray~87_combout\);

-- Location: FF_X24_Y18_N19
\inst|inst3|datArray~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(0),
	sload => VCC,
	ena => \inst|inst3|datArray~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~33_q\);

-- Location: FF_X24_Y18_N29
\inst|inst3|datArray~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(0),
	sload => VCC,
	ena => \inst|inst3|datArray~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~29_q\);

-- Location: LCCOMB_X24_Y18_N28
\inst|inst3|datArray~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~88_combout\ = (\inst|inst3|datArray~87_combout\ & ((\inst|inst3|datArray~33_q\) # ((!\inst|inst3|OS\(1))))) # (!\inst|inst3|datArray~87_combout\ & (((\inst|inst3|datArray~29_q\ & \inst|inst3|OS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~87_combout\,
	datab => \inst|inst3|datArray~33_q\,
	datac => \inst|inst3|datArray~29_q\,
	datad => \inst|inst3|OS\(1),
	combout => \inst|inst3|datArray~88_combout\);

-- Location: LCCOMB_X23_Y21_N0
\inst|inst3|datArray~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~89_combout\ = (!\inst|inst3|OS\(2) & ((\inst|inst3|OS\(3) & (\inst|inst3|datArray~86_combout\)) # (!\inst|inst3|OS\(3) & ((\inst|inst3|datArray~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS\(3),
	datab => \inst|inst3|OS\(2),
	datac => \inst|inst3|datArray~86_combout\,
	datad => \inst|inst3|datArray~88_combout\,
	combout => \inst|inst3|datArray~89_combout\);

-- Location: FF_X26_Y17_N5
\inst|inst3|datArray~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(0),
	sload => VCC,
	ena => \inst|inst3|datArray~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~45_q\);

-- Location: FF_X25_Y17_N19
\inst|inst3|datArray~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(0),
	sload => VCC,
	ena => \inst|inst3|datArray~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~37_q\);

-- Location: LCCOMB_X25_Y17_N18
\inst|inst3|datArray~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~90_combout\ = (\inst|inst3|OS\(1) & ((\inst|inst3|datArray~45_q\) # ((\inst|inst3|OS\(0))))) # (!\inst|inst3|OS\(1) & (((\inst|inst3|datArray~37_q\ & !\inst|inst3|OS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|datArray~45_q\,
	datab => \inst|inst3|OS\(1),
	datac => \inst|inst3|datArray~37_q\,
	datad => \inst|inst3|OS\(0),
	combout => \inst|inst3|datArray~90_combout\);

-- Location: FF_X25_Y17_N9
\inst|inst3|datArray~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(0),
	sload => VCC,
	ena => \inst|inst3|datArray~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~41_q\);

-- Location: FF_X26_Y17_N3
\inst|inst3|datArray~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|inst1|Data\(0),
	sload => VCC,
	ena => \inst|inst3|datArray~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|datArray~49_q\);

-- Location: LCCOMB_X25_Y17_N8
\inst|inst3|datArray~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~91_combout\ = (\inst|inst3|OS\(0) & ((\inst|inst3|datArray~90_combout\ & ((\inst|inst3|datArray~49_q\))) # (!\inst|inst3|datArray~90_combout\ & (\inst|inst3|datArray~41_q\)))) # (!\inst|inst3|OS\(0) & 
-- (\inst|inst3|datArray~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS\(0),
	datab => \inst|inst3|datArray~90_combout\,
	datac => \inst|inst3|datArray~41_q\,
	datad => \inst|inst3|datArray~49_q\,
	combout => \inst|inst3|datArray~91_combout\);

-- Location: LCCOMB_X23_Y21_N4
\inst|inst3|datArray~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|datArray~92_combout\ = (\inst|inst3|datArray~89_combout\) # ((!\inst|inst3|OS\(3) & (\inst|inst3|OS\(2) & \inst|inst3|datArray~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|OS\(3),
	datab => \inst|inst3|OS\(2),
	datac => \inst|inst3|datArray~89_combout\,
	datad => \inst|inst3|datArray~91_combout\,
	combout => \inst|inst3|datArray~92_combout\);

-- Location: FF_X23_Y21_N5
\inst5|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst3|datArray~92_combout\,
	ena => \inst5|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataOut\(0));

-- Location: LCCOMB_X19_Y25_N2
\inst11|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux0~0_combout\ = (\inst11|Add4~0_combout\ & ((\inst11|Add4~2_combout\) # ((\inst5|dataOut\(1))))) # (!\inst11|Add4~0_combout\ & (!\inst11|Add4~2_combout\ & ((\inst5|dataOut\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add4~0_combout\,
	datab => \inst11|Add4~2_combout\,
	datac => \inst5|dataOut\(1),
	datad => \inst5|dataOut\(0),
	combout => \inst11|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y25_N20
\inst11|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux0~1_combout\ = (\inst11|Add4~2_combout\ & ((\inst11|Mux0~0_combout\ & (\inst5|dataOut\(3))) # (!\inst11|Mux0~0_combout\ & ((\inst5|dataOut\(2)))))) # (!\inst11|Add4~2_combout\ & (((\inst11|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut\(3),
	datab => \inst11|Add4~2_combout\,
	datac => \inst5|dataOut\(2),
	datad => \inst11|Mux0~0_combout\,
	combout => \inst11|Mux0~1_combout\);

-- Location: LCCOMB_X19_Y25_N18
\inst11|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux0~2_combout\ = (!\inst11|Add4~4_combout\ & (!\inst11|Add4~6_combout\ & \inst11|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add4~4_combout\,
	datac => \inst11|Add4~6_combout\,
	datad => \inst11|Mux0~1_combout\,
	combout => \inst11|Mux0~2_combout\);

-- Location: FF_X19_Y25_N19
\inst11|MOSI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst11|Mux0~2_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|MOSI~q\);

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

-- Location: FF_X19_Y24_N3
\inst11|PP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~2_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(1));

-- Location: LCCOMB_X19_Y24_N0
\inst11|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~0_combout\ = \inst11|PP\(0) $ (VCC)
-- \inst11|Add5~1\ = CARRY(\inst11|PP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(0),
	datad => VCC,
	combout => \inst11|Add5~0_combout\,
	cout => \inst11|Add5~1\);

-- Location: FF_X19_Y24_N1
\inst11|PP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~0_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(0));

-- Location: LCCOMB_X19_Y24_N2
\inst11|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~2_combout\ = (\inst11|PP\(1) & (\inst11|Add5~1\ & VCC)) # (!\inst11|PP\(1) & (!\inst11|Add5~1\))
-- \inst11|Add5~3\ = CARRY((!\inst11|PP\(1) & !\inst11|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(1),
	datad => VCC,
	cin => \inst11|Add5~1\,
	combout => \inst11|Add5~2_combout\,
	cout => \inst11|Add5~3\);

-- Location: FF_X19_Y24_N5
\inst11|PP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~4_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(2));

-- Location: LCCOMB_X19_Y24_N4
\inst11|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~4_combout\ = (\inst11|PP\(2) & ((GND) # (!\inst11|Add5~3\))) # (!\inst11|PP\(2) & (\inst11|Add5~3\ $ (GND)))
-- \inst11|Add5~5\ = CARRY((\inst11|PP\(2)) # (!\inst11|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(2),
	datad => VCC,
	cin => \inst11|Add5~3\,
	combout => \inst11|Add5~4_combout\,
	cout => \inst11|Add5~5\);

-- Location: LCCOMB_X19_Y26_N14
\inst11|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal9~0_combout\ = (!\inst11|Add5~2_combout\ & !\inst11|Add5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add5~2_combout\,
	datad => \inst11|Add5~4_combout\,
	combout => \inst11|Equal9~0_combout\);

-- Location: FF_X19_Y24_N7
\inst11|PP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~6_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(3));

-- Location: LCCOMB_X19_Y24_N6
\inst11|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~6_combout\ = (\inst11|PP\(3) & (\inst11|Add5~5\ & VCC)) # (!\inst11|PP\(3) & (!\inst11|Add5~5\))
-- \inst11|Add5~7\ = CARRY((!\inst11|PP\(3) & !\inst11|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|PP\(3),
	datad => VCC,
	cin => \inst11|Add5~5\,
	combout => \inst11|Add5~6_combout\,
	cout => \inst11|Add5~7\);

-- Location: LCCOMB_X19_Y26_N28
\inst11|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Decoder0~0_combout\ = (!\inst11|Add5~6_combout\ & (!\inst11|Add5~0_combout\ & \inst11|MOSI~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add5~6_combout\,
	datab => \inst11|Add5~0_combout\,
	datad => \inst11|MOSI~0_combout\,
	combout => \inst11|Decoder0~0_combout\);

-- Location: LCCOMB_X19_Y26_N8
\inst11|dwReg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|dwReg[0]~0_combout\ = (\inst11|Equal9~0_combout\ & ((\inst11|Decoder0~0_combout\ & (\MISO~input_o\)) # (!\inst11|Decoder0~0_combout\ & ((\inst11|dwReg\(0)))))) # (!\inst11|Equal9~0_combout\ & (((\inst11|dwReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MISO~input_o\,
	datab => \inst11|Equal9~0_combout\,
	datac => \inst11|dwReg\(0),
	datad => \inst11|Decoder0~0_combout\,
	combout => \inst11|dwReg[0]~0_combout\);

-- Location: FF_X19_Y26_N9
\inst11|dwReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|dwReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dwReg\(0));

-- Location: FF_X19_Y24_N17
\inst11|PP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~16_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(8));

-- Location: LCCOMB_X19_Y24_N8
\inst11|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~8_combout\ = (\inst11|PP\(4) & (\inst11|Add5~7\ $ (GND))) # (!\inst11|PP\(4) & ((GND) # (!\inst11|Add5~7\)))
-- \inst11|Add5~9\ = CARRY((!\inst11|Add5~7\) # (!\inst11|PP\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|PP\(4),
	datad => VCC,
	cin => \inst11|Add5~7\,
	combout => \inst11|Add5~8_combout\,
	cout => \inst11|Add5~9\);

-- Location: LCCOMB_X20_Y23_N0
\inst11|PP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|PP~0_combout\ = (!\inst11|Add5~8_combout\ & !\inst11|Equal9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add5~8_combout\,
	datad => \inst11|Equal9~10_combout\,
	combout => \inst11|PP~0_combout\);

-- Location: FF_X20_Y23_N1
\inst11|PP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|PP~0_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(4));

-- Location: LCCOMB_X19_Y24_N10
\inst11|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~10_combout\ = (\inst11|PP\(5) & (\inst11|Add5~9\ & VCC)) # (!\inst11|PP\(5) & (!\inst11|Add5~9\))
-- \inst11|Add5~11\ = CARRY((!\inst11|PP\(5) & !\inst11|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|PP\(5),
	datad => VCC,
	cin => \inst11|Add5~9\,
	combout => \inst11|Add5~10_combout\,
	cout => \inst11|Add5~11\);

-- Location: FF_X19_Y24_N11
\inst11|PP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~10_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(5));

-- Location: LCCOMB_X19_Y24_N12
\inst11|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~12_combout\ = (\inst11|PP\(6) & ((GND) # (!\inst11|Add5~11\))) # (!\inst11|PP\(6) & (\inst11|Add5~11\ $ (GND)))
-- \inst11|Add5~13\ = CARRY((\inst11|PP\(6)) # (!\inst11|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|PP\(6),
	datad => VCC,
	cin => \inst11|Add5~11\,
	combout => \inst11|Add5~12_combout\,
	cout => \inst11|Add5~13\);

-- Location: FF_X19_Y24_N13
\inst11|PP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~12_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(6));

-- Location: LCCOMB_X19_Y24_N14
\inst11|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~14_combout\ = (\inst11|PP\(7) & (\inst11|Add5~13\ & VCC)) # (!\inst11|PP\(7) & (!\inst11|Add5~13\))
-- \inst11|Add5~15\ = CARRY((!\inst11|PP\(7) & !\inst11|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(7),
	datad => VCC,
	cin => \inst11|Add5~13\,
	combout => \inst11|Add5~14_combout\,
	cout => \inst11|Add5~15\);

-- Location: FF_X19_Y24_N15
\inst11|PP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~14_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(7));

-- Location: LCCOMB_X19_Y24_N16
\inst11|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~16_combout\ = (\inst11|PP\(8) & ((GND) # (!\inst11|Add5~15\))) # (!\inst11|PP\(8) & (\inst11|Add5~15\ $ (GND)))
-- \inst11|Add5~17\ = CARRY((\inst11|PP\(8)) # (!\inst11|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(8),
	datad => VCC,
	cin => \inst11|Add5~15\,
	combout => \inst11|Add5~16_combout\,
	cout => \inst11|Add5~17\);

-- Location: FF_X19_Y24_N19
\inst11|PP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~18_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(9));

-- Location: LCCOMB_X19_Y24_N18
\inst11|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~18_combout\ = (\inst11|PP\(9) & (\inst11|Add5~17\ & VCC)) # (!\inst11|PP\(9) & (!\inst11|Add5~17\))
-- \inst11|Add5~19\ = CARRY((!\inst11|PP\(9) & !\inst11|Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(9),
	datad => VCC,
	cin => \inst11|Add5~17\,
	combout => \inst11|Add5~18_combout\,
	cout => \inst11|Add5~19\);

-- Location: FF_X19_Y24_N21
\inst11|PP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~20_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(10));

-- Location: LCCOMB_X19_Y24_N20
\inst11|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~20_combout\ = (\inst11|PP\(10) & ((GND) # (!\inst11|Add5~19\))) # (!\inst11|PP\(10) & (\inst11|Add5~19\ $ (GND)))
-- \inst11|Add5~21\ = CARRY((\inst11|PP\(10)) # (!\inst11|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(10),
	datad => VCC,
	cin => \inst11|Add5~19\,
	combout => \inst11|Add5~20_combout\,
	cout => \inst11|Add5~21\);

-- Location: FF_X19_Y24_N23
\inst11|PP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~22_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(11));

-- Location: LCCOMB_X19_Y24_N22
\inst11|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~22_combout\ = (\inst11|PP\(11) & (\inst11|Add5~21\ & VCC)) # (!\inst11|PP\(11) & (!\inst11|Add5~21\))
-- \inst11|Add5~23\ = CARRY((!\inst11|PP\(11) & !\inst11|Add5~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|PP\(11),
	datad => VCC,
	cin => \inst11|Add5~21\,
	combout => \inst11|Add5~22_combout\,
	cout => \inst11|Add5~23\);

-- Location: LCCOMB_X18_Y24_N16
\inst11|Equal9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal9~3_combout\ = (!\inst11|Add5~16_combout\ & (!\inst11|Add5~18_combout\ & (!\inst11|Add5~20_combout\ & !\inst11|Add5~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add5~16_combout\,
	datab => \inst11|Add5~18_combout\,
	datac => \inst11|Add5~20_combout\,
	datad => \inst11|Add5~22_combout\,
	combout => \inst11|Equal9~3_combout\);

-- Location: LCCOMB_X20_Y24_N30
\inst11|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal9~1_combout\ = (!\inst11|Add5~10_combout\ & (!\inst11|Add5~14_combout\ & (!\inst11|Add5~12_combout\ & !\inst11|Add5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add5~10_combout\,
	datab => \inst11|Add5~14_combout\,
	datac => \inst11|Add5~12_combout\,
	datad => \inst11|Add5~8_combout\,
	combout => \inst11|Equal9~1_combout\);

-- Location: LCCOMB_X20_Y23_N18
\inst11|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal9~2_combout\ = (!\inst11|Add5~6_combout\ & (!\inst11|Add5~0_combout\ & (\inst11|Equal9~1_combout\ & \inst11|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add5~6_combout\,
	datab => \inst11|Add5~0_combout\,
	datac => \inst11|Equal9~1_combout\,
	datad => \inst11|Equal9~0_combout\,
	combout => \inst11|Equal9~2_combout\);

-- Location: FF_X19_Y23_N11
\inst11|PP[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~42_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(21));

-- Location: LCCOMB_X19_Y24_N24
\inst11|Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~24_combout\ = (\inst11|PP\(12) & ((GND) # (!\inst11|Add5~23\))) # (!\inst11|PP\(12) & (\inst11|Add5~23\ $ (GND)))
-- \inst11|Add5~25\ = CARRY((\inst11|PP\(12)) # (!\inst11|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(12),
	datad => VCC,
	cin => \inst11|Add5~23\,
	combout => \inst11|Add5~24_combout\,
	cout => \inst11|Add5~25\);

-- Location: FF_X19_Y24_N25
\inst11|PP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~24_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(12));

-- Location: LCCOMB_X19_Y24_N26
\inst11|Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~26_combout\ = (\inst11|PP\(13) & (\inst11|Add5~25\ & VCC)) # (!\inst11|PP\(13) & (!\inst11|Add5~25\))
-- \inst11|Add5~27\ = CARRY((!\inst11|PP\(13) & !\inst11|Add5~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|PP\(13),
	datad => VCC,
	cin => \inst11|Add5~25\,
	combout => \inst11|Add5~26_combout\,
	cout => \inst11|Add5~27\);

-- Location: FF_X19_Y24_N27
\inst11|PP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~26_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(13));

-- Location: LCCOMB_X19_Y24_N28
\inst11|Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~28_combout\ = (\inst11|PP\(14) & ((GND) # (!\inst11|Add5~27\))) # (!\inst11|PP\(14) & (\inst11|Add5~27\ $ (GND)))
-- \inst11|Add5~29\ = CARRY((\inst11|PP\(14)) # (!\inst11|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(14),
	datad => VCC,
	cin => \inst11|Add5~27\,
	combout => \inst11|Add5~28_combout\,
	cout => \inst11|Add5~29\);

-- Location: FF_X19_Y24_N29
\inst11|PP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~28_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(14));

-- Location: LCCOMB_X19_Y24_N30
\inst11|Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~30_combout\ = (\inst11|PP\(15) & (\inst11|Add5~29\ & VCC)) # (!\inst11|PP\(15) & (!\inst11|Add5~29\))
-- \inst11|Add5~31\ = CARRY((!\inst11|PP\(15) & !\inst11|Add5~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|PP\(15),
	datad => VCC,
	cin => \inst11|Add5~29\,
	combout => \inst11|Add5~30_combout\,
	cout => \inst11|Add5~31\);

-- Location: FF_X19_Y24_N31
\inst11|PP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~30_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(15));

-- Location: LCCOMB_X19_Y23_N0
\inst11|Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~32_combout\ = (\inst11|PP\(16) & ((GND) # (!\inst11|Add5~31\))) # (!\inst11|PP\(16) & (\inst11|Add5~31\ $ (GND)))
-- \inst11|Add5~33\ = CARRY((\inst11|PP\(16)) # (!\inst11|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(16),
	datad => VCC,
	cin => \inst11|Add5~31\,
	combout => \inst11|Add5~32_combout\,
	cout => \inst11|Add5~33\);

-- Location: FF_X19_Y23_N1
\inst11|PP[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~32_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(16));

-- Location: LCCOMB_X19_Y23_N2
\inst11|Add5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~34_combout\ = (\inst11|PP\(17) & (\inst11|Add5~33\ & VCC)) # (!\inst11|PP\(17) & (!\inst11|Add5~33\))
-- \inst11|Add5~35\ = CARRY((!\inst11|PP\(17) & !\inst11|Add5~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(17),
	datad => VCC,
	cin => \inst11|Add5~33\,
	combout => \inst11|Add5~34_combout\,
	cout => \inst11|Add5~35\);

-- Location: FF_X19_Y23_N3
\inst11|PP[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~34_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(17));

-- Location: LCCOMB_X19_Y23_N4
\inst11|Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~36_combout\ = (\inst11|PP\(18) & ((GND) # (!\inst11|Add5~35\))) # (!\inst11|PP\(18) & (\inst11|Add5~35\ $ (GND)))
-- \inst11|Add5~37\ = CARRY((\inst11|PP\(18)) # (!\inst11|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(18),
	datad => VCC,
	cin => \inst11|Add5~35\,
	combout => \inst11|Add5~36_combout\,
	cout => \inst11|Add5~37\);

-- Location: FF_X19_Y23_N5
\inst11|PP[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~36_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(18));

-- Location: LCCOMB_X19_Y23_N6
\inst11|Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~38_combout\ = (\inst11|PP\(19) & (\inst11|Add5~37\ & VCC)) # (!\inst11|PP\(19) & (!\inst11|Add5~37\))
-- \inst11|Add5~39\ = CARRY((!\inst11|PP\(19) & !\inst11|Add5~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|PP\(19),
	datad => VCC,
	cin => \inst11|Add5~37\,
	combout => \inst11|Add5~38_combout\,
	cout => \inst11|Add5~39\);

-- Location: FF_X19_Y23_N7
\inst11|PP[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~38_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(19));

-- Location: LCCOMB_X19_Y23_N8
\inst11|Add5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~40_combout\ = (\inst11|PP\(20) & ((GND) # (!\inst11|Add5~39\))) # (!\inst11|PP\(20) & (\inst11|Add5~39\ $ (GND)))
-- \inst11|Add5~41\ = CARRY((\inst11|PP\(20)) # (!\inst11|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(20),
	datad => VCC,
	cin => \inst11|Add5~39\,
	combout => \inst11|Add5~40_combout\,
	cout => \inst11|Add5~41\);

-- Location: FF_X19_Y23_N9
\inst11|PP[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~40_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(20));

-- Location: LCCOMB_X19_Y23_N10
\inst11|Add5~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~42_combout\ = (\inst11|PP\(21) & (\inst11|Add5~41\ & VCC)) # (!\inst11|PP\(21) & (!\inst11|Add5~41\))
-- \inst11|Add5~43\ = CARRY((!\inst11|PP\(21) & !\inst11|Add5~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|PP\(21),
	datad => VCC,
	cin => \inst11|Add5~41\,
	combout => \inst11|Add5~42_combout\,
	cout => \inst11|Add5~43\);

-- Location: FF_X19_Y23_N13
\inst11|PP[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~44_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(22));

-- Location: LCCOMB_X19_Y23_N12
\inst11|Add5~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~44_combout\ = (\inst11|PP\(22) & ((GND) # (!\inst11|Add5~43\))) # (!\inst11|PP\(22) & (\inst11|Add5~43\ $ (GND)))
-- \inst11|Add5~45\ = CARRY((\inst11|PP\(22)) # (!\inst11|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|PP\(22),
	datad => VCC,
	cin => \inst11|Add5~43\,
	combout => \inst11|Add5~44_combout\,
	cout => \inst11|Add5~45\);

-- Location: FF_X19_Y23_N15
\inst11|PP[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~46_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(23));

-- Location: LCCOMB_X19_Y23_N14
\inst11|Add5~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~46_combout\ = (\inst11|PP\(23) & (\inst11|Add5~45\ & VCC)) # (!\inst11|PP\(23) & (!\inst11|Add5~45\))
-- \inst11|Add5~47\ = CARRY((!\inst11|PP\(23) & !\inst11|Add5~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(23),
	datad => VCC,
	cin => \inst11|Add5~45\,
	combout => \inst11|Add5~46_combout\,
	cout => \inst11|Add5~47\);

-- Location: LCCOMB_X20_Y23_N10
\inst11|Equal9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal9~6_combout\ = (!\inst11|Add5~42_combout\ & (!\inst11|Add5~40_combout\ & (!\inst11|Add5~44_combout\ & !\inst11|Add5~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add5~42_combout\,
	datab => \inst11|Add5~40_combout\,
	datac => \inst11|Add5~44_combout\,
	datad => \inst11|Add5~46_combout\,
	combout => \inst11|Equal9~6_combout\);

-- Location: LCCOMB_X20_Y23_N24
\inst11|Equal9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal9~5_combout\ = (!\inst11|Add5~34_combout\ & (!\inst11|Add5~36_combout\ & (!\inst11|Add5~38_combout\ & !\inst11|Add5~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add5~34_combout\,
	datab => \inst11|Add5~36_combout\,
	datac => \inst11|Add5~38_combout\,
	datad => \inst11|Add5~32_combout\,
	combout => \inst11|Equal9~5_combout\);

-- Location: FF_X19_Y23_N27
\inst11|PP[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~58_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(29));

-- Location: LCCOMB_X19_Y23_N16
\inst11|Add5~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~48_combout\ = (\inst11|PP\(24) & ((GND) # (!\inst11|Add5~47\))) # (!\inst11|PP\(24) & (\inst11|Add5~47\ $ (GND)))
-- \inst11|Add5~49\ = CARRY((\inst11|PP\(24)) # (!\inst11|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(24),
	datad => VCC,
	cin => \inst11|Add5~47\,
	combout => \inst11|Add5~48_combout\,
	cout => \inst11|Add5~49\);

-- Location: FF_X19_Y23_N17
\inst11|PP[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~48_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(24));

-- Location: LCCOMB_X19_Y23_N18
\inst11|Add5~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~50_combout\ = (\inst11|PP\(25) & (\inst11|Add5~49\ & VCC)) # (!\inst11|PP\(25) & (!\inst11|Add5~49\))
-- \inst11|Add5~51\ = CARRY((!\inst11|PP\(25) & !\inst11|Add5~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(25),
	datad => VCC,
	cin => \inst11|Add5~49\,
	combout => \inst11|Add5~50_combout\,
	cout => \inst11|Add5~51\);

-- Location: FF_X19_Y23_N19
\inst11|PP[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~50_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(25));

-- Location: LCCOMB_X19_Y23_N20
\inst11|Add5~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~52_combout\ = (\inst11|PP\(26) & ((GND) # (!\inst11|Add5~51\))) # (!\inst11|PP\(26) & (\inst11|Add5~51\ $ (GND)))
-- \inst11|Add5~53\ = CARRY((\inst11|PP\(26)) # (!\inst11|Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(26),
	datad => VCC,
	cin => \inst11|Add5~51\,
	combout => \inst11|Add5~52_combout\,
	cout => \inst11|Add5~53\);

-- Location: FF_X19_Y23_N21
\inst11|PP[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~52_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(26));

-- Location: LCCOMB_X19_Y23_N22
\inst11|Add5~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~54_combout\ = (\inst11|PP\(27) & (\inst11|Add5~53\ & VCC)) # (!\inst11|PP\(27) & (!\inst11|Add5~53\))
-- \inst11|Add5~55\ = CARRY((!\inst11|PP\(27) & !\inst11|Add5~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|PP\(27),
	datad => VCC,
	cin => \inst11|Add5~53\,
	combout => \inst11|Add5~54_combout\,
	cout => \inst11|Add5~55\);

-- Location: FF_X19_Y23_N23
\inst11|PP[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~54_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(27));

-- Location: LCCOMB_X19_Y23_N24
\inst11|Add5~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~56_combout\ = (\inst11|PP\(28) & ((GND) # (!\inst11|Add5~55\))) # (!\inst11|PP\(28) & (\inst11|Add5~55\ $ (GND)))
-- \inst11|Add5~57\ = CARRY((\inst11|PP\(28)) # (!\inst11|Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(28),
	datad => VCC,
	cin => \inst11|Add5~55\,
	combout => \inst11|Add5~56_combout\,
	cout => \inst11|Add5~57\);

-- Location: FF_X19_Y23_N25
\inst11|PP[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~56_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(28));

-- Location: LCCOMB_X19_Y23_N26
\inst11|Add5~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~58_combout\ = (\inst11|PP\(29) & (\inst11|Add5~57\ & VCC)) # (!\inst11|PP\(29) & (!\inst11|Add5~57\))
-- \inst11|Add5~59\ = CARRY((!\inst11|PP\(29) & !\inst11|Add5~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|PP\(29),
	datad => VCC,
	cin => \inst11|Add5~57\,
	combout => \inst11|Add5~58_combout\,
	cout => \inst11|Add5~59\);

-- Location: FF_X19_Y23_N31
\inst11|PP[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~62_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(31));

-- Location: LCCOMB_X19_Y23_N28
\inst11|Add5~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~60_combout\ = (\inst11|PP\(30) & ((GND) # (!\inst11|Add5~59\))) # (!\inst11|PP\(30) & (\inst11|Add5~59\ $ (GND)))
-- \inst11|Add5~61\ = CARRY((\inst11|PP\(30)) # (!\inst11|Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|PP\(30),
	datad => VCC,
	cin => \inst11|Add5~59\,
	combout => \inst11|Add5~60_combout\,
	cout => \inst11|Add5~61\);

-- Location: FF_X19_Y23_N29
\inst11|PP[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|Add5~60_combout\,
	ena => \inst11|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|PP\(30));

-- Location: LCCOMB_X19_Y23_N30
\inst11|Add5~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add5~62_combout\ = \inst11|PP\(31) $ (!\inst11|Add5~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|PP\(31),
	cin => \inst11|Add5~61\,
	combout => \inst11|Add5~62_combout\);

-- Location: LCCOMB_X20_Y23_N22
\inst11|Equal9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal9~8_combout\ = (!\inst11|Add5~58_combout\ & (!\inst11|Add5~56_combout\ & (!\inst11|Add5~62_combout\ & !\inst11|Add5~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add5~58_combout\,
	datab => \inst11|Add5~56_combout\,
	datac => \inst11|Add5~62_combout\,
	datad => \inst11|Add5~60_combout\,
	combout => \inst11|Equal9~8_combout\);

-- Location: LCCOMB_X20_Y23_N20
\inst11|Equal9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal9~7_combout\ = (!\inst11|Add5~48_combout\ & (!\inst11|Add5~54_combout\ & (!\inst11|Add5~52_combout\ & !\inst11|Add5~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add5~48_combout\,
	datab => \inst11|Add5~54_combout\,
	datac => \inst11|Add5~52_combout\,
	datad => \inst11|Add5~50_combout\,
	combout => \inst11|Equal9~7_combout\);

-- Location: LCCOMB_X20_Y23_N8
\inst11|Equal9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal9~9_combout\ = (\inst11|Equal9~6_combout\ & (\inst11|Equal9~5_combout\ & (\inst11|Equal9~8_combout\ & \inst11|Equal9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal9~6_combout\,
	datab => \inst11|Equal9~5_combout\,
	datac => \inst11|Equal9~8_combout\,
	datad => \inst11|Equal9~7_combout\,
	combout => \inst11|Equal9~9_combout\);

-- Location: LCCOMB_X20_Y24_N20
\inst11|Equal9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal9~4_combout\ = (!\inst11|Add5~28_combout\ & (!\inst11|Add5~30_combout\ & (!\inst11|Add5~26_combout\ & !\inst11|Add5~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add5~28_combout\,
	datab => \inst11|Add5~30_combout\,
	datac => \inst11|Add5~26_combout\,
	datad => \inst11|Add5~24_combout\,
	combout => \inst11|Equal9~4_combout\);

-- Location: LCCOMB_X20_Y23_N2
\inst11|Equal9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal9~10_combout\ = (\inst11|Equal9~3_combout\ & (\inst11|Equal9~2_combout\ & (\inst11|Equal9~9_combout\ & \inst11|Equal9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal9~3_combout\,
	datab => \inst11|Equal9~2_combout\,
	datac => \inst11|Equal9~9_combout\,
	datad => \inst11|Equal9~4_combout\,
	combout => \inst11|Equal9~10_combout\);

-- Location: LCCOMB_X20_Y23_N26
\inst11|rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|rtl~0_combout\ = (\inst11|rtc~q\ & ((\inst11|rtl~q\) # (\inst11|Equal9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|rtc~q\,
	datac => \inst11|rtl~q\,
	datad => \inst11|Equal9~10_combout\,
	combout => \inst11|rtl~0_combout\);

-- Location: FF_X20_Y23_N27
\inst11|rtl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|rtl~0_combout\,
	ena => \inst11|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|rtl~q\);

-- Location: FF_X19_Y26_N15
\inst11|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst11|dwReg\(0),
	sload => VCC,
	ena => \inst11|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|rx_data\(0));

-- Location: LCCOMB_X19_Y26_N12
\inst11|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Decoder0~1_combout\ = (!\inst11|Add5~6_combout\ & (\inst11|Add5~0_combout\ & \inst11|MOSI~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add5~6_combout\,
	datab => \inst11|Add5~0_combout\,
	datad => \inst11|MOSI~0_combout\,
	combout => \inst11|Decoder0~1_combout\);

-- Location: LCCOMB_X19_Y26_N4
\inst11|dwReg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|dwReg[1]~1_combout\ = (\inst11|Equal9~0_combout\ & ((\inst11|Decoder0~1_combout\ & (\MISO~input_o\)) # (!\inst11|Decoder0~1_combout\ & ((\inst11|dwReg\(1)))))) # (!\inst11|Equal9~0_combout\ & (((\inst11|dwReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MISO~input_o\,
	datab => \inst11|Equal9~0_combout\,
	datac => \inst11|dwReg\(1),
	datad => \inst11|Decoder0~1_combout\,
	combout => \inst11|dwReg[1]~1_combout\);

-- Location: FF_X19_Y26_N5
\inst11|dwReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|dwReg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dwReg\(1));

-- Location: FF_X19_Y26_N13
\inst11|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst11|dwReg\(1),
	sload => VCC,
	ena => \inst11|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|rx_data\(1));

-- Location: LCCOMB_X19_Y25_N0
\inst11|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Decoder0~2_combout\ = (\inst11|Add5~2_combout\ & (!\inst11|Add5~0_combout\ & (!\inst11|Add5~6_combout\ & \inst11|MOSI~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add5~2_combout\,
	datab => \inst11|Add5~0_combout\,
	datac => \inst11|Add5~6_combout\,
	datad => \inst11|MOSI~0_combout\,
	combout => \inst11|Decoder0~2_combout\);

-- Location: LCCOMB_X19_Y26_N18
\inst11|dwReg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|dwReg[2]~2_combout\ = (\inst11|Add5~4_combout\ & (((\inst11|dwReg\(2))))) # (!\inst11|Add5~4_combout\ & ((\inst11|Decoder0~2_combout\ & (\MISO~input_o\)) # (!\inst11|Decoder0~2_combout\ & ((\inst11|dwReg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add5~4_combout\,
	datab => \MISO~input_o\,
	datac => \inst11|dwReg\(2),
	datad => \inst11|Decoder0~2_combout\,
	combout => \inst11|dwReg[2]~2_combout\);

-- Location: FF_X19_Y26_N19
\inst11|dwReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|dwReg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dwReg\(2));

-- Location: LCCOMB_X19_Y26_N16
\inst11|rx_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|rx_data[2]~feeder_combout\ = \inst11|dwReg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|dwReg\(2),
	combout => \inst11|rx_data[2]~feeder_combout\);

-- Location: FF_X19_Y26_N17
\inst11|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|rx_data[2]~feeder_combout\,
	ena => \inst11|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|rx_data\(2));

-- Location: LCCOMB_X19_Y25_N26
\inst11|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Decoder0~3_combout\ = (\inst11|Add5~2_combout\ & (\inst11|Add5~0_combout\ & (!\inst11|Add5~6_combout\ & \inst11|MOSI~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add5~2_combout\,
	datab => \inst11|Add5~0_combout\,
	datac => \inst11|Add5~6_combout\,
	datad => \inst11|MOSI~0_combout\,
	combout => \inst11|Decoder0~3_combout\);

-- Location: LCCOMB_X19_Y26_N10
\inst11|dwReg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|dwReg[3]~3_combout\ = (\inst11|Add5~4_combout\ & (((\inst11|dwReg\(3))))) # (!\inst11|Add5~4_combout\ & ((\inst11|Decoder0~3_combout\ & (\MISO~input_o\)) # (!\inst11|Decoder0~3_combout\ & ((\inst11|dwReg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add5~4_combout\,
	datab => \MISO~input_o\,
	datac => \inst11|dwReg\(3),
	datad => \inst11|Decoder0~3_combout\,
	combout => \inst11|dwReg[3]~3_combout\);

-- Location: FF_X19_Y26_N11
\inst11|dwReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|dwReg[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dwReg\(3));

-- Location: LCCOMB_X19_Y26_N2
\inst11|rx_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|rx_data[3]~feeder_combout\ = \inst11|dwReg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|dwReg\(3),
	combout => \inst11|rx_data[3]~feeder_combout\);

-- Location: FF_X19_Y26_N3
\inst11|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|rx_data[3]~feeder_combout\,
	ena => \inst11|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|rx_data\(3));

-- Location: LCCOMB_X19_Y26_N20
\inst11|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Decoder0~4_combout\ = (!\inst11|Add5~2_combout\ & \inst11|Add5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add5~2_combout\,
	datad => \inst11|Add5~4_combout\,
	combout => \inst11|Decoder0~4_combout\);

-- Location: LCCOMB_X19_Y26_N26
\inst11|dwReg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|dwReg[4]~4_combout\ = (\inst11|Decoder0~4_combout\ & ((\inst11|Decoder0~0_combout\ & (\MISO~input_o\)) # (!\inst11|Decoder0~0_combout\ & ((\inst11|dwReg\(4)))))) # (!\inst11|Decoder0~4_combout\ & (((\inst11|dwReg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MISO~input_o\,
	datab => \inst11|Decoder0~4_combout\,
	datac => \inst11|dwReg\(4),
	datad => \inst11|Decoder0~0_combout\,
	combout => \inst11|dwReg[4]~4_combout\);

-- Location: FF_X19_Y26_N27
\inst11|dwReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|dwReg[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dwReg\(4));

-- Location: FF_X19_Y26_N21
\inst11|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst11|dwReg\(4),
	sload => VCC,
	ena => \inst11|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|rx_data\(4));

-- Location: LCCOMB_X19_Y26_N22
\inst11|dwReg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|dwReg[5]~5_combout\ = (\inst11|Decoder0~4_combout\ & ((\inst11|Decoder0~1_combout\ & (\MISO~input_o\)) # (!\inst11|Decoder0~1_combout\ & ((\inst11|dwReg\(5)))))) # (!\inst11|Decoder0~4_combout\ & (((\inst11|dwReg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MISO~input_o\,
	datab => \inst11|Decoder0~4_combout\,
	datac => \inst11|dwReg\(5),
	datad => \inst11|Decoder0~1_combout\,
	combout => \inst11|dwReg[5]~5_combout\);

-- Location: FF_X19_Y26_N23
\inst11|dwReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|dwReg[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dwReg\(5));

-- Location: FF_X19_Y26_N29
\inst11|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	asdata => \inst11|dwReg\(5),
	sload => VCC,
	ena => \inst11|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|rx_data\(5));

-- Location: LCCOMB_X19_Y26_N6
\inst11|dwReg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|dwReg[6]~6_combout\ = (\inst11|Add5~4_combout\ & ((\inst11|Decoder0~2_combout\ & (\MISO~input_o\)) # (!\inst11|Decoder0~2_combout\ & ((\inst11|dwReg\(6)))))) # (!\inst11|Add5~4_combout\ & (((\inst11|dwReg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add5~4_combout\,
	datab => \MISO~input_o\,
	datac => \inst11|dwReg\(6),
	datad => \inst11|Decoder0~2_combout\,
	combout => \inst11|dwReg[6]~6_combout\);

-- Location: FF_X19_Y26_N7
\inst11|dwReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|dwReg[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dwReg\(6));

-- Location: LCCOMB_X19_Y26_N24
\inst11|rx_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|rx_data[6]~feeder_combout\ = \inst11|dwReg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|dwReg\(6),
	combout => \inst11|rx_data[6]~feeder_combout\);

-- Location: FF_X19_Y26_N25
\inst11|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|rx_data[6]~feeder_combout\,
	ena => \inst11|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|rx_data\(6));

-- Location: LCCOMB_X19_Y26_N0
\inst11|dwReg[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|dwReg[7]~7_combout\ = (\inst11|Add5~4_combout\ & ((\inst11|Decoder0~3_combout\ & (\MISO~input_o\)) # (!\inst11|Decoder0~3_combout\ & ((\inst11|dwReg\(7)))))) # (!\inst11|Add5~4_combout\ & (((\inst11|dwReg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add5~4_combout\,
	datab => \MISO~input_o\,
	datac => \inst11|dwReg\(7),
	datad => \inst11|Decoder0~3_combout\,
	combout => \inst11|dwReg[7]~7_combout\);

-- Location: FF_X19_Y26_N1
\inst11|dwReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|dwReg[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dwReg\(7));

-- Location: LCCOMB_X19_Y26_N30
\inst11|rx_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|rx_data[7]~feeder_combout\ = \inst11|dwReg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|dwReg\(7),
	combout => \inst11|rx_data[7]~feeder_combout\);

-- Location: FF_X19_Y26_N31
\inst11|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst11|rx_data[7]~feeder_combout\,
	ena => \inst11|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|rx_data\(7));

-- Location: FF_X30_Y12_N31
\inst|inst4|CC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~62_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(31));

-- Location: LCCOMB_X30_Y13_N0
\inst|inst4|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~0_combout\ = \inst|inst4|CC\(0) $ (VCC)
-- \inst|inst4|Add2~1\ = CARRY(\inst|inst4|CC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|CC\(0),
	datad => VCC,
	combout => \inst|inst4|Add2~0_combout\,
	cout => \inst|inst4|Add2~1\);

-- Location: LCCOMB_X29_Y13_N12
\inst|inst4|CC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|CC~0_combout\ = (\inst|inst4|Add2~0_combout\ & !\inst|inst4|state_clk~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|Add2~0_combout\,
	datad => \inst|inst4|state_clk~12_combout\,
	combout => \inst|inst4|CC~0_combout\);

-- Location: FF_X29_Y13_N13
\inst|inst4|CC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|CC~0_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(0));

-- Location: LCCOMB_X30_Y13_N2
\inst|inst4|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~2_combout\ = (\inst|inst4|CC\(1) & (!\inst|inst4|Add2~1\)) # (!\inst|inst4|CC\(1) & ((\inst|inst4|Add2~1\) # (GND)))
-- \inst|inst4|Add2~3\ = CARRY((!\inst|inst4|Add2~1\) # (!\inst|inst4|CC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|CC\(1),
	datad => VCC,
	cin => \inst|inst4|Add2~1\,
	combout => \inst|inst4|Add2~2_combout\,
	cout => \inst|inst4|Add2~3\);

-- Location: LCCOMB_X29_Y13_N14
\inst|inst4|CC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|CC~1_combout\ = (\inst|inst4|Add2~2_combout\ & !\inst|inst4|state_clk~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add2~2_combout\,
	datad => \inst|inst4|state_clk~12_combout\,
	combout => \inst|inst4|CC~1_combout\);

-- Location: FF_X29_Y13_N15
\inst|inst4|CC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|CC~1_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(1));

-- Location: LCCOMB_X30_Y13_N4
\inst|inst4|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~4_combout\ = (\inst|inst4|CC\(2) & (\inst|inst4|Add2~3\ $ (GND))) # (!\inst|inst4|CC\(2) & (!\inst|inst4|Add2~3\ & VCC))
-- \inst|inst4|Add2~5\ = CARRY((\inst|inst4|CC\(2) & !\inst|inst4|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|CC\(2),
	datad => VCC,
	cin => \inst|inst4|Add2~3\,
	combout => \inst|inst4|Add2~4_combout\,
	cout => \inst|inst4|Add2~5\);

-- Location: FF_X30_Y13_N5
\inst|inst4|CC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~4_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(2));

-- Location: LCCOMB_X30_Y13_N6
\inst|inst4|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~6_combout\ = (\inst|inst4|CC\(3) & (!\inst|inst4|Add2~5\)) # (!\inst|inst4|CC\(3) & ((\inst|inst4|Add2~5\) # (GND)))
-- \inst|inst4|Add2~7\ = CARRY((!\inst|inst4|Add2~5\) # (!\inst|inst4|CC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|CC\(3),
	datad => VCC,
	cin => \inst|inst4|Add2~5\,
	combout => \inst|inst4|Add2~6_combout\,
	cout => \inst|inst4|Add2~7\);

-- Location: FF_X30_Y13_N7
\inst|inst4|CC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~6_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(3));

-- Location: LCCOMB_X30_Y13_N8
\inst|inst4|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~8_combout\ = (\inst|inst4|CC\(4) & (\inst|inst4|Add2~7\ $ (GND))) # (!\inst|inst4|CC\(4) & (!\inst|inst4|Add2~7\ & VCC))
-- \inst|inst4|Add2~9\ = CARRY((\inst|inst4|CC\(4) & !\inst|inst4|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|CC\(4),
	datad => VCC,
	cin => \inst|inst4|Add2~7\,
	combout => \inst|inst4|Add2~8_combout\,
	cout => \inst|inst4|Add2~9\);

-- Location: LCCOMB_X29_Y13_N16
\inst|inst4|CC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|CC~2_combout\ = (\inst|inst4|Add2~8_combout\ & !\inst|inst4|state_clk~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst4|Add2~8_combout\,
	datad => \inst|inst4|state_clk~12_combout\,
	combout => \inst|inst4|CC~2_combout\);

-- Location: FF_X29_Y13_N17
\inst|inst4|CC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|CC~2_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(4));

-- Location: LCCOMB_X30_Y13_N10
\inst|inst4|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~10_combout\ = (\inst|inst4|CC\(5) & (!\inst|inst4|Add2~9\)) # (!\inst|inst4|CC\(5) & ((\inst|inst4|Add2~9\) # (GND)))
-- \inst|inst4|Add2~11\ = CARRY((!\inst|inst4|Add2~9\) # (!\inst|inst4|CC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|CC\(5),
	datad => VCC,
	cin => \inst|inst4|Add2~9\,
	combout => \inst|inst4|Add2~10_combout\,
	cout => \inst|inst4|Add2~11\);

-- Location: FF_X30_Y13_N11
\inst|inst4|CC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~10_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(5));

-- Location: LCCOMB_X30_Y13_N12
\inst|inst4|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~12_combout\ = (\inst|inst4|CC\(6) & (\inst|inst4|Add2~11\ $ (GND))) # (!\inst|inst4|CC\(6) & (!\inst|inst4|Add2~11\ & VCC))
-- \inst|inst4|Add2~13\ = CARRY((\inst|inst4|CC\(6) & !\inst|inst4|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|CC\(6),
	datad => VCC,
	cin => \inst|inst4|Add2~11\,
	combout => \inst|inst4|Add2~12_combout\,
	cout => \inst|inst4|Add2~13\);

-- Location: FF_X30_Y13_N13
\inst|inst4|CC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~12_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(6));

-- Location: LCCOMB_X30_Y13_N14
\inst|inst4|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~14_combout\ = (\inst|inst4|CC\(7) & (!\inst|inst4|Add2~13\)) # (!\inst|inst4|CC\(7) & ((\inst|inst4|Add2~13\) # (GND)))
-- \inst|inst4|Add2~15\ = CARRY((!\inst|inst4|Add2~13\) # (!\inst|inst4|CC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|CC\(7),
	datad => VCC,
	cin => \inst|inst4|Add2~13\,
	combout => \inst|inst4|Add2~14_combout\,
	cout => \inst|inst4|Add2~15\);

-- Location: FF_X30_Y13_N15
\inst|inst4|CC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~14_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(7));

-- Location: LCCOMB_X30_Y13_N16
\inst|inst4|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~16_combout\ = (\inst|inst4|CC\(8) & (\inst|inst4|Add2~15\ $ (GND))) # (!\inst|inst4|CC\(8) & (!\inst|inst4|Add2~15\ & VCC))
-- \inst|inst4|Add2~17\ = CARRY((\inst|inst4|CC\(8) & !\inst|inst4|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|CC\(8),
	datad => VCC,
	cin => \inst|inst4|Add2~15\,
	combout => \inst|inst4|Add2~16_combout\,
	cout => \inst|inst4|Add2~17\);

-- Location: FF_X30_Y13_N17
\inst|inst4|CC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~16_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(8));

-- Location: LCCOMB_X30_Y13_N18
\inst|inst4|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~18_combout\ = (\inst|inst4|CC\(9) & (!\inst|inst4|Add2~17\)) # (!\inst|inst4|CC\(9) & ((\inst|inst4|Add2~17\) # (GND)))
-- \inst|inst4|Add2~19\ = CARRY((!\inst|inst4|Add2~17\) # (!\inst|inst4|CC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|CC\(9),
	datad => VCC,
	cin => \inst|inst4|Add2~17\,
	combout => \inst|inst4|Add2~18_combout\,
	cout => \inst|inst4|Add2~19\);

-- Location: FF_X30_Y13_N19
\inst|inst4|CC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~18_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(9));

-- Location: LCCOMB_X30_Y13_N20
\inst|inst4|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~20_combout\ = (\inst|inst4|CC\(10) & (\inst|inst4|Add2~19\ $ (GND))) # (!\inst|inst4|CC\(10) & (!\inst|inst4|Add2~19\ & VCC))
-- \inst|inst4|Add2~21\ = CARRY((\inst|inst4|CC\(10) & !\inst|inst4|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|CC\(10),
	datad => VCC,
	cin => \inst|inst4|Add2~19\,
	combout => \inst|inst4|Add2~20_combout\,
	cout => \inst|inst4|Add2~21\);

-- Location: FF_X30_Y13_N21
\inst|inst4|CC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~20_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(10));

-- Location: LCCOMB_X30_Y13_N22
\inst|inst4|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~22_combout\ = (\inst|inst4|CC\(11) & (!\inst|inst4|Add2~21\)) # (!\inst|inst4|CC\(11) & ((\inst|inst4|Add2~21\) # (GND)))
-- \inst|inst4|Add2~23\ = CARRY((!\inst|inst4|Add2~21\) # (!\inst|inst4|CC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|CC\(11),
	datad => VCC,
	cin => \inst|inst4|Add2~21\,
	combout => \inst|inst4|Add2~22_combout\,
	cout => \inst|inst4|Add2~23\);

-- Location: FF_X30_Y13_N23
\inst|inst4|CC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~22_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(11));

-- Location: LCCOMB_X30_Y13_N24
\inst|inst4|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~24_combout\ = (\inst|inst4|CC\(12) & (\inst|inst4|Add2~23\ $ (GND))) # (!\inst|inst4|CC\(12) & (!\inst|inst4|Add2~23\ & VCC))
-- \inst|inst4|Add2~25\ = CARRY((\inst|inst4|CC\(12) & !\inst|inst4|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|CC\(12),
	datad => VCC,
	cin => \inst|inst4|Add2~23\,
	combout => \inst|inst4|Add2~24_combout\,
	cout => \inst|inst4|Add2~25\);

-- Location: FF_X30_Y13_N25
\inst|inst4|CC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~24_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(12));

-- Location: LCCOMB_X30_Y13_N26
\inst|inst4|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~26_combout\ = (\inst|inst4|CC\(13) & (!\inst|inst4|Add2~25\)) # (!\inst|inst4|CC\(13) & ((\inst|inst4|Add2~25\) # (GND)))
-- \inst|inst4|Add2~27\ = CARRY((!\inst|inst4|Add2~25\) # (!\inst|inst4|CC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|CC\(13),
	datad => VCC,
	cin => \inst|inst4|Add2~25\,
	combout => \inst|inst4|Add2~26_combout\,
	cout => \inst|inst4|Add2~27\);

-- Location: FF_X30_Y13_N27
\inst|inst4|CC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~26_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(13));

-- Location: LCCOMB_X30_Y13_N28
\inst|inst4|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~28_combout\ = (\inst|inst4|CC\(14) & (\inst|inst4|Add2~27\ $ (GND))) # (!\inst|inst4|CC\(14) & (!\inst|inst4|Add2~27\ & VCC))
-- \inst|inst4|Add2~29\ = CARRY((\inst|inst4|CC\(14) & !\inst|inst4|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|CC\(14),
	datad => VCC,
	cin => \inst|inst4|Add2~27\,
	combout => \inst|inst4|Add2~28_combout\,
	cout => \inst|inst4|Add2~29\);

-- Location: FF_X30_Y13_N29
\inst|inst4|CC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~28_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(14));

-- Location: LCCOMB_X30_Y13_N30
\inst|inst4|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~30_combout\ = (\inst|inst4|CC\(15) & (!\inst|inst4|Add2~29\)) # (!\inst|inst4|CC\(15) & ((\inst|inst4|Add2~29\) # (GND)))
-- \inst|inst4|Add2~31\ = CARRY((!\inst|inst4|Add2~29\) # (!\inst|inst4|CC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|CC\(15),
	datad => VCC,
	cin => \inst|inst4|Add2~29\,
	combout => \inst|inst4|Add2~30_combout\,
	cout => \inst|inst4|Add2~31\);

-- Location: FF_X30_Y13_N31
\inst|inst4|CC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~30_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(15));

-- Location: LCCOMB_X30_Y12_N0
\inst|inst4|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~32_combout\ = (\inst|inst4|CC\(16) & (\inst|inst4|Add2~31\ $ (GND))) # (!\inst|inst4|CC\(16) & (!\inst|inst4|Add2~31\ & VCC))
-- \inst|inst4|Add2~33\ = CARRY((\inst|inst4|CC\(16) & !\inst|inst4|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|CC\(16),
	datad => VCC,
	cin => \inst|inst4|Add2~31\,
	combout => \inst|inst4|Add2~32_combout\,
	cout => \inst|inst4|Add2~33\);

-- Location: FF_X30_Y12_N1
\inst|inst4|CC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~32_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(16));

-- Location: LCCOMB_X30_Y12_N2
\inst|inst4|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~34_combout\ = (\inst|inst4|CC\(17) & (!\inst|inst4|Add2~33\)) # (!\inst|inst4|CC\(17) & ((\inst|inst4|Add2~33\) # (GND)))
-- \inst|inst4|Add2~35\ = CARRY((!\inst|inst4|Add2~33\) # (!\inst|inst4|CC\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|CC\(17),
	datad => VCC,
	cin => \inst|inst4|Add2~33\,
	combout => \inst|inst4|Add2~34_combout\,
	cout => \inst|inst4|Add2~35\);

-- Location: FF_X30_Y12_N3
\inst|inst4|CC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~34_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(17));

-- Location: LCCOMB_X30_Y12_N4
\inst|inst4|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~36_combout\ = (\inst|inst4|CC\(18) & (\inst|inst4|Add2~35\ $ (GND))) # (!\inst|inst4|CC\(18) & (!\inst|inst4|Add2~35\ & VCC))
-- \inst|inst4|Add2~37\ = CARRY((\inst|inst4|CC\(18) & !\inst|inst4|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|CC\(18),
	datad => VCC,
	cin => \inst|inst4|Add2~35\,
	combout => \inst|inst4|Add2~36_combout\,
	cout => \inst|inst4|Add2~37\);

-- Location: FF_X30_Y12_N5
\inst|inst4|CC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~36_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(18));

-- Location: LCCOMB_X30_Y12_N6
\inst|inst4|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~38_combout\ = (\inst|inst4|CC\(19) & (!\inst|inst4|Add2~37\)) # (!\inst|inst4|CC\(19) & ((\inst|inst4|Add2~37\) # (GND)))
-- \inst|inst4|Add2~39\ = CARRY((!\inst|inst4|Add2~37\) # (!\inst|inst4|CC\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|CC\(19),
	datad => VCC,
	cin => \inst|inst4|Add2~37\,
	combout => \inst|inst4|Add2~38_combout\,
	cout => \inst|inst4|Add2~39\);

-- Location: FF_X30_Y12_N7
\inst|inst4|CC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~38_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(19));

-- Location: LCCOMB_X30_Y12_N8
\inst|inst4|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~40_combout\ = (\inst|inst4|CC\(20) & (\inst|inst4|Add2~39\ $ (GND))) # (!\inst|inst4|CC\(20) & (!\inst|inst4|Add2~39\ & VCC))
-- \inst|inst4|Add2~41\ = CARRY((\inst|inst4|CC\(20) & !\inst|inst4|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|CC\(20),
	datad => VCC,
	cin => \inst|inst4|Add2~39\,
	combout => \inst|inst4|Add2~40_combout\,
	cout => \inst|inst4|Add2~41\);

-- Location: FF_X30_Y12_N9
\inst|inst4|CC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~40_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(20));

-- Location: LCCOMB_X30_Y12_N10
\inst|inst4|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~42_combout\ = (\inst|inst4|CC\(21) & (!\inst|inst4|Add2~41\)) # (!\inst|inst4|CC\(21) & ((\inst|inst4|Add2~41\) # (GND)))
-- \inst|inst4|Add2~43\ = CARRY((!\inst|inst4|Add2~41\) # (!\inst|inst4|CC\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|CC\(21),
	datad => VCC,
	cin => \inst|inst4|Add2~41\,
	combout => \inst|inst4|Add2~42_combout\,
	cout => \inst|inst4|Add2~43\);

-- Location: FF_X30_Y12_N11
\inst|inst4|CC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~42_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(21));

-- Location: LCCOMB_X30_Y12_N12
\inst|inst4|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~44_combout\ = (\inst|inst4|CC\(22) & (\inst|inst4|Add2~43\ $ (GND))) # (!\inst|inst4|CC\(22) & (!\inst|inst4|Add2~43\ & VCC))
-- \inst|inst4|Add2~45\ = CARRY((\inst|inst4|CC\(22) & !\inst|inst4|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|CC\(22),
	datad => VCC,
	cin => \inst|inst4|Add2~43\,
	combout => \inst|inst4|Add2~44_combout\,
	cout => \inst|inst4|Add2~45\);

-- Location: FF_X30_Y12_N13
\inst|inst4|CC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~44_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(22));

-- Location: LCCOMB_X30_Y12_N14
\inst|inst4|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~46_combout\ = (\inst|inst4|CC\(23) & (!\inst|inst4|Add2~45\)) # (!\inst|inst4|CC\(23) & ((\inst|inst4|Add2~45\) # (GND)))
-- \inst|inst4|Add2~47\ = CARRY((!\inst|inst4|Add2~45\) # (!\inst|inst4|CC\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|CC\(23),
	datad => VCC,
	cin => \inst|inst4|Add2~45\,
	combout => \inst|inst4|Add2~46_combout\,
	cout => \inst|inst4|Add2~47\);

-- Location: FF_X30_Y12_N15
\inst|inst4|CC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~46_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(23));

-- Location: LCCOMB_X30_Y12_N16
\inst|inst4|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~48_combout\ = (\inst|inst4|CC\(24) & (\inst|inst4|Add2~47\ $ (GND))) # (!\inst|inst4|CC\(24) & (!\inst|inst4|Add2~47\ & VCC))
-- \inst|inst4|Add2~49\ = CARRY((\inst|inst4|CC\(24) & !\inst|inst4|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|CC\(24),
	datad => VCC,
	cin => \inst|inst4|Add2~47\,
	combout => \inst|inst4|Add2~48_combout\,
	cout => \inst|inst4|Add2~49\);

-- Location: FF_X30_Y12_N17
\inst|inst4|CC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~48_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(24));

-- Location: LCCOMB_X30_Y12_N18
\inst|inst4|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~50_combout\ = (\inst|inst4|CC\(25) & (!\inst|inst4|Add2~49\)) # (!\inst|inst4|CC\(25) & ((\inst|inst4|Add2~49\) # (GND)))
-- \inst|inst4|Add2~51\ = CARRY((!\inst|inst4|Add2~49\) # (!\inst|inst4|CC\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|CC\(25),
	datad => VCC,
	cin => \inst|inst4|Add2~49\,
	combout => \inst|inst4|Add2~50_combout\,
	cout => \inst|inst4|Add2~51\);

-- Location: FF_X30_Y12_N19
\inst|inst4|CC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~50_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(25));

-- Location: LCCOMB_X30_Y12_N20
\inst|inst4|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~52_combout\ = (\inst|inst4|CC\(26) & (\inst|inst4|Add2~51\ $ (GND))) # (!\inst|inst4|CC\(26) & (!\inst|inst4|Add2~51\ & VCC))
-- \inst|inst4|Add2~53\ = CARRY((\inst|inst4|CC\(26) & !\inst|inst4|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|CC\(26),
	datad => VCC,
	cin => \inst|inst4|Add2~51\,
	combout => \inst|inst4|Add2~52_combout\,
	cout => \inst|inst4|Add2~53\);

-- Location: FF_X30_Y12_N21
\inst|inst4|CC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~52_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(26));

-- Location: LCCOMB_X30_Y12_N22
\inst|inst4|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~54_combout\ = (\inst|inst4|CC\(27) & (!\inst|inst4|Add2~53\)) # (!\inst|inst4|CC\(27) & ((\inst|inst4|Add2~53\) # (GND)))
-- \inst|inst4|Add2~55\ = CARRY((!\inst|inst4|Add2~53\) # (!\inst|inst4|CC\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|CC\(27),
	datad => VCC,
	cin => \inst|inst4|Add2~53\,
	combout => \inst|inst4|Add2~54_combout\,
	cout => \inst|inst4|Add2~55\);

-- Location: FF_X30_Y12_N23
\inst|inst4|CC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~54_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(27));

-- Location: LCCOMB_X30_Y12_N24
\inst|inst4|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~56_combout\ = (\inst|inst4|CC\(28) & (\inst|inst4|Add2~55\ $ (GND))) # (!\inst|inst4|CC\(28) & (!\inst|inst4|Add2~55\ & VCC))
-- \inst|inst4|Add2~57\ = CARRY((\inst|inst4|CC\(28) & !\inst|inst4|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|CC\(28),
	datad => VCC,
	cin => \inst|inst4|Add2~55\,
	combout => \inst|inst4|Add2~56_combout\,
	cout => \inst|inst4|Add2~57\);

-- Location: FF_X30_Y12_N25
\inst|inst4|CC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~56_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(28));

-- Location: LCCOMB_X30_Y12_N26
\inst|inst4|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~58_combout\ = (\inst|inst4|CC\(29) & (!\inst|inst4|Add2~57\)) # (!\inst|inst4|CC\(29) & ((\inst|inst4|Add2~57\) # (GND)))
-- \inst|inst4|Add2~59\ = CARRY((!\inst|inst4|Add2~57\) # (!\inst|inst4|CC\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|CC\(29),
	datad => VCC,
	cin => \inst|inst4|Add2~57\,
	combout => \inst|inst4|Add2~58_combout\,
	cout => \inst|inst4|Add2~59\);

-- Location: FF_X30_Y12_N27
\inst|inst4|CC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~58_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(29));

-- Location: LCCOMB_X30_Y12_N28
\inst|inst4|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~60_combout\ = (\inst|inst4|CC\(30) & (\inst|inst4|Add2~59\ $ (GND))) # (!\inst|inst4|CC\(30) & (!\inst|inst4|Add2~59\ & VCC))
-- \inst|inst4|Add2~61\ = CARRY((\inst|inst4|CC\(30) & !\inst|inst4|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|CC\(30),
	datad => VCC,
	cin => \inst|inst4|Add2~59\,
	combout => \inst|inst4|Add2~60_combout\,
	cout => \inst|inst4|Add2~61\);

-- Location: FF_X30_Y12_N29
\inst|inst4|CC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add2~60_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|CC\(30));

-- Location: LCCOMB_X30_Y12_N30
\inst|inst4|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add2~62_combout\ = \inst|inst4|CC\(31) $ (\inst|inst4|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|CC\(31),
	cin => \inst|inst4|Add2~61\,
	combout => \inst|inst4|Add2~62_combout\);

-- Location: LCCOMB_X29_Y13_N18
\inst|inst4|state_clk~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_clk~4_combout\ = (!\inst|inst4|Add2~20_combout\ & (!\inst|inst4|Add2~18_combout\ & (!\inst|inst4|Add2~14_combout\ & !\inst|inst4|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add2~20_combout\,
	datab => \inst|inst4|Add2~18_combout\,
	datac => \inst|inst4|Add2~14_combout\,
	datad => \inst|inst4|Add2~16_combout\,
	combout => \inst|inst4|state_clk~4_combout\);

-- Location: LCCOMB_X29_Y13_N22
\inst|inst4|state_clk~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_clk~2_combout\ = (\inst|inst4|state_clk~q\ & (!\inst|inst4|Add2~8_combout\ & (\inst|inst4|Add2~0_combout\ & \inst|inst4|Add2~2_combout\))) # (!\inst|inst4|state_clk~q\ & (\inst|inst4|Add2~8_combout\ & (!\inst|inst4|Add2~0_combout\ & 
-- !\inst|inst4|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|state_clk~q\,
	datab => \inst|inst4|Add2~8_combout\,
	datac => \inst|inst4|Add2~0_combout\,
	datad => \inst|inst4|Add2~2_combout\,
	combout => \inst|inst4|state_clk~2_combout\);

-- Location: LCCOMB_X29_Y13_N28
\inst|inst4|state_clk~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_clk~3_combout\ = (!\inst|inst4|Add2~6_combout\ & (!\inst|inst4|Add2~12_combout\ & (!\inst|inst4|Add2~10_combout\ & !\inst|inst4|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add2~6_combout\,
	datab => \inst|inst4|Add2~12_combout\,
	datac => \inst|inst4|Add2~10_combout\,
	datad => \inst|inst4|Add2~4_combout\,
	combout => \inst|inst4|state_clk~3_combout\);

-- Location: LCCOMB_X29_Y13_N24
\inst|inst4|state_clk~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_clk~5_combout\ = (\inst|inst4|state_clk~4_combout\ & (\inst|inst4|state_clk~2_combout\ & \inst|inst4|state_clk~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|state_clk~4_combout\,
	datac => \inst|inst4|state_clk~2_combout\,
	datad => \inst|inst4|state_clk~3_combout\,
	combout => \inst|inst4|state_clk~5_combout\);

-- Location: LCCOMB_X29_Y12_N22
\inst|inst4|state_clk~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_clk~11_combout\ = (!\inst|inst4|Add2~60_combout\ & (!\inst|inst4|Add2~56_combout\ & (!\inst|inst4|Add2~58_combout\ & !\inst|inst4|Add2~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add2~60_combout\,
	datab => \inst|inst4|Add2~56_combout\,
	datac => \inst|inst4|Add2~58_combout\,
	datad => \inst|inst4|Add2~54_combout\,
	combout => \inst|inst4|state_clk~11_combout\);

-- Location: LCCOMB_X29_Y12_N10
\inst|inst4|state_clk~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_clk~8_combout\ = (!\inst|inst4|Add2~44_combout\ & (!\inst|inst4|Add2~40_combout\ & (!\inst|inst4|Add2~42_combout\ & !\inst|inst4|Add2~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add2~44_combout\,
	datab => \inst|inst4|Add2~40_combout\,
	datac => \inst|inst4|Add2~42_combout\,
	datad => \inst|inst4|Add2~38_combout\,
	combout => \inst|inst4|state_clk~8_combout\);

-- Location: LCCOMB_X29_Y13_N20
\inst|inst4|state_clk~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_clk~7_combout\ = (!\inst|inst4|Add2~36_combout\ & (!\inst|inst4|Add2~32_combout\ & (!\inst|inst4|Add2~30_combout\ & !\inst|inst4|Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add2~36_combout\,
	datab => \inst|inst4|Add2~32_combout\,
	datac => \inst|inst4|Add2~30_combout\,
	datad => \inst|inst4|Add2~34_combout\,
	combout => \inst|inst4|state_clk~7_combout\);

-- Location: LCCOMB_X29_Y13_N30
\inst|inst4|state_clk~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_clk~6_combout\ = (!\inst|inst4|Add2~28_combout\ & (!\inst|inst4|Add2~26_combout\ & (!\inst|inst4|Add2~24_combout\ & !\inst|inst4|Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add2~28_combout\,
	datab => \inst|inst4|Add2~26_combout\,
	datac => \inst|inst4|Add2~24_combout\,
	datad => \inst|inst4|Add2~22_combout\,
	combout => \inst|inst4|state_clk~6_combout\);

-- Location: LCCOMB_X29_Y12_N0
\inst|inst4|state_clk~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_clk~9_combout\ = (!\inst|inst4|Add2~52_combout\ & (!\inst|inst4|Add2~50_combout\ & (!\inst|inst4|Add2~46_combout\ & !\inst|inst4|Add2~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add2~52_combout\,
	datab => \inst|inst4|Add2~50_combout\,
	datac => \inst|inst4|Add2~46_combout\,
	datad => \inst|inst4|Add2~48_combout\,
	combout => \inst|inst4|state_clk~9_combout\);

-- Location: LCCOMB_X29_Y13_N26
\inst|inst4|state_clk~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_clk~10_combout\ = (\inst|inst4|state_clk~8_combout\ & (\inst|inst4|state_clk~7_combout\ & (\inst|inst4|state_clk~6_combout\ & \inst|inst4|state_clk~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|state_clk~8_combout\,
	datab => \inst|inst4|state_clk~7_combout\,
	datac => \inst|inst4|state_clk~6_combout\,
	datad => \inst|inst4|state_clk~9_combout\,
	combout => \inst|inst4|state_clk~10_combout\);

-- Location: LCCOMB_X29_Y13_N0
\inst|inst4|state_clk~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_clk~12_combout\ = (!\inst|inst4|Add2~62_combout\ & (\inst|inst4|state_clk~5_combout\ & (\inst|inst4|state_clk~11_combout\ & \inst|inst4|state_clk~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add2~62_combout\,
	datab => \inst|inst4|state_clk~5_combout\,
	datac => \inst|inst4|state_clk~11_combout\,
	datad => \inst|inst4|state_clk~10_combout\,
	combout => \inst|inst4|state_clk~12_combout\);

-- Location: LCCOMB_X29_Y13_N6
\inst|inst4|state_clk~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|state_clk~13_combout\ = \inst|inst4|state_clk~q\ $ (((!\inst|inst4|wt~q\ & (\inst|inst4|StartTx~q\ & \inst|inst4|state_clk~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|wt~q\,
	datab => \inst|inst4|StartTx~q\,
	datac => \inst|inst4|state_clk~q\,
	datad => \inst|inst4|state_clk~12_combout\,
	combout => \inst|inst4|state_clk~13_combout\);

-- Location: FF_X29_Y13_N7
\inst|inst4|state_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|state_clk~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|state_clk~q\);

-- Location: LCCOMB_X29_Y13_N4
\inst|inst4|rtc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|rtc~0_combout\ = !\inst|inst4|state_clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|state_clk~q\,
	combout => \inst|inst4|rtc~0_combout\);

-- Location: FF_X29_Y13_N5
\inst|inst4|rtc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|rtc~0_combout\,
	ena => \inst|inst4|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|rtc~q\);

-- Location: LCCOMB_X31_Y14_N4
\inst|inst4|CLKO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|CLKO~0_combout\ = (\inst20|CLK_OUT~q\) # (!\inst|inst4|rtc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|CLK_OUT~q\,
	datad => \inst|inst4|rtc~q\,
	combout => \inst|inst4|CLKO~0_combout\);

-- Location: LCCOMB_X31_Y14_N16
\inst|inst4|MOSI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|MOSI~0_combout\ = (!\inst|inst4|wt~q\ & (\inst|inst4|StartTx~q\ & \inst|inst4|rtc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|wt~q\,
	datab => \inst|inst4|StartTx~q\,
	datad => \inst|inst4|rtc~q\,
	combout => \inst|inst4|MOSI~0_combout\);

-- Location: FF_X31_Y14_N13
\inst|inst4|BP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add4~4_combout\,
	ena => \inst|inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|BP\(2));

-- Location: LCCOMB_X31_Y14_N8
\inst|inst4|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add4~0_combout\ = \inst|inst4|BP\(0) $ (VCC)
-- \inst|inst4|Add4~1\ = CARRY(\inst|inst4|BP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|BP\(0),
	datad => VCC,
	combout => \inst|inst4|Add4~0_combout\,
	cout => \inst|inst4|Add4~1\);

-- Location: FF_X31_Y14_N9
\inst|inst4|BP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add4~0_combout\,
	ena => \inst|inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|BP\(0));

-- Location: LCCOMB_X31_Y14_N10
\inst|inst4|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add4~2_combout\ = (\inst|inst4|BP\(1) & (\inst|inst4|Add4~1\ & VCC)) # (!\inst|inst4|BP\(1) & (!\inst|inst4|Add4~1\))
-- \inst|inst4|Add4~3\ = CARRY((!\inst|inst4|BP\(1) & !\inst|inst4|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|BP\(1),
	datad => VCC,
	cin => \inst|inst4|Add4~1\,
	combout => \inst|inst4|Add4~2_combout\,
	cout => \inst|inst4|Add4~3\);

-- Location: FF_X31_Y14_N11
\inst|inst4|BP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add4~2_combout\,
	ena => \inst|inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|BP\(1));

-- Location: LCCOMB_X31_Y14_N12
\inst|inst4|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add4~4_combout\ = (\inst|inst4|BP\(2) & ((GND) # (!\inst|inst4|Add4~3\))) # (!\inst|inst4|BP\(2) & (\inst|inst4|Add4~3\ $ (GND)))
-- \inst|inst4|Add4~5\ = CARRY((\inst|inst4|BP\(2)) # (!\inst|inst4|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|BP\(2),
	datad => VCC,
	cin => \inst|inst4|Add4~3\,
	combout => \inst|inst4|Add4~4_combout\,
	cout => \inst|inst4|Add4~5\);

-- Location: FF_X31_Y14_N15
\inst|inst4|BP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Add4~6_combout\,
	ena => \inst|inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|BP\(3));

-- Location: LCCOMB_X31_Y14_N14
\inst|inst4|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Add4~6_combout\ = \inst|inst4|Add4~5\ $ (!\inst|inst4|BP\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst4|BP\(3),
	cin => \inst|inst4|Add4~5\,
	combout => \inst|inst4|Add4~6_combout\);

-- Location: LCCOMB_X27_Y14_N28
\inst|inst2|WideNor0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|WideNor0~2_combout\ = (\inst|inst2|addNo~29_combout\) # ((!\inst|inst2|addNo~30_combout\ & !\inst|inst2|addNo~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|addNo~30_combout\,
	datac => \inst|inst2|addNo~28_combout\,
	datad => \inst|inst2|addNo~29_combout\,
	combout => \inst|inst2|WideNor0~2_combout\);

-- Location: LCCOMB_X27_Y14_N0
\inst|inst2|WideNor0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|WideNor0~3_combout\ = (\inst|inst2|addNo~28_combout\ & (!\inst|inst2|WideNor0~2_combout\ & (\inst|inst2|Equal1~11_combout\))) # (!\inst|inst2|addNo~28_combout\ & ((\inst|inst2|Equal5~0_combout\) # ((!\inst|inst2|WideNor0~2_combout\ & 
-- \inst|inst2|Equal1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|addNo~28_combout\,
	datab => \inst|inst2|WideNor0~2_combout\,
	datac => \inst|inst2|Equal1~11_combout\,
	datad => \inst|inst2|Equal5~0_combout\,
	combout => \inst|inst2|WideNor0~3_combout\);

-- Location: LCCOMB_X27_Y14_N4
\inst|inst2|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|WideOr2~combout\ = (\inst|inst2|WideNor0~3_combout\) # (\inst|inst2|Equal13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|WideNor0~3_combout\,
	datad => \inst|inst2|Equal13~1_combout\,
	combout => \inst|inst2|WideOr2~combout\);

-- Location: FF_X27_Y14_N5
\inst|inst2|ADDRESS[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst2|WideOr2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|ADDRESS\(11));

-- Location: LCCOMB_X27_Y14_N6
\inst|inst2|WideNor0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|WideNor0~4_combout\ = ((\inst|inst2|addNo~28_combout\ & (\inst|inst2|addNo~29_combout\)) # (!\inst|inst2|addNo~28_combout\ & ((\inst|inst2|addNo~30_combout\) # (!\inst|inst2|addNo~29_combout\)))) # (!\inst|inst2|Equal13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|addNo~28_combout\,
	datab => \inst|inst2|addNo~29_combout\,
	datac => \inst|inst2|addNo~30_combout\,
	datad => \inst|inst2|Equal13~0_combout\,
	combout => \inst|inst2|WideNor0~4_combout\);

-- Location: LCCOMB_X27_Y14_N14
\inst|inst2|Equal1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal1~12_combout\ = (!\inst|inst2|addNo~28_combout\ & (!\inst|inst2|addNo~30_combout\ & (\inst|inst2|Equal1~11_combout\ & !\inst|inst2|addNo~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|addNo~28_combout\,
	datab => \inst|inst2|addNo~30_combout\,
	datac => \inst|inst2|Equal1~11_combout\,
	datad => \inst|inst2|addNo~29_combout\,
	combout => \inst|inst2|Equal1~12_combout\);

-- Location: LCCOMB_X27_Y14_N8
\inst|inst2|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|Equal2~0_combout\ = (!\inst|inst2|addNo~28_combout\ & (!\inst|inst2|addNo~29_combout\ & (\inst|inst2|Equal1~11_combout\ & \inst|inst2|addNo~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|addNo~28_combout\,
	datab => \inst|inst2|addNo~29_combout\,
	datac => \inst|inst2|Equal1~11_combout\,
	datad => \inst|inst2|addNo~30_combout\,
	combout => \inst|inst2|Equal2~0_combout\);

-- Location: LCCOMB_X27_Y14_N18
\inst|inst2|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|WideOr3~0_combout\ = (\inst|inst2|Equal2~0_combout\) # ((\inst|inst2|WideNor0~5_combout\ & !\inst|inst2|WideNor0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|WideNor0~5_combout\,
	datac => \inst|inst2|Equal2~0_combout\,
	datad => \inst|inst2|WideNor0~3_combout\,
	combout => \inst|inst2|WideOr3~0_combout\);

-- Location: LCCOMB_X27_Y14_N26
\inst|inst2|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|WideOr3~1_combout\ = (\inst|inst2|WideNor0~4_combout\ & (!\inst|inst2|Equal1~12_combout\ & !\inst|inst2|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|WideNor0~4_combout\,
	datac => \inst|inst2|Equal1~12_combout\,
	datad => \inst|inst2|WideOr3~0_combout\,
	combout => \inst|inst2|WideOr3~1_combout\);

-- Location: FF_X27_Y14_N27
\inst|inst2|ADDRESS[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst2|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|ADDRESS\(10));

-- Location: LCCOMB_X28_Y14_N0
\inst|inst2|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|WideOr4~0_combout\ = (!\inst|inst2|addNo~30_combout\ & ((\inst|inst2|addNo~28_combout\ & ((\inst|inst2|Equal1~11_combout\))) # (!\inst|inst2|addNo~28_combout\ & (\inst|inst2|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|addNo~30_combout\,
	datab => \inst|inst2|addNo~28_combout\,
	datac => \inst|inst2|Equal5~0_combout\,
	datad => \inst|inst2|Equal1~11_combout\,
	combout => \inst|inst2|WideOr4~0_combout\);

-- Location: LCCOMB_X28_Y14_N10
\inst|inst2|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|WideOr4~1_combout\ = (\inst|inst2|addNo~28_combout\ & (!\inst|inst2|addNo~29_combout\)) # (!\inst|inst2|addNo~28_combout\ & (\inst|inst2|addNo~29_combout\ & !\inst|inst2|WideOr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|addNo~28_combout\,
	datac => \inst|inst2|addNo~29_combout\,
	datad => \inst|inst2|WideOr4~0_combout\,
	combout => \inst|inst2|WideOr4~1_combout\);

-- Location: LCCOMB_X28_Y14_N20
\inst|inst2|WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|WideOr4~2_combout\ = (\inst|inst2|Equal6~2_combout\) # ((!\inst|inst2|WideOr4~1_combout\ & ((\inst|inst2|Equal2~1_combout\) # (\inst|inst2|WideOr4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|Equal2~1_combout\,
	datab => \inst|inst2|WideOr4~0_combout\,
	datac => \inst|inst2|Equal6~2_combout\,
	datad => \inst|inst2|WideOr4~1_combout\,
	combout => \inst|inst2|WideOr4~2_combout\);

-- Location: FF_X28_Y14_N21
\inst|inst2|ADDRESS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst2|WideOr4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|ADDRESS\(9));

-- Location: LCCOMB_X31_Y14_N28
\inst|inst4|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Mux0~2_combout\ = (\inst|inst4|Add4~0_combout\ & ((\inst|inst4|Add4~2_combout\) # ((\inst|inst2|ADDRESS\(9))))) # (!\inst|inst4|Add4~0_combout\ & (!\inst|inst4|Add4~2_combout\ & ((\inst|inst1|Data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add4~0_combout\,
	datab => \inst|inst4|Add4~2_combout\,
	datac => \inst|inst2|ADDRESS\(9),
	datad => \inst|inst1|Data\(0),
	combout => \inst|inst4|Mux0~2_combout\);

-- Location: LCCOMB_X31_Y14_N26
\inst|inst4|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Mux0~3_combout\ = (\inst|inst4|Add4~2_combout\ & ((\inst|inst4|Mux0~2_combout\ & (\inst|inst2|ADDRESS\(11))) # (!\inst|inst4|Mux0~2_combout\ & ((\inst|inst2|ADDRESS\(10)))))) # (!\inst|inst4|Add4~2_combout\ & (((\inst|inst4|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ADDRESS\(11),
	datab => \inst|inst2|ADDRESS\(10),
	datac => \inst|inst4|Add4~2_combout\,
	datad => \inst|inst4|Mux0~2_combout\,
	combout => \inst|inst4|Mux0~3_combout\);

-- Location: FF_X27_Y14_N1
\inst|inst2|ADDRESS[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst2|WideNor0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|ADDRESS\(13));

-- Location: LCCOMB_X27_Y14_N10
\inst|inst2|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|WideOr0~combout\ = (!\inst|inst2|WideNor0~3_combout\ & (!\inst|inst2|Equal1~12_combout\ & ((!\inst|inst2|WideNor0~4_combout\) # (!\inst|inst2|WideNor0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|WideNor0~5_combout\,
	datab => \inst|inst2|WideNor0~3_combout\,
	datac => \inst|inst2|Equal1~12_combout\,
	datad => \inst|inst2|WideNor0~4_combout\,
	combout => \inst|inst2|WideOr0~combout\);

-- Location: FF_X27_Y14_N11
\inst|inst2|ADDRESS[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst2|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|ADDRESS\(14));

-- Location: LCCOMB_X27_Y14_N20
\inst|inst2|ADDRESS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|ADDRESS~0_combout\ = (!\inst|inst2|Equal1~12_combout\ & (((\inst|inst2|WideNor0~3_combout\) # (!\inst|inst2|WideNor0~5_combout\)) # (!\inst|inst2|WideNor0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|WideNor0~4_combout\,
	datab => \inst|inst2|WideNor0~5_combout\,
	datac => \inst|inst2|Equal1~12_combout\,
	datad => \inst|inst2|WideNor0~3_combout\,
	combout => \inst|inst2|ADDRESS~0_combout\);

-- Location: FF_X27_Y14_N21
\inst|inst2|ADDRESS[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|CLK_OUT~clkctrl_outclk\,
	d => \inst|inst2|ADDRESS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|ADDRESS\(15));

-- Location: LCCOMB_X31_Y14_N24
\inst|inst4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Mux0~0_combout\ = (\inst|inst4|Add4~0_combout\ & ((\inst|inst2|ADDRESS\(15)))) # (!\inst|inst4|Add4~0_combout\ & (\inst|inst2|ADDRESS\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add4~0_combout\,
	datac => \inst|inst2|ADDRESS\(14),
	datad => \inst|inst2|ADDRESS\(15),
	combout => \inst|inst4|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y14_N18
\inst|inst4|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Mux0~1_combout\ = (\inst|inst4|Add4~4_combout\ & ((\inst|inst4|Add4~2_combout\ & ((\inst|inst4|Mux0~0_combout\))) # (!\inst|inst4|Add4~2_combout\ & (\inst|inst2|ADDRESS\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add4~4_combout\,
	datab => \inst|inst4|Add4~2_combout\,
	datac => \inst|inst2|ADDRESS\(13),
	datad => \inst|inst4|Mux0~0_combout\,
	combout => \inst|inst4|Mux0~1_combout\);

-- Location: LCCOMB_X31_Y14_N6
\inst|inst4|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|Mux0~4_combout\ = (\inst|inst4|Add4~6_combout\ & ((\inst|inst4|Mux0~1_combout\) # ((!\inst|inst4|Add4~4_combout\ & \inst|inst4|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|Add4~4_combout\,
	datab => \inst|inst4|Add4~6_combout\,
	datac => \inst|inst4|Mux0~3_combout\,
	datad => \inst|inst4|Mux0~1_combout\,
	combout => \inst|inst4|Mux0~4_combout\);

-- Location: FF_X31_Y14_N7
\inst|inst4|MOSI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|inst4|Mux0~4_combout\,
	ena => \inst|inst4|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|MOSI~q\);

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

ww_CS <= \CS~output_o\;

ww_MSTR_CLK <= \MSTR_CLK~output_o\;

ww_MOSI <= \MOSI~output_o\;

ww_LED0 <= \LED0~output_o\;

ww_LED1 <= \LED1~output_o\;

ww_LED2 <= \LED2~output_o\;

ww_LED3 <= \LED3~output_o\;

ww_LED4 <= \LED4~output_o\;

ww_LED5 <= \LED5~output_o\;

ww_LED6 <= \LED6~output_o\;

ww_LED7 <= \LED7~output_o\;

ww_MPU_CS <= \MPU_CS~output_o\;

ww_MPU_MSTR_CLK <= \MPU_MSTR_CLK~output_o\;

ww_MPU_MOSI <= \MPU_MOSI~output_o\;
END structure;


