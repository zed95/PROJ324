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

-- DATE "03/24/2019 12:19:58"

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

ENTITY 	WC_Controller IS
    PORT (
	CLK : IN std_logic;
	bufferEmpty : IN std_logic;
	ID_Checked : IN std_logic;
	ID_Matched : IN std_logic;
	DONErx : IN std_logic;
	DONEtx : IN std_logic;
	STORE_ID : BUFFER std_logic;
	STORE : BUFFER std_logic;
	SEND : BUFFER std_logic;
	NEXT_DAT : BUFFER std_logic;
	SEND_REQUEST : BUFFER std_logic
	);
END WC_Controller;

-- Design Ports Information
-- STORE_ID	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STORE	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEND	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NEXT_DAT	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEND_REQUEST	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_Matched	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DONErx	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bufferEmpty	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DONEtx	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_Checked	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF WC_Controller IS
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
SIGNAL ww_ID_Checked : std_logic;
SIGNAL ww_ID_Matched : std_logic;
SIGNAL ww_DONErx : std_logic;
SIGNAL ww_DONEtx : std_logic;
SIGNAL ww_STORE_ID : std_logic;
SIGNAL ww_STORE : std_logic;
SIGNAL ww_SEND : std_logic;
SIGNAL ww_NEXT_DAT : std_logic;
SIGNAL ww_SEND_REQUEST : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \STORE_ID~output_o\ : std_logic;
SIGNAL \STORE~output_o\ : std_logic;
SIGNAL \SEND~output_o\ : std_logic;
SIGNAL \NEXT_DAT~output_o\ : std_logic;
SIGNAL \SEND_REQUEST~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ID_Checked~input_o\ : std_logic;
SIGNAL \bufferEmpty~input_o\ : std_logic;
SIGNAL \DONEtx~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \NextTx~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \NextTx~1_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \NextTx~0_combout\ : std_logic;
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
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \DONErx~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \state.WAITINGrx~q\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \state.STORE_DATA~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \TransactionNo~1_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \TransactionNo~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
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
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.W4BFFR_full~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state.SEND_DATA~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \state.WAITINGtx~q\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \state.NXTtx~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \state.W4BFFR_empty~q\ : std_logic;
SIGNAL \state.IDLE~0_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \ID_Matched~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.RequestData~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.WAIT_ID~q\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \state.RESULT~q\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \state.STOREID~q\ : std_logic;
SIGNAL NextTx : std_logic_vector(31 DOWNTO 0);
SIGNAL TransactionNo : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_bufferEmpty <= bufferEmpty;
ww_ID_Checked <= ID_Checked;
ww_ID_Matched <= ID_Matched;
ww_DONErx <= DONErx;
ww_DONEtx <= DONEtx;
STORE_ID <= ww_STORE_ID;
STORE <= ww_STORE;
SEND <= ww_SEND;
NEXT_DAT <= ww_NEXT_DAT;
SEND_REQUEST <= ww_SEND_REQUEST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y34_N9
\STORE_ID~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.STOREID~q\,
	devoe => ww_devoe,
	o => \STORE_ID~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\STORE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.STORE_DATA~q\,
	devoe => ww_devoe,
	o => \STORE~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\SEND~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.SEND_DATA~q\,
	devoe => ww_devoe,
	o => \SEND~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\NEXT_DAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.NXTtx~q\,
	devoe => ww_devoe,
	o => \NEXT_DAT~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\SEND_REQUEST~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.RequestData~q\,
	devoe => ww_devoe,
	o => \SEND_REQUEST~output_o\);

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

-- Location: IOIBUF_X9_Y34_N22
\ID_Checked~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_Checked,
	o => \ID_Checked~input_o\);

-- Location: IOIBUF_X11_Y34_N1
\bufferEmpty~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bufferEmpty,
	o => \bufferEmpty~input_o\);

-- Location: IOIBUF_X14_Y34_N15
\DONEtx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DONEtx,
	o => \DONEtx~input_o\);

-- Location: LCCOMB_X14_Y28_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = NextTx(0) $ (VCC)
-- \Add1~1\ = CARRY(NextTx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => NextTx(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X15_Y28_N30
\NextTx~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextTx~2_combout\ = (\Add1~0_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \Equal1~10_combout\,
	combout => \NextTx~2_combout\);

-- Location: FF_X14_Y28_N1
\NextTx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \NextTx~2_combout\,
	sload => VCC,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NextTx(0));

-- Location: LCCOMB_X14_Y28_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (NextTx(1) & (!\Add1~1\)) # (!NextTx(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!NextTx(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X14_Y28_N3
\NextTx[1]\ : dffeas
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
	q => NextTx(1));

