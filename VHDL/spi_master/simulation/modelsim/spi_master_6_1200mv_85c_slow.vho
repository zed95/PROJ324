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

-- DATE "02/07/2019 01:18:52"

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

ENTITY 	spi_master IS
    PORT (
	LED0 : OUT std_logic;
	CLK_50MHz : IN std_logic;
	MISO : IN std_logic;
	Button : IN std_logic;
	LED1 : OUT std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic;
	LED4 : OUT std_logic;
	LED5 : OUT std_logic;
	LED6 : OUT std_logic;
	LED7 : OUT std_logic;
	CS : OUT std_logic;
	MSTR_CLK : OUT std_logic;
	MOSI : OUT std_logic
	);
END spi_master;

-- Design Ports Information
-- LED0	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED1	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED2	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED3	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED4	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED5	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED6	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED7	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSTR_CLK	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MOSI	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50MHz	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MISO	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Button	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF spi_master IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED0 : std_logic;
SIGNAL ww_CLK_50MHz : std_logic;
SIGNAL ww_MISO : std_logic;
SIGNAL ww_Button : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL ww_LED4 : std_logic;
SIGNAL ww_LED5 : std_logic;
SIGNAL ww_LED6 : std_logic;
SIGNAL ww_LED7 : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_MSTR_CLK : std_logic;
SIGNAL ww_MOSI : std_logic;
SIGNAL \inst2|CLK_OUT~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LED0~output_o\ : std_logic;
SIGNAL \LED1~output_o\ : std_logic;
SIGNAL \LED2~output_o\ : std_logic;
SIGNAL \LED3~output_o\ : std_logic;
SIGNAL \LED4~output_o\ : std_logic;
SIGNAL \LED5~output_o\ : std_logic;
SIGNAL \LED6~output_o\ : std_logic;
SIGNAL \LED7~output_o\ : std_logic;
SIGNAL \CS~output_o\ : std_logic;
SIGNAL \MSTR_CLK~output_o\ : std_logic;
SIGNAL \MOSI~output_o\ : std_logic;
SIGNAL \CLK_50MHz~input_o\ : std_logic;
SIGNAL \CLK_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1_combout\ : std_logic;
SIGNAL \inst2|Counter~2_combout\ : std_logic;
SIGNAL \inst2|Counter~3_combout\ : std_logic;
SIGNAL \inst2|Counter~0_combout\ : std_logic;
SIGNAL \inst2|Counter~1_combout\ : std_logic;
SIGNAL \inst2|OutputState~q\ : std_logic;
SIGNAL \inst2|OutputState~0_combout\ : std_logic;
SIGNAL \inst2|OutputState~1_combout\ : std_logic;
SIGNAL \inst2|CLK_OUT~q\ : std_logic;
SIGNAL \inst2|CLK_OUT~clkctrl_outclk\ : std_logic;
SIGNAL \inst|process_6~0_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|EC~3_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|EC~5_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|EC~4_combout\ : std_logic;
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
SIGNAL \inst|state_csh~11_combout\ : std_logic;
SIGNAL \inst|state_csh~3_combout\ : std_logic;
SIGNAL \inst|state_csh~2_combout\ : std_logic;
SIGNAL \inst|state_csh~4_combout\ : std_logic;
SIGNAL \inst|state_csh~5_combout\ : std_logic;
SIGNAL \inst|Add0~61\ : std_logic;
SIGNAL \inst|Add0~62_combout\ : std_logic;
SIGNAL \inst|state_csh~8_combout\ : std_logic;
SIGNAL \inst|state_csh~7_combout\ : std_logic;
SIGNAL \inst|state_csh~6_combout\ : std_logic;
SIGNAL \inst|state_csh~9_combout\ : std_logic;
SIGNAL \inst|state_csh~10_combout\ : std_logic;
SIGNAL \inst|state_csh~12_combout\ : std_logic;
SIGNAL \inst|state_csh~13_combout\ : std_logic;
SIGNAL \inst|state_csh~q\ : std_logic;
SIGNAL \inst|CSU~feeder_combout\ : std_logic;
SIGNAL \inst|CSU~q\ : std_logic;
SIGNAL \inst|process_1:EC[29]~q\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|EC~0_combout\ : std_logic;
SIGNAL \inst|process_1:EC[0]~q\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|EC~2_combout\ : std_logic;
SIGNAL \inst|process_1:EC[1]~q\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|process_1:EC[2]~q\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|process_1:EC[3]~q\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|EC~1_combout\ : std_logic;
SIGNAL \inst|process_1:EC[4]~q\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|process_1:EC[5]~q\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|process_1:EC[6]~q\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|process_1:EC[7]~q\ : std_logic;
SIGNAL \inst|Add1~15\ : std_logic;
SIGNAL \inst|Add1~16_combout\ : std_logic;
SIGNAL \inst|process_1:EC[8]~q\ : std_logic;
SIGNAL \inst|Add1~17\ : std_logic;
SIGNAL \inst|Add1~18_combout\ : std_logic;
SIGNAL \inst|process_1:EC[9]~q\ : std_logic;
SIGNAL \inst|Add1~19\ : std_logic;
SIGNAL \inst|Add1~20_combout\ : std_logic;
SIGNAL \inst|process_1:EC[10]~q\ : std_logic;
SIGNAL \inst|Add1~21\ : std_logic;
SIGNAL \inst|Add1~22_combout\ : std_logic;
SIGNAL \inst|process_1:EC[11]~q\ : std_logic;
SIGNAL \inst|Add1~23\ : std_logic;
SIGNAL \inst|Add1~24_combout\ : std_logic;
SIGNAL \inst|process_1:EC[12]~q\ : std_logic;
SIGNAL \inst|Add1~25\ : std_logic;
SIGNAL \inst|Add1~26_combout\ : std_logic;
SIGNAL \inst|process_1:EC[13]~q\ : std_logic;
SIGNAL \inst|Add1~27\ : std_logic;
SIGNAL \inst|Add1~28_combout\ : std_logic;
SIGNAL \inst|process_1:EC[14]~q\ : std_logic;
SIGNAL \inst|Add1~29\ : std_logic;
SIGNAL \inst|Add1~30_combout\ : std_logic;
SIGNAL \inst|process_1:EC[15]~q\ : std_logic;
SIGNAL \inst|Add1~31\ : std_logic;
SIGNAL \inst|Add1~32_combout\ : std_logic;
SIGNAL \inst|process_1:EC[16]~q\ : std_logic;
SIGNAL \inst|Add1~33\ : std_logic;
SIGNAL \inst|Add1~34_combout\ : std_logic;
SIGNAL \inst|process_1:EC[17]~q\ : std_logic;
SIGNAL \inst|Add1~35\ : std_logic;
SIGNAL \inst|Add1~36_combout\ : std_logic;
SIGNAL \inst|process_1:EC[18]~q\ : std_logic;
SIGNAL \inst|Add1~37\ : std_logic;
SIGNAL \inst|Add1~38_combout\ : std_logic;
SIGNAL \inst|process_1:EC[19]~q\ : std_logic;
SIGNAL \inst|Add1~39\ : std_logic;
SIGNAL \inst|Add1~40_combout\ : std_logic;
SIGNAL \inst|process_1:EC[20]~q\ : std_logic;
SIGNAL \inst|Add1~41\ : std_logic;
SIGNAL \inst|Add1~42_combout\ : std_logic;
SIGNAL \inst|process_1:EC[21]~q\ : std_logic;
SIGNAL \inst|Add1~43\ : std_logic;
SIGNAL \inst|Add1~44_combout\ : std_logic;
SIGNAL \inst|process_1:EC[22]~q\ : std_logic;
SIGNAL \inst|Add1~45\ : std_logic;
SIGNAL \inst|Add1~46_combout\ : std_logic;
SIGNAL \inst|process_1:EC[23]~q\ : std_logic;
SIGNAL \inst|Add1~47\ : std_logic;
SIGNAL \inst|Add1~48_combout\ : std_logic;
SIGNAL \inst|process_1:EC[24]~q\ : std_logic;
SIGNAL \inst|Add1~49\ : std_logic;
SIGNAL \inst|Add1~50_combout\ : std_logic;
SIGNAL \inst|process_1:EC[25]~q\ : std_logic;
SIGNAL \inst|Add1~51\ : std_logic;
SIGNAL \inst|Add1~52_combout\ : std_logic;
SIGNAL \inst|process_1:EC[26]~q\ : std_logic;
SIGNAL \inst|Add1~53\ : std_logic;
SIGNAL \inst|Add1~54_combout\ : std_logic;
SIGNAL \inst|process_1:EC[27]~q\ : std_logic;
SIGNAL \inst|Add1~55\ : std_logic;
SIGNAL \inst|Add1~56_combout\ : std_logic;
SIGNAL \inst|process_1:EC[28]~q\ : std_logic;
SIGNAL \inst|Add1~57\ : std_logic;
SIGNAL \inst|Add1~58_combout\ : std_logic;
SIGNAL \inst|process_1:EC[30]~q\ : std_logic;
SIGNAL \inst|Add1~59\ : std_logic;
SIGNAL \inst|Add1~60_combout\ : std_logic;
SIGNAL \inst|state_csl~11_combout\ : std_logic;
SIGNAL \inst|process_1:EC[31]~q\ : std_logic;
SIGNAL \inst|Add1~61\ : std_logic;
SIGNAL \inst|Add1~62_combout\ : std_logic;
SIGNAL \inst|state_csl~6_combout\ : std_logic;
SIGNAL \inst|state_csl~8_combout\ : std_logic;
SIGNAL \inst|state_csl~7_combout\ : std_logic;
SIGNAL \inst|state_csl~9_combout\ : std_logic;
SIGNAL \inst|state_csl~10_combout\ : std_logic;
SIGNAL \inst|state_csl~4_combout\ : std_logic;
SIGNAL \inst|state_csl~2_combout\ : std_logic;
SIGNAL \inst|state_csl~3_combout\ : std_logic;
SIGNAL \inst|state_csl~5_combout\ : std_logic;
SIGNAL \inst|state_csl~12_combout\ : std_logic;
SIGNAL \inst|state_csl~13_combout\ : std_logic;
SIGNAL \inst|state_csl~q\ : std_logic;
SIGNAL \inst|CSD~q\ : std_logic;
SIGNAL \inst|delay_counter~4_combout\ : std_logic;
SIGNAL \inst|Add6~0_combout\ : std_logic;
SIGNAL \inst|Add6~1\ : std_logic;
SIGNAL \inst|Add6~2_combout\ : std_logic;
SIGNAL \inst|Add6~3\ : std_logic;
SIGNAL \inst|Add6~4_combout\ : std_logic;
SIGNAL \inst|Add6~5\ : std_logic;
SIGNAL \inst|Add6~6_combout\ : std_logic;
SIGNAL \inst|Add6~7\ : std_logic;
SIGNAL \inst|Add6~8_combout\ : std_logic;
SIGNAL \inst|delay_counter~0_combout\ : std_logic;
SIGNAL \inst|Add6~9\ : std_logic;
SIGNAL \inst|Add6~10_combout\ : std_logic;
SIGNAL \inst|Add6~11\ : std_logic;
SIGNAL \inst|Add6~12_combout\ : std_logic;
SIGNAL \inst|Add6~13\ : std_logic;
SIGNAL \inst|Add6~14_combout\ : std_logic;
SIGNAL \inst|Add6~15\ : std_logic;
SIGNAL \inst|Add6~16_combout\ : std_logic;
SIGNAL \inst|delay_counter~1_combout\ : std_logic;
SIGNAL \inst|Add6~17\ : std_logic;
SIGNAL \inst|Add6~18_combout\ : std_logic;
SIGNAL \inst|delay_counter~2_combout\ : std_logic;
SIGNAL \inst|Add6~19\ : std_logic;
SIGNAL \inst|Add6~20_combout\ : std_logic;
SIGNAL \inst|delay_counter~3_combout\ : std_logic;
SIGNAL \inst|Add6~21\ : std_logic;
SIGNAL \inst|Add6~22_combout\ : std_logic;
SIGNAL \inst|Add6~23\ : std_logic;
SIGNAL \inst|Add6~24_combout\ : std_logic;
SIGNAL \inst|Add6~25\ : std_logic;
SIGNAL \inst|Add6~26_combout\ : std_logic;
SIGNAL \inst|Add6~27\ : std_logic;
SIGNAL \inst|Add6~28_combout\ : std_logic;
SIGNAL \inst|Add6~29\ : std_logic;
SIGNAL \inst|Add6~30_combout\ : std_logic;
SIGNAL \inst|Equal10~3_combout\ : std_logic;
SIGNAL \inst|Equal10~1_combout\ : std_logic;
SIGNAL \inst|Equal10~0_combout\ : std_logic;
SIGNAL \inst|Equal10~2_combout\ : std_logic;
SIGNAL \inst|Equal10~4_combout\ : std_logic;
SIGNAL \inst|Add6~31\ : std_logic;
SIGNAL \inst|Add6~32_combout\ : std_logic;
SIGNAL \inst|Add6~33\ : std_logic;
SIGNAL \inst|Add6~34_combout\ : std_logic;
SIGNAL \inst|Add6~35\ : std_logic;
SIGNAL \inst|Add6~36_combout\ : std_logic;
SIGNAL \inst|Add6~37\ : std_logic;
SIGNAL \inst|Add6~38_combout\ : std_logic;
SIGNAL \inst|Add6~39\ : std_logic;
SIGNAL \inst|Add6~40_combout\ : std_logic;
SIGNAL \inst|Add6~41\ : std_logic;
SIGNAL \inst|Add6~42_combout\ : std_logic;
SIGNAL \inst|Add6~43\ : std_logic;
SIGNAL \inst|Add6~44_combout\ : std_logic;
SIGNAL \inst|Add6~45\ : std_logic;
SIGNAL \inst|Add6~46_combout\ : std_logic;
SIGNAL \inst|Add6~47\ : std_logic;
SIGNAL \inst|Add6~48_combout\ : std_logic;
SIGNAL \inst|Add6~49\ : std_logic;
SIGNAL \inst|Add6~50_combout\ : std_logic;
SIGNAL \inst|Add6~51\ : std_logic;
SIGNAL \inst|Add6~52_combout\ : std_logic;
SIGNAL \inst|Add6~53\ : std_logic;
SIGNAL \inst|Add6~54_combout\ : std_logic;
SIGNAL \inst|Add6~55\ : std_logic;
SIGNAL \inst|Add6~56_combout\ : std_logic;
SIGNAL \inst|Add6~57\ : std_logic;
SIGNAL \inst|Add6~58_combout\ : std_logic;
SIGNAL \inst|Add6~59\ : std_logic;
SIGNAL \inst|Add6~60_combout\ : std_logic;
SIGNAL \inst|Add6~61\ : std_logic;
SIGNAL \inst|Add6~62_combout\ : std_logic;
SIGNAL \inst|Equal10~9_combout\ : std_logic;
SIGNAL \inst|Equal10~8_combout\ : std_logic;
SIGNAL \inst|Equal10~5_combout\ : std_logic;
SIGNAL \inst|Equal10~6_combout\ : std_logic;
SIGNAL \inst|Equal10~7_combout\ : std_logic;
SIGNAL \inst|Equal10~10_combout\ : std_logic;
SIGNAL \inst|wt~0_combout\ : std_logic;
SIGNAL \inst|wt~q\ : std_logic;
SIGNAL \Button~input_o\ : std_logic;
SIGNAL \inst|done~combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|CC~0_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|CC~1_combout\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|CC~2_combout\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|Add2~13\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|Add2~15\ : std_logic;
SIGNAL \inst|Add2~16_combout\ : std_logic;
SIGNAL \inst|Add2~17\ : std_logic;
SIGNAL \inst|Add2~18_combout\ : std_logic;
SIGNAL \inst|Add2~19\ : std_logic;
SIGNAL \inst|Add2~20_combout\ : std_logic;
SIGNAL \inst|Add2~21\ : std_logic;
SIGNAL \inst|Add2~22_combout\ : std_logic;
SIGNAL \inst|Add2~23\ : std_logic;
SIGNAL \inst|Add2~24_combout\ : std_logic;
SIGNAL \inst|Add2~25\ : std_logic;
SIGNAL \inst|Add2~26_combout\ : std_logic;
SIGNAL \inst|Add2~27\ : std_logic;
SIGNAL \inst|Add2~28_combout\ : std_logic;
SIGNAL \inst|Add2~29\ : std_logic;
SIGNAL \inst|Add2~30_combout\ : std_logic;
SIGNAL \inst|Add2~31\ : std_logic;
SIGNAL \inst|Add2~32_combout\ : std_logic;
SIGNAL \inst|Add2~33\ : std_logic;
SIGNAL \inst|Add2~34_combout\ : std_logic;
SIGNAL \inst|Add2~35\ : std_logic;
SIGNAL \inst|Add2~36_combout\ : std_logic;
SIGNAL \inst|Add2~37\ : std_logic;
SIGNAL \inst|Add2~38_combout\ : std_logic;
SIGNAL \inst|Add2~39\ : std_logic;
SIGNAL \inst|Add2~40_combout\ : std_logic;
SIGNAL \inst|Add2~41\ : std_logic;
SIGNAL \inst|Add2~42_combout\ : std_logic;
SIGNAL \inst|Add2~43\ : std_logic;
SIGNAL \inst|Add2~44_combout\ : std_logic;
SIGNAL \inst|Add2~45\ : std_logic;
SIGNAL \inst|Add2~46_combout\ : std_logic;
SIGNAL \inst|Add2~47\ : std_logic;
SIGNAL \inst|Add2~48_combout\ : std_logic;
SIGNAL \inst|Add2~49\ : std_logic;
SIGNAL \inst|Add2~50_combout\ : std_logic;
SIGNAL \inst|Add2~51\ : std_logic;
SIGNAL \inst|Add2~52_combout\ : std_logic;
SIGNAL \inst|Add2~53\ : std_logic;
SIGNAL \inst|Add2~54_combout\ : std_logic;
SIGNAL \inst|Add2~55\ : std_logic;
SIGNAL \inst|Add2~56_combout\ : std_logic;
SIGNAL \inst|Add2~57\ : std_logic;
SIGNAL \inst|Add2~58_combout\ : std_logic;
SIGNAL \inst|Add2~59\ : std_logic;
SIGNAL \inst|Add2~60_combout\ : std_logic;
SIGNAL \inst|state_clk~11_combout\ : std_logic;
SIGNAL \inst|state_clk~4_combout\ : std_logic;
SIGNAL \inst|state_clk~3_combout\ : std_logic;
SIGNAL \inst|state_clk~2_combout\ : std_logic;
SIGNAL \inst|state_clk~5_combout\ : std_logic;
SIGNAL \inst|Add2~61\ : std_logic;
SIGNAL \inst|Add2~62_combout\ : std_logic;
SIGNAL \inst|state_clk~8_combout\ : std_logic;
SIGNAL \inst|state_clk~7_combout\ : std_logic;
SIGNAL \inst|state_clk~6_combout\ : std_logic;
SIGNAL \inst|state_clk~9_combout\ : std_logic;
SIGNAL \inst|state_clk~10_combout\ : std_logic;
SIGNAL \inst|state_clk~12_combout\ : std_logic;
SIGNAL \inst|state_clk~13_combout\ : std_logic;
SIGNAL \inst|state_clk~q\ : std_logic;
SIGNAL \inst|rtc~0_combout\ : std_logic;
SIGNAL \inst|rtc~q\ : std_logic;
SIGNAL \inst|MOSI~0_combout\ : std_logic;
SIGNAL \inst|Add5~0_combout\ : std_logic;
SIGNAL \inst|Add5~1\ : std_logic;
SIGNAL \inst|Add5~2_combout\ : std_logic;
SIGNAL \inst|Add5~3\ : std_logic;
SIGNAL \inst|Add5~4_combout\ : std_logic;
SIGNAL \inst|Add5~5\ : std_logic;
SIGNAL \inst|Add5~6_combout\ : std_logic;
SIGNAL \inst|Decoder0~0_combout\ : std_logic;
SIGNAL \inst|Equal9~0_combout\ : std_logic;
SIGNAL \MISO~input_o\ : std_logic;
SIGNAL \inst|dwReg[0]~0_combout\ : std_logic;
SIGNAL \inst|Add5~7\ : std_logic;
SIGNAL \inst|Add5~8_combout\ : std_logic;
SIGNAL \inst|PP~0_combout\ : std_logic;
SIGNAL \inst|Add5~9\ : std_logic;
SIGNAL \inst|Add5~10_combout\ : std_logic;
SIGNAL \inst|Add5~11\ : std_logic;
SIGNAL \inst|Add5~12_combout\ : std_logic;
SIGNAL \inst|Add5~13\ : std_logic;
SIGNAL \inst|Add5~14_combout\ : std_logic;
SIGNAL \inst|Add5~15\ : std_logic;
SIGNAL \inst|Add5~16_combout\ : std_logic;
SIGNAL \inst|Add5~17\ : std_logic;
SIGNAL \inst|Add5~18_combout\ : std_logic;
SIGNAL \inst|Add5~19\ : std_logic;
SIGNAL \inst|Add5~20_combout\ : std_logic;
SIGNAL \inst|Add5~21\ : std_logic;
SIGNAL \inst|Add5~22_combout\ : std_logic;
SIGNAL \inst|Add5~23\ : std_logic;
SIGNAL \inst|Add5~24_combout\ : std_logic;
SIGNAL \inst|Add5~25\ : std_logic;
SIGNAL \inst|Add5~26_combout\ : std_logic;
SIGNAL \inst|Add5~27\ : std_logic;
SIGNAL \inst|Add5~28_combout\ : std_logic;
SIGNAL \inst|Add5~29\ : std_logic;
SIGNAL \inst|Add5~30_combout\ : std_logic;
SIGNAL \inst|Equal9~4_combout\ : std_logic;
SIGNAL \inst|Equal9~3_combout\ : std_logic;
SIGNAL \inst|Equal9~1_combout\ : std_logic;
SIGNAL \inst|Equal9~2_combout\ : std_logic;
SIGNAL \inst|Add5~31\ : std_logic;
SIGNAL \inst|Add5~32_combout\ : std_logic;
SIGNAL \inst|Add5~33\ : std_logic;
SIGNAL \inst|Add5~34_combout\ : std_logic;
SIGNAL \inst|Add5~35\ : std_logic;
SIGNAL \inst|Add5~36_combout\ : std_logic;
SIGNAL \inst|Add5~37\ : std_logic;
SIGNAL \inst|Add5~38_combout\ : std_logic;
SIGNAL \inst|Add5~39\ : std_logic;
SIGNAL \inst|Add5~40_combout\ : std_logic;
SIGNAL \inst|Add5~41\ : std_logic;
SIGNAL \inst|Add5~42_combout\ : std_logic;
SIGNAL \inst|Add5~43\ : std_logic;
SIGNAL \inst|Add5~44_combout\ : std_logic;
SIGNAL \inst|Add5~45\ : std_logic;
SIGNAL \inst|Add5~46_combout\ : std_logic;
SIGNAL \inst|Add5~47\ : std_logic;
SIGNAL \inst|Add5~48_combout\ : std_logic;
SIGNAL \inst|Add5~49\ : std_logic;
SIGNAL \inst|Add5~50_combout\ : std_logic;
SIGNAL \inst|Add5~51\ : std_logic;
SIGNAL \inst|Add5~52_combout\ : std_logic;
SIGNAL \inst|Add5~53\ : std_logic;
SIGNAL \inst|Add5~54_combout\ : std_logic;
SIGNAL \inst|Add5~55\ : std_logic;
SIGNAL \inst|Add5~56_combout\ : std_logic;
SIGNAL \inst|Add5~57\ : std_logic;
SIGNAL \inst|Add5~58_combout\ : std_logic;
SIGNAL \inst|Add5~59\ : std_logic;
SIGNAL \inst|Add5~60_combout\ : std_logic;
SIGNAL \inst|Add5~61\ : std_logic;
SIGNAL \inst|Add5~62_combout\ : std_logic;
SIGNAL \inst|Equal9~8_combout\ : std_logic;
SIGNAL \inst|Equal9~5_combout\ : std_logic;
SIGNAL \inst|Equal9~7_combout\ : std_logic;
SIGNAL \inst|Equal9~6_combout\ : std_logic;
SIGNAL \inst|Equal9~9_combout\ : std_logic;
SIGNAL \inst|Equal9~10_combout\ : std_logic;
SIGNAL \inst|rtl~0_combout\ : std_logic;
SIGNAL \inst|rtl~q\ : std_logic;
SIGNAL \inst|Decoder0~1_combout\ : std_logic;
SIGNAL \inst|dwReg[1]~1_combout\ : std_logic;
SIGNAL \inst|rx_data[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Decoder0~2_combout\ : std_logic;
SIGNAL \inst|dwReg[2]~2_combout\ : std_logic;
SIGNAL \inst|rx_data[2]~feeder_combout\ : std_logic;
SIGNAL \inst|Decoder0~3_combout\ : std_logic;
SIGNAL \inst|dwReg[3]~3_combout\ : std_logic;
SIGNAL \inst|rx_data[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Decoder0~4_combout\ : std_logic;
SIGNAL \inst|dwReg[4]~4_combout\ : std_logic;
SIGNAL \inst|rx_data[4]~feeder_combout\ : std_logic;
SIGNAL \inst|dwReg[5]~5_combout\ : std_logic;
SIGNAL \inst|rx_data[5]~feeder_combout\ : std_logic;
SIGNAL \inst|dwReg[6]~6_combout\ : std_logic;
SIGNAL \inst|rx_data[6]~feeder_combout\ : std_logic;
SIGNAL \inst|dwReg[7]~7_combout\ : std_logic;
SIGNAL \inst|rx_data[7]~feeder_combout\ : std_logic;
SIGNAL \inst|CS~combout\ : std_logic;
SIGNAL \inst|CLKO~0_combout\ : std_logic;
SIGNAL \inst|Add4~0_combout\ : std_logic;
SIGNAL \inst|Add4~1\ : std_logic;
SIGNAL \inst|Add4~2_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|preval~q\ : std_logic;
SIGNAL \inst3|process_0~0_combout\ : std_logic;
SIGNAL \inst3|x~1_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|x~0_combout\ : std_logic;
SIGNAL \inst3|x[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|x~26_combout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|x~28_combout\ : std_logic;
SIGNAL \inst3|x~31_combout\ : std_logic;
SIGNAL \inst3|x[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|x~12_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|x~11_combout\ : std_logic;
SIGNAL \inst3|x[6]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|x~10_combout\ : std_logic;
SIGNAL \inst3|x[7]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|x~9_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|Equal0~5_combout\ : std_logic;
SIGNAL \inst3|x~33_combout\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|x~15_combout\ : std_logic;
SIGNAL \inst3|x[12]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add0~21\ : std_logic;
SIGNAL \inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst3|x~16_combout\ : std_logic;
SIGNAL \inst3|x[11]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add0~23\ : std_logic;
SIGNAL \inst3|Add0~24_combout\ : std_logic;
SIGNAL \inst3|Equal0~6_combout\ : std_logic;
SIGNAL \inst3|Equal0~7_combout\ : std_logic;
SIGNAL \inst3|Equal0~8_combout\ : std_logic;
SIGNAL \inst3|x~2_combout\ : std_logic;
SIGNAL \inst3|Add0~25\ : std_logic;
SIGNAL \inst3|Add0~26_combout\ : std_logic;
SIGNAL \inst3|x~21_combout\ : std_logic;
SIGNAL \inst3|Add0~27\ : std_logic;
SIGNAL \inst3|Add0~28_combout\ : std_logic;
SIGNAL \inst3|x~20_combout\ : std_logic;
SIGNAL \inst3|Add0~29\ : std_logic;
SIGNAL \inst3|Add0~30_combout\ : std_logic;
SIGNAL \inst3|x~19_combout\ : std_logic;
SIGNAL \inst3|Add0~31\ : std_logic;
SIGNAL \inst3|Add0~32_combout\ : std_logic;
SIGNAL \inst3|x~18_combout\ : std_logic;
SIGNAL \inst3|Add0~33\ : std_logic;
SIGNAL \inst3|Add0~34_combout\ : std_logic;
SIGNAL \inst3|x~17_combout\ : std_logic;
SIGNAL \inst3|Add0~35\ : std_logic;
SIGNAL \inst3|Add0~36_combout\ : std_logic;
SIGNAL \inst3|x~32_combout\ : std_logic;
SIGNAL \inst3|Add0~37\ : std_logic;
SIGNAL \inst3|Add0~38_combout\ : std_logic;
SIGNAL \inst3|x~23_combout\ : std_logic;
SIGNAL \inst3|Add0~39\ : std_logic;
SIGNAL \inst3|Add0~40_combout\ : std_logic;
SIGNAL \inst3|x~22_combout\ : std_logic;
SIGNAL \inst3|Add0~41\ : std_logic;
SIGNAL \inst3|Add0~42_combout\ : std_logic;
SIGNAL \inst3|x~7_combout\ : std_logic;
SIGNAL \inst3|x[21]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add0~43\ : std_logic;
SIGNAL \inst3|Add0~44_combout\ : std_logic;
SIGNAL \inst3|x~6_combout\ : std_logic;
SIGNAL \inst3|x[22]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add0~45\ : std_logic;
SIGNAL \inst3|Add0~46_combout\ : std_logic;
SIGNAL \inst3|x~5_combout\ : std_logic;
SIGNAL \inst3|x[23]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add0~47\ : std_logic;
SIGNAL \inst3|Add0~48_combout\ : std_logic;
SIGNAL \inst3|x~4_combout\ : std_logic;
SIGNAL \inst3|x[24]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add0~49\ : std_logic;
SIGNAL \inst3|Add0~50_combout\ : std_logic;
SIGNAL \inst3|x~14_combout\ : std_logic;
SIGNAL \inst3|x[25]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add0~51\ : std_logic;
SIGNAL \inst3|Add0~52_combout\ : std_logic;
SIGNAL \inst3|x~13_combout\ : std_logic;
SIGNAL \inst3|Add0~53\ : std_logic;
SIGNAL \inst3|Add0~54_combout\ : std_logic;
SIGNAL \inst3|x~8_combout\ : std_logic;
SIGNAL \inst3|Add0~55\ : std_logic;
SIGNAL \inst3|Add0~56_combout\ : std_logic;
SIGNAL \inst3|x~25_combout\ : std_logic;
SIGNAL \inst3|Add0~57\ : std_logic;
SIGNAL \inst3|Add0~58_combout\ : std_logic;
SIGNAL \inst3|x~24_combout\ : std_logic;
SIGNAL \inst3|Add0~59\ : std_logic;
SIGNAL \inst3|Add0~60_combout\ : std_logic;
SIGNAL \inst3|x~3_combout\ : std_logic;
SIGNAL \inst3|Add0~61\ : std_logic;
SIGNAL \inst3|Add0~62_combout\ : std_logic;
SIGNAL \inst3|Equal0~9_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~4_combout\ : std_logic;
SIGNAL \inst3|x~27_combout\ : std_logic;
SIGNAL \inst3|x~30_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|x~29_combout\ : std_logic;
SIGNAL \inst3|Equal1~2_combout\ : std_logic;
SIGNAL \inst3|Equal1~1_combout\ : std_logic;
SIGNAL \inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst3|Equal1~3_combout\ : std_logic;
SIGNAL \inst3|Equal1~7_combout\ : std_logic;
SIGNAL \inst3|Equal1~4_combout\ : std_logic;
SIGNAL \inst3|Equal1~5_combout\ : std_logic;
SIGNAL \inst3|Equal1~6_combout\ : std_logic;
SIGNAL \inst3|Equal1~8_combout\ : std_logic;
SIGNAL \inst3|Equal1~9_combout\ : std_logic;
SIGNAL \inst3|Equal17~0_combout\ : std_logic;
SIGNAL \inst3|Equal19~0_combout\ : std_logic;
SIGNAL \inst3|Equal1~11_combout\ : std_logic;
SIGNAL \inst3|Equal1~10_combout\ : std_logic;
SIGNAL \inst3|Equal13~0_combout\ : std_logic;
SIGNAL \inst3|Equal11~0_combout\ : std_logic;
SIGNAL \inst3|Equal1~12_combout\ : std_logic;
SIGNAL \inst3|WideOr0~0_combout\ : std_logic;
SIGNAL \inst3|WideOr5~combout\ : std_logic;
SIGNAL \inst|DTS[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Add4~3\ : std_logic;
SIGNAL \inst|Add4~4_combout\ : std_logic;
SIGNAL \inst|Add4~5\ : std_logic;
SIGNAL \inst|Add4~6_combout\ : std_logic;
SIGNAL \inst|Add4~7\ : std_logic;
SIGNAL \inst|Add4~8_combout\ : std_logic;
SIGNAL \inst|BP~0_combout\ : std_logic;
SIGNAL \inst|Add4~9\ : std_logic;
SIGNAL \inst|Add4~10_combout\ : std_logic;
SIGNAL \inst|Add4~11\ : std_logic;
SIGNAL \inst|Add4~12_combout\ : std_logic;
SIGNAL \inst|Add4~13\ : std_logic;
SIGNAL \inst|Add4~14_combout\ : std_logic;
SIGNAL \inst|Add4~15\ : std_logic;
SIGNAL \inst|Add4~16_combout\ : std_logic;
SIGNAL \inst|Add4~17\ : std_logic;
SIGNAL \inst|Add4~18_combout\ : std_logic;
SIGNAL \inst|Add4~19\ : std_logic;
SIGNAL \inst|Add4~20_combout\ : std_logic;
SIGNAL \inst|Add4~21\ : std_logic;
SIGNAL \inst|Add4~22_combout\ : std_logic;
SIGNAL \inst|Equal8~2_combout\ : std_logic;
SIGNAL \inst|Add4~23\ : std_logic;
SIGNAL \inst|Add4~24_combout\ : std_logic;
SIGNAL \inst|Add4~25\ : std_logic;
SIGNAL \inst|Add4~26_combout\ : std_logic;
SIGNAL \inst|Add4~27\ : std_logic;
SIGNAL \inst|Add4~28_combout\ : std_logic;
SIGNAL \inst|Add4~29\ : std_logic;
SIGNAL \inst|Add4~30_combout\ : std_logic;
SIGNAL \inst|Equal8~3_combout\ : std_logic;
SIGNAL \inst|Equal8~4_combout\ : std_logic;
SIGNAL \inst|Equal8~1_combout\ : std_logic;
SIGNAL \inst|Equal8~0_combout\ : std_logic;
SIGNAL \inst|Add4~31\ : std_logic;
SIGNAL \inst|Add4~32_combout\ : std_logic;
SIGNAL \inst|Add4~33\ : std_logic;
SIGNAL \inst|Add4~34_combout\ : std_logic;
SIGNAL \inst|Add4~35\ : std_logic;
SIGNAL \inst|Add4~36_combout\ : std_logic;
SIGNAL \inst|Add4~37\ : std_logic;
SIGNAL \inst|Add4~38_combout\ : std_logic;
SIGNAL \inst|Equal8~5_combout\ : std_logic;
SIGNAL \inst|Add4~39\ : std_logic;
SIGNAL \inst|Add4~40_combout\ : std_logic;
SIGNAL \inst|Add4~41\ : std_logic;
SIGNAL \inst|Add4~42_combout\ : std_logic;
SIGNAL \inst|Add4~43\ : std_logic;
SIGNAL \inst|Add4~44_combout\ : std_logic;
SIGNAL \inst|Add4~45\ : std_logic;
SIGNAL \inst|Add4~46_combout\ : std_logic;
SIGNAL \inst|Equal8~6_combout\ : std_logic;
SIGNAL \inst|Add4~47\ : std_logic;
SIGNAL \inst|Add4~48_combout\ : std_logic;
SIGNAL \inst|Add4~49\ : std_logic;
SIGNAL \inst|Add4~50_combout\ : std_logic;
SIGNAL \inst|Add4~51\ : std_logic;
SIGNAL \inst|Add4~52_combout\ : std_logic;
SIGNAL \inst|Add4~53\ : std_logic;
SIGNAL \inst|Add4~54_combout\ : std_logic;
SIGNAL \inst|Equal8~7_combout\ : std_logic;
SIGNAL \inst|Add4~55\ : std_logic;
SIGNAL \inst|Add4~56_combout\ : std_logic;
SIGNAL \inst|Add4~57\ : std_logic;
SIGNAL \inst|Add4~58_combout\ : std_logic;
SIGNAL \inst|Add4~59\ : std_logic;
SIGNAL \inst|Add4~60_combout\ : std_logic;
SIGNAL \inst|Add4~61\ : std_logic;
SIGNAL \inst|Add4~62_combout\ : std_logic;
SIGNAL \inst|Equal8~8_combout\ : std_logic;
SIGNAL \inst|Equal8~9_combout\ : std_logic;
SIGNAL \inst|Equal8~10_combout\ : std_logic;
SIGNAL \inst|DTS[6]~2_combout\ : std_logic;
SIGNAL \inst3|Equal18~0_combout\ : std_logic;
SIGNAL \inst3|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|Equal8~0_combout\ : std_logic;
SIGNAL \inst3|Equal14~0_combout\ : std_logic;
SIGNAL \inst3|WideOr2~0_combout\ : std_logic;
SIGNAL \inst3|WideOr2~1_combout\ : std_logic;
SIGNAL \inst3|Equal20~0_combout\ : std_logic;
SIGNAL \inst3|Equal2~1_combout\ : std_logic;
SIGNAL \inst3|WideOr6~0_combout\ : std_logic;
SIGNAL \inst3|Equal14~1_combout\ : std_logic;
SIGNAL \inst3|Equal9~0_combout\ : std_logic;
SIGNAL \inst3|WideOr1~2_combout\ : std_logic;
SIGNAL \inst3|WideNor0~7_combout\ : std_logic;
SIGNAL \inst3|Equal19~1_combout\ : std_logic;
SIGNAL \inst3|WideNor0~8_combout\ : std_logic;
SIGNAL \inst3|Equal10~0_combout\ : std_logic;
SIGNAL \inst3|Equal3~0_combout\ : std_logic;
SIGNAL \inst3|WideNor0~6_combout\ : std_logic;
SIGNAL \inst3|WideNor0~4_combout\ : std_logic;
SIGNAL \inst3|WideNor0~10_combout\ : std_logic;
SIGNAL \inst3|WideNor0~11_combout\ : std_logic;
SIGNAL \inst3|WideNor0~5_combout\ : std_logic;
SIGNAL \inst3|WideNor0~9_combout\ : std_logic;
SIGNAL \inst3|WideOr6~combout\ : std_logic;
SIGNAL \inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst3|WideOr3~0_combout\ : std_logic;
SIGNAL \inst3|WideOr3~combout\ : std_logic;
SIGNAL \inst|DTS[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux0~3_combout\ : std_logic;
SIGNAL \inst3|WideOr2~combout\ : std_logic;
SIGNAL \inst3|WideOr1~combout\ : std_logic;
SIGNAL \inst|DTS[5]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|WideOr0~1_combout\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst|Mux0~4_combout\ : std_logic;
SIGNAL \inst|MOSI~q\ : std_logic;
SIGNAL \inst|rx_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|x\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst2|Counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|dwReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|DTS\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|BP\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|PP\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|delay_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|EC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|CC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst3|data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_CLK_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LED0 <= ww_LED0;
ww_CLK_50MHz <= CLK_50MHz;
ww_MISO <= MISO;
ww_Button <= Button;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
LED4 <= ww_LED4;
LED5 <= ww_LED5;
LED6 <= ww_LED6;
LED7 <= ww_LED7;
CS <= ww_CS;
MSTR_CLK <= ww_MSTR_CLK;
MOSI <= ww_MOSI;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|CLK_OUT~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|CLK_OUT~q\);

\CLK_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50MHz~input_o\);
\ALT_INV_CLK_50MHz~inputclkctrl_outclk\ <= NOT \CLK_50MHz~inputclkctrl_outclk\;
\inst2|ALT_INV_CLK_OUT~clkctrl_outclk\ <= NOT \inst2|CLK_OUT~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y34_N16
\LED0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|rx_data\(0),
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
	i => \inst|rx_data\(1),
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
	i => \inst|rx_data\(2),
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
	i => \inst|rx_data\(3),
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
	i => \inst|rx_data\(4),
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
	i => \inst|rx_data\(5),
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
	i => \inst|rx_data\(6),
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
	i => \inst|rx_data\(7),
	devoe => ww_devoe,
	o => \LED7~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\CS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|CS~combout\,
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
	i => \inst|CLKO~0_combout\,
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
	i => \inst|MOSI~q\,
	devoe => ww_devoe,
	o => \MOSI~output_o\);

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

-- Location: LCCOMB_X24_Y33_N2
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|Counter\(0) $ (\inst2|Counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Counter\(0),
	datac => \inst2|Counter\(1),
	combout => \inst2|Add0~0_combout\);

-- Location: FF_X24_Y33_N3
\inst2|Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	d => \inst2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Counter\(1));

-- Location: LCCOMB_X24_Y33_N22
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = \inst2|Counter\(2) $ (((\inst2|Counter\(0) & \inst2|Counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Counter\(0),
	datac => \inst2|Counter\(2),
	datad => \inst2|Counter\(1),
	combout => \inst2|Add0~2_combout\);

-- Location: FF_X24_Y33_N23
\inst2|Counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	d => \inst2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Counter\(2));

-- Location: LCCOMB_X24_Y33_N10
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|Counter\(2) & (!\inst2|Counter\(0) & (\inst2|Counter\(3) & !\inst2|Counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Counter\(2),
	datab => \inst2|Counter\(0),
	datac => \inst2|Counter\(3),
	datad => \inst2|Counter\(1),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y33_N18
\inst2|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_combout\ = (\inst2|Counter\(2) & (\inst2|Counter\(0) & (\inst2|Counter\(3) & \inst2|Counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Counter\(2),
	datab => \inst2|Counter\(0),
	datac => \inst2|Counter\(3),
	datad => \inst2|Counter\(1),
	combout => \inst2|Add0~1_combout\);

-- Location: LCCOMB_X24_Y33_N8
\inst2|Counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Counter~2_combout\ = (!\inst2|Equal0~0_combout\ & (\inst2|Counter\(4) $ (\inst2|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datac => \inst2|Counter\(4),
	datad => \inst2|Add0~1_combout\,
	combout => \inst2|Counter~2_combout\);

-- Location: FF_X24_Y33_N9
\inst2|Counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	d => \inst2|Counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Counter\(4));

-- Location: LCCOMB_X24_Y33_N20
\inst2|Counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Counter~3_combout\ = (!\inst2|Counter\(0) & ((\inst2|Counter\(4) $ (!\inst2|Add0~1_combout\)) # (!\inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|Counter\(4),
	datac => \inst2|Counter\(0),
	datad => \inst2|Add0~1_combout\,
	combout => \inst2|Counter~3_combout\);

-- Location: FF_X24_Y33_N21
\inst2|Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	d => \inst2|Counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Counter\(0));

-- Location: LCCOMB_X24_Y33_N26
\inst2|Counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Counter~0_combout\ = (\inst2|Counter\(0) & (!\inst2|Counter\(2))) # (!\inst2|Counter\(0) & ((\inst2|Counter\(2)) # (!\inst2|Counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Counter\(0),
	datac => \inst2|Counter\(2),
	datad => \inst2|Counter\(4),
	combout => \inst2|Counter~0_combout\);

-- Location: LCCOMB_X24_Y33_N30
\inst2|Counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Counter~1_combout\ = (\inst2|Counter\(0) & (\inst2|Counter\(3) $ (((\inst2|Counter\(1) & !\inst2|Counter~0_combout\))))) # (!\inst2|Counter\(0) & (\inst2|Counter\(3) & ((\inst2|Counter\(1)) # (\inst2|Counter~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Counter\(0),
	datab => \inst2|Counter\(1),
	datac => \inst2|Counter\(3),
	datad => \inst2|Counter~0_combout\,
	combout => \inst2|Counter~1_combout\);

-- Location: FF_X24_Y33_N31
\inst2|Counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	d => \inst2|Counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Counter\(3));

-- Location: FF_X24_Y33_N15
\inst2|OutputState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	d => \inst2|OutputState~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|OutputState~q\);

-- Location: LCCOMB_X24_Y33_N28
\inst2|OutputState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|OutputState~0_combout\ = ((\inst2|Counter\(2)) # (\inst2|Counter\(0))) # (!\inst2|Counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Counter\(4),
	datac => \inst2|Counter\(2),
	datad => \inst2|Counter\(0),
	combout => \inst2|OutputState~0_combout\);

-- Location: LCCOMB_X24_Y33_N14
\inst2|OutputState~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|OutputState~1_combout\ = \inst2|OutputState~q\ $ (((\inst2|Counter\(3) & (!\inst2|Counter\(1) & !\inst2|OutputState~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Counter\(3),
	datab => \inst2|Counter\(1),
	datac => \inst2|OutputState~q\,
	datad => \inst2|OutputState~0_combout\,
	combout => \inst2|OutputState~1_combout\);

-- Location: FF_X24_Y33_N25
\inst2|CLK_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK_50MHz~inputclkctrl_outclk\,
	asdata => \inst2|OutputState~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|CLK_OUT~q\);

-- Location: CLKCTRL_G13
\inst2|CLK_OUT~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|CLK_OUT~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|CLK_OUT~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y28_N28
\inst|process_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_6~0_combout\ = (!\inst|done~combout\ & !\inst|wt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|done~combout\,
	datad => \inst|wt~q\,
	combout => \inst|process_6~0_combout\);

-- Location: FF_X21_Y27_N25
\inst|EC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~56_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(28));

-- Location: LCCOMB_X21_Y28_N0
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|EC\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|EC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X25_Y28_N16
\inst|EC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EC~3_combout\ = (\inst|Add0~0_combout\ & !\inst|state_csh~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datad => \inst|state_csh~12_combout\,
	combout => \inst|EC~3_combout\);

-- Location: FF_X25_Y28_N17
\inst|EC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|EC~3_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(0));

-- Location: LCCOMB_X21_Y28_N2
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|EC\(1) & (!\inst|Add0~1\)) # (!\inst|EC\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|EC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EC\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X25_Y28_N24
\inst|EC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EC~5_combout\ = (\inst|Add0~2_combout\ & !\inst|state_csh~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~2_combout\,
	datad => \inst|state_csh~12_combout\,
	combout => \inst|EC~5_combout\);

-- Location: FF_X25_Y28_N25
\inst|EC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|EC~5_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(1));

-- Location: LCCOMB_X21_Y28_N4
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|EC\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|EC\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|EC\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X21_Y28_N5
\inst|EC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(2));

-- Location: LCCOMB_X21_Y28_N6
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|EC\(3) & (!\inst|Add0~5\)) # (!\inst|EC\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|EC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EC\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X21_Y28_N7
\inst|EC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(3));

