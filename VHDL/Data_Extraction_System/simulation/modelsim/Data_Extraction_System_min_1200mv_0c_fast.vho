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

-- DATE "03/08/2019 21:10:51"

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

ENTITY 	FIFObuffer IS
    PORT (
	CLK : IN std_logic;
	storeData : IN std_logic;
	sendData : IN std_logic;
	dataIn : IN std_logic_vector(15 DOWNTO 0);
	dataOut : OUT std_logic_vector(15 DOWNTO 0);
	empty : OUT std_logic
	);
END FIFObuffer;

-- Design Ports Information
-- dataIn[8]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[9]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[10]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[11]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[12]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[13]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[14]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[15]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[2]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[7]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[8]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[9]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[10]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[11]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[12]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[13]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[14]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[15]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- empty	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[6]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- storeData	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sendData	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FIFObuffer IS
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
SIGNAL ww_sendData : std_logic;
SIGNAL ww_dataIn : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dataOut : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_empty : std_logic;
SIGNAL \datArray_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \datArray_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datArray_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataIn[8]~input_o\ : std_logic;
SIGNAL \dataIn[9]~input_o\ : std_logic;
SIGNAL \dataIn[10]~input_o\ : std_logic;
SIGNAL \dataIn[11]~input_o\ : std_logic;
SIGNAL \dataIn[12]~input_o\ : std_logic;
SIGNAL \dataIn[13]~input_o\ : std_logic;
SIGNAL \dataIn[14]~input_o\ : std_logic;
SIGNAL \dataIn[15]~input_o\ : std_logic;
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \dataOut[4]~output_o\ : std_logic;
SIGNAL \dataOut[5]~output_o\ : std_logic;
SIGNAL \dataOut[6]~output_o\ : std_logic;
SIGNAL \dataOut[7]~output_o\ : std_logic;
SIGNAL \dataOut[8]~output_o\ : std_logic;
SIGNAL \dataOut[9]~output_o\ : std_logic;
SIGNAL \dataOut[10]~output_o\ : std_logic;
SIGNAL \dataOut[11]~output_o\ : std_logic;
SIGNAL \dataOut[12]~output_o\ : std_logic;
SIGNAL \dataOut[13]~output_o\ : std_logic;
SIGNAL \dataOut[14]~output_o\ : std_logic;
SIGNAL \dataOut[15]~output_o\ : std_logic;
SIGNAL \empty~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \storeData~input_o\ : std_logic;
SIGNAL \sendData~input_o\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \state~9_combout\ : std_logic;
SIGNAL \state.SEND~q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \OS[0]~feeder_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \OS[2]~feeder_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \OS[3]~feeder_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \FS[0]~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \datArray_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \datArray~21_combout\ : std_logic;
SIGNAL \state~8_combout\ : std_logic;
SIGNAL \state.STORE~q\ : std_logic;
SIGNAL \datArray~22_combout\ : std_logic;
SIGNAL \datArray~23_combout\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \FS[0]~_wirecell_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \datArray_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \datArray~24_combout\ : std_logic;
SIGNAL \datArray_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \datArray~25_combout\ : std_logic;
SIGNAL \datArray_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \datArray~26_combout\ : std_logic;
SIGNAL \datArray_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \datArray~27_combout\ : std_logic;
SIGNAL \datArray_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \datArray~28_combout\ : std_logic;
SIGNAL \datArray_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \datArray~29_combout\ : std_logic;
SIGNAL \datArray_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \datArray~30_combout\ : std_logic;
SIGNAL \datArray_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \datArray~31_combout\ : std_logic;
SIGNAL \datArray_rtl_0_bypass[17]~0_combout\ : std_logic;
SIGNAL \datArray_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \datArray~32_combout\ : std_logic;
SIGNAL \datArray_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \datArray~33_combout\ : std_logic;
SIGNAL \datArray_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \datArray~34_combout\ : std_logic;
SIGNAL \datArray_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \datArray~35_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \empty~0_combout\ : std_logic;
SIGNAL \empty$latch~combout\ : std_logic;
SIGNAL NS : std_logic_vector(3 DOWNTO 0);
SIGNAL datArray_rtl_0_bypass : std_logic_vector(0 TO 20);
SIGNAL FS : std_logic_vector(3 DOWNTO 0);
SIGNAL OS : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_storeData <= storeData;
ww_sendData <= sendData;
ww_dataIn <= dataIn;
dataOut <= ww_dataOut;
empty <= ww_empty;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\datArray_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \Mux0~0_combout\ & \Mux1~0_combout\ & 
\Mux2~0_combout\ & \FS[0]~_wirecell_combout\ & \dataIn[7]~input_o\ & \dataIn[6]~input_o\ & \dataIn[5]~input_o\ & \dataIn[4]~input_o\ & \dataIn[3]~input_o\ & \dataIn[2]~input_o\ & \dataIn[1]~input_o\ & \dataIn[0]~input_o\);

