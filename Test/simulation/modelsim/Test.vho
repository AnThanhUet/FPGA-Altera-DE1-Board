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

-- DATE "04/02/2021 05:00:15"

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

ENTITY 	Test IS
    PORT (
	led_0 : BUFFER std_logic_vector(6 DOWNTO 0);
	sw1 : IN std_logic
	);
END Test;

-- Design Ports Information
-- led_0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sw1 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sw1~input_o\ : std_logic;
SIGNAL \sw1~inputCLKENA0_outclk\ : std_logic;
SIGNAL \value[0]~3_combout\ : std_logic;
SIGNAL \value[2]~DUPLICATE_q\ : std_logic;
SIGNAL \value~2_combout\ : std_logic;
SIGNAL \value[3]~DUPLICATE_q\ : std_logic;
SIGNAL \value~0_combout\ : std_logic;
SIGNAL \value[2]~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL value : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_value[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_value[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sw1~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL ALT_INV_value : std_logic_vector(3 DOWNTO 0);

BEGIN

led_0 <= ww_led_0;
ww_sw1 <= sw1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_value[3]~DUPLICATE_q\ <= NOT \value[3]~DUPLICATE_q\;
\ALT_INV_value[2]~DUPLICATE_q\ <= NOT \value[2]~DUPLICATE_q\;
\ALT_INV_sw1~inputCLKENA0_outclk\ <= NOT \sw1~inputCLKENA0_outclk\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
ALT_INV_value(3) <= NOT value(3);
ALT_INV_value(2) <= NOT value(2);
ALT_INV_value(1) <= NOT value(1);
ALT_INV_value(0) <= NOT value(0);

-- Location: IOOBUF_X89_Y8_N39
\led_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_led_0(0));

-- Location: IOOBUF_X89_Y11_N79
\led_0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_led_0(1));

-- Location: IOOBUF_X89_Y11_N96
\led_0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_led_0(2));

-- Location: IOOBUF_X89_Y4_N79
\led_0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_led_0(3));

-- Location: IOOBUF_X89_Y13_N56
\led_0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_led_0(4));

-- Location: IOOBUF_X89_Y13_N39
\led_0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_led_0(5));

-- Location: IOOBUF_X89_Y4_N96
\led_0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_led_0(6));

-- Location: IOIBUF_X36_Y0_N1
\sw1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1,
	o => \sw1~input_o\);

-- Location: CLKCTRL_G6
\sw1~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \sw1~input_o\,
	outclk => \sw1~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y11_N24
\value[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \value[0]~3_combout\ = ( !value(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_value(0),
	combout => \value[0]~3_combout\);

-- Location: FF_X88_Y11_N26
\value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sw1~inputCLKENA0_outclk\,
	d => \value[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => value(0));

-- Location: FF_X88_Y11_N17
\value[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sw1~inputCLKENA0_outclk\,
	d => \value[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \value[2]~DUPLICATE_q\);

-- Location: FF_X88_Y11_N46
\value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sw1~inputCLKENA0_outclk\,
	d => \value~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => value(3));

-- Location: LABCELL_X88_Y11_N45
\value~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \value~2_combout\ = ( value(3) & ( value(1) & ( (!\value[2]~DUPLICATE_q\) # (!value(0)) ) ) ) # ( !value(3) & ( value(1) & ( (\value[2]~DUPLICATE_q\ & value(0)) ) ) ) # ( value(3) & ( !value(1) & ( (!value(0)) # (\value[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_value[2]~DUPLICATE_q\,
	datad => ALT_INV_value(0),
	datae => ALT_INV_value(3),
	dataf => ALT_INV_value(1),
	combout => \value~2_combout\);

-- Location: FF_X88_Y11_N47
\value[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sw1~inputCLKENA0_outclk\,
	d => \value~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \value[3]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y11_N18
\value~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \value~0_combout\ = ( value(2) & ( !value(0) $ (!value(1)) ) ) # ( !value(2) & ( (!value(0) & ((value(1)))) # (value(0) & (!\value[3]~DUPLICATE_q\ & !value(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011110000000011001111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_value[3]~DUPLICATE_q\,
	datac => ALT_INV_value(0),
	datad => ALT_INV_value(1),
	dataf => ALT_INV_value(2),
	combout => \value~0_combout\);

-- Location: FF_X88_Y11_N19
\value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sw1~inputCLKENA0_outclk\,
	d => \value~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => value(1));

-- Location: LABCELL_X88_Y11_N15
\value[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \value[2]~1_combout\ = ( value(2) & ( value(1) & ( !value(0) ) ) ) # ( !value(2) & ( value(1) & ( value(0) ) ) ) # ( value(2) & ( !value(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_value(0),
	datae => ALT_INV_value(2),
	dataf => ALT_INV_value(1),
	combout => \value[2]~1_combout\);

-- Location: FF_X88_Y11_N16
\value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sw1~inputCLKENA0_outclk\,
	d => \value[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => value(2));

-- Location: LABCELL_X88_Y11_N48
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( value(0) & ( !value(1) & ( (!value(2) & !value(3)) ) ) ) # ( !value(0) & ( !value(1) & ( (value(2) & !value(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_value(2),
	datad => ALT_INV_value(3),
	datae => ALT_INV_value(0),
	dataf => ALT_INV_value(1),
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X88_Y11_N0
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( !value(0) & ( value(1) & ( value(2) ) ) ) # ( value(0) & ( !value(1) & ( value(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_value(2),
	datae => ALT_INV_value(0),
	dataf => ALT_INV_value(1),
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X88_Y11_N9
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( !value(0) & ( value(1) & ( !value(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_value(2),
	datae => ALT_INV_value(0),
	dataf => ALT_INV_value(1),
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X88_Y11_N21
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( value(1) & ( (!\value[3]~DUPLICATE_q\ & (value(2) & value(0))) ) ) # ( !value(1) & ( (!\value[3]~DUPLICATE_q\ & (!value(2) $ (!value(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_value[3]~DUPLICATE_q\,
	datac => ALT_INV_value(2),
	datad => ALT_INV_value(0),
	dataf => ALT_INV_value(1),
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X88_Y11_N36
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( value(0) & ( value(1) ) ) # ( value(0) & ( !value(1) ) ) # ( !value(0) & ( !value(1) & ( value(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_value(2),
	datae => ALT_INV_value(0),
	dataf => ALT_INV_value(1),
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X88_Y11_N30
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( value(0) & ( value(1) & ( !value(3) ) ) ) # ( !value(0) & ( value(1) & ( (!value(2) & !value(3)) ) ) ) # ( value(0) & ( !value(1) & ( (!value(2) & !value(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011000000110000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_value(2),
	datac => ALT_INV_value(3),
	datae => ALT_INV_value(0),
	dataf => ALT_INV_value(1),
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X88_Y11_N57
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( value(0) & ( value(3) ) ) # ( !value(0) & ( value(3) ) ) # ( value(0) & ( !value(3) & ( !value(2) $ (!value(1)) ) ) ) # ( !value(0) & ( !value(3) & ( (value(1)) # (value(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111000011110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_value(2),
	datac => ALT_INV_value(1),
	datae => ALT_INV_value(0),
	dataf => ALT_INV_value(3),
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X28_Y26_N3
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


