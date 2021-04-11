-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "04/01/2021 04:11:08"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Blink IS
    PORT (
	clk : IN std_logic;
	led : OUT std_logic
	);
END Blink;

-- Design Ports Information
-- led	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Blink IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \cnt_rst[0]~_wirecell_combout\ : std_logic;
SIGNAL \cnt_rst[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \cnt_rst[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \dem[0]~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \dem[0]~1_combout\ : std_logic;
SIGNAL \dem[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \rst~0_combout\ : std_logic;
SIGNAL \rst~q\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \status~0_combout\ : std_logic;
SIGNAL \status~q\ : std_logic;
SIGNAL dem : std_logic_vector(13 DOWNTO 0);
SIGNAL cnt_rst : std_logic_vector(13 DOWNTO 0);
SIGNAL cnt : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_dem[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_rst[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_rst[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL ALT_INV_dem : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_status~q\ : std_logic;
SIGNAL ALT_INV_cnt_rst : std_logic_vector(13 DOWNTO 0);
SIGNAL ALT_INV_cnt : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_clk <= clk;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_dem[0]~DUPLICATE_q\ <= NOT \dem[0]~DUPLICATE_q\;
\ALT_INV_cnt_rst[1]~DUPLICATE_q\ <= NOT \cnt_rst[1]~DUPLICATE_q\;
\ALT_INV_cnt_rst[12]~DUPLICATE_q\ <= NOT \cnt_rst[12]~DUPLICATE_q\;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
ALT_INV_dem(11) <= NOT dem(11);
ALT_INV_dem(10) <= NOT dem(10);
ALT_INV_dem(9) <= NOT dem(9);
ALT_INV_dem(8) <= NOT dem(8);
ALT_INV_dem(7) <= NOT dem(7);
ALT_INV_dem(6) <= NOT dem(6);
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
ALT_INV_dem(5) <= NOT dem(5);
ALT_INV_dem(4) <= NOT dem(4);
ALT_INV_dem(3) <= NOT dem(3);
ALT_INV_dem(2) <= NOT dem(2);
ALT_INV_dem(1) <= NOT dem(1);
ALT_INV_dem(0) <= NOT dem(0);
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
ALT_INV_dem(13) <= NOT dem(13);
ALT_INV_dem(12) <= NOT dem(12);
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_rst~q\ <= NOT \rst~q\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_status~q\ <= NOT \status~q\;
ALT_INV_cnt_rst(11) <= NOT cnt_rst(11);
ALT_INV_cnt_rst(10) <= NOT cnt_rst(10);
ALT_INV_cnt_rst(9) <= NOT cnt_rst(9);
ALT_INV_cnt_rst(8) <= NOT cnt_rst(8);
ALT_INV_cnt_rst(7) <= NOT cnt_rst(7);
ALT_INV_cnt_rst(6) <= NOT cnt_rst(6);
ALT_INV_cnt_rst(0) <= NOT cnt_rst(0);
ALT_INV_cnt_rst(1) <= NOT cnt_rst(1);
ALT_INV_cnt_rst(2) <= NOT cnt_rst(2);
ALT_INV_cnt_rst(3) <= NOT cnt_rst(3);
ALT_INV_cnt_rst(4) <= NOT cnt_rst(4);
ALT_INV_cnt_rst(5) <= NOT cnt_rst(5);
ALT_INV_cnt_rst(13) <= NOT cnt_rst(13);
ALT_INV_cnt_rst(12) <= NOT cnt_rst(12);
ALT_INV_cnt(10) <= NOT cnt(10);
ALT_INV_cnt(9) <= NOT cnt(9);
ALT_INV_cnt(8) <= NOT cnt(8);
ALT_INV_cnt(7) <= NOT cnt(7);
ALT_INV_cnt(6) <= NOT cnt(6);
ALT_INV_cnt(5) <= NOT cnt(5);
ALT_INV_cnt(4) <= NOT cnt(4);
ALT_INV_cnt(3) <= NOT cnt(3);
ALT_INV_cnt(2) <= NOT cnt(2);
ALT_INV_cnt(1) <= NOT cnt(1);
ALT_INV_cnt(0) <= NOT cnt(0);
ALT_INV_cnt(11) <= NOT cnt(11);
ALT_INV_cnt(16) <= NOT cnt(16);
ALT_INV_cnt(15) <= NOT cnt(15);
ALT_INV_cnt(14) <= NOT cnt(14);
ALT_INV_cnt(13) <= NOT cnt(13);
ALT_INV_cnt(12) <= NOT cnt(12);
ALT_INV_cnt(25) <= NOT cnt(25);
ALT_INV_cnt(22) <= NOT cnt(22);
ALT_INV_cnt(21) <= NOT cnt(21);
ALT_INV_cnt(20) <= NOT cnt(20);
ALT_INV_cnt(19) <= NOT cnt(19);
ALT_INV_cnt(18) <= NOT cnt(18);
ALT_INV_cnt(17) <= NOT cnt(17);
ALT_INV_cnt(24) <= NOT cnt(24);
ALT_INV_cnt(23) <= NOT cnt(23);

-- Location: IOOBUF_X52_Y0_N2
\led~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \status~q\,
	devoe => ww_devoe,
	o => ww_led);

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X51_Y2_N30
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( cnt(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~62\ = CARRY(( cnt(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(0),
	cin => GND,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: LABCELL_X50_Y3_N54
\cnt_rst[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_rst[0]~_wirecell_combout\ = !cnt_rst(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_rst(0),
	combout => \cnt_rst[0]~_wirecell_combout\);

-- Location: FF_X50_Y3_N56
\cnt_rst[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_rst[0]~_wirecell_combout\,
	asdata => VCC,
	sload => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(0));

-- Location: FF_X50_Y3_N1
\cnt_rst[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	asdata => \cnt_rst[1]~DUPLICATE_q\,
	sload => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_rst[1]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y3_N0
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( \cnt_rst[1]~DUPLICATE_q\ ) + ( cnt_rst(0) ) + ( !VCC ))
-- \Add2~26\ = CARRY(( \cnt_rst[1]~DUPLICATE_q\ ) + ( cnt_rst(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(0),
	datad => \ALT_INV_cnt_rst[1]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X50_Y3_N2
\cnt_rst[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	asdata => \cnt_rst[1]~DUPLICATE_q\,
	sload => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(1));

-- Location: LABCELL_X50_Y3_N3
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( cnt_rst(2) ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~22\ = CARRY(( cnt_rst(2) ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_rst(2),
	cin => \Add2~26\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X50_Y3_N5
\cnt_rst[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	asdata => cnt_rst(2),
	sload => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(2));

-- Location: LABCELL_X50_Y3_N6
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( cnt_rst(3) ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~18\ = CARRY(( cnt_rst(3) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt_rst(3),
	cin => \Add2~22\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X50_Y3_N8
\cnt_rst[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	asdata => cnt_rst(3),
	sload => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(3));

-- Location: LABCELL_X50_Y3_N9
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( cnt_rst(4) ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~14\ = CARRY(( cnt_rst(4) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(4),
	cin => \Add2~18\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X50_Y3_N11
\cnt_rst[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	asdata => cnt_rst(4),
	sload => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(4));

-- Location: LABCELL_X50_Y3_N12
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( cnt_rst(5) ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~10\ = CARRY(( cnt_rst(5) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_rst(5),
	cin => \Add2~14\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X50_Y3_N14
\cnt_rst[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	asdata => cnt_rst(5),
	sload => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(5));

-- Location: LABCELL_X50_Y3_N48
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( cnt_rst(0) & ( !cnt_rst(4) & ( (cnt_rst(1) & (cnt_rst(3) & (cnt_rst(2) & !cnt_rst(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_rst(1),
	datab => ALT_INV_cnt_rst(3),
	datac => ALT_INV_cnt_rst(2),
	datad => ALT_INV_cnt_rst(5),
	datae => ALT_INV_cnt_rst(0),
	dataf => ALT_INV_cnt_rst(4),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X50_Y3_N15
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( cnt_rst(6) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~30\ = CARRY(( cnt_rst(6) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(6),
	cin => \Add2~10\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X50_Y3_N17
\cnt_rst[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	asdata => cnt_rst(6),
	sload => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(6));

-- Location: LABCELL_X50_Y3_N18
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( cnt_rst(7) ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( cnt_rst(7) ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(7),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X50_Y3_N20
\cnt_rst[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	asdata => cnt_rst(7),
	sload => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(7));

-- Location: LABCELL_X50_Y3_N21
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( cnt_rst(8) ) + ( GND ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( cnt_rst(8) ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_rst(8),
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X50_Y3_N23
\cnt_rst[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~37_sumout\,
	asdata => cnt_rst(8),
	sload => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(8));

-- Location: LABCELL_X50_Y3_N24
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( cnt_rst(9) ) + ( GND ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( cnt_rst(9) ) + ( GND ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_rst(9),
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X50_Y3_N26
\cnt_rst[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	asdata => cnt_rst(9),
	sload => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(9));

-- Location: LABCELL_X50_Y3_N27
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( cnt_rst(10) ) + ( GND ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( cnt_rst(10) ) + ( GND ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_rst(10),
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X50_Y3_N29
\cnt_rst[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~45_sumout\,
	asdata => cnt_rst(10),
	sload => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(10));

-- Location: LABCELL_X50_Y3_N30
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( cnt_rst(11) ) + ( GND ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( cnt_rst(11) ) + ( GND ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt_rst(11),
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X50_Y3_N32
\cnt_rst[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~49_sumout\,
	asdata => cnt_rst(11),
	sload => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(11));

-- Location: LABCELL_X50_Y3_N42
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( cnt_rst(10) & ( cnt_rst(9) & ( (cnt_rst(8) & (!cnt_rst(11) & (!cnt_rst(7) & !cnt_rst(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_rst(8),
	datab => ALT_INV_cnt_rst(11),
	datac => ALT_INV_cnt_rst(7),
	datad => ALT_INV_cnt_rst(6),
	datae => ALT_INV_cnt_rst(10),
	dataf => ALT_INV_cnt_rst(9),
	combout => \Equal1~2_combout\);

-- Location: FF_X50_Y3_N35
\cnt_rst[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	asdata => \cnt_rst[12]~DUPLICATE_q\,
	sload => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_rst[12]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y3_N33
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \cnt_rst[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~50\ ))
-- \Add2~2\ = CARRY(( \cnt_rst[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_rst[12]~DUPLICATE_q\,
	cin => \Add2~50\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: FF_X50_Y3_N34
\cnt_rst[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	asdata => \cnt_rst[12]~DUPLICATE_q\,
	sload => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(12));

-- Location: LABCELL_X50_Y3_N36
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( cnt_rst(13) ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_rst(13),
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\);

-- Location: FF_X50_Y3_N37
\cnt_rst[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	asdata => cnt_rst(13),
	sload => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(13));

-- Location: LABCELL_X51_Y3_N51
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( cnt_rst(13) & ( !cnt_rst(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_rst(12),
	dataf => ALT_INV_cnt_rst(13),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X50_Y3_N57
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( \Equal1~0_combout\ & ( (\Equal1~1_combout\ & \Equal1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Equal1~2_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Equal1~3_combout\);

-- Location: FF_X51_Y3_N49
\dem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \dem[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dem(0));

-- Location: LABCELL_X51_Y3_N0
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( dem(1) ) + ( \dem[0]~DUPLICATE_q\ ) + ( !VCC ))
-- \Add1~10\ = CARRY(( dem(1) ) + ( \dem[0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dem[0]~DUPLICATE_q\,
	datad => ALT_INV_dem(1),
	cin => GND,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X51_Y3_N42
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( !dem(10) & ( !dem(11) & ( (!dem(7) & (dem(6) & (!dem(8) & !dem(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dem(7),
	datab => ALT_INV_dem(6),
	datac => ALT_INV_dem(8),
	datad => ALT_INV_dem(9),
	datae => ALT_INV_dem(10),
	dataf => ALT_INV_dem(11),
	combout => \Equal2~2_combout\);

-- Location: LABCELL_X51_Y3_N54
\dem[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dem[0]~0_combout\ = ( \Equal2~1_combout\ & ( \Equal2~2_combout\ & ( (\Equal1~0_combout\ & (\Equal1~1_combout\ & (!\Equal2~0_combout\ & \Equal1~2_combout\))) ) ) ) # ( !\Equal2~1_combout\ & ( \Equal2~2_combout\ & ( (\Equal1~0_combout\ & 
-- (\Equal1~1_combout\ & \Equal1~2_combout\)) ) ) ) # ( \Equal2~1_combout\ & ( !\Equal2~2_combout\ & ( (\Equal1~0_combout\ & (\Equal1~1_combout\ & \Equal1~2_combout\)) ) ) ) # ( !\Equal2~1_combout\ & ( !\Equal2~2_combout\ & ( (\Equal1~0_combout\ & 
-- (\Equal1~1_combout\ & \Equal1~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_Equal1~2_combout\,
	datae => \ALT_INV_Equal2~1_combout\,
	dataf => \ALT_INV_Equal2~2_combout\,
	combout => \dem[0]~0_combout\);

-- Location: FF_X51_Y3_N1
\dem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	ena => \dem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dem(1));

-- Location: MLABCELL_X52_Y3_N42
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( !dem(0) & ( !dem(1) & ( (!dem(3) & (!dem(4) & (dem(5) & dem(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dem(3),
	datab => ALT_INV_dem(4),
	datac => ALT_INV_dem(5),
	datad => ALT_INV_dem(2),
	datae => ALT_INV_dem(0),
	dataf => ALT_INV_dem(1),
	combout => \Equal2~1_combout\);

-- Location: LABCELL_X51_Y3_N48
\dem[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dem[0]~1_combout\ = ( \Equal2~2_combout\ & ( !dem(0) $ (((!\Equal1~3_combout\) # ((\Equal2~0_combout\ & \Equal2~1_combout\)))) ) ) # ( !\Equal2~2_combout\ & ( !\Equal1~3_combout\ $ (!dem(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110010110011010011001011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_Equal1~3_combout\,
	datac => \ALT_INV_Equal2~1_combout\,
	datad => ALT_INV_dem(0),
	dataf => \ALT_INV_Equal2~2_combout\,
	combout => \dem[0]~1_combout\);

-- Location: FF_X51_Y3_N50
\dem[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \dem[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dem[0]~DUPLICATE_q\);

-- Location: LABCELL_X51_Y3_N3
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( dem(2) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( dem(2) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(2),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X51_Y3_N4
\dem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	ena => \dem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dem(2));

-- Location: LABCELL_X51_Y3_N6
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( dem(3) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( dem(3) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(3),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X51_Y3_N7
\dem[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	ena => \dem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dem(3));

-- Location: LABCELL_X51_Y3_N9
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( dem(4) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( dem(4) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(4),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X51_Y3_N10
\dem[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	ena => \dem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dem(4));

-- Location: LABCELL_X51_Y3_N12
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( dem(5) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( dem(5) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(5),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X51_Y3_N13
\dem[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	ena => \dem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dem(5));

-- Location: LABCELL_X51_Y3_N15
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( dem(6) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( dem(6) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(6),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X51_Y3_N17
\dem[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	ena => \dem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dem(6));

-- Location: LABCELL_X51_Y3_N18
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( dem(7) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( dem(7) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(7),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X51_Y3_N20
\dem[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	ena => \dem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dem(7));

-- Location: LABCELL_X51_Y3_N21
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( dem(8) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( dem(8) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(8),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X51_Y3_N23
\dem[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	ena => \dem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dem(8));

-- Location: LABCELL_X51_Y3_N24
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( dem(9) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( dem(9) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(9),
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X51_Y3_N25
\dem[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	ena => \dem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dem(9));

-- Location: LABCELL_X51_Y3_N27
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( dem(10) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( dem(10) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(10),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X51_Y3_N29
\dem[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	ena => \dem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dem(10));

-- Location: LABCELL_X51_Y3_N30
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( dem(11) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( dem(11) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(11),
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X51_Y3_N32
\dem[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	ena => \dem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dem(11));

-- Location: LABCELL_X51_Y3_N33
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( dem(12) ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~2\ = CARRY(( dem(12) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(12),
	cin => \Add1~50\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X51_Y3_N34
\dem[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	ena => \dem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dem(12));

-- Location: LABCELL_X51_Y3_N36
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( dem(13) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(13),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\);

-- Location: FF_X51_Y3_N37
\dem[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	ena => \dem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dem(13));

-- Location: MLABCELL_X52_Y3_N39
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !dem(12) & ( !dem(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_dem(12),
	dataf => ALT_INV_dem(13),
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X51_Y1_N57
\rst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rst~0_combout\ = ( \Equal1~3_combout\ & ( (!\Equal2~0_combout\) # ((!\Equal2~1_combout\) # (!\Equal2~2_combout\)) ) ) # ( !\Equal1~3_combout\ & ( \rst~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_Equal2~1_combout\,
	datac => \ALT_INV_Equal2~2_combout\,
	datad => \ALT_INV_rst~q\,
	dataf => \ALT_INV_Equal1~3_combout\,
	combout => \rst~0_combout\);

-- Location: FF_X51_Y1_N59
rst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rst~q\);

-- Location: LABCELL_X51_Y2_N51
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( cnt(7) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( cnt(7) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(7),
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: LABCELL_X51_Y2_N54
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( cnt(8) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( cnt(8) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(8),
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X51_Y2_N55
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: LABCELL_X51_Y2_N57
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( cnt(9) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( cnt(9) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(9),
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X51_Y2_N59
\cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(9));

-- Location: LABCELL_X51_Y1_N0
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( cnt(10) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( cnt(10) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(10),
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X51_Y1_N1
\cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(10));

-- Location: LABCELL_X51_Y1_N3
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( cnt(11) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~58\ = CARRY(( cnt(11) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(11),
	cin => \Add0~102\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X51_Y1_N5
\cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(11));

-- Location: LABCELL_X51_Y2_N24
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( cnt(4) & ( !cnt(11) & ( (cnt(1) & (cnt(3) & (cnt(2) & cnt(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(1),
	datab => ALT_INV_cnt(3),
	datac => ALT_INV_cnt(2),
	datad => ALT_INV_cnt(0),
	datae => ALT_INV_cnt(4),
	dataf => ALT_INV_cnt(11),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X51_Y1_N6
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( cnt(12) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~38\ = CARRY(( cnt(12) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(12),
	cin => \Add0~58\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X51_Y1_N7
\cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(12));

-- Location: LABCELL_X51_Y1_N9
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( cnt(13) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( cnt(13) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(13),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X51_Y1_N11
\cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(13));

-- Location: LABCELL_X51_Y1_N12
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( cnt(14) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( cnt(14) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(14),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X51_Y1_N14
\cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(14));

-- Location: LABCELL_X51_Y1_N15
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( cnt(15) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( cnt(15) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(15),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X51_Y1_N17
\cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(15));

-- Location: LABCELL_X51_Y1_N18
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( cnt(16) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( cnt(16) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(16),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X51_Y1_N20
\cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(16));

-- Location: LABCELL_X51_Y1_N21
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( cnt(17) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~10\ = CARRY(( cnt(17) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(17),
	cin => \Add0~54\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X51_Y1_N23
\cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(17));

-- Location: LABCELL_X51_Y1_N24
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( cnt(18) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( cnt(18) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(18),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X51_Y1_N26
\cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(18));

-- Location: LABCELL_X51_Y1_N27
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( cnt(19) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( cnt(19) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(19),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X51_Y1_N29
\cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(19));

-- Location: LABCELL_X51_Y1_N30
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( cnt(20) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( cnt(20) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(20),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X51_Y1_N32
\cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(20));

-- Location: LABCELL_X51_Y1_N33
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( cnt(21) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( cnt(21) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(21),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X51_Y1_N35
\cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(21));

-- Location: LABCELL_X51_Y1_N36
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( cnt(22) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( cnt(22) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(22),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X51_Y1_N38
\cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(22));

-- Location: LABCELL_X51_Y1_N39
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( cnt(23) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~2\ = CARRY(( cnt(23) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(23),
	cin => \Add0~30\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X51_Y1_N41
\cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(23));

-- Location: LABCELL_X51_Y1_N42
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( cnt(24) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( cnt(24) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(24),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X51_Y1_N43
\cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(24));

-- Location: LABCELL_X51_Y1_N54
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( cnt(23) & ( !cnt(24) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(24),
	dataf => ALT_INV_cnt(23),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X51_Y1_N45
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( cnt(25) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(25),
	cin => \Add0~6\,
	sumout => \Add0~33_sumout\);

-- Location: FF_X51_Y1_N47
\cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(25));

-- Location: LABCELL_X51_Y1_N51
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( cnt(25) & ( cnt(13) & ( (cnt(12) & (cnt(14) & (cnt(15) & !cnt(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(12),
	datab => ALT_INV_cnt(14),
	datac => ALT_INV_cnt(15),
	datad => ALT_INV_cnt(16),
	datae => ALT_INV_cnt(25),
	dataf => ALT_INV_cnt(13),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X50_Y1_N48
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( cnt(22) & ( cnt(21) & ( (cnt(20) & (cnt(17) & (cnt(19) & !cnt(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(20),
	datab => ALT_INV_cnt(17),
	datac => ALT_INV_cnt(19),
	datad => ALT_INV_cnt(18),
	datae => ALT_INV_cnt(22),
	dataf => ALT_INV_cnt(21),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X51_Y2_N6
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~2_combout\ & ( \Equal0~1_combout\ & ( (\Equal0~3_combout\ & (\Equal0~4_combout\ & \Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datac => \ALT_INV_Equal0~4_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~5_combout\);

-- Location: FF_X51_Y2_N32
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LABCELL_X51_Y2_N33
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( cnt(1) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( cnt(1) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(1),
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X51_Y2_N35
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LABCELL_X51_Y2_N36
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( cnt(2) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( cnt(2) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(2),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X51_Y2_N38
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LABCELL_X51_Y2_N39
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( cnt(3) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( cnt(3) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(3),
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X51_Y2_N41
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LABCELL_X51_Y2_N42
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( cnt(4) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( cnt(4) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(4),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X51_Y2_N43
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LABCELL_X51_Y2_N45
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( cnt(5) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( cnt(5) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(5),
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X51_Y2_N47
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LABCELL_X51_Y2_N48
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( cnt(6) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( cnt(6) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(6),
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X51_Y2_N50
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: FF_X51_Y2_N53
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	clrn => \ALT_INV_rst~q\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: LABCELL_X51_Y2_N0
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( cnt(5) & ( !cnt(10) & ( (!cnt(7) & (!cnt(9) & (cnt(6) & !cnt(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(7),
	datab => ALT_INV_cnt(9),
	datac => ALT_INV_cnt(6),
	datad => ALT_INV_cnt(8),
	datae => ALT_INV_cnt(5),
	dataf => ALT_INV_cnt(10),
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X51_Y2_N18
\status~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \status~0_combout\ = ( \status~q\ & ( \Equal0~3_combout\ & ( (!\Equal0~4_combout\) # ((!\Equal0~2_combout\) # ((!\Equal0~0_combout\) # (!\Equal0~1_combout\))) ) ) ) # ( !\status~q\ & ( \Equal0~3_combout\ & ( (\Equal0~4_combout\ & (\Equal0~2_combout\ & 
-- (\Equal0~0_combout\ & \Equal0~1_combout\))) ) ) ) # ( \status~q\ & ( !\Equal0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_status~q\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \status~0_combout\);

-- Location: FF_X51_Y2_N19
status : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \status~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \status~q\);

-- Location: MLABCELL_X21_Y26_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


