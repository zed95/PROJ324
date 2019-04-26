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

-- DATE "04/26/2019 00:30:24"

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

ENTITY 	Reset_Timer IS
    PORT (
	CLK : IN std_logic;
	Input : IN std_logic;
	Reset : OUT std_logic
	);
END Reset_Timer;

-- Design Ports Information
-- Reset	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Reset_Timer IS
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
SIGNAL ww_Input : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Input~input_o\ : std_logic;
SIGNAL \Counter[0]~32_combout\ : std_logic;
SIGNAL \Counter[5]~34_combout\ : std_logic;
SIGNAL \Counter[0]~33\ : std_logic;
SIGNAL \Counter[1]~35_combout\ : std_logic;
SIGNAL \Counter[1]~36\ : std_logic;
SIGNAL \Counter[2]~37_combout\ : std_logic;
SIGNAL \Counter[2]~38\ : std_logic;
SIGNAL \Counter[3]~39_combout\ : std_logic;
SIGNAL \Counter[3]~40\ : std_logic;
SIGNAL \Counter[4]~41_combout\ : std_logic;
SIGNAL \Counter[4]~42\ : std_logic;
SIGNAL \Counter[5]~43_combout\ : std_logic;
SIGNAL \Counter[5]~44\ : std_logic;
SIGNAL \Counter[6]~45_combout\ : std_logic;
SIGNAL \Counter[6]~46\ : std_logic;
SIGNAL \Counter[7]~47_combout\ : std_logic;
SIGNAL \Counter[7]~48\ : std_logic;
SIGNAL \Counter[8]~49_combout\ : std_logic;
SIGNAL \Counter[8]~50\ : std_logic;
SIGNAL \Counter[9]~51_combout\ : std_logic;
SIGNAL \Counter[9]~52\ : std_logic;
SIGNAL \Counter[10]~53_combout\ : std_logic;
SIGNAL \Counter[10]~54\ : std_logic;
SIGNAL \Counter[11]~55_combout\ : std_logic;
SIGNAL \Counter[11]~56\ : std_logic;
SIGNAL \Counter[12]~57_combout\ : std_logic;
SIGNAL \Counter[12]~58\ : std_logic;
SIGNAL \Counter[13]~59_combout\ : std_logic;
SIGNAL \Counter[13]~60\ : std_logic;
SIGNAL \Counter[14]~61_combout\ : std_logic;
SIGNAL \Counter[14]~62\ : std_logic;
SIGNAL \Counter[15]~63_combout\ : std_logic;
SIGNAL \Counter[15]~64\ : std_logic;
SIGNAL \Counter[16]~65_combout\ : std_logic;
SIGNAL \Counter[16]~66\ : std_logic;
SIGNAL \Counter[17]~67_combout\ : std_logic;
SIGNAL \Counter[17]~68\ : std_logic;
SIGNAL \Counter[18]~69_combout\ : std_logic;
SIGNAL \Counter[18]~70\ : std_logic;
SIGNAL \Counter[19]~71_combout\ : std_logic;
SIGNAL \Counter[19]~72\ : std_logic;
SIGNAL \Counter[20]~73_combout\ : std_logic;
SIGNAL \Counter[20]~74\ : std_logic;
SIGNAL \Counter[21]~75_combout\ : std_logic;
SIGNAL \Counter[21]~76\ : std_logic;
SIGNAL \Counter[22]~77_combout\ : std_logic;
SIGNAL \Counter[22]~78\ : std_logic;
SIGNAL \Counter[23]~79_combout\ : std_logic;
SIGNAL \Counter[23]~80\ : std_logic;
SIGNAL \Counter[24]~81_combout\ : std_logic;
SIGNAL \Counter[24]~82\ : std_logic;
SIGNAL \Counter[25]~83_combout\ : std_logic;
SIGNAL \Counter[25]~84\ : std_logic;
SIGNAL \Counter[26]~85_combout\ : std_logic;
SIGNAL \Counter[26]~86\ : std_logic;
SIGNAL \Counter[27]~87_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Counter[27]~88\ : std_logic;
SIGNAL \Counter[28]~89_combout\ : std_logic;
SIGNAL \Counter[28]~90\ : std_logic;
SIGNAL \Counter[29]~91_combout\ : std_logic;
SIGNAL \Counter[29]~92\ : std_logic;
SIGNAL \Counter[30]~93_combout\ : std_logic;
SIGNAL \Counter[30]~94\ : std_logic;
SIGNAL \Counter[31]~95_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Reset~0_combout\ : std_logic;
SIGNAL \Reset~reg0_q\ : std_logic;
SIGNAL Counter : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_Input <= Input;
Reset <= ww_Reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X14_Y34_N23
\Reset~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reset~reg0_q\,
	devoe => ww_devoe,
	o => \Reset~output_o\);

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