-- Location: LCCOMB_X14_Y28_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (NextTx(2) & (\Add1~3\ $ (GND))) # (!NextTx(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((NextTx(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X15_Y28_N0
\NextTx~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextTx~1_combout\ = (\Add1~4_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~4_combout\,
	datad => \Equal1~10_combout\,
	combout => \NextTx~1_combout\);

-- Location: FF_X14_Y28_N5
\NextTx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \NextTx~1_combout\,
	sload => VCC,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NextTx(2));

-- Location: LCCOMB_X14_Y28_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (NextTx(3) & (!\Add1~5\)) # (!NextTx(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!NextTx(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X15_Y28_N2
\NextTx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NextTx~0_combout\ = (\Add1~6_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~6_combout\,
	datad => \Equal1~10_combout\,
	combout => \NextTx~0_combout\);

-- Location: FF_X15_Y28_N3
\NextTx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NextTx~0_combout\,
	ena => \state.NXTtx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NextTx(3));

-- Location: LCCOMB_X14_Y28_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (NextTx(4) & (\Add1~7\ $ (GND))) # (!NextTx(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((NextTx(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X14_Y28_N9
\NextTx[4]\ : dffeas
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
	q => NextTx(4));

-- Location: LCCOMB_X14_Y28_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (NextTx(5) & (!\Add1~9\)) # (!NextTx(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!NextTx(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X14_Y28_N11
\NextTx[5]\ : dffeas
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
	q => NextTx(5));

-- Location: LCCOMB_X14_Y28_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (NextTx(6) & (\Add1~11\ $ (GND))) # (!NextTx(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((NextTx(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X14_Y28_N13
\NextTx[6]\ : dffeas
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
	q => NextTx(6));

-- Location: LCCOMB_X14_Y28_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (NextTx(7) & (!\Add1~13\)) # (!NextTx(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!NextTx(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X14_Y28_N15
\NextTx[7]\ : dffeas
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
	q => NextTx(7));

-- Location: LCCOMB_X14_Y28_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (NextTx(8) & (\Add1~15\ $ (GND))) # (!NextTx(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((NextTx(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X14_Y28_N17
\NextTx[8]\ : dffeas
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
	q => NextTx(8));

-- Location: LCCOMB_X14_Y28_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (NextTx(9) & (!\Add1~17\)) # (!NextTx(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!NextTx(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X14_Y28_N19
\NextTx[9]\ : dffeas
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
	q => NextTx(9));

-- Location: LCCOMB_X14_Y28_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (NextTx(10) & (\Add1~19\ $ (GND))) # (!NextTx(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((NextTx(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X14_Y28_N21
\NextTx[10]\ : dffeas
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
	q => NextTx(10));

-- Location: LCCOMB_X14_Y28_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (NextTx(11) & (!\Add1~21\)) # (!NextTx(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!NextTx(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X14_Y28_N23
\NextTx[11]\ : dffeas
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
	q => NextTx(11));

-- Location: LCCOMB_X14_Y28_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (NextTx(12) & (\Add1~23\ $ (GND))) # (!NextTx(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((NextTx(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X14_Y28_N25
\NextTx[12]\ : dffeas
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
	q => NextTx(12));

-- Location: LCCOMB_X14_Y28_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (NextTx(13) & (!\Add1~25\)) # (!NextTx(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!NextTx(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X14_Y28_N27
\NextTx[13]\ : dffeas
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
	q => NextTx(13));

-- Location: LCCOMB_X14_Y28_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (NextTx(14) & (\Add1~27\ $ (GND))) # (!NextTx(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((NextTx(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: FF_X14_Y28_N29
\NextTx[14]\ : dffeas
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
	q => NextTx(14));

-- Location: LCCOMB_X14_Y28_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (NextTx(15) & (!\Add1~29\)) # (!NextTx(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!NextTx(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: FF_X14_Y28_N31
\NextTx[15]\ : dffeas
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
	q => NextTx(15));

