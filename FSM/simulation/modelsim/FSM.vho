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

-- DATE "04/08/2021 02:52:05"

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

ENTITY 	FSM IS
    PORT (
	clk : IN std_logic;
	led_hex0 : OUT std_logic_vector(6 DOWNTO 0);
	led_hex1 : OUT std_logic_vector(6 DOWNTO 0);
	led_hex2 : OUT std_logic_vector(6 DOWNTO 0);
	led_hex3 : OUT std_logic_vector(6 DOWNTO 0);
	led_hex4 : OUT std_logic_vector(6 DOWNTO 0);
	led_hex5 : OUT std_logic_vector(6 DOWNTO 0);
	key0 : IN std_logic;
	key1 : IN std_logic;
	key2 : IN std_logic;
	key3 : IN std_logic
	);
END FSM;

-- Design Ports Information
-- led_hex0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hex5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key0	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key2	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key1	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key3	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FSM IS
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
SIGNAL ww_led_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_key0 : std_logic;
SIGNAL ww_key1 : std_logic;
SIGNAL ww_key2 : std_logic;
SIGNAL ww_key3 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \key2~input_o\ : std_logic;
SIGNAL \Selector8~5_combout\ : std_logic;
SIGNAL \key3~input_o\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~6_combout\ : std_logic;
SIGNAL \cnt_rst[0]~_wirecell_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \cnt_rst[1]~feeder_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
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
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \swing[0]~0_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \swing[0]~1_combout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \rst~0_combout\ : std_logic;
SIGNAL \rst~q\ : std_logic;
SIGNAL \state.hour~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector8~3_combout\ : std_logic;
SIGNAL \state.sec~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector8~4_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \state.min~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \state.ok~q\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \cnt_hex1[2]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \Check_button_sec|enable~0_combout\ : std_logic;
SIGNAL \Check_button_sec|enable~q\ : std_logic;
SIGNAL \Check_button_sec|check~0_combout\ : std_logic;
SIGNAL \Check_button_sec|check~q\ : std_logic;
SIGNAL \Add8~61_sumout\ : std_logic;
SIGNAL \Add8~6\ : std_logic;
SIGNAL \Add8~33_sumout\ : std_logic;
SIGNAL \counter[0]~0_combout\ : std_logic;
SIGNAL \Add8~34\ : std_logic;
SIGNAL \Add8~1_sumout\ : std_logic;
SIGNAL \Add8~2\ : std_logic;
SIGNAL \Add8~29_sumout\ : std_logic;
SIGNAL \Add8~30\ : std_logic;
SIGNAL \Add8~25_sumout\ : std_logic;
SIGNAL \Add8~26\ : std_logic;
SIGNAL \Add8~21_sumout\ : std_logic;
SIGNAL \Add8~22\ : std_logic;
SIGNAL \Add8~17_sumout\ : std_logic;
SIGNAL \Add8~18\ : std_logic;
SIGNAL \Add8~13_sumout\ : std_logic;
SIGNAL \Add8~14\ : std_logic;
SIGNAL \Add8~9_sumout\ : std_logic;
SIGNAL \Add8~10\ : std_logic;
SIGNAL \Add8~53_sumout\ : std_logic;
SIGNAL \Add8~54\ : std_logic;
SIGNAL \Add8~49_sumout\ : std_logic;
SIGNAL \Add8~50\ : std_logic;
SIGNAL \Add8~45_sumout\ : std_logic;
SIGNAL \Add8~46\ : std_logic;
SIGNAL \Add8~41_sumout\ : std_logic;
SIGNAL \Add8~42\ : std_logic;
SIGNAL \Add8~37_sumout\ : std_logic;
SIGNAL \Add8~38\ : std_logic;
SIGNAL \Add8~57_sumout\ : std_logic;
SIGNAL \Add8~58\ : std_logic;
SIGNAL \Add8~101_sumout\ : std_logic;
SIGNAL \Add8~102\ : std_logic;
SIGNAL \Add8~97_sumout\ : std_logic;
SIGNAL \Add8~98\ : std_logic;
SIGNAL \Add8~93_sumout\ : std_logic;
SIGNAL \Add8~94\ : std_logic;
SIGNAL \Add8~89_sumout\ : std_logic;
SIGNAL \Add8~90\ : std_logic;
SIGNAL \Add8~85_sumout\ : std_logic;
SIGNAL \Add8~86\ : std_logic;
SIGNAL \Add8~81_sumout\ : std_logic;
SIGNAL \Add8~82\ : std_logic;
SIGNAL \Add8~77_sumout\ : std_logic;
SIGNAL \Add8~78\ : std_logic;
SIGNAL \Add8~73_sumout\ : std_logic;
SIGNAL \Add8~74\ : std_logic;
SIGNAL \Add8~69_sumout\ : std_logic;
SIGNAL \Add8~70\ : std_logic;
SIGNAL \Add8~65_sumout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Equal6~4_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal6~5_combout\ : std_logic;
SIGNAL \Add8~62\ : std_logic;
SIGNAL \Add8~5_sumout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \cnt_hex4[3]~0_combout\ : std_logic;
SIGNAL \cnt_hex1[3]~0_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \cnt_hex1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \cnt_hex1[1]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_hex0[3]~0_combout\ : std_logic;
SIGNAL \cnt_hex0[3]~1_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \cnt_hex0[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \led0|WideOr5~combout\ : std_logic;
SIGNAL \led0|WideOr4~0_combout\ : std_logic;
SIGNAL \led0|led_hex~0_combout\ : std_logic;
SIGNAL \led0|WideOr3~0_combout\ : std_logic;
SIGNAL \led0|WideOr2~0_combout\ : std_logic;
SIGNAL \led0|WideOr1~0_combout\ : std_logic;
SIGNAL \led0|WideOr0~0_combout\ : std_logic;
SIGNAL \led1|WideOr5~combout\ : std_logic;
SIGNAL \led1|WideOr4~0_combout\ : std_logic;
SIGNAL \led1|Equal0~0_combout\ : std_logic;
SIGNAL \led1|led_hex[2]~feeder_combout\ : std_logic;
SIGNAL \led1|WideOr3~0_combout\ : std_logic;
SIGNAL \led1|WideOr2~0_combout\ : std_logic;
SIGNAL \led1|WideOr1~0_combout\ : std_logic;
SIGNAL \led1|WideOr0~0_combout\ : std_logic;
SIGNAL \Check_button_min|enable~0_combout\ : std_logic;
SIGNAL \Check_button_min|enable~q\ : std_logic;
SIGNAL \Check_button_min|check~0_combout\ : std_logic;
SIGNAL \Check_button_min|check~q\ : std_logic;
SIGNAL \cnt_hex3[3]~0_combout\ : std_logic;
SIGNAL \cnt_hex3[3]~1_combout\ : std_logic;
SIGNAL \cnt_hex3[0]~4_combout\ : std_logic;
SIGNAL \cnt_hex3[1]~3_combout\ : std_logic;
SIGNAL \cnt_hex2[0]~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \cnt_hex2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \cnt_hex2[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \cnt_hex2[3]~DUPLICATE_q\ : std_logic;
SIGNAL \led2|Equal0~0_combout\ : std_logic;
SIGNAL \cnt_hex3[0]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_hex3[2]~2_combout\ : std_logic;
SIGNAL \cnt_hex3[2]~DUPLICATE_q\ : std_logic;
SIGNAL \led3|WideOr0~1_combout\ : std_logic;
SIGNAL \cnt_hex2[0]~1_combout\ : std_logic;
SIGNAL \cnt_hex2[0]~2_combout\ : std_logic;
SIGNAL \cnt_hex2[0]~DUPLICATE_q\ : std_logic;
SIGNAL \led2|WideOr5~combout\ : std_logic;
SIGNAL \led2|WideOr4~0_combout\ : std_logic;
SIGNAL \led2|led_hex~0_combout\ : std_logic;
SIGNAL \led2|WideOr3~0_combout\ : std_logic;
SIGNAL \led2|WideOr2~0_combout\ : std_logic;
SIGNAL \led2|WideOr1~0_combout\ : std_logic;
SIGNAL \led2|WideOr0~0_combout\ : std_logic;
SIGNAL \led3|WideOr5~combout\ : std_logic;
SIGNAL \cnt_hex3[1]~DUPLICATE_q\ : std_logic;
SIGNAL \led3|WideOr4~0_combout\ : std_logic;
SIGNAL \led3|Equal0~0_combout\ : std_logic;
SIGNAL \led3|WideOr3~0_combout\ : std_logic;
SIGNAL \led3|WideOr2~0_combout\ : std_logic;
SIGNAL \led3|WideOr1~0_combout\ : std_logic;
SIGNAL \led3|WideOr0~0_combout\ : std_logic;
SIGNAL \Check_button_hour|enable~0_combout\ : std_logic;
SIGNAL \Check_button_hour|enable~q\ : std_logic;
SIGNAL \Check_button_hour|check~0_combout\ : std_logic;
SIGNAL \Check_button_hour|check~q\ : std_logic;
SIGNAL \cnt_hex4[3]~7_combout\ : std_logic;
SIGNAL \led0|Equal0~0_combout\ : std_logic;
SIGNAL \cnt_hex4[3]~4_combout\ : std_logic;
SIGNAL \cnt_hex4[3]~5_combout\ : std_logic;
SIGNAL \cnt_hex4[3]~8_combout\ : std_logic;
SIGNAL \cnt_hex5[1]~6_combout\ : std_logic;
SIGNAL \cnt_hex5[1]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_hex5[0]~5_combout\ : std_logic;
SIGNAL \cnt_hex5[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \cnt_hex5[3]~2_combout\ : std_logic;
SIGNAL \cnt_hex5[3]~DUPLICATE_q\ : std_logic;
SIGNAL \led5|Equal0~0_combout\ : std_logic;
SIGNAL \cnt_hex5[1]~0_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \cnt_hex5[2]~3_combout\ : std_logic;
SIGNAL \cnt_hex5[1]~1_combout\ : std_logic;
SIGNAL \cnt_hex5[1]~4_combout\ : std_logic;
SIGNAL \led5|Equal0~1_combout\ : std_logic;
SIGNAL \cnt_hex4[3]~9_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \led4|Equal0~1_combout\ : std_logic;
SIGNAL \cnt_hex4[3]~3_combout\ : std_logic;
SIGNAL \cnt_hex4[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \led4|Equal0~0_combout\ : std_logic;
SIGNAL \cnt_hex4[3]~6_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \cnt_hex4[0]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_hex4[3]~1_combout\ : std_logic;
SIGNAL \cnt_hex4[3]~2_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \led4|WideOr3~0_combout\ : std_logic;
SIGNAL \led4|WideOr4~0_combout\ : std_logic;
SIGNAL \led4|led_hex~0_combout\ : std_logic;
SIGNAL \led4|WideOr3~combout\ : std_logic;
SIGNAL \led4|WideOr2~0_combout\ : std_logic;
SIGNAL \led4|WideOr1~0_combout\ : std_logic;
SIGNAL \led4|WideOr0~0_combout\ : std_logic;
SIGNAL \led5|WideOr5~combout\ : std_logic;
SIGNAL \led5|WideOr4~0_combout\ : std_logic;
SIGNAL \led5|led_hex~0_combout\ : std_logic;
SIGNAL \led5|WideOr3~0_combout\ : std_logic;
SIGNAL \led5|WideOr2~0_combout\ : std_logic;
SIGNAL \led5|WideOr1~combout\ : std_logic;
SIGNAL \led5|WideOr0~0_combout\ : std_logic;
SIGNAL cnt_hex5 : std_logic_vector(3 DOWNTO 0);
SIGNAL cnt_hex4 : std_logic_vector(3 DOWNTO 0);
SIGNAL cnt_hex3 : std_logic_vector(3 DOWNTO 0);
SIGNAL counter : std_logic_vector(25 DOWNTO 0);
SIGNAL cnt_hex2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \led5|led_hex\ : std_logic_vector(6 DOWNTO 0);
SIGNAL cnt_rst : std_logic_vector(9 DOWNTO 0);
SIGNAL \led0|led_hex\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \led1|led_hex\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \led4|led_hex\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \led2|led_hex\ : std_logic_vector(6 DOWNTO 0);
SIGNAL cnt_hex0 : std_logic_vector(3 DOWNTO 0);
SIGNAL swing : std_logic_vector(9 DOWNTO 0);
SIGNAL \led3|led_hex\ : std_logic_vector(6 DOWNTO 0);
SIGNAL cnt_hex1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_cnt_hex5[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex5[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex5[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex4[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex4[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex3[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex3[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex3[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex2[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex2[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex2[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex1[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex1[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex0[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_key3~input_o\ : std_logic;
SIGNAL \ALT_INV_key1~input_o\ : std_logic;
SIGNAL \ALT_INV_key2~input_o\ : std_logic;
SIGNAL \ALT_INV_key0~input_o\ : std_logic;
SIGNAL \Check_button_hour|ALT_INV_enable~q\ : std_logic;
SIGNAL \ALT_INV_Selector8~5_combout\ : std_logic;
SIGNAL \Check_button_min|ALT_INV_enable~q\ : std_logic;
SIGNAL \ALT_INV_Selector9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~4_combout\ : std_logic;
SIGNAL \Check_button_sec|ALT_INV_enable~q\ : std_logic;
SIGNAL \ALT_INV_Selector8~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_combout\ : std_logic;
SIGNAL \ALT_INV_cnt_hex5[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_cnt_hex5[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_combout\ : std_logic;
SIGNAL \ALT_INV_cnt_hex4[3]~8_combout\ : std_logic;
SIGNAL \ALT_INV_cnt_hex4[3]~7_combout\ : std_logic;
SIGNAL \Check_button_hour|ALT_INV_check~q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex4[3]~6_combout\ : std_logic;
SIGNAL \ALT_INV_cnt_hex4[3]~5_combout\ : std_logic;
SIGNAL \ALT_INV_cnt_hex4[3]~4_combout\ : std_logic;
SIGNAL \led0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_cnt_hex4[3]~3_combout\ : std_logic;
SIGNAL \led5|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \led4|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_cnt_hex4[3]~2_combout\ : std_logic;
SIGNAL \led4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_cnt_hex4[3]~1_combout\ : std_logic;
SIGNAL \led5|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \ALT_INV_cnt_hex3[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_state.hour~q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex3[3]~0_combout\ : std_logic;
SIGNAL \Check_button_min|ALT_INV_check~q\ : std_logic;
SIGNAL \led2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \led3|ALT_INV_WideOr0~1_combout\ : std_logic;
SIGNAL \ALT_INV_cnt_hex2[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.min~q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex4[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL ALT_INV_swing : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_cnt_hex0[3]~1_combout\ : std_logic;
SIGNAL \Check_button_sec|ALT_INV_check~q\ : std_logic;
SIGNAL \ALT_INV_Equal6~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.sec~q\ : std_logic;
SIGNAL \ALT_INV_state.ok~q\ : std_logic;
SIGNAL ALT_INV_cnt_hex5 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_cnt_hex4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_cnt_hex3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ALT_INV_cnt_hex2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \led1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_cnt_hex1 : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_rst~q\ : std_logic;
SIGNAL ALT_INV_cnt_hex0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \led5|ALT_INV_led_hex\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \led4|ALT_INV_led_hex\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \led3|ALT_INV_led_hex\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \led2|ALT_INV_led_hex\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \led1|ALT_INV_led_hex\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \led0|ALT_INV_led_hex\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \ALT_INV_cnt_hex5[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL ALT_INV_cnt_rst : std_logic_vector(9 DOWNTO 0);
SIGNAL ALT_INV_counter : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_clk <= clk;
led_hex0 <= ww_led_hex0;
led_hex1 <= ww_led_hex1;
led_hex2 <= ww_led_hex2;
led_hex3 <= ww_led_hex3;
led_hex4 <= ww_led_hex4;
led_hex5 <= ww_led_hex5;
ww_key0 <= key0;
ww_key1 <= key1;
ww_key2 <= key2;
ww_key3 <= key3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_cnt_hex5[0]~DUPLICATE_q\ <= NOT \cnt_hex5[0]~DUPLICATE_q\;
\ALT_INV_cnt_hex5[1]~DUPLICATE_q\ <= NOT \cnt_hex5[1]~DUPLICATE_q\;
\ALT_INV_cnt_hex5[3]~DUPLICATE_q\ <= NOT \cnt_hex5[3]~DUPLICATE_q\;
\ALT_INV_cnt_hex4[3]~DUPLICATE_q\ <= NOT \cnt_hex4[3]~DUPLICATE_q\;
\ALT_INV_cnt_hex4[0]~DUPLICATE_q\ <= NOT \cnt_hex4[0]~DUPLICATE_q\;
\ALT_INV_cnt_hex3[0]~DUPLICATE_q\ <= NOT \cnt_hex3[0]~DUPLICATE_q\;
\ALT_INV_cnt_hex3[1]~DUPLICATE_q\ <= NOT \cnt_hex3[1]~DUPLICATE_q\;
\ALT_INV_cnt_hex3[2]~DUPLICATE_q\ <= NOT \cnt_hex3[2]~DUPLICATE_q\;
\ALT_INV_cnt_hex2[0]~DUPLICATE_q\ <= NOT \cnt_hex2[0]~DUPLICATE_q\;
\ALT_INV_cnt_hex2[1]~DUPLICATE_q\ <= NOT \cnt_hex2[1]~DUPLICATE_q\;
\ALT_INV_cnt_hex2[2]~DUPLICATE_q\ <= NOT \cnt_hex2[2]~DUPLICATE_q\;
\ALT_INV_cnt_hex2[3]~DUPLICATE_q\ <= NOT \cnt_hex2[3]~DUPLICATE_q\;
\ALT_INV_cnt_hex1[0]~DUPLICATE_q\ <= NOT \cnt_hex1[0]~DUPLICATE_q\;
\ALT_INV_cnt_hex1[1]~DUPLICATE_q\ <= NOT \cnt_hex1[1]~DUPLICATE_q\;
\ALT_INV_cnt_hex1[2]~DUPLICATE_q\ <= NOT \cnt_hex1[2]~DUPLICATE_q\;
\ALT_INV_cnt_hex0[2]~DUPLICATE_q\ <= NOT \cnt_hex0[2]~DUPLICATE_q\;
\ALT_INV_key3~input_o\ <= NOT \key3~input_o\;
\ALT_INV_key1~input_o\ <= NOT \key1~input_o\;
\ALT_INV_key2~input_o\ <= NOT \key2~input_o\;
\ALT_INV_key0~input_o\ <= NOT \key0~input_o\;
\Check_button_hour|ALT_INV_enable~q\ <= NOT \Check_button_hour|enable~q\;
\ALT_INV_Selector8~5_combout\ <= NOT \Selector8~5_combout\;
\Check_button_min|ALT_INV_enable~q\ <= NOT \Check_button_min|enable~q\;
\ALT_INV_Selector9~1_combout\ <= NOT \Selector9~1_combout\;
\ALT_INV_Selector9~0_combout\ <= NOT \Selector9~0_combout\;
\ALT_INV_Selector8~4_combout\ <= NOT \Selector8~4_combout\;
\Check_button_sec|ALT_INV_enable~q\ <= NOT \Check_button_sec|enable~q\;
\ALT_INV_Selector8~2_combout\ <= NOT \Selector8~2_combout\;
\ALT_INV_Selector8~1_combout\ <= NOT \Selector8~1_combout\;
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
\ALT_INV_Add2~1_combout\ <= NOT \Add2~1_combout\;
\ALT_INV_cnt_hex5[1]~1_combout\ <= NOT \cnt_hex5[1]~1_combout\;
\ALT_INV_cnt_hex5[1]~0_combout\ <= NOT \cnt_hex5[1]~0_combout\;
\ALT_INV_Add2~0_combout\ <= NOT \Add2~0_combout\;
\ALT_INV_Add3~2_combout\ <= NOT \Add3~2_combout\;
\ALT_INV_Add3~1_combout\ <= NOT \Add3~1_combout\;
\ALT_INV_cnt_hex4[3]~8_combout\ <= NOT \cnt_hex4[3]~8_combout\;
\ALT_INV_cnt_hex4[3]~7_combout\ <= NOT \cnt_hex4[3]~7_combout\;
\Check_button_hour|ALT_INV_check~q\ <= NOT \Check_button_hour|check~q\;
\ALT_INV_cnt_hex4[3]~6_combout\ <= NOT \cnt_hex4[3]~6_combout\;
\ALT_INV_cnt_hex4[3]~5_combout\ <= NOT \cnt_hex4[3]~5_combout\;
\ALT_INV_cnt_hex4[3]~4_combout\ <= NOT \cnt_hex4[3]~4_combout\;
\led0|ALT_INV_Equal0~0_combout\ <= NOT \led0|Equal0~0_combout\;
\ALT_INV_cnt_hex4[3]~3_combout\ <= NOT \cnt_hex4[3]~3_combout\;
\led5|ALT_INV_Equal0~1_combout\ <= NOT \led5|Equal0~1_combout\;
\led4|ALT_INV_Equal0~1_combout\ <= NOT \led4|Equal0~1_combout\;
\ALT_INV_cnt_hex4[3]~2_combout\ <= NOT \cnt_hex4[3]~2_combout\;
\led4|ALT_INV_Equal0~0_combout\ <= NOT \led4|Equal0~0_combout\;
\ALT_INV_cnt_hex4[3]~1_combout\ <= NOT \cnt_hex4[3]~1_combout\;
\led5|ALT_INV_Equal0~0_combout\ <= NOT \led5|Equal0~0_combout\;
\ALT_INV_Add3~0_combout\ <= NOT \Add3~0_combout\;
\ALT_INV_cnt_hex3[3]~1_combout\ <= NOT \cnt_hex3[3]~1_combout\;
\ALT_INV_state.hour~q\ <= NOT \state.hour~q\;
\ALT_INV_cnt_hex3[3]~0_combout\ <= NOT \cnt_hex3[3]~0_combout\;
\Check_button_min|ALT_INV_check~q\ <= NOT \Check_button_min|check~q\;
\led2|ALT_INV_Equal0~0_combout\ <= NOT \led2|Equal0~0_combout\;
\led3|ALT_INV_WideOr0~1_combout\ <= NOT \led3|WideOr0~1_combout\;
\ALT_INV_cnt_hex2[0]~0_combout\ <= NOT \cnt_hex2[0]~0_combout\;
\ALT_INV_state.min~q\ <= NOT \state.min~q\;
\ALT_INV_cnt_hex4[3]~0_combout\ <= NOT \cnt_hex4[3]~0_combout\;
\ALT_INV_LessThan4~0_combout\ <= NOT \LessThan4~0_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
ALT_INV_swing(9) <= NOT swing(9);
ALT_INV_swing(8) <= NOT swing(8);
ALT_INV_swing(7) <= NOT swing(7);
ALT_INV_swing(6) <= NOT swing(6);
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
ALT_INV_swing(4) <= NOT swing(4);
ALT_INV_swing(3) <= NOT swing(3);
ALT_INV_swing(2) <= NOT swing(2);
ALT_INV_swing(1) <= NOT swing(1);
ALT_INV_swing(0) <= NOT swing(0);
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_swing(5) <= NOT swing(5);
\ALT_INV_cnt_hex0[3]~1_combout\ <= NOT \cnt_hex0[3]~1_combout\;
\Check_button_sec|ALT_INV_check~q\ <= NOT \Check_button_sec|check~q\;
\ALT_INV_Equal6~5_combout\ <= NOT \Equal6~5_combout\;
\ALT_INV_Equal6~4_combout\ <= NOT \Equal6~4_combout\;
\ALT_INV_Equal6~3_combout\ <= NOT \Equal6~3_combout\;
\ALT_INV_Equal6~2_combout\ <= NOT \Equal6~2_combout\;
\ALT_INV_Equal6~1_combout\ <= NOT \Equal6~1_combout\;
\ALT_INV_Equal6~0_combout\ <= NOT \Equal6~0_combout\;
\ALT_INV_state.sec~q\ <= NOT \state.sec~q\;
\ALT_INV_state.ok~q\ <= NOT \state.ok~q\;
ALT_INV_cnt_hex5(0) <= NOT cnt_hex5(0);
ALT_INV_cnt_hex5(1) <= NOT cnt_hex5(1);
ALT_INV_cnt_hex5(2) <= NOT cnt_hex5(2);
ALT_INV_cnt_hex5(3) <= NOT cnt_hex5(3);
ALT_INV_cnt_hex4(2) <= NOT cnt_hex4(2);
ALT_INV_cnt_hex4(3) <= NOT cnt_hex4(3);
ALT_INV_cnt_hex4(0) <= NOT cnt_hex4(0);
ALT_INV_cnt_hex4(1) <= NOT cnt_hex4(1);
ALT_INV_cnt_hex3(0) <= NOT cnt_hex3(0);
ALT_INV_cnt_hex3(1) <= NOT cnt_hex3(1);
ALT_INV_cnt_hex3(2) <= NOT cnt_hex3(2);
ALT_INV_cnt_hex2(0) <= NOT cnt_hex2(0);
ALT_INV_cnt_hex2(1) <= NOT cnt_hex2(1);
ALT_INV_cnt_hex2(2) <= NOT cnt_hex2(2);
ALT_INV_cnt_hex2(3) <= NOT cnt_hex2(3);
\led1|ALT_INV_Equal0~0_combout\ <= NOT \led1|Equal0~0_combout\;
ALT_INV_cnt_hex1(0) <= NOT cnt_hex1(0);
ALT_INV_cnt_hex1(1) <= NOT cnt_hex1(1);
ALT_INV_cnt_hex1(2) <= NOT cnt_hex1(2);
\ALT_INV_rst~q\ <= NOT \rst~q\;
ALT_INV_cnt_hex0(0) <= NOT cnt_hex0(0);
ALT_INV_cnt_hex0(1) <= NOT cnt_hex0(1);
ALT_INV_cnt_hex0(2) <= NOT cnt_hex0(2);
ALT_INV_cnt_hex0(3) <= NOT cnt_hex0(3);
\led5|ALT_INV_led_hex\(6) <= NOT \led5|led_hex\(6);
\led4|ALT_INV_led_hex\(6) <= NOT \led4|led_hex\(6);
\led3|ALT_INV_led_hex\(6) <= NOT \led3|led_hex\(6);
\led2|ALT_INV_led_hex\(6) <= NOT \led2|led_hex\(6);
\led1|ALT_INV_led_hex\(6) <= NOT \led1|led_hex\(6);
\led0|ALT_INV_led_hex\(6) <= NOT \led0|led_hex\(6);
\ALT_INV_cnt_hex5[1]~6_combout\ <= NOT \cnt_hex5[1]~6_combout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
ALT_INV_cnt_rst(9) <= NOT cnt_rst(9);
ALT_INV_cnt_rst(8) <= NOT cnt_rst(8);
ALT_INV_cnt_rst(7) <= NOT cnt_rst(7);
ALT_INV_cnt_rst(6) <= NOT cnt_rst(6);
ALT_INV_cnt_rst(5) <= NOT cnt_rst(5);
ALT_INV_cnt_rst(4) <= NOT cnt_rst(4);
ALT_INV_cnt_rst(3) <= NOT cnt_rst(3);
ALT_INV_cnt_rst(2) <= NOT cnt_rst(2);
ALT_INV_cnt_rst(1) <= NOT cnt_rst(1);
ALT_INV_cnt_rst(0) <= NOT cnt_rst(0);
ALT_INV_counter(16) <= NOT counter(16);
ALT_INV_counter(17) <= NOT counter(17);
ALT_INV_counter(18) <= NOT counter(18);
ALT_INV_counter(19) <= NOT counter(19);
ALT_INV_counter(20) <= NOT counter(20);
ALT_INV_counter(21) <= NOT counter(21);
ALT_INV_counter(22) <= NOT counter(22);
ALT_INV_counter(23) <= NOT counter(23);
ALT_INV_counter(24) <= NOT counter(24);
ALT_INV_counter(25) <= NOT counter(25);
ALT_INV_counter(0) <= NOT counter(0);
ALT_INV_counter(15) <= NOT counter(15);
ALT_INV_counter(10) <= NOT counter(10);
ALT_INV_counter(11) <= NOT counter(11);
ALT_INV_counter(12) <= NOT counter(12);
ALT_INV_counter(13) <= NOT counter(13);
ALT_INV_counter(14) <= NOT counter(14);
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(4) <= NOT counter(4);
ALT_INV_counter(5) <= NOT counter(5);
ALT_INV_counter(6) <= NOT counter(6);
ALT_INV_counter(7) <= NOT counter(7);
ALT_INV_counter(8) <= NOT counter(8);
ALT_INV_counter(9) <= NOT counter(9);
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(3) <= NOT counter(3);

-- Location: IOOBUF_X89_Y8_N39
\led_hex0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led0|led_hex\(0),
	devoe => ww_devoe,
	o => ww_led_hex0(0));

-- Location: IOOBUF_X89_Y11_N79
\led_hex0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led0|led_hex\(1),
	devoe => ww_devoe,
	o => ww_led_hex0(1));

-- Location: IOOBUF_X89_Y11_N96
\led_hex0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led0|led_hex\(2),
	devoe => ww_devoe,
	o => ww_led_hex0(2));

-- Location: IOOBUF_X89_Y4_N79
\led_hex0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led0|led_hex\(3),
	devoe => ww_devoe,
	o => ww_led_hex0(3));

-- Location: IOOBUF_X89_Y13_N56
\led_hex0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led0|led_hex\(4),
	devoe => ww_devoe,
	o => ww_led_hex0(4));

-- Location: IOOBUF_X89_Y13_N39
\led_hex0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led0|led_hex\(5),
	devoe => ww_devoe,
	o => ww_led_hex0(5));

-- Location: IOOBUF_X89_Y4_N96
\led_hex0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led0|ALT_INV_led_hex\(6),
	devoe => ww_devoe,
	o => ww_led_hex0(6));

-- Location: IOOBUF_X89_Y6_N39
\led_hex1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led1|led_hex\(0),
	devoe => ww_devoe,
	o => ww_led_hex1(0));

-- Location: IOOBUF_X89_Y6_N56
\led_hex1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led1|led_hex\(1),
	devoe => ww_devoe,
	o => ww_led_hex1(1));

-- Location: IOOBUF_X89_Y16_N39
\led_hex1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led1|led_hex\(2),
	devoe => ww_devoe,
	o => ww_led_hex1(2));

-- Location: IOOBUF_X89_Y16_N56
\led_hex1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led1|led_hex\(3),
	devoe => ww_devoe,
	o => ww_led_hex1(3));

-- Location: IOOBUF_X89_Y15_N39
\led_hex1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led1|led_hex\(4),
	devoe => ww_devoe,
	o => ww_led_hex1(4));

-- Location: IOOBUF_X89_Y15_N56
\led_hex1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led1|led_hex\(5),
	devoe => ww_devoe,
	o => ww_led_hex1(5));

-- Location: IOOBUF_X89_Y8_N56
\led_hex1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led1|ALT_INV_led_hex\(6),
	devoe => ww_devoe,
	o => ww_led_hex1(6));

-- Location: IOOBUF_X89_Y9_N22
\led_hex2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led2|led_hex\(0),
	devoe => ww_devoe,
	o => ww_led_hex2(0));

-- Location: IOOBUF_X89_Y23_N39
\led_hex2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led2|led_hex\(1),
	devoe => ww_devoe,
	o => ww_led_hex2(1));

-- Location: IOOBUF_X89_Y23_N56
\led_hex2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led2|led_hex\(2),
	devoe => ww_devoe,
	o => ww_led_hex2(2));

-- Location: IOOBUF_X89_Y20_N79
\led_hex2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led2|led_hex\(3),
	devoe => ww_devoe,
	o => ww_led_hex2(3));

-- Location: IOOBUF_X89_Y25_N39
\led_hex2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led2|led_hex\(4),
	devoe => ww_devoe,
	o => ww_led_hex2(4));

-- Location: IOOBUF_X89_Y20_N96
\led_hex2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led2|led_hex\(5),
	devoe => ww_devoe,
	o => ww_led_hex2(5));

-- Location: IOOBUF_X89_Y25_N56
\led_hex2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led2|ALT_INV_led_hex\(6),
	devoe => ww_devoe,
	o => ww_led_hex2(6));

-- Location: IOOBUF_X89_Y16_N5
\led_hex3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led3|led_hex\(0),
	devoe => ww_devoe,
	o => ww_led_hex3(0));

-- Location: IOOBUF_X89_Y16_N22
\led_hex3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led3|led_hex\(1),
	devoe => ww_devoe,
	o => ww_led_hex3(1));

-- Location: IOOBUF_X89_Y4_N45
\led_hex3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led3|led_hex\(2),
	devoe => ww_devoe,
	o => ww_led_hex3(2));

