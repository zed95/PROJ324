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

-- DATE "02/07/2019 20:09:47"

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

ENTITY 	Data_Extraction_Controller IS
    PORT (
	CLK : IN std_logic;
	bufferEmpty : IN std_logic;
	DONErx : IN std_logic;
	DONEtx : IN std_logic;
	sTx : IN std_logic;
	EXTRACT : OUT std_logic;
	NEXT_ADD : OUT std_logic;
	STORE : OUT std_logic;
	R2S : OUT std_logic;
	NEXT_DAT : OUT std_logic;
	TRANSMIT : OUT std_logic
	);
END Data_Extraction_Controller;

-- Design Ports Information
-- EXTRACT	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NEXT_ADD	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STORE	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2S	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NEXT_DAT	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TRANSMIT	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bufferEmpty	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sTx	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DONEtx	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DONErx	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Data_Extraction_Controller IS
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
SIGNAL ww_bufferEmpty : std_logic;
SIGNAL ww_DONErx : std_logic;
SIGNAL ww_DONEtx : std_logic;
SIGNAL ww_sTx : std_logic;
SIGNAL ww_EXTRACT : std_logic;
SIGNAL ww_NEXT_ADD : std_logic;
SIGNAL ww_STORE : std_logic;
SIGNAL ww_R2S : std_logic;
SIGNAL ww_NEXT_DAT : std_logic;
SIGNAL ww_TRANSMIT : std_logic;
SIGNAL \WideOr6~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EXTRACT~output_o\ : std_logic;
SIGNAL \NEXT_ADD~output_o\ : std_logic;
SIGNAL \STORE~output_o\ : std_logic;
SIGNAL \R2S~output_o\ : std_logic;
SIGNAL \NEXT_DAT~output_o\ : std_logic;
SIGNAL \TRANSMIT~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DONErx~input_o\ : std_logic;
SIGNAL \DONEtx~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.WAITINGrx~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \bufferEmpty~input_o\ : std_logic;
SIGNAL \sTx~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \addNo~1_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \addNo~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \state.NXTtx~0_combout\ : std_logic;
SIGNAL \state.NXTtx~feeder_combout\ : std_logic;
SIGNAL \state.NXTtx~q\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \nextTx~1_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \nextTx~0_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \state.STRTtx~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.WAITINGtx~q\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \state.NXTrx~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.STRTrx~q\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \WideOr6~clkctrl_outclk\ : std_logic;
SIGNAL \EXTRACT$latch~combout\ : std_logic;
SIGNAL \NEXT_ADD$latch~combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \R2S$latch~combout\ : std_logic;
SIGNAL \NEXT_DAT$latch~combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \TRANSMIT$latch~combout\ : std_logic;
SIGNAL addNo : std_logic_vector(31 DOWNTO 0);
SIGNAL nextTx : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_bufferEmpty <= bufferEmpty;
ww_DONErx <= DONErx;
ww_DONEtx <= DONEtx;
ww_sTx <= sTx;
EXTRACT <= ww_EXTRACT;
NEXT_ADD <= ww_NEXT_ADD;
STORE <= ww_STORE;
R2S <= ww_R2S;
NEXT_DAT <= ww_NEXT_DAT;
TRANSMIT <= ww_TRANSMIT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\WideOr6~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \WideOr6~combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y0_N23
\EXTRACT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EXTRACT$latch~combout\,
	devoe => ww_devoe,
	o => \EXTRACT~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\NEXT_ADD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NEXT_ADD$latch~combout\,
	devoe => ww_devoe,
	o => \NEXT_ADD~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\STORE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NEXT_ADD$latch~combout\,
	devoe => ww_devoe,
	o => \STORE~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\R2S~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2S$latch~combout\,
	devoe => ww_devoe,
	o => \R2S~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\NEXT_DAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NEXT_DAT$latch~combout\,
	devoe => ww_devoe,
	o => \NEXT_DAT~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\TRANSMIT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TRANSMIT$latch~combout\,
	devoe => ww_devoe,
	o => \TRANSMIT~output_o\);

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