-- Location: LCCOMB_X14_Y27_N0
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (NextTx(16) & (\Add1~31\ $ (GND))) # (!NextTx(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((NextTx(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X14_Y27_N1
\NextTx[16]\ : dffeas
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
	q => NextTx(16));

-- Location: LCCOMB_X14_Y27_N2
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (NextTx(17) & (!\Add1~33\)) # (!NextTx(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!NextTx(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X14_Y27_N3
\NextTx[17]\ : dffeas
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
	q => NextTx(17));

-- Location: LCCOMB_X14_Y27_N4
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (NextTx(18) & (\Add1~35\ $ (GND))) # (!NextTx(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((NextTx(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X14_Y27_N5
\NextTx[18]\ : dffeas
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
	q => NextTx(18));

-- Location: LCCOMB_X14_Y27_N6
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (NextTx(19) & (!\Add1~37\)) # (!NextTx(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!NextTx(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: FF_X14_Y27_N7
\NextTx[19]\ : dffeas
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
	q => NextTx(19));

-- Location: LCCOMB_X14_Y27_N8
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (NextTx(20) & (\Add1~39\ $ (GND))) # (!NextTx(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((NextTx(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: FF_X14_Y27_N9
\NextTx[20]\ : dffeas
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
	q => NextTx(20));

-- Location: LCCOMB_X14_Y27_N10
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (NextTx(21) & (!\Add1~41\)) # (!NextTx(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!NextTx(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: FF_X14_Y27_N11
\NextTx[21]\ : dffeas
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
	q => NextTx(21));

-- Location: LCCOMB_X14_Y27_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (NextTx(22) & (\Add1~43\ $ (GND))) # (!NextTx(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((NextTx(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: FF_X14_Y27_N13
\NextTx[22]\ : dffeas
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
	q => NextTx(22));

-- Location: LCCOMB_X14_Y27_N14
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (NextTx(23) & (!\Add1~45\)) # (!NextTx(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!NextTx(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: FF_X14_Y27_N15
\NextTx[23]\ : dffeas
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
	q => NextTx(23));

-- Location: LCCOMB_X14_Y27_N16
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (NextTx(24) & (\Add1~47\ $ (GND))) # (!NextTx(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((NextTx(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X14_Y27_N17
\NextTx[24]\ : dffeas
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
	q => NextTx(24));

-- Location: LCCOMB_X14_Y27_N18
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (NextTx(25) & (!\Add1~49\)) # (!NextTx(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!NextTx(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: FF_X14_Y27_N19
\NextTx[25]\ : dffeas
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
	q => NextTx(25));

-- Location: LCCOMB_X14_Y27_N20
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (NextTx(26) & (\Add1~51\ $ (GND))) # (!NextTx(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((NextTx(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: FF_X14_Y27_N21
\NextTx[26]\ : dffeas
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
	q => NextTx(26));

-- Location: LCCOMB_X14_Y27_N22
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (NextTx(27) & (!\Add1~53\)) # (!NextTx(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!NextTx(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: FF_X14_Y27_N23
\NextTx[27]\ : dffeas
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
	q => NextTx(27));