-- Location: IOOBUF_X89_Y4_N62
\led_hex3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led3|led_hex\(3),
	devoe => ww_devoe,
	o => ww_led_hex3(3));

-- Location: IOOBUF_X89_Y21_N39
\led_hex3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led3|led_hex\(4),
	devoe => ww_devoe,
	o => ww_led_hex3(4));

-- Location: IOOBUF_X89_Y11_N62
\led_hex3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led3|led_hex\(5),
	devoe => ww_devoe,
	o => ww_led_hex3(5));

-- Location: IOOBUF_X89_Y9_N5
\led_hex3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led3|ALT_INV_led_hex\(6),
	devoe => ww_devoe,
	o => ww_led_hex3(6));

-- Location: IOOBUF_X89_Y11_N45
\led_hex4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led4|led_hex\(0),
	devoe => ww_devoe,
	o => ww_led_hex4(0));

-- Location: IOOBUF_X89_Y13_N5
\led_hex4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led4|led_hex\(1),
	devoe => ww_devoe,
	o => ww_led_hex4(1));

-- Location: IOOBUF_X89_Y13_N22
\led_hex4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led4|led_hex\(2),
	devoe => ww_devoe,
	o => ww_led_hex4(2));

-- Location: IOOBUF_X89_Y8_N22
\led_hex4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led4|led_hex\(3),
	devoe => ww_devoe,
	o => ww_led_hex4(3));

-- Location: IOOBUF_X89_Y15_N22
\led_hex4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led4|led_hex\(4),
	devoe => ww_devoe,
	o => ww_led_hex4(4));

-- Location: IOOBUF_X89_Y15_N5
\led_hex4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led4|led_hex\(5),
	devoe => ww_devoe,
	o => ww_led_hex4(5));

-- Location: IOOBUF_X89_Y20_N45
\led_hex4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led4|ALT_INV_led_hex\(6),
	devoe => ww_devoe,
	o => ww_led_hex4(6));

-- Location: IOOBUF_X89_Y20_N62
\led_hex5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led5|led_hex\(0),
	devoe => ww_devoe,
	o => ww_led_hex5(0));

-- Location: IOOBUF_X89_Y21_N56
\led_hex5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led5|led_hex\(1),
	devoe => ww_devoe,
	o => ww_led_hex5(1));

-- Location: IOOBUF_X89_Y25_N22
\led_hex5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led5|led_hex\(2),
	devoe => ww_devoe,
	o => ww_led_hex5(2));

-- Location: IOOBUF_X89_Y23_N22
\led_hex5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led5|led_hex\(3),
	devoe => ww_devoe,
	o => ww_led_hex5(3));

-- Location: IOOBUF_X89_Y9_N56
\led_hex5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led5|led_hex\(4),
	devoe => ww_devoe,
	o => ww_led_hex5(4));

-- Location: IOOBUF_X89_Y23_N5
\led_hex5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led5|led_hex\(5),
	devoe => ww_devoe,
	o => ww_led_hex5(5));

-- Location: IOOBUF_X89_Y9_N39
\led_hex5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led5|ALT_INV_led_hex\(6),
	devoe => ww_devoe,
	o => ww_led_hex5(6));

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

-- Location: IOIBUF_X36_Y0_N1
\key0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key0,
	o => \key0~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\key1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key1,
	o => \key1~input_o\);

-- Location: LABCELL_X85_Y14_N54
\Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = ( \key0~input_o\ & ( ((!\state.min~q\ & \state.ok~q\)) # (\key1~input_o\) ) ) # ( !\key0~input_o\ & ( (!\state.min~q\ & (!\state.sec~q\ & ((\state.ok~q\) # (\key1~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000001010100000000000111011001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.min~q\,
	datab => \ALT_INV_key1~input_o\,
	datac => \ALT_INV_state.ok~q\,
	datad => \ALT_INV_state.sec~q\,
	dataf => \ALT_INV_key0~input_o\,
	combout => \Selector8~1_combout\);

-- Location: IOIBUF_X40_Y0_N1
\key2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key2,
	o => \key2~input_o\);

-- Location: LABCELL_X85_Y14_N42
\Selector8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~5_combout\ = ( \state.ok~q\ & ( \state.hour~q\ & ( (\key0~input_o\ & (\key1~input_o\ & \key2~input_o\)) ) ) ) # ( !\state.ok~q\ & ( \state.hour~q\ & ( (\key0~input_o\ & (\key1~input_o\ & \key2~input_o\)) ) ) ) # ( \state.ok~q\ & ( 
-- !\state.hour~q\ & ( (!\key0~input_o\) # ((!\state.sec~q\) # (\key2~input_o\)) ) ) ) # ( !\state.ok~q\ & ( !\state.hour~q\ & ( ((!\key1~input_o\ & ((!\key0~input_o\) # (!\state.sec~q\)))) # (\key2~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111110001111111111111010111100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0~input_o\,
	datab => \ALT_INV_key1~input_o\,
	datac => \ALT_INV_key2~input_o\,
	datad => \ALT_INV_state.sec~q\,
	datae => \ALT_INV_state.ok~q\,
	dataf => \ALT_INV_state.hour~q\,
	combout => \Selector8~5_combout\);

-- Location: IOIBUF_X40_Y0_N18
\key3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key3,
	o => \key3~input_o\);