-- Location: LCCOMB_X21_Y28_N8
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|EC\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|EC\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|EC\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X25_Y28_N26
\inst|EC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EC~4_combout\ = (\inst|Add0~8_combout\ & !\inst|state_csh~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datad => \inst|state_csh~12_combout\,
	combout => \inst|EC~4_combout\);

-- Location: FF_X25_Y28_N27
\inst|EC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|EC~4_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(4));

-- Location: LCCOMB_X21_Y28_N10
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|EC\(5) & (!\inst|Add0~9\)) # (!\inst|EC\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|EC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EC\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: FF_X21_Y28_N11
\inst|EC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~10_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(5));

-- Location: LCCOMB_X21_Y28_N12
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|EC\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|EC\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|EC\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EC\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: FF_X21_Y28_N13
\inst|EC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~12_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(6));

-- Location: LCCOMB_X21_Y28_N14
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|EC\(7) & (!\inst|Add0~13\)) # (!\inst|EC\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|EC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: FF_X21_Y28_N15
\inst|EC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(7));

-- Location: LCCOMB_X21_Y28_N16
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|EC\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|EC\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|EC\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: FF_X21_Y28_N17
\inst|EC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~16_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(8));

-- Location: LCCOMB_X21_Y28_N18
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|EC\(9) & (!\inst|Add0~17\)) # (!\inst|EC\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|EC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: FF_X21_Y28_N19
\inst|EC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~18_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(9));

-- Location: LCCOMB_X21_Y28_N20
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|EC\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|EC\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|EC\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: FF_X21_Y28_N21
\inst|EC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~20_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(10));

-- Location: LCCOMB_X21_Y28_N22
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|EC\(11) & (!\inst|Add0~21\)) # (!\inst|EC\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|EC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EC\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: FF_X21_Y28_N23
\inst|EC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~22_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(11));

-- Location: LCCOMB_X21_Y28_N24
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|EC\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|EC\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|EC\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: FF_X21_Y28_N25
\inst|EC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~24_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(12));

-- Location: LCCOMB_X21_Y28_N26
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|EC\(13) & (!\inst|Add0~25\)) # (!\inst|EC\(13) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|EC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EC\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: FF_X21_Y28_N27
\inst|EC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~26_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(13));

-- Location: LCCOMB_X21_Y28_N28
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|EC\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|EC\(14) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|EC\(14) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: FF_X21_Y28_N29
\inst|EC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~28_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(14));

-- Location: LCCOMB_X21_Y28_N30
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|EC\(15) & (!\inst|Add0~29\)) # (!\inst|EC\(15) & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|EC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EC\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: FF_X21_Y28_N31
\inst|EC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~30_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(15));

-- Location: LCCOMB_X21_Y27_N0
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|EC\(16) & (\inst|Add0~31\ $ (GND))) # (!\inst|EC\(16) & (!\inst|Add0~31\ & VCC))
-- \inst|Add0~33\ = CARRY((\inst|EC\(16) & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: FF_X21_Y27_N1
\inst|EC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~32_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(16));

-- Location: LCCOMB_X21_Y27_N2
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|EC\(17) & (!\inst|Add0~33\)) # (!\inst|EC\(17) & ((\inst|Add0~33\) # (GND)))
-- \inst|Add0~35\ = CARRY((!\inst|Add0~33\) # (!\inst|EC\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: FF_X21_Y27_N3
\inst|EC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~34_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(17));

-- Location: LCCOMB_X21_Y27_N4
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|EC\(18) & (\inst|Add0~35\ $ (GND))) # (!\inst|EC\(18) & (!\inst|Add0~35\ & VCC))
-- \inst|Add0~37\ = CARRY((\inst|EC\(18) & !\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: FF_X21_Y27_N5
\inst|EC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~36_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(18));

-- Location: LCCOMB_X21_Y27_N6
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|EC\(19) & (!\inst|Add0~37\)) # (!\inst|EC\(19) & ((\inst|Add0~37\) # (GND)))
-- \inst|Add0~39\ = CARRY((!\inst|Add0~37\) # (!\inst|EC\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EC\(19),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: FF_X21_Y27_N7
\inst|EC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~38_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(19));

-- Location: LCCOMB_X21_Y27_N8
\inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|EC\(20) & (\inst|Add0~39\ $ (GND))) # (!\inst|EC\(20) & (!\inst|Add0~39\ & VCC))
-- \inst|Add0~41\ = CARRY((\inst|EC\(20) & !\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(20),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: FF_X21_Y27_N9
\inst|EC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~40_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(20));

-- Location: LCCOMB_X21_Y27_N10
\inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|EC\(21) & (!\inst|Add0~41\)) # (!\inst|EC\(21) & ((\inst|Add0~41\) # (GND)))
-- \inst|Add0~43\ = CARRY((!\inst|Add0~41\) # (!\inst|EC\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EC\(21),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: FF_X21_Y27_N11
\inst|EC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~42_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(21));

-- Location: LCCOMB_X21_Y27_N12
\inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\inst|EC\(22) & (\inst|Add0~43\ $ (GND))) # (!\inst|EC\(22) & (!\inst|Add0~43\ & VCC))
-- \inst|Add0~45\ = CARRY((\inst|EC\(22) & !\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EC\(22),
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: FF_X21_Y27_N13
\inst|EC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~44_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(22));

-- Location: LCCOMB_X21_Y27_N14
\inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|EC\(23) & (!\inst|Add0~45\)) # (!\inst|EC\(23) & ((\inst|Add0~45\) # (GND)))
-- \inst|Add0~47\ = CARRY((!\inst|Add0~45\) # (!\inst|EC\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(23),
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: FF_X21_Y27_N15
\inst|EC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~46_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(23));

-- Location: LCCOMB_X21_Y27_N16
\inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = (\inst|EC\(24) & (\inst|Add0~47\ $ (GND))) # (!\inst|EC\(24) & (!\inst|Add0~47\ & VCC))
-- \inst|Add0~49\ = CARRY((\inst|EC\(24) & !\inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(24),
	datad => VCC,
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\,
	cout => \inst|Add0~49\);

-- Location: FF_X21_Y27_N17
\inst|EC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~48_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(24));

-- Location: LCCOMB_X21_Y27_N18
\inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~50_combout\ = (\inst|EC\(25) & (!\inst|Add0~49\)) # (!\inst|EC\(25) & ((\inst|Add0~49\) # (GND)))
-- \inst|Add0~51\ = CARRY((!\inst|Add0~49\) # (!\inst|EC\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(25),
	datad => VCC,
	cin => \inst|Add0~49\,
	combout => \inst|Add0~50_combout\,
	cout => \inst|Add0~51\);

-- Location: FF_X21_Y27_N19
\inst|EC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~50_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(25));

-- Location: LCCOMB_X21_Y27_N20
\inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~52_combout\ = (\inst|EC\(26) & (\inst|Add0~51\ $ (GND))) # (!\inst|EC\(26) & (!\inst|Add0~51\ & VCC))
-- \inst|Add0~53\ = CARRY((\inst|EC\(26) & !\inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(26),
	datad => VCC,
	cin => \inst|Add0~51\,
	combout => \inst|Add0~52_combout\,
	cout => \inst|Add0~53\);

-- Location: FF_X21_Y27_N21
\inst|EC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~52_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(26));

-- Location: LCCOMB_X21_Y27_N22
\inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~54_combout\ = (\inst|EC\(27) & (!\inst|Add0~53\)) # (!\inst|EC\(27) & ((\inst|Add0~53\) # (GND)))
-- \inst|Add0~55\ = CARRY((!\inst|Add0~53\) # (!\inst|EC\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EC\(27),
	datad => VCC,
	cin => \inst|Add0~53\,
	combout => \inst|Add0~54_combout\,
	cout => \inst|Add0~55\);

-- Location: FF_X21_Y27_N23
\inst|EC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~54_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(27));

-- Location: LCCOMB_X21_Y27_N24
\inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~56_combout\ = (\inst|EC\(28) & (\inst|Add0~55\ $ (GND))) # (!\inst|EC\(28) & (!\inst|Add0~55\ & VCC))
-- \inst|Add0~57\ = CARRY((\inst|EC\(28) & !\inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(28),
	datad => VCC,
	cin => \inst|Add0~55\,
	combout => \inst|Add0~56_combout\,
	cout => \inst|Add0~57\);

-- Location: FF_X21_Y27_N27
\inst|EC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~58_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(29));

-- Location: LCCOMB_X21_Y27_N26
\inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~58_combout\ = (\inst|EC\(29) & (!\inst|Add0~57\)) # (!\inst|EC\(29) & ((\inst|Add0~57\) # (GND)))
-- \inst|Add0~59\ = CARRY((!\inst|Add0~57\) # (!\inst|EC\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EC\(29),
	datad => VCC,
	cin => \inst|Add0~57\,
	combout => \inst|Add0~58_combout\,
	cout => \inst|Add0~59\);

-- Location: FF_X21_Y27_N29
\inst|EC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~60_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(30));