-- Location: IOIBUF_X0_Y15_N1
\DONErx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DONErx,
	o => \DONErx~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\DONEtx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DONEtx,
	o => \DONEtx~input_o\);

-- Location: LCCOMB_X17_Y15_N22
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.STRTrx~q\) # ((\state.WAITINGrx~q\ & !\DONErx~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STRTrx~q\,
	datac => \state.WAITINGrx~q\,
	datad => \DONErx~input_o\,
	combout => \Selector3~0_combout\);

-- Location: FF_X17_Y15_N23
\state.WAITINGrx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WAITINGrx~q\);

-- Location: LCCOMB_X16_Y14_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = nextTx(0) $ (VCC)
-- \Add1~1\ = CARRY(nextTx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nextTx(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X53_Y17_N8
\bufferEmpty~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bufferEmpty,
	o => \bufferEmpty~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\sTx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sTx,
	o => \sTx~input_o\);

-- Location: LCCOMB_X17_Y15_N14
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\bufferEmpty~input_o\ & (!\sTx~input_o\ & !\state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bufferEmpty~input_o\,
	datab => \sTx~input_o\,
	datad => \state.IDLE~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X19_Y15_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = addNo(0) $ (VCC)
-- \Add0~1\ = CARRY(addNo(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => addNo(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X19_Y15_N1
\addNo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(0));

-- Location: LCCOMB_X19_Y15_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (addNo(1) & (!\Add0~1\)) # (!addNo(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!addNo(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X19_Y15_N3
\addNo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(1));

-- Location: LCCOMB_X19_Y15_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (addNo(2) & (\Add0~3\ $ (GND))) # (!addNo(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((addNo(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addNo(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X20_Y15_N2
\addNo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \addNo~1_combout\ = (\Add0~4_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \Equal0~10_combout\,
	combout => \addNo~1_combout\);

-- Location: FF_X20_Y15_N3
\addNo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \addNo~1_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(2));

-- Location: LCCOMB_X19_Y15_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (addNo(3) & (!\Add0~5\)) # (!addNo(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!addNo(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addNo(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X20_Y15_N4
\addNo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \addNo~0_combout\ = (\Add0~6_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \Equal0~10_combout\,
	combout => \addNo~0_combout\);

-- Location: FF_X20_Y15_N5
\addNo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \addNo~0_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(3));

-- Location: LCCOMB_X19_Y15_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (addNo(4) & (\Add0~7\ $ (GND))) # (!addNo(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((addNo(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X19_Y15_N9
\addNo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(4));

-- Location: LCCOMB_X19_Y15_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (addNo(5) & (!\Add0~9\)) # (!addNo(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!addNo(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addNo(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X19_Y15_N11
\addNo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(5));

-- Location: LCCOMB_X19_Y15_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (addNo(6) & (\Add0~11\ $ (GND))) # (!addNo(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((addNo(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addNo(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X19_Y15_N13
\addNo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(6));

-- Location: LCCOMB_X19_Y15_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (addNo(7) & (!\Add0~13\)) # (!addNo(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!addNo(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X19_Y15_N15
\addNo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(7));

-- Location: LCCOMB_X18_Y15_N22
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!addNo(6) & (!addNo(4) & (!addNo(7) & !addNo(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addNo(6),
	datab => addNo(4),
	datac => addNo(7),
	datad => addNo(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X19_Y15_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (addNo(8) & (\Add0~15\ $ (GND))) # (!addNo(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((addNo(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X19_Y15_N17
\addNo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(8));

-- Location: LCCOMB_X19_Y15_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (addNo(9) & (!\Add0~17\)) # (!addNo(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!addNo(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X19_Y15_N19
\addNo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(9));

-- Location: LCCOMB_X19_Y15_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (addNo(10) & (\Add0~19\ $ (GND))) # (!addNo(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((addNo(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X19_Y15_N21
\addNo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(10));

-- Location: LCCOMB_X19_Y15_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (addNo(11) & (!\Add0~21\)) # (!addNo(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!addNo(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addNo(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X19_Y15_N23
\addNo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(11));