-- Location: LCCOMB_X15_Y27_N22
\Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!NextTx(24) & (!NextTx(25) & (!NextTx(26) & !NextTx(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(24),
	datab => NextTx(25),
	datac => NextTx(26),
	datad => NextTx(27),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X15_Y28_N22
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!NextTx(7) & (!NextTx(9) & (!NextTx(8) & !NextTx(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(7),
	datab => NextTx(9),
	datac => NextTx(8),
	datad => NextTx(10),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X15_Y27_N0
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!NextTx(20) & (!NextTx(19) & (!NextTx(21) & !NextTx(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(20),
	datab => NextTx(19),
	datac => NextTx(21),
	datad => NextTx(22),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X15_Y28_N8
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!NextTx(13) & (!NextTx(14) & (!NextTx(12) & !NextTx(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(13),
	datab => NextTx(14),
	datac => NextTx(12),
	datad => NextTx(11),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X15_Y28_N18
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!NextTx(18) & (!NextTx(16) & (!NextTx(15) & !NextTx(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(18),
	datab => NextTx(16),
	datac => NextTx(15),
	datad => NextTx(17),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X15_Y28_N24
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (\Equal1~0_combout\ & (\Equal1~2_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X15_Y28_N28
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!NextTx(5) & (NextTx(3) & (!NextTx(4) & !NextTx(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(5),
	datab => NextTx(3),
	datac => NextTx(4),
	datad => NextTx(6),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X15_Y28_N6
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (NextTx(2) & !NextTx(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => NextTx(2),
	datad => NextTx(1),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X15_Y28_N4
\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!NextTx(0) & (\Equal1~5_combout\ & (!NextTx(23) & \Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(0),
	datab => \Equal1~5_combout\,
	datac => NextTx(23),
	datad => \Equal1~6_combout\,
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X14_Y27_N24
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (NextTx(28) & (\Add1~55\ $ (GND))) # (!NextTx(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((NextTx(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: FF_X14_Y27_N25
\NextTx[28]\ : dffeas
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
	q => NextTx(28));

-- Location: LCCOMB_X14_Y27_N26
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (NextTx(29) & (!\Add1~57\)) # (!NextTx(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!NextTx(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: FF_X14_Y27_N27
\NextTx[29]\ : dffeas
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
	q => NextTx(29));

-- Location: LCCOMB_X14_Y27_N28
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (NextTx(30) & (\Add1~59\ $ (GND))) # (!NextTx(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((NextTx(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => NextTx(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: FF_X14_Y27_N29
\NextTx[30]\ : dffeas
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
	q => NextTx(30));

-- Location: LCCOMB_X14_Y27_N30
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = NextTx(31) $ (\Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: FF_X14_Y27_N31
\NextTx[31]\ : dffeas
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
	q => NextTx(31));

-- Location: LCCOMB_X15_Y27_N28
\Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (!NextTx(29) & (!NextTx(30) & (!NextTx(28) & !NextTx(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => NextTx(29),
	datab => NextTx(30),
	datac => NextTx(28),
	datad => NextTx(31),
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X15_Y28_N10
\Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~8_combout\ & (\Equal1~4_combout\ & (\Equal1~7_combout\ & \Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~8_combout\,
	datab => \Equal1~4_combout\,
	datac => \Equal1~7_combout\,
	datad => \Equal1~9_combout\,
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X11_Y32_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = TransactionNo(0) $ (VCC)
-- \Add0~1\ = CARRY(TransactionNo(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X53_Y17_N1
\DONErx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DONErx,
	o => \DONErx~input_o\);

-- Location: LCCOMB_X12_Y32_N24
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.STOREID~q\) # ((!\DONErx~input_o\ & \state.WAITINGrx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STOREID~q\,
	datac => \DONErx~input_o\,
	datad => \state.WAITINGrx~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X12_Y31_N0
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\state.STORE_DATA~q\ & !\Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STORE_DATA~q\,
	datac => \Equal0~10_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X12_Y31_N1
\state.WAITINGrx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WAITINGrx~q\);

-- Location: LCCOMB_X12_Y32_N26
\state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~15_combout\ = (\DONErx~input_o\ & \state.WAITINGrx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DONErx~input_o\,
	datad => \state.WAITINGrx~q\,
	combout => \state~15_combout\);

-- Location: FF_X12_Y32_N27
\state.STORE_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STORE_DATA~q\);

-- Location: FF_X11_Y32_N1
\TransactionNo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(0));

-- Location: LCCOMB_X11_Y32_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (TransactionNo(1) & (!\Add0~1\)) # (!TransactionNo(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!TransactionNo(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X12_Y32_N4
\TransactionNo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TransactionNo~1_combout\ = (\Add0~2_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datad => \Equal0~10_combout\,
	combout => \TransactionNo~1_combout\);

-- Location: FF_X12_Y32_N5
\TransactionNo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TransactionNo~1_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(1));

-- Location: LCCOMB_X11_Y32_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (TransactionNo(2) & (\Add0~3\ $ (GND))) # (!TransactionNo(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((TransactionNo(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X12_Y32_N2
\TransactionNo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TransactionNo~0_combout\ = (\Add0~4_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \Equal0~10_combout\,
	combout => \TransactionNo~0_combout\);

-- Location: FF_X12_Y32_N3
\TransactionNo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TransactionNo~0_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(2));

-- Location: LCCOMB_X11_Y32_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (TransactionNo(3) & (!\Add0~5\)) # (!TransactionNo(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!TransactionNo(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X11_Y32_N7
\TransactionNo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(3));

-- Location: LCCOMB_X11_Y32_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (TransactionNo(4) & (\Add0~7\ $ (GND))) # (!TransactionNo(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((TransactionNo(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X11_Y32_N9
\TransactionNo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(4));

-- Location: LCCOMB_X11_Y32_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (TransactionNo(5) & (!\Add0~9\)) # (!TransactionNo(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!TransactionNo(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X11_Y32_N11
\TransactionNo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(5));

-- Location: LCCOMB_X11_Y32_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (TransactionNo(6) & (\Add0~11\ $ (GND))) # (!TransactionNo(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((TransactionNo(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X11_Y32_N13
\TransactionNo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(6));

-- Location: LCCOMB_X11_Y32_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (TransactionNo(7) & (!\Add0~13\)) # (!TransactionNo(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!TransactionNo(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X11_Y32_N15
\TransactionNo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(7));

-- Location: LCCOMB_X11_Y32_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (TransactionNo(8) & (\Add0~15\ $ (GND))) # (!TransactionNo(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((TransactionNo(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X11_Y32_N17
\TransactionNo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(8));

-- Location: LCCOMB_X11_Y32_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (TransactionNo(9) & (!\Add0~17\)) # (!TransactionNo(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!TransactionNo(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X11_Y32_N19
\TransactionNo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(9));

-- Location: LCCOMB_X11_Y32_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (TransactionNo(10) & (\Add0~19\ $ (GND))) # (!TransactionNo(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((TransactionNo(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X11_Y32_N21
\TransactionNo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(10));

-- Location: LCCOMB_X11_Y32_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (TransactionNo(11) & (!\Add0~21\)) # (!TransactionNo(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!TransactionNo(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X11_Y32_N23
\TransactionNo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(11));

-- Location: LCCOMB_X12_Y32_N22
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!TransactionNo(8) & (!TransactionNo(9) & (!TransactionNo(10) & !TransactionNo(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(8),
	datab => TransactionNo(9),
	datac => TransactionNo(10),
	datad => TransactionNo(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X12_Y32_N28
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!TransactionNo(7) & (!TransactionNo(6) & (!TransactionNo(5) & !TransactionNo(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(7),
	datab => TransactionNo(6),
	datac => TransactionNo(5),
	datad => TransactionNo(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X12_Y32_N14
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (TransactionNo(0) & (!TransactionNo(1) & (!TransactionNo(3) & TransactionNo(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(0),
	datab => TransactionNo(1),
	datac => TransactionNo(3),
	datad => TransactionNo(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X11_Y32_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (TransactionNo(12) & (\Add0~23\ $ (GND))) # (!TransactionNo(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((TransactionNo(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X11_Y32_N25
\TransactionNo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(12));

-- Location: LCCOMB_X11_Y32_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (TransactionNo(13) & (!\Add0~25\)) # (!TransactionNo(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!TransactionNo(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X11_Y32_N27
\TransactionNo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(13));

-- Location: LCCOMB_X11_Y32_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (TransactionNo(14) & (\Add0~27\ $ (GND))) # (!TransactionNo(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((TransactionNo(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X11_Y32_N29
\TransactionNo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(14));

-- Location: LCCOMB_X11_Y32_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (TransactionNo(15) & (!\Add0~29\)) # (!TransactionNo(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!TransactionNo(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X11_Y32_N31
\TransactionNo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(15));

-- Location: LCCOMB_X12_Y32_N20
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!TransactionNo(13) & (!TransactionNo(12) & (!TransactionNo(15) & !TransactionNo(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(13),
	datab => TransactionNo(12),
	datac => TransactionNo(15),
	datad => TransactionNo(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X12_Y32_N30
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X11_Y31_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (TransactionNo(16) & (\Add0~31\ $ (GND))) # (!TransactionNo(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((TransactionNo(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X11_Y31_N1
\TransactionNo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(16));

-- Location: LCCOMB_X11_Y31_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (TransactionNo(17) & (!\Add0~33\)) # (!TransactionNo(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!TransactionNo(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X11_Y31_N3
\TransactionNo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(17));

-- Location: LCCOMB_X11_Y31_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (TransactionNo(18) & (\Add0~35\ $ (GND))) # (!TransactionNo(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((TransactionNo(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X11_Y31_N5
\TransactionNo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(18));

-- Location: LCCOMB_X11_Y31_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (TransactionNo(19) & (!\Add0~37\)) # (!TransactionNo(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!TransactionNo(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X11_Y31_N7
\TransactionNo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(19));

-- Location: LCCOMB_X11_Y31_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (TransactionNo(20) & (\Add0~39\ $ (GND))) # (!TransactionNo(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((TransactionNo(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X11_Y31_N9
\TransactionNo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(20));

-- Location: LCCOMB_X11_Y31_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (TransactionNo(21) & (!\Add0~41\)) # (!TransactionNo(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!TransactionNo(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X11_Y31_N11
\TransactionNo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(21));

-- Location: LCCOMB_X11_Y31_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (TransactionNo(22) & (\Add0~43\ $ (GND))) # (!TransactionNo(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((TransactionNo(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X11_Y31_N13
\TransactionNo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(22));

-- Location: LCCOMB_X11_Y31_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (TransactionNo(23) & (!\Add0~45\)) # (!TransactionNo(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!TransactionNo(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X11_Y31_N15
\TransactionNo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(23));

-- Location: LCCOMB_X11_Y31_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (TransactionNo(24) & (\Add0~47\ $ (GND))) # (!TransactionNo(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((TransactionNo(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X11_Y31_N17
\TransactionNo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(24));

-- Location: LCCOMB_X11_Y31_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (TransactionNo(25) & (!\Add0~49\)) # (!TransactionNo(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!TransactionNo(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X11_Y31_N19
\TransactionNo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(25));

-- Location: LCCOMB_X11_Y31_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (TransactionNo(26) & (\Add0~51\ $ (GND))) # (!TransactionNo(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((TransactionNo(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X11_Y31_N21
\TransactionNo[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(26));

-- Location: LCCOMB_X11_Y31_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (TransactionNo(27) & (!\Add0~53\)) # (!TransactionNo(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!TransactionNo(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X11_Y31_N23
\TransactionNo[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(27));

-- Location: LCCOMB_X12_Y31_N2
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!TransactionNo(25) & (!TransactionNo(27) & (!TransactionNo(24) & !TransactionNo(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(25),
	datab => TransactionNo(27),
	datac => TransactionNo(24),
	datad => TransactionNo(26),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X11_Y31_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (TransactionNo(28) & (\Add0~55\ $ (GND))) # (!TransactionNo(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((TransactionNo(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X11_Y31_N25
\TransactionNo[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(28));

-- Location: LCCOMB_X11_Y31_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (TransactionNo(29) & (!\Add0~57\)) # (!TransactionNo(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!TransactionNo(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X11_Y31_N27
\TransactionNo[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(29));

-- Location: LCCOMB_X11_Y31_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (TransactionNo(30) & (\Add0~59\ $ (GND))) # (!TransactionNo(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((TransactionNo(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => TransactionNo(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X11_Y31_N29
\TransactionNo[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(30));

-- Location: LCCOMB_X11_Y31_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = TransactionNo(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X11_Y31_N31
\TransactionNo[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	ena => \state.STORE_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TransactionNo(31));

-- Location: LCCOMB_X12_Y31_N8
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!TransactionNo(29) & (!TransactionNo(30) & (!TransactionNo(31) & !TransactionNo(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(29),
	datab => TransactionNo(30),
	datac => TransactionNo(31),
	datad => TransactionNo(28),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X12_Y31_N4
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!TransactionNo(17) & (!TransactionNo(19) & (!TransactionNo(18) & !TransactionNo(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(17),
	datab => TransactionNo(19),
	datac => TransactionNo(18),
	datad => TransactionNo(16),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X12_Y31_N30
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!TransactionNo(23) & !TransactionNo(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(23),
	datad => TransactionNo(22),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X12_Y31_N24
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!TransactionNo(20) & (\Equal0~5_combout\ & (\Equal0~6_combout\ & !TransactionNo(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TransactionNo(20),
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => TransactionNo(21),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X12_Y31_N22
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~4_combout\ & (\Equal0~8_combout\ & (\Equal0~9_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X12_Y31_N10
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Equal0~10_combout\ & ((\state.STORE_DATA~q\) # ((\bufferEmpty~input_o\ & \state.W4BFFR_full~q\)))) # (!\Equal0~10_combout\ & (\bufferEmpty~input_o\ & (\state.W4BFFR_full~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \bufferEmpty~input_o\,
	datac => \state.W4BFFR_full~q\,
	datad => \state.STORE_DATA~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X12_Y31_N11
\state.W4BFFR_full\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.W4BFFR_full~q\);

-- Location: LCCOMB_X15_Y28_N12
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Equal1~10_combout\ & (!\bufferEmpty~input_o\ & ((\state.W4BFFR_full~q\)))) # (!\Equal1~10_combout\ & ((\state.NXTtx~q\) # ((!\bufferEmpty~input_o\ & \state.W4BFFR_full~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \bufferEmpty~input_o\,
	datac => \state.NXTtx~q\,
	datad => \state.W4BFFR_full~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X15_Y28_N13
\state.SEND_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SEND_DATA~q\);

-- Location: LCCOMB_X14_Y32_N18
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.SEND_DATA~q\) # ((!\DONEtx~input_o\ & \state.WAITINGtx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DONEtx~input_o\,
	datab => \state.SEND_DATA~q\,
	datac => \state.WAITINGtx~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X14_Y32_N19
\state.WAITINGtx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WAITINGtx~q\);

-- Location: LCCOMB_X14_Y32_N20
\state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~16_combout\ = (\state.WAITINGtx~q\ & \DONEtx~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.WAITINGtx~q\,
	datac => \DONEtx~input_o\,
	combout => \state~16_combout\);

-- Location: FF_X14_Y32_N21
\state.NXTtx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.NXTtx~q\);

-- Location: LCCOMB_X15_Y28_N16
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.NXTtx~q\ & ((\Equal1~10_combout\) # ((!\bufferEmpty~input_o\ & \state.W4BFFR_empty~q\)))) # (!\state.NXTtx~q\ & (!\bufferEmpty~input_o\ & (\state.W4BFFR_empty~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.NXTtx~q\,
	datab => \bufferEmpty~input_o\,
	datac => \state.W4BFFR_empty~q\,
	datad => \Equal1~10_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X15_Y28_N17
\state.W4BFFR_empty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.W4BFFR_empty~q\);

-- Location: LCCOMB_X12_Y32_N12
\state.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.IDLE~0_combout\ = (\bufferEmpty~input_o\ & ((!\state.W4BFFR_empty~q\))) # (!\bufferEmpty~input_o\ & (\state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bufferEmpty~input_o\,
	datac => \state.IDLE~q\,
	datad => \state.W4BFFR_empty~q\,
	combout => \state.IDLE~0_combout\);

-- Location: FF_X12_Y32_N13
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: IOIBUF_X53_Y17_N8
\ID_Matched~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_Matched,
	o => \ID_Matched~input_o\);

-- Location: LCCOMB_X12_Y32_N16
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.IDLE~q\ & (\state.RESULT~q\ & ((!\ID_Matched~input_o\)))) # (!\state.IDLE~q\ & ((\bufferEmpty~input_o\) # ((\state.RESULT~q\ & !\ID_Matched~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \state.RESULT~q\,
	datac => \bufferEmpty~input_o\,
	datad => \ID_Matched~input_o\,
	combout => \Selector1~0_combout\);

-- Location: FF_X12_Y32_N17
\state.RequestData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RequestData~q\);

-- Location: LCCOMB_X12_Y32_N10
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.RequestData~q\) # ((!\ID_Checked~input_o\ & \state.WAIT_ID~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_Checked~input_o\,
	datac => \state.WAIT_ID~q\,
	datad => \state.RequestData~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X12_Y32_N11
\state.WAIT_ID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WAIT_ID~q\);

-- Location: LCCOMB_X12_Y32_N18
\state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~17_combout\ = (\ID_Checked~input_o\ & \state.WAIT_ID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_Checked~input_o\,
	datad => \state.WAIT_ID~q\,
	combout => \state~17_combout\);

-- Location: FF_X12_Y32_N19
\state.RESULT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RESULT~q\);

-- Location: LCCOMB_X12_Y32_N8
\state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~14_combout\ = (\state.RESULT~q\ & \ID_Matched~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.RESULT~q\,
	datad => \ID_Matched~input_o\,
	combout => \state~14_combout\);

-- Location: FF_X12_Y32_N9
\state.STOREID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STOREID~q\);

ww_STORE_ID <= \STORE_ID~output_o\;

ww_STORE <= \STORE~output_o\;

ww_SEND <= \SEND~output_o\;

ww_NEXT_DAT <= \NEXT_DAT~output_o\;

ww_SEND_REQUEST <= \SEND_REQUEST~output_o\;
END structure;