-- Location: LABCELL_X85_Y14_N12
\Selector8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = ( \state.min~q\ & ( \state.hour~q\ & ( (!\key3~input_o\) # ((!\key1~input_o\) # ((!\key2~input_o\) # (!\key0~input_o\))) ) ) ) # ( !\state.min~q\ & ( \state.hour~q\ & ( (!\key1~input_o\) # ((!\key2~input_o\) # (!\key0~input_o\)) ) 
-- ) ) # ( \state.min~q\ & ( !\state.hour~q\ & ( (!\key3~input_o\ & (\key1~input_o\ & \key0~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010001011111111111111001111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key3~input_o\,
	datab => \ALT_INV_key1~input_o\,
	datac => \ALT_INV_key2~input_o\,
	datad => \ALT_INV_key0~input_o\,
	datae => \ALT_INV_state.min~q\,
	dataf => \ALT_INV_state.hour~q\,
	combout => \Selector8~2_combout\);

-- Location: LABCELL_X85_Y14_N30
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \state.ok~q\ & ( \key0~input_o\ & ( (\state.sec~q\ & ((!\key2~input_o\) # (!\key3~input_o\))) ) ) ) # ( !\state.ok~q\ & ( \key0~input_o\ & ( (!\key2~input_o\ & (((\state.sec~q\)) # (\key1~input_o\))) # (\key2~input_o\ & 
-- (!\key3~input_o\ & ((\state.sec~q\) # (\key1~input_o\)))) ) ) ) # ( !\state.ok~q\ & ( !\key0~input_o\ & ( (\key1~input_o\ & ((!\key2~input_o\) # (!\key3~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010000000000000000000110010111110100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key2~input_o\,
	datab => \ALT_INV_key1~input_o\,
	datac => \ALT_INV_key3~input_o\,
	datad => \ALT_INV_state.sec~q\,
	datae => \ALT_INV_state.ok~q\,
	dataf => \ALT_INV_key0~input_o\,
	combout => \Selector8~0_combout\);

-- Location: LABCELL_X88_Y14_N3
\Selector8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~6_combout\ = ( \Selector8~0_combout\ & ( (\Selector8~1_combout\ & \Selector8~5_combout\) ) ) # ( !\Selector8~0_combout\ & ( (\Selector8~1_combout\ & ((!\Selector8~2_combout\ & ((\state.hour~q\))) # (\Selector8~2_combout\ & 
-- (\Selector8~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000000010101000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector8~1_combout\,
	datab => \ALT_INV_Selector8~5_combout\,
	datac => \ALT_INV_Selector8~2_combout\,
	datad => \ALT_INV_state.hour~q\,
	dataf => \ALT_INV_Selector8~0_combout\,
	combout => \Selector8~6_combout\);

-- Location: MLABCELL_X84_Y15_N3
\cnt_rst[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_rst[0]~_wirecell_combout\ = ( !cnt_rst(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_cnt_rst(0),
	combout => \cnt_rst[0]~_wirecell_combout\);

-- Location: LABCELL_X85_Y15_N45
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !cnt_rst(3) & ( cnt_rst(1) & ( (cnt_rst(2) & (cnt_rst(5) & (!cnt_rst(4) & cnt_rst(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_rst(2),
	datab => ALT_INV_cnt_rst(5),
	datac => ALT_INV_cnt_rst(4),
	datad => ALT_INV_cnt_rst(0),
	datae => ALT_INV_cnt_rst(3),
	dataf => ALT_INV_cnt_rst(1),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X85_Y15_N30
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \Equal0~0_combout\ & ( \Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X84_Y15_N4
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
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(0));

-- Location: LABCELL_X85_Y15_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( cnt_rst(1) ) + ( cnt_rst(0) ) + ( !VCC ))
-- \Add1~2\ = CARRY(( cnt_rst(1) ) + ( cnt_rst(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt_rst(1),
	dataf => ALT_INV_cnt_rst(0),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: MLABCELL_X84_Y15_N18
\cnt_rst[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_rst[1]~feeder_combout\ = ( \Add1~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~1_sumout\,
	combout => \cnt_rst[1]~feeder_combout\);

-- Location: FF_X84_Y15_N19
\cnt_rst[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_rst[1]~feeder_combout\,
	asdata => cnt_rst(1),
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(1));

-- Location: LABCELL_X85_Y15_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( cnt_rst(2) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( cnt_rst(2) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_rst(2),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X85_Y15_N5
\cnt_rst[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	asdata => cnt_rst(2),
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(2));

-- Location: LABCELL_X85_Y15_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( cnt_rst(3) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( cnt_rst(3) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_rst(3),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X85_Y15_N7
\cnt_rst[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	asdata => cnt_rst(3),
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(3));

-- Location: LABCELL_X85_Y15_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( cnt_rst(4) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( cnt_rst(4) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(4),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X85_Y15_N11
\cnt_rst[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	asdata => cnt_rst(4),
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(4));

-- Location: LABCELL_X85_Y15_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( cnt_rst(5) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( cnt_rst(5) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt_rst(5),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X85_Y15_N14
\cnt_rst[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	asdata => cnt_rst(5),
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(5));

-- Location: LABCELL_X85_Y15_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( cnt_rst(6) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( cnt_rst(6) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(6),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X85_Y15_N17
\cnt_rst[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	asdata => cnt_rst(6),
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(6));

-- Location: LABCELL_X85_Y15_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( cnt_rst(7) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( cnt_rst(7) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(7),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X85_Y15_N20
\cnt_rst[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	asdata => cnt_rst(7),
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(7));

-- Location: LABCELL_X85_Y15_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( cnt_rst(8) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( cnt_rst(8) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_rst(8),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X85_Y15_N23
\cnt_rst[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	asdata => cnt_rst(8),
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(8));

-- Location: LABCELL_X85_Y15_N24
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( cnt_rst(9) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(9),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\);

-- Location: FF_X85_Y15_N26
\cnt_rst[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	asdata => cnt_rst(9),
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(9));

-- Location: LABCELL_X85_Y15_N48
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( cnt_rst(8) & ( cnt_rst(7) & ( (cnt_rst(6) & cnt_rst(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt_rst(6),
	datac => ALT_INV_cnt_rst(9),
	datae => ALT_INV_cnt_rst(8),
	dataf => ALT_INV_cnt_rst(7),
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X87_Y15_N36
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( swing(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( swing(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_swing(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: MLABCELL_X87_Y15_N39
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( swing(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( swing(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_swing(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: MLABCELL_X87_Y15_N27
\swing[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \swing[0]~0_combout\ = ( \Equal1~0_combout\ & ( \Equal0~1_combout\ & ( (\Equal0~0_combout\ & ((!swing(5)) # (!\Equal1~1_combout\))) ) ) ) # ( !\Equal1~0_combout\ & ( \Equal0~1_combout\ & ( \Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_swing(5),
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \swing[0]~0_combout\);

-- Location: FF_X87_Y15_N41
\swing[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(4));

-- Location: MLABCELL_X87_Y15_N42
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( swing(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~2\ = CARRY(( swing(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_swing(5),
	cin => \Add0~18\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X87_Y15_N44
\swing[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(5));

-- Location: MLABCELL_X87_Y15_N45
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( swing(6) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~22\ = CARRY(( swing(6) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_swing(6),
	cin => \Add0~2\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X87_Y15_N47
\swing[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(6));

-- Location: MLABCELL_X87_Y15_N48
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( swing(7) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( swing(7) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_swing(7),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X87_Y15_N50
\swing[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(7));

-- Location: MLABCELL_X87_Y15_N51
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( swing(8) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( swing(8) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_swing(8),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X87_Y15_N53
\swing[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(8));

-- Location: MLABCELL_X87_Y15_N54
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( swing(9) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_swing(9),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\);

-- Location: FF_X87_Y15_N56
\swing[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(9));

-- Location: MLABCELL_X87_Y15_N9
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !swing(9) & ( !swing(7) & ( (!swing(8) & swing(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_swing(8),
	datab => ALT_INV_swing(6),
	datae => ALT_INV_swing(9),
	dataf => ALT_INV_swing(7),
	combout => \Equal1~1_combout\);

-- Location: MLABCELL_X87_Y15_N21
\swing[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \swing[0]~1_combout\ = ( swing(0) & ( swing(5) & ( (!\Equal0~1_combout\) # ((!\Equal0~0_combout\) # ((\Equal1~1_combout\ & \Equal1~0_combout\))) ) ) ) # ( !swing(0) & ( swing(5) & ( (\Equal0~1_combout\ & (\Equal0~0_combout\ & ((!\Equal1~1_combout\) # 
-- (!\Equal1~0_combout\)))) ) ) ) # ( swing(0) & ( !swing(5) & ( (!\Equal0~1_combout\) # (!\Equal0~0_combout\) ) ) ) # ( !swing(0) & ( !swing(5) & ( (\Equal0~1_combout\ & \Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111110101111101000000101000001001111101011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => ALT_INV_swing(0),
	dataf => ALT_INV_swing(5),
	combout => \swing[0]~1_combout\);

-- Location: FF_X87_Y15_N23
\swing[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \swing[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(0));

-- Location: MLABCELL_X87_Y15_N30
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( swing(1) ) + ( swing(0) ) + ( !VCC ))
-- \Add0~6\ = CARRY(( swing(1) ) + ( swing(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_swing(0),
	datad => ALT_INV_swing(1),
	cin => GND,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X87_Y15_N32
\swing[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(1));

-- Location: MLABCELL_X87_Y15_N33
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( swing(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( swing(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_swing(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X87_Y15_N35
\swing[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(2));

-- Location: FF_X87_Y15_N38
\swing[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(3));

-- Location: MLABCELL_X87_Y15_N3
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !swing(0) & ( swing(2) & ( (!swing(3) & (!swing(1) & !swing(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_swing(3),
	datab => ALT_INV_swing(1),
	datac => ALT_INV_swing(4),
	datae => ALT_INV_swing(0),
	dataf => ALT_INV_swing(2),
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X87_Y14_N12
\rst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rst~0_combout\ = ( \rst~q\ & ( \Equal1~1_combout\ & ( (!\Equal1~0_combout\) # ((!\Equal0~1_combout\) # ((!swing(5)) # (!\Equal0~0_combout\))) ) ) ) # ( !\rst~q\ & ( \Equal1~1_combout\ & ( (\Equal0~1_combout\ & (\Equal0~0_combout\ & ((!\Equal1~0_combout\) 
-- # (!swing(5))))) ) ) ) # ( \rst~q\ & ( !\Equal1~1_combout\ ) ) # ( !\rst~q\ & ( !\Equal1~1_combout\ & ( (\Equal0~1_combout\ & \Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111111111111100000000001100101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => ALT_INV_swing(5),
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_rst~q\,
	dataf => \ALT_INV_Equal1~1_combout\,
	combout => \rst~0_combout\);

-- Location: FF_X87_Y14_N14
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

-- Location: FF_X88_Y14_N5
\state.hour\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector8~6_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.hour~q\);

-- Location: LABCELL_X85_Y14_N57
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \state.hour~q\ & ( (!\key1~input_o\ & ((!\state.ok~q\) # (\key0~input_o\))) ) ) # ( !\state.hour~q\ & ( (!\key1~input_o\ & ((!\state.ok~q\) # ((\state.min~q\ & \key0~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000100110011000000010011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.min~q\,
	datab => \ALT_INV_key1~input_o\,
	datac => \ALT_INV_key0~input_o\,
	datad => \ALT_INV_state.ok~q\,
	dataf => \ALT_INV_state.hour~q\,
	combout => \Selector10~0_combout\);

-- Location: LABCELL_X85_Y14_N3
\Selector8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~3_combout\ = ( \Selector8~2_combout\ ) # ( !\Selector8~2_combout\ & ( (!\Selector8~1_combout\) # (\Selector8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector8~0_combout\,
	datad => \ALT_INV_Selector8~1_combout\,
	dataf => \ALT_INV_Selector8~2_combout\,
	combout => \Selector8~3_combout\);

-- Location: FF_X85_Y14_N59
\state.sec\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector10~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.sec~q\);

-- Location: LABCELL_X85_Y14_N18
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\key0~input_o\ & (((!\key1~input_o\ & !\state.ok~q\)) # (\state.sec~q\))) # (\key0~input_o\ & (!\key1~input_o\ & (!\state.ok~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011101010110000001110101011000000111010101100000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0~input_o\,
	datab => \ALT_INV_key1~input_o\,
	datac => \ALT_INV_state.ok~q\,
	datad => \ALT_INV_state.sec~q\,
	combout => \Selector9~0_combout\);

-- Location: LABCELL_X85_Y14_N21
\Selector8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~4_combout\ = (\key0~input_o\ & \key1~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0~input_o\,
	datab => \ALT_INV_key1~input_o\,
	combout => \Selector8~4_combout\);

-- Location: LABCELL_X85_Y14_N24
\Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = ( \state.ok~q\ & ( \state.hour~q\ & ( (!\key2~input_o\ & (\key1~input_o\ & \key0~input_o\)) ) ) ) # ( !\state.ok~q\ & ( \state.hour~q\ & ( (!\key2~input_o\ & (\key1~input_o\ & \key0~input_o\)) ) ) ) # ( \state.ok~q\ & ( 
-- !\state.hour~q\ & ( (!\key2~input_o\ & (\key0~input_o\ & \state.sec~q\)) ) ) ) # ( !\state.ok~q\ & ( !\state.hour~q\ & ( (!\key2~input_o\ & (((\key0~input_o\ & \state.sec~q\)) # (\key1~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101010000000000000101000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key2~input_o\,
	datab => \ALT_INV_key1~input_o\,
	datac => \ALT_INV_key0~input_o\,
	datad => \ALT_INV_state.sec~q\,
	datae => \ALT_INV_state.ok~q\,
	dataf => \ALT_INV_state.hour~q\,
	combout => \Selector9~1_combout\);

-- Location: MLABCELL_X87_Y14_N18
\Selector9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = ( \state.min~q\ & ( \Selector9~1_combout\ & ( !\Selector9~0_combout\ ) ) ) # ( !\state.min~q\ & ( \Selector9~1_combout\ & ( (!\Selector9~0_combout\ & ((\Selector8~0_combout\) # (\Selector8~2_combout\))) ) ) ) # ( \state.min~q\ & ( 
-- !\Selector9~1_combout\ & ( (!\Selector9~0_combout\ & (\Selector8~4_combout\ & (!\Selector8~2_combout\ & !\Selector8~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000001010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector9~0_combout\,
	datab => \ALT_INV_Selector8~4_combout\,
	datac => \ALT_INV_Selector8~2_combout\,
	datad => \ALT_INV_Selector8~0_combout\,
	datae => \ALT_INV_state.min~q\,
	dataf => \ALT_INV_Selector9~1_combout\,
	combout => \Selector9~2_combout\);

-- Location: FF_X87_Y14_N20
\state.min\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector9~2_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.min~q\);

-- Location: LABCELL_X85_Y14_N0
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( \state.hour~q\ & ( \key0~input_o\ ) ) # ( !\state.hour~q\ & ( ((!\state.min~q\ & !\state.sec~q\)) # (\key0~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100001111101011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.min~q\,
	datac => \ALT_INV_key0~input_o\,
	datad => \ALT_INV_state.sec~q\,
	dataf => \ALT_INV_state.hour~q\,
	combout => \Selector11~0_combout\);

-- Location: FF_X85_Y14_N2
\state.ok\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector11~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \Selector8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ok~q\);

-- Location: MLABCELL_X87_Y12_N9
\Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = ( cnt_hex0(1) & ( !\cnt_hex0[3]~1_combout\ & ( !cnt_hex0(0) ) ) ) # ( !cnt_hex0(1) & ( !\cnt_hex0[3]~1_combout\ & ( cnt_hex0(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_hex0(0),
	datae => ALT_INV_cnt_hex0(1),
	dataf => \ALT_INV_cnt_hex0[3]~1_combout\,
	combout => \Selector22~0_combout\);

-- Location: FF_X87_Y13_N10
\cnt_hex1[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector25~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex1[2]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y12_N21
\LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ( \cnt_hex1[2]~DUPLICATE_q\ & ( \cnt_hex1[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt_hex1[1]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex1[2]~DUPLICATE_q\,
	combout => \LessThan4~0_combout\);

-- Location: LABCELL_X88_Y14_N18
\Check_button_sec|enable~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Check_button_sec|enable~0_combout\ = !\key1~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key1~input_o\,
	combout => \Check_button_sec|enable~0_combout\);

-- Location: FF_X88_Y14_N19
\Check_button_sec|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Check_button_sec|enable~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check_button_sec|enable~q\);

-- Location: LABCELL_X88_Y14_N27
\Check_button_sec|check~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Check_button_sec|check~0_combout\ = ( \Check_button_sec|enable~q\ & ( (\key1~input_o\ & \Check_button_sec|check~q\) ) ) # ( !\Check_button_sec|enable~q\ & ( (!\key1~input_o\) # (\Check_button_sec|check~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key1~input_o\,
	datad => \Check_button_sec|ALT_INV_check~q\,
	dataf => \Check_button_sec|ALT_INV_enable~q\,
	combout => \Check_button_sec|check~0_combout\);

-- Location: FF_X88_Y14_N29
\Check_button_sec|check\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Check_button_sec|check~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check_button_sec|check~q\);

-- Location: LABCELL_X88_Y12_N30
\Add8~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~61_sumout\ = SUM(( counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add8~62\ = CARRY(( counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(0),
	cin => GND,
	sumout => \Add8~61_sumout\,
	cout => \Add8~62\);

-- Location: LABCELL_X88_Y12_N33
\Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~5_sumout\ = SUM(( counter(1) ) + ( GND ) + ( \Add8~62\ ))
-- \Add8~6\ = CARRY(( counter(1) ) + ( GND ) + ( \Add8~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(1),
	cin => \Add8~62\,
	sumout => \Add8~5_sumout\,
	cout => \Add8~6\);

-- Location: LABCELL_X88_Y12_N36
\Add8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~33_sumout\ = SUM(( counter(2) ) + ( GND ) + ( \Add8~6\ ))
-- \Add8~34\ = CARRY(( counter(2) ) + ( GND ) + ( \Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(2),
	cin => \Add8~6\,
	sumout => \Add8~33_sumout\,
	cout => \Add8~34\);

-- Location: LABCELL_X85_Y14_N48
\counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[0]~0_combout\ = ( !\rst~q\ & ( !\state.ok~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.ok~q\,
	dataf => \ALT_INV_rst~q\,
	combout => \counter[0]~0_combout\);

-- Location: FF_X88_Y12_N37
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~33_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LABCELL_X88_Y12_N39
\Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~1_sumout\ = SUM(( counter(3) ) + ( GND ) + ( \Add8~34\ ))
-- \Add8~2\ = CARRY(( counter(3) ) + ( GND ) + ( \Add8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(3),
	cin => \Add8~34\,
	sumout => \Add8~1_sumout\,
	cout => \Add8~2\);

-- Location: FF_X88_Y12_N41
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~1_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LABCELL_X88_Y12_N42
\Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~29_sumout\ = SUM(( counter(4) ) + ( GND ) + ( \Add8~2\ ))
-- \Add8~30\ = CARRY(( counter(4) ) + ( GND ) + ( \Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(4),
	cin => \Add8~2\,
	sumout => \Add8~29_sumout\,
	cout => \Add8~30\);

-- Location: FF_X88_Y12_N44
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~29_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LABCELL_X88_Y12_N45
\Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~25_sumout\ = SUM(( counter(5) ) + ( GND ) + ( \Add8~30\ ))
-- \Add8~26\ = CARRY(( counter(5) ) + ( GND ) + ( \Add8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(5),
	cin => \Add8~30\,
	sumout => \Add8~25_sumout\,
	cout => \Add8~26\);

-- Location: FF_X88_Y12_N47
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~25_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LABCELL_X88_Y12_N48
\Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~21_sumout\ = SUM(( counter(6) ) + ( GND ) + ( \Add8~26\ ))
-- \Add8~22\ = CARRY(( counter(6) ) + ( GND ) + ( \Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(6),
	cin => \Add8~26\,
	sumout => \Add8~21_sumout\,
	cout => \Add8~22\);

-- Location: FF_X88_Y12_N50
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~21_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LABCELL_X88_Y12_N51
\Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~17_sumout\ = SUM(( counter(7) ) + ( GND ) + ( \Add8~22\ ))
-- \Add8~18\ = CARRY(( counter(7) ) + ( GND ) + ( \Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(7),
	cin => \Add8~22\,
	sumout => \Add8~17_sumout\,
	cout => \Add8~18\);

-- Location: FF_X88_Y12_N53
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~17_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LABCELL_X88_Y12_N54
\Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~13_sumout\ = SUM(( counter(8) ) + ( GND ) + ( \Add8~18\ ))
-- \Add8~14\ = CARRY(( counter(8) ) + ( GND ) + ( \Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(8),
	cin => \Add8~18\,
	sumout => \Add8~13_sumout\,
	cout => \Add8~14\);

-- Location: FF_X88_Y12_N56
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~13_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LABCELL_X88_Y12_N57
\Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~9_sumout\ = SUM(( counter(9) ) + ( GND ) + ( \Add8~14\ ))
-- \Add8~10\ = CARRY(( counter(9) ) + ( GND ) + ( \Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(9),
	cin => \Add8~14\,
	sumout => \Add8~9_sumout\,
	cout => \Add8~10\);

-- Location: FF_X88_Y12_N59
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~9_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LABCELL_X88_Y11_N0
\Add8~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~53_sumout\ = SUM(( counter(10) ) + ( GND ) + ( \Add8~10\ ))
-- \Add8~54\ = CARRY(( counter(10) ) + ( GND ) + ( \Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(10),
	cin => \Add8~10\,
	sumout => \Add8~53_sumout\,
	cout => \Add8~54\);

-- Location: FF_X88_Y11_N1
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~53_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LABCELL_X88_Y11_N3
\Add8~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~49_sumout\ = SUM(( counter(11) ) + ( GND ) + ( \Add8~54\ ))
-- \Add8~50\ = CARRY(( counter(11) ) + ( GND ) + ( \Add8~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(11),
	cin => \Add8~54\,
	sumout => \Add8~49_sumout\,
	cout => \Add8~50\);

-- Location: FF_X88_Y11_N5
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~49_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LABCELL_X88_Y11_N6
\Add8~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~45_sumout\ = SUM(( counter(12) ) + ( GND ) + ( \Add8~50\ ))
-- \Add8~46\ = CARRY(( counter(12) ) + ( GND ) + ( \Add8~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(12),
	cin => \Add8~50\,
	sumout => \Add8~45_sumout\,
	cout => \Add8~46\);

-- Location: FF_X88_Y11_N8
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~45_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LABCELL_X88_Y11_N9
\Add8~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~41_sumout\ = SUM(( counter(13) ) + ( GND ) + ( \Add8~46\ ))
-- \Add8~42\ = CARRY(( counter(13) ) + ( GND ) + ( \Add8~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(13),
	cin => \Add8~46\,
	sumout => \Add8~41_sumout\,
	cout => \Add8~42\);

-- Location: FF_X88_Y12_N5
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add8~41_sumout\,
	sclr => \Equal6~5_combout\,
	sload => VCC,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LABCELL_X88_Y11_N12
\Add8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~37_sumout\ = SUM(( counter(14) ) + ( GND ) + ( \Add8~42\ ))
-- \Add8~38\ = CARRY(( counter(14) ) + ( GND ) + ( \Add8~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(14),
	cin => \Add8~42\,
	sumout => \Add8~37_sumout\,
	cout => \Add8~38\);

-- Location: FF_X88_Y11_N13
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~37_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LABCELL_X88_Y11_N15
\Add8~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~57_sumout\ = SUM(( counter(15) ) + ( GND ) + ( \Add8~38\ ))
-- \Add8~58\ = CARRY(( counter(15) ) + ( GND ) + ( \Add8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(15),
	cin => \Add8~38\,
	sumout => \Add8~57_sumout\,
	cout => \Add8~58\);

-- Location: FF_X88_Y11_N17
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~57_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LABCELL_X88_Y11_N18
\Add8~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~101_sumout\ = SUM(( counter(16) ) + ( GND ) + ( \Add8~58\ ))
-- \Add8~102\ = CARRY(( counter(16) ) + ( GND ) + ( \Add8~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(16),
	cin => \Add8~58\,
	sumout => \Add8~101_sumout\,
	cout => \Add8~102\);

-- Location: FF_X88_Y11_N20
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~101_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LABCELL_X88_Y11_N21
\Add8~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~97_sumout\ = SUM(( counter(17) ) + ( GND ) + ( \Add8~102\ ))
-- \Add8~98\ = CARRY(( counter(17) ) + ( GND ) + ( \Add8~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(17),
	cin => \Add8~102\,
	sumout => \Add8~97_sumout\,
	cout => \Add8~98\);

-- Location: FF_X88_Y11_N22
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~97_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LABCELL_X88_Y11_N24
\Add8~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~93_sumout\ = SUM(( counter(18) ) + ( GND ) + ( \Add8~98\ ))
-- \Add8~94\ = CARRY(( counter(18) ) + ( GND ) + ( \Add8~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(18),
	cin => \Add8~98\,
	sumout => \Add8~93_sumout\,
	cout => \Add8~94\);

-- Location: FF_X88_Y11_N26
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~93_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LABCELL_X88_Y11_N27
\Add8~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~89_sumout\ = SUM(( counter(19) ) + ( GND ) + ( \Add8~94\ ))
-- \Add8~90\ = CARRY(( counter(19) ) + ( GND ) + ( \Add8~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(19),
	cin => \Add8~94\,
	sumout => \Add8~89_sumout\,
	cout => \Add8~90\);

-- Location: FF_X88_Y11_N29
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~89_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LABCELL_X88_Y11_N30
\Add8~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~85_sumout\ = SUM(( counter(20) ) + ( GND ) + ( \Add8~90\ ))
-- \Add8~86\ = CARRY(( counter(20) ) + ( GND ) + ( \Add8~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(20),
	cin => \Add8~90\,
	sumout => \Add8~85_sumout\,
	cout => \Add8~86\);

-- Location: FF_X88_Y11_N32
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~85_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LABCELL_X88_Y11_N33
\Add8~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~81_sumout\ = SUM(( counter(21) ) + ( GND ) + ( \Add8~86\ ))
-- \Add8~82\ = CARRY(( counter(21) ) + ( GND ) + ( \Add8~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(21),
	cin => \Add8~86\,
	sumout => \Add8~81_sumout\,
	cout => \Add8~82\);

-- Location: FF_X88_Y11_N35
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~81_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LABCELL_X88_Y11_N36
\Add8~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~77_sumout\ = SUM(( counter(22) ) + ( GND ) + ( \Add8~82\ ))
-- \Add8~78\ = CARRY(( counter(22) ) + ( GND ) + ( \Add8~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(22),
	cin => \Add8~82\,
	sumout => \Add8~77_sumout\,
	cout => \Add8~78\);

-- Location: FF_X88_Y11_N38
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~77_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LABCELL_X88_Y11_N39
\Add8~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~73_sumout\ = SUM(( counter(23) ) + ( GND ) + ( \Add8~78\ ))
-- \Add8~74\ = CARRY(( counter(23) ) + ( GND ) + ( \Add8~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(23),
	cin => \Add8~78\,
	sumout => \Add8~73_sumout\,
	cout => \Add8~74\);

-- Location: FF_X88_Y11_N41
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~73_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LABCELL_X88_Y11_N42
\Add8~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~69_sumout\ = SUM(( counter(24) ) + ( GND ) + ( \Add8~74\ ))
-- \Add8~70\ = CARRY(( counter(24) ) + ( GND ) + ( \Add8~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(24),
	cin => \Add8~74\,
	sumout => \Add8~69_sumout\,
	cout => \Add8~70\);

-- Location: FF_X88_Y11_N43
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~69_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LABCELL_X88_Y11_N45
\Add8~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~65_sumout\ = SUM(( counter(25) ) + ( GND ) + ( \Add8~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(25),
	cin => \Add8~70\,
	sumout => \Add8~65_sumout\);

-- Location: FF_X88_Y11_N47
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~65_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LABCELL_X88_Y11_N48
\Equal6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = ( counter(0) & ( counter(23) & ( (counter(22) & (counter(15) & (!counter(24) & counter(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(22),
	datab => ALT_INV_counter(15),
	datac => ALT_INV_counter(24),
	datad => ALT_INV_counter(25),
	datae => ALT_INV_counter(0),
	dataf => ALT_INV_counter(23),
	combout => \Equal6~3_combout\);

-- Location: LABCELL_X88_Y11_N54
\Equal6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~4_combout\ = ( counter(19) & ( counter(21) & ( (!counter(18) & (counter(17) & (!counter(16) & counter(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(18),
	datab => ALT_INV_counter(17),
	datac => ALT_INV_counter(16),
	datad => ALT_INV_counter(20),
	datae => ALT_INV_counter(19),
	dataf => ALT_INV_counter(21),
	combout => \Equal6~4_combout\);

-- Location: LABCELL_X88_Y12_N24
\Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = ( !counter(9) & ( counter(6) & ( (!counter(8) & (counter(5) & (!counter(7) & counter(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(8),
	datab => ALT_INV_counter(5),
	datac => ALT_INV_counter(7),
	datad => ALT_INV_counter(4),
	datae => ALT_INV_counter(9),
	dataf => ALT_INV_counter(6),
	combout => \Equal6~1_combout\);

-- Location: LABCELL_X88_Y12_N0
\Equal6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = ( counter(14) & ( counter(12) & ( (counter(13) & (counter(2) & (!counter(11) & !counter(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(13),
	datab => ALT_INV_counter(2),
	datac => ALT_INV_counter(11),
	datad => ALT_INV_counter(10),
	datae => ALT_INV_counter(14),
	dataf => ALT_INV_counter(12),
	combout => \Equal6~2_combout\);

-- Location: MLABCELL_X87_Y12_N42
\Equal6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~5_combout\ = ( \Equal6~1_combout\ & ( \Equal6~2_combout\ & ( (\Equal6~0_combout\ & (\Equal6~3_combout\ & \Equal6~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal6~0_combout\,
	datac => \ALT_INV_Equal6~3_combout\,
	datad => \ALT_INV_Equal6~4_combout\,
	datae => \ALT_INV_Equal6~1_combout\,
	dataf => \ALT_INV_Equal6~2_combout\,
	combout => \Equal6~5_combout\);

-- Location: FF_X88_Y12_N32
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~61_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: FF_X88_Y12_N35
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add8~5_sumout\,
	sclr => \Equal6~5_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LABCELL_X88_Y12_N18
\Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ( counter(3) & ( counter(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(1),
	dataf => ALT_INV_counter(3),
	combout => \Equal6~0_combout\);

-- Location: LABCELL_X88_Y12_N15
\cnt_hex4[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex4[3]~0_combout\ = ( \Equal6~4_combout\ & ( \Equal6~3_combout\ & ( (\Equal6~0_combout\ & (!\state.ok~q\ & (\Equal6~1_combout\ & \Equal6~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~0_combout\,
	datab => \ALT_INV_state.ok~q\,
	datac => \ALT_INV_Equal6~1_combout\,
	datad => \ALT_INV_Equal6~2_combout\,
	datae => \ALT_INV_Equal6~4_combout\,
	dataf => \ALT_INV_Equal6~3_combout\,
	combout => \cnt_hex4[3]~0_combout\);

-- Location: MLABCELL_X87_Y13_N51
\cnt_hex1[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex1[3]~0_combout\ = ( \cnt_hex4[3]~0_combout\ & ( (\LessThan4~0_combout\) # (\cnt_hex0[3]~1_combout\) ) ) # ( !\cnt_hex4[3]~0_combout\ & ( (\state.sec~q\ & (\Check_button_sec|check~q\ & ((\LessThan4~0_combout\) # (\cnt_hex0[3]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex0[3]~1_combout\,
	datab => \ALT_INV_state.sec~q\,
	datac => \ALT_INV_LessThan4~0_combout\,
	datad => \Check_button_sec|ALT_INV_check~q\,
	dataf => \ALT_INV_cnt_hex4[3]~0_combout\,
	combout => \cnt_hex1[3]~0_combout\);

-- Location: FF_X87_Y13_N2
\cnt_hex1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector26~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex1(1));

-- Location: FF_X87_Y13_N59
\cnt_hex1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector27~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex1(0));

-- Location: MLABCELL_X87_Y13_N57
\Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (!cnt_hex1(0) & ((!\LessThan4~0_combout\) # ((\state.ok~q\ & !\state.sec~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110000000000110111000000000011011100000000001101110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ok~q\,
	datab => \ALT_INV_LessThan4~0_combout\,
	datac => \ALT_INV_state.sec~q\,
	datad => ALT_INV_cnt_hex1(0),
	combout => \Selector27~0_combout\);

-- Location: FF_X87_Y13_N58
\cnt_hex1[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector27~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex1[0]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y13_N9
\Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = ( \cnt_hex1[0]~DUPLICATE_q\ & ( !cnt_hex1(1) $ (!cnt_hex1(2)) ) ) # ( !\cnt_hex1[0]~DUPLICATE_q\ & ( (cnt_hex1(2) & ((!cnt_hex1(1)) # ((\state.ok~q\ & !\state.sec~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111010000000001011101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex1(1),
	datab => \ALT_INV_state.ok~q\,
	datac => \ALT_INV_state.sec~q\,
	datad => ALT_INV_cnt_hex1(2),
	dataf => \ALT_INV_cnt_hex1[0]~DUPLICATE_q\,
	combout => \Selector25~0_combout\);

-- Location: FF_X87_Y13_N11
\cnt_hex1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector25~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex1(2));

-- Location: MLABCELL_X87_Y13_N0
\Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = ( \cnt_hex1[0]~DUPLICATE_q\ & ( !cnt_hex1(1) ) ) # ( !\cnt_hex1[0]~DUPLICATE_q\ & ( (cnt_hex1(1) & ((!cnt_hex1(2)) # ((\state.ok~q\ & !\state.sec~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011100000000001101110011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ok~q\,
	datab => ALT_INV_cnt_hex1(2),
	datac => \ALT_INV_state.sec~q\,
	datad => ALT_INV_cnt_hex1(1),
	dataf => \ALT_INV_cnt_hex1[0]~DUPLICATE_q\,
	combout => \Selector26~0_combout\);

-- Location: FF_X87_Y13_N1
\cnt_hex1[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector26~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex1[1]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y12_N36
\cnt_hex0[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex0[3]~0_combout\ = ( \state.sec~q\ & ( \Equal6~5_combout\ & ( (!\state.ok~q\ & ((!\cnt_hex1[1]~DUPLICATE_q\) # ((!\cnt_hex1[2]~DUPLICATE_q\)))) # (\state.ok~q\ & (((\Check_button_sec|check~q\)))) ) ) ) # ( !\state.sec~q\ & ( \Equal6~5_combout\ & ( 
-- (!\state.ok~q\ & ((!\cnt_hex1[1]~DUPLICATE_q\) # (!\cnt_hex1[2]~DUPLICATE_q\))) ) ) ) # ( \state.sec~q\ & ( !\Equal6~5_combout\ & ( (!\state.ok~q\ & ((!\cnt_hex1[1]~DUPLICATE_q\) # ((!\cnt_hex1[2]~DUPLICATE_q\)))) # (\state.ok~q\ & 
-- (((\Check_button_sec|check~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111000101111001100100010001100111110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex1[1]~DUPLICATE_q\,
	datab => \ALT_INV_state.ok~q\,
	datac => \Check_button_sec|ALT_INV_check~q\,
	datad => \ALT_INV_cnt_hex1[2]~DUPLICATE_q\,
	datae => \ALT_INV_state.sec~q\,
	dataf => \ALT_INV_Equal6~5_combout\,
	combout => \cnt_hex0[3]~0_combout\);

-- Location: FF_X87_Y12_N11
\cnt_hex0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector22~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex0(1));

-- Location: MLABCELL_X87_Y12_N21
\cnt_hex0[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex0[3]~1_combout\ = ( cnt_hex0(3) & ( \state.ok~q\ & ( ((\cnt_hex0[2]~DUPLICATE_q\) # (cnt_hex0(1))) # (cnt_hex0(0)) ) ) ) # ( cnt_hex0(3) & ( !\state.ok~q\ & ( (cnt_hex0(0) & (!cnt_hex0(1) & !\cnt_hex0[2]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000000000000000000000000000111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex0(0),
	datab => ALT_INV_cnt_hex0(1),
	datad => \ALT_INV_cnt_hex0[2]~DUPLICATE_q\,
	datae => ALT_INV_cnt_hex0(3),
	dataf => \ALT_INV_state.ok~q\,
	combout => \cnt_hex0[3]~1_combout\);

-- Location: MLABCELL_X87_Y12_N24
\Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = ( !\cnt_hex0[3]~1_combout\ & ( !cnt_hex0(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_hex0(0),
	dataf => \ALT_INV_cnt_hex0[3]~1_combout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X87_Y12_N26
\cnt_hex0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector23~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex0(0));

-- Location: FF_X87_Y12_N4
\cnt_hex0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector21~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex0(2));

-- Location: MLABCELL_X87_Y12_N3
\Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ( !\cnt_hex0[3]~1_combout\ & ( !cnt_hex0(2) $ (((!cnt_hex0(0)) # (!cnt_hex0(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex0(0),
	datac => ALT_INV_cnt_hex0(1),
	datad => ALT_INV_cnt_hex0(2),
	dataf => \ALT_INV_cnt_hex0[3]~1_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X87_Y12_N5
\cnt_hex0[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector21~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex0[2]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y12_N54
\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = ( cnt_hex0(3) & ( cnt_hex0(0) & ( (!\state.ok~q\ & (!\cnt_hex0[2]~DUPLICATE_q\ $ (!cnt_hex0(1)))) ) ) ) # ( !cnt_hex0(3) & ( cnt_hex0(0) & ( (\cnt_hex0[2]~DUPLICATE_q\ & cnt_hex0(1)) ) ) ) # ( cnt_hex0(3) & ( !cnt_hex0(0) & ( 
-- (!\state.ok~q\) # ((!\cnt_hex0[2]~DUPLICATE_q\ & !cnt_hex0(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001100110000000000000011110000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.ok~q\,
	datac => \ALT_INV_cnt_hex0[2]~DUPLICATE_q\,
	datad => ALT_INV_cnt_hex0(1),
	datae => ALT_INV_cnt_hex0(3),
	dataf => ALT_INV_cnt_hex0(0),
	combout => \Selector20~0_combout\);

-- Location: FF_X87_Y12_N56
\cnt_hex0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector20~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex0(3));

-- Location: MLABCELL_X87_Y12_N27
\led0|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \led0|WideOr5~combout\ = ( cnt_hex0(0) & ( !cnt_hex0(3) $ (((\cnt_hex0[2]~DUPLICATE_q\) # (cnt_hex0(1)))) ) ) # ( !cnt_hex0(0) & ( (!cnt_hex0(1) & ((\cnt_hex0[2]~DUPLICATE_q\))) # (cnt_hex0(1) & (cnt_hex0(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010110100101010101011010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex0(3),
	datac => ALT_INV_cnt_hex0(1),
	datad => \ALT_INV_cnt_hex0[2]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex0(0),
	combout => \led0|WideOr5~combout\);

-- Location: FF_X88_Y12_N28
\led0|led_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \led0|WideOr5~combout\,
	clrn => \ALT_INV_rst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led0|led_hex\(0));

-- Location: MLABCELL_X87_Y12_N12
\led0|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led0|WideOr4~0_combout\ = ( cnt_hex0(1) & ( ((!cnt_hex0(0) & cnt_hex0(2))) # (cnt_hex0(3)) ) ) # ( !cnt_hex0(1) & ( (cnt_hex0(2) & ((cnt_hex0(3)) # (cnt_hex0(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex0(0),
	datab => ALT_INV_cnt_hex0(2),
	datac => ALT_INV_cnt_hex0(3),
	dataf => ALT_INV_cnt_hex0(1),
	combout => \led0|WideOr4~0_combout\);

-- Location: FF_X87_Y14_N29
\led0|led_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \led0|WideOr4~0_combout\,
	clrn => \ALT_INV_rst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led0|led_hex\(1));

-- Location: LABCELL_X88_Y14_N15
\led0|led_hex~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led0|led_hex~0_combout\ = ( cnt_hex0(1) & ( ((!\cnt_hex0[2]~DUPLICATE_q\ & !cnt_hex0(0))) # (cnt_hex0(3)) ) ) # ( !cnt_hex0(1) & ( (\cnt_hex0[2]~DUPLICATE_q\ & cnt_hex0(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110100000111111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex0[2]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex0(0),
	datad => ALT_INV_cnt_hex0(3),
	dataf => ALT_INV_cnt_hex0(1),
	combout => \led0|led_hex~0_combout\);

-- Location: FF_X88_Y14_N16
\led0|led_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led0|led_hex~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led0|led_hex\(2));

-- Location: MLABCELL_X87_Y14_N42
\led0|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led0|WideOr3~0_combout\ = ( cnt_hex0(3) & ( (cnt_hex0(1)) # (\cnt_hex0[2]~DUPLICATE_q\) ) ) # ( !cnt_hex0(3) & ( (!cnt_hex0(0) & (\cnt_hex0[2]~DUPLICATE_q\ & !cnt_hex0(1))) # (cnt_hex0(0) & (!\cnt_hex0[2]~DUPLICATE_q\ $ (cnt_hex0(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000011001111000000001100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt_hex0(0),
	datac => \ALT_INV_cnt_hex0[2]~DUPLICATE_q\,
	datad => ALT_INV_cnt_hex0(1),
	dataf => ALT_INV_cnt_hex0(3),
	combout => \led0|WideOr3~0_combout\);

-- Location: FF_X87_Y14_N43
\led0|led_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led0|WideOr3~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led0|led_hex\(3));

-- Location: LABCELL_X88_Y14_N21
\led0|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led0|WideOr2~0_combout\ = ( cnt_hex0(0) ) # ( !cnt_hex0(0) & ( (!cnt_hex0(1) & (\cnt_hex0[2]~DUPLICATE_q\)) # (cnt_hex0(1) & ((cnt_hex0(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex0[2]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex0(1),
	datad => ALT_INV_cnt_hex0(3),
	dataf => ALT_INV_cnt_hex0(0),
	combout => \led0|WideOr2~0_combout\);

-- Location: FF_X88_Y14_N22
\led0|led_hex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led0|WideOr2~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led0|led_hex\(4));

-- Location: MLABCELL_X87_Y12_N0
\led0|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led0|WideOr1~0_combout\ = (!cnt_hex0(0) & ((!\cnt_hex0[2]~DUPLICATE_q\ & (cnt_hex0(1))) # (\cnt_hex0[2]~DUPLICATE_q\ & ((cnt_hex0(3)))))) # (cnt_hex0(0) & ((!cnt_hex0(3) $ (\cnt_hex0[2]~DUPLICATE_q\)) # (cnt_hex0(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100011111011100110001111101110011000111110111001100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex0(0),
	datab => ALT_INV_cnt_hex0(1),
	datac => ALT_INV_cnt_hex0(3),
	datad => \ALT_INV_cnt_hex0[2]~DUPLICATE_q\,
	combout => \led0|WideOr1~0_combout\);

-- Location: FF_X88_Y13_N28
\led0|led_hex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \led0|WideOr1~0_combout\,
	clrn => \ALT_INV_rst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led0|led_hex\(5));

-- Location: MLABCELL_X87_Y14_N51
\led0|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led0|WideOr0~0_combout\ = ( cnt_hex0(0) & ( (!\cnt_hex0[2]~DUPLICATE_q\ & (!cnt_hex0(3) $ (!cnt_hex0(1)))) # (\cnt_hex0[2]~DUPLICATE_q\ & (!cnt_hex0(3) & !cnt_hex0(1))) ) ) # ( !cnt_hex0(0) & ( !cnt_hex0(3) $ (((!\cnt_hex0[2]~DUPLICATE_q\ & 
-- !cnt_hex0(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000000111100110000000011110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex0[2]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex0(3),
	datad => ALT_INV_cnt_hex0(1),
	dataf => ALT_INV_cnt_hex0(0),
	combout => \led0|WideOr0~0_combout\);

-- Location: FF_X87_Y14_N53
\led0|led_hex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led0|WideOr0~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led0|led_hex\(6));

-- Location: LABCELL_X88_Y14_N0
\led1|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \led1|WideOr5~combout\ = ( !\cnt_hex1[1]~DUPLICATE_q\ & ( !\cnt_hex1[2]~DUPLICATE_q\ $ (!\cnt_hex1[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt_hex1[2]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex1[0]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex1[1]~DUPLICATE_q\,
	combout => \led1|WideOr5~combout\);

-- Location: FF_X88_Y14_N1
\led1|led_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led1|WideOr5~combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led1|led_hex\(0));

-- Location: MLABCELL_X87_Y14_N9
\led1|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led1|WideOr4~0_combout\ = ( \cnt_hex1[2]~DUPLICATE_q\ & ( !\cnt_hex1[1]~DUPLICATE_q\ $ (!\cnt_hex1[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt_hex1[1]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex1[0]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex1[2]~DUPLICATE_q\,
	combout => \led1|WideOr4~0_combout\);

-- Location: FF_X87_Y14_N10
\led1|led_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led1|WideOr4~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led1|led_hex\(1));

-- Location: LABCELL_X85_Y13_N12
\led1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led1|Equal0~0_combout\ = ( !\cnt_hex1[0]~DUPLICATE_q\ & ( (\cnt_hex1[1]~DUPLICATE_q\ & !\cnt_hex1[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex1[1]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex1[2]~DUPLICATE_q\,
	datae => \ALT_INV_cnt_hex1[0]~DUPLICATE_q\,
	combout => \led1|Equal0~0_combout\);

-- Location: LABCELL_X88_Y16_N3
\led1|led_hex[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \led1|led_hex[2]~feeder_combout\ = ( \led1|Equal0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \led1|ALT_INV_Equal0~0_combout\,
	combout => \led1|led_hex[2]~feeder_combout\);

-- Location: FF_X88_Y16_N4
\led1|led_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led1|led_hex[2]~feeder_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led1|led_hex\(2));

-- Location: LABCELL_X85_Y13_N6
\led1|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led1|WideOr3~0_combout\ = ( \cnt_hex1[0]~DUPLICATE_q\ & ( \cnt_hex1[1]~DUPLICATE_q\ & ( \cnt_hex1[2]~DUPLICATE_q\ ) ) ) # ( \cnt_hex1[0]~DUPLICATE_q\ & ( !\cnt_hex1[1]~DUPLICATE_q\ & ( !\cnt_hex1[2]~DUPLICATE_q\ ) ) ) # ( !\cnt_hex1[0]~DUPLICATE_q\ & ( 
-- !\cnt_hex1[1]~DUPLICATE_q\ & ( \cnt_hex1[2]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt_hex1[2]~DUPLICATE_q\,
	datae => \ALT_INV_cnt_hex1[0]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex1[1]~DUPLICATE_q\,
	combout => \led1|WideOr3~0_combout\);

-- Location: FF_X88_Y15_N40
\led1|led_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \led1|WideOr3~0_combout\,
	clrn => \ALT_INV_rst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led1|led_hex\(3));

-- Location: MLABCELL_X87_Y14_N45
\led1|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led1|WideOr2~0_combout\ = ( \cnt_hex1[2]~DUPLICATE_q\ & ( (!\cnt_hex1[1]~DUPLICATE_q\) # (\cnt_hex1[0]~DUPLICATE_q\) ) ) # ( !\cnt_hex1[2]~DUPLICATE_q\ & ( \cnt_hex1[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex1[1]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex1[0]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex1[2]~DUPLICATE_q\,
	combout => \led1|WideOr2~0_combout\);

-- Location: FF_X87_Y14_N46
\led1|led_hex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led1|WideOr2~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led1|led_hex\(4));

-- Location: MLABCELL_X87_Y14_N36
\led1|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led1|WideOr1~0_combout\ = ( \cnt_hex1[2]~DUPLICATE_q\ & ( (\cnt_hex1[0]~DUPLICATE_q\ & \cnt_hex1[1]~DUPLICATE_q\) ) ) # ( !\cnt_hex1[2]~DUPLICATE_q\ & ( (\cnt_hex1[1]~DUPLICATE_q\) # (\cnt_hex1[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex1[0]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex1[1]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex1[2]~DUPLICATE_q\,
	combout => \led1|WideOr1~0_combout\);

-- Location: FF_X87_Y14_N37
\led1|led_hex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led1|WideOr1~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led1|led_hex\(5));

-- Location: MLABCELL_X87_Y14_N48
\led1|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led1|WideOr0~0_combout\ = ( \cnt_hex1[2]~DUPLICATE_q\ & ( (!\cnt_hex1[1]~DUPLICATE_q\) # (!\cnt_hex1[0]~DUPLICATE_q\) ) ) # ( !\cnt_hex1[2]~DUPLICATE_q\ & ( \cnt_hex1[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt_hex1[1]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex1[0]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex1[2]~DUPLICATE_q\,
	combout => \led1|WideOr0~0_combout\);

-- Location: FF_X87_Y14_N49
\led1|led_hex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led1|WideOr0~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led1|led_hex\(6));

-- Location: MLABCELL_X87_Y14_N24
\Check_button_min|enable~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Check_button_min|enable~0_combout\ = !\key2~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key2~input_o\,
	combout => \Check_button_min|enable~0_combout\);

-- Location: FF_X87_Y14_N25
\Check_button_min|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Check_button_min|enable~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check_button_min|enable~q\);

-- Location: MLABCELL_X87_Y14_N54
\Check_button_min|check~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Check_button_min|check~0_combout\ = ( \Check_button_min|enable~q\ & ( (\key2~input_o\ & \Check_button_min|check~q\) ) ) # ( !\Check_button_min|enable~q\ & ( (!\key2~input_o\) # (\Check_button_min|check~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key2~input_o\,
	datad => \Check_button_min|ALT_INV_check~q\,
	dataf => \Check_button_min|ALT_INV_enable~q\,
	combout => \Check_button_min|check~0_combout\);

-- Location: FF_X87_Y14_N56
\Check_button_min|check\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Check_button_min|check~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check_button_min|check~q\);

-- Location: MLABCELL_X87_Y12_N48
\cnt_hex3[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex3[3]~0_combout\ = ( \Equal6~4_combout\ & ( \Equal6~2_combout\ & ( (!\state.ok~q\ & ((!\Equal6~0_combout\) # ((!\Equal6~1_combout\) # (!\Equal6~3_combout\)))) ) ) ) # ( !\Equal6~4_combout\ & ( \Equal6~2_combout\ & ( !\state.ok~q\ ) ) ) # ( 
-- \Equal6~4_combout\ & ( !\Equal6~2_combout\ & ( !\state.ok~q\ ) ) ) # ( !\Equal6~4_combout\ & ( !\Equal6~2_combout\ & ( !\state.ok~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~0_combout\,
	datab => \ALT_INV_Equal6~1_combout\,
	datac => \ALT_INV_Equal6~3_combout\,
	datad => \ALT_INV_state.ok~q\,
	datae => \ALT_INV_Equal6~4_combout\,
	dataf => \ALT_INV_Equal6~2_combout\,
	combout => \cnt_hex3[3]~0_combout\);

-- Location: LABCELL_X85_Y13_N39
\cnt_hex3[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex3[3]~1_combout\ = ( !\state.hour~q\ & ( \Check_button_min|check~q\ & ( !\state.sec~q\ ) ) ) # ( !\state.hour~q\ & ( !\Check_button_min|check~q\ & ( (!\state.sec~q\ & !\state.ok~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.sec~q\,
	datab => \ALT_INV_state.ok~q\,
	datae => \ALT_INV_state.hour~q\,
	dataf => \Check_button_min|ALT_INV_check~q\,
	combout => \cnt_hex3[3]~1_combout\);

-- Location: LABCELL_X88_Y14_N24
\cnt_hex3[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex3[0]~4_combout\ = ( \led2|Equal0~0_combout\ & ( (!\cnt_hex3[3]~1_combout\ & (((cnt_hex3(0))))) # (\cnt_hex3[3]~1_combout\ & ((!\cnt_hex3[3]~0_combout\ & (!\led3|WideOr0~1_combout\ & !cnt_hex3(0))) # (\cnt_hex3[3]~0_combout\ & ((cnt_hex3(0)))))) ) 
-- ) # ( !\led2|Equal0~0_combout\ & ( (cnt_hex3(0) & ((!\cnt_hex3[3]~1_combout\) # ((!\led3|WideOr0~1_combout\) # (\cnt_hex3[3]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111011000000001111101101000000101110110100000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex3[3]~1_combout\,
	datab => \ALT_INV_cnt_hex3[3]~0_combout\,
	datac => \led3|ALT_INV_WideOr0~1_combout\,
	datad => ALT_INV_cnt_hex3(0),
	dataf => \led2|ALT_INV_Equal0~0_combout\,
	combout => \cnt_hex3[0]~4_combout\);

-- Location: FF_X88_Y14_N25
\cnt_hex3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_hex3[0]~4_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex3(0));

-- Location: LABCELL_X88_Y14_N30
\cnt_hex3[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex3[1]~3_combout\ = ( cnt_hex3(1) & ( cnt_hex3(0) & ( ((!\cnt_hex3[3]~1_combout\) # ((!\led2|Equal0~0_combout\ & !\cnt_hex3[2]~DUPLICATE_q\))) # (\cnt_hex3[3]~0_combout\) ) ) ) # ( !cnt_hex3(1) & ( cnt_hex3(0) & ( (\led2|Equal0~0_combout\ & 
-- (!\cnt_hex3[3]~0_combout\ & \cnt_hex3[3]~1_combout\)) ) ) ) # ( cnt_hex3(1) & ( !cnt_hex3(0) & ( ((!\cnt_hex3[3]~1_combout\) # (!\cnt_hex3[2]~DUPLICATE_q\)) # (\cnt_hex3[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111001100000100000001001111101111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \led2|ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_cnt_hex3[3]~0_combout\,
	datac => \ALT_INV_cnt_hex3[3]~1_combout\,
	datad => \ALT_INV_cnt_hex3[2]~DUPLICATE_q\,
	datae => ALT_INV_cnt_hex3(1),
	dataf => ALT_INV_cnt_hex3(0),
	combout => \cnt_hex3[1]~3_combout\);

-- Location: FF_X88_Y14_N31
\cnt_hex3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_hex3[1]~3_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex3(1));

-- Location: FF_X87_Y13_N26
\cnt_hex3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_hex3[2]~2_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex3(2));

-- Location: MLABCELL_X87_Y13_N6
\cnt_hex2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex2[0]~0_combout\ = ( cnt_hex3(2) & ( (!\state.min~q\ & ((cnt_hex3(1)) # (\state.ok~q\))) ) ) # ( !cnt_hex3(2) & ( (\state.ok~q\ & !\state.min~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.ok~q\,
	datac => ALT_INV_cnt_hex3(1),
	datad => \ALT_INV_state.min~q\,
	dataf => ALT_INV_cnt_hex3(2),
	combout => \cnt_hex2[0]~0_combout\);

-- Location: FF_X87_Y13_N37
\cnt_hex2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector14~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex2(1));

-- Location: MLABCELL_X87_Y13_N36
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( \cnt_hex2[0]~DUPLICATE_q\ & ( (!cnt_hex2(1) & ((!\led2|Equal0~0_combout\) # (\cnt_hex2[0]~0_combout\))) ) ) # ( !\cnt_hex2[0]~DUPLICATE_q\ & ( (cnt_hex2(1) & ((!\led2|Equal0~0_combout\) # (\cnt_hex2[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001111110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex2[0]~0_combout\,
	datac => \led2|ALT_INV_Equal0~0_combout\,
	datad => ALT_INV_cnt_hex2(1),
	dataf => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	combout => \Selector14~0_combout\);

-- Location: FF_X87_Y13_N38
\cnt_hex2[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector14~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex2[1]~DUPLICATE_q\);

-- Location: FF_X87_Y14_N2
\cnt_hex2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector12~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex2(3));

-- Location: FF_X87_Y14_N4
\cnt_hex2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector13~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex2(2));

-- Location: MLABCELL_X87_Y14_N3
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \cnt_hex2[0]~DUPLICATE_q\ & ( !\cnt_hex2[1]~DUPLICATE_q\ $ (!cnt_hex2(2)) ) ) # ( !\cnt_hex2[0]~DUPLICATE_q\ & ( cnt_hex2(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex2[1]~DUPLICATE_q\,
	datad => ALT_INV_cnt_hex2(2),
	dataf => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	combout => \Selector13~0_combout\);

-- Location: FF_X87_Y14_N5
\cnt_hex2[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector13~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex2[2]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y14_N0
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \cnt_hex2[2]~DUPLICATE_q\ & ( !cnt_hex2(3) $ (((!\cnt_hex2[0]~DUPLICATE_q\) # (!\cnt_hex2[1]~DUPLICATE_q\))) ) ) # ( !\cnt_hex2[2]~DUPLICATE_q\ & ( (cnt_hex2(3) & ((!\cnt_hex2[0]~DUPLICATE_q\) # ((\cnt_hex2[0]~0_combout\) # 
-- (\cnt_hex2[1]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000001011111100010001111011100001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	datab => \ALT_INV_cnt_hex2[1]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex2[0]~0_combout\,
	datad => ALT_INV_cnt_hex2(3),
	dataf => \ALT_INV_cnt_hex2[2]~DUPLICATE_q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X87_Y14_N1
\cnt_hex2[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector12~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex2[3]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y14_N48
\led2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led2|Equal0~0_combout\ = ( \cnt_hex2[0]~DUPLICATE_q\ & ( (\cnt_hex2[3]~DUPLICATE_q\ & (!cnt_hex2(1) & !\cnt_hex2[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex2[3]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex2(1),
	datad => \ALT_INV_cnt_hex2[2]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	combout => \led2|Equal0~0_combout\);

-- Location: FF_X88_Y14_N26
\cnt_hex3[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_hex3[0]~4_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex3[0]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y13_N24
\cnt_hex3[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex3[2]~2_combout\ = ( cnt_hex3(2) & ( \cnt_hex3[3]~0_combout\ ) ) # ( cnt_hex3(2) & ( !\cnt_hex3[3]~0_combout\ & ( (!\cnt_hex3[3]~1_combout\) # (!cnt_hex3(1)) ) ) ) # ( !cnt_hex3(2) & ( !\cnt_hex3[3]~0_combout\ & ( (\led2|Equal0~0_combout\ & 
-- (\cnt_hex3[3]~1_combout\ & (cnt_hex3(1) & \cnt_hex3[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111001111110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \led2|ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_cnt_hex3[3]~1_combout\,
	datac => ALT_INV_cnt_hex3(1),
	datad => \ALT_INV_cnt_hex3[0]~DUPLICATE_q\,
	datae => ALT_INV_cnt_hex3(2),
	dataf => \ALT_INV_cnt_hex3[3]~0_combout\,
	combout => \cnt_hex3[2]~2_combout\);

-- Location: FF_X87_Y13_N25
\cnt_hex3[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_hex3[2]~2_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex3[2]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y13_N15
\led3|WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \led3|WideOr0~1_combout\ = ( cnt_hex3(1) & ( \cnt_hex3[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt_hex3[2]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex3(1),
	combout => \led3|WideOr0~1_combout\);

-- Location: LABCELL_X88_Y12_N9
\cnt_hex2[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex2[0]~1_combout\ = ( \led2|Equal0~0_combout\ & ( \cnt_hex4[3]~0_combout\ & ( (!\led3|WideOr0~1_combout\) # (\LessThan4~0_combout\) ) ) ) # ( !\led2|Equal0~0_combout\ & ( \cnt_hex4[3]~0_combout\ & ( ((\Check_button_min|check~q\ & 
-- (!\led3|WideOr0~1_combout\ & \state.min~q\))) # (\LessThan4~0_combout\) ) ) ) # ( \led2|Equal0~0_combout\ & ( !\cnt_hex4[3]~0_combout\ & ( (\Check_button_min|check~q\ & (!\led3|WideOr0~1_combout\ & \state.min~q\)) ) ) ) # ( !\led2|Equal0~0_combout\ & ( 
-- !\cnt_hex4[3]~0_combout\ & ( (\Check_button_min|check~q\ & (!\led3|WideOr0~1_combout\ & \state.min~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000001010101011101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan4~0_combout\,
	datab => \Check_button_min|ALT_INV_check~q\,
	datac => \led3|ALT_INV_WideOr0~1_combout\,
	datad => \ALT_INV_state.min~q\,
	datae => \led2|ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_cnt_hex4[3]~0_combout\,
	combout => \cnt_hex2[0]~1_combout\);

-- Location: FF_X87_Y13_N32
\cnt_hex2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_hex2[0]~2_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex2(0));

-- Location: MLABCELL_X87_Y13_N30
\cnt_hex2[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex2[0]~2_combout\ = !cnt_hex2(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_hex2(0),
	combout => \cnt_hex2[0]~2_combout\);

-- Location: FF_X87_Y13_N31
\cnt_hex2[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_hex2[0]~2_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex2[0]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y14_N45
\led2|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \led2|WideOr5~combout\ = ( cnt_hex2(2) & ( ((!\cnt_hex2[0]~DUPLICATE_q\ & !\cnt_hex2[1]~DUPLICATE_q\)) # (\cnt_hex2[3]~DUPLICATE_q\) ) ) # ( !cnt_hex2(2) & ( (!\cnt_hex2[3]~DUPLICATE_q\ & (\cnt_hex2[0]~DUPLICATE_q\ & !\cnt_hex2[1]~DUPLICATE_q\)) # 
-- (\cnt_hex2[3]~DUPLICATE_q\ & ((\cnt_hex2[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111110101111000011111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex2[3]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex2[1]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex2(2),
	combout => \led2|WideOr5~combout\);

-- Location: FF_X88_Y14_N46
\led2|led_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led2|WideOr5~combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led2|led_hex\(0));

-- Location: LABCELL_X88_Y15_N42
\led2|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led2|WideOr4~0_combout\ = ( \cnt_hex2[0]~DUPLICATE_q\ & ( cnt_hex2(3) & ( (\cnt_hex2[1]~DUPLICATE_q\) # (\cnt_hex2[2]~DUPLICATE_q\) ) ) ) # ( !\cnt_hex2[0]~DUPLICATE_q\ & ( cnt_hex2(3) & ( (\cnt_hex2[1]~DUPLICATE_q\) # (\cnt_hex2[2]~DUPLICATE_q\) ) ) ) # 
-- ( \cnt_hex2[0]~DUPLICATE_q\ & ( !cnt_hex2(3) & ( (\cnt_hex2[2]~DUPLICATE_q\ & !\cnt_hex2[1]~DUPLICATE_q\) ) ) ) # ( !\cnt_hex2[0]~DUPLICATE_q\ & ( !cnt_hex2(3) & ( (\cnt_hex2[2]~DUPLICATE_q\ & \cnt_hex2[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex2[2]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex2[1]~DUPLICATE_q\,
	datae => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex2(3),
	combout => \led2|WideOr4~0_combout\);

-- Location: FF_X88_Y15_N43
\led2|led_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led2|WideOr4~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led2|led_hex\(1));

-- Location: MLABCELL_X87_Y15_N12
\led2|led_hex~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led2|led_hex~0_combout\ = ( \cnt_hex2[1]~DUPLICATE_q\ & ( cnt_hex2(3) ) ) # ( !\cnt_hex2[1]~DUPLICATE_q\ & ( cnt_hex2(3) & ( \cnt_hex2[2]~DUPLICATE_q\ ) ) ) # ( \cnt_hex2[1]~DUPLICATE_q\ & ( !cnt_hex2(3) & ( (!\cnt_hex2[0]~DUPLICATE_q\ & 
-- !\cnt_hex2[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex2[2]~DUPLICATE_q\,
	datae => \ALT_INV_cnt_hex2[1]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex2(3),
	combout => \led2|led_hex~0_combout\);

-- Location: FF_X87_Y15_N13
\led2|led_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led2|led_hex~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led2|led_hex\(2));

-- Location: LABCELL_X88_Y15_N15
\led2|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led2|WideOr3~0_combout\ = ( \cnt_hex2[2]~DUPLICATE_q\ & ( cnt_hex2(3) ) ) # ( !\cnt_hex2[2]~DUPLICATE_q\ & ( cnt_hex2(3) & ( \cnt_hex2[1]~DUPLICATE_q\ ) ) ) # ( \cnt_hex2[2]~DUPLICATE_q\ & ( !cnt_hex2(3) & ( !\cnt_hex2[0]~DUPLICATE_q\ $ 
-- (\cnt_hex2[1]~DUPLICATE_q\) ) ) ) # ( !\cnt_hex2[2]~DUPLICATE_q\ & ( !cnt_hex2(3) & ( (\cnt_hex2[0]~DUPLICATE_q\ & !\cnt_hex2[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100100110011001100100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	datab => \ALT_INV_cnt_hex2[1]~DUPLICATE_q\,
	datae => \ALT_INV_cnt_hex2[2]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex2(3),
	combout => \led2|WideOr3~0_combout\);

-- Location: FF_X88_Y15_N16
\led2|led_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led2|WideOr3~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led2|led_hex\(3));

-- Location: LABCELL_X88_Y15_N6
\led2|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led2|WideOr2~0_combout\ = ( \cnt_hex2[0]~DUPLICATE_q\ & ( cnt_hex2(3) ) ) # ( !\cnt_hex2[0]~DUPLICATE_q\ & ( cnt_hex2(3) & ( (\cnt_hex2[1]~DUPLICATE_q\) # (\cnt_hex2[2]~DUPLICATE_q\) ) ) ) # ( \cnt_hex2[0]~DUPLICATE_q\ & ( !cnt_hex2(3) ) ) # ( 
-- !\cnt_hex2[0]~DUPLICATE_q\ & ( !cnt_hex2(3) & ( (\cnt_hex2[2]~DUPLICATE_q\ & !\cnt_hex2[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000111111111111111100110011111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex2[2]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex2[1]~DUPLICATE_q\,
	datae => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex2(3),
	combout => \led2|WideOr2~0_combout\);

-- Location: FF_X88_Y15_N8
\led2|led_hex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led2|WideOr2~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led2|led_hex\(4));

-- Location: LABCELL_X88_Y14_N39
\led2|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led2|WideOr1~0_combout\ = ( cnt_hex2(2) & ( ((\cnt_hex2[0]~DUPLICATE_q\ & \cnt_hex2[1]~DUPLICATE_q\)) # (\cnt_hex2[3]~DUPLICATE_q\) ) ) # ( !cnt_hex2(2) & ( ((\cnt_hex2[0]~DUPLICATE_q\ & !\cnt_hex2[3]~DUPLICATE_q\)) # (\cnt_hex2[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111010100001111111100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex2[3]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex2[1]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex2(2),
	combout => \led2|WideOr1~0_combout\);

-- Location: FF_X88_Y14_N40
\led2|led_hex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led2|WideOr1~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led2|led_hex\(5));

-- Location: MLABCELL_X87_Y14_N30
\led2|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led2|WideOr0~0_combout\ = ( \cnt_hex2[2]~DUPLICATE_q\ & ( (!cnt_hex2(3) & ((!\cnt_hex2[1]~DUPLICATE_q\) # (!\cnt_hex2[0]~DUPLICATE_q\))) ) ) # ( !\cnt_hex2[2]~DUPLICATE_q\ & ( !\cnt_hex2[1]~DUPLICATE_q\ $ (!cnt_hex2(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex2[1]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	datad => ALT_INV_cnt_hex2(3),
	dataf => \ALT_INV_cnt_hex2[2]~DUPLICATE_q\,
	combout => \led2|WideOr0~0_combout\);

-- Location: FF_X87_Y14_N32
\led2|led_hex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led2|WideOr0~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led2|led_hex\(6));

-- Location: LABCELL_X88_Y15_N48
\led3|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \led3|WideOr5~combout\ = ( !cnt_hex3(1) & ( !\cnt_hex3[2]~DUPLICATE_q\ $ (!\cnt_hex3[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex3[2]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex3[0]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex3(1),
	combout => \led3|WideOr5~combout\);

-- Location: FF_X88_Y15_N49
\led3|led_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led3|WideOr5~combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led3|led_hex\(0));

-- Location: FF_X88_Y14_N32
\cnt_hex3[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_hex3[1]~3_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex3[1]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y14_N27
\led3|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led3|WideOr4~0_combout\ = ( \cnt_hex3[1]~DUPLICATE_q\ & ( (!\cnt_hex3[0]~DUPLICATE_q\ & \cnt_hex3[2]~DUPLICATE_q\) ) ) # ( !\cnt_hex3[1]~DUPLICATE_q\ & ( (\cnt_hex3[0]~DUPLICATE_q\ & \cnt_hex3[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex3[0]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex3[2]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex3[1]~DUPLICATE_q\,
	combout => \led3|WideOr4~0_combout\);

-- Location: FF_X87_Y12_N13
\led3|led_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \led3|WideOr4~0_combout\,
	clrn => \ALT_INV_rst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led3|led_hex\(1));

-- Location: MLABCELL_X87_Y13_N48
\led3|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led3|Equal0~0_combout\ = ( !\cnt_hex3[2]~DUPLICATE_q\ & ( (cnt_hex3(1) & !\cnt_hex3[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_hex3(1),
	datad => \ALT_INV_cnt_hex3[0]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex3[2]~DUPLICATE_q\,
	combout => \led3|Equal0~0_combout\);

-- Location: FF_X87_Y13_N49
\led3|led_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led3|Equal0~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led3|led_hex\(2));

-- Location: MLABCELL_X87_Y14_N57
\led3|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led3|WideOr3~0_combout\ = ( \cnt_hex3[1]~DUPLICATE_q\ & ( (\cnt_hex3[2]~DUPLICATE_q\ & \cnt_hex3[0]~DUPLICATE_q\) ) ) # ( !\cnt_hex3[1]~DUPLICATE_q\ & ( !\cnt_hex3[2]~DUPLICATE_q\ $ (!\cnt_hex3[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt_hex3[2]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex3[0]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex3[1]~DUPLICATE_q\,
	combout => \led3|WideOr3~0_combout\);

-- Location: FF_X87_Y14_N58
\led3|led_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led3|WideOr3~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led3|led_hex\(3));

-- Location: LABCELL_X85_Y14_N36
\led3|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led3|WideOr2~0_combout\ = ( \cnt_hex3[0]~DUPLICATE_q\ & ( \cnt_hex3[1]~DUPLICATE_q\ ) ) # ( \cnt_hex3[0]~DUPLICATE_q\ & ( !\cnt_hex3[1]~DUPLICATE_q\ ) ) # ( !\cnt_hex3[0]~DUPLICATE_q\ & ( !\cnt_hex3[1]~DUPLICATE_q\ & ( \cnt_hex3[2]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex3[2]~DUPLICATE_q\,
	datae => \ALT_INV_cnt_hex3[0]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex3[1]~DUPLICATE_q\,
	combout => \led3|WideOr2~0_combout\);

-- Location: FF_X85_Y14_N37
\led3|led_hex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led3|WideOr2~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led3|led_hex\(4));

-- Location: MLABCELL_X87_Y14_N39
\led3|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led3|WideOr1~0_combout\ = ( \cnt_hex3[1]~DUPLICATE_q\ & ( (!\cnt_hex3[2]~DUPLICATE_q\) # (\cnt_hex3[0]~DUPLICATE_q\) ) ) # ( !\cnt_hex3[1]~DUPLICATE_q\ & ( (!\cnt_hex3[2]~DUPLICATE_q\ & \cnt_hex3[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt_hex3[2]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex3[0]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex3[1]~DUPLICATE_q\,
	combout => \led3|WideOr1~0_combout\);

-- Location: FF_X87_Y14_N40
\led3|led_hex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led3|WideOr1~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led3|led_hex\(5));

-- Location: LABCELL_X88_Y14_N6
\led3|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led3|WideOr0~0_combout\ = ( cnt_hex3(1) & ( (!\cnt_hex3[0]~DUPLICATE_q\) # (!\cnt_hex3[2]~DUPLICATE_q\) ) ) # ( !cnt_hex3(1) & ( \cnt_hex3[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt_hex3[0]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex3[2]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex3(1),
	combout => \led3|WideOr0~0_combout\);

-- Location: FF_X88_Y14_N7
\led3|led_hex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led3|WideOr0~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led3|led_hex\(6));

-- Location: LABCELL_X88_Y16_N42
\Check_button_hour|enable~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Check_button_hour|enable~0_combout\ = ( !\key3~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_key3~input_o\,
	combout => \Check_button_hour|enable~0_combout\);

-- Location: FF_X87_Y14_N7
\Check_button_hour|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Check_button_hour|enable~0_combout\,
	clrn => \ALT_INV_rst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check_button_hour|enable~q\);

-- Location: LABCELL_X85_Y13_N0
\Check_button_hour|check~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Check_button_hour|check~0_combout\ = ( \Check_button_hour|check~q\ & ( \Check_button_hour|enable~q\ & ( \key3~input_o\ ) ) ) # ( \Check_button_hour|check~q\ & ( !\Check_button_hour|enable~q\ ) ) # ( !\Check_button_hour|check~q\ & ( 
-- !\Check_button_hour|enable~q\ & ( !\key3~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key3~input_o\,
	datae => \Check_button_hour|ALT_INV_check~q\,
	dataf => \Check_button_hour|ALT_INV_enable~q\,
	combout => \Check_button_hour|check~0_combout\);

-- Location: FF_X87_Y13_N29
\Check_button_hour|check\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Check_button_hour|check~0_combout\,
	clrn => \ALT_INV_rst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check_button_hour|check~q\);

-- Location: MLABCELL_X87_Y13_N54
\cnt_hex4[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex4[3]~7_combout\ = ( \state.hour~q\ & ( \Check_button_hour|check~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Check_button_hour|ALT_INV_check~q\,
	dataf => \ALT_INV_state.hour~q\,
	combout => \cnt_hex4[3]~7_combout\);

-- Location: MLABCELL_X87_Y12_N15
\led0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led0|Equal0~0_combout\ = ( !cnt_hex0(1) & ( (cnt_hex0(0) & !\cnt_hex0[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex0(0),
	datad => \ALT_INV_cnt_hex0[2]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex0(1),
	combout => \led0|Equal0~0_combout\);

-- Location: MLABCELL_X87_Y13_N33
\cnt_hex4[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex4[3]~4_combout\ = ( cnt_hex0(3) & ( (cnt_hex3(2) & (cnt_hex1(2) & (cnt_hex1(0) & !cnt_hex1(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex3(2),
	datab => ALT_INV_cnt_hex1(2),
	datac => ALT_INV_cnt_hex1(0),
	datad => ALT_INV_cnt_hex1(1),
	dataf => ALT_INV_cnt_hex0(3),
	combout => \cnt_hex4[3]~4_combout\);

-- Location: MLABCELL_X87_Y13_N18
\cnt_hex4[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex4[3]~5_combout\ = ( \cnt_hex3[0]~DUPLICATE_q\ & ( !cnt_hex3(1) & ( (!\cnt_hex2[2]~DUPLICATE_q\ & (cnt_hex2(0) & (cnt_hex2(3) & !cnt_hex2(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex2[2]~DUPLICATE_q\,
	datab => ALT_INV_cnt_hex2(0),
	datac => ALT_INV_cnt_hex2(3),
	datad => ALT_INV_cnt_hex2(1),
	datae => \ALT_INV_cnt_hex3[0]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex3(1),
	combout => \cnt_hex4[3]~5_combout\);

-- Location: LABCELL_X88_Y13_N0
\cnt_hex4[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex4[3]~8_combout\ = ( \cnt_hex4[3]~4_combout\ & ( \cnt_hex4[3]~5_combout\ & ( (!\led5|Equal0~0_combout\ & (((\led4|Equal0~1_combout\)))) # (\led5|Equal0~0_combout\ & (\led4|Equal0~0_combout\ & (\led0|Equal0~0_combout\))) ) ) ) # ( 
-- !\cnt_hex4[3]~4_combout\ & ( \cnt_hex4[3]~5_combout\ & ( (\led4|Equal0~1_combout\ & !\led5|Equal0~0_combout\) ) ) ) # ( \cnt_hex4[3]~4_combout\ & ( !\cnt_hex4[3]~5_combout\ & ( (\led4|Equal0~1_combout\ & !\led5|Equal0~0_combout\) ) ) ) # ( 
-- !\cnt_hex4[3]~4_combout\ & ( !\cnt_hex4[3]~5_combout\ & ( (\led4|Equal0~1_combout\ & !\led5|Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \led4|ALT_INV_Equal0~0_combout\,
	datab => \led0|ALT_INV_Equal0~0_combout\,
	datac => \led4|ALT_INV_Equal0~1_combout\,
	datad => \led5|ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_cnt_hex4[3]~4_combout\,
	dataf => \ALT_INV_cnt_hex4[3]~5_combout\,
	combout => \cnt_hex4[3]~8_combout\);

-- Location: LABCELL_X88_Y13_N54
\cnt_hex5[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex5[1]~6_combout\ = ( !\state.ok~q\ & ( (!\cnt_hex4[3]~7_combout\) # ((!\led5|Equal0~0_combout\ & (!\cnt_hex4[3]~1_combout\ & (\led5|Equal0~1_combout\))) # (\led5|Equal0~0_combout\ & (((!\cnt_hex4[3]~8_combout\))))) ) ) # ( \state.ok~q\ & ( 
-- (!\cnt_hex4[3]~7_combout\) # ((!\led5|Equal0~0_combout\ & (!\cnt_hex4[3]~1_combout\ & (\led5|Equal0~1_combout\))) # (\led5|Equal0~0_combout\ & (((!\led4|Equal0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111111111111111111111111111100100010111100000010001011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex4[3]~1_combout\,
	datab => \led5|ALT_INV_Equal0~1_combout\,
	datac => \led4|ALT_INV_Equal0~0_combout\,
	datad => \led5|ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_state.ok~q\,
	dataf => \ALT_INV_cnt_hex4[3]~7_combout\,
	datag => \ALT_INV_cnt_hex4[3]~8_combout\,
	combout => \cnt_hex5[1]~6_combout\);

-- Location: FF_X88_Y13_N43
\cnt_hex5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_hex5[3]~2_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex5(3));

-- Location: FF_X87_Y13_N43
\cnt_hex5[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_hex5[1]~4_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex5[1]~DUPLICATE_q\);

-- Location: FF_X88_Y13_N11
\cnt_hex5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_hex5[0]~5_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex5(0));

-- Location: LABCELL_X88_Y13_N9
\cnt_hex5[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex5[0]~5_combout\ = ( \cnt_hex5[1]~0_combout\ & ( (!\cnt_hex5[1]~6_combout\ & (\cnt_hex5[1]~1_combout\ & !cnt_hex5(0))) # (\cnt_hex5[1]~6_combout\ & ((cnt_hex5(0)))) ) ) # ( !\cnt_hex5[1]~0_combout\ & ( (!cnt_hex5(0) & (\cnt_hex5[1]~1_combout\ & 
-- ((!\cnt_hex5[1]~6_combout\) # (\cnt_hex4[3]~0_combout\)))) # (cnt_hex5(0) & (!\cnt_hex4[3]~0_combout\ & ((\cnt_hex5[1]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100001010001100010000101000110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex4[3]~0_combout\,
	datab => \ALT_INV_cnt_hex5[1]~1_combout\,
	datac => \ALT_INV_cnt_hex5[1]~6_combout\,
	datad => ALT_INV_cnt_hex5(0),
	dataf => \ALT_INV_cnt_hex5[1]~0_combout\,
	combout => \cnt_hex5[0]~5_combout\);

-- Location: FF_X88_Y13_N10
\cnt_hex5[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_hex5[0]~5_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex5[0]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y13_N45
\Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = ( \cnt_hex5[0]~DUPLICATE_q\ & ( cnt_hex5(2) & ( \cnt_hex5[1]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt_hex5[1]~DUPLICATE_q\,
	datae => \ALT_INV_cnt_hex5[0]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex5(2),
	combout => \Add2~0_combout\);

-- Location: LABCELL_X88_Y13_N42
\cnt_hex5[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex5[3]~2_combout\ = ( cnt_hex5(3) & ( \Add2~0_combout\ & ( (\cnt_hex5[1]~6_combout\ & ((!\cnt_hex4[3]~0_combout\) # (\cnt_hex5[1]~0_combout\))) ) ) ) # ( !cnt_hex5(3) & ( \Add2~0_combout\ & ( (\cnt_hex5[1]~1_combout\ & ((!\cnt_hex5[1]~6_combout\) # 
-- ((!\cnt_hex5[1]~0_combout\ & \cnt_hex4[3]~0_combout\)))) ) ) ) # ( cnt_hex5(3) & ( !\Add2~0_combout\ & ( ((\cnt_hex5[1]~6_combout\ & ((!\cnt_hex4[3]~0_combout\) # (\cnt_hex5[1]~0_combout\)))) # (\cnt_hex5[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011011100110000001100100000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex5[1]~0_combout\,
	datab => \ALT_INV_cnt_hex5[1]~1_combout\,
	datac => \ALT_INV_cnt_hex5[1]~6_combout\,
	datad => \ALT_INV_cnt_hex4[3]~0_combout\,
	datae => ALT_INV_cnt_hex5(3),
	dataf => \ALT_INV_Add2~0_combout\,
	combout => \cnt_hex5[3]~2_combout\);

-- Location: FF_X88_Y13_N44
\cnt_hex5[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_hex5[3]~2_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex5[3]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y13_N6
\led5|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led5|Equal0~0_combout\ = ( !\cnt_hex5[3]~DUPLICATE_q\ & ( (!cnt_hex5(1) & !cnt_hex5(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_hex5(1),
	datad => ALT_INV_cnt_hex5(2),
	dataf => \ALT_INV_cnt_hex5[3]~DUPLICATE_q\,
	combout => \led5|Equal0~0_combout\);

-- Location: LABCELL_X88_Y13_N33
\cnt_hex5[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex5[1]~0_combout\ = ( \led5|Equal0~1_combout\ & ( (!\state.ok~q\ & ((!\cnt_hex4[3]~8_combout\))) # (\state.ok~q\ & (!\led4|Equal0~0_combout\)) ) ) # ( !\led5|Equal0~1_combout\ & ( (\led5|Equal0~0_combout\ & ((!\state.ok~q\ & 
-- ((!\cnt_hex4[3]~8_combout\))) # (\state.ok~q\ & (!\led4|Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000000010001100100000001011111010000010101111101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \led4|ALT_INV_Equal0~0_combout\,
	datab => \led5|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_state.ok~q\,
	datad => \ALT_INV_cnt_hex4[3]~8_combout\,
	dataf => \led5|ALT_INV_Equal0~1_combout\,
	combout => \cnt_hex5[1]~0_combout\);

-- Location: MLABCELL_X87_Y13_N39
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = ( cnt_hex5(0) & ( cnt_hex5(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_hex5(1),
	dataf => ALT_INV_cnt_hex5(0),
	combout => \Add2~1_combout\);

-- Location: LABCELL_X88_Y13_N45
\cnt_hex5[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex5[2]~3_combout\ = ( cnt_hex5(2) & ( \Add2~1_combout\ & ( (\cnt_hex5[1]~6_combout\ & ((!\cnt_hex4[3]~0_combout\) # (\cnt_hex5[1]~0_combout\))) ) ) ) # ( !cnt_hex5(2) & ( \Add2~1_combout\ & ( (\cnt_hex5[1]~1_combout\ & ((!\cnt_hex5[1]~6_combout\) # 
-- ((!\cnt_hex5[1]~0_combout\ & \cnt_hex4[3]~0_combout\)))) ) ) ) # ( cnt_hex5(2) & ( !\Add2~1_combout\ & ( ((\cnt_hex5[1]~6_combout\ & ((!\cnt_hex4[3]~0_combout\) # (\cnt_hex5[1]~0_combout\)))) # (\cnt_hex5[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111111011100110011000000100000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex5[1]~0_combout\,
	datab => \ALT_INV_cnt_hex5[1]~1_combout\,
	datac => \ALT_INV_cnt_hex4[3]~0_combout\,
	datad => \ALT_INV_cnt_hex5[1]~6_combout\,
	datae => ALT_INV_cnt_hex5(2),
	dataf => \ALT_INV_Add2~1_combout\,
	combout => \cnt_hex5[2]~3_combout\);

-- Location: FF_X88_Y13_N47
\cnt_hex5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_hex5[2]~3_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex5(2));

-- Location: MLABCELL_X84_Y13_N36
\cnt_hex5[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex5[1]~1_combout\ = ( \state.ok~q\ & ( \state.hour~q\ & ( (!cnt_hex5(2) & (!cnt_hex5(3) & !\cnt_hex5[1]~DUPLICATE_q\)) ) ) ) # ( !\state.ok~q\ & ( \state.hour~q\ & ( (!cnt_hex5(2) & (!cnt_hex5(3) & !\cnt_hex5[1]~DUPLICATE_q\)) ) ) ) # ( \state.ok~q\ 
-- & ( !\state.hour~q\ ) ) # ( !\state.ok~q\ & ( !\state.hour~q\ & ( (!cnt_hex5(2) & (!cnt_hex5(3) & ((!\cnt_hex5[0]~DUPLICATE_q\) # (!\cnt_hex5[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000111111111111111110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex5(2),
	datab => \ALT_INV_cnt_hex5[0]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex5(3),
	datad => \ALT_INV_cnt_hex5[1]~DUPLICATE_q\,
	datae => \ALT_INV_state.ok~q\,
	dataf => \ALT_INV_state.hour~q\,
	combout => \cnt_hex5[1]~1_combout\);

-- Location: MLABCELL_X87_Y13_N42
\cnt_hex5[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex5[1]~4_combout\ = ( cnt_hex5(1) & ( cnt_hex5(0) & ( (\cnt_hex5[1]~6_combout\ & ((!\cnt_hex4[3]~0_combout\) # (\cnt_hex5[1]~0_combout\))) ) ) ) # ( !cnt_hex5(1) & ( cnt_hex5(0) & ( (\cnt_hex5[1]~1_combout\ & ((!\cnt_hex5[1]~6_combout\) # 
-- ((\cnt_hex4[3]~0_combout\ & !\cnt_hex5[1]~0_combout\)))) ) ) ) # ( cnt_hex5(1) & ( !cnt_hex5(0) & ( ((\cnt_hex5[1]~6_combout\ & ((!\cnt_hex4[3]~0_combout\) # (\cnt_hex5[1]~0_combout\)))) # (\cnt_hex5[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111011111100110011000100000000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex4[3]~0_combout\,
	datab => \ALT_INV_cnt_hex5[1]~1_combout\,
	datac => \ALT_INV_cnt_hex5[1]~0_combout\,
	datad => \ALT_INV_cnt_hex5[1]~6_combout\,
	datae => ALT_INV_cnt_hex5(1),
	dataf => ALT_INV_cnt_hex5(0),
	combout => \cnt_hex5[1]~4_combout\);

-- Location: FF_X87_Y13_N44
\cnt_hex5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_hex5[1]~4_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex5(1));

-- Location: LABCELL_X88_Y13_N51
\led5|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \led5|Equal0~1_combout\ = ( !\cnt_hex5[3]~DUPLICATE_q\ & ( (cnt_hex5(1) & (!cnt_hex5(0) & !cnt_hex5(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex5(1),
	datac => ALT_INV_cnt_hex5(0),
	datad => ALT_INV_cnt_hex5(2),
	dataf => \ALT_INV_cnt_hex5[3]~DUPLICATE_q\,
	combout => \led5|Equal0~1_combout\);

-- Location: LABCELL_X88_Y13_N24
\cnt_hex4[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex4[3]~9_combout\ = ( \cnt_hex4[3]~8_combout\ & ( \cnt_hex4[3]~0_combout\ & ( ((\led5|Equal0~0_combout\) # (\led5|Equal0~1_combout\)) # (\led3|WideOr0~1_combout\) ) ) ) # ( !\cnt_hex4[3]~8_combout\ & ( \cnt_hex4[3]~0_combout\ & ( 
-- ((\cnt_hex4[3]~7_combout\ & ((\led5|Equal0~0_combout\) # (\led5|Equal0~1_combout\)))) # (\led3|WideOr0~1_combout\) ) ) ) # ( \cnt_hex4[3]~8_combout\ & ( !\cnt_hex4[3]~0_combout\ & ( (\cnt_hex4[3]~7_combout\ & ((\led5|Equal0~0_combout\) # 
-- (\led5|Equal0~1_combout\))) ) ) ) # ( !\cnt_hex4[3]~8_combout\ & ( !\cnt_hex4[3]~0_combout\ & ( (\cnt_hex4[3]~7_combout\ & ((\led5|Equal0~0_combout\) # (\led5|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010100110111011101110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex4[3]~7_combout\,
	datab => \led3|ALT_INV_WideOr0~1_combout\,
	datac => \led5|ALT_INV_Equal0~1_combout\,
	datad => \led5|ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_cnt_hex4[3]~8_combout\,
	dataf => \ALT_INV_cnt_hex4[3]~0_combout\,
	combout => \cnt_hex4[3]~9_combout\);

-- Location: FF_X88_Y13_N20
\cnt_hex4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex4[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex4(0));

-- Location: LABCELL_X85_Y14_N51
\Add3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = ( cnt_hex4(1) & ( !cnt_hex4(2) $ (!\cnt_hex4[0]~DUPLICATE_q\) ) ) # ( !cnt_hex4(1) & ( cnt_hex4(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt_hex4(2),
	datac => \ALT_INV_cnt_hex4[0]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex4(1),
	combout => \Add3~2_combout\);

-- Location: LABCELL_X88_Y14_N54
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( !\cnt_hex4[3]~2_combout\ & ( \state.hour~q\ & ( (\Add3~2_combout\ & (((!\cnt_hex4[3]~3_combout\ & !\cnt_hex4[3]~6_combout\)) # (\state.ok~q\))) ) ) ) # ( \cnt_hex4[3]~2_combout\ & ( !\state.hour~q\ & ( (\Add3~2_combout\ & 
-- (((!\cnt_hex4[3]~3_combout\ & !\cnt_hex4[3]~6_combout\)) # (\state.ok~q\))) ) ) ) # ( !\cnt_hex4[3]~2_combout\ & ( !\state.hour~q\ & ( (\Add3~2_combout\ & (((!\cnt_hex4[3]~3_combout\ & !\cnt_hex4[3]~6_combout\)) # (\state.ok~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110011000000001011001100000000101100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex4[3]~3_combout\,
	datab => \ALT_INV_state.ok~q\,
	datac => \ALT_INV_cnt_hex4[3]~6_combout\,
	datad => \ALT_INV_Add3~2_combout\,
	datae => \ALT_INV_cnt_hex4[3]~2_combout\,
	dataf => \ALT_INV_state.hour~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X88_Y14_N56
\cnt_hex4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex4[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex4(2));

-- Location: LABCELL_X88_Y13_N36
\led4|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \led4|Equal0~1_combout\ = ( cnt_hex4(2) & ( (!cnt_hex4(3) & (!cnt_hex4(0) & !cnt_hex4(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt_hex4(3),
	datac => ALT_INV_cnt_hex4(0),
	datad => ALT_INV_cnt_hex4(1),
	dataf => ALT_INV_cnt_hex4(2),
	combout => \led4|Equal0~1_combout\);

-- Location: MLABCELL_X87_Y13_N3
\cnt_hex4[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex4[3]~3_combout\ = ( \led5|Equal0~1_combout\ & ( (\led4|Equal0~1_combout\ & !\led5|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \led4|ALT_INV_Equal0~1_combout\,
	datad => \led5|ALT_INV_Equal0~0_combout\,
	dataf => \led5|ALT_INV_Equal0~1_combout\,
	combout => \cnt_hex4[3]~3_combout\);

-- Location: FF_X88_Y13_N16
\cnt_hex4[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex4[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex4[3]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y13_N33
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = ( cnt_hex4(2) & ( \cnt_hex4[3]~DUPLICATE_q\ & ( (!cnt_hex4(1)) # (!\cnt_hex4[0]~DUPLICATE_q\) ) ) ) # ( !cnt_hex4(2) & ( \cnt_hex4[3]~DUPLICATE_q\ ) ) # ( cnt_hex4(2) & ( !\cnt_hex4[3]~DUPLICATE_q\ & ( (cnt_hex4(1) & 
-- \cnt_hex4[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010111111111111111111111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex4(1),
	datac => \ALT_INV_cnt_hex4[0]~DUPLICATE_q\,
	datae => ALT_INV_cnt_hex4(2),
	dataf => \ALT_INV_cnt_hex4[3]~DUPLICATE_q\,
	combout => \Add3~1_combout\);

-- Location: LABCELL_X88_Y13_N15
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \cnt_hex4[3]~6_combout\ & ( \Add3~1_combout\ & ( (\state.ok~q\ & ((!\state.hour~q\) # (!\cnt_hex4[3]~2_combout\))) ) ) ) # ( !\cnt_hex4[3]~6_combout\ & ( \Add3~1_combout\ & ( (!\state.hour~q\ & (((!\cnt_hex4[3]~3_combout\) # 
-- (\state.ok~q\)))) # (\state.hour~q\ & (!\cnt_hex4[3]~2_combout\ & ((!\cnt_hex4[3]~3_combout\) # (\state.ok~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011100000111011100000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.hour~q\,
	datab => \ALT_INV_cnt_hex4[3]~2_combout\,
	datac => \ALT_INV_cnt_hex4[3]~3_combout\,
	datad => \ALT_INV_state.ok~q\,
	datae => \ALT_INV_cnt_hex4[3]~6_combout\,
	dataf => \ALT_INV_Add3~1_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X88_Y13_N17
\cnt_hex4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex4[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex4(3));

-- Location: LABCELL_X88_Y13_N48
\led4|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led4|Equal0~0_combout\ = ( !cnt_hex4(2) & ( (cnt_hex4(3) & (cnt_hex4(0) & !cnt_hex4(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt_hex4(3),
	datac => ALT_INV_cnt_hex4(0),
	datad => ALT_INV_cnt_hex4(1),
	dataf => ALT_INV_cnt_hex4(2),
	combout => \led4|Equal0~0_combout\);

-- Location: LABCELL_X88_Y13_N30
\cnt_hex4[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex4[3]~6_combout\ = ( \cnt_hex4[3]~5_combout\ & ( (\led4|Equal0~0_combout\ & (\led5|Equal0~0_combout\ & (\led0|Equal0~0_combout\ & \cnt_hex4[3]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \led4|ALT_INV_Equal0~0_combout\,
	datab => \led5|ALT_INV_Equal0~0_combout\,
	datac => \led0|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_cnt_hex4[3]~4_combout\,
	dataf => \ALT_INV_cnt_hex4[3]~5_combout\,
	combout => \cnt_hex4[3]~6_combout\);

-- Location: LABCELL_X88_Y13_N18
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( !cnt_hex4(0) & ( \cnt_hex4[3]~2_combout\ & ( (!\state.hour~q\ & (((!\cnt_hex4[3]~6_combout\ & !\cnt_hex4[3]~3_combout\)) # (\state.ok~q\))) ) ) ) # ( !cnt_hex4(0) & ( !\cnt_hex4[3]~2_combout\ & ( ((!\cnt_hex4[3]~6_combout\ & 
-- !\cnt_hex4[3]~3_combout\)) # (\state.ok~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011111111000000000000000010000000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex4[3]~6_combout\,
	datab => \ALT_INV_cnt_hex4[3]~3_combout\,
	datac => \ALT_INV_state.hour~q\,
	datad => \ALT_INV_state.ok~q\,
	datae => ALT_INV_cnt_hex4(0),
	dataf => \ALT_INV_cnt_hex4[3]~2_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X88_Y13_N19
\cnt_hex4[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex4[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex4[0]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y13_N12
\cnt_hex4[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex4[3]~1_combout\ = ( !cnt_hex4(2) & ( (\cnt_hex4[0]~DUPLICATE_q\ & (!\cnt_hex4[3]~DUPLICATE_q\ & cnt_hex4(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex4[0]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex4[3]~DUPLICATE_q\,
	datad => ALT_INV_cnt_hex4(1),
	dataf => ALT_INV_cnt_hex4(2),
	combout => \cnt_hex4[3]~1_combout\);

-- Location: LABCELL_X88_Y13_N39
\cnt_hex4[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex4[3]~2_combout\ = ( \led4|Equal0~0_combout\ & ( (\led5|Equal0~0_combout\) # (\cnt_hex4[3]~1_combout\) ) ) # ( !\led4|Equal0~0_combout\ & ( (\cnt_hex4[3]~1_combout\ & !\led5|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex4[3]~1_combout\,
	datac => \led5|ALT_INV_Equal0~0_combout\,
	dataf => \led4|ALT_INV_Equal0~0_combout\,
	combout => \cnt_hex4[3]~2_combout\);

-- Location: MLABCELL_X84_Y13_N15
\Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = ( !cnt_hex4(1) & ( \cnt_hex4[0]~DUPLICATE_q\ ) ) # ( cnt_hex4(1) & ( !\cnt_hex4[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_cnt_hex4(1),
	dataf => \ALT_INV_cnt_hex4[0]~DUPLICATE_q\,
	combout => \Add3~0_combout\);

-- Location: LABCELL_X88_Y13_N12
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \cnt_hex4[3]~6_combout\ & ( \Add3~0_combout\ & ( (\state.ok~q\ & ((!\state.hour~q\) # (!\cnt_hex4[3]~2_combout\))) ) ) ) # ( !\cnt_hex4[3]~6_combout\ & ( \Add3~0_combout\ & ( (!\state.hour~q\ & (((!\cnt_hex4[3]~3_combout\) # 
-- (\state.ok~q\)))) # (\state.hour~q\ & (!\cnt_hex4[3]~2_combout\ & ((!\cnt_hex4[3]~3_combout\) # (\state.ok~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.hour~q\,
	datab => \ALT_INV_cnt_hex4[3]~2_combout\,
	datac => \ALT_INV_state.ok~q\,
	datad => \ALT_INV_cnt_hex4[3]~3_combout\,
	datae => \ALT_INV_cnt_hex4[3]~6_combout\,
	dataf => \ALT_INV_Add3~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X88_Y13_N13
\cnt_hex4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \cnt_hex4[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex4(1));

-- Location: LABCELL_X88_Y14_N9
\led4|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led4|WideOr3~0_combout\ = ( \cnt_hex4[0]~DUPLICATE_q\ & ( !\cnt_hex4[3]~DUPLICATE_q\ $ (((cnt_hex4(2)) # (cnt_hex4(1)))) ) ) # ( !\cnt_hex4[0]~DUPLICATE_q\ & ( (!cnt_hex4(1) & ((cnt_hex4(2)))) # (cnt_hex4(1) & (\cnt_hex4[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110100101000011111010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex4(1),
	datac => \ALT_INV_cnt_hex4[3]~DUPLICATE_q\,
	datad => ALT_INV_cnt_hex4(2),
	dataf => \ALT_INV_cnt_hex4[0]~DUPLICATE_q\,
	combout => \led4|WideOr3~0_combout\);

-- Location: FF_X88_Y14_N10
\led4|led_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led4|WideOr3~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led4|led_hex\(0));

-- Location: MLABCELL_X87_Y14_N33
\led4|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led4|WideOr4~0_combout\ = ( cnt_hex4(1) & ( ((cnt_hex4(2) & !\cnt_hex4[0]~DUPLICATE_q\)) # (\cnt_hex4[3]~DUPLICATE_q\) ) ) # ( !cnt_hex4(1) & ( (cnt_hex4(2) & ((\cnt_hex4[0]~DUPLICATE_q\) # (\cnt_hex4[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111101011111010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex4[3]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex4(2),
	datad => \ALT_INV_cnt_hex4[0]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex4(1),
	combout => \led4|WideOr4~0_combout\);

-- Location: FF_X87_Y14_N34
\led4|led_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led4|WideOr4~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led4|led_hex\(1));

-- Location: LABCELL_X88_Y14_N51
\led4|led_hex~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led4|led_hex~0_combout\ = ( \cnt_hex4[0]~DUPLICATE_q\ & ( (\cnt_hex4[3]~DUPLICATE_q\ & ((cnt_hex4(2)) # (cnt_hex4(1)))) ) ) # ( !\cnt_hex4[0]~DUPLICATE_q\ & ( (!cnt_hex4(2) & (cnt_hex4(1))) # (cnt_hex4(2) & ((\cnt_hex4[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex4(1),
	datac => \ALT_INV_cnt_hex4[3]~DUPLICATE_q\,
	datad => ALT_INV_cnt_hex4(2),
	dataf => \ALT_INV_cnt_hex4[0]~DUPLICATE_q\,
	combout => \led4|led_hex~0_combout\);

-- Location: FF_X88_Y14_N52
\led4|led_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led4|led_hex~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led4|led_hex\(2));

-- Location: LABCELL_X88_Y14_N36
\led4|WideOr3\ : cyclonev_lcell_comb
-- Equation(s):
-- \led4|WideOr3~combout\ = ( \cnt_hex4[0]~DUPLICATE_q\ & ( (!\cnt_hex4[3]~DUPLICATE_q\ & (!cnt_hex4(1) $ (cnt_hex4(2)))) # (\cnt_hex4[3]~DUPLICATE_q\ & ((cnt_hex4(2)) # (cnt_hex4(1)))) ) ) # ( !\cnt_hex4[0]~DUPLICATE_q\ & ( (!cnt_hex4(1) & ((cnt_hex4(2)))) 
-- # (cnt_hex4(1) & (\cnt_hex4[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001111000011001111111100001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex4[3]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex4(1),
	datad => ALT_INV_cnt_hex4(2),
	dataf => \ALT_INV_cnt_hex4[0]~DUPLICATE_q\,
	combout => \led4|WideOr3~combout\);

-- Location: FF_X88_Y14_N37
\led4|led_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led4|WideOr3~combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led4|led_hex\(3));

-- Location: MLABCELL_X84_Y14_N27
\led4|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led4|WideOr2~0_combout\ = ( cnt_hex4(1) & ( \cnt_hex4[3]~DUPLICATE_q\ ) ) # ( !cnt_hex4(1) & ( \cnt_hex4[3]~DUPLICATE_q\ & ( (cnt_hex4(2)) # (\cnt_hex4[0]~DUPLICATE_q\) ) ) ) # ( cnt_hex4(1) & ( !\cnt_hex4[3]~DUPLICATE_q\ & ( \cnt_hex4[0]~DUPLICATE_q\ ) 
-- ) ) # ( !cnt_hex4(1) & ( !\cnt_hex4[3]~DUPLICATE_q\ & ( (cnt_hex4(2)) # (\cnt_hex4[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001100110011001100111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex4[0]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex4(2),
	datae => ALT_INV_cnt_hex4(1),
	dataf => \ALT_INV_cnt_hex4[3]~DUPLICATE_q\,
	combout => \led4|WideOr2~0_combout\);

-- Location: FF_X85_Y14_N40
\led4|led_hex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \led4|WideOr2~0_combout\,
	clrn => \ALT_INV_rst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led4|led_hex\(4));

-- Location: MLABCELL_X87_Y14_N6
\led4|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led4|WideOr1~0_combout\ = ( cnt_hex4(1) & ( ((!cnt_hex4(2)) # (\cnt_hex4[0]~DUPLICATE_q\)) # (\cnt_hex4[3]~DUPLICATE_q\) ) ) # ( !cnt_hex4(1) & ( (!\cnt_hex4[3]~DUPLICATE_q\ & (!cnt_hex4(2) & \cnt_hex4[0]~DUPLICATE_q\)) # (\cnt_hex4[3]~DUPLICATE_q\ & 
-- (cnt_hex4(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex4[3]~DUPLICATE_q\,
	datab => ALT_INV_cnt_hex4(2),
	datac => \ALT_INV_cnt_hex4[0]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex4(1),
	combout => \led4|WideOr1~0_combout\);

-- Location: FF_X88_Y16_N43
\led4|led_hex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \led4|WideOr1~0_combout\,
	clrn => \ALT_INV_rst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led4|led_hex\(5));

-- Location: LABCELL_X88_Y14_N12
\led4|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led4|WideOr0~0_combout\ = ( \cnt_hex4[0]~DUPLICATE_q\ & ( (!\cnt_hex4[3]~DUPLICATE_q\ & (!cnt_hex4(1) $ (!cnt_hex4(2)))) # (\cnt_hex4[3]~DUPLICATE_q\ & (!cnt_hex4(1) & !cnt_hex4(2))) ) ) # ( !\cnt_hex4[0]~DUPLICATE_q\ & ( !\cnt_hex4[3]~DUPLICATE_q\ $ 
-- (((!cnt_hex4(1) & !cnt_hex4(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110000111100110000000011110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex4[3]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex4(1),
	datad => ALT_INV_cnt_hex4(2),
	dataf => \ALT_INV_cnt_hex4[0]~DUPLICATE_q\,
	combout => \led4|WideOr0~0_combout\);

-- Location: FF_X88_Y14_N13
\led4|led_hex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led4|WideOr0~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led4|led_hex\(6));

-- Location: LABCELL_X88_Y16_N36
\led5|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \led5|WideOr5~combout\ = ( \cnt_hex5[0]~DUPLICATE_q\ & ( cnt_hex5(2) & ( cnt_hex5(3) ) ) ) # ( !\cnt_hex5[0]~DUPLICATE_q\ & ( cnt_hex5(2) & ( (!\cnt_hex5[1]~DUPLICATE_q\) # (cnt_hex5(3)) ) ) ) # ( \cnt_hex5[0]~DUPLICATE_q\ & ( !cnt_hex5(2) & ( 
-- !\cnt_hex5[1]~DUPLICATE_q\ $ (cnt_hex5(3)) ) ) ) # ( !\cnt_hex5[0]~DUPLICATE_q\ & ( !cnt_hex5(2) & ( (\cnt_hex5[1]~DUPLICATE_q\ & cnt_hex5(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000111100001111001111110011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex5[1]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex5(3),
	datae => \ALT_INV_cnt_hex5[0]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex5(2),
	combout => \led5|WideOr5~combout\);

-- Location: FF_X88_Y16_N37
\led5|led_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led5|WideOr5~combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5|led_hex\(0));

-- Location: LABCELL_X88_Y15_N39
\led5|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led5|WideOr4~0_combout\ = ( \cnt_hex5[0]~DUPLICATE_q\ & ( cnt_hex5(2) & ( (!\cnt_hex5[1]~DUPLICATE_q\) # (cnt_hex5(3)) ) ) ) # ( !\cnt_hex5[0]~DUPLICATE_q\ & ( cnt_hex5(2) & ( (cnt_hex5(3)) # (\cnt_hex5[1]~DUPLICATE_q\) ) ) ) # ( 
-- \cnt_hex5[0]~DUPLICATE_q\ & ( !cnt_hex5(2) & ( (\cnt_hex5[1]~DUPLICATE_q\ & cnt_hex5(3)) ) ) ) # ( !\cnt_hex5[0]~DUPLICATE_q\ & ( !cnt_hex5(2) & ( (\cnt_hex5[1]~DUPLICATE_q\ & cnt_hex5(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100111111001111111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex5[1]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex5(3),
	datae => \ALT_INV_cnt_hex5[0]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex5(2),
	combout => \led5|WideOr4~0_combout\);

-- Location: FF_X85_Y14_N43
\led5|led_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \led5|WideOr4~0_combout\,
	clrn => \ALT_INV_rst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5|led_hex\(1));

-- Location: LABCELL_X88_Y16_N30
\led5|led_hex~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led5|led_hex~0_combout\ = ( \cnt_hex5[0]~DUPLICATE_q\ & ( cnt_hex5(2) & ( cnt_hex5(3) ) ) ) # ( !\cnt_hex5[0]~DUPLICATE_q\ & ( cnt_hex5(2) & ( cnt_hex5(3) ) ) ) # ( \cnt_hex5[0]~DUPLICATE_q\ & ( !cnt_hex5(2) & ( (\cnt_hex5[1]~DUPLICATE_q\ & cnt_hex5(3)) 
-- ) ) ) # ( !\cnt_hex5[0]~DUPLICATE_q\ & ( !cnt_hex5(2) & ( \cnt_hex5[1]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex5[1]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex5(3),
	datae => \ALT_INV_cnt_hex5[0]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex5(2),
	combout => \led5|led_hex~0_combout\);

-- Location: FF_X88_Y15_N37
\led5|led_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \led5|led_hex~0_combout\,
	clrn => \ALT_INV_rst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5|led_hex\(2));

-- Location: LABCELL_X88_Y15_N30
\led5|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led5|WideOr3~0_combout\ = ( \cnt_hex5[1]~DUPLICATE_q\ & ( cnt_hex5(2) & ( (\cnt_hex5[0]~DUPLICATE_q\) # (cnt_hex5(3)) ) ) ) # ( !\cnt_hex5[1]~DUPLICATE_q\ & ( cnt_hex5(2) & ( (!\cnt_hex5[0]~DUPLICATE_q\) # (cnt_hex5(3)) ) ) ) # ( 
-- \cnt_hex5[1]~DUPLICATE_q\ & ( !cnt_hex5(2) & ( cnt_hex5(3) ) ) ) # ( !\cnt_hex5[1]~DUPLICATE_q\ & ( !cnt_hex5(2) & ( (!cnt_hex5(3) & \cnt_hex5[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001100110011001111110011111100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt_hex5(3),
	datac => \ALT_INV_cnt_hex5[0]~DUPLICATE_q\,
	datae => \ALT_INV_cnt_hex5[1]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex5(2),
	combout => \led5|WideOr3~0_combout\);

-- Location: FF_X88_Y15_N31
\led5|led_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led5|WideOr3~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5|led_hex\(3));

-- Location: LABCELL_X88_Y15_N27
\led5|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led5|WideOr2~0_combout\ = ( \cnt_hex5[0]~DUPLICATE_q\ & ( cnt_hex5(2) ) ) # ( !\cnt_hex5[0]~DUPLICATE_q\ & ( cnt_hex5(2) & ( (!\cnt_hex5[1]~DUPLICATE_q\) # (cnt_hex5(3)) ) ) ) # ( \cnt_hex5[0]~DUPLICATE_q\ & ( !cnt_hex5(2) ) ) # ( 
-- !\cnt_hex5[0]~DUPLICATE_q\ & ( !cnt_hex5(2) & ( (cnt_hex5(3) & \cnt_hex5[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111111110011111100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt_hex5(3),
	datac => \ALT_INV_cnt_hex5[1]~DUPLICATE_q\,
	datae => \ALT_INV_cnt_hex5[0]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex5(2),
	combout => \led5|WideOr2~0_combout\);

-- Location: FF_X88_Y15_N28
\led5|led_hex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led5|WideOr2~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5|led_hex\(4));

-- Location: LABCELL_X88_Y15_N21
\led5|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \led5|WideOr1~combout\ = ( \cnt_hex5[0]~DUPLICATE_q\ & ( cnt_hex5(2) & ( (cnt_hex5(3)) # (\cnt_hex5[1]~DUPLICATE_q\) ) ) ) # ( !\cnt_hex5[0]~DUPLICATE_q\ & ( cnt_hex5(2) & ( cnt_hex5(3) ) ) ) # ( \cnt_hex5[0]~DUPLICATE_q\ & ( !cnt_hex5(2) & ( 
-- (!cnt_hex5(3)) # (\cnt_hex5[1]~DUPLICATE_q\) ) ) ) # ( !\cnt_hex5[0]~DUPLICATE_q\ & ( !cnt_hex5(2) & ( \cnt_hex5[1]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111100111111001100001111000011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex5[1]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex5(3),
	datae => \ALT_INV_cnt_hex5[0]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex5(2),
	combout => \led5|WideOr1~combout\);

-- Location: FF_X88_Y13_N41
\led5|led_hex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \led5|WideOr1~combout\,
	clrn => \ALT_INV_rst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5|led_hex\(5));

-- Location: LABCELL_X88_Y14_N42
\led5|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led5|WideOr0~0_combout\ = ( \cnt_hex5[1]~DUPLICATE_q\ & ( (!\cnt_hex5[3]~DUPLICATE_q\ & ((!\cnt_hex5[0]~DUPLICATE_q\) # (!cnt_hex5(2)))) ) ) # ( !\cnt_hex5[1]~DUPLICATE_q\ & ( !cnt_hex5(2) $ (!\cnt_hex5[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex5[0]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex5(2),
	datad => \ALT_INV_cnt_hex5[3]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex5[1]~DUPLICATE_q\,
	combout => \led5|WideOr0~0_combout\);

-- Location: FF_X88_Y14_N43
\led5|led_hex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \led5|WideOr0~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5|led_hex\(6));

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