-- Location: LCCOMB_X21_Y27_N28
\inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~60_combout\ = (\inst|EC\(30) & (\inst|Add0~59\ $ (GND))) # (!\inst|EC\(30) & (!\inst|Add0~59\ & VCC))
-- \inst|Add0~61\ = CARRY((\inst|EC\(30) & !\inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EC\(30),
	datad => VCC,
	cin => \inst|Add0~59\,
	combout => \inst|Add0~60_combout\,
	cout => \inst|Add0~61\);

-- Location: LCCOMB_X20_Y27_N12
\inst|state_csh~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csh~11_combout\ = (!\inst|Add0~56_combout\ & (!\inst|Add0~54_combout\ & (!\inst|Add0~58_combout\ & !\inst|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~56_combout\,
	datab => \inst|Add0~54_combout\,
	datac => \inst|Add0~58_combout\,
	datad => \inst|Add0~60_combout\,
	combout => \inst|state_csh~11_combout\);

-- Location: LCCOMB_X20_Y28_N28
\inst|state_csh~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csh~3_combout\ = (!\inst|Add0~4_combout\ & (!\inst|Add0~12_combout\ & (!\inst|Add0~10_combout\ & !\inst|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~4_combout\,
	datab => \inst|Add0~12_combout\,
	datac => \inst|Add0~10_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|state_csh~3_combout\);

-- Location: LCCOMB_X25_Y28_N14
\inst|state_csh~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csh~2_combout\ = (\inst|Add0~0_combout\ & (!\inst|Add0~2_combout\ & (!\inst|state_csh~q\ & \inst|Add0~8_combout\))) # (!\inst|Add0~0_combout\ & (\inst|Add0~2_combout\ & (\inst|state_csh~q\ & !\inst|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \inst|Add0~2_combout\,
	datac => \inst|state_csh~q\,
	datad => \inst|Add0~8_combout\,
	combout => \inst|state_csh~2_combout\);

-- Location: LCCOMB_X20_Y28_N18
\inst|state_csh~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csh~4_combout\ = (!\inst|Add0~20_combout\ & (!\inst|Add0~18_combout\ & (!\inst|Add0~14_combout\ & !\inst|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~20_combout\,
	datab => \inst|Add0~18_combout\,
	datac => \inst|Add0~14_combout\,
	datad => \inst|Add0~16_combout\,
	combout => \inst|state_csh~4_combout\);

-- Location: LCCOMB_X20_Y28_N4
\inst|state_csh~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csh~5_combout\ = (\inst|state_csh~3_combout\ & (\inst|state_csh~2_combout\ & \inst|state_csh~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state_csh~3_combout\,
	datac => \inst|state_csh~2_combout\,
	datad => \inst|state_csh~4_combout\,
	combout => \inst|state_csh~5_combout\);

-- Location: FF_X21_Y27_N31
\inst|EC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add0~62_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EC\(31));

-- Location: LCCOMB_X21_Y27_N30
\inst|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~62_combout\ = \inst|EC\(31) $ (\inst|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EC\(31),
	cin => \inst|Add0~61\,
	combout => \inst|Add0~62_combout\);

-- Location: LCCOMB_X20_Y27_N22
\inst|state_csh~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csh~8_combout\ = (!\inst|Add0~44_combout\ & (!\inst|Add0~40_combout\ & (!\inst|Add0~42_combout\ & !\inst|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~44_combout\,
	datab => \inst|Add0~40_combout\,
	datac => \inst|Add0~42_combout\,
	datad => \inst|Add0~38_combout\,
	combout => \inst|state_csh~8_combout\);

-- Location: LCCOMB_X20_Y27_N4
\inst|state_csh~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csh~7_combout\ = (!\inst|Add0~36_combout\ & (!\inst|Add0~32_combout\ & (!\inst|Add0~30_combout\ & !\inst|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~36_combout\,
	datab => \inst|Add0~32_combout\,
	datac => \inst|Add0~30_combout\,
	datad => \inst|Add0~34_combout\,
	combout => \inst|state_csh~7_combout\);

-- Location: LCCOMB_X20_Y28_N30
\inst|state_csh~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csh~6_combout\ = (!\inst|Add0~26_combout\ & (!\inst|Add0~22_combout\ & (!\inst|Add0~24_combout\ & !\inst|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~26_combout\,
	datab => \inst|Add0~22_combout\,
	datac => \inst|Add0~24_combout\,
	datad => \inst|Add0~28_combout\,
	combout => \inst|state_csh~6_combout\);

-- Location: LCCOMB_X20_Y27_N28
\inst|state_csh~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csh~9_combout\ = (!\inst|Add0~52_combout\ & (!\inst|Add0~50_combout\ & (!\inst|Add0~46_combout\ & !\inst|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~52_combout\,
	datab => \inst|Add0~50_combout\,
	datac => \inst|Add0~46_combout\,
	datad => \inst|Add0~48_combout\,
	combout => \inst|state_csh~9_combout\);

-- Location: LCCOMB_X20_Y27_N10
\inst|state_csh~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csh~10_combout\ = (\inst|state_csh~8_combout\ & (\inst|state_csh~7_combout\ & (\inst|state_csh~6_combout\ & \inst|state_csh~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_csh~8_combout\,
	datab => \inst|state_csh~7_combout\,
	datac => \inst|state_csh~6_combout\,
	datad => \inst|state_csh~9_combout\,
	combout => \inst|state_csh~10_combout\);

-- Location: LCCOMB_X20_Y27_N18
\inst|state_csh~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csh~12_combout\ = (\inst|state_csh~11_combout\ & (\inst|state_csh~5_combout\ & (!\inst|Add0~62_combout\ & \inst|state_csh~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_csh~11_combout\,
	datab => \inst|state_csh~5_combout\,
	datac => \inst|Add0~62_combout\,
	datad => \inst|state_csh~10_combout\,
	combout => \inst|state_csh~12_combout\);

-- Location: LCCOMB_X28_Y28_N10
\inst|state_csh~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csh~13_combout\ = \inst|state_csh~q\ $ (((!\inst|done~combout\ & (!\inst|wt~q\ & \inst|state_csh~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|done~combout\,
	datab => \inst|wt~q\,
	datac => \inst|state_csh~q\,
	datad => \inst|state_csh~12_combout\,
	combout => \inst|state_csh~13_combout\);

-- Location: FF_X28_Y28_N11
\inst|state_csh\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|state_csh~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state_csh~q\);

-- Location: LCCOMB_X25_Y28_N28
\inst|CSU~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|CSU~feeder_combout\ = \inst|state_csh~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|state_csh~q\,
	combout => \inst|CSU~feeder_combout\);

-- Location: FF_X25_Y28_N29
\inst|CSU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|CSU~feeder_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CSU~q\);

-- Location: FF_X27_Y28_N27
\inst|process_1:EC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~58_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[29]~q\);

-- Location: LCCOMB_X27_Y29_N0
\inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|process_1:EC[0]~q\ $ (VCC)
-- \inst|Add1~1\ = CARRY(\inst|process_1:EC[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[0]~q\,
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X27_Y27_N24
\inst|EC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EC~0_combout\ = (\inst|Add1~0_combout\ & !\inst|state_csl~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add1~0_combout\,
	datad => \inst|state_csl~12_combout\,
	combout => \inst|EC~0_combout\);

-- Location: FF_X27_Y27_N25
\inst|process_1:EC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|EC~0_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[0]~q\);

-- Location: LCCOMB_X27_Y29_N2
\inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|process_1:EC[1]~q\ & (!\inst|Add1~1\)) # (!\inst|process_1:EC[1]~q\ & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|process_1:EC[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[1]~q\,
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X27_Y27_N12
\inst|EC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EC~2_combout\ = (\inst|Add1~2_combout\ & !\inst|state_csl~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add1~2_combout\,
	datad => \inst|state_csl~12_combout\,
	combout => \inst|EC~2_combout\);

-- Location: FF_X27_Y27_N13
\inst|process_1:EC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|EC~2_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[1]~q\);

-- Location: LCCOMB_X27_Y29_N4
\inst|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|process_1:EC[2]~q\ & (\inst|Add1~3\ $ (GND))) # (!\inst|process_1:EC[2]~q\ & (!\inst|Add1~3\ & VCC))
-- \inst|Add1~5\ = CARRY((\inst|process_1:EC[2]~q\ & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[2]~q\,
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: FF_X27_Y29_N5
\inst|process_1:EC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~4_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[2]~q\);

-- Location: LCCOMB_X27_Y29_N6
\inst|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|process_1:EC[3]~q\ & (!\inst|Add1~5\)) # (!\inst|process_1:EC[3]~q\ & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|process_1:EC[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:EC[3]~q\,
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: FF_X27_Y29_N7
\inst|process_1:EC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~6_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[3]~q\);

-- Location: LCCOMB_X27_Y29_N8
\inst|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|process_1:EC[4]~q\ & (\inst|Add1~7\ $ (GND))) # (!\inst|process_1:EC[4]~q\ & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|process_1:EC[4]~q\ & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:EC[4]~q\,
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X27_Y27_N18
\inst|EC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EC~1_combout\ = (\inst|Add1~8_combout\ & !\inst|state_csl~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add1~8_combout\,
	datad => \inst|state_csl~12_combout\,
	combout => \inst|EC~1_combout\);

-- Location: FF_X27_Y27_N19
\inst|process_1:EC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|EC~1_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[4]~q\);

-- Location: LCCOMB_X27_Y29_N10
\inst|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|process_1:EC[5]~q\ & (!\inst|Add1~9\)) # (!\inst|process_1:EC[5]~q\ & ((\inst|Add1~9\) # (GND)))
-- \inst|Add1~11\ = CARRY((!\inst|Add1~9\) # (!\inst|process_1:EC[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:EC[5]~q\,
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: FF_X27_Y29_N11
\inst|process_1:EC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~10_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[5]~q\);

-- Location: LCCOMB_X27_Y29_N12
\inst|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = (\inst|process_1:EC[6]~q\ & (\inst|Add1~11\ $ (GND))) # (!\inst|process_1:EC[6]~q\ & (!\inst|Add1~11\ & VCC))
-- \inst|Add1~13\ = CARRY((\inst|process_1:EC[6]~q\ & !\inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:EC[6]~q\,
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: FF_X27_Y29_N13
\inst|process_1:EC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~12_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[6]~q\);

-- Location: LCCOMB_X27_Y29_N14
\inst|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = (\inst|process_1:EC[7]~q\ & (!\inst|Add1~13\)) # (!\inst|process_1:EC[7]~q\ & ((\inst|Add1~13\) # (GND)))
-- \inst|Add1~15\ = CARRY((!\inst|Add1~13\) # (!\inst|process_1:EC[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[7]~q\,
	datad => VCC,
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\,
	cout => \inst|Add1~15\);

-- Location: FF_X27_Y29_N15
\inst|process_1:EC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~14_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[7]~q\);

-- Location: LCCOMB_X27_Y29_N16
\inst|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~16_combout\ = (\inst|process_1:EC[8]~q\ & (\inst|Add1~15\ $ (GND))) # (!\inst|process_1:EC[8]~q\ & (!\inst|Add1~15\ & VCC))
-- \inst|Add1~17\ = CARRY((\inst|process_1:EC[8]~q\ & !\inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[8]~q\,
	datad => VCC,
	cin => \inst|Add1~15\,
	combout => \inst|Add1~16_combout\,
	cout => \inst|Add1~17\);

-- Location: FF_X27_Y29_N17
\inst|process_1:EC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~16_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[8]~q\);

-- Location: LCCOMB_X27_Y29_N18
\inst|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~18_combout\ = (\inst|process_1:EC[9]~q\ & (!\inst|Add1~17\)) # (!\inst|process_1:EC[9]~q\ & ((\inst|Add1~17\) # (GND)))
-- \inst|Add1~19\ = CARRY((!\inst|Add1~17\) # (!\inst|process_1:EC[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[9]~q\,
	datad => VCC,
	cin => \inst|Add1~17\,
	combout => \inst|Add1~18_combout\,
	cout => \inst|Add1~19\);

-- Location: FF_X27_Y29_N19
\inst|process_1:EC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~18_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[9]~q\);

-- Location: LCCOMB_X27_Y29_N20
\inst|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~20_combout\ = (\inst|process_1:EC[10]~q\ & (\inst|Add1~19\ $ (GND))) # (!\inst|process_1:EC[10]~q\ & (!\inst|Add1~19\ & VCC))
-- \inst|Add1~21\ = CARRY((\inst|process_1:EC[10]~q\ & !\inst|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[10]~q\,
	datad => VCC,
	cin => \inst|Add1~19\,
	combout => \inst|Add1~20_combout\,
	cout => \inst|Add1~21\);

-- Location: FF_X27_Y29_N21
\inst|process_1:EC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~20_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[10]~q\);

-- Location: LCCOMB_X27_Y29_N22
\inst|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~22_combout\ = (\inst|process_1:EC[11]~q\ & (!\inst|Add1~21\)) # (!\inst|process_1:EC[11]~q\ & ((\inst|Add1~21\) # (GND)))
-- \inst|Add1~23\ = CARRY((!\inst|Add1~21\) # (!\inst|process_1:EC[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:EC[11]~q\,
	datad => VCC,
	cin => \inst|Add1~21\,
	combout => \inst|Add1~22_combout\,
	cout => \inst|Add1~23\);

-- Location: FF_X27_Y29_N23
\inst|process_1:EC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~22_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[11]~q\);

-- Location: LCCOMB_X27_Y29_N24
\inst|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~24_combout\ = (\inst|process_1:EC[12]~q\ & (\inst|Add1~23\ $ (GND))) # (!\inst|process_1:EC[12]~q\ & (!\inst|Add1~23\ & VCC))
-- \inst|Add1~25\ = CARRY((\inst|process_1:EC[12]~q\ & !\inst|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[12]~q\,
	datad => VCC,
	cin => \inst|Add1~23\,
	combout => \inst|Add1~24_combout\,
	cout => \inst|Add1~25\);

-- Location: FF_X27_Y29_N25
\inst|process_1:EC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~24_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[12]~q\);

-- Location: LCCOMB_X27_Y29_N26
\inst|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~26_combout\ = (\inst|process_1:EC[13]~q\ & (!\inst|Add1~25\)) # (!\inst|process_1:EC[13]~q\ & ((\inst|Add1~25\) # (GND)))
-- \inst|Add1~27\ = CARRY((!\inst|Add1~25\) # (!\inst|process_1:EC[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:EC[13]~q\,
	datad => VCC,
	cin => \inst|Add1~25\,
	combout => \inst|Add1~26_combout\,
	cout => \inst|Add1~27\);

-- Location: FF_X27_Y29_N27
\inst|process_1:EC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~26_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[13]~q\);

-- Location: LCCOMB_X27_Y29_N28
\inst|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~28_combout\ = (\inst|process_1:EC[14]~q\ & (\inst|Add1~27\ $ (GND))) # (!\inst|process_1:EC[14]~q\ & (!\inst|Add1~27\ & VCC))
-- \inst|Add1~29\ = CARRY((\inst|process_1:EC[14]~q\ & !\inst|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[14]~q\,
	datad => VCC,
	cin => \inst|Add1~27\,
	combout => \inst|Add1~28_combout\,
	cout => \inst|Add1~29\);

-- Location: FF_X27_Y29_N29
\inst|process_1:EC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~28_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[14]~q\);

-- Location: LCCOMB_X27_Y29_N30
\inst|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~30_combout\ = (\inst|process_1:EC[15]~q\ & (!\inst|Add1~29\)) # (!\inst|process_1:EC[15]~q\ & ((\inst|Add1~29\) # (GND)))
-- \inst|Add1~31\ = CARRY((!\inst|Add1~29\) # (!\inst|process_1:EC[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:EC[15]~q\,
	datad => VCC,
	cin => \inst|Add1~29\,
	combout => \inst|Add1~30_combout\,
	cout => \inst|Add1~31\);

-- Location: FF_X27_Y29_N31
\inst|process_1:EC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~30_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[15]~q\);

-- Location: LCCOMB_X27_Y28_N0
\inst|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~32_combout\ = (\inst|process_1:EC[16]~q\ & (\inst|Add1~31\ $ (GND))) # (!\inst|process_1:EC[16]~q\ & (!\inst|Add1~31\ & VCC))
-- \inst|Add1~33\ = CARRY((\inst|process_1:EC[16]~q\ & !\inst|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[16]~q\,
	datad => VCC,
	cin => \inst|Add1~31\,
	combout => \inst|Add1~32_combout\,
	cout => \inst|Add1~33\);

-- Location: FF_X27_Y28_N1
\inst|process_1:EC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~32_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[16]~q\);

-- Location: LCCOMB_X27_Y28_N2
\inst|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~34_combout\ = (\inst|process_1:EC[17]~q\ & (!\inst|Add1~33\)) # (!\inst|process_1:EC[17]~q\ & ((\inst|Add1~33\) # (GND)))
-- \inst|Add1~35\ = CARRY((!\inst|Add1~33\) # (!\inst|process_1:EC[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[17]~q\,
	datad => VCC,
	cin => \inst|Add1~33\,
	combout => \inst|Add1~34_combout\,
	cout => \inst|Add1~35\);

-- Location: FF_X27_Y28_N3
\inst|process_1:EC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~34_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[17]~q\);

-- Location: LCCOMB_X27_Y28_N4
\inst|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~36_combout\ = (\inst|process_1:EC[18]~q\ & (\inst|Add1~35\ $ (GND))) # (!\inst|process_1:EC[18]~q\ & (!\inst|Add1~35\ & VCC))
-- \inst|Add1~37\ = CARRY((\inst|process_1:EC[18]~q\ & !\inst|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[18]~q\,
	datad => VCC,
	cin => \inst|Add1~35\,
	combout => \inst|Add1~36_combout\,
	cout => \inst|Add1~37\);

-- Location: FF_X27_Y28_N5
\inst|process_1:EC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~36_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[18]~q\);

-- Location: LCCOMB_X27_Y28_N6
\inst|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~38_combout\ = (\inst|process_1:EC[19]~q\ & (!\inst|Add1~37\)) # (!\inst|process_1:EC[19]~q\ & ((\inst|Add1~37\) # (GND)))
-- \inst|Add1~39\ = CARRY((!\inst|Add1~37\) # (!\inst|process_1:EC[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:EC[19]~q\,
	datad => VCC,
	cin => \inst|Add1~37\,
	combout => \inst|Add1~38_combout\,
	cout => \inst|Add1~39\);

-- Location: FF_X27_Y28_N7
\inst|process_1:EC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~38_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[19]~q\);

-- Location: LCCOMB_X27_Y28_N8
\inst|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~40_combout\ = (\inst|process_1:EC[20]~q\ & (\inst|Add1~39\ $ (GND))) # (!\inst|process_1:EC[20]~q\ & (!\inst|Add1~39\ & VCC))
-- \inst|Add1~41\ = CARRY((\inst|process_1:EC[20]~q\ & !\inst|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[20]~q\,
	datad => VCC,
	cin => \inst|Add1~39\,
	combout => \inst|Add1~40_combout\,
	cout => \inst|Add1~41\);

-- Location: FF_X27_Y28_N9
\inst|process_1:EC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~40_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[20]~q\);

-- Location: LCCOMB_X27_Y28_N10
\inst|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~42_combout\ = (\inst|process_1:EC[21]~q\ & (!\inst|Add1~41\)) # (!\inst|process_1:EC[21]~q\ & ((\inst|Add1~41\) # (GND)))
-- \inst|Add1~43\ = CARRY((!\inst|Add1~41\) # (!\inst|process_1:EC[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:EC[21]~q\,
	datad => VCC,
	cin => \inst|Add1~41\,
	combout => \inst|Add1~42_combout\,
	cout => \inst|Add1~43\);

-- Location: FF_X27_Y28_N11
\inst|process_1:EC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~42_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[21]~q\);

-- Location: LCCOMB_X27_Y28_N12
\inst|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~44_combout\ = (\inst|process_1:EC[22]~q\ & (\inst|Add1~43\ $ (GND))) # (!\inst|process_1:EC[22]~q\ & (!\inst|Add1~43\ & VCC))
-- \inst|Add1~45\ = CARRY((\inst|process_1:EC[22]~q\ & !\inst|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:EC[22]~q\,
	datad => VCC,
	cin => \inst|Add1~43\,
	combout => \inst|Add1~44_combout\,
	cout => \inst|Add1~45\);

-- Location: FF_X27_Y28_N13
\inst|process_1:EC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~44_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[22]~q\);

-- Location: LCCOMB_X27_Y28_N14
\inst|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~46_combout\ = (\inst|process_1:EC[23]~q\ & (!\inst|Add1~45\)) # (!\inst|process_1:EC[23]~q\ & ((\inst|Add1~45\) # (GND)))
-- \inst|Add1~47\ = CARRY((!\inst|Add1~45\) # (!\inst|process_1:EC[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[23]~q\,
	datad => VCC,
	cin => \inst|Add1~45\,
	combout => \inst|Add1~46_combout\,
	cout => \inst|Add1~47\);

-- Location: FF_X27_Y28_N15
\inst|process_1:EC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~46_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[23]~q\);

-- Location: LCCOMB_X27_Y28_N16
\inst|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~48_combout\ = (\inst|process_1:EC[24]~q\ & (\inst|Add1~47\ $ (GND))) # (!\inst|process_1:EC[24]~q\ & (!\inst|Add1~47\ & VCC))
-- \inst|Add1~49\ = CARRY((\inst|process_1:EC[24]~q\ & !\inst|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[24]~q\,
	datad => VCC,
	cin => \inst|Add1~47\,
	combout => \inst|Add1~48_combout\,
	cout => \inst|Add1~49\);

-- Location: FF_X27_Y28_N17
\inst|process_1:EC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~48_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[24]~q\);

-- Location: LCCOMB_X27_Y28_N18
\inst|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~50_combout\ = (\inst|process_1:EC[25]~q\ & (!\inst|Add1~49\)) # (!\inst|process_1:EC[25]~q\ & ((\inst|Add1~49\) # (GND)))
-- \inst|Add1~51\ = CARRY((!\inst|Add1~49\) # (!\inst|process_1:EC[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[25]~q\,
	datad => VCC,
	cin => \inst|Add1~49\,
	combout => \inst|Add1~50_combout\,
	cout => \inst|Add1~51\);

-- Location: FF_X27_Y28_N19
\inst|process_1:EC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~50_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[25]~q\);

-- Location: LCCOMB_X27_Y28_N20
\inst|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~52_combout\ = (\inst|process_1:EC[26]~q\ & (\inst|Add1~51\ $ (GND))) # (!\inst|process_1:EC[26]~q\ & (!\inst|Add1~51\ & VCC))
-- \inst|Add1~53\ = CARRY((\inst|process_1:EC[26]~q\ & !\inst|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[26]~q\,
	datad => VCC,
	cin => \inst|Add1~51\,
	combout => \inst|Add1~52_combout\,
	cout => \inst|Add1~53\);

-- Location: FF_X27_Y28_N21
\inst|process_1:EC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~52_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[26]~q\);

-- Location: LCCOMB_X27_Y28_N22
\inst|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~54_combout\ = (\inst|process_1:EC[27]~q\ & (!\inst|Add1~53\)) # (!\inst|process_1:EC[27]~q\ & ((\inst|Add1~53\) # (GND)))
-- \inst|Add1~55\ = CARRY((!\inst|Add1~53\) # (!\inst|process_1:EC[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:EC[27]~q\,
	datad => VCC,
	cin => \inst|Add1~53\,
	combout => \inst|Add1~54_combout\,
	cout => \inst|Add1~55\);

-- Location: FF_X27_Y28_N23
\inst|process_1:EC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~54_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[27]~q\);

-- Location: LCCOMB_X27_Y28_N24
\inst|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~56_combout\ = (\inst|process_1:EC[28]~q\ & (\inst|Add1~55\ $ (GND))) # (!\inst|process_1:EC[28]~q\ & (!\inst|Add1~55\ & VCC))
-- \inst|Add1~57\ = CARRY((\inst|process_1:EC[28]~q\ & !\inst|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[28]~q\,
	datad => VCC,
	cin => \inst|Add1~55\,
	combout => \inst|Add1~56_combout\,
	cout => \inst|Add1~57\);

-- Location: FF_X27_Y28_N25
\inst|process_1:EC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~56_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[28]~q\);

-- Location: LCCOMB_X27_Y28_N26
\inst|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~58_combout\ = (\inst|process_1:EC[29]~q\ & (!\inst|Add1~57\)) # (!\inst|process_1:EC[29]~q\ & ((\inst|Add1~57\) # (GND)))
-- \inst|Add1~59\ = CARRY((!\inst|Add1~57\) # (!\inst|process_1:EC[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:EC[29]~q\,
	datad => VCC,
	cin => \inst|Add1~57\,
	combout => \inst|Add1~58_combout\,
	cout => \inst|Add1~59\);

-- Location: FF_X27_Y28_N29
\inst|process_1:EC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~60_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[30]~q\);