\datArray_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (FS(3) & FS(2) & FS(1) & FS(0));

\datArray_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\Selector25~0_combout\ & \Selector26~0_combout\ & \Selector27~0_combout\ & \Selector28~0_combout\);

\datArray_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\datArray_rtl_0|auto_generated|ram_block1a1\ <= \datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\datArray_rtl_0|auto_generated|ram_block1a2\ <= \datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\datArray_rtl_0|auto_generated|ram_block1a3\ <= \datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\datArray_rtl_0|auto_generated|ram_block1a4\ <= \datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\datArray_rtl_0|auto_generated|ram_block1a5\ <= \datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\datArray_rtl_0|auto_generated|ram_block1a6\ <= \datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\datArray_rtl_0|auto_generated|ram_block1a7\ <= \datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\datArray_rtl_0|auto_generated|ram_block1a8\ <= \datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\datArray_rtl_0|auto_generated|ram_block1a9\ <= \datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\datArray_rtl_0|auto_generated|ram_block1a10\ <= \datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\datArray_rtl_0|auto_generated|ram_block1a11\ <= \datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N23
\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datArray~24_combout\,
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datArray~25_combout\,
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datArray~26_combout\,
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datArray~27_combout\,
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\dataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datArray~28_combout\,
	devoe => ww_devoe,
	o => \dataOut[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\dataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datArray~29_combout\,
	devoe => ww_devoe,
	o => \dataOut[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\dataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datArray~30_combout\,
	devoe => ww_devoe,
	o => \dataOut[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\dataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datArray~31_combout\,
	devoe => ww_devoe,
	o => \dataOut[7]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\dataOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datArray~32_combout\,
	devoe => ww_devoe,
	o => \dataOut[8]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\dataOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datArray~33_combout\,
	devoe => ww_devoe,
	o => \dataOut[9]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\dataOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataOut[10]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\dataOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datArray~34_combout\,
	devoe => ww_devoe,
	o => \dataOut[11]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\dataOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datArray~35_combout\,
	devoe => ww_devoe,
	o => \dataOut[12]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\dataOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataOut[13]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\dataOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataOut[14]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\dataOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataOut[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOIBUF_X5_Y0_N15
\storeData~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_storeData,
	o => \storeData~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\sendData~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sendData,
	o => \sendData~input_o\);

-- Location: LCCOMB_X16_Y8_N26
\state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~10_combout\ = (!\state.IDLE~q\ & ((\storeData~input_o\) # (\sendData~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \storeData~input_o\,
	datac => \state.IDLE~q\,
	datad => \sendData~input_o\,
	combout => \state~10_combout\);

-- Location: FF_X16_Y8_N27
\state.IDLE\ : dffeas
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
	q => \state.IDLE~q\);

-- Location: LCCOMB_X16_Y8_N2
\state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~9_combout\ = (!\storeData~input_o\ & (\sendData~input_o\ & !\state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \storeData~input_o\,
	datab => \sendData~input_o\,
	datad => \state.IDLE~q\,
	combout => \state~9_combout\);

-- Location: FF_X16_Y8_N3
\state.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SEND~q\);

-- Location: LCCOMB_X17_Y8_N30
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (!\state.SEND~q\ & ((FS(0) $ (FS(1))) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => FS(0),
	datac => FS(1),
	datad => \state.SEND~q\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X16_Y8_N8
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = \state.SEND~q\ $ (OS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.SEND~q\,
	datad => OS(0),
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X16_Y8_N10
\OS[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OS[0]~feeder_combout\ = \Selector28~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector28~0_combout\,
	combout => \OS[0]~feeder_combout\);

-- Location: FF_X16_Y8_N11
\OS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \OS[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OS(0));

-- Location: LCCOMB_X16_Y8_N24
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = OS(1) $ (((OS(0) & \state.SEND~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(0),
	datab => \state.SEND~q\,
	datad => OS(1),
	combout => \Selector27~0_combout\);

-- Location: FF_X16_Y8_N23
\OS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \Selector27~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OS(1));

-- Location: LCCOMB_X16_Y8_N12
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (OS(1) & OS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(1),
	datad => OS(0),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X16_Y8_N30
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\state.SEND~q\ & (!\Equal3~1_combout\ & (OS(2) $ (\Equal3~0_combout\)))) # (!\state.SEND~q\ & (((OS(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SEND~q\,
	datab => \Equal3~1_combout\,
	datac => OS(2),
	datad => \Equal3~0_combout\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X16_Y8_N6
\OS[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OS[2]~feeder_combout\ = \Selector26~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector26~0_combout\,
	combout => \OS[2]~feeder_combout\);

-- Location: FF_X16_Y8_N7
\OS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \OS[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OS(2));

-- Location: LCCOMB_X16_Y8_N16
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (OS(3) & (((!\Equal3~0_combout\)) # (!\state.SEND~q\))) # (!OS(3) & (\state.SEND~q\ & (OS(2) & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(3),
	datab => \state.SEND~q\,
	datac => OS(2),
	datad => \Equal3~0_combout\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X16_Y8_N28
\OS[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OS[3]~feeder_combout\ = \Selector25~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector25~0_combout\,
	combout => \OS[3]~feeder_combout\);

-- Location: FF_X16_Y8_N29
\OS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \OS[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OS(3));

-- Location: LCCOMB_X16_Y8_N14
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!OS(2) & (OS(0) & (OS(1) & OS(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(2),
	datab => OS(0),
	datac => OS(1),
	datad => OS(3),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X17_Y8_N14
\FS[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FS[0]~0_combout\ = (\state.IDLE~q\ & ((\Equal3~1_combout\) # (!\state.SEND~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SEND~q\,
	datac => \state.IDLE~q\,
	datad => \Equal3~1_combout\,
	combout => \FS[0]~0_combout\);

-- Location: FF_X17_Y8_N31
\FS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \FS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FS(1));

-- Location: LCCOMB_X16_Y8_N20
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (!\state.SEND~q\ & (FS(2) $ (((FS(0) & FS(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(0),
	datab => \state.SEND~q\,
	datac => FS(2),
	datad => FS(1),
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X17_Y8_N22
\Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (\Selector18~0_combout\ & \Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector18~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \Selector18~1_combout\);

-- Location: FF_X17_Y8_N23
\FS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector18~1_combout\,
	ena => \FS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FS(2));

-- Location: LCCOMB_X17_Y8_N12
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = FS(3) $ (((FS(2) & (FS(0) & FS(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(2),
	datab => FS(0),
	datac => FS(1),
	datad => FS(3),
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X17_Y8_N20
\Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\Selector17~0_combout\ & !\state.SEND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector17~0_combout\,
	datad => \state.SEND~q\,
	combout => \Selector17~1_combout\);

-- Location: FF_X17_Y8_N21
\FS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector17~1_combout\,
	ena => \FS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FS(3));

-- Location: LCCOMB_X17_Y8_N26
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (FS(2)) # (((!FS(3)) # (!FS(1))) # (!FS(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(2),
	datab => FS(0),
	datac => FS(1),
	datad => FS(3),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X17_Y8_N28
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (!\state.SEND~q\ & ((!FS(0)) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datac => FS(0),
	datad => \state.SEND~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X17_Y8_N29
\FS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	ena => \FS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FS(0));

-- Location: FF_X16_Y8_N25
\datArray_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => FS(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(1));

-- Location: FF_X16_Y8_N13
\datArray_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector27~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(4));

-- Location: FF_X15_Y8_N27
\datArray_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector28~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(2));

-- Location: LCCOMB_X15_Y8_N28
\datArray_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray_rtl_0_bypass[3]~feeder_combout\ = FS(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FS(1),
	combout => \datArray_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X15_Y8_N29
\datArray_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(3));

-- Location: LCCOMB_X15_Y8_N26
\datArray~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray~21_combout\ = (datArray_rtl_0_bypass(1) & (datArray_rtl_0_bypass(2) & (datArray_rtl_0_bypass(4) $ (!datArray_rtl_0_bypass(3))))) # (!datArray_rtl_0_bypass(1) & (!datArray_rtl_0_bypass(2) & (datArray_rtl_0_bypass(4) $ 
-- (!datArray_rtl_0_bypass(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => datArray_rtl_0_bypass(1),
	datab => datArray_rtl_0_bypass(4),
	datac => datArray_rtl_0_bypass(2),
	datad => datArray_rtl_0_bypass(3),
	combout => \datArray~21_combout\);

-- Location: LCCOMB_X16_Y8_N0
\state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~8_combout\ = (!\state.IDLE~q\ & \storeData~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IDLE~q\,
	datad => \storeData~input_o\,
	combout => \state~8_combout\);

-- Location: FF_X16_Y8_N1
\state.STORE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STORE~q\);

-- Location: FF_X15_Y8_N21
\datArray_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \state.STORE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(0));

-- Location: FF_X16_Y8_N9
\datArray_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => FS(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(7));

-- Location: FF_X16_Y8_N5
\datArray_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector25~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(8));

-- Location: FF_X16_Y8_N19
\datArray_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector26~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(6));

-- Location: FF_X16_Y8_N21
\datArray_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => FS(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(5));

-- Location: LCCOMB_X16_Y8_N18
\datArray~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray~22_combout\ = (datArray_rtl_0_bypass(7) & (datArray_rtl_0_bypass(8) & (datArray_rtl_0_bypass(6) $ (!datArray_rtl_0_bypass(5))))) # (!datArray_rtl_0_bypass(7) & (!datArray_rtl_0_bypass(8) & (datArray_rtl_0_bypass(6) $ 
-- (!datArray_rtl_0_bypass(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => datArray_rtl_0_bypass(7),
	datab => datArray_rtl_0_bypass(8),
	datac => datArray_rtl_0_bypass(6),
	datad => datArray_rtl_0_bypass(5),
	combout => \datArray~22_combout\);

-- Location: LCCOMB_X15_Y8_N20
\datArray~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray~23_combout\ = (\datArray~21_combout\ & (datArray_rtl_0_bypass(0) & \datArray~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray~21_combout\,
	datac => datArray_rtl_0_bypass(0),
	datad => \datArray~22_combout\,
	combout => \datArray~23_combout\);

-- Location: IOIBUF_X18_Y0_N8
\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

-- Location: FF_X21_Y8_N5
\datArray_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dataIn[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(9));

-- Location: IOIBUF_X29_Y0_N1
\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\dataIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\dataIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\dataIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\dataIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

-- Location: LCCOMB_X21_Y8_N8
\FS[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \FS[0]~_wirecell_combout\ = !FS(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FS(0),
	combout => \FS[0]~_wirecell_combout\);

-- Location: LCCOMB_X15_Y8_N22
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (FS(3)) # ((FS(1) & FS(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FS(1),
	datac => FS(3),
	datad => FS(2),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X15_Y8_N18
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!FS(2) & (FS(3) $ (FS(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FS(2),
	datac => FS(3),
	datad => FS(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X15_Y8_N30
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (FS(1) & (FS(3) & !FS(2))) # (!FS(1) & (!FS(3) & FS(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FS(1),
	datac => FS(3),
	datad => FS(2),
	combout => \Mux0~0_combout\);

-- Location: M9K_X22_Y8_N0
\datArray_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:datArray_rtl_0|altsyncram_ccc1:auto_generated|ALTSYNCRAM",
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
	portawe => \state.STORE~q\,
	portbre => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \datArray_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \datArray_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \datArray_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \datArray_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y8_N4
\datArray~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray~24_combout\ = (\datArray~23_combout\ & (datArray_rtl_0_bypass(9))) # (!\datArray~23_combout\ & ((\datArray_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray~23_combout\,
	datac => datArray_rtl_0_bypass(9),
	datad => \datArray_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \datArray~24_combout\);

-- Location: FF_X21_Y8_N15
\datArray_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dataIn[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(10));

-- Location: LCCOMB_X21_Y8_N14
\datArray~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray~25_combout\ = (\datArray~23_combout\ & ((datArray_rtl_0_bypass(10)))) # (!\datArray~23_combout\ & (\datArray_rtl_0|auto_generated|ram_block1a1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray~23_combout\,
	datab => \datArray_rtl_0|auto_generated|ram_block1a1\,
	datac => datArray_rtl_0_bypass(10),
	combout => \datArray~25_combout\);

-- Location: FF_X21_Y8_N17
\datArray_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dataIn[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(11));

-- Location: LCCOMB_X21_Y8_N16
\datArray~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray~26_combout\ = (\datArray~23_combout\ & (datArray_rtl_0_bypass(11))) # (!\datArray~23_combout\ & ((\datArray_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray~23_combout\,
	datac => datArray_rtl_0_bypass(11),
	datad => \datArray_rtl_0|auto_generated|ram_block1a2\,
	combout => \datArray~26_combout\);

-- Location: FF_X21_Y8_N11
\datArray_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dataIn[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(12));

-- Location: LCCOMB_X21_Y8_N10
\datArray~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray~27_combout\ = (\datArray~23_combout\ & (datArray_rtl_0_bypass(12))) # (!\datArray~23_combout\ & ((\datArray_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray~23_combout\,
	datac => datArray_rtl_0_bypass(12),
	datad => \datArray_rtl_0|auto_generated|ram_block1a3\,
	combout => \datArray~27_combout\);

-- Location: FF_X21_Y8_N21
\datArray_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dataIn[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(13));

-- Location: LCCOMB_X21_Y8_N20
\datArray~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray~28_combout\ = (\datArray~23_combout\ & (datArray_rtl_0_bypass(13))) # (!\datArray~23_combout\ & ((\datArray_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray~23_combout\,
	datac => datArray_rtl_0_bypass(13),
	datad => \datArray_rtl_0|auto_generated|ram_block1a4\,
	combout => \datArray~28_combout\);

-- Location: FF_X21_Y8_N23
\datArray_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dataIn[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(14));

-- Location: LCCOMB_X21_Y8_N22
\datArray~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray~29_combout\ = (\datArray~23_combout\ & ((datArray_rtl_0_bypass(14)))) # (!\datArray~23_combout\ & (\datArray_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray~23_combout\,
	datab => \datArray_rtl_0|auto_generated|ram_block1a5\,
	datac => datArray_rtl_0_bypass(14),
	combout => \datArray~29_combout\);

-- Location: FF_X21_Y8_N1
\datArray_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dataIn[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(15));

-- Location: LCCOMB_X21_Y8_N0
\datArray~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray~30_combout\ = (\datArray~23_combout\ & (datArray_rtl_0_bypass(15))) # (!\datArray~23_combout\ & ((\datArray_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray~23_combout\,
	datac => datArray_rtl_0_bypass(15),
	datad => \datArray_rtl_0|auto_generated|ram_block1a6\,
	combout => \datArray~30_combout\);

-- Location: FF_X21_Y8_N27
\datArray_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dataIn[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(16));

-- Location: LCCOMB_X21_Y8_N26
\datArray~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray~31_combout\ = (\datArray~23_combout\ & (datArray_rtl_0_bypass(16))) # (!\datArray~23_combout\ & ((\datArray_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray~23_combout\,
	datac => datArray_rtl_0_bypass(16),
	datad => \datArray_rtl_0|auto_generated|ram_block1a7\,
	combout => \datArray~31_combout\);

-- Location: LCCOMB_X21_Y8_N24
\datArray_rtl_0_bypass[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray_rtl_0_bypass[17]~0_combout\ = !FS(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => FS(0),
	combout => \datArray_rtl_0_bypass[17]~0_combout\);

-- Location: FF_X21_Y8_N25
\datArray_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \datArray_rtl_0_bypass[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(17));

-- Location: LCCOMB_X21_Y8_N2
\datArray~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray~32_combout\ = (\datArray~23_combout\ & (datArray_rtl_0_bypass(17))) # (!\datArray~23_combout\ & ((\datArray_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => datArray_rtl_0_bypass(17),
	datac => \datArray~23_combout\,
	datad => \datArray_rtl_0|auto_generated|ram_block1a8\,
	combout => \datArray~32_combout\);

-- Location: FF_X15_Y8_N23
\datArray_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(18));

-- Location: LCCOMB_X15_Y8_N16
\datArray~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray~33_combout\ = (\datArray~23_combout\ & (datArray_rtl_0_bypass(18))) # (!\datArray~23_combout\ & ((\datArray_rtl_0|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray~23_combout\,
	datac => datArray_rtl_0_bypass(18),
	datad => \datArray_rtl_0|auto_generated|ram_block1a9\,
	combout => \datArray~33_combout\);

-- Location: FF_X15_Y8_N19
\datArray_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(19));

-- Location: LCCOMB_X15_Y8_N8
\datArray~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray~34_combout\ = (\datArray~23_combout\ & ((datArray_rtl_0_bypass(19)))) # (!\datArray~23_combout\ & (\datArray_rtl_0|auto_generated|ram_block1a10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datArray_rtl_0|auto_generated|ram_block1a10\,
	datac => \datArray~23_combout\,
	datad => datArray_rtl_0_bypass(19),
	combout => \datArray~34_combout\);

-- Location: FF_X15_Y8_N31
\datArray_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datArray_rtl_0_bypass(20));

-- Location: LCCOMB_X15_Y8_N24
\datArray~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \datArray~35_combout\ = (\datArray~23_combout\ & (datArray_rtl_0_bypass(20))) # (!\datArray~23_combout\ & ((\datArray_rtl_0|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => datArray_rtl_0_bypass(20),
	datac => \datArray~23_combout\,
	datad => \datArray_rtl_0|auto_generated|ram_block1a11\,
	combout => \datArray~35_combout\);

-- Location: LCCOMB_X18_Y8_N24
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = NS(0) $ (NS(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NS(0),
	datac => NS(1),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X17_Y8_N16
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (!\state.SEND~q\ & (!\process_0~3_combout\ & ((\Add1~0_combout\) # (!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SEND~q\,
	datab => \Add1~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \process_0~3_combout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X17_Y8_N17
\NS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector23~0_combout\,
	ena => \FS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NS(1));

-- Location: LCCOMB_X17_Y8_N24
\process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!NS(1) & (!FS(1) & !FS(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => NS(1),
	datac => FS(1),
	datad => FS(3),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X16_Y8_N22
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!OS(2) & (!OS(3) & (!OS(1) & !OS(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OS(2),
	datab => OS(3),
	datac => OS(1),
	datad => OS(0),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X18_Y8_N26
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = NS(3) $ (((NS(0) & (NS(2) & NS(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NS(0),
	datab => NS(2),
	datac => NS(1),
	datad => NS(3),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X17_Y8_N2
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (!\state.SEND~q\ & (!\process_0~3_combout\ & ((\Add1~1_combout\) # (!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SEND~q\,
	datab => \Add1~1_combout\,
	datac => \Equal2~0_combout\,
	datad => \process_0~3_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X17_Y8_N3
\NS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector21~0_combout\,
	ena => \FS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NS(3));

-- Location: LCCOMB_X17_Y8_N10
\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!NS(2) & (!NS(3) & (!FS(2) & !FS(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NS(2),
	datab => NS(3),
	datac => FS(2),
	datad => FS(0),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X17_Y8_N8
\process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (!NS(0) & (\process_0~2_combout\ & (\process_0~0_combout\ & \process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NS(0),
	datab => \process_0~2_combout\,
	datac => \process_0~0_combout\,
	datad => \process_0~1_combout\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X17_Y8_N18
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\state.SEND~q\ & (!\process_0~3_combout\ & ((!NS(0)) # (!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SEND~q\,
	datab => \process_0~3_combout\,
	datac => \Equal2~0_combout\,
	datad => NS(0),
	combout => \Selector24~0_combout\);

-- Location: FF_X17_Y8_N1
\NS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector24~0_combout\,
	sload => VCC,
	ena => \FS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NS(0));

-- Location: LCCOMB_X18_Y8_N28
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = NS(2) $ (((NS(0) & NS(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NS(0),
	datab => NS(2),
	datac => NS(1),
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X17_Y8_N6
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\state.SEND~q\ & (\Equal2~0_combout\ & (\Add1~2_combout\ & !\process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SEND~q\,
	datab => \Equal2~0_combout\,
	datac => \Add1~2_combout\,
	datad => \process_0~3_combout\,
	combout => \Selector22~0_combout\);

-- Location: FF_X17_Y8_N7
\NS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector22~0_combout\,
	ena => \FS[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NS(2));

-- Location: LCCOMB_X17_Y8_N0
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!NS(2) & (NS(1) & (NS(0) & NS(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NS(2),
	datab => NS(1),
	datac => NS(0),
	datad => NS(3),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X16_Y8_N4
\empty~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \empty~0_combout\ = (\Equal4~0_combout\) # (\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datad => \process_0~0_combout\,
	combout => \empty~0_combout\);

-- Location: LCCOMB_X17_Y8_N4
\empty$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \empty$latch~combout\ = (\empty~0_combout\ & (!\Equal4~0_combout\)) # (!\empty~0_combout\ & ((\empty$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datac => \empty~0_combout\,
	datad => \empty$latch~combout\,
	combout => \empty$latch~combout\);

-- Location: IOIBUF_X27_Y0_N8
\dataIn[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(8),
	o => \dataIn[8]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\dataIn[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(9),
	o => \dataIn[9]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\dataIn[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(10),
	o => \dataIn[10]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\dataIn[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(11),
	o => \dataIn[11]~input_o\);

-- Location: IOIBUF_X11_Y34_N1
\dataIn[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(12),
	o => \dataIn[12]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\dataIn[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(13),
	o => \dataIn[13]~input_o\);

-- Location: IOIBUF_X43_Y0_N22
\dataIn[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(14),
	o => \dataIn[14]~input_o\);

-- Location: IOIBUF_X23_Y34_N15
\dataIn[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(15),
	o => \dataIn[15]~input_o\);

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;

ww_dataOut(4) <= \dataOut[4]~output_o\;

ww_dataOut(5) <= \dataOut[5]~output_o\;

ww_dataOut(6) <= \dataOut[6]~output_o\;

ww_dataOut(7) <= \dataOut[7]~output_o\;

ww_dataOut(8) <= \dataOut[8]~output_o\;

ww_dataOut(9) <= \dataOut[9]~output_o\;

ww_dataOut(10) <= \dataOut[10]~output_o\;

ww_dataOut(11) <= \dataOut[11]~output_o\;

ww_dataOut(12) <= \dataOut[12]~output_o\;

ww_dataOut(13) <= \dataOut[13]~output_o\;

ww_dataOut(14) <= \dataOut[14]~output_o\;

ww_dataOut(15) <= \dataOut[15]~output_o\;

ww_empty <= \empty~output_o\;
END structure;