-- Location: LCCOMB_X19_Y15_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (addNo(12) & (\Add0~23\ $ (GND))) # (!addNo(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((addNo(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X19_Y15_N25
\addNo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(12));

-- Location: LCCOMB_X19_Y15_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (addNo(13) & (!\Add0~25\)) # (!addNo(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!addNo(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addNo(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X19_Y15_N27
\addNo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(13));

-- Location: LCCOMB_X19_Y15_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (addNo(14) & (\Add0~27\ $ (GND))) # (!addNo(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((addNo(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X19_Y15_N29
\addNo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(14));

-- Location: LCCOMB_X19_Y15_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (addNo(15) & (!\Add0~29\)) # (!addNo(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!addNo(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addNo(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X19_Y15_N31
\addNo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(15));

-- Location: LCCOMB_X18_Y15_N8
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!addNo(15) & (!addNo(12) & (!addNo(13) & !addNo(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addNo(15),
	datab => addNo(12),
	datac => addNo(13),
	datad => addNo(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X18_Y15_N14
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!addNo(10) & (!addNo(9) & (!addNo(8) & !addNo(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addNo(10),
	datab => addNo(9),
	datac => addNo(8),
	datad => addNo(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X20_Y15_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (addNo(0) & (!addNo(2) & (addNo(3) & addNo(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addNo(0),
	datab => addNo(2),
	datac => addNo(3),
	datad => addNo(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X18_Y15_N30
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X19_Y14_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (addNo(16) & (\Add0~31\ $ (GND))) # (!addNo(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((addNo(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X19_Y14_N1
\addNo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(16));

-- Location: LCCOMB_X19_Y14_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (addNo(17) & (!\Add0~33\)) # (!addNo(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!addNo(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X19_Y14_N3
\addNo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(17));

-- Location: LCCOMB_X19_Y14_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (addNo(18) & (\Add0~35\ $ (GND))) # (!addNo(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((addNo(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X19_Y14_N5
\addNo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(18));

-- Location: LCCOMB_X19_Y14_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (addNo(19) & (!\Add0~37\)) # (!addNo(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!addNo(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addNo(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X19_Y14_N7
\addNo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(19));

-- Location: LCCOMB_X19_Y14_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (addNo(20) & (\Add0~39\ $ (GND))) # (!addNo(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((addNo(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X19_Y14_N9
\addNo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(20));

-- Location: LCCOMB_X19_Y14_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (addNo(21) & (!\Add0~41\)) # (!addNo(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!addNo(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addNo(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X19_Y14_N11
\addNo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(21));

-- Location: LCCOMB_X19_Y14_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (addNo(22) & (\Add0~43\ $ (GND))) # (!addNo(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((addNo(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addNo(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X19_Y14_N13
\addNo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(22));

-- Location: LCCOMB_X19_Y14_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (addNo(23) & (!\Add0~45\)) # (!addNo(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!addNo(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X19_Y14_N15
\addNo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(23));

-- Location: LCCOMB_X19_Y14_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (addNo(24) & (\Add0~47\ $ (GND))) # (!addNo(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((addNo(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X19_Y14_N17
\addNo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(24));

-- Location: LCCOMB_X19_Y14_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (addNo(25) & (!\Add0~49\)) # (!addNo(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!addNo(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X19_Y14_N19
\addNo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(25));

-- Location: LCCOMB_X19_Y14_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (addNo(26) & (\Add0~51\ $ (GND))) # (!addNo(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((addNo(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X19_Y14_N21
\addNo[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(26));

-- Location: LCCOMB_X19_Y14_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (addNo(27) & (!\Add0~53\)) # (!addNo(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!addNo(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addNo(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X19_Y14_N23
\addNo[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(27));

-- Location: LCCOMB_X19_Y14_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (addNo(28) & (\Add0~55\ $ (GND))) # (!addNo(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((addNo(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X19_Y14_N25
\addNo[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(28));

-- Location: LCCOMB_X19_Y14_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (addNo(29) & (!\Add0~57\)) # (!addNo(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!addNo(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addNo(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X19_Y14_N27
\addNo[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(29));

-- Location: LCCOMB_X19_Y14_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (addNo(30) & (\Add0~59\ $ (GND))) # (!addNo(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((addNo(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addNo(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X19_Y14_N29
\addNo[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(30));

-- Location: LCCOMB_X19_Y14_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = addNo(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addNo(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X19_Y14_N31
\addNo[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	ena => \state.NXTrx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addNo(31));

-- Location: LCCOMB_X18_Y14_N22
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!addNo(31) & (!addNo(30) & (!addNo(29) & !addNo(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addNo(31),
	datab => addNo(30),
	datac => addNo(29),
	datad => addNo(28),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X18_Y14_N24
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!addNo(26) & (!addNo(25) & (!addNo(27) & !addNo(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addNo(26),
	datab => addNo(25),
	datac => addNo(27),
	datad => addNo(24),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X18_Y14_N0
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!addNo(16) & !addNo(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => addNo(16),
	datad => addNo(17),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X18_Y14_N10
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!addNo(23) & (!addNo(22) & (!addNo(20) & !addNo(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addNo(23),
	datab => addNo(22),
	datac => addNo(20),
	datad => addNo(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X18_Y15_N2
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!addNo(18) & (!addNo(19) & (\Equal0~5_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addNo(18),
	datab => addNo(19),
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X18_Y15_N24
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~4_combout\ & (\Equal0~9_combout\ & (\Equal0~8_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X18_Y15_N28
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((\state.NXTrx~q\ & \Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datac => \state.NXTrx~q\,
	datad => \Equal0~10_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X16_Y14_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (nextTx(13) & (!\Add1~25\)) # (!nextTx(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!nextTx(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X16_Y14_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (nextTx(14) & (\Add1~27\ $ (GND))) # (!nextTx(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((nextTx(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: FF_X16_Y14_N29
\nextTx[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~28_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(14));

-- Location: LCCOMB_X16_Y14_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (nextTx(15) & (!\Add1~29\)) # (!nextTx(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!nextTx(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: FF_X16_Y14_N31
\nextTx[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~30_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(15));

-- Location: LCCOMB_X16_Y13_N0
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (nextTx(16) & (\Add1~31\ $ (GND))) # (!nextTx(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((nextTx(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X16_Y13_N1
\nextTx[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~32_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(16));

-- Location: LCCOMB_X16_Y13_N2
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (nextTx(17) & (!\Add1~33\)) # (!nextTx(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!nextTx(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X16_Y13_N3
\nextTx[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~34_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(17));

-- Location: LCCOMB_X16_Y13_N4
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (nextTx(18) & (\Add1~35\ $ (GND))) # (!nextTx(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((nextTx(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X16_Y13_N5
\nextTx[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~36_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(18));

-- Location: LCCOMB_X16_Y13_N6
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (nextTx(19) & (!\Add1~37\)) # (!nextTx(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!nextTx(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: FF_X16_Y13_N7
\nextTx[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~38_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(19));

-- Location: LCCOMB_X17_Y13_N12
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!nextTx(16) & (!nextTx(19) & (!nextTx(18) & !nextTx(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(16),
	datab => nextTx(19),
	datac => nextTx(18),
	datad => nextTx(17),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X16_Y13_N8
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (nextTx(20) & (\Add1~39\ $ (GND))) # (!nextTx(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((nextTx(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: FF_X16_Y13_N9
\nextTx[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~40_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(20));

-- Location: LCCOMB_X16_Y13_N10
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (nextTx(21) & (!\Add1~41\)) # (!nextTx(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!nextTx(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: FF_X16_Y13_N11
\nextTx[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~42_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(21));

-- Location: LCCOMB_X16_Y13_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (nextTx(22) & (\Add1~43\ $ (GND))) # (!nextTx(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((nextTx(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: FF_X16_Y13_N13
\nextTx[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~44_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(22));

-- Location: LCCOMB_X16_Y13_N14
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (nextTx(23) & (!\Add1~45\)) # (!nextTx(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!nextTx(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: FF_X16_Y13_N15
\nextTx[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~46_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(23));

-- Location: LCCOMB_X16_Y13_N16
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (nextTx(24) & (\Add1~47\ $ (GND))) # (!nextTx(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((nextTx(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X16_Y13_N17
\nextTx[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~48_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(24));

-- Location: LCCOMB_X16_Y13_N18
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (nextTx(25) & (!\Add1~49\)) # (!nextTx(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!nextTx(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: FF_X16_Y13_N19
\nextTx[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~50_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(25));

-- Location: LCCOMB_X16_Y13_N20
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (nextTx(26) & (\Add1~51\ $ (GND))) # (!nextTx(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((nextTx(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: FF_X16_Y13_N21
\nextTx[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~52_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(26));

-- Location: LCCOMB_X16_Y13_N22
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (nextTx(27) & (!\Add1~53\)) # (!nextTx(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!nextTx(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: FF_X16_Y13_N23
\nextTx[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~54_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(27));

-- Location: LCCOMB_X16_Y13_N24
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (nextTx(28) & (\Add1~55\ $ (GND))) # (!nextTx(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((nextTx(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: FF_X16_Y13_N25
\nextTx[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~56_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(28));

-- Location: LCCOMB_X16_Y13_N26
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (nextTx(29) & (!\Add1~57\)) # (!nextTx(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!nextTx(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: FF_X16_Y13_N27
\nextTx[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~58_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(29));

-- Location: LCCOMB_X16_Y13_N28
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (nextTx(30) & (\Add1~59\ $ (GND))) # (!nextTx(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((nextTx(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: FF_X16_Y13_N29
\nextTx[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~60_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(30));

-- Location: LCCOMB_X16_Y13_N30
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = nextTx(31) $ (\Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: FF_X16_Y13_N31
\nextTx[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~62_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(31));

-- Location: LCCOMB_X17_Y13_N20
\Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!nextTx(29) & (!nextTx(28) & (!nextTx(30) & !nextTx(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(29),
	datab => nextTx(28),
	datac => nextTx(30),
	datad => nextTx(31),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X17_Y13_N4
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!nextTx(20) & (!nextTx(22) & (!nextTx(21) & !nextTx(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(20),
	datab => nextTx(22),
	datac => nextTx(21),
	datad => nextTx(23),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X17_Y13_N10
\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!nextTx(24) & (!nextTx(27) & (!nextTx(26) & !nextTx(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(24),
	datab => nextTx(27),
	datac => nextTx(26),
	datad => nextTx(25),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X17_Y13_N6
\Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~5_combout\ & (\Equal1~8_combout\ & (\Equal1~6_combout\ & \Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \Equal1~8_combout\,
	datac => \Equal1~6_combout\,
	datad => \Equal1~7_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X18_Y15_N4
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\Selector0~1_combout\ & (((!\Equal1~4_combout\) # (!\Equal1~9_combout\)) # (!\state.NXTtx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.NXTtx~q\,
	datab => \Selector0~1_combout\,
	datac => \Equal1~9_combout\,
	datad => \Equal1~4_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X18_Y15_N5
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LCCOMB_X17_Y15_N24
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\DONErx~input_o\ & (!\state.WAITINGrx~q\ & ((!\state.WAITINGtx~q\) # (!\DONEtx~input_o\)))) # (!\DONErx~input_o\ & (((!\state.WAITINGtx~q\)) # (!\DONEtx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DONErx~input_o\,
	datab => \DONEtx~input_o\,
	datac => \state.WAITINGtx~q\,
	datad => \state.WAITINGrx~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X17_Y15_N16
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\ & (((\state.WAITINGtx~q\) # (\state.WAITINGrx~q\)) # (!\state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \state.WAITINGtx~q\,
	datac => \state.WAITINGrx~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X17_Y15_N28
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\Selector5~1_combout\ & ((\state.IDLE~q\) # ((!\sTx~input_o\ & !\bufferEmpty~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \sTx~input_o\,
	datac => \bufferEmpty~input_o\,
	datad => \Selector5~1_combout\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X17_Y13_N2
\state.NXTtx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.NXTtx~0_combout\ = (\DONEtx~input_o\ & ((\state.WAITINGtx~q\) # ((\state.NXTtx~q\ & \Selector5~2_combout\)))) # (!\DONEtx~input_o\ & (\state.NXTtx~q\ & ((\Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DONEtx~input_o\,
	datab => \state.NXTtx~q\,
	datac => \state.WAITINGtx~q\,
	datad => \Selector5~2_combout\,
	combout => \state.NXTtx~0_combout\);

-- Location: LCCOMB_X17_Y13_N30
\state.NXTtx~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.NXTtx~feeder_combout\ = \state.NXTtx~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.NXTtx~0_combout\,
	combout => \state.NXTtx~feeder_combout\);

-- Location: FF_X17_Y13_N31
\state.NXTtx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \state.NXTtx~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.NXTtx~q\);

-- Location: FF_X16_Y14_N1
\nextTx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~0_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(0));

-- Location: LCCOMB_X16_Y14_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (nextTx(1) & (!\Add1~1\)) # (!nextTx(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!nextTx(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X16_Y14_N3
\nextTx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(1));

-- Location: LCCOMB_X16_Y14_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (nextTx(2) & (\Add1~3\ $ (GND))) # (!nextTx(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((nextTx(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X17_Y14_N12
\nextTx~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextTx~1_combout\ = (\Add1~4_combout\ & ((!\Equal1~9_combout\) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~4_combout\,
	datac => \Add1~4_combout\,
	datad => \Equal1~9_combout\,
	combout => \nextTx~1_combout\);

-- Location: FF_X16_Y14_N5
\nextTx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \nextTx~1_combout\,
	sload => VCC,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(2));

-- Location: LCCOMB_X16_Y14_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (nextTx(3) & (!\Add1~5\)) # (!nextTx(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!nextTx(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X17_Y14_N10
\nextTx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextTx~0_combout\ = (\Add1~6_combout\ & ((!\Equal1~9_combout\) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~4_combout\,
	datac => \Add1~6_combout\,
	datad => \Equal1~9_combout\,
	combout => \nextTx~0_combout\);

-- Location: FF_X16_Y14_N7
\nextTx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \nextTx~0_combout\,
	sload => VCC,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(3));

-- Location: LCCOMB_X16_Y14_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (nextTx(4) & (\Add1~7\ $ (GND))) # (!nextTx(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((nextTx(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X16_Y14_N9
\nextTx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(4));

-- Location: LCCOMB_X16_Y14_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (nextTx(5) & (!\Add1~9\)) # (!nextTx(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!nextTx(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X16_Y14_N11
\nextTx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(5));

-- Location: LCCOMB_X16_Y14_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (nextTx(6) & (\Add1~11\ $ (GND))) # (!nextTx(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((nextTx(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X16_Y14_N13
\nextTx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(6));

-- Location: LCCOMB_X16_Y14_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (nextTx(7) & (!\Add1~13\)) # (!nextTx(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!nextTx(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X16_Y14_N15
\nextTx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(7));

-- Location: LCCOMB_X16_Y14_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (nextTx(8) & (\Add1~15\ $ (GND))) # (!nextTx(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((nextTx(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X16_Y14_N17
\nextTx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(8));

-- Location: LCCOMB_X16_Y14_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (nextTx(9) & (!\Add1~17\)) # (!nextTx(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!nextTx(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X16_Y14_N19
\nextTx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(9));

-- Location: LCCOMB_X16_Y14_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (nextTx(10) & (\Add1~19\ $ (GND))) # (!nextTx(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((nextTx(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X16_Y14_N21
\nextTx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(10));

-- Location: LCCOMB_X16_Y14_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (nextTx(11) & (!\Add1~21\)) # (!nextTx(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!nextTx(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X16_Y14_N23
\nextTx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(11));

-- Location: LCCOMB_X16_Y14_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (nextTx(12) & (\Add1~23\ $ (GND))) # (!nextTx(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((nextTx(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nextTx(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X16_Y14_N25
\nextTx[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~24_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(12));

-- Location: FF_X16_Y14_N27
\nextTx[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nextTx(13));

-- Location: LCCOMB_X17_Y14_N30
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!nextTx(13) & (!nextTx(14) & (!nextTx(15) & !nextTx(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(13),
	datab => nextTx(14),
	datac => nextTx(15),
	datad => nextTx(12),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X17_Y14_N18
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!nextTx(5) & (!nextTx(6) & (!nextTx(4) & !nextTx(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(5),
	datab => nextTx(6),
	datac => nextTx(4),
	datad => nextTx(7),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X17_Y14_N8
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!nextTx(8) & (!nextTx(10) & (!nextTx(9) & !nextTx(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(8),
	datab => nextTx(10),
	datac => nextTx(9),
	datad => nextTx(11),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X17_Y14_N28
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (nextTx(1) & (!nextTx(2) & (nextTx(0) & nextTx(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nextTx(1),
	datab => nextTx(2),
	datac => nextTx(0),
	datad => nextTx(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X17_Y14_N16
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (\Equal1~1_combout\ & (\Equal1~2_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X17_Y15_N6
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\bufferEmpty~input_o\ & (\sTx~input_o\ & !\state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bufferEmpty~input_o\,
	datab => \sTx~input_o\,
	datad => \state.IDLE~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X17_Y13_N28
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\state.NXTtx~q\ & ((!\Equal1~9_combout\) # (!\Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \state.NXTtx~q\,
	datac => \Selector2~0_combout\,
	datad => \Equal1~9_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X17_Y13_N29
\state.STRTtx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STRTtx~q\);

-- Location: LCCOMB_X17_Y13_N14
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.STRTtx~q\) # ((!\DONEtx~input_o\ & \state.WAITINGtx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DONEtx~input_o\,
	datac => \state.WAITINGtx~q\,
	datad => \state.STRTtx~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X17_Y13_N15
\state.WAITINGtx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WAITINGtx~q\);

-- Location: LCCOMB_X17_Y15_N26
\Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (\DONErx~input_o\ & (\state.WAITINGrx~q\ & ((!\state.WAITINGtx~q\) # (!\DONEtx~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DONErx~input_o\,
	datab => \DONEtx~input_o\,
	datac => \state.WAITINGrx~q\,
	datad => \state.WAITINGtx~q\,
	combout => \Selector5~3_combout\);

-- Location: LCCOMB_X17_Y15_N18
\Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = (\Selector5~3_combout\) # ((\state.NXTrx~q\ & \Selector5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~3_combout\,
	datac => \state.NXTrx~q\,
	datad => \Selector5~2_combout\,
	combout => \Selector5~4_combout\);

-- Location: FF_X17_Y15_N7
\state.NXTrx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector5~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.NXTrx~q\);

-- Location: LCCOMB_X18_Y15_N26
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.NXTrx~q\ & (((\bufferEmpty~input_o\ & !\state.IDLE~q\)) # (!\Equal0~10_combout\))) # (!\state.NXTrx~q\ & (\bufferEmpty~input_o\ & (!\state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.NXTrx~q\,
	datab => \bufferEmpty~input_o\,
	datac => \state.IDLE~q\,
	datad => \Equal0~10_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X18_Y15_N27
\state.STRTrx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STRTrx~q\);

-- Location: LCCOMB_X17_Y13_N22
WideOr6 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = (\state.NXTtx~q\) # ((\state.WAITINGtx~q\) # (\state.STRTtx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.NXTtx~q\,
	datac => \state.WAITINGtx~q\,
	datad => \state.STRTtx~q\,
	combout => \WideOr6~combout\);

-- Location: CLKCTRL_G4
\WideOr6~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr6~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr6~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y15_N20
\EXTRACT$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \EXTRACT$latch~combout\ = (GLOBAL(\WideOr6~clkctrl_outclk\) & (\EXTRACT$latch~combout\)) # (!GLOBAL(\WideOr6~clkctrl_outclk\) & ((\state.STRTrx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXTRACT$latch~combout\,
	datac => \state.STRTrx~q\,
	datad => \WideOr6~clkctrl_outclk\,
	combout => \EXTRACT$latch~combout\);

-- Location: LCCOMB_X17_Y15_N30
\NEXT_ADD$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \NEXT_ADD$latch~combout\ = (GLOBAL(\WideOr6~clkctrl_outclk\) & (\NEXT_ADD$latch~combout\)) # (!GLOBAL(\WideOr6~clkctrl_outclk\) & ((\state.NXTrx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEXT_ADD$latch~combout\,
	datac => \state.NXTrx~q\,
	datad => \WideOr6~clkctrl_outclk\,
	combout => \NEXT_ADD$latch~combout\);

-- Location: LCCOMB_X17_Y13_N26
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state.NXTtx~q\) # (((\state.WAITINGtx~q\) # (\state.STRTtx~q\)) # (!\bufferEmpty~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.NXTtx~q\,
	datab => \bufferEmpty~input_o\,
	datac => \state.WAITINGtx~q\,
	datad => \state.STRTtx~q\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X17_Y15_N20
\WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (\state.NXTrx~q\) # ((\state.WAITINGrx~q\) # (\state.STRTrx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.NXTrx~q\,
	datac => \state.WAITINGrx~q\,
	datad => \state.STRTrx~q\,
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X17_Y13_N24
\R2S$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \R2S$latch~combout\ = (\WideOr8~0_combout\ & ((\R2S$latch~combout\))) # (!\WideOr8~0_combout\ & (\Selector12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datac => \WideOr8~0_combout\,
	datad => \R2S$latch~combout\,
	combout => \R2S$latch~combout\);

-- Location: LCCOMB_X17_Y13_N8
\NEXT_DAT$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \NEXT_DAT$latch~combout\ = (GLOBAL(\WideOr6~clkctrl_outclk\) & (\state.NXTtx~q\)) # (!GLOBAL(\WideOr6~clkctrl_outclk\) & ((\NEXT_DAT$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.NXTtx~q\,
	datac => \NEXT_DAT$latch~combout\,
	datad => \WideOr6~clkctrl_outclk\,
	combout => \NEXT_DAT$latch~combout\);

-- Location: LCCOMB_X17_Y13_N16
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (!\state.WAITINGtx~q\ & !\state.NXTtx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.WAITINGtx~q\,
	datad => \state.NXTtx~q\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X17_Y13_N18
\TRANSMIT$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \TRANSMIT$latch~combout\ = (GLOBAL(\WideOr6~clkctrl_outclk\) & ((\WideOr6~0_combout\))) # (!GLOBAL(\WideOr6~clkctrl_outclk\) & (\TRANSMIT$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TRANSMIT$latch~combout\,
	datac => \WideOr6~0_combout\,
	datad => \WideOr6~clkctrl_outclk\,
	combout => \TRANSMIT$latch~combout\);

ww_EXTRACT <= \EXTRACT~output_o\;

ww_NEXT_ADD <= \NEXT_ADD~output_o\;

ww_STORE <= \STORE~output_o\;

ww_R2S <= \R2S~output_o\;

ww_NEXT_DAT <= \NEXT_DAT~output_o\;

ww_TRANSMIT <= \TRANSMIT~output_o\;
END structure;