-- Location: LCCOMB_X27_Y28_N28
\inst|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~60_combout\ = (\inst|process_1:EC[30]~q\ & (\inst|Add1~59\ $ (GND))) # (!\inst|process_1:EC[30]~q\ & (!\inst|Add1~59\ & VCC))
-- \inst|Add1~61\ = CARRY((\inst|process_1:EC[30]~q\ & !\inst|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1:EC[30]~q\,
	datad => VCC,
	cin => \inst|Add1~59\,
	combout => \inst|Add1~60_combout\,
	cout => \inst|Add1~61\);

-- Location: LCCOMB_X28_Y28_N22
\inst|state_csl~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csl~11_combout\ = (!\inst|Add1~58_combout\ & (!\inst|Add1~54_combout\ & (!\inst|Add1~56_combout\ & !\inst|Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~58_combout\,
	datab => \inst|Add1~54_combout\,
	datac => \inst|Add1~56_combout\,
	datad => \inst|Add1~60_combout\,
	combout => \inst|state_csl~11_combout\);

-- Location: FF_X27_Y28_N31
\inst|process_1:EC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add1~62_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|process_1:EC[31]~q\);

-- Location: LCCOMB_X27_Y28_N30
\inst|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~62_combout\ = \inst|process_1:EC[31]~q\ $ (\inst|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1:EC[31]~q\,
	cin => \inst|Add1~61\,
	combout => \inst|Add1~62_combout\);

-- Location: LCCOMB_X28_Y29_N30
\inst|state_csl~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csl~6_combout\ = (!\inst|Add1~24_combout\ & (!\inst|Add1~28_combout\ & (!\inst|Add1~26_combout\ & !\inst|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~24_combout\,
	datab => \inst|Add1~28_combout\,
	datac => \inst|Add1~26_combout\,
	datad => \inst|Add1~22_combout\,
	combout => \inst|state_csl~6_combout\);

-- Location: LCCOMB_X28_Y28_N20
\inst|state_csl~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csl~8_combout\ = (!\inst|Add1~40_combout\ & (!\inst|Add1~38_combout\ & (!\inst|Add1~44_combout\ & !\inst|Add1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~40_combout\,
	datab => \inst|Add1~38_combout\,
	datac => \inst|Add1~44_combout\,
	datad => \inst|Add1~42_combout\,
	combout => \inst|state_csl~8_combout\);

-- Location: LCCOMB_X28_Y28_N30
\inst|state_csl~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csl~7_combout\ = (!\inst|Add1~34_combout\ & (!\inst|Add1~36_combout\ & (!\inst|Add1~32_combout\ & !\inst|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~34_combout\,
	datab => \inst|Add1~36_combout\,
	datac => \inst|Add1~32_combout\,
	datad => \inst|Add1~30_combout\,
	combout => \inst|state_csl~7_combout\);

-- Location: LCCOMB_X28_Y28_N2
\inst|state_csl~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csl~9_combout\ = (!\inst|Add1~46_combout\ & (!\inst|Add1~50_combout\ & (!\inst|Add1~48_combout\ & !\inst|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~46_combout\,
	datab => \inst|Add1~50_combout\,
	datac => \inst|Add1~48_combout\,
	datad => \inst|Add1~52_combout\,
	combout => \inst|state_csl~9_combout\);

-- Location: LCCOMB_X28_Y28_N8
\inst|state_csl~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csl~10_combout\ = (\inst|state_csl~6_combout\ & (\inst|state_csl~8_combout\ & (\inst|state_csl~7_combout\ & \inst|state_csl~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_csl~6_combout\,
	datab => \inst|state_csl~8_combout\,
	datac => \inst|state_csl~7_combout\,
	datad => \inst|state_csl~9_combout\,
	combout => \inst|state_csl~10_combout\);

-- Location: LCCOMB_X28_Y29_N18
\inst|state_csl~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csl~4_combout\ = (!\inst|Add1~14_combout\ & (!\inst|Add1~18_combout\ & (!\inst|Add1~16_combout\ & !\inst|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~14_combout\,
	datab => \inst|Add1~18_combout\,
	datac => \inst|Add1~16_combout\,
	datad => \inst|Add1~20_combout\,
	combout => \inst|state_csl~4_combout\);

-- Location: LCCOMB_X27_Y27_N22
\inst|state_csl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csl~2_combout\ = (\inst|Add1~2_combout\ & (!\inst|Add1~0_combout\ & (\inst|state_csl~q\ & !\inst|Add1~8_combout\))) # (!\inst|Add1~2_combout\ & (\inst|Add1~0_combout\ & (!\inst|state_csl~q\ & \inst|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~2_combout\,
	datab => \inst|Add1~0_combout\,
	datac => \inst|state_csl~q\,
	datad => \inst|Add1~8_combout\,
	combout => \inst|state_csl~2_combout\);

-- Location: LCCOMB_X28_Y29_N0
\inst|state_csl~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csl~3_combout\ = (!\inst|Add1~12_combout\ & (!\inst|Add1~6_combout\ & (!\inst|Add1~4_combout\ & !\inst|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~12_combout\,
	datab => \inst|Add1~6_combout\,
	datac => \inst|Add1~4_combout\,
	datad => \inst|Add1~10_combout\,
	combout => \inst|state_csl~3_combout\);

-- Location: LCCOMB_X28_Y29_N28
\inst|state_csl~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csl~5_combout\ = (\inst|state_csl~4_combout\ & (\inst|state_csl~2_combout\ & \inst|state_csl~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state_csl~4_combout\,
	datac => \inst|state_csl~2_combout\,
	datad => \inst|state_csl~3_combout\,
	combout => \inst|state_csl~5_combout\);

-- Location: LCCOMB_X28_Y28_N24
\inst|state_csl~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csl~12_combout\ = (\inst|state_csl~11_combout\ & (!\inst|Add1~62_combout\ & (\inst|state_csl~10_combout\ & \inst|state_csl~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_csl~11_combout\,
	datab => \inst|Add1~62_combout\,
	datac => \inst|state_csl~10_combout\,
	datad => \inst|state_csl~5_combout\,
	combout => \inst|state_csl~12_combout\);

-- Location: LCCOMB_X28_Y28_N0
\inst|state_csl~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_csl~13_combout\ = \inst|state_csl~q\ $ (((!\inst|done~combout\ & (!\inst|wt~q\ & \inst|state_csl~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|done~combout\,
	datab => \inst|wt~q\,
	datac => \inst|state_csl~q\,
	datad => \inst|state_csl~12_combout\,
	combout => \inst|state_csl~13_combout\);

-- Location: FF_X28_Y28_N1
\inst|state_csl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|state_csl~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state_csl~q\);

-- Location: FF_X29_Y25_N1
\inst|CSD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst|state_csl~q\,
	sload => VCC,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CSD~q\);

-- Location: LCCOMB_X21_Y31_N18
\inst|delay_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|delay_counter~4_combout\ = (\inst|Add6~26_combout\ & !\inst|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add6~26_combout\,
	datad => \inst|Equal10~10_combout\,
	combout => \inst|delay_counter~4_combout\);

-- Location: FF_X21_Y31_N19
\inst|delay_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|delay_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(13));

-- Location: LCCOMB_X20_Y31_N0
\inst|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~0_combout\ = \inst|delay_counter\(0) $ (VCC)
-- \inst|Add6~1\ = CARRY(\inst|delay_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(0),
	datad => VCC,
	combout => \inst|Add6~0_combout\,
	cout => \inst|Add6~1\);

-- Location: FF_X20_Y31_N1
\inst|delay_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(0));

-- Location: LCCOMB_X20_Y31_N2
\inst|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~2_combout\ = (\inst|delay_counter\(1) & (!\inst|Add6~1\)) # (!\inst|delay_counter\(1) & ((\inst|Add6~1\) # (GND)))
-- \inst|Add6~3\ = CARRY((!\inst|Add6~1\) # (!\inst|delay_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(1),
	datad => VCC,
	cin => \inst|Add6~1\,
	combout => \inst|Add6~2_combout\,
	cout => \inst|Add6~3\);

-- Location: FF_X20_Y31_N3
\inst|delay_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(1));

-- Location: LCCOMB_X20_Y31_N4
\inst|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~4_combout\ = (\inst|delay_counter\(2) & (\inst|Add6~3\ $ (GND))) # (!\inst|delay_counter\(2) & (!\inst|Add6~3\ & VCC))
-- \inst|Add6~5\ = CARRY((\inst|delay_counter\(2) & !\inst|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(2),
	datad => VCC,
	cin => \inst|Add6~3\,
	combout => \inst|Add6~4_combout\,
	cout => \inst|Add6~5\);

-- Location: FF_X20_Y31_N5
\inst|delay_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(2));

-- Location: LCCOMB_X20_Y31_N6
\inst|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~6_combout\ = (\inst|delay_counter\(3) & (!\inst|Add6~5\)) # (!\inst|delay_counter\(3) & ((\inst|Add6~5\) # (GND)))
-- \inst|Add6~7\ = CARRY((!\inst|Add6~5\) # (!\inst|delay_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|delay_counter\(3),
	datad => VCC,
	cin => \inst|Add6~5\,
	combout => \inst|Add6~6_combout\,
	cout => \inst|Add6~7\);

-- Location: FF_X20_Y31_N7
\inst|delay_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(3));

-- Location: LCCOMB_X20_Y31_N8
\inst|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~8_combout\ = (\inst|delay_counter\(4) & (\inst|Add6~7\ $ (GND))) # (!\inst|delay_counter\(4) & (!\inst|Add6~7\ & VCC))
-- \inst|Add6~9\ = CARRY((\inst|delay_counter\(4) & !\inst|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|delay_counter\(4),
	datad => VCC,
	cin => \inst|Add6~7\,
	combout => \inst|Add6~8_combout\,
	cout => \inst|Add6~9\);

-- Location: LCCOMB_X21_Y31_N2
\inst|delay_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|delay_counter~0_combout\ = (\inst|Add6~8_combout\ & !\inst|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add6~8_combout\,
	datad => \inst|Equal10~10_combout\,
	combout => \inst|delay_counter~0_combout\);

-- Location: FF_X21_Y31_N3
\inst|delay_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|delay_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(4));

-- Location: LCCOMB_X20_Y31_N10
\inst|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~10_combout\ = (\inst|delay_counter\(5) & (!\inst|Add6~9\)) # (!\inst|delay_counter\(5) & ((\inst|Add6~9\) # (GND)))
-- \inst|Add6~11\ = CARRY((!\inst|Add6~9\) # (!\inst|delay_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|delay_counter\(5),
	datad => VCC,
	cin => \inst|Add6~9\,
	combout => \inst|Add6~10_combout\,
	cout => \inst|Add6~11\);

-- Location: FF_X20_Y31_N11
\inst|delay_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(5));

-- Location: LCCOMB_X20_Y31_N12
\inst|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~12_combout\ = (\inst|delay_counter\(6) & (\inst|Add6~11\ $ (GND))) # (!\inst|delay_counter\(6) & (!\inst|Add6~11\ & VCC))
-- \inst|Add6~13\ = CARRY((\inst|delay_counter\(6) & !\inst|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|delay_counter\(6),
	datad => VCC,
	cin => \inst|Add6~11\,
	combout => \inst|Add6~12_combout\,
	cout => \inst|Add6~13\);

-- Location: FF_X20_Y31_N13
\inst|delay_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(6));

-- Location: LCCOMB_X20_Y31_N14
\inst|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~14_combout\ = (\inst|delay_counter\(7) & (!\inst|Add6~13\)) # (!\inst|delay_counter\(7) & ((\inst|Add6~13\) # (GND)))
-- \inst|Add6~15\ = CARRY((!\inst|Add6~13\) # (!\inst|delay_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(7),
	datad => VCC,
	cin => \inst|Add6~13\,
	combout => \inst|Add6~14_combout\,
	cout => \inst|Add6~15\);

-- Location: FF_X20_Y31_N15
\inst|delay_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(7));

-- Location: LCCOMB_X20_Y31_N16
\inst|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~16_combout\ = (\inst|delay_counter\(8) & (\inst|Add6~15\ $ (GND))) # (!\inst|delay_counter\(8) & (!\inst|Add6~15\ & VCC))
-- \inst|Add6~17\ = CARRY((\inst|delay_counter\(8) & !\inst|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(8),
	datad => VCC,
	cin => \inst|Add6~15\,
	combout => \inst|Add6~16_combout\,
	cout => \inst|Add6~17\);

-- Location: LCCOMB_X21_Y31_N10
\inst|delay_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|delay_counter~1_combout\ = (\inst|Add6~16_combout\ & !\inst|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add6~16_combout\,
	datad => \inst|Equal10~10_combout\,
	combout => \inst|delay_counter~1_combout\);

-- Location: FF_X21_Y31_N11
\inst|delay_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|delay_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(8));

-- Location: LCCOMB_X20_Y31_N18
\inst|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~18_combout\ = (\inst|delay_counter\(9) & (!\inst|Add6~17\)) # (!\inst|delay_counter\(9) & ((\inst|Add6~17\) # (GND)))
-- \inst|Add6~19\ = CARRY((!\inst|Add6~17\) # (!\inst|delay_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|delay_counter\(9),
	datad => VCC,
	cin => \inst|Add6~17\,
	combout => \inst|Add6~18_combout\,
	cout => \inst|Add6~19\);

-- Location: LCCOMB_X21_Y31_N4
\inst|delay_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|delay_counter~2_combout\ = (\inst|Add6~18_combout\ & !\inst|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add6~18_combout\,
	datad => \inst|Equal10~10_combout\,
	combout => \inst|delay_counter~2_combout\);

-- Location: FF_X21_Y31_N5
\inst|delay_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|delay_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(9));

-- Location: LCCOMB_X20_Y31_N20
\inst|Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~20_combout\ = (\inst|delay_counter\(10) & (\inst|Add6~19\ $ (GND))) # (!\inst|delay_counter\(10) & (!\inst|Add6~19\ & VCC))
-- \inst|Add6~21\ = CARRY((\inst|delay_counter\(10) & !\inst|Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(10),
	datad => VCC,
	cin => \inst|Add6~19\,
	combout => \inst|Add6~20_combout\,
	cout => \inst|Add6~21\);

-- Location: LCCOMB_X21_Y31_N26
\inst|delay_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|delay_counter~3_combout\ = (\inst|Add6~20_combout\ & !\inst|Equal10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add6~20_combout\,
	datad => \inst|Equal10~10_combout\,
	combout => \inst|delay_counter~3_combout\);

-- Location: FF_X21_Y31_N27
\inst|delay_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|delay_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(10));

-- Location: LCCOMB_X20_Y31_N22
\inst|Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~22_combout\ = (\inst|delay_counter\(11) & (!\inst|Add6~21\)) # (!\inst|delay_counter\(11) & ((\inst|Add6~21\) # (GND)))
-- \inst|Add6~23\ = CARRY((!\inst|Add6~21\) # (!\inst|delay_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|delay_counter\(11),
	datad => VCC,
	cin => \inst|Add6~21\,
	combout => \inst|Add6~22_combout\,
	cout => \inst|Add6~23\);

-- Location: FF_X20_Y31_N23
\inst|delay_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(11));

-- Location: LCCOMB_X20_Y31_N24
\inst|Add6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~24_combout\ = (\inst|delay_counter\(12) & (\inst|Add6~23\ $ (GND))) # (!\inst|delay_counter\(12) & (!\inst|Add6~23\ & VCC))
-- \inst|Add6~25\ = CARRY((\inst|delay_counter\(12) & !\inst|Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(12),
	datad => VCC,
	cin => \inst|Add6~23\,
	combout => \inst|Add6~24_combout\,
	cout => \inst|Add6~25\);

-- Location: FF_X20_Y31_N25
\inst|delay_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(12));

-- Location: LCCOMB_X20_Y31_N26
\inst|Add6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~26_combout\ = (\inst|delay_counter\(13) & (!\inst|Add6~25\)) # (!\inst|delay_counter\(13) & ((\inst|Add6~25\) # (GND)))
-- \inst|Add6~27\ = CARRY((!\inst|Add6~25\) # (!\inst|delay_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(13),
	datad => VCC,
	cin => \inst|Add6~25\,
	combout => \inst|Add6~26_combout\,
	cout => \inst|Add6~27\);

-- Location: FF_X20_Y31_N29
\inst|delay_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(14));

-- Location: LCCOMB_X20_Y31_N28
\inst|Add6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~28_combout\ = (\inst|delay_counter\(14) & (\inst|Add6~27\ $ (GND))) # (!\inst|delay_counter\(14) & (!\inst|Add6~27\ & VCC))
-- \inst|Add6~29\ = CARRY((\inst|delay_counter\(14) & !\inst|Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(14),
	datad => VCC,
	cin => \inst|Add6~27\,
	combout => \inst|Add6~28_combout\,
	cout => \inst|Add6~29\);

-- Location: FF_X20_Y31_N31
\inst|delay_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(15));

-- Location: LCCOMB_X20_Y31_N30
\inst|Add6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~30_combout\ = (\inst|delay_counter\(15) & (!\inst|Add6~29\)) # (!\inst|delay_counter\(15) & ((\inst|Add6~29\) # (GND)))
-- \inst|Add6~31\ = CARRY((!\inst|Add6~29\) # (!\inst|delay_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|delay_counter\(15),
	datad => VCC,
	cin => \inst|Add6~29\,
	combout => \inst|Add6~30_combout\,
	cout => \inst|Add6~31\);

-- Location: LCCOMB_X21_Y31_N12
\inst|Equal10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal10~3_combout\ = (\inst|Add6~26_combout\ & (!\inst|Add6~28_combout\ & (!\inst|Add6~30_combout\ & !\inst|Add6~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add6~26_combout\,
	datab => \inst|Add6~28_combout\,
	datac => \inst|Add6~30_combout\,
	datad => \inst|Add6~24_combout\,
	combout => \inst|Equal10~3_combout\);

-- Location: LCCOMB_X21_Y31_N24
\inst|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal10~1_combout\ = (!\inst|Add6~12_combout\ & (!\inst|Add6~14_combout\ & (!\inst|Add6~10_combout\ & \inst|Add6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add6~12_combout\,
	datab => \inst|Add6~14_combout\,
	datac => \inst|Add6~10_combout\,
	datad => \inst|Add6~8_combout\,
	combout => \inst|Equal10~1_combout\);

-- Location: LCCOMB_X21_Y31_N8
\inst|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal10~0_combout\ = (!\inst|Add6~0_combout\ & (!\inst|Add6~6_combout\ & (!\inst|Add6~4_combout\ & !\inst|Add6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add6~0_combout\,
	datab => \inst|Add6~6_combout\,
	datac => \inst|Add6~4_combout\,
	datad => \inst|Add6~2_combout\,
	combout => \inst|Equal10~0_combout\);

-- Location: LCCOMB_X21_Y31_N28
\inst|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal10~2_combout\ = (\inst|Add6~16_combout\ & (\inst|Add6~18_combout\ & (!\inst|Add6~22_combout\ & \inst|Add6~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add6~16_combout\,
	datab => \inst|Add6~18_combout\,
	datac => \inst|Add6~22_combout\,
	datad => \inst|Add6~20_combout\,
	combout => \inst|Equal10~2_combout\);

-- Location: LCCOMB_X21_Y31_N22
\inst|Equal10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal10~4_combout\ = (\inst|Equal10~3_combout\ & (\inst|Equal10~1_combout\ & (\inst|Equal10~0_combout\ & \inst|Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal10~3_combout\,
	datab => \inst|Equal10~1_combout\,
	datac => \inst|Equal10~0_combout\,
	datad => \inst|Equal10~2_combout\,
	combout => \inst|Equal10~4_combout\);

-- Location: FF_X20_Y30_N27
\inst|delay_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(29));

-- Location: LCCOMB_X20_Y30_N0
\inst|Add6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~32_combout\ = (\inst|delay_counter\(16) & (\inst|Add6~31\ $ (GND))) # (!\inst|delay_counter\(16) & (!\inst|Add6~31\ & VCC))
-- \inst|Add6~33\ = CARRY((\inst|delay_counter\(16) & !\inst|Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(16),
	datad => VCC,
	cin => \inst|Add6~31\,
	combout => \inst|Add6~32_combout\,
	cout => \inst|Add6~33\);

-- Location: FF_X20_Y30_N1
\inst|delay_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(16));

-- Location: LCCOMB_X20_Y30_N2
\inst|Add6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~34_combout\ = (\inst|delay_counter\(17) & (!\inst|Add6~33\)) # (!\inst|delay_counter\(17) & ((\inst|Add6~33\) # (GND)))
-- \inst|Add6~35\ = CARRY((!\inst|Add6~33\) # (!\inst|delay_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(17),
	datad => VCC,
	cin => \inst|Add6~33\,
	combout => \inst|Add6~34_combout\,
	cout => \inst|Add6~35\);

-- Location: FF_X20_Y30_N3
\inst|delay_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(17));

-- Location: LCCOMB_X20_Y30_N4
\inst|Add6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~36_combout\ = (\inst|delay_counter\(18) & (\inst|Add6~35\ $ (GND))) # (!\inst|delay_counter\(18) & (!\inst|Add6~35\ & VCC))
-- \inst|Add6~37\ = CARRY((\inst|delay_counter\(18) & !\inst|Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(18),
	datad => VCC,
	cin => \inst|Add6~35\,
	combout => \inst|Add6~36_combout\,
	cout => \inst|Add6~37\);

-- Location: FF_X20_Y30_N5
\inst|delay_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(18));

-- Location: LCCOMB_X20_Y30_N6
\inst|Add6~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~38_combout\ = (\inst|delay_counter\(19) & (!\inst|Add6~37\)) # (!\inst|delay_counter\(19) & ((\inst|Add6~37\) # (GND)))
-- \inst|Add6~39\ = CARRY((!\inst|Add6~37\) # (!\inst|delay_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|delay_counter\(19),
	datad => VCC,
	cin => \inst|Add6~37\,
	combout => \inst|Add6~38_combout\,
	cout => \inst|Add6~39\);

-- Location: FF_X20_Y30_N7
\inst|delay_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(19));

-- Location: LCCOMB_X20_Y30_N8
\inst|Add6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~40_combout\ = (\inst|delay_counter\(20) & (\inst|Add6~39\ $ (GND))) # (!\inst|delay_counter\(20) & (!\inst|Add6~39\ & VCC))
-- \inst|Add6~41\ = CARRY((\inst|delay_counter\(20) & !\inst|Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(20),
	datad => VCC,
	cin => \inst|Add6~39\,
	combout => \inst|Add6~40_combout\,
	cout => \inst|Add6~41\);

-- Location: FF_X20_Y30_N9
\inst|delay_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(20));

-- Location: LCCOMB_X20_Y30_N10
\inst|Add6~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~42_combout\ = (\inst|delay_counter\(21) & (!\inst|Add6~41\)) # (!\inst|delay_counter\(21) & ((\inst|Add6~41\) # (GND)))
-- \inst|Add6~43\ = CARRY((!\inst|Add6~41\) # (!\inst|delay_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|delay_counter\(21),
	datad => VCC,
	cin => \inst|Add6~41\,
	combout => \inst|Add6~42_combout\,
	cout => \inst|Add6~43\);

-- Location: FF_X20_Y30_N11
\inst|delay_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(21));

-- Location: LCCOMB_X20_Y30_N12
\inst|Add6~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~44_combout\ = (\inst|delay_counter\(22) & (\inst|Add6~43\ $ (GND))) # (!\inst|delay_counter\(22) & (!\inst|Add6~43\ & VCC))
-- \inst|Add6~45\ = CARRY((\inst|delay_counter\(22) & !\inst|Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|delay_counter\(22),
	datad => VCC,
	cin => \inst|Add6~43\,
	combout => \inst|Add6~44_combout\,
	cout => \inst|Add6~45\);

-- Location: FF_X20_Y30_N13
\inst|delay_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(22));

-- Location: LCCOMB_X20_Y30_N14
\inst|Add6~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~46_combout\ = (\inst|delay_counter\(23) & (!\inst|Add6~45\)) # (!\inst|delay_counter\(23) & ((\inst|Add6~45\) # (GND)))
-- \inst|Add6~47\ = CARRY((!\inst|Add6~45\) # (!\inst|delay_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(23),
	datad => VCC,
	cin => \inst|Add6~45\,
	combout => \inst|Add6~46_combout\,
	cout => \inst|Add6~47\);

-- Location: FF_X20_Y30_N15
\inst|delay_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(23));

-- Location: LCCOMB_X20_Y30_N16
\inst|Add6~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~48_combout\ = (\inst|delay_counter\(24) & (\inst|Add6~47\ $ (GND))) # (!\inst|delay_counter\(24) & (!\inst|Add6~47\ & VCC))
-- \inst|Add6~49\ = CARRY((\inst|delay_counter\(24) & !\inst|Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(24),
	datad => VCC,
	cin => \inst|Add6~47\,
	combout => \inst|Add6~48_combout\,
	cout => \inst|Add6~49\);

-- Location: FF_X20_Y30_N17
\inst|delay_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(24));

-- Location: LCCOMB_X20_Y30_N18
\inst|Add6~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~50_combout\ = (\inst|delay_counter\(25) & (!\inst|Add6~49\)) # (!\inst|delay_counter\(25) & ((\inst|Add6~49\) # (GND)))
-- \inst|Add6~51\ = CARRY((!\inst|Add6~49\) # (!\inst|delay_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(25),
	datad => VCC,
	cin => \inst|Add6~49\,
	combout => \inst|Add6~50_combout\,
	cout => \inst|Add6~51\);

-- Location: FF_X20_Y30_N19
\inst|delay_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(25));

-- Location: LCCOMB_X20_Y30_N20
\inst|Add6~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~52_combout\ = (\inst|delay_counter\(26) & (\inst|Add6~51\ $ (GND))) # (!\inst|delay_counter\(26) & (!\inst|Add6~51\ & VCC))
-- \inst|Add6~53\ = CARRY((\inst|delay_counter\(26) & !\inst|Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(26),
	datad => VCC,
	cin => \inst|Add6~51\,
	combout => \inst|Add6~52_combout\,
	cout => \inst|Add6~53\);

-- Location: FF_X20_Y30_N21
\inst|delay_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(26));

-- Location: LCCOMB_X20_Y30_N22
\inst|Add6~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~54_combout\ = (\inst|delay_counter\(27) & (!\inst|Add6~53\)) # (!\inst|delay_counter\(27) & ((\inst|Add6~53\) # (GND)))
-- \inst|Add6~55\ = CARRY((!\inst|Add6~53\) # (!\inst|delay_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|delay_counter\(27),
	datad => VCC,
	cin => \inst|Add6~53\,
	combout => \inst|Add6~54_combout\,
	cout => \inst|Add6~55\);

-- Location: FF_X20_Y30_N23
\inst|delay_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(27));

-- Location: LCCOMB_X20_Y30_N24
\inst|Add6~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~56_combout\ = (\inst|delay_counter\(28) & (\inst|Add6~55\ $ (GND))) # (!\inst|delay_counter\(28) & (!\inst|Add6~55\ & VCC))
-- \inst|Add6~57\ = CARRY((\inst|delay_counter\(28) & !\inst|Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(28),
	datad => VCC,
	cin => \inst|Add6~55\,
	combout => \inst|Add6~56_combout\,
	cout => \inst|Add6~57\);

-- Location: FF_X20_Y30_N25
\inst|delay_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(28));

-- Location: LCCOMB_X20_Y30_N26
\inst|Add6~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~58_combout\ = (\inst|delay_counter\(29) & (!\inst|Add6~57\)) # (!\inst|delay_counter\(29) & ((\inst|Add6~57\) # (GND)))
-- \inst|Add6~59\ = CARRY((!\inst|Add6~57\) # (!\inst|delay_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|delay_counter\(29),
	datad => VCC,
	cin => \inst|Add6~57\,
	combout => \inst|Add6~58_combout\,
	cout => \inst|Add6~59\);

-- Location: FF_X20_Y30_N29
\inst|delay_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(30));

-- Location: LCCOMB_X20_Y30_N28
\inst|Add6~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~60_combout\ = (\inst|delay_counter\(30) & (\inst|Add6~59\ $ (GND))) # (!\inst|delay_counter\(30) & (!\inst|Add6~59\ & VCC))
-- \inst|Add6~61\ = CARRY((\inst|delay_counter\(30) & !\inst|Add6~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|delay_counter\(30),
	datad => VCC,
	cin => \inst|Add6~59\,
	combout => \inst|Add6~60_combout\,
	cout => \inst|Add6~61\);

-- Location: FF_X20_Y30_N31
\inst|delay_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add6~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|delay_counter\(31));

-- Location: LCCOMB_X20_Y30_N30
\inst|Add6~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~62_combout\ = \inst|delay_counter\(31) $ (\inst|Add6~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|delay_counter\(31),
	cin => \inst|Add6~61\,
	combout => \inst|Add6~62_combout\);

-- Location: LCCOMB_X21_Y30_N0
\inst|Equal10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal10~9_combout\ = (!\inst|Add6~58_combout\ & (!\inst|Add6~60_combout\ & (!\inst|Add6~56_combout\ & !\inst|Add6~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add6~58_combout\,
	datab => \inst|Add6~60_combout\,
	datac => \inst|Add6~56_combout\,
	datad => \inst|Add6~62_combout\,
	combout => \inst|Equal10~9_combout\);

-- Location: LCCOMB_X21_Y30_N18
\inst|Equal10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal10~8_combout\ = (!\inst|Add6~48_combout\ & (!\inst|Add6~52_combout\ & (!\inst|Add6~50_combout\ & !\inst|Add6~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add6~48_combout\,
	datab => \inst|Add6~52_combout\,
	datac => \inst|Add6~50_combout\,
	datad => \inst|Add6~54_combout\,
	combout => \inst|Equal10~8_combout\);

-- Location: LCCOMB_X21_Y30_N16
\inst|Equal10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal10~5_combout\ = (!\inst|Add6~32_combout\ & (!\inst|Add6~38_combout\ & (!\inst|Add6~36_combout\ & !\inst|Add6~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add6~32_combout\,
	datab => \inst|Add6~38_combout\,
	datac => \inst|Add6~36_combout\,
	datad => \inst|Add6~34_combout\,
	combout => \inst|Equal10~5_combout\);

-- Location: LCCOMB_X21_Y30_N30
\inst|Equal10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal10~6_combout\ = (!\inst|Add6~40_combout\ & !\inst|Add6~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add6~40_combout\,
	datad => \inst|Add6~42_combout\,
	combout => \inst|Equal10~6_combout\);

-- Location: LCCOMB_X21_Y30_N12
\inst|Equal10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal10~7_combout\ = (!\inst|Add6~46_combout\ & (\inst|Equal10~5_combout\ & (\inst|Equal10~6_combout\ & !\inst|Add6~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add6~46_combout\,
	datab => \inst|Equal10~5_combout\,
	datac => \inst|Equal10~6_combout\,
	datad => \inst|Add6~44_combout\,
	combout => \inst|Equal10~7_combout\);

-- Location: LCCOMB_X21_Y31_N0
\inst|Equal10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal10~10_combout\ = (\inst|Equal10~4_combout\ & (\inst|Equal10~9_combout\ & (\inst|Equal10~8_combout\ & \inst|Equal10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal10~4_combout\,
	datab => \inst|Equal10~9_combout\,
	datac => \inst|Equal10~8_combout\,
	datad => \inst|Equal10~7_combout\,
	combout => \inst|Equal10~10_combout\);

-- Location: LCCOMB_X28_Y28_N18
\inst|wt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|wt~0_combout\ = (!\inst|Equal10~10_combout\ & ((\inst|wt~q\) # ((\inst|CSU~q\ & \inst|CSD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CSU~q\,
	datab => \inst|CSD~q\,
	datac => \inst|wt~q\,
	datad => \inst|Equal10~10_combout\,
	combout => \inst|wt~0_combout\);

-- Location: FF_X28_Y28_N19
\inst|wt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|wt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|wt~q\);

-- Location: IOIBUF_X0_Y16_N22
\Button~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Button,
	o => \Button~input_o\);

-- Location: LCCOMB_X28_Y28_N6
\inst|done\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|done~combout\ = (!\Button~input_o\ & ((\inst|wt~q\) # (\inst|done~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|wt~q\,
	datac => \Button~input_o\,
	datad => \inst|done~combout\,
	combout => \inst|done~combout\);

-- Location: FF_X30_Y28_N25
\inst|CC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~56_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(28));

-- Location: LCCOMB_X30_Y29_N0
\inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = \inst|CC\(0) $ (VCC)
-- \inst|Add2~1\ = CARRY(\inst|CC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CC\(0),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X29_Y29_N16
\inst|CC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|CC~0_combout\ = (\inst|Add2~0_combout\ & !\inst|state_clk~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add2~0_combout\,
	datad => \inst|state_clk~12_combout\,
	combout => \inst|CC~0_combout\);

-- Location: FF_X29_Y29_N17
\inst|CC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|CC~0_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(0));

-- Location: LCCOMB_X30_Y29_N2
\inst|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|CC\(1) & (!\inst|Add2~1\)) # (!\inst|CC\(1) & ((\inst|Add2~1\) # (GND)))
-- \inst|Add2~3\ = CARRY((!\inst|Add2~1\) # (!\inst|CC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X29_Y29_N6
\inst|CC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|CC~1_combout\ = (\inst|Add2~2_combout\ & !\inst|state_clk~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~2_combout\,
	datad => \inst|state_clk~12_combout\,
	combout => \inst|CC~1_combout\);

-- Location: FF_X29_Y29_N7
\inst|CC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|CC~1_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(1));

-- Location: LCCOMB_X30_Y29_N4
\inst|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|CC\(2) & (\inst|Add2~3\ $ (GND))) # (!\inst|CC\(2) & (!\inst|Add2~3\ & VCC))
-- \inst|Add2~5\ = CARRY((\inst|CC\(2) & !\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(2),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: FF_X30_Y29_N5
\inst|CC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~4_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(2));

-- Location: LCCOMB_X30_Y29_N6
\inst|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|CC\(3) & (!\inst|Add2~5\)) # (!\inst|CC\(3) & ((\inst|Add2~5\) # (GND)))
-- \inst|Add2~7\ = CARRY((!\inst|Add2~5\) # (!\inst|CC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CC\(3),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: FF_X30_Y29_N7
\inst|CC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~6_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(3));

-- Location: LCCOMB_X30_Y29_N8
\inst|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|CC\(4) & (\inst|Add2~7\ $ (GND))) # (!\inst|CC\(4) & (!\inst|Add2~7\ & VCC))
-- \inst|Add2~9\ = CARRY((\inst|CC\(4) & !\inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CC\(4),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X29_Y29_N12
\inst|CC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|CC~2_combout\ = (\inst|Add2~8_combout\ & !\inst|state_clk~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add2~8_combout\,
	datad => \inst|state_clk~12_combout\,
	combout => \inst|CC~2_combout\);

-- Location: FF_X29_Y29_N13
\inst|CC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|CC~2_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(4));

-- Location: LCCOMB_X30_Y29_N10
\inst|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst|CC\(5) & (!\inst|Add2~9\)) # (!\inst|CC\(5) & ((\inst|Add2~9\) # (GND)))
-- \inst|Add2~11\ = CARRY((!\inst|Add2~9\) # (!\inst|CC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CC\(5),
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: FF_X30_Y29_N11
\inst|CC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~10_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(5));

-- Location: LCCOMB_X30_Y29_N12
\inst|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = (\inst|CC\(6) & (\inst|Add2~11\ $ (GND))) # (!\inst|CC\(6) & (!\inst|Add2~11\ & VCC))
-- \inst|Add2~13\ = CARRY((\inst|CC\(6) & !\inst|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CC\(6),
	datad => VCC,
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\,
	cout => \inst|Add2~13\);

-- Location: FF_X30_Y29_N13
\inst|CC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~12_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(6));

-- Location: LCCOMB_X30_Y29_N14
\inst|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = (\inst|CC\(7) & (!\inst|Add2~13\)) # (!\inst|CC\(7) & ((\inst|Add2~13\) # (GND)))
-- \inst|Add2~15\ = CARRY((!\inst|Add2~13\) # (!\inst|CC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(7),
	datad => VCC,
	cin => \inst|Add2~13\,
	combout => \inst|Add2~14_combout\,
	cout => \inst|Add2~15\);

-- Location: FF_X30_Y29_N15
\inst|CC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~14_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(7));

-- Location: LCCOMB_X30_Y29_N16
\inst|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~16_combout\ = (\inst|CC\(8) & (\inst|Add2~15\ $ (GND))) # (!\inst|CC\(8) & (!\inst|Add2~15\ & VCC))
-- \inst|Add2~17\ = CARRY((\inst|CC\(8) & !\inst|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(8),
	datad => VCC,
	cin => \inst|Add2~15\,
	combout => \inst|Add2~16_combout\,
	cout => \inst|Add2~17\);

-- Location: FF_X30_Y29_N17
\inst|CC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~16_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(8));

-- Location: LCCOMB_X30_Y29_N18
\inst|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~18_combout\ = (\inst|CC\(9) & (!\inst|Add2~17\)) # (!\inst|CC\(9) & ((\inst|Add2~17\) # (GND)))
-- \inst|Add2~19\ = CARRY((!\inst|Add2~17\) # (!\inst|CC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(9),
	datad => VCC,
	cin => \inst|Add2~17\,
	combout => \inst|Add2~18_combout\,
	cout => \inst|Add2~19\);

-- Location: FF_X30_Y29_N19
\inst|CC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~18_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(9));

-- Location: LCCOMB_X30_Y29_N20
\inst|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~20_combout\ = (\inst|CC\(10) & (\inst|Add2~19\ $ (GND))) # (!\inst|CC\(10) & (!\inst|Add2~19\ & VCC))
-- \inst|Add2~21\ = CARRY((\inst|CC\(10) & !\inst|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(10),
	datad => VCC,
	cin => \inst|Add2~19\,
	combout => \inst|Add2~20_combout\,
	cout => \inst|Add2~21\);

-- Location: FF_X30_Y29_N21
\inst|CC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~20_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(10));

-- Location: LCCOMB_X30_Y29_N22
\inst|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~22_combout\ = (\inst|CC\(11) & (!\inst|Add2~21\)) # (!\inst|CC\(11) & ((\inst|Add2~21\) # (GND)))
-- \inst|Add2~23\ = CARRY((!\inst|Add2~21\) # (!\inst|CC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CC\(11),
	datad => VCC,
	cin => \inst|Add2~21\,
	combout => \inst|Add2~22_combout\,
	cout => \inst|Add2~23\);

-- Location: FF_X30_Y29_N23
\inst|CC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~22_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(11));

-- Location: LCCOMB_X30_Y29_N24
\inst|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~24_combout\ = (\inst|CC\(12) & (\inst|Add2~23\ $ (GND))) # (!\inst|CC\(12) & (!\inst|Add2~23\ & VCC))
-- \inst|Add2~25\ = CARRY((\inst|CC\(12) & !\inst|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(12),
	datad => VCC,
	cin => \inst|Add2~23\,
	combout => \inst|Add2~24_combout\,
	cout => \inst|Add2~25\);

-- Location: FF_X30_Y29_N25
\inst|CC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~24_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(12));

-- Location: LCCOMB_X30_Y29_N26
\inst|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~26_combout\ = (\inst|CC\(13) & (!\inst|Add2~25\)) # (!\inst|CC\(13) & ((\inst|Add2~25\) # (GND)))
-- \inst|Add2~27\ = CARRY((!\inst|Add2~25\) # (!\inst|CC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CC\(13),
	datad => VCC,
	cin => \inst|Add2~25\,
	combout => \inst|Add2~26_combout\,
	cout => \inst|Add2~27\);

-- Location: FF_X30_Y29_N27
\inst|CC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~26_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(13));

-- Location: LCCOMB_X30_Y29_N28
\inst|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~28_combout\ = (\inst|CC\(14) & (\inst|Add2~27\ $ (GND))) # (!\inst|CC\(14) & (!\inst|Add2~27\ & VCC))
-- \inst|Add2~29\ = CARRY((\inst|CC\(14) & !\inst|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(14),
	datad => VCC,
	cin => \inst|Add2~27\,
	combout => \inst|Add2~28_combout\,
	cout => \inst|Add2~29\);

-- Location: FF_X30_Y29_N29
\inst|CC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~28_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(14));

-- Location: LCCOMB_X30_Y29_N30
\inst|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~30_combout\ = (\inst|CC\(15) & (!\inst|Add2~29\)) # (!\inst|CC\(15) & ((\inst|Add2~29\) # (GND)))
-- \inst|Add2~31\ = CARRY((!\inst|Add2~29\) # (!\inst|CC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CC\(15),
	datad => VCC,
	cin => \inst|Add2~29\,
	combout => \inst|Add2~30_combout\,
	cout => \inst|Add2~31\);

-- Location: FF_X30_Y29_N31
\inst|CC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~30_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(15));

-- Location: LCCOMB_X30_Y28_N0
\inst|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~32_combout\ = (\inst|CC\(16) & (\inst|Add2~31\ $ (GND))) # (!\inst|CC\(16) & (!\inst|Add2~31\ & VCC))
-- \inst|Add2~33\ = CARRY((\inst|CC\(16) & !\inst|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(16),
	datad => VCC,
	cin => \inst|Add2~31\,
	combout => \inst|Add2~32_combout\,
	cout => \inst|Add2~33\);

-- Location: FF_X30_Y28_N1
\inst|CC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~32_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(16));

-- Location: LCCOMB_X30_Y28_N2
\inst|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~34_combout\ = (\inst|CC\(17) & (!\inst|Add2~33\)) # (!\inst|CC\(17) & ((\inst|Add2~33\) # (GND)))
-- \inst|Add2~35\ = CARRY((!\inst|Add2~33\) # (!\inst|CC\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(17),
	datad => VCC,
	cin => \inst|Add2~33\,
	combout => \inst|Add2~34_combout\,
	cout => \inst|Add2~35\);

-- Location: FF_X30_Y28_N3
\inst|CC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~34_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(17));

-- Location: LCCOMB_X30_Y28_N4
\inst|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~36_combout\ = (\inst|CC\(18) & (\inst|Add2~35\ $ (GND))) # (!\inst|CC\(18) & (!\inst|Add2~35\ & VCC))
-- \inst|Add2~37\ = CARRY((\inst|CC\(18) & !\inst|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(18),
	datad => VCC,
	cin => \inst|Add2~35\,
	combout => \inst|Add2~36_combout\,
	cout => \inst|Add2~37\);

-- Location: FF_X30_Y28_N5
\inst|CC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~36_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(18));

-- Location: LCCOMB_X30_Y28_N6
\inst|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~38_combout\ = (\inst|CC\(19) & (!\inst|Add2~37\)) # (!\inst|CC\(19) & ((\inst|Add2~37\) # (GND)))
-- \inst|Add2~39\ = CARRY((!\inst|Add2~37\) # (!\inst|CC\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CC\(19),
	datad => VCC,
	cin => \inst|Add2~37\,
	combout => \inst|Add2~38_combout\,
	cout => \inst|Add2~39\);

-- Location: FF_X30_Y28_N7
\inst|CC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~38_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(19));

-- Location: LCCOMB_X30_Y28_N8
\inst|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~40_combout\ = (\inst|CC\(20) & (\inst|Add2~39\ $ (GND))) # (!\inst|CC\(20) & (!\inst|Add2~39\ & VCC))
-- \inst|Add2~41\ = CARRY((\inst|CC\(20) & !\inst|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(20),
	datad => VCC,
	cin => \inst|Add2~39\,
	combout => \inst|Add2~40_combout\,
	cout => \inst|Add2~41\);

-- Location: FF_X30_Y28_N9
\inst|CC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~40_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(20));

-- Location: LCCOMB_X30_Y28_N10
\inst|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~42_combout\ = (\inst|CC\(21) & (!\inst|Add2~41\)) # (!\inst|CC\(21) & ((\inst|Add2~41\) # (GND)))
-- \inst|Add2~43\ = CARRY((!\inst|Add2~41\) # (!\inst|CC\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CC\(21),
	datad => VCC,
	cin => \inst|Add2~41\,
	combout => \inst|Add2~42_combout\,
	cout => \inst|Add2~43\);

-- Location: FF_X30_Y28_N11
\inst|CC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~42_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(21));

-- Location: LCCOMB_X30_Y28_N12
\inst|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~44_combout\ = (\inst|CC\(22) & (\inst|Add2~43\ $ (GND))) # (!\inst|CC\(22) & (!\inst|Add2~43\ & VCC))
-- \inst|Add2~45\ = CARRY((\inst|CC\(22) & !\inst|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CC\(22),
	datad => VCC,
	cin => \inst|Add2~43\,
	combout => \inst|Add2~44_combout\,
	cout => \inst|Add2~45\);

-- Location: FF_X30_Y28_N13
\inst|CC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~44_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(22));

-- Location: LCCOMB_X30_Y28_N14
\inst|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~46_combout\ = (\inst|CC\(23) & (!\inst|Add2~45\)) # (!\inst|CC\(23) & ((\inst|Add2~45\) # (GND)))
-- \inst|Add2~47\ = CARRY((!\inst|Add2~45\) # (!\inst|CC\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(23),
	datad => VCC,
	cin => \inst|Add2~45\,
	combout => \inst|Add2~46_combout\,
	cout => \inst|Add2~47\);

-- Location: FF_X30_Y28_N15
\inst|CC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~46_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(23));

-- Location: LCCOMB_X30_Y28_N16
\inst|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~48_combout\ = (\inst|CC\(24) & (\inst|Add2~47\ $ (GND))) # (!\inst|CC\(24) & (!\inst|Add2~47\ & VCC))
-- \inst|Add2~49\ = CARRY((\inst|CC\(24) & !\inst|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(24),
	datad => VCC,
	cin => \inst|Add2~47\,
	combout => \inst|Add2~48_combout\,
	cout => \inst|Add2~49\);

-- Location: FF_X30_Y28_N17
\inst|CC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~48_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(24));

-- Location: LCCOMB_X30_Y28_N18
\inst|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~50_combout\ = (\inst|CC\(25) & (!\inst|Add2~49\)) # (!\inst|CC\(25) & ((\inst|Add2~49\) # (GND)))
-- \inst|Add2~51\ = CARRY((!\inst|Add2~49\) # (!\inst|CC\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(25),
	datad => VCC,
	cin => \inst|Add2~49\,
	combout => \inst|Add2~50_combout\,
	cout => \inst|Add2~51\);

-- Location: FF_X30_Y28_N19
\inst|CC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~50_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(25));

-- Location: LCCOMB_X30_Y28_N20
\inst|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~52_combout\ = (\inst|CC\(26) & (\inst|Add2~51\ $ (GND))) # (!\inst|CC\(26) & (!\inst|Add2~51\ & VCC))
-- \inst|Add2~53\ = CARRY((\inst|CC\(26) & !\inst|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(26),
	datad => VCC,
	cin => \inst|Add2~51\,
	combout => \inst|Add2~52_combout\,
	cout => \inst|Add2~53\);

-- Location: FF_X30_Y28_N21
\inst|CC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~52_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(26));

-- Location: LCCOMB_X30_Y28_N22
\inst|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~54_combout\ = (\inst|CC\(27) & (!\inst|Add2~53\)) # (!\inst|CC\(27) & ((\inst|Add2~53\) # (GND)))
-- \inst|Add2~55\ = CARRY((!\inst|Add2~53\) # (!\inst|CC\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CC\(27),
	datad => VCC,
	cin => \inst|Add2~53\,
	combout => \inst|Add2~54_combout\,
	cout => \inst|Add2~55\);

-- Location: FF_X30_Y28_N23
\inst|CC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~54_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(27));

-- Location: LCCOMB_X30_Y28_N24
\inst|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~56_combout\ = (\inst|CC\(28) & (\inst|Add2~55\ $ (GND))) # (!\inst|CC\(28) & (!\inst|Add2~55\ & VCC))
-- \inst|Add2~57\ = CARRY((\inst|CC\(28) & !\inst|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(28),
	datad => VCC,
	cin => \inst|Add2~55\,
	combout => \inst|Add2~56_combout\,
	cout => \inst|Add2~57\);

-- Location: FF_X30_Y28_N29
\inst|CC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~60_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(30));

-- Location: LCCOMB_X30_Y28_N26
\inst|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~58_combout\ = (\inst|CC\(29) & (!\inst|Add2~57\)) # (!\inst|CC\(29) & ((\inst|Add2~57\) # (GND)))
-- \inst|Add2~59\ = CARRY((!\inst|Add2~57\) # (!\inst|CC\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CC\(29),
	datad => VCC,
	cin => \inst|Add2~57\,
	combout => \inst|Add2~58_combout\,
	cout => \inst|Add2~59\);

-- Location: FF_X30_Y28_N27
\inst|CC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~58_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(29));

-- Location: LCCOMB_X30_Y28_N28
\inst|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~60_combout\ = (\inst|CC\(30) & (\inst|Add2~59\ $ (GND))) # (!\inst|CC\(30) & (!\inst|Add2~59\ & VCC))
-- \inst|Add2~61\ = CARRY((\inst|CC\(30) & !\inst|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|CC\(30),
	datad => VCC,
	cin => \inst|Add2~59\,
	combout => \inst|Add2~60_combout\,
	cout => \inst|Add2~61\);

-- Location: LCCOMB_X29_Y28_N10
\inst|state_clk~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_clk~11_combout\ = (!\inst|Add2~56_combout\ & (!\inst|Add2~60_combout\ & (!\inst|Add2~58_combout\ & !\inst|Add2~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~56_combout\,
	datab => \inst|Add2~60_combout\,
	datac => \inst|Add2~58_combout\,
	datad => \inst|Add2~54_combout\,
	combout => \inst|state_clk~11_combout\);

-- Location: LCCOMB_X29_Y29_N26
\inst|state_clk~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_clk~4_combout\ = (!\inst|Add2~20_combout\ & (!\inst|Add2~18_combout\ & (!\inst|Add2~14_combout\ & !\inst|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~20_combout\,
	datab => \inst|Add2~18_combout\,
	datac => \inst|Add2~14_combout\,
	datad => \inst|Add2~16_combout\,
	combout => \inst|state_clk~4_combout\);

-- Location: LCCOMB_X29_Y29_N4
\inst|state_clk~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_clk~3_combout\ = (!\inst|Add2~6_combout\ & (!\inst|Add2~12_combout\ & (!\inst|Add2~10_combout\ & !\inst|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~6_combout\,
	datab => \inst|Add2~12_combout\,
	datac => \inst|Add2~10_combout\,
	datad => \inst|Add2~4_combout\,
	combout => \inst|state_clk~3_combout\);

-- Location: LCCOMB_X29_Y29_N2
\inst|state_clk~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_clk~2_combout\ = (\inst|Add2~2_combout\ & (!\inst|Add2~8_combout\ & (\inst|Add2~0_combout\ & \inst|state_clk~q\))) # (!\inst|Add2~2_combout\ & (\inst|Add2~8_combout\ & (!\inst|Add2~0_combout\ & !\inst|state_clk~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~2_combout\,
	datab => \inst|Add2~8_combout\,
	datac => \inst|Add2~0_combout\,
	datad => \inst|state_clk~q\,
	combout => \inst|state_clk~2_combout\);

-- Location: LCCOMB_X29_Y29_N24
\inst|state_clk~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_clk~5_combout\ = (\inst|state_clk~4_combout\ & (\inst|state_clk~3_combout\ & \inst|state_clk~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_clk~4_combout\,
	datac => \inst|state_clk~3_combout\,
	datad => \inst|state_clk~2_combout\,
	combout => \inst|state_clk~5_combout\);

-- Location: FF_X30_Y28_N31
\inst|CC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add2~62_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CC\(31));

-- Location: LCCOMB_X30_Y28_N30
\inst|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~62_combout\ = \inst|CC\(31) $ (\inst|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CC\(31),
	cin => \inst|Add2~61\,
	combout => \inst|Add2~62_combout\);

-- Location: LCCOMB_X29_Y28_N26
\inst|state_clk~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_clk~8_combout\ = (!\inst|Add2~44_combout\ & (!\inst|Add2~42_combout\ & (!\inst|Add2~40_combout\ & !\inst|Add2~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~44_combout\,
	datab => \inst|Add2~42_combout\,
	datac => \inst|Add2~40_combout\,
	datad => \inst|Add2~38_combout\,
	combout => \inst|state_clk~8_combout\);

-- Location: LCCOMB_X29_Y28_N0
\inst|state_clk~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_clk~7_combout\ = (!\inst|Add2~36_combout\ & (!\inst|Add2~32_combout\ & (!\inst|Add2~30_combout\ & !\inst|Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~36_combout\,
	datab => \inst|Add2~32_combout\,
	datac => \inst|Add2~30_combout\,
	datad => \inst|Add2~34_combout\,
	combout => \inst|state_clk~7_combout\);

-- Location: LCCOMB_X29_Y29_N22
\inst|state_clk~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_clk~6_combout\ = (!\inst|Add2~26_combout\ & (!\inst|Add2~28_combout\ & (!\inst|Add2~24_combout\ & !\inst|Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~26_combout\,
	datab => \inst|Add2~28_combout\,
	datac => \inst|Add2~24_combout\,
	datad => \inst|Add2~22_combout\,
	combout => \inst|state_clk~6_combout\);

-- Location: LCCOMB_X29_Y28_N4
\inst|state_clk~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_clk~9_combout\ = (!\inst|Add2~52_combout\ & (!\inst|Add2~50_combout\ & (!\inst|Add2~46_combout\ & !\inst|Add2~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~52_combout\,
	datab => \inst|Add2~50_combout\,
	datac => \inst|Add2~46_combout\,
	datad => \inst|Add2~48_combout\,
	combout => \inst|state_clk~9_combout\);

-- Location: LCCOMB_X29_Y29_N28
\inst|state_clk~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_clk~10_combout\ = (\inst|state_clk~8_combout\ & (\inst|state_clk~7_combout\ & (\inst|state_clk~6_combout\ & \inst|state_clk~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_clk~8_combout\,
	datab => \inst|state_clk~7_combout\,
	datac => \inst|state_clk~6_combout\,
	datad => \inst|state_clk~9_combout\,
	combout => \inst|state_clk~10_combout\);

-- Location: LCCOMB_X29_Y29_N10
\inst|state_clk~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_clk~12_combout\ = (\inst|state_clk~11_combout\ & (\inst|state_clk~5_combout\ & (!\inst|Add2~62_combout\ & \inst|state_clk~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state_clk~11_combout\,
	datab => \inst|state_clk~5_combout\,
	datac => \inst|Add2~62_combout\,
	datad => \inst|state_clk~10_combout\,
	combout => \inst|state_clk~12_combout\);

-- Location: LCCOMB_X29_Y29_N18
\inst|state_clk~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_clk~13_combout\ = \inst|state_clk~q\ $ (((!\inst|wt~q\ & (!\inst|done~combout\ & \inst|state_clk~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|wt~q\,
	datab => \inst|done~combout\,
	datac => \inst|state_clk~q\,
	datad => \inst|state_clk~12_combout\,
	combout => \inst|state_clk~13_combout\);

-- Location: FF_X29_Y29_N19
\inst|state_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|state_clk~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state_clk~q\);

-- Location: LCCOMB_X29_Y29_N0
\inst|rtc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|rtc~0_combout\ = !\inst|state_clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|state_clk~q\,
	combout => \inst|rtc~0_combout\);

-- Location: FF_X29_Y29_N1
\inst|rtc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|rtc~0_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rtc~q\);

-- Location: LCCOMB_X28_Y28_N16
\inst|MOSI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MOSI~0_combout\ = (!\inst|done~combout\ & (!\inst|wt~q\ & \inst|rtc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|done~combout\,
	datab => \inst|wt~q\,
	datad => \inst|rtc~q\,
	combout => \inst|MOSI~0_combout\);

-- Location: FF_X24_Y28_N1
\inst|PP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~0_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(0));

-- Location: LCCOMB_X24_Y28_N0
\inst|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~0_combout\ = \inst|PP\(0) $ (VCC)
-- \inst|Add5~1\ = CARRY(\inst|PP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(0),
	datad => VCC,
	combout => \inst|Add5~0_combout\,
	cout => \inst|Add5~1\);

-- Location: FF_X24_Y28_N7
\inst|PP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~6_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(3));

-- Location: LCCOMB_X24_Y28_N2
\inst|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~2_combout\ = (\inst|PP\(1) & (\inst|Add5~1\ & VCC)) # (!\inst|PP\(1) & (!\inst|Add5~1\))
-- \inst|Add5~3\ = CARRY((!\inst|PP\(1) & !\inst|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(1),
	datad => VCC,
	cin => \inst|Add5~1\,
	combout => \inst|Add5~2_combout\,
	cout => \inst|Add5~3\);

-- Location: FF_X24_Y28_N3
\inst|PP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~2_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(1));

-- Location: LCCOMB_X24_Y28_N4
\inst|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~4_combout\ = (\inst|PP\(2) & ((GND) # (!\inst|Add5~3\))) # (!\inst|PP\(2) & (\inst|Add5~3\ $ (GND)))
-- \inst|Add5~5\ = CARRY((\inst|PP\(2)) # (!\inst|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(2),
	datad => VCC,
	cin => \inst|Add5~3\,
	combout => \inst|Add5~4_combout\,
	cout => \inst|Add5~5\);

-- Location: FF_X24_Y28_N5
\inst|PP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~4_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(2));

-- Location: LCCOMB_X24_Y28_N6
\inst|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~6_combout\ = (\inst|PP\(3) & (\inst|Add5~5\ & VCC)) # (!\inst|PP\(3) & (!\inst|Add5~5\))
-- \inst|Add5~7\ = CARRY((!\inst|PP\(3) & !\inst|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PP\(3),
	datad => VCC,
	cin => \inst|Add5~5\,
	combout => \inst|Add5~6_combout\,
	cout => \inst|Add5~7\);

-- Location: LCCOMB_X23_Y28_N6
\inst|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~0_combout\ = (\inst|MOSI~0_combout\ & (!\inst|Add5~0_combout\ & !\inst|Add5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MOSI~0_combout\,
	datab => \inst|Add5~0_combout\,
	datad => \inst|Add5~6_combout\,
	combout => \inst|Decoder0~0_combout\);

-- Location: LCCOMB_X23_Y28_N4
\inst|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~0_combout\ = (!\inst|Add5~4_combout\ & !\inst|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~4_combout\,
	datad => \inst|Add5~2_combout\,
	combout => \inst|Equal9~0_combout\);

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

-- Location: LCCOMB_X23_Y28_N30
\inst|dwReg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dwReg[0]~0_combout\ = (\inst|Decoder0~0_combout\ & ((\inst|Equal9~0_combout\ & ((\MISO~input_o\))) # (!\inst|Equal9~0_combout\ & (\inst|dwReg\(0))))) # (!\inst|Decoder0~0_combout\ & (((\inst|dwReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder0~0_combout\,
	datab => \inst|Equal9~0_combout\,
	datac => \inst|dwReg\(0),
	datad => \MISO~input_o\,
	combout => \inst|dwReg[0]~0_combout\);

-- Location: FF_X23_Y28_N31
\inst|dwReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|dwReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dwReg\(0));

-- Location: FF_X24_Y28_N31
\inst|PP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~30_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(15));

-- Location: LCCOMB_X24_Y28_N8
\inst|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~8_combout\ = (\inst|PP\(4) & (\inst|Add5~7\ $ (GND))) # (!\inst|PP\(4) & ((GND) # (!\inst|Add5~7\)))
-- \inst|Add5~9\ = CARRY((!\inst|Add5~7\) # (!\inst|PP\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PP\(4),
	datad => VCC,
	cin => \inst|Add5~7\,
	combout => \inst|Add5~8_combout\,
	cout => \inst|Add5~9\);

-- Location: LCCOMB_X25_Y28_N4
\inst|PP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PP~0_combout\ = (!\inst|Add5~8_combout\ & !\inst|Equal9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~8_combout\,
	datad => \inst|Equal9~10_combout\,
	combout => \inst|PP~0_combout\);

-- Location: FF_X25_Y28_N5
\inst|PP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|PP~0_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(4));

-- Location: LCCOMB_X24_Y28_N10
\inst|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~10_combout\ = (\inst|PP\(5) & (\inst|Add5~9\ & VCC)) # (!\inst|PP\(5) & (!\inst|Add5~9\))
-- \inst|Add5~11\ = CARRY((!\inst|PP\(5) & !\inst|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PP\(5),
	datad => VCC,
	cin => \inst|Add5~9\,
	combout => \inst|Add5~10_combout\,
	cout => \inst|Add5~11\);

-- Location: FF_X24_Y28_N11
\inst|PP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~10_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(5));

-- Location: LCCOMB_X24_Y28_N12
\inst|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~12_combout\ = (\inst|PP\(6) & ((GND) # (!\inst|Add5~11\))) # (!\inst|PP\(6) & (\inst|Add5~11\ $ (GND)))
-- \inst|Add5~13\ = CARRY((\inst|PP\(6)) # (!\inst|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PP\(6),
	datad => VCC,
	cin => \inst|Add5~11\,
	combout => \inst|Add5~12_combout\,
	cout => \inst|Add5~13\);

-- Location: FF_X24_Y28_N13
\inst|PP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~12_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(6));

-- Location: LCCOMB_X24_Y28_N14
\inst|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~14_combout\ = (\inst|PP\(7) & (\inst|Add5~13\ & VCC)) # (!\inst|PP\(7) & (!\inst|Add5~13\))
-- \inst|Add5~15\ = CARRY((!\inst|PP\(7) & !\inst|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(7),
	datad => VCC,
	cin => \inst|Add5~13\,
	combout => \inst|Add5~14_combout\,
	cout => \inst|Add5~15\);

-- Location: FF_X24_Y28_N15
\inst|PP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~14_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(7));

-- Location: LCCOMB_X24_Y28_N16
\inst|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~16_combout\ = (\inst|PP\(8) & ((GND) # (!\inst|Add5~15\))) # (!\inst|PP\(8) & (\inst|Add5~15\ $ (GND)))
-- \inst|Add5~17\ = CARRY((\inst|PP\(8)) # (!\inst|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(8),
	datad => VCC,
	cin => \inst|Add5~15\,
	combout => \inst|Add5~16_combout\,
	cout => \inst|Add5~17\);

-- Location: FF_X24_Y28_N17
\inst|PP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~16_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(8));

-- Location: LCCOMB_X24_Y28_N18
\inst|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~18_combout\ = (\inst|PP\(9) & (\inst|Add5~17\ & VCC)) # (!\inst|PP\(9) & (!\inst|Add5~17\))
-- \inst|Add5~19\ = CARRY((!\inst|PP\(9) & !\inst|Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(9),
	datad => VCC,
	cin => \inst|Add5~17\,
	combout => \inst|Add5~18_combout\,
	cout => \inst|Add5~19\);

-- Location: FF_X24_Y28_N19
\inst|PP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~18_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(9));

-- Location: LCCOMB_X24_Y28_N20
\inst|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~20_combout\ = (\inst|PP\(10) & ((GND) # (!\inst|Add5~19\))) # (!\inst|PP\(10) & (\inst|Add5~19\ $ (GND)))
-- \inst|Add5~21\ = CARRY((\inst|PP\(10)) # (!\inst|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(10),
	datad => VCC,
	cin => \inst|Add5~19\,
	combout => \inst|Add5~20_combout\,
	cout => \inst|Add5~21\);

-- Location: FF_X24_Y28_N21
\inst|PP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~20_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(10));

-- Location: LCCOMB_X24_Y28_N22
\inst|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~22_combout\ = (\inst|PP\(11) & (\inst|Add5~21\ & VCC)) # (!\inst|PP\(11) & (!\inst|Add5~21\))
-- \inst|Add5~23\ = CARRY((!\inst|PP\(11) & !\inst|Add5~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PP\(11),
	datad => VCC,
	cin => \inst|Add5~21\,
	combout => \inst|Add5~22_combout\,
	cout => \inst|Add5~23\);

-- Location: FF_X24_Y28_N23
\inst|PP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~22_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(11));

-- Location: LCCOMB_X24_Y28_N24
\inst|Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~24_combout\ = (\inst|PP\(12) & ((GND) # (!\inst|Add5~23\))) # (!\inst|PP\(12) & (\inst|Add5~23\ $ (GND)))
-- \inst|Add5~25\ = CARRY((\inst|PP\(12)) # (!\inst|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(12),
	datad => VCC,
	cin => \inst|Add5~23\,
	combout => \inst|Add5~24_combout\,
	cout => \inst|Add5~25\);

-- Location: FF_X24_Y28_N25
\inst|PP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~24_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(12));

-- Location: LCCOMB_X24_Y28_N26
\inst|Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~26_combout\ = (\inst|PP\(13) & (\inst|Add5~25\ & VCC)) # (!\inst|PP\(13) & (!\inst|Add5~25\))
-- \inst|Add5~27\ = CARRY((!\inst|PP\(13) & !\inst|Add5~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PP\(13),
	datad => VCC,
	cin => \inst|Add5~25\,
	combout => \inst|Add5~26_combout\,
	cout => \inst|Add5~27\);

-- Location: FF_X24_Y28_N27
\inst|PP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~26_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(13));

-- Location: LCCOMB_X24_Y28_N28
\inst|Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~28_combout\ = (\inst|PP\(14) & ((GND) # (!\inst|Add5~27\))) # (!\inst|PP\(14) & (\inst|Add5~27\ $ (GND)))
-- \inst|Add5~29\ = CARRY((\inst|PP\(14)) # (!\inst|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(14),
	datad => VCC,
	cin => \inst|Add5~27\,
	combout => \inst|Add5~28_combout\,
	cout => \inst|Add5~29\);

-- Location: FF_X24_Y28_N29
\inst|PP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~28_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(14));

-- Location: LCCOMB_X24_Y28_N30
\inst|Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~30_combout\ = (\inst|PP\(15) & (\inst|Add5~29\ & VCC)) # (!\inst|PP\(15) & (!\inst|Add5~29\))
-- \inst|Add5~31\ = CARRY((!\inst|PP\(15) & !\inst|Add5~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PP\(15),
	datad => VCC,
	cin => \inst|Add5~29\,
	combout => \inst|Add5~30_combout\,
	cout => \inst|Add5~31\);

-- Location: LCCOMB_X25_Y28_N12
\inst|Equal9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~4_combout\ = (!\inst|Add5~30_combout\ & (!\inst|Add5~28_combout\ & (!\inst|Add5~26_combout\ & !\inst|Add5~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~30_combout\,
	datab => \inst|Add5~28_combout\,
	datac => \inst|Add5~26_combout\,
	datad => \inst|Add5~24_combout\,
	combout => \inst|Equal9~4_combout\);

-- Location: LCCOMB_X25_Y28_N18
\inst|Equal9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~3_combout\ = (!\inst|Add5~16_combout\ & (!\inst|Add5~20_combout\ & (!\inst|Add5~18_combout\ & !\inst|Add5~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~16_combout\,
	datab => \inst|Add5~20_combout\,
	datac => \inst|Add5~18_combout\,
	datad => \inst|Add5~22_combout\,
	combout => \inst|Equal9~3_combout\);

-- Location: LCCOMB_X23_Y28_N18
\inst|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~1_combout\ = (!\inst|Add5~8_combout\ & (!\inst|Add5~12_combout\ & (!\inst|Add5~10_combout\ & !\inst|Add5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~8_combout\,
	datab => \inst|Add5~12_combout\,
	datac => \inst|Add5~10_combout\,
	datad => \inst|Add5~14_combout\,
	combout => \inst|Equal9~1_combout\);

-- Location: LCCOMB_X23_Y28_N8
\inst|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~2_combout\ = (!\inst|Add5~6_combout\ & (\inst|Equal9~0_combout\ & (!\inst|Add5~0_combout\ & \inst|Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~6_combout\,
	datab => \inst|Equal9~0_combout\,
	datac => \inst|Add5~0_combout\,
	datad => \inst|Equal9~1_combout\,
	combout => \inst|Equal9~2_combout\);

-- Location: FF_X24_Y27_N31
\inst|PP[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~62_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(31));

-- Location: LCCOMB_X24_Y27_N0
\inst|Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~32_combout\ = (\inst|PP\(16) & ((GND) # (!\inst|Add5~31\))) # (!\inst|PP\(16) & (\inst|Add5~31\ $ (GND)))
-- \inst|Add5~33\ = CARRY((\inst|PP\(16)) # (!\inst|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(16),
	datad => VCC,
	cin => \inst|Add5~31\,
	combout => \inst|Add5~32_combout\,
	cout => \inst|Add5~33\);

-- Location: FF_X24_Y27_N1
\inst|PP[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~32_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(16));

-- Location: LCCOMB_X24_Y27_N2
\inst|Add5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~34_combout\ = (\inst|PP\(17) & (\inst|Add5~33\ & VCC)) # (!\inst|PP\(17) & (!\inst|Add5~33\))
-- \inst|Add5~35\ = CARRY((!\inst|PP\(17) & !\inst|Add5~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(17),
	datad => VCC,
	cin => \inst|Add5~33\,
	combout => \inst|Add5~34_combout\,
	cout => \inst|Add5~35\);

-- Location: FF_X24_Y27_N3
\inst|PP[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~34_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(17));

-- Location: LCCOMB_X24_Y27_N4
\inst|Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~36_combout\ = (\inst|PP\(18) & ((GND) # (!\inst|Add5~35\))) # (!\inst|PP\(18) & (\inst|Add5~35\ $ (GND)))
-- \inst|Add5~37\ = CARRY((\inst|PP\(18)) # (!\inst|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(18),
	datad => VCC,
	cin => \inst|Add5~35\,
	combout => \inst|Add5~36_combout\,
	cout => \inst|Add5~37\);

-- Location: FF_X24_Y27_N5
\inst|PP[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~36_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(18));

-- Location: LCCOMB_X24_Y27_N6
\inst|Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~38_combout\ = (\inst|PP\(19) & (\inst|Add5~37\ & VCC)) # (!\inst|PP\(19) & (!\inst|Add5~37\))
-- \inst|Add5~39\ = CARRY((!\inst|PP\(19) & !\inst|Add5~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PP\(19),
	datad => VCC,
	cin => \inst|Add5~37\,
	combout => \inst|Add5~38_combout\,
	cout => \inst|Add5~39\);

-- Location: FF_X24_Y27_N7
\inst|PP[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~38_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(19));

-- Location: LCCOMB_X24_Y27_N8
\inst|Add5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~40_combout\ = (\inst|PP\(20) & ((GND) # (!\inst|Add5~39\))) # (!\inst|PP\(20) & (\inst|Add5~39\ $ (GND)))
-- \inst|Add5~41\ = CARRY((\inst|PP\(20)) # (!\inst|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(20),
	datad => VCC,
	cin => \inst|Add5~39\,
	combout => \inst|Add5~40_combout\,
	cout => \inst|Add5~41\);

-- Location: FF_X24_Y27_N9
\inst|PP[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~40_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(20));

-- Location: LCCOMB_X24_Y27_N10
\inst|Add5~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~42_combout\ = (\inst|PP\(21) & (\inst|Add5~41\ & VCC)) # (!\inst|PP\(21) & (!\inst|Add5~41\))
-- \inst|Add5~43\ = CARRY((!\inst|PP\(21) & !\inst|Add5~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PP\(21),
	datad => VCC,
	cin => \inst|Add5~41\,
	combout => \inst|Add5~42_combout\,
	cout => \inst|Add5~43\);

-- Location: FF_X24_Y27_N11
\inst|PP[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~42_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(21));

-- Location: LCCOMB_X24_Y27_N12
\inst|Add5~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~44_combout\ = (\inst|PP\(22) & ((GND) # (!\inst|Add5~43\))) # (!\inst|PP\(22) & (\inst|Add5~43\ $ (GND)))
-- \inst|Add5~45\ = CARRY((\inst|PP\(22)) # (!\inst|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PP\(22),
	datad => VCC,
	cin => \inst|Add5~43\,
	combout => \inst|Add5~44_combout\,
	cout => \inst|Add5~45\);

-- Location: FF_X24_Y27_N13
\inst|PP[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~44_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(22));

-- Location: LCCOMB_X24_Y27_N14
\inst|Add5~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~46_combout\ = (\inst|PP\(23) & (\inst|Add5~45\ & VCC)) # (!\inst|PP\(23) & (!\inst|Add5~45\))
-- \inst|Add5~47\ = CARRY((!\inst|PP\(23) & !\inst|Add5~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(23),
	datad => VCC,
	cin => \inst|Add5~45\,
	combout => \inst|Add5~46_combout\,
	cout => \inst|Add5~47\);

-- Location: FF_X24_Y27_N15
\inst|PP[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~46_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(23));

-- Location: LCCOMB_X24_Y27_N16
\inst|Add5~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~48_combout\ = (\inst|PP\(24) & ((GND) # (!\inst|Add5~47\))) # (!\inst|PP\(24) & (\inst|Add5~47\ $ (GND)))
-- \inst|Add5~49\ = CARRY((\inst|PP\(24)) # (!\inst|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(24),
	datad => VCC,
	cin => \inst|Add5~47\,
	combout => \inst|Add5~48_combout\,
	cout => \inst|Add5~49\);

-- Location: FF_X24_Y27_N17
\inst|PP[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~48_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(24));

-- Location: LCCOMB_X24_Y27_N18
\inst|Add5~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~50_combout\ = (\inst|PP\(25) & (\inst|Add5~49\ & VCC)) # (!\inst|PP\(25) & (!\inst|Add5~49\))
-- \inst|Add5~51\ = CARRY((!\inst|PP\(25) & !\inst|Add5~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(25),
	datad => VCC,
	cin => \inst|Add5~49\,
	combout => \inst|Add5~50_combout\,
	cout => \inst|Add5~51\);

-- Location: FF_X24_Y27_N19
\inst|PP[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~50_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(25));

-- Location: LCCOMB_X24_Y27_N20
\inst|Add5~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~52_combout\ = (\inst|PP\(26) & ((GND) # (!\inst|Add5~51\))) # (!\inst|PP\(26) & (\inst|Add5~51\ $ (GND)))
-- \inst|Add5~53\ = CARRY((\inst|PP\(26)) # (!\inst|Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(26),
	datad => VCC,
	cin => \inst|Add5~51\,
	combout => \inst|Add5~52_combout\,
	cout => \inst|Add5~53\);

-- Location: FF_X24_Y27_N21
\inst|PP[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~52_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(26));

-- Location: LCCOMB_X24_Y27_N22
\inst|Add5~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~54_combout\ = (\inst|PP\(27) & (\inst|Add5~53\ & VCC)) # (!\inst|PP\(27) & (!\inst|Add5~53\))
-- \inst|Add5~55\ = CARRY((!\inst|PP\(27) & !\inst|Add5~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PP\(27),
	datad => VCC,
	cin => \inst|Add5~53\,
	combout => \inst|Add5~54_combout\,
	cout => \inst|Add5~55\);

-- Location: FF_X24_Y27_N23
\inst|PP[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~54_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(27));

-- Location: LCCOMB_X24_Y27_N24
\inst|Add5~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~56_combout\ = (\inst|PP\(28) & ((GND) # (!\inst|Add5~55\))) # (!\inst|PP\(28) & (\inst|Add5~55\ $ (GND)))
-- \inst|Add5~57\ = CARRY((\inst|PP\(28)) # (!\inst|Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(28),
	datad => VCC,
	cin => \inst|Add5~55\,
	combout => \inst|Add5~56_combout\,
	cout => \inst|Add5~57\);

-- Location: FF_X24_Y27_N25
\inst|PP[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~56_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(28));

-- Location: LCCOMB_X24_Y27_N26
\inst|Add5~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~58_combout\ = (\inst|PP\(29) & (\inst|Add5~57\ & VCC)) # (!\inst|PP\(29) & (!\inst|Add5~57\))
-- \inst|Add5~59\ = CARRY((!\inst|PP\(29) & !\inst|Add5~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PP\(29),
	datad => VCC,
	cin => \inst|Add5~57\,
	combout => \inst|Add5~58_combout\,
	cout => \inst|Add5~59\);

-- Location: FF_X24_Y27_N27
\inst|PP[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~58_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(29));

-- Location: LCCOMB_X24_Y27_N28
\inst|Add5~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~60_combout\ = (\inst|PP\(30) & ((GND) # (!\inst|Add5~59\))) # (!\inst|PP\(30) & (\inst|Add5~59\ $ (GND)))
-- \inst|Add5~61\ = CARRY((\inst|PP\(30)) # (!\inst|Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PP\(30),
	datad => VCC,
	cin => \inst|Add5~59\,
	combout => \inst|Add5~60_combout\,
	cout => \inst|Add5~61\);

-- Location: FF_X24_Y27_N29
\inst|PP[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|Add5~60_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PP\(30));

-- Location: LCCOMB_X24_Y27_N30
\inst|Add5~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add5~62_combout\ = \inst|PP\(31) $ (!\inst|Add5~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PP\(31),
	cin => \inst|Add5~61\,
	combout => \inst|Add5~62_combout\);

-- Location: LCCOMB_X25_Y27_N10
\inst|Equal9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~8_combout\ = (!\inst|Add5~62_combout\ & (!\inst|Add5~60_combout\ & (!\inst|Add5~58_combout\ & !\inst|Add5~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~62_combout\,
	datab => \inst|Add5~60_combout\,
	datac => \inst|Add5~58_combout\,
	datad => \inst|Add5~56_combout\,
	combout => \inst|Equal9~8_combout\);

-- Location: LCCOMB_X25_Y27_N28
\inst|Equal9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~5_combout\ = (!\inst|Add5~32_combout\ & (!\inst|Add5~38_combout\ & (!\inst|Add5~36_combout\ & !\inst|Add5~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~32_combout\,
	datab => \inst|Add5~38_combout\,
	datac => \inst|Add5~36_combout\,
	datad => \inst|Add5~34_combout\,
	combout => \inst|Equal9~5_combout\);

-- Location: LCCOMB_X25_Y27_N8
\inst|Equal9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~7_combout\ = (!\inst|Add5~52_combout\ & (!\inst|Add5~54_combout\ & (!\inst|Add5~48_combout\ & !\inst|Add5~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~52_combout\,
	datab => \inst|Add5~54_combout\,
	datac => \inst|Add5~48_combout\,
	datad => \inst|Add5~50_combout\,
	combout => \inst|Equal9~7_combout\);

-- Location: LCCOMB_X25_Y27_N18
\inst|Equal9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~6_combout\ = (!\inst|Add5~42_combout\ & (!\inst|Add5~44_combout\ & (!\inst|Add5~46_combout\ & !\inst|Add5~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~42_combout\,
	datab => \inst|Add5~44_combout\,
	datac => \inst|Add5~46_combout\,
	datad => \inst|Add5~40_combout\,
	combout => \inst|Equal9~6_combout\);

-- Location: LCCOMB_X25_Y27_N0
\inst|Equal9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~9_combout\ = (\inst|Equal9~8_combout\ & (\inst|Equal9~5_combout\ & (\inst|Equal9~7_combout\ & \inst|Equal9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal9~8_combout\,
	datab => \inst|Equal9~5_combout\,
	datac => \inst|Equal9~7_combout\,
	datad => \inst|Equal9~6_combout\,
	combout => \inst|Equal9~9_combout\);

-- Location: LCCOMB_X25_Y28_N10
\inst|Equal9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~10_combout\ = (\inst|Equal9~4_combout\ & (\inst|Equal9~3_combout\ & (\inst|Equal9~2_combout\ & \inst|Equal9~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal9~4_combout\,
	datab => \inst|Equal9~3_combout\,
	datac => \inst|Equal9~2_combout\,
	datad => \inst|Equal9~9_combout\,
	combout => \inst|Equal9~10_combout\);

-- Location: LCCOMB_X25_Y28_N22
\inst|rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|rtl~0_combout\ = (\inst|rtc~q\ & ((\inst|rtl~q\) # (\inst|Equal9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rtc~q\,
	datac => \inst|rtl~q\,
	datad => \inst|Equal9~10_combout\,
	combout => \inst|rtl~0_combout\);

-- Location: FF_X25_Y28_N23
\inst|rtl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|rtl~0_combout\,
	ena => \inst|process_6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rtl~q\);

-- Location: FF_X23_Y28_N7
\inst|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|dwReg\(0),
	sload => VCC,
	ena => \inst|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rx_data\(0));

-- Location: LCCOMB_X23_Y28_N16
\inst|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~1_combout\ = (!\inst|Add5~6_combout\ & (\inst|MOSI~0_combout\ & \inst|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~6_combout\,
	datab => \inst|MOSI~0_combout\,
	datac => \inst|Add5~0_combout\,
	combout => \inst|Decoder0~1_combout\);

-- Location: LCCOMB_X23_Y28_N22
\inst|dwReg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dwReg[1]~1_combout\ = (\inst|Equal9~0_combout\ & ((\inst|Decoder0~1_combout\ & (\MISO~input_o\)) # (!\inst|Decoder0~1_combout\ & ((\inst|dwReg\(1)))))) # (!\inst|Equal9~0_combout\ & (((\inst|dwReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MISO~input_o\,
	datab => \inst|Equal9~0_combout\,
	datac => \inst|dwReg\(1),
	datad => \inst|Decoder0~1_combout\,
	combout => \inst|dwReg[1]~1_combout\);

-- Location: FF_X23_Y28_N23
\inst|dwReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|dwReg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dwReg\(1));

-- Location: LCCOMB_X23_Y30_N24
\inst|rx_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|rx_data[1]~feeder_combout\ = \inst|dwReg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dwReg\(1),
	combout => \inst|rx_data[1]~feeder_combout\);

-- Location: FF_X23_Y30_N25
\inst|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|rx_data[1]~feeder_combout\,
	ena => \inst|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rx_data\(1));

-- Location: LCCOMB_X23_Y28_N28
\inst|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~2_combout\ = (!\inst|Add5~6_combout\ & (\inst|MOSI~0_combout\ & (!\inst|Add5~0_combout\ & \inst|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~6_combout\,
	datab => \inst|MOSI~0_combout\,
	datac => \inst|Add5~0_combout\,
	datad => \inst|Add5~2_combout\,
	combout => \inst|Decoder0~2_combout\);

-- Location: LCCOMB_X23_Y30_N12
\inst|dwReg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dwReg[2]~2_combout\ = (\inst|Decoder0~2_combout\ & ((\inst|Add5~4_combout\ & ((\inst|dwReg\(2)))) # (!\inst|Add5~4_combout\ & (\MISO~input_o\)))) # (!\inst|Decoder0~2_combout\ & (((\inst|dwReg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder0~2_combout\,
	datab => \MISO~input_o\,
	datac => \inst|dwReg\(2),
	datad => \inst|Add5~4_combout\,
	combout => \inst|dwReg[2]~2_combout\);

-- Location: FF_X23_Y30_N13
\inst|dwReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|dwReg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dwReg\(2));

-- Location: LCCOMB_X23_Y30_N26
\inst|rx_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|rx_data[2]~feeder_combout\ = \inst|dwReg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dwReg\(2),
	combout => \inst|rx_data[2]~feeder_combout\);

-- Location: FF_X23_Y30_N27
\inst|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|rx_data[2]~feeder_combout\,
	ena => \inst|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rx_data\(2));

-- Location: LCCOMB_X23_Y28_N24
\inst|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~3_combout\ = (!\inst|Add5~6_combout\ & (\inst|MOSI~0_combout\ & (\inst|Add5~0_combout\ & \inst|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~6_combout\,
	datab => \inst|MOSI~0_combout\,
	datac => \inst|Add5~0_combout\,
	datad => \inst|Add5~2_combout\,
	combout => \inst|Decoder0~3_combout\);

-- Location: LCCOMB_X23_Y30_N18
\inst|dwReg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dwReg[3]~3_combout\ = (\inst|Decoder0~3_combout\ & ((\inst|Add5~4_combout\ & ((\inst|dwReg\(3)))) # (!\inst|Add5~4_combout\ & (\MISO~input_o\)))) # (!\inst|Decoder0~3_combout\ & (((\inst|dwReg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder0~3_combout\,
	datab => \MISO~input_o\,
	datac => \inst|dwReg\(3),
	datad => \inst|Add5~4_combout\,
	combout => \inst|dwReg[3]~3_combout\);

-- Location: FF_X23_Y30_N19
\inst|dwReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|dwReg[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dwReg\(3));

-- Location: LCCOMB_X23_Y30_N4
\inst|rx_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|rx_data[3]~feeder_combout\ = \inst|dwReg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dwReg\(3),
	combout => \inst|rx_data[3]~feeder_combout\);

-- Location: FF_X23_Y30_N5
\inst|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|rx_data[3]~feeder_combout\,
	ena => \inst|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rx_data\(3));

-- Location: LCCOMB_X23_Y28_N20
\inst|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~4_combout\ = (\inst|Add5~4_combout\ & !\inst|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~4_combout\,
	datad => \inst|Add5~2_combout\,
	combout => \inst|Decoder0~4_combout\);

-- Location: LCCOMB_X23_Y28_N12
\inst|dwReg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dwReg[4]~4_combout\ = (\inst|Decoder0~0_combout\ & ((\inst|Decoder0~4_combout\ & (\MISO~input_o\)) # (!\inst|Decoder0~4_combout\ & ((\inst|dwReg\(4)))))) # (!\inst|Decoder0~0_combout\ & (((\inst|dwReg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder0~0_combout\,
	datab => \MISO~input_o\,
	datac => \inst|dwReg\(4),
	datad => \inst|Decoder0~4_combout\,
	combout => \inst|dwReg[4]~4_combout\);

-- Location: FF_X23_Y28_N13
\inst|dwReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|dwReg[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dwReg\(4));

-- Location: LCCOMB_X23_Y28_N26
\inst|rx_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|rx_data[4]~feeder_combout\ = \inst|dwReg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dwReg\(4),
	combout => \inst|rx_data[4]~feeder_combout\);

-- Location: FF_X23_Y28_N27
\inst|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|rx_data[4]~feeder_combout\,
	ena => \inst|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rx_data\(4));

-- Location: LCCOMB_X23_Y28_N10
\inst|dwReg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dwReg[5]~5_combout\ = (\inst|Decoder0~4_combout\ & ((\inst|Decoder0~1_combout\ & (\MISO~input_o\)) # (!\inst|Decoder0~1_combout\ & ((\inst|dwReg\(5)))))) # (!\inst|Decoder0~4_combout\ & (((\inst|dwReg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder0~4_combout\,
	datab => \MISO~input_o\,
	datac => \inst|dwReg\(5),
	datad => \inst|Decoder0~1_combout\,
	combout => \inst|dwReg[5]~5_combout\);

-- Location: FF_X23_Y28_N11
\inst|dwReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|dwReg[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dwReg\(5));

-- Location: LCCOMB_X23_Y28_N14
\inst|rx_data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|rx_data[5]~feeder_combout\ = \inst|dwReg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dwReg\(5),
	combout => \inst|rx_data[5]~feeder_combout\);

-- Location: FF_X23_Y28_N15
\inst|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|rx_data[5]~feeder_combout\,
	ena => \inst|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rx_data\(5));

-- Location: LCCOMB_X23_Y28_N2
\inst|dwReg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dwReg[6]~6_combout\ = (\inst|Add5~4_combout\ & ((\inst|Decoder0~2_combout\ & (\MISO~input_o\)) # (!\inst|Decoder0~2_combout\ & ((\inst|dwReg\(6)))))) # (!\inst|Add5~4_combout\ & (((\inst|dwReg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~4_combout\,
	datab => \MISO~input_o\,
	datac => \inst|dwReg\(6),
	datad => \inst|Decoder0~2_combout\,
	combout => \inst|dwReg[6]~6_combout\);

-- Location: FF_X23_Y28_N3
\inst|dwReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|dwReg[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dwReg\(6));

-- Location: LCCOMB_X23_Y28_N0
\inst|rx_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|rx_data[6]~feeder_combout\ = \inst|dwReg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dwReg\(6),
	combout => \inst|rx_data[6]~feeder_combout\);

-- Location: FF_X23_Y28_N1
\inst|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|rx_data[6]~feeder_combout\,
	ena => \inst|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rx_data\(6));

-- Location: LCCOMB_X23_Y30_N28
\inst|dwReg[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dwReg[7]~7_combout\ = (\inst|Decoder0~3_combout\ & ((\inst|Add5~4_combout\ & (\MISO~input_o\)) # (!\inst|Add5~4_combout\ & ((\inst|dwReg\(7)))))) # (!\inst|Decoder0~3_combout\ & (((\inst|dwReg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder0~3_combout\,
	datab => \MISO~input_o\,
	datac => \inst|dwReg\(7),
	datad => \inst|Add5~4_combout\,
	combout => \inst|dwReg[7]~7_combout\);

-- Location: FF_X23_Y30_N29
\inst|dwReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|dwReg[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dwReg\(7));

-- Location: LCCOMB_X23_Y30_N14
\inst|rx_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|rx_data[7]~feeder_combout\ = \inst|dwReg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dwReg\(7),
	combout => \inst|rx_data[7]~feeder_combout\);

-- Location: FF_X23_Y30_N15
\inst|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst|rx_data[7]~feeder_combout\,
	ena => \inst|rtl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rx_data\(7));

-- Location: LCCOMB_X27_Y25_N8
\inst|CS\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|CS~combout\ = (\inst|CSU~q\ & \inst|CSD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|CSU~q\,
	datad => \inst|CSD~q\,
	combout => \inst|CS~combout\);

-- Location: LCCOMB_X24_Y33_N24
\inst|CLKO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|CLKO~0_combout\ = (\inst2|CLK_OUT~q\) # (!\inst|rtc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|CLK_OUT~q\,
	datad => \inst|rtc~q\,
	combout => \inst|CLKO~0_combout\);

-- Location: FF_X29_Y27_N3
\inst|BP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~2_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(1));

-- Location: LCCOMB_X29_Y27_N0
\inst|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~0_combout\ = \inst|BP\(0) $ (VCC)
-- \inst|Add4~1\ = CARRY(\inst|BP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(0),
	datad => VCC,
	combout => \inst|Add4~0_combout\,
	cout => \inst|Add4~1\);

-- Location: FF_X29_Y27_N1
\inst|BP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~0_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(0));

-- Location: LCCOMB_X29_Y27_N2
\inst|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~2_combout\ = (\inst|BP\(1) & (\inst|Add4~1\ & VCC)) # (!\inst|BP\(1) & (!\inst|Add4~1\))
-- \inst|Add4~3\ = CARRY((!\inst|BP\(1) & !\inst|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(1),
	datad => VCC,
	cin => \inst|Add4~1\,
	combout => \inst|Add4~2_combout\,
	cout => \inst|Add4~3\);

-- Location: FF_X32_Y25_N21
\inst3|x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	asdata => \inst3|x~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(3));

-- Location: LCCOMB_X28_Y24_N0
\inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|x\(0) $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst3|x\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|x\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: FF_X27_Y25_N23
\inst3|preval\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	asdata => \inst|CS~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|preval~q\);

-- Location: LCCOMB_X29_Y25_N22
\inst3|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_0~0_combout\ = (!\inst3|preval~q\ & (\inst|CSU~q\ & \inst|CSD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|preval~q\,
	datab => \inst|CSU~q\,
	datad => \inst|CSD~q\,
	combout => \inst3|process_0~0_combout\);

-- Location: LCCOMB_X32_Y25_N2
\inst3|x~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~1_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~0_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~0_combout\,
	datac => \inst3|x\(0),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~1_combout\);

-- Location: FF_X32_Y25_N3
\inst3|x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(0));

-- Location: LCCOMB_X28_Y24_N2
\inst3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|x\(1) & (!\inst3|Add0~1\)) # (!\inst3|x\(1) & ((\inst3|Add0~1\) # (GND)))
-- \inst3|Add0~3\ = CARRY((!\inst3|Add0~1\) # (!\inst3|x\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|x\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: LCCOMB_X32_Y25_N20
\inst3|x~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~0_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~2_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~2_combout\,
	datab => \inst3|x\(1),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~0_combout\);

-- Location: LCCOMB_X32_Y25_N0
\inst3|x[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x[1]~feeder_combout\ = \inst3|x~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|x~0_combout\,
	combout => \inst3|x[1]~feeder_combout\);

-- Location: FF_X32_Y25_N1
\inst3|x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(1));

-- Location: LCCOMB_X28_Y24_N4
\inst3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|x\(2) & (\inst3|Add0~3\ $ (GND))) # (!\inst3|x\(2) & (!\inst3|Add0~3\ & VCC))
-- \inst3|Add0~5\ = CARRY((\inst3|x\(2) & !\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: LCCOMB_X28_Y25_N30
\inst3|x~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~26_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~18_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~18_combout\,
	datac => \inst3|x\(9),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~26_combout\);

-- Location: FF_X28_Y25_N31
\inst3|x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(9));

-- Location: LCCOMB_X28_Y24_N6
\inst3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|x\(3) & (!\inst3|Add0~5\)) # (!\inst3|x\(3) & ((\inst3|Add0~5\) # (GND)))
-- \inst3|Add0~7\ = CARRY((!\inst3|Add0~5\) # (!\inst3|x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCCOMB_X28_Y24_N8
\inst3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|x\(4) & (\inst3|Add0~7\ $ (GND))) # (!\inst3|x\(4) & (!\inst3|Add0~7\ & VCC))
-- \inst3|Add0~9\ = CARRY((\inst3|x\(4) & !\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCCOMB_X27_Y25_N0
\inst3|x~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~28_combout\ = (\inst3|x\(4) & ((\inst3|preval~q\) # ((!\inst|CSD~q\) # (!\inst|CSU~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(4),
	datab => \inst3|preval~q\,
	datac => \inst|CSU~q\,
	datad => \inst|CSD~q\,
	combout => \inst3|x~28_combout\);

-- Location: LCCOMB_X27_Y25_N10
\inst3|x~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~31_combout\ = (\inst3|x~28_combout\) # ((\inst3|Add0~8_combout\ & \inst3|x~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~8_combout\,
	datac => \inst3|x~27_combout\,
	datad => \inst3|x~28_combout\,
	combout => \inst3|x~31_combout\);

-- Location: LCCOMB_X27_Y25_N6
\inst3|x[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x[4]~feeder_combout\ = \inst3|x~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|x~31_combout\,
	combout => \inst3|x[4]~feeder_combout\);

-- Location: FF_X27_Y25_N7
\inst3|x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(4));

-- Location: LCCOMB_X28_Y24_N10
\inst3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|x\(5) & (!\inst3|Add0~9\)) # (!\inst3|x\(5) & ((\inst3|Add0~9\) # (GND)))
-- \inst3|Add0~11\ = CARRY((!\inst3|Add0~9\) # (!\inst3|x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|x\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X27_Y25_N22
\inst3|x~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~12_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~10_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~10_combout\,
	datab => \inst3|x\(5),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~12_combout\);

-- Location: FF_X27_Y25_N9
\inst3|x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	asdata => \inst3|x~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(5));

-- Location: LCCOMB_X28_Y24_N12
\inst3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|x\(6) & (\inst3|Add0~11\ $ (GND))) # (!\inst3|x\(6) & (!\inst3|Add0~11\ & VCC))
-- \inst3|Add0~13\ = CARRY((\inst3|x\(6) & !\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|x\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: LCCOMB_X27_Y25_N14
\inst3|x~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~11_combout\ = (\inst3|process_0~0_combout\ & ((\inst3|Add0~12_combout\))) # (!\inst3|process_0~0_combout\ & (\inst3|x\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|x\(6),
	datac => \inst3|Add0~12_combout\,
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~11_combout\);

-- Location: LCCOMB_X27_Y25_N28
\inst3|x[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x[6]~feeder_combout\ = \inst3|x~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|x~11_combout\,
	combout => \inst3|x[6]~feeder_combout\);

-- Location: FF_X27_Y25_N29
\inst3|x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(6));

-- Location: LCCOMB_X28_Y24_N14
\inst3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|x\(7) & (!\inst3|Add0~13\)) # (!\inst3|x\(7) & ((\inst3|Add0~13\) # (GND)))
-- \inst3|Add0~15\ = CARRY((!\inst3|Add0~13\) # (!\inst3|x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: LCCOMB_X27_Y25_N20
\inst3|x~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~10_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~14_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~14_combout\,
	datac => \inst3|x\(7),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~10_combout\);

-- Location: LCCOMB_X27_Y25_N2
\inst3|x[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x[7]~feeder_combout\ = \inst3|x~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|x~10_combout\,
	combout => \inst3|x[7]~feeder_combout\);

-- Location: FF_X27_Y25_N3
\inst3|x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(7));

-- Location: LCCOMB_X28_Y24_N16
\inst3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|x\(8) & (\inst3|Add0~15\ $ (GND))) # (!\inst3|x\(8) & (!\inst3|Add0~15\ & VCC))
-- \inst3|Add0~17\ = CARRY((\inst3|x\(8) & !\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: LCCOMB_X27_Y25_N12
\inst3|x~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~9_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~16_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~16_combout\,
	datac => \inst3|x\(8),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~9_combout\);

-- Location: FF_X27_Y25_N13
\inst3|x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(8));

-- Location: LCCOMB_X28_Y24_N18
\inst3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst3|x\(9) & (!\inst3|Add0~17\)) # (!\inst3|x\(9) & ((\inst3|Add0~17\) # (GND)))
-- \inst3|Add0~19\ = CARRY((!\inst3|Add0~17\) # (!\inst3|x\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(9),
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: LCCOMB_X32_Y25_N30
\inst3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~5_combout\ = (!\inst3|Add0~0_combout\ & (!\inst3|Add0~6_combout\ & (!\inst3|Add0~2_combout\ & \inst3|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~0_combout\,
	datab => \inst3|Add0~6_combout\,
	datac => \inst3|Add0~2_combout\,
	datad => \inst3|Add0~4_combout\,
	combout => \inst3|Equal0~5_combout\);

-- Location: LCCOMB_X28_Y25_N24
\inst3|x~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~33_combout\ = (\inst3|process_0~0_combout\ & ((\inst3|Add0~20_combout\))) # (!\inst3|process_0~0_combout\ & (\inst3|x\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|process_0~0_combout\,
	datac => \inst3|x\(10),
	datad => \inst3|Add0~20_combout\,
	combout => \inst3|x~33_combout\);

-- Location: FF_X28_Y25_N25
\inst3|x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(10));

-- Location: LCCOMB_X28_Y24_N20
\inst3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = (\inst3|x\(10) & (\inst3|Add0~19\ $ (GND))) # (!\inst3|x\(10) & (!\inst3|Add0~19\ & VCC))
-- \inst3|Add0~21\ = CARRY((\inst3|x\(10) & !\inst3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|x\(10),
	datad => VCC,
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\,
	cout => \inst3|Add0~21\);

-- Location: LCCOMB_X29_Y25_N16
\inst3|x~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~15_combout\ = (\inst3|process_0~0_combout\ & ((\inst3|Add0~24_combout\))) # (!\inst3|process_0~0_combout\ & (\inst3|x\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(12),
	datac => \inst3|process_0~0_combout\,
	datad => \inst3|Add0~24_combout\,
	combout => \inst3|x~15_combout\);

-- Location: LCCOMB_X29_Y25_N20
\inst3|x[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x[12]~feeder_combout\ = \inst3|x~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|x~15_combout\,
	combout => \inst3|x[12]~feeder_combout\);

-- Location: FF_X29_Y25_N21
\inst3|x[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(12));

-- Location: LCCOMB_X28_Y24_N22
\inst3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~22_combout\ = (\inst3|x\(11) & (!\inst3|Add0~21\)) # (!\inst3|x\(11) & ((\inst3|Add0~21\) # (GND)))
-- \inst3|Add0~23\ = CARRY((!\inst3|Add0~21\) # (!\inst3|x\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(11),
	datad => VCC,
	cin => \inst3|Add0~21\,
	combout => \inst3|Add0~22_combout\,
	cout => \inst3|Add0~23\);

-- Location: LCCOMB_X29_Y25_N6
\inst3|x~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~16_combout\ = (\inst3|process_0~0_combout\ & ((\inst3|Add0~22_combout\))) # (!\inst3|process_0~0_combout\ & (\inst3|x\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(11),
	datab => \inst3|Add0~22_combout\,
	datac => \inst3|process_0~0_combout\,
	combout => \inst3|x~16_combout\);

-- Location: LCCOMB_X29_Y25_N10
\inst3|x[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x[11]~feeder_combout\ = \inst3|x~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|x~16_combout\,
	combout => \inst3|x[11]~feeder_combout\);

-- Location: FF_X29_Y25_N11
\inst3|x[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(11));

-- Location: LCCOMB_X28_Y24_N24
\inst3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~24_combout\ = (\inst3|x\(12) & (\inst3|Add0~23\ $ (GND))) # (!\inst3|x\(12) & (!\inst3|Add0~23\ & VCC))
-- \inst3|Add0~25\ = CARRY((\inst3|x\(12) & !\inst3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(12),
	datad => VCC,
	cin => \inst3|Add0~23\,
	combout => \inst3|Add0~24_combout\,
	cout => \inst3|Add0~25\);

-- Location: LCCOMB_X27_Y25_N18
\inst3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~6_combout\ = (!\inst3|Add0~14_combout\ & (!\inst3|Add0~16_combout\ & (!\inst3|Add0~12_combout\ & !\inst3|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~14_combout\,
	datab => \inst3|Add0~16_combout\,
	datac => \inst3|Add0~12_combout\,
	datad => \inst3|Add0~10_combout\,
	combout => \inst3|Equal0~6_combout\);

-- Location: LCCOMB_X27_Y25_N24
\inst3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~7_combout\ = (!\inst3|Add0~20_combout\ & (!\inst3|Add0~24_combout\ & (!\inst3|Add0~22_combout\ & \inst3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~20_combout\,
	datab => \inst3|Add0~24_combout\,
	datac => \inst3|Add0~22_combout\,
	datad => \inst3|Equal0~6_combout\,
	combout => \inst3|Equal0~7_combout\);

-- Location: LCCOMB_X27_Y25_N30
\inst3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~8_combout\ = (!\inst3|Add0~18_combout\ & (\inst3|Add0~8_combout\ & (\inst3|Equal0~5_combout\ & \inst3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~18_combout\,
	datab => \inst3|Add0~8_combout\,
	datac => \inst3|Equal0~5_combout\,
	datad => \inst3|Equal0~7_combout\,
	combout => \inst3|Equal0~8_combout\);

-- Location: LCCOMB_X29_Y25_N8
\inst3|x~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~2_combout\ = (\inst3|process_0~0_combout\ & ((\inst3|Add0~62_combout\))) # (!\inst3|process_0~0_combout\ & (\inst3|x\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_0~0_combout\,
	datac => \inst3|x\(31),
	datad => \inst3|Add0~62_combout\,
	combout => \inst3|x~2_combout\);

-- Location: FF_X29_Y25_N9
\inst3|x[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(31));

-- Location: LCCOMB_X28_Y24_N26
\inst3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~26_combout\ = (\inst3|x\(13) & (!\inst3|Add0~25\)) # (!\inst3|x\(13) & ((\inst3|Add0~25\) # (GND)))
-- \inst3|Add0~27\ = CARRY((!\inst3|Add0~25\) # (!\inst3|x\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|x\(13),
	datad => VCC,
	cin => \inst3|Add0~25\,
	combout => \inst3|Add0~26_combout\,
	cout => \inst3|Add0~27\);

-- Location: LCCOMB_X32_Y25_N8
\inst3|x~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~21_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~26_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~26_combout\,
	datac => \inst3|x\(13),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~21_combout\);

-- Location: FF_X32_Y25_N9
\inst3|x[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(13));

-- Location: LCCOMB_X28_Y24_N28
\inst3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~28_combout\ = (\inst3|x\(14) & (\inst3|Add0~27\ $ (GND))) # (!\inst3|x\(14) & (!\inst3|Add0~27\ & VCC))
-- \inst3|Add0~29\ = CARRY((\inst3|x\(14) & !\inst3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(14),
	datad => VCC,
	cin => \inst3|Add0~27\,
	combout => \inst3|Add0~28_combout\,
	cout => \inst3|Add0~29\);

-- Location: LCCOMB_X32_Y25_N18
\inst3|x~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~20_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~28_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~28_combout\,
	datac => \inst3|x\(14),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~20_combout\);

-- Location: FF_X32_Y25_N19
\inst3|x[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(14));

-- Location: LCCOMB_X28_Y24_N30
\inst3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~30_combout\ = (\inst3|x\(15) & (!\inst3|Add0~29\)) # (!\inst3|x\(15) & ((\inst3|Add0~29\) # (GND)))
-- \inst3|Add0~31\ = CARRY((!\inst3|Add0~29\) # (!\inst3|x\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(15),
	datad => VCC,
	cin => \inst3|Add0~29\,
	combout => \inst3|Add0~30_combout\,
	cout => \inst3|Add0~31\);

-- Location: LCCOMB_X32_Y25_N4
\inst3|x~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~19_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~30_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~30_combout\,
	datac => \inst3|x\(15),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~19_combout\);

-- Location: FF_X32_Y25_N5
\inst3|x[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(15));

-- Location: LCCOMB_X28_Y23_N0
\inst3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~32_combout\ = (\inst3|x\(16) & (\inst3|Add0~31\ $ (GND))) # (!\inst3|x\(16) & (!\inst3|Add0~31\ & VCC))
-- \inst3|Add0~33\ = CARRY((\inst3|x\(16) & !\inst3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|x\(16),
	datad => VCC,
	cin => \inst3|Add0~31\,
	combout => \inst3|Add0~32_combout\,
	cout => \inst3|Add0~33\);

-- Location: LCCOMB_X32_Y25_N6
\inst3|x~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~18_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~32_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~32_combout\,
	datac => \inst3|x\(16),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~18_combout\);

-- Location: FF_X32_Y25_N7
\inst3|x[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(16));

-- Location: LCCOMB_X28_Y23_N2
\inst3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~34_combout\ = (\inst3|x\(17) & (!\inst3|Add0~33\)) # (!\inst3|x\(17) & ((\inst3|Add0~33\) # (GND)))
-- \inst3|Add0~35\ = CARRY((!\inst3|Add0~33\) # (!\inst3|x\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(17),
	datad => VCC,
	cin => \inst3|Add0~33\,
	combout => \inst3|Add0~34_combout\,
	cout => \inst3|Add0~35\);

-- Location: LCCOMB_X28_Y25_N18
\inst3|x~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~17_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~34_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~34_combout\,
	datac => \inst3|x\(17),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~17_combout\);

-- Location: FF_X28_Y25_N19
\inst3|x[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(17));

-- Location: LCCOMB_X28_Y23_N4
\inst3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~36_combout\ = (\inst3|x\(18) & (\inst3|Add0~35\ $ (GND))) # (!\inst3|x\(18) & (!\inst3|Add0~35\ & VCC))
-- \inst3|Add0~37\ = CARRY((\inst3|x\(18) & !\inst3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(18),
	datad => VCC,
	cin => \inst3|Add0~35\,
	combout => \inst3|Add0~36_combout\,
	cout => \inst3|Add0~37\);

-- Location: LCCOMB_X28_Y25_N28
\inst3|x~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~32_combout\ = (\inst3|process_0~0_combout\ & ((\inst3|Add0~36_combout\))) # (!\inst3|process_0~0_combout\ & (\inst3|x\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|process_0~0_combout\,
	datac => \inst3|x\(18),
	datad => \inst3|Add0~36_combout\,
	combout => \inst3|x~32_combout\);

-- Location: FF_X28_Y25_N29
\inst3|x[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(18));

-- Location: LCCOMB_X28_Y23_N6
\inst3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~38_combout\ = (\inst3|x\(19) & (!\inst3|Add0~37\)) # (!\inst3|x\(19) & ((\inst3|Add0~37\) # (GND)))
-- \inst3|Add0~39\ = CARRY((!\inst3|Add0~37\) # (!\inst3|x\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|x\(19),
	datad => VCC,
	cin => \inst3|Add0~37\,
	combout => \inst3|Add0~38_combout\,
	cout => \inst3|Add0~39\);

-- Location: LCCOMB_X28_Y25_N22
\inst3|x~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~23_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~38_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~38_combout\,
	datac => \inst3|x\(19),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~23_combout\);

-- Location: FF_X28_Y25_N23
\inst3|x[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(19));

-- Location: LCCOMB_X28_Y23_N8
\inst3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~40_combout\ = (\inst3|x\(20) & (\inst3|Add0~39\ $ (GND))) # (!\inst3|x\(20) & (!\inst3|Add0~39\ & VCC))
-- \inst3|Add0~41\ = CARRY((\inst3|x\(20) & !\inst3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(20),
	datad => VCC,
	cin => \inst3|Add0~39\,
	combout => \inst3|Add0~40_combout\,
	cout => \inst3|Add0~41\);

-- Location: LCCOMB_X28_Y25_N20
\inst3|x~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~22_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~40_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~40_combout\,
	datac => \inst3|x\(20),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~22_combout\);

-- Location: FF_X28_Y25_N21
\inst3|x[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(20));

-- Location: LCCOMB_X28_Y23_N10
\inst3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~42_combout\ = (\inst3|x\(21) & (!\inst3|Add0~41\)) # (!\inst3|x\(21) & ((\inst3|Add0~41\) # (GND)))
-- \inst3|Add0~43\ = CARRY((!\inst3|Add0~41\) # (!\inst3|x\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(21),
	datad => VCC,
	cin => \inst3|Add0~41\,
	combout => \inst3|Add0~42_combout\,
	cout => \inst3|Add0~43\);

-- Location: LCCOMB_X29_Y23_N22
\inst3|x~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~7_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~42_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~42_combout\,
	datab => \inst3|x\(21),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~7_combout\);

-- Location: LCCOMB_X29_Y23_N2
\inst3|x[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x[21]~feeder_combout\ = \inst3|x~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|x~7_combout\,
	combout => \inst3|x[21]~feeder_combout\);

-- Location: FF_X29_Y23_N3
\inst3|x[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(21));

-- Location: LCCOMB_X28_Y23_N12
\inst3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~44_combout\ = (\inst3|x\(22) & (\inst3|Add0~43\ $ (GND))) # (!\inst3|x\(22) & (!\inst3|Add0~43\ & VCC))
-- \inst3|Add0~45\ = CARRY((\inst3|x\(22) & !\inst3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|x\(22),
	datad => VCC,
	cin => \inst3|Add0~43\,
	combout => \inst3|Add0~44_combout\,
	cout => \inst3|Add0~45\);

-- Location: LCCOMB_X29_Y23_N0
\inst3|x~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~6_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~44_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~44_combout\,
	datab => \inst3|x\(22),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~6_combout\);

-- Location: LCCOMB_X29_Y23_N16
\inst3|x[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x[22]~feeder_combout\ = \inst3|x~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|x~6_combout\,
	combout => \inst3|x[22]~feeder_combout\);

-- Location: FF_X29_Y23_N17
\inst3|x[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(22));

-- Location: LCCOMB_X28_Y23_N14
\inst3|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~46_combout\ = (\inst3|x\(23) & (!\inst3|Add0~45\)) # (!\inst3|x\(23) & ((\inst3|Add0~45\) # (GND)))
-- \inst3|Add0~47\ = CARRY((!\inst3|Add0~45\) # (!\inst3|x\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(23),
	datad => VCC,
	cin => \inst3|Add0~45\,
	combout => \inst3|Add0~46_combout\,
	cout => \inst3|Add0~47\);

-- Location: LCCOMB_X29_Y23_N10
\inst3|x~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~5_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~46_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~46_combout\,
	datac => \inst3|x\(23),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~5_combout\);

-- Location: LCCOMB_X29_Y23_N6
\inst3|x[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x[23]~feeder_combout\ = \inst3|x~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|x~5_combout\,
	combout => \inst3|x[23]~feeder_combout\);

-- Location: FF_X29_Y23_N7
\inst3|x[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(23));

-- Location: LCCOMB_X28_Y23_N16
\inst3|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~48_combout\ = (\inst3|x\(24) & (\inst3|Add0~47\ $ (GND))) # (!\inst3|x\(24) & (!\inst3|Add0~47\ & VCC))
-- \inst3|Add0~49\ = CARRY((\inst3|x\(24) & !\inst3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|x\(24),
	datad => VCC,
	cin => \inst3|Add0~47\,
	combout => \inst3|Add0~48_combout\,
	cout => \inst3|Add0~49\);

-- Location: LCCOMB_X29_Y23_N4
\inst3|x~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~4_combout\ = (\inst3|process_0~0_combout\ & ((\inst3|Add0~48_combout\))) # (!\inst3|process_0~0_combout\ & (\inst3|x\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(24),
	datac => \inst3|Add0~48_combout\,
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~4_combout\);

-- Location: LCCOMB_X29_Y23_N12
\inst3|x[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x[24]~feeder_combout\ = \inst3|x~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|x~4_combout\,
	combout => \inst3|x[24]~feeder_combout\);

-- Location: FF_X29_Y23_N13
\inst3|x[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(24));

-- Location: LCCOMB_X28_Y23_N18
\inst3|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~50_combout\ = (\inst3|x\(25) & (!\inst3|Add0~49\)) # (!\inst3|x\(25) & ((\inst3|Add0~49\) # (GND)))
-- \inst3|Add0~51\ = CARRY((!\inst3|Add0~49\) # (!\inst3|x\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(25),
	datad => VCC,
	cin => \inst3|Add0~49\,
	combout => \inst3|Add0~50_combout\,
	cout => \inst3|Add0~51\);

-- Location: LCCOMB_X29_Y25_N30
\inst3|x~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~14_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~50_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~50_combout\,
	datab => \inst3|x\(25),
	datac => \inst3|process_0~0_combout\,
	combout => \inst3|x~14_combout\);

-- Location: LCCOMB_X29_Y25_N18
\inst3|x[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x[25]~feeder_combout\ = \inst3|x~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|x~14_combout\,
	combout => \inst3|x[25]~feeder_combout\);

-- Location: FF_X29_Y25_N19
\inst3|x[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(25));

-- Location: LCCOMB_X28_Y23_N20
\inst3|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~52_combout\ = (\inst3|x\(26) & (\inst3|Add0~51\ $ (GND))) # (!\inst3|x\(26) & (!\inst3|Add0~51\ & VCC))
-- \inst3|Add0~53\ = CARRY((\inst3|x\(26) & !\inst3|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|x\(26),
	datad => VCC,
	cin => \inst3|Add0~51\,
	combout => \inst3|Add0~52_combout\,
	cout => \inst3|Add0~53\);

-- Location: LCCOMB_X29_Y25_N28
\inst3|x~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~13_combout\ = (\inst3|process_0~0_combout\ & ((\inst3|Add0~52_combout\))) # (!\inst3|process_0~0_combout\ & (\inst3|x\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|x\(26),
	datac => \inst3|process_0~0_combout\,
	datad => \inst3|Add0~52_combout\,
	combout => \inst3|x~13_combout\);

-- Location: FF_X29_Y25_N5
\inst3|x[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	asdata => \inst3|x~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(26));

-- Location: LCCOMB_X28_Y23_N22
\inst3|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~54_combout\ = (\inst3|x\(27) & (!\inst3|Add0~53\)) # (!\inst3|x\(27) & ((\inst3|Add0~53\) # (GND)))
-- \inst3|Add0~55\ = CARRY((!\inst3|Add0~53\) # (!\inst3|x\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(27),
	datad => VCC,
	cin => \inst3|Add0~53\,
	combout => \inst3|Add0~54_combout\,
	cout => \inst3|Add0~55\);

-- Location: LCCOMB_X29_Y25_N2
\inst3|x~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~8_combout\ = (\inst3|process_0~0_combout\ & ((\inst3|Add0~54_combout\))) # (!\inst3|process_0~0_combout\ & (\inst3|x\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_0~0_combout\,
	datac => \inst3|x\(27),
	datad => \inst3|Add0~54_combout\,
	combout => \inst3|x~8_combout\);

-- Location: FF_X29_Y25_N3
\inst3|x[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(27));

-- Location: LCCOMB_X28_Y23_N24
\inst3|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~56_combout\ = (\inst3|x\(28) & (\inst3|Add0~55\ $ (GND))) # (!\inst3|x\(28) & (!\inst3|Add0~55\ & VCC))
-- \inst3|Add0~57\ = CARRY((\inst3|x\(28) & !\inst3|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|x\(28),
	datad => VCC,
	cin => \inst3|Add0~55\,
	combout => \inst3|Add0~56_combout\,
	cout => \inst3|Add0~57\);

-- Location: LCCOMB_X28_Y25_N10
\inst3|x~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~25_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~56_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~56_combout\,
	datac => \inst3|x\(28),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~25_combout\);

-- Location: FF_X28_Y25_N11
\inst3|x[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(28));

-- Location: LCCOMB_X28_Y23_N26
\inst3|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~58_combout\ = (\inst3|x\(29) & (!\inst3|Add0~57\)) # (!\inst3|x\(29) & ((\inst3|Add0~57\) # (GND)))
-- \inst3|Add0~59\ = CARRY((!\inst3|Add0~57\) # (!\inst3|x\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(29),
	datad => VCC,
	cin => \inst3|Add0~57\,
	combout => \inst3|Add0~58_combout\,
	cout => \inst3|Add0~59\);

-- Location: LCCOMB_X28_Y25_N8
\inst3|x~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~24_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~58_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~58_combout\,
	datac => \inst3|x\(29),
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~24_combout\);

-- Location: FF_X28_Y25_N9
\inst3|x[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|x~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(29));

-- Location: LCCOMB_X28_Y23_N28
\inst3|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~60_combout\ = (\inst3|x\(30) & (\inst3|Add0~59\ $ (GND))) # (!\inst3|x\(30) & (!\inst3|Add0~59\ & VCC))
-- \inst3|Add0~61\ = CARRY((\inst3|x\(30) & !\inst3|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(30),
	datad => VCC,
	cin => \inst3|Add0~59\,
	combout => \inst3|Add0~60_combout\,
	cout => \inst3|Add0~61\);

-- Location: LCCOMB_X29_Y25_N4
\inst3|x~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~3_combout\ = (\inst3|process_0~0_combout\ & (\inst3|Add0~60_combout\)) # (!\inst3|process_0~0_combout\ & ((\inst3|x\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_0~0_combout\,
	datab => \inst3|Add0~60_combout\,
	datad => \inst3|x\(30),
	combout => \inst3|x~3_combout\);

-- Location: FF_X29_Y25_N23
\inst3|x[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	asdata => \inst3|x~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(30));

-- Location: LCCOMB_X28_Y23_N30
\inst3|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~62_combout\ = \inst3|Add0~61\ $ (\inst3|x\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|x\(31),
	cin => \inst3|Add0~61\,
	combout => \inst3|Add0~62_combout\);

-- Location: LCCOMB_X27_Y25_N4
\inst3|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~9_combout\ = (\inst3|Equal0~8_combout\ & (!\inst3|Add0~62_combout\ & (!\inst3|Add0~60_combout\ & !\inst3|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~8_combout\,
	datab => \inst3|Add0~62_combout\,
	datac => \inst3|Add0~60_combout\,
	datad => \inst3|Add0~54_combout\,
	combout => \inst3|Equal0~9_combout\);

-- Location: LCCOMB_X28_Y25_N6
\inst3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (!\inst3|Add0~36_combout\ & (!\inst3|Add0~38_combout\ & (!\inst3|Add0~34_combout\ & !\inst3|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~36_combout\,
	datab => \inst3|Add0~38_combout\,
	datac => \inst3|Add0~34_combout\,
	datad => \inst3|Add0~40_combout\,
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y25_N16
\inst3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~3_combout\ = (!\inst3|Add0~28_combout\ & (!\inst3|Add0~30_combout\ & (!\inst3|Add0~26_combout\ & !\inst3|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~28_combout\,
	datab => \inst3|Add0~30_combout\,
	datac => \inst3|Add0~26_combout\,
	datad => \inst3|Add0~32_combout\,
	combout => \inst3|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y23_N14
\inst3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (!\inst3|Add0~42_combout\ & (!\inst3|Add0~46_combout\ & (!\inst3|Add0~48_combout\ & !\inst3|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~42_combout\,
	datab => \inst3|Add0~46_combout\,
	datac => \inst3|Add0~48_combout\,
	datad => \inst3|Add0~44_combout\,
	combout => \inst3|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y25_N0
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (!\inst3|Add0~56_combout\ & (!\inst3|Add0~52_combout\ & (!\inst3|Add0~50_combout\ & !\inst3|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~56_combout\,
	datab => \inst3|Add0~52_combout\,
	datac => \inst3|Add0~50_combout\,
	datad => \inst3|Add0~58_combout\,
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y25_N26
\inst3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~4_combout\ = (\inst3|Equal0~2_combout\ & (\inst3|Equal0~3_combout\ & (\inst3|Equal0~1_combout\ & \inst3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~2_combout\,
	datab => \inst3|Equal0~3_combout\,
	datac => \inst3|Equal0~1_combout\,
	datad => \inst3|Equal0~0_combout\,
	combout => \inst3|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y25_N26
\inst3|x~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~27_combout\ = (\inst3|process_0~0_combout\ & ((!\inst3|Equal0~4_combout\) # (!\inst3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_0~0_combout\,
	datac => \inst3|Equal0~9_combout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|x~27_combout\);

-- Location: LCCOMB_X32_Y25_N22
\inst3|x~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~30_combout\ = (\inst3|Add0~4_combout\ & ((\inst3|x~27_combout\) # ((!\inst3|process_0~0_combout\ & \inst3|x\(2))))) # (!\inst3|Add0~4_combout\ & (!\inst3|process_0~0_combout\ & (\inst3|x\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~4_combout\,
	datab => \inst3|process_0~0_combout\,
	datac => \inst3|x\(2),
	datad => \inst3|x~27_combout\,
	combout => \inst3|x~30_combout\);

-- Location: FF_X32_Y25_N15
\inst3|x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	asdata => \inst3|x~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|x\(2));

-- Location: LCCOMB_X32_Y25_N12
\inst3|x~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|x~29_combout\ = (\inst3|process_0~0_combout\ & ((\inst3|Add0~6_combout\))) # (!\inst3|process_0~0_combout\ & (\inst3|x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(3),
	datac => \inst3|Add0~6_combout\,
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|x~29_combout\);

-- Location: LCCOMB_X29_Y25_N12
\inst3|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~2_combout\ = (!\inst3|x~16_combout\ & (!\inst3|x~15_combout\ & (!\inst3|x~14_combout\ & !\inst3|x~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~16_combout\,
	datab => \inst3|x~15_combout\,
	datac => \inst3|x~14_combout\,
	datad => \inst3|x~13_combout\,
	combout => \inst3|Equal1~2_combout\);

-- Location: LCCOMB_X27_Y25_N16
\inst3|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~1_combout\ = (!\inst3|x~9_combout\ & (!\inst3|x~11_combout\ & (!\inst3|x~12_combout\ & !\inst3|x~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~9_combout\,
	datab => \inst3|x~11_combout\,
	datac => \inst3|x~12_combout\,
	datad => \inst3|x~10_combout\,
	combout => \inst3|Equal1~1_combout\);

-- Location: LCCOMB_X29_Y23_N8
\inst3|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~0_combout\ = (!\inst3|x~5_combout\ & (!\inst3|x~4_combout\ & (!\inst3|x~7_combout\ & !\inst3|x~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~5_combout\,
	datab => \inst3|x~4_combout\,
	datac => \inst3|x~7_combout\,
	datad => \inst3|x~6_combout\,
	combout => \inst3|Equal1~0_combout\);

-- Location: LCCOMB_X29_Y25_N26
\inst3|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~3_combout\ = (\inst3|Equal1~2_combout\ & (!\inst3|x~8_combout\ & (\inst3|Equal1~1_combout\ & \inst3|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~2_combout\,
	datab => \inst3|x~8_combout\,
	datac => \inst3|Equal1~1_combout\,
	datad => \inst3|Equal1~0_combout\,
	combout => \inst3|Equal1~3_combout\);

-- Location: LCCOMB_X28_Y25_N4
\inst3|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~7_combout\ = (!\inst3|x~26_combout\ & ((\inst3|process_0~0_combout\ & (!\inst3|Add0~20_combout\)) # (!\inst3|process_0~0_combout\ & ((!\inst3|x\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~20_combout\,
	datab => \inst3|x\(10),
	datac => \inst3|x~26_combout\,
	datad => \inst3|process_0~0_combout\,
	combout => \inst3|Equal1~7_combout\);

-- Location: LCCOMB_X28_Y25_N12
\inst3|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~4_combout\ = (!\inst3|x~17_combout\ & ((\inst3|process_0~0_combout\ & (!\inst3|Add0~36_combout\)) # (!\inst3|process_0~0_combout\ & ((!\inst3|x\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~36_combout\,
	datab => \inst3|process_0~0_combout\,
	datac => \inst3|x\(18),
	datad => \inst3|x~17_combout\,
	combout => \inst3|Equal1~4_combout\);

-- Location: LCCOMB_X32_Y25_N24
\inst3|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~5_combout\ = (!\inst3|x~19_combout\ & (!\inst3|x~20_combout\ & (!\inst3|x~21_combout\ & !\inst3|x~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~19_combout\,
	datab => \inst3|x~20_combout\,
	datac => \inst3|x~21_combout\,
	datad => \inst3|x~18_combout\,
	combout => \inst3|Equal1~5_combout\);

-- Location: LCCOMB_X28_Y25_N2
\inst3|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~6_combout\ = (\inst3|Equal1~4_combout\ & (!\inst3|x~22_combout\ & (!\inst3|x~23_combout\ & \inst3|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~4_combout\,
	datab => \inst3|x~22_combout\,
	datac => \inst3|x~23_combout\,
	datad => \inst3|Equal1~5_combout\,
	combout => \inst3|Equal1~6_combout\);

-- Location: LCCOMB_X28_Y25_N14
\inst3|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~8_combout\ = (!\inst3|x~25_combout\ & (!\inst3|x~24_combout\ & (\inst3|Equal1~7_combout\ & \inst3|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~25_combout\,
	datab => \inst3|x~24_combout\,
	datac => \inst3|Equal1~7_combout\,
	datad => \inst3|Equal1~6_combout\,
	combout => \inst3|Equal1~8_combout\);

-- Location: LCCOMB_X29_Y25_N24
\inst3|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~9_combout\ = (!\inst3|x~2_combout\ & (!\inst3|x~3_combout\ & (\inst3|Equal1~3_combout\ & \inst3|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~2_combout\,
	datab => \inst3|x~3_combout\,
	datac => \inst3|Equal1~3_combout\,
	datad => \inst3|Equal1~8_combout\,
	combout => \inst3|Equal1~9_combout\);

-- Location: LCCOMB_X30_Y25_N10
\inst3|Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal17~0_combout\ = (!\inst3|x~29_combout\ & (\inst3|x~31_combout\ & (!\inst3|x~30_combout\ & \inst3|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~29_combout\,
	datab => \inst3|x~31_combout\,
	datac => \inst3|x~30_combout\,
	datad => \inst3|Equal1~9_combout\,
	combout => \inst3|Equal17~0_combout\);

-- Location: LCCOMB_X32_Y25_N28
\inst3|Equal19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal19~0_combout\ = (!\inst3|x~1_combout\ & ((\inst3|process_0~0_combout\ & ((\inst3|Add0~2_combout\))) # (!\inst3|process_0~0_combout\ & (\inst3|x\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(1),
	datab => \inst3|process_0~0_combout\,
	datac => \inst3|Add0~2_combout\,
	datad => \inst3|x~1_combout\,
	combout => \inst3|Equal19~0_combout\);

-- Location: LCCOMB_X32_Y25_N16
\inst3|Equal1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~11_combout\ = (!\inst3|x~1_combout\ & ((\inst3|process_0~0_combout\ & ((!\inst3|Add0~2_combout\))) # (!\inst3|process_0~0_combout\ & (!\inst3|x\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x\(1),
	datab => \inst3|process_0~0_combout\,
	datac => \inst3|Add0~2_combout\,
	datad => \inst3|x~1_combout\,
	combout => \inst3|Equal1~11_combout\);

-- Location: LCCOMB_X29_Y25_N14
\inst3|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~10_combout\ = (!\inst3|x~28_combout\ & (\inst3|Equal1~9_combout\ & ((!\inst3|x~27_combout\) # (!\inst3|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~28_combout\,
	datab => \inst3|Add0~8_combout\,
	datac => \inst3|x~27_combout\,
	datad => \inst3|Equal1~9_combout\,
	combout => \inst3|Equal1~10_combout\);

-- Location: LCCOMB_X30_Y25_N28
\inst3|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal13~0_combout\ = (\inst3|x~29_combout\ & (\inst3|Equal1~11_combout\ & (\inst3|x~30_combout\ & \inst3|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~29_combout\,
	datab => \inst3|Equal1~11_combout\,
	datac => \inst3|x~30_combout\,
	datad => \inst3|Equal1~10_combout\,
	combout => \inst3|Equal13~0_combout\);

-- Location: LCCOMB_X30_Y25_N14
\inst3|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal11~0_combout\ = (\inst3|x~29_combout\ & (\inst3|Equal19~0_combout\ & (!\inst3|x~30_combout\ & \inst3|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~29_combout\,
	datab => \inst3|Equal19~0_combout\,
	datac => \inst3|x~30_combout\,
	datad => \inst3|Equal1~10_combout\,
	combout => \inst3|Equal11~0_combout\);

-- Location: LCCOMB_X30_Y25_N20
\inst3|Equal1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~12_combout\ = (!\inst3|x~29_combout\ & (\inst3|Equal1~11_combout\ & (!\inst3|x~30_combout\ & \inst3|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~29_combout\,
	datab => \inst3|Equal1~11_combout\,
	datac => \inst3|x~30_combout\,
	datad => \inst3|Equal1~10_combout\,
	combout => \inst3|Equal1~12_combout\);

-- Location: LCCOMB_X30_Y25_N18
\inst3|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr0~0_combout\ = (!\inst3|Equal13~0_combout\ & (!\inst3|Equal11~0_combout\ & !\inst3|Equal1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal13~0_combout\,
	datac => \inst3|Equal11~0_combout\,
	datad => \inst3|Equal1~12_combout\,
	combout => \inst3|WideOr0~0_combout\);

-- Location: LCCOMB_X30_Y25_N22
\inst3|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr5~combout\ = ((\inst3|Equal17~0_combout\ & \inst3|Equal19~0_combout\)) # (!\inst3|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal17~0_combout\,
	datab => \inst3|Equal19~0_combout\,
	datad => \inst3|WideOr0~0_combout\,
	combout => \inst3|WideOr5~combout\);

-- Location: FF_X30_Y25_N23
\inst3|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(1));

-- Location: LCCOMB_X30_Y27_N18
\inst|DTS[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DTS[1]~feeder_combout\ = \inst3|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|data\(1),
	combout => \inst|DTS[1]~feeder_combout\);

-- Location: FF_X29_Y27_N19
\inst|BP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~18_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(9));

-- Location: LCCOMB_X29_Y27_N4
\inst|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~4_combout\ = (\inst|BP\(2) & ((GND) # (!\inst|Add4~3\))) # (!\inst|BP\(2) & (\inst|Add4~3\ $ (GND)))
-- \inst|Add4~5\ = CARRY((\inst|BP\(2)) # (!\inst|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(2),
	datad => VCC,
	cin => \inst|Add4~3\,
	combout => \inst|Add4~4_combout\,
	cout => \inst|Add4~5\);

-- Location: FF_X29_Y27_N5
\inst|BP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~4_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(2));

-- Location: LCCOMB_X29_Y27_N6
\inst|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~6_combout\ = (\inst|BP\(3) & (\inst|Add4~5\ & VCC)) # (!\inst|BP\(3) & (!\inst|Add4~5\))
-- \inst|Add4~7\ = CARRY((!\inst|BP\(3) & !\inst|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BP\(3),
	datad => VCC,
	cin => \inst|Add4~5\,
	combout => \inst|Add4~6_combout\,
	cout => \inst|Add4~7\);

-- Location: FF_X29_Y27_N7
\inst|BP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~6_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(3));

-- Location: LCCOMB_X29_Y27_N8
\inst|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~8_combout\ = (\inst|BP\(4) & (\inst|Add4~7\ $ (GND))) # (!\inst|BP\(4) & ((GND) # (!\inst|Add4~7\)))
-- \inst|Add4~9\ = CARRY((!\inst|Add4~7\) # (!\inst|BP\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BP\(4),
	datad => VCC,
	cin => \inst|Add4~7\,
	combout => \inst|Add4~8_combout\,
	cout => \inst|Add4~9\);

-- Location: LCCOMB_X30_Y27_N30
\inst|BP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BP~0_combout\ = (!\inst|Add4~8_combout\ & !\inst|Equal8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~8_combout\,
	datad => \inst|Equal8~10_combout\,
	combout => \inst|BP~0_combout\);

-- Location: FF_X30_Y27_N31
\inst|BP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|BP~0_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(4));

-- Location: LCCOMB_X29_Y27_N10
\inst|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~10_combout\ = (\inst|BP\(5) & (\inst|Add4~9\ & VCC)) # (!\inst|BP\(5) & (!\inst|Add4~9\))
-- \inst|Add4~11\ = CARRY((!\inst|BP\(5) & !\inst|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BP\(5),
	datad => VCC,
	cin => \inst|Add4~9\,
	combout => \inst|Add4~10_combout\,
	cout => \inst|Add4~11\);

-- Location: FF_X29_Y27_N11
\inst|BP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~10_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(5));

-- Location: LCCOMB_X29_Y27_N12
\inst|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~12_combout\ = (\inst|BP\(6) & ((GND) # (!\inst|Add4~11\))) # (!\inst|BP\(6) & (\inst|Add4~11\ $ (GND)))
-- \inst|Add4~13\ = CARRY((\inst|BP\(6)) # (!\inst|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BP\(6),
	datad => VCC,
	cin => \inst|Add4~11\,
	combout => \inst|Add4~12_combout\,
	cout => \inst|Add4~13\);

-- Location: FF_X29_Y27_N13
\inst|BP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~12_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(6));

-- Location: LCCOMB_X29_Y27_N14
\inst|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~14_combout\ = (\inst|BP\(7) & (\inst|Add4~13\ & VCC)) # (!\inst|BP\(7) & (!\inst|Add4~13\))
-- \inst|Add4~15\ = CARRY((!\inst|BP\(7) & !\inst|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(7),
	datad => VCC,
	cin => \inst|Add4~13\,
	combout => \inst|Add4~14_combout\,
	cout => \inst|Add4~15\);

-- Location: FF_X29_Y27_N15
\inst|BP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~14_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(7));

-- Location: LCCOMB_X29_Y27_N16
\inst|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~16_combout\ = (\inst|BP\(8) & ((GND) # (!\inst|Add4~15\))) # (!\inst|BP\(8) & (\inst|Add4~15\ $ (GND)))
-- \inst|Add4~17\ = CARRY((\inst|BP\(8)) # (!\inst|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(8),
	datad => VCC,
	cin => \inst|Add4~15\,
	combout => \inst|Add4~16_combout\,
	cout => \inst|Add4~17\);

-- Location: FF_X29_Y27_N17
\inst|BP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~16_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(8));

-- Location: LCCOMB_X29_Y27_N18
\inst|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~18_combout\ = (\inst|BP\(9) & (\inst|Add4~17\ & VCC)) # (!\inst|BP\(9) & (!\inst|Add4~17\))
-- \inst|Add4~19\ = CARRY((!\inst|BP\(9) & !\inst|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(9),
	datad => VCC,
	cin => \inst|Add4~17\,
	combout => \inst|Add4~18_combout\,
	cout => \inst|Add4~19\);

-- Location: FF_X29_Y27_N21
\inst|BP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~20_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(10));

-- Location: LCCOMB_X29_Y27_N20
\inst|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~20_combout\ = (\inst|BP\(10) & ((GND) # (!\inst|Add4~19\))) # (!\inst|BP\(10) & (\inst|Add4~19\ $ (GND)))
-- \inst|Add4~21\ = CARRY((\inst|BP\(10)) # (!\inst|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(10),
	datad => VCC,
	cin => \inst|Add4~19\,
	combout => \inst|Add4~20_combout\,
	cout => \inst|Add4~21\);

-- Location: FF_X29_Y27_N23
\inst|BP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~22_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(11));

-- Location: LCCOMB_X29_Y27_N22
\inst|Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~22_combout\ = (\inst|BP\(11) & (\inst|Add4~21\ & VCC)) # (!\inst|BP\(11) & (!\inst|Add4~21\))
-- \inst|Add4~23\ = CARRY((!\inst|BP\(11) & !\inst|Add4~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BP\(11),
	datad => VCC,
	cin => \inst|Add4~21\,
	combout => \inst|Add4~22_combout\,
	cout => \inst|Add4~23\);

-- Location: LCCOMB_X30_Y27_N22
\inst|Equal8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~2_combout\ = (!\inst|Add4~18_combout\ & (!\inst|Add4~20_combout\ & (!\inst|Add4~16_combout\ & !\inst|Add4~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~18_combout\,
	datab => \inst|Add4~20_combout\,
	datac => \inst|Add4~16_combout\,
	datad => \inst|Add4~22_combout\,
	combout => \inst|Equal8~2_combout\);

-- Location: FF_X29_Y27_N29
\inst|BP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~28_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(14));

-- Location: LCCOMB_X29_Y27_N24
\inst|Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~24_combout\ = (\inst|BP\(12) & ((GND) # (!\inst|Add4~23\))) # (!\inst|BP\(12) & (\inst|Add4~23\ $ (GND)))
-- \inst|Add4~25\ = CARRY((\inst|BP\(12)) # (!\inst|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(12),
	datad => VCC,
	cin => \inst|Add4~23\,
	combout => \inst|Add4~24_combout\,
	cout => \inst|Add4~25\);

-- Location: FF_X29_Y27_N25
\inst|BP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~24_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(12));

-- Location: LCCOMB_X29_Y27_N26
\inst|Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~26_combout\ = (\inst|BP\(13) & (\inst|Add4~25\ & VCC)) # (!\inst|BP\(13) & (!\inst|Add4~25\))
-- \inst|Add4~27\ = CARRY((!\inst|BP\(13) & !\inst|Add4~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BP\(13),
	datad => VCC,
	cin => \inst|Add4~25\,
	combout => \inst|Add4~26_combout\,
	cout => \inst|Add4~27\);

-- Location: FF_X29_Y27_N27
\inst|BP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~26_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(13));

-- Location: LCCOMB_X29_Y27_N28
\inst|Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~28_combout\ = (\inst|BP\(14) & ((GND) # (!\inst|Add4~27\))) # (!\inst|BP\(14) & (\inst|Add4~27\ $ (GND)))
-- \inst|Add4~29\ = CARRY((\inst|BP\(14)) # (!\inst|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(14),
	datad => VCC,
	cin => \inst|Add4~27\,
	combout => \inst|Add4~28_combout\,
	cout => \inst|Add4~29\);

-- Location: FF_X29_Y27_N31
\inst|BP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~30_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(15));

-- Location: LCCOMB_X29_Y27_N30
\inst|Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~30_combout\ = (\inst|BP\(15) & (\inst|Add4~29\ & VCC)) # (!\inst|BP\(15) & (!\inst|Add4~29\))
-- \inst|Add4~31\ = CARRY((!\inst|BP\(15) & !\inst|Add4~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BP\(15),
	datad => VCC,
	cin => \inst|Add4~29\,
	combout => \inst|Add4~30_combout\,
	cout => \inst|Add4~31\);

-- Location: LCCOMB_X30_Y27_N0
\inst|Equal8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~3_combout\ = (!\inst|Add4~26_combout\ & !\inst|Add4~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add4~26_combout\,
	datad => \inst|Add4~24_combout\,
	combout => \inst|Equal8~3_combout\);

-- Location: LCCOMB_X30_Y27_N26
\inst|Equal8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~4_combout\ = (\inst|Equal8~2_combout\ & (!\inst|Add4~28_combout\ & (!\inst|Add4~30_combout\ & \inst|Equal8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~2_combout\,
	datab => \inst|Add4~28_combout\,
	datac => \inst|Add4~30_combout\,
	datad => \inst|Equal8~3_combout\,
	combout => \inst|Equal8~4_combout\);

-- Location: LCCOMB_X30_Y27_N16
\inst|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~1_combout\ = (!\inst|Add4~10_combout\ & (!\inst|Add4~14_combout\ & (!\inst|Add4~12_combout\ & !\inst|Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~10_combout\,
	datab => \inst|Add4~14_combout\,
	datac => \inst|Add4~12_combout\,
	datad => \inst|Add4~8_combout\,
	combout => \inst|Equal8~1_combout\);

-- Location: LCCOMB_X30_Y27_N8
\inst|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~0_combout\ = (!\inst|Add4~0_combout\ & (!\inst|Add4~6_combout\ & (!\inst|Add4~4_combout\ & !\inst|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~0_combout\,
	datab => \inst|Add4~6_combout\,
	datac => \inst|Add4~4_combout\,
	datad => \inst|Add4~2_combout\,
	combout => \inst|Equal8~0_combout\);

-- Location: FF_X29_Y26_N1
\inst|BP[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~32_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(16));

-- Location: LCCOMB_X29_Y26_N0
\inst|Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~32_combout\ = (\inst|BP\(16) & ((GND) # (!\inst|Add4~31\))) # (!\inst|BP\(16) & (\inst|Add4~31\ $ (GND)))
-- \inst|Add4~33\ = CARRY((\inst|BP\(16)) # (!\inst|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(16),
	datad => VCC,
	cin => \inst|Add4~31\,
	combout => \inst|Add4~32_combout\,
	cout => \inst|Add4~33\);

-- Location: FF_X29_Y26_N7
\inst|BP[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~38_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(19));

-- Location: LCCOMB_X29_Y26_N2
\inst|Add4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~34_combout\ = (\inst|BP\(17) & (\inst|Add4~33\ & VCC)) # (!\inst|BP\(17) & (!\inst|Add4~33\))
-- \inst|Add4~35\ = CARRY((!\inst|BP\(17) & !\inst|Add4~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(17),
	datad => VCC,
	cin => \inst|Add4~33\,
	combout => \inst|Add4~34_combout\,
	cout => \inst|Add4~35\);

-- Location: FF_X29_Y26_N3
\inst|BP[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~34_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(17));

-- Location: LCCOMB_X29_Y26_N4
\inst|Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~36_combout\ = (\inst|BP\(18) & ((GND) # (!\inst|Add4~35\))) # (!\inst|BP\(18) & (\inst|Add4~35\ $ (GND)))
-- \inst|Add4~37\ = CARRY((\inst|BP\(18)) # (!\inst|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(18),
	datad => VCC,
	cin => \inst|Add4~35\,
	combout => \inst|Add4~36_combout\,
	cout => \inst|Add4~37\);

-- Location: FF_X29_Y26_N5
\inst|BP[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~36_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(18));

-- Location: LCCOMB_X29_Y26_N6
\inst|Add4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~38_combout\ = (\inst|BP\(19) & (\inst|Add4~37\ & VCC)) # (!\inst|BP\(19) & (!\inst|Add4~37\))
-- \inst|Add4~39\ = CARRY((!\inst|BP\(19) & !\inst|Add4~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BP\(19),
	datad => VCC,
	cin => \inst|Add4~37\,
	combout => \inst|Add4~38_combout\,
	cout => \inst|Add4~39\);

-- Location: LCCOMB_X30_Y26_N12
\inst|Equal8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~5_combout\ = (!\inst|Add4~32_combout\ & (!\inst|Add4~38_combout\ & (!\inst|Add4~36_combout\ & !\inst|Add4~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~32_combout\,
	datab => \inst|Add4~38_combout\,
	datac => \inst|Add4~36_combout\,
	datad => \inst|Add4~34_combout\,
	combout => \inst|Equal8~5_combout\);

-- Location: FF_X29_Y26_N13
\inst|BP[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~44_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(22));

-- Location: LCCOMB_X29_Y26_N8
\inst|Add4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~40_combout\ = (\inst|BP\(20) & ((GND) # (!\inst|Add4~39\))) # (!\inst|BP\(20) & (\inst|Add4~39\ $ (GND)))
-- \inst|Add4~41\ = CARRY((\inst|BP\(20)) # (!\inst|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(20),
	datad => VCC,
	cin => \inst|Add4~39\,
	combout => \inst|Add4~40_combout\,
	cout => \inst|Add4~41\);

-- Location: FF_X29_Y26_N9
\inst|BP[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~40_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(20));

-- Location: LCCOMB_X29_Y26_N10
\inst|Add4~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~42_combout\ = (\inst|BP\(21) & (\inst|Add4~41\ & VCC)) # (!\inst|BP\(21) & (!\inst|Add4~41\))
-- \inst|Add4~43\ = CARRY((!\inst|BP\(21) & !\inst|Add4~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BP\(21),
	datad => VCC,
	cin => \inst|Add4~41\,
	combout => \inst|Add4~42_combout\,
	cout => \inst|Add4~43\);

-- Location: FF_X29_Y26_N11
\inst|BP[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~42_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(21));

-- Location: LCCOMB_X29_Y26_N12
\inst|Add4~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~44_combout\ = (\inst|BP\(22) & ((GND) # (!\inst|Add4~43\))) # (!\inst|BP\(22) & (\inst|Add4~43\ $ (GND)))
-- \inst|Add4~45\ = CARRY((\inst|BP\(22)) # (!\inst|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BP\(22),
	datad => VCC,
	cin => \inst|Add4~43\,
	combout => \inst|Add4~44_combout\,
	cout => \inst|Add4~45\);

-- Location: FF_X29_Y26_N15
\inst|BP[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~46_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(23));

-- Location: LCCOMB_X29_Y26_N14
\inst|Add4~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~46_combout\ = (\inst|BP\(23) & (\inst|Add4~45\ & VCC)) # (!\inst|BP\(23) & (!\inst|Add4~45\))
-- \inst|Add4~47\ = CARRY((!\inst|BP\(23) & !\inst|Add4~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(23),
	datad => VCC,
	cin => \inst|Add4~45\,
	combout => \inst|Add4~46_combout\,
	cout => \inst|Add4~47\);

-- Location: LCCOMB_X30_Y26_N18
\inst|Equal8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~6_combout\ = (!\inst|Add4~44_combout\ & (!\inst|Add4~40_combout\ & (!\inst|Add4~42_combout\ & !\inst|Add4~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~44_combout\,
	datab => \inst|Add4~40_combout\,
	datac => \inst|Add4~42_combout\,
	datad => \inst|Add4~46_combout\,
	combout => \inst|Equal8~6_combout\);

-- Location: FF_X29_Y26_N17
\inst|BP[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~48_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(24));

-- Location: LCCOMB_X29_Y26_N16
\inst|Add4~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~48_combout\ = (\inst|BP\(24) & ((GND) # (!\inst|Add4~47\))) # (!\inst|BP\(24) & (\inst|Add4~47\ $ (GND)))
-- \inst|Add4~49\ = CARRY((\inst|BP\(24)) # (!\inst|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(24),
	datad => VCC,
	cin => \inst|Add4~47\,
	combout => \inst|Add4~48_combout\,
	cout => \inst|Add4~49\);

-- Location: FF_X29_Y26_N19
\inst|BP[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~50_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(25));

-- Location: LCCOMB_X29_Y26_N18
\inst|Add4~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~50_combout\ = (\inst|BP\(25) & (\inst|Add4~49\ & VCC)) # (!\inst|BP\(25) & (!\inst|Add4~49\))
-- \inst|Add4~51\ = CARRY((!\inst|BP\(25) & !\inst|Add4~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(25),
	datad => VCC,
	cin => \inst|Add4~49\,
	combout => \inst|Add4~50_combout\,
	cout => \inst|Add4~51\);

-- Location: FF_X29_Y26_N21
\inst|BP[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~52_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(26));

-- Location: LCCOMB_X29_Y26_N20
\inst|Add4~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~52_combout\ = (\inst|BP\(26) & ((GND) # (!\inst|Add4~51\))) # (!\inst|BP\(26) & (\inst|Add4~51\ $ (GND)))
-- \inst|Add4~53\ = CARRY((\inst|BP\(26)) # (!\inst|Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(26),
	datad => VCC,
	cin => \inst|Add4~51\,
	combout => \inst|Add4~52_combout\,
	cout => \inst|Add4~53\);

-- Location: FF_X29_Y26_N23
\inst|BP[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~54_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(27));

-- Location: LCCOMB_X29_Y26_N22
\inst|Add4~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~54_combout\ = (\inst|BP\(27) & (\inst|Add4~53\ & VCC)) # (!\inst|BP\(27) & (!\inst|Add4~53\))
-- \inst|Add4~55\ = CARRY((!\inst|BP\(27) & !\inst|Add4~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BP\(27),
	datad => VCC,
	cin => \inst|Add4~53\,
	combout => \inst|Add4~54_combout\,
	cout => \inst|Add4~55\);

-- Location: LCCOMB_X30_Y26_N8
\inst|Equal8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~7_combout\ = (!\inst|Add4~48_combout\ & (!\inst|Add4~50_combout\ & (!\inst|Add4~52_combout\ & !\inst|Add4~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~48_combout\,
	datab => \inst|Add4~50_combout\,
	datac => \inst|Add4~52_combout\,
	datad => \inst|Add4~54_combout\,
	combout => \inst|Equal8~7_combout\);

-- Location: FF_X29_Y26_N27
\inst|BP[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~58_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(29));

-- Location: LCCOMB_X29_Y26_N24
\inst|Add4~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~56_combout\ = (\inst|BP\(28) & ((GND) # (!\inst|Add4~55\))) # (!\inst|BP\(28) & (\inst|Add4~55\ $ (GND)))
-- \inst|Add4~57\ = CARRY((\inst|BP\(28)) # (!\inst|Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(28),
	datad => VCC,
	cin => \inst|Add4~55\,
	combout => \inst|Add4~56_combout\,
	cout => \inst|Add4~57\);

-- Location: FF_X29_Y26_N25
\inst|BP[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~56_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(28));

-- Location: LCCOMB_X29_Y26_N26
\inst|Add4~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~58_combout\ = (\inst|BP\(29) & (\inst|Add4~57\ & VCC)) # (!\inst|BP\(29) & (!\inst|Add4~57\))
-- \inst|Add4~59\ = CARRY((!\inst|BP\(29) & !\inst|Add4~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BP\(29),
	datad => VCC,
	cin => \inst|Add4~57\,
	combout => \inst|Add4~58_combout\,
	cout => \inst|Add4~59\);

-- Location: FF_X29_Y26_N29
\inst|BP[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~60_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(30));

-- Location: LCCOMB_X29_Y26_N28
\inst|Add4~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~60_combout\ = (\inst|BP\(30) & ((GND) # (!\inst|Add4~59\))) # (!\inst|BP\(30) & (\inst|Add4~59\ $ (GND)))
-- \inst|Add4~61\ = CARRY((\inst|BP\(30)) # (!\inst|Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BP\(30),
	datad => VCC,
	cin => \inst|Add4~59\,
	combout => \inst|Add4~60_combout\,
	cout => \inst|Add4~61\);

-- Location: FF_X29_Y26_N31
\inst|BP[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Add4~62_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP\(31));

-- Location: LCCOMB_X29_Y26_N30
\inst|Add4~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~62_combout\ = \inst|BP\(31) $ (!\inst|Add4~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BP\(31),
	cin => \inst|Add4~61\,
	combout => \inst|Add4~62_combout\);

-- Location: LCCOMB_X30_Y26_N10
\inst|Equal8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~8_combout\ = (!\inst|Add4~58_combout\ & (!\inst|Add4~56_combout\ & (!\inst|Add4~60_combout\ & !\inst|Add4~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~58_combout\,
	datab => \inst|Add4~56_combout\,
	datac => \inst|Add4~60_combout\,
	datad => \inst|Add4~62_combout\,
	combout => \inst|Equal8~8_combout\);

-- Location: LCCOMB_X30_Y26_N0
\inst|Equal8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~9_combout\ = (\inst|Equal8~5_combout\ & (\inst|Equal8~6_combout\ & (\inst|Equal8~7_combout\ & \inst|Equal8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~5_combout\,
	datab => \inst|Equal8~6_combout\,
	datac => \inst|Equal8~7_combout\,
	datad => \inst|Equal8~8_combout\,
	combout => \inst|Equal8~9_combout\);

-- Location: LCCOMB_X30_Y27_N24
\inst|Equal8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~10_combout\ = (\inst|Equal8~4_combout\ & (\inst|Equal8~1_combout\ & (\inst|Equal8~0_combout\ & \inst|Equal8~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~4_combout\,
	datab => \inst|Equal8~1_combout\,
	datac => \inst|Equal8~0_combout\,
	datad => \inst|Equal8~9_combout\,
	combout => \inst|Equal8~10_combout\);

-- Location: LCCOMB_X30_Y27_N14
\inst|DTS[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DTS[6]~2_combout\ = (!\inst|done~combout\ & (\inst|rtc~q\ & (!\inst|wt~q\ & \inst|Equal8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|done~combout\,
	datab => \inst|rtc~q\,
	datac => \inst|wt~q\,
	datad => \inst|Equal8~10_combout\,
	combout => \inst|DTS[6]~2_combout\);

-- Location: FF_X30_Y27_N19
\inst|DTS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|DTS[1]~feeder_combout\,
	ena => \inst|DTS[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DTS\(1));

-- Location: LCCOMB_X30_Y25_N8
\inst3|Equal18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal18~0_combout\ = (!\inst3|x~0_combout\ & (\inst3|x~1_combout\ & \inst3|Equal17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|x~0_combout\,
	datac => \inst3|x~1_combout\,
	datad => \inst3|Equal17~0_combout\,
	combout => \inst3|Equal18~0_combout\);

-- Location: LCCOMB_X31_Y25_N6
\inst3|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~0_combout\ = (!\inst3|x~29_combout\ & (\inst3|x~1_combout\ & \inst3|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~29_combout\,
	datac => \inst3|x~1_combout\,
	datad => \inst3|Equal1~10_combout\,
	combout => \inst3|Equal2~0_combout\);

-- Location: LCCOMB_X31_Y25_N26
\inst3|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal8~0_combout\ = (\inst3|x~0_combout\ & (\inst3|x~30_combout\ & \inst3|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~0_combout\,
	datac => \inst3|x~30_combout\,
	datad => \inst3|Equal2~0_combout\,
	combout => \inst3|Equal8~0_combout\);

-- Location: LCCOMB_X31_Y25_N8
\inst3|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal14~0_combout\ = (\inst3|x~29_combout\ & (\inst3|x~1_combout\ & \inst3|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~29_combout\,
	datac => \inst3|x~1_combout\,
	datad => \inst3|Equal1~10_combout\,
	combout => \inst3|Equal14~0_combout\);

-- Location: LCCOMB_X31_Y25_N2
\inst3|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr2~0_combout\ = ((\inst3|x~0_combout\ & (!\inst3|Equal14~0_combout\)) # (!\inst3|x~0_combout\ & ((!\inst3|Equal2~0_combout\)))) # (!\inst3|x~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~0_combout\,
	datab => \inst3|x~30_combout\,
	datac => \inst3|Equal14~0_combout\,
	datad => \inst3|Equal2~0_combout\,
	combout => \inst3|WideOr2~0_combout\);

-- Location: LCCOMB_X31_Y25_N30
\inst3|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr2~1_combout\ = (!\inst3|Equal18~0_combout\ & (!\inst3|Equal8~0_combout\ & \inst3|WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal18~0_combout\,
	datac => \inst3|Equal8~0_combout\,
	datad => \inst3|WideOr2~0_combout\,
	combout => \inst3|WideOr2~1_combout\);

-- Location: LCCOMB_X30_Y25_N12
\inst3|Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal20~0_combout\ = (\inst3|x~0_combout\ & (\inst3|x~1_combout\ & \inst3|Equal17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|x~0_combout\,
	datac => \inst3|x~1_combout\,
	datad => \inst3|Equal17~0_combout\,
	combout => \inst3|Equal20~0_combout\);

-- Location: LCCOMB_X30_Y25_N30
\inst3|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~1_combout\ = (!\inst3|x~29_combout\ & (\inst3|x~1_combout\ & (!\inst3|x~30_combout\ & \inst3|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~29_combout\,
	datab => \inst3|x~1_combout\,
	datac => \inst3|x~30_combout\,
	datad => \inst3|Equal1~10_combout\,
	combout => \inst3|Equal2~1_combout\);

-- Location: LCCOMB_X30_Y25_N6
\inst3|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr6~0_combout\ = (\inst3|Equal20~0_combout\) # (((\inst3|x~0_combout\ & \inst3|Equal2~1_combout\)) # (!\inst3|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal20~0_combout\,
	datab => \inst3|x~0_combout\,
	datac => \inst3|Equal2~1_combout\,
	datad => \inst3|WideOr0~0_combout\,
	combout => \inst3|WideOr6~0_combout\);

-- Location: LCCOMB_X31_Y25_N4
\inst3|Equal14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal14~1_combout\ = (!\inst3|x~0_combout\ & (\inst3|Equal14~0_combout\ & \inst3|x~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~0_combout\,
	datac => \inst3|Equal14~0_combout\,
	datad => \inst3|x~30_combout\,
	combout => \inst3|Equal14~1_combout\);

-- Location: LCCOMB_X32_Y25_N10
\inst3|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal9~0_combout\ = (!\inst3|x~30_combout\ & (\inst3|Equal1~11_combout\ & (\inst3|x~29_combout\ & \inst3|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~30_combout\,
	datab => \inst3|Equal1~11_combout\,
	datac => \inst3|x~29_combout\,
	datad => \inst3|Equal1~10_combout\,
	combout => \inst3|Equal9~0_combout\);

-- Location: LCCOMB_X31_Y25_N12
\inst3|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr1~2_combout\ = (!\inst3|Equal9~0_combout\ & \inst3|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Equal9~0_combout\,
	datad => \inst3|WideOr2~0_combout\,
	combout => \inst3|WideOr1~2_combout\);

-- Location: LCCOMB_X31_Y25_N22
\inst3|WideNor0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideNor0~7_combout\ = (!\inst3|Equal20~0_combout\ & (!\inst3|Equal13~0_combout\ & (!\inst3|Equal14~1_combout\ & \inst3|WideOr1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal20~0_combout\,
	datab => \inst3|Equal13~0_combout\,
	datac => \inst3|Equal14~1_combout\,
	datad => \inst3|WideOr1~2_combout\,
	combout => \inst3|WideNor0~7_combout\);

-- Location: LCCOMB_X30_Y25_N2
\inst3|Equal19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal19~1_combout\ = (\inst3|Equal19~0_combout\ & \inst3|Equal17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal19~0_combout\,
	datad => \inst3|Equal17~0_combout\,
	combout => \inst3|Equal19~1_combout\);

-- Location: LCCOMB_X30_Y25_N4
\inst3|WideNor0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideNor0~8_combout\ = (!\inst3|Equal11~0_combout\ & !\inst3|Equal1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Equal11~0_combout\,
	datad => \inst3|Equal1~12_combout\,
	combout => \inst3|WideNor0~8_combout\);

-- Location: LCCOMB_X30_Y25_N16
\inst3|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal10~0_combout\ = (\inst3|x~29_combout\ & (\inst3|x~1_combout\ & (!\inst3|x~30_combout\ & \inst3|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~29_combout\,
	datab => \inst3|x~1_combout\,
	datac => \inst3|x~30_combout\,
	datad => \inst3|Equal1~10_combout\,
	combout => \inst3|Equal10~0_combout\);

-- Location: LCCOMB_X30_Y25_N24
\inst3|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~0_combout\ = (!\inst3|x~29_combout\ & (\inst3|Equal19~0_combout\ & (!\inst3|x~30_combout\ & \inst3|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~29_combout\,
	datab => \inst3|Equal19~0_combout\,
	datac => \inst3|x~30_combout\,
	datad => \inst3|Equal1~10_combout\,
	combout => \inst3|Equal3~0_combout\);

-- Location: LCCOMB_X30_Y25_N26
\inst3|WideNor0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideNor0~6_combout\ = (!\inst3|Equal2~1_combout\ & (!\inst3|Equal3~0_combout\ & ((!\inst3|Equal10~0_combout\) # (!\inst3|x~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~0_combout\,
	datab => \inst3|Equal10~0_combout\,
	datac => \inst3|Equal2~1_combout\,
	datad => \inst3|Equal3~0_combout\,
	combout => \inst3|WideNor0~6_combout\);

-- Location: LCCOMB_X32_Y25_N14
\inst3|WideNor0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideNor0~4_combout\ = (\inst3|x~30_combout\ & ((\inst3|Equal19~0_combout\) # ((!\inst3|x~29_combout\ & \inst3|Equal1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal19~0_combout\,
	datab => \inst3|x~29_combout\,
	datac => \inst3|x~30_combout\,
	datad => \inst3|Equal1~11_combout\,
	combout => \inst3|WideNor0~4_combout\);

-- Location: LCCOMB_X31_Y25_N14
\inst3|WideNor0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideNor0~10_combout\ = (\inst3|x~0_combout\ & (\inst3|x~30_combout\ & ((\inst3|Equal2~0_combout\)))) # (!\inst3|x~0_combout\ & (((\inst3|Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|x~0_combout\,
	datab => \inst3|x~30_combout\,
	datac => \inst3|Equal10~0_combout\,
	datad => \inst3|Equal2~0_combout\,
	combout => \inst3|WideNor0~10_combout\);

-- Location: LCCOMB_X32_Y25_N26
\inst3|WideNor0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideNor0~11_combout\ = (\inst3|Equal17~0_combout\ & ((\inst3|Equal1~11_combout\) # ((!\inst3|x~0_combout\ & \inst3|x~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~11_combout\,
	datab => \inst3|x~0_combout\,
	datac => \inst3|x~1_combout\,
	datad => \inst3|Equal17~0_combout\,
	combout => \inst3|WideNor0~11_combout\);

-- Location: LCCOMB_X31_Y25_N16
\inst3|WideNor0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideNor0~5_combout\ = (!\inst3|WideNor0~10_combout\ & (!\inst3|WideNor0~11_combout\ & ((!\inst3|WideNor0~4_combout\) # (!\inst3|Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~10_combout\,
	datab => \inst3|WideNor0~4_combout\,
	datac => \inst3|WideNor0~10_combout\,
	datad => \inst3|WideNor0~11_combout\,
	combout => \inst3|WideNor0~5_combout\);

-- Location: LCCOMB_X31_Y25_N20
\inst3|WideNor0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideNor0~9_combout\ = (\inst3|Equal19~1_combout\) # (((!\inst3|WideNor0~5_combout\) # (!\inst3|WideNor0~6_combout\)) # (!\inst3|WideNor0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal19~1_combout\,
	datab => \inst3|WideNor0~8_combout\,
	datac => \inst3|WideNor0~6_combout\,
	datad => \inst3|WideNor0~5_combout\,
	combout => \inst3|WideNor0~9_combout\);

-- Location: LCCOMB_X31_Y25_N18
\inst3|WideOr6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr6~combout\ = ((\inst3|WideOr6~0_combout\) # ((\inst3|WideNor0~7_combout\ & !\inst3|WideNor0~9_combout\))) # (!\inst3|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr2~1_combout\,
	datab => \inst3|WideOr6~0_combout\,
	datac => \inst3|WideNor0~7_combout\,
	datad => \inst3|WideNor0~9_combout\,
	combout => \inst3|WideOr6~combout\);

-- Location: FF_X31_Y25_N19
\inst3|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|WideOr6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(0));

-- Location: FF_X30_Y27_N21
\inst|DTS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst3|data\(0),
	sload => VCC,
	ena => \inst|DTS[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DTS\(0));

-- Location: LCCOMB_X30_Y27_N20
\inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~2_combout\ = (\inst|Add4~0_combout\ & ((\inst|DTS\(1)) # ((\inst|Add4~2_combout\)))) # (!\inst|Add4~0_combout\ & (((\inst|DTS\(0) & !\inst|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~0_combout\,
	datab => \inst|DTS\(1),
	datac => \inst|DTS\(0),
	datad => \inst|Add4~2_combout\,
	combout => \inst|Mux0~2_combout\);

-- Location: LCCOMB_X31_Y25_N24
\inst3|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr3~0_combout\ = (!\inst3|WideNor0~9_combout\) # (!\inst3|WideNor0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|WideNor0~7_combout\,
	datad => \inst3|WideNor0~9_combout\,
	combout => \inst3|WideOr3~0_combout\);

-- Location: FF_X31_Y25_N25
\inst3|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(2));

-- Location: FF_X30_Y27_N13
\inst|DTS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst3|data\(2),
	sload => VCC,
	ena => \inst|DTS[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DTS\(2));

-- Location: LCCOMB_X31_Y25_N28
\inst3|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr3~combout\ = (\inst3|Equal19~1_combout\) # ((\inst3|Equal3~0_combout\) # ((!\inst3|WideNor0~9_combout\) # (!\inst3|WideNor0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal19~1_combout\,
	datab => \inst3|Equal3~0_combout\,
	datac => \inst3|WideNor0~7_combout\,
	datad => \inst3|WideNor0~9_combout\,
	combout => \inst3|WideOr3~combout\);

-- Location: FF_X31_Y25_N29
\inst3|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(3));

-- Location: LCCOMB_X30_Y27_N10
\inst|DTS[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DTS[3]~feeder_combout\ = \inst3|data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|data\(3),
	combout => \inst|DTS[3]~feeder_combout\);

-- Location: FF_X30_Y27_N11
\inst|DTS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|DTS[3]~feeder_combout\,
	ena => \inst|DTS[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DTS\(3));

-- Location: LCCOMB_X30_Y27_N12
\inst|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~3_combout\ = (\inst|Add4~2_combout\ & ((\inst|Mux0~2_combout\ & ((\inst|DTS\(3)))) # (!\inst|Mux0~2_combout\ & (\inst|DTS\(2))))) # (!\inst|Add4~2_combout\ & (\inst|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~2_combout\,
	datab => \inst|Mux0~2_combout\,
	datac => \inst|DTS\(2),
	datad => \inst|DTS\(3),
	combout => \inst|Mux0~3_combout\);

-- Location: LCCOMB_X31_Y25_N10
\inst3|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr2~combout\ = ((\inst3|x~0_combout\ & (\inst3|Equal10~0_combout\)) # (!\inst3|x~0_combout\ & ((\inst3|Equal2~1_combout\)))) # (!\inst3|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal10~0_combout\,
	datab => \inst3|Equal2~1_combout\,
	datac => \inst3|WideOr2~1_combout\,
	datad => \inst3|x~0_combout\,
	combout => \inst3|WideOr2~combout\);

-- Location: FF_X31_Y25_N11
\inst3|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|WideOr2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(4));

-- Location: FF_X30_Y27_N29
\inst|DTS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst3|data\(4),
	sload => VCC,
	ena => \inst|DTS[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DTS\(4));

-- Location: LCCOMB_X31_Y25_N0
\inst3|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr1~combout\ = (\inst3|Equal9~0_combout\) # ((!\inst3|WideNor0~5_combout\) # (!\inst3|WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal9~0_combout\,
	datac => \inst3|WideOr2~0_combout\,
	datad => \inst3|WideNor0~5_combout\,
	combout => \inst3|WideOr1~combout\);

-- Location: FF_X31_Y25_N1
\inst3|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(5));

-- Location: LCCOMB_X30_Y27_N2
\inst|DTS[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DTS[5]~feeder_combout\ = \inst3|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|data\(5),
	combout => \inst|DTS[5]~feeder_combout\);

-- Location: FF_X30_Y27_N3
\inst|DTS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|DTS[5]~feeder_combout\,
	ena => \inst|DTS[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DTS\(5));

-- Location: LCCOMB_X30_Y27_N28
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|Add4~0_combout\ & ((\inst|DTS\(5)))) # (!\inst|Add4~0_combout\ & (\inst|DTS\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~0_combout\,
	datac => \inst|DTS\(4),
	datad => \inst|DTS\(5),
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y25_N0
\inst3|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|WideOr0~1_combout\ = ((\inst3|Equal14~1_combout\) # (!\inst3|WideOr0~0_combout\)) # (!\inst3|WideNor0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideNor0~6_combout\,
	datac => \inst3|Equal14~1_combout\,
	datad => \inst3|WideOr0~0_combout\,
	combout => \inst3|WideOr0~1_combout\);

-- Location: FF_X30_Y25_N1
\inst3|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|CLK_OUT~clkctrl_outclk\,
	d => \inst3|WideOr0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(6));

-- Location: FF_X30_Y27_N7
\inst|DTS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	asdata => \inst3|data\(6),
	sload => VCC,
	ena => \inst|DTS[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DTS\(6));

-- Location: LCCOMB_X30_Y27_N6
\inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = (\inst|Add4~2_combout\ & (!\inst|Add4~0_combout\ & ((\inst|DTS\(6))))) # (!\inst|Add4~2_combout\ & (((\inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~0_combout\,
	datab => \inst|Mux0~0_combout\,
	datac => \inst|DTS\(6),
	datad => \inst|Add4~2_combout\,
	combout => \inst|Mux0~1_combout\);

-- Location: LCCOMB_X30_Y27_N4
\inst|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~4_combout\ = (!\inst|Add4~6_combout\ & ((\inst|Add4~4_combout\ & ((\inst|Mux0~1_combout\))) # (!\inst|Add4~4_combout\ & (\inst|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~3_combout\,
	datab => \inst|Add4~6_combout\,
	datac => \inst|Add4~4_combout\,
	datad => \inst|Mux0~1_combout\,
	combout => \inst|Mux0~4_combout\);

-- Location: FF_X30_Y27_N5
\inst|MOSI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_CLK_OUT~clkctrl_outclk\,
	d => \inst|Mux0~4_combout\,
	ena => \inst|MOSI~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MOSI~q\);

ww_LED0 <= \LED0~output_o\;

ww_LED1 <= \LED1~output_o\;

ww_LED2 <= \LED2~output_o\;

ww_LED3 <= \LED3~output_o\;

ww_LED4 <= \LED4~output_o\;

ww_LED5 <= \LED5~output_o\;

ww_LED6 <= \LED6~output_o\;

ww_LED7 <= \LED7~output_o\;

ww_CS <= \CS~output_o\;

ww_MSTR_CLK <= \MSTR_CLK~output_o\;

ww_MOSI <= \MOSI~output_o\;
END structure;