-- Location: IOIBUF_X16_Y34_N15
\Input~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input,
	o => \Input~input_o\);

-- Location: LCCOMB_X14_Y19_N0
\Counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[0]~32_combout\ = Counter(0) $ (VCC)
-- \Counter[0]~33\ = CARRY(Counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Counter(0),
	datad => VCC,
	combout => \Counter[0]~32_combout\,
	cout => \Counter[0]~33\);

-- Location: LCCOMB_X15_Y19_N30
\Counter[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[5]~34_combout\ = (\Input~input_o\) # (!\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input~input_o\,
	datad => \Equal0~10_combout\,
	combout => \Counter[5]~34_combout\);

-- Location: FF_X14_Y19_N1
\Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[0]~32_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(0));

-- Location: LCCOMB_X14_Y19_N2
\Counter[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[1]~35_combout\ = (Counter(1) & (!\Counter[0]~33\)) # (!Counter(1) & ((\Counter[0]~33\) # (GND)))
-- \Counter[1]~36\ = CARRY((!\Counter[0]~33\) # (!Counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(1),
	datad => VCC,
	cin => \Counter[0]~33\,
	combout => \Counter[1]~35_combout\,
	cout => \Counter[1]~36\);

-- Location: FF_X14_Y19_N3
\Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[1]~35_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(1));

-- Location: LCCOMB_X14_Y19_N4
\Counter[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[2]~37_combout\ = (Counter(2) & (\Counter[1]~36\ $ (GND))) # (!Counter(2) & (!\Counter[1]~36\ & VCC))
-- \Counter[2]~38\ = CARRY((Counter(2) & !\Counter[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(2),
	datad => VCC,
	cin => \Counter[1]~36\,
	combout => \Counter[2]~37_combout\,
	cout => \Counter[2]~38\);

-- Location: FF_X14_Y19_N5
\Counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[2]~37_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(2));

-- Location: LCCOMB_X14_Y19_N6
\Counter[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[3]~39_combout\ = (Counter(3) & (!\Counter[2]~38\)) # (!Counter(3) & ((\Counter[2]~38\) # (GND)))
-- \Counter[3]~40\ = CARRY((!\Counter[2]~38\) # (!Counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Counter(3),
	datad => VCC,
	cin => \Counter[2]~38\,
	combout => \Counter[3]~39_combout\,
	cout => \Counter[3]~40\);

-- Location: FF_X14_Y19_N7
\Counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[3]~39_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(3));

-- Location: LCCOMB_X14_Y19_N8
\Counter[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[4]~41_combout\ = (Counter(4) & (\Counter[3]~40\ $ (GND))) # (!Counter(4) & (!\Counter[3]~40\ & VCC))
-- \Counter[4]~42\ = CARRY((Counter(4) & !\Counter[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(4),
	datad => VCC,
	cin => \Counter[3]~40\,
	combout => \Counter[4]~41_combout\,
	cout => \Counter[4]~42\);

-- Location: FF_X14_Y19_N9
\Counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[4]~41_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(4));

-- Location: LCCOMB_X14_Y19_N10
\Counter[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[5]~43_combout\ = (Counter(5) & (!\Counter[4]~42\)) # (!Counter(5) & ((\Counter[4]~42\) # (GND)))
-- \Counter[5]~44\ = CARRY((!\Counter[4]~42\) # (!Counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Counter(5),
	datad => VCC,
	cin => \Counter[4]~42\,
	combout => \Counter[5]~43_combout\,
	cout => \Counter[5]~44\);

-- Location: FF_X14_Y19_N11
\Counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[5]~43_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(5));

-- Location: LCCOMB_X14_Y19_N12
\Counter[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[6]~45_combout\ = (Counter(6) & (\Counter[5]~44\ $ (GND))) # (!Counter(6) & (!\Counter[5]~44\ & VCC))
-- \Counter[6]~46\ = CARRY((Counter(6) & !\Counter[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Counter(6),
	datad => VCC,
	cin => \Counter[5]~44\,
	combout => \Counter[6]~45_combout\,
	cout => \Counter[6]~46\);

-- Location: FF_X14_Y19_N13
\Counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[6]~45_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(6));

-- Location: LCCOMB_X14_Y19_N14
\Counter[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[7]~47_combout\ = (Counter(7) & (!\Counter[6]~46\)) # (!Counter(7) & ((\Counter[6]~46\) # (GND)))
-- \Counter[7]~48\ = CARRY((!\Counter[6]~46\) # (!Counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(7),
	datad => VCC,
	cin => \Counter[6]~46\,
	combout => \Counter[7]~47_combout\,
	cout => \Counter[7]~48\);

-- Location: FF_X14_Y19_N15
\Counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[7]~47_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(7));

-- Location: LCCOMB_X14_Y19_N16
\Counter[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[8]~49_combout\ = (Counter(8) & (\Counter[7]~48\ $ (GND))) # (!Counter(8) & (!\Counter[7]~48\ & VCC))
-- \Counter[8]~50\ = CARRY((Counter(8) & !\Counter[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(8),
	datad => VCC,
	cin => \Counter[7]~48\,
	combout => \Counter[8]~49_combout\,
	cout => \Counter[8]~50\);

-- Location: FF_X14_Y19_N17
\Counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[8]~49_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(8));

-- Location: LCCOMB_X14_Y19_N18
\Counter[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[9]~51_combout\ = (Counter(9) & (!\Counter[8]~50\)) # (!Counter(9) & ((\Counter[8]~50\) # (GND)))
-- \Counter[9]~52\ = CARRY((!\Counter[8]~50\) # (!Counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(9),
	datad => VCC,
	cin => \Counter[8]~50\,
	combout => \Counter[9]~51_combout\,
	cout => \Counter[9]~52\);

-- Location: FF_X14_Y19_N19
\Counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[9]~51_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(9));

-- Location: LCCOMB_X14_Y19_N20
\Counter[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[10]~53_combout\ = (Counter(10) & (\Counter[9]~52\ $ (GND))) # (!Counter(10) & (!\Counter[9]~52\ & VCC))
-- \Counter[10]~54\ = CARRY((Counter(10) & !\Counter[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(10),
	datad => VCC,
	cin => \Counter[9]~52\,
	combout => \Counter[10]~53_combout\,
	cout => \Counter[10]~54\);

-- Location: FF_X14_Y19_N21
\Counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[10]~53_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(10));

-- Location: LCCOMB_X14_Y19_N22
\Counter[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[11]~55_combout\ = (Counter(11) & (!\Counter[10]~54\)) # (!Counter(11) & ((\Counter[10]~54\) # (GND)))
-- \Counter[11]~56\ = CARRY((!\Counter[10]~54\) # (!Counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Counter(11),
	datad => VCC,
	cin => \Counter[10]~54\,
	combout => \Counter[11]~55_combout\,
	cout => \Counter[11]~56\);

-- Location: FF_X14_Y19_N23
\Counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[11]~55_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(11));

-- Location: LCCOMB_X14_Y19_N24
\Counter[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[12]~57_combout\ = (Counter(12) & (\Counter[11]~56\ $ (GND))) # (!Counter(12) & (!\Counter[11]~56\ & VCC))
-- \Counter[12]~58\ = CARRY((Counter(12) & !\Counter[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(12),
	datad => VCC,
	cin => \Counter[11]~56\,
	combout => \Counter[12]~57_combout\,
	cout => \Counter[12]~58\);

-- Location: FF_X14_Y19_N25
\Counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[12]~57_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(12));

-- Location: LCCOMB_X14_Y19_N26
\Counter[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[13]~59_combout\ = (Counter(13) & (!\Counter[12]~58\)) # (!Counter(13) & ((\Counter[12]~58\) # (GND)))
-- \Counter[13]~60\ = CARRY((!\Counter[12]~58\) # (!Counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Counter(13),
	datad => VCC,
	cin => \Counter[12]~58\,
	combout => \Counter[13]~59_combout\,
	cout => \Counter[13]~60\);

-- Location: FF_X14_Y19_N27
\Counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[13]~59_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(13));

-- Location: LCCOMB_X14_Y19_N28
\Counter[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[14]~61_combout\ = (Counter(14) & (\Counter[13]~60\ $ (GND))) # (!Counter(14) & (!\Counter[13]~60\ & VCC))
-- \Counter[14]~62\ = CARRY((Counter(14) & !\Counter[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(14),
	datad => VCC,
	cin => \Counter[13]~60\,
	combout => \Counter[14]~61_combout\,
	cout => \Counter[14]~62\);

-- Location: FF_X14_Y19_N29
\Counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[14]~61_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(14));

-- Location: LCCOMB_X14_Y19_N30
\Counter[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[15]~63_combout\ = (Counter(15) & (!\Counter[14]~62\)) # (!Counter(15) & ((\Counter[14]~62\) # (GND)))
-- \Counter[15]~64\ = CARRY((!\Counter[14]~62\) # (!Counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Counter(15),
	datad => VCC,
	cin => \Counter[14]~62\,
	combout => \Counter[15]~63_combout\,
	cout => \Counter[15]~64\);

-- Location: FF_X14_Y19_N31
\Counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[15]~63_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(15));

-- Location: LCCOMB_X14_Y18_N0
\Counter[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[16]~65_combout\ = (Counter(16) & (\Counter[15]~64\ $ (GND))) # (!Counter(16) & (!\Counter[15]~64\ & VCC))
-- \Counter[16]~66\ = CARRY((Counter(16) & !\Counter[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Counter(16),
	datad => VCC,
	cin => \Counter[15]~64\,
	combout => \Counter[16]~65_combout\,
	cout => \Counter[16]~66\);

-- Location: FF_X15_Y19_N17
\Counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Counter[16]~65_combout\,
	sclr => \Counter[5]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(16));

-- Location: LCCOMB_X14_Y18_N2
\Counter[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[17]~67_combout\ = (Counter(17) & (!\Counter[16]~66\)) # (!Counter(17) & ((\Counter[16]~66\) # (GND)))
-- \Counter[17]~68\ = CARRY((!\Counter[16]~66\) # (!Counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(17),
	datad => VCC,
	cin => \Counter[16]~66\,
	combout => \Counter[17]~67_combout\,
	cout => \Counter[17]~68\);

-- Location: FF_X14_Y18_N3
\Counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[17]~67_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(17));

-- Location: LCCOMB_X14_Y18_N4
\Counter[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[18]~69_combout\ = (Counter(18) & (\Counter[17]~68\ $ (GND))) # (!Counter(18) & (!\Counter[17]~68\ & VCC))
-- \Counter[18]~70\ = CARRY((Counter(18) & !\Counter[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(18),
	datad => VCC,
	cin => \Counter[17]~68\,
	combout => \Counter[18]~69_combout\,
	cout => \Counter[18]~70\);

-- Location: FF_X14_Y18_N5
\Counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[18]~69_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(18));

-- Location: LCCOMB_X14_Y18_N6
\Counter[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[19]~71_combout\ = (Counter(19) & (!\Counter[18]~70\)) # (!Counter(19) & ((\Counter[18]~70\) # (GND)))
-- \Counter[19]~72\ = CARRY((!\Counter[18]~70\) # (!Counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Counter(19),
	datad => VCC,
	cin => \Counter[18]~70\,
	combout => \Counter[19]~71_combout\,
	cout => \Counter[19]~72\);

-- Location: FF_X14_Y18_N7
\Counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[19]~71_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(19));

-- Location: LCCOMB_X14_Y18_N8
\Counter[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[20]~73_combout\ = (Counter(20) & (\Counter[19]~72\ $ (GND))) # (!Counter(20) & (!\Counter[19]~72\ & VCC))
-- \Counter[20]~74\ = CARRY((Counter(20) & !\Counter[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(20),
	datad => VCC,
	cin => \Counter[19]~72\,
	combout => \Counter[20]~73_combout\,
	cout => \Counter[20]~74\);

-- Location: FF_X14_Y18_N9
\Counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[20]~73_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(20));

-- Location: LCCOMB_X14_Y18_N10
\Counter[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[21]~75_combout\ = (Counter(21) & (!\Counter[20]~74\)) # (!Counter(21) & ((\Counter[20]~74\) # (GND)))
-- \Counter[21]~76\ = CARRY((!\Counter[20]~74\) # (!Counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Counter(21),
	datad => VCC,
	cin => \Counter[20]~74\,
	combout => \Counter[21]~75_combout\,
	cout => \Counter[21]~76\);

-- Location: FF_X14_Y18_N11
\Counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[21]~75_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(21));

-- Location: LCCOMB_X14_Y18_N12
\Counter[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[22]~77_combout\ = (Counter(22) & (\Counter[21]~76\ $ (GND))) # (!Counter(22) & (!\Counter[21]~76\ & VCC))
-- \Counter[22]~78\ = CARRY((Counter(22) & !\Counter[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Counter(22),
	datad => VCC,
	cin => \Counter[21]~76\,
	combout => \Counter[22]~77_combout\,
	cout => \Counter[22]~78\);

-- Location: FF_X14_Y18_N13
\Counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[22]~77_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(22));

-- Location: LCCOMB_X14_Y18_N14
\Counter[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[23]~79_combout\ = (Counter(23) & (!\Counter[22]~78\)) # (!Counter(23) & ((\Counter[22]~78\) # (GND)))
-- \Counter[23]~80\ = CARRY((!\Counter[22]~78\) # (!Counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(23),
	datad => VCC,
	cin => \Counter[22]~78\,
	combout => \Counter[23]~79_combout\,
	cout => \Counter[23]~80\);

-- Location: FF_X14_Y18_N15
\Counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[23]~79_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(23));

-- Location: LCCOMB_X14_Y18_N16
\Counter[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[24]~81_combout\ = (Counter(24) & (\Counter[23]~80\ $ (GND))) # (!Counter(24) & (!\Counter[23]~80\ & VCC))
-- \Counter[24]~82\ = CARRY((Counter(24) & !\Counter[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(24),
	datad => VCC,
	cin => \Counter[23]~80\,
	combout => \Counter[24]~81_combout\,
	cout => \Counter[24]~82\);

-- Location: FF_X14_Y18_N17
\Counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[24]~81_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(24));

-- Location: LCCOMB_X14_Y18_N18
\Counter[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[25]~83_combout\ = (Counter(25) & (!\Counter[24]~82\)) # (!Counter(25) & ((\Counter[24]~82\) # (GND)))
-- \Counter[25]~84\ = CARRY((!\Counter[24]~82\) # (!Counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(25),
	datad => VCC,
	cin => \Counter[24]~82\,
	combout => \Counter[25]~83_combout\,
	cout => \Counter[25]~84\);

-- Location: FF_X14_Y18_N19
\Counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[25]~83_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(25));

-- Location: LCCOMB_X14_Y18_N20
\Counter[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[26]~85_combout\ = (Counter(26) & (\Counter[25]~84\ $ (GND))) # (!Counter(26) & (!\Counter[25]~84\ & VCC))
-- \Counter[26]~86\ = CARRY((Counter(26) & !\Counter[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(26),
	datad => VCC,
	cin => \Counter[25]~84\,
	combout => \Counter[26]~85_combout\,
	cout => \Counter[26]~86\);

-- Location: FF_X14_Y18_N21
\Counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[26]~85_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(26));

-- Location: LCCOMB_X14_Y18_N22
\Counter[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[27]~87_combout\ = (Counter(27) & (!\Counter[26]~86\)) # (!Counter(27) & ((\Counter[26]~86\) # (GND)))
-- \Counter[27]~88\ = CARRY((!\Counter[26]~86\) # (!Counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Counter(27),
	datad => VCC,
	cin => \Counter[26]~86\,
	combout => \Counter[27]~87_combout\,
	cout => \Counter[27]~88\);

-- Location: FF_X14_Y18_N23
\Counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[27]~87_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(27));

-- Location: LCCOMB_X15_Y19_N12
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (Counter(26)) # ((Counter(25)) # ((Counter(24)) # (Counter(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(26),
	datab => Counter(25),
	datac => Counter(24),
	datad => Counter(27),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X15_Y19_N26
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (((Counter(4)) # (!Counter(7))) # (!Counter(5))) # (!Counter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(6),
	datab => Counter(5),
	datac => Counter(4),
	datad => Counter(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X15_Y19_N2
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (Counter(13)) # ((Counter(14)) # ((Counter(12)) # (Counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(13),
	datab => Counter(14),
	datac => Counter(12),
	datad => Counter(15),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X15_Y19_N8
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ((Counter(11)) # ((Counter(10)) # (!Counter(9)))) # (!Counter(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(8),
	datab => Counter(11),
	datac => Counter(10),
	datad => Counter(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X15_Y19_N20
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (Counter(0)) # ((Counter(2)) # ((Counter(1)) # (!Counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(0),
	datab => Counter(2),
	datac => Counter(1),
	datad => Counter(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X15_Y19_N4
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\) # ((\Equal0~3_combout\) # ((\Equal0~2_combout\) # (\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X14_Y18_N24
\Counter[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[28]~89_combout\ = (Counter(28) & (\Counter[27]~88\ $ (GND))) # (!Counter(28) & (!\Counter[27]~88\ & VCC))
-- \Counter[28]~90\ = CARRY((Counter(28) & !\Counter[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(28),
	datad => VCC,
	cin => \Counter[27]~88\,
	combout => \Counter[28]~89_combout\,
	cout => \Counter[28]~90\);

-- Location: FF_X14_Y18_N25
\Counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[28]~89_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(28));

-- Location: LCCOMB_X14_Y18_N26
\Counter[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[29]~91_combout\ = (Counter(29) & (!\Counter[28]~90\)) # (!Counter(29) & ((\Counter[28]~90\) # (GND)))
-- \Counter[29]~92\ = CARRY((!\Counter[28]~90\) # (!Counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Counter(29),
	datad => VCC,
	cin => \Counter[28]~90\,
	combout => \Counter[29]~91_combout\,
	cout => \Counter[29]~92\);

-- Location: FF_X14_Y18_N27
\Counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[29]~91_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(29));

-- Location: LCCOMB_X14_Y18_N28
\Counter[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[30]~93_combout\ = (Counter(30) & (\Counter[29]~92\ $ (GND))) # (!Counter(30) & (!\Counter[29]~92\ & VCC))
-- \Counter[30]~94\ = CARRY((Counter(30) & !\Counter[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(30),
	datad => VCC,
	cin => \Counter[29]~92\,
	combout => \Counter[30]~93_combout\,
	cout => \Counter[30]~94\);

-- Location: FF_X14_Y18_N29
\Counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[30]~93_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(30));

-- Location: LCCOMB_X14_Y18_N30
\Counter[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter[31]~95_combout\ = Counter(31) $ (\Counter[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Counter(31),
	cin => \Counter[30]~94\,
	combout => \Counter[31]~95_combout\);

-- Location: FF_X14_Y18_N31
\Counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Counter[31]~95_combout\,
	sclr => \Counter[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(31));

-- Location: LCCOMB_X15_Y19_N14
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (Counter(30)) # ((Counter(29)) # ((Counter(31)) # (Counter(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(30),
	datab => Counter(29),
	datac => Counter(31),
	datad => Counter(28),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X15_Y19_N22
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (Counter(19)) # ((Counter(16)) # ((Counter(17)) # (Counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(19),
	datab => Counter(16),
	datac => Counter(17),
	datad => Counter(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X15_Y19_N28
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (Counter(20)) # (Counter(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Counter(20),
	datad => Counter(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X15_Y19_N18
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (Counter(23)) # ((Counter(22)) # ((\Equal0~5_combout\) # (\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(23),
	datab => Counter(22),
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X15_Y19_N24
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~8_combout\) # ((\Equal0~4_combout\) # ((\Equal0~9_combout\) # (\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X15_Y19_N6
\Reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reset~0_combout\ = (!\Input~input_o\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input~input_o\,
	datac => \Equal0~10_combout\,
	combout => \Reset~0_combout\);

-- Location: FF_X15_Y19_N7
\Reset~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Reset~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reset~reg0_q\);

ww_Reset <= \Reset~output_o\;
END structure;


