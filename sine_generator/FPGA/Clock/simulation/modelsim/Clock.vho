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

-- DATE "04/02/2021 11:54:00"

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

ENTITY 	Clock IS
    PORT (
	clk : IN std_logic;
	led_hex0 : BUFFER std_logic_vector(6 DOWNTO 0);
	led_hex1 : BUFFER std_logic_vector(6 DOWNTO 0);
	led_hex2 : BUFFER std_logic_vector(6 DOWNTO 0);
	led_hex3 : BUFFER std_logic_vector(6 DOWNTO 0);
	led_hex4 : BUFFER std_logic_vector(6 DOWNTO 0);
	led_hex5 : BUFFER std_logic_vector(6 DOWNTO 0);
	key0 : IN std_logic;
	key1 : IN std_logic;
	key2 : IN std_logic;
	key3 : IN std_logic
	);
END Clock;

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
-- key1	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key2	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key3	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Clock IS
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
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \cnt_rst[0]~_wirecell_combout\ : std_logic;
SIGNAL \cnt_rst[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \cnt_rst[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \swing[0]~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \swing[0]~1_combout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \rst~0_combout\ : std_logic;
SIGNAL \rst~q\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \Set_sec|cnt_hex0[0]~4_combout\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \Set_sec|cnt_hex0[3]~1_combout\ : std_logic;
SIGNAL \Set_sec|cnt_hex0~0_combout\ : std_logic;
SIGNAL \Set_sec|cnt_hex0~3_combout\ : std_logic;
SIGNAL \Set_sec|cnt_hex0[2]~2_combout\ : std_logic;
SIGNAL \hex0|WideOr5~combout\ : std_logic;
SIGNAL \hex0|WideOr4~0_combout\ : std_logic;
SIGNAL \hex0|led_hex~0_combout\ : std_logic;
SIGNAL \hex0|WideOr3~0_combout\ : std_logic;
SIGNAL \hex0|WideOr2~0_combout\ : std_logic;
SIGNAL \hex0|WideOr1~0_combout\ : std_logic;
SIGNAL \hex0|WideOr0~combout\ : std_logic;
SIGNAL \hex0|Equal0~0_combout\ : std_logic;
SIGNAL \hex1|Equal0~0_combout\ : std_logic;
SIGNAL \Set_sec|cnt_hex1[0]~0_combout\ : std_logic;
SIGNAL \Set_sec|cnt_hex1[1]~1_combout\ : std_logic;
SIGNAL \Set_sec|cnt_hex1[3]~2_combout\ : std_logic;
SIGNAL \Set_sec|cnt_hex1[2]~3_combout\ : std_logic;
SIGNAL \hex1|WideOr5~combout\ : std_logic;
SIGNAL \hex1|WideOr4~combout\ : std_logic;
SIGNAL \hex1|led_hex~0_combout\ : std_logic;
SIGNAL \hex1|WideOr3~0_combout\ : std_logic;
SIGNAL \hex1|WideOr2~0_combout\ : std_logic;
SIGNAL \hex1|WideOr1~0_combout\ : std_logic;
SIGNAL \hex1|WideOr0~combout\ : std_logic;
SIGNAL \key2~input_o\ : std_logic;
SIGNAL \key2~inputCLKENA0_outclk\ : std_logic;
SIGNAL \cnt_hex2[0]~3_combout\ : std_logic;
SIGNAL \cnt_hex2[0]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_hex2[2]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_hex2~1_combout\ : std_logic;
SIGNAL \cnt_hex2[3]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_hex2~2_combout\ : std_logic;
SIGNAL \cnt_hex2[2]~0_combout\ : std_logic;
SIGNAL \cnt_hex2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \hex2|WideOr5~combout\ : std_logic;
SIGNAL \hex2|WideOr4~0_combout\ : std_logic;
SIGNAL \hex2|led_hex~0_combout\ : std_logic;
SIGNAL \hex2|WideOr3~0_combout\ : std_logic;
SIGNAL \hex2|WideOr2~0_combout\ : std_logic;
SIGNAL \hex2|WideOr1~0_combout\ : std_logic;
SIGNAL \hex2|WideOr0~combout\ : std_logic;
SIGNAL \hex2|Equal0~0_combout\ : std_logic;
SIGNAL \cnt_hex3[2]~0_combout\ : std_logic;
SIGNAL \cnt_hex3[2]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_hex3[3]~1_combout\ : std_logic;
SIGNAL \cnt_hex3[0]~2_combout\ : std_logic;
SIGNAL \cnt_hex3[1]~3_combout\ : std_logic;
SIGNAL \cnt_hex3[1]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_hex3[0]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_hex3[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Min|WideOr5~combout\ : std_logic;
SIGNAL \Min|WideOr4~combout\ : std_logic;
SIGNAL \Min|led_hex~0_combout\ : std_logic;
SIGNAL \Min|WideOr3~0_combout\ : std_logic;
SIGNAL \Min|WideOr2~0_combout\ : std_logic;
SIGNAL \Min|WideOr1~0_combout\ : std_logic;
SIGNAL \Min|WideOr0~combout\ : std_logic;
SIGNAL \key3~input_o\ : std_logic;
SIGNAL \key3~inputCLKENA0_outclk\ : std_logic;
SIGNAL \cnt_hex4~1_combout\ : std_logic;
SIGNAL \cnt_hex4~2_combout\ : std_logic;
SIGNAL \cnt_hex4[3]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_hex4[2]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_hex5[0]~0_combout\ : std_logic;
SIGNAL \cnt_hex5[0]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_hex5[1]~1_combout\ : std_logic;
SIGNAL \cnt_hex5[1]~DUPLICATE_q\ : std_logic;
SIGNAL \cnt_hex4~3_combout\ : std_logic;
SIGNAL \cnt_hex4~0_combout\ : std_logic;
SIGNAL \cnt_hex4[1]~DUPLICATE_q\ : std_logic;
SIGNAL \hourdv|WideOr3~0_combout\ : std_logic;
SIGNAL \cnt_hex4[0]~DUPLICATE_q\ : std_logic;
SIGNAL \hourdv|WideOr4~0_combout\ : std_logic;
SIGNAL \hourdv|led_hex~0_combout\ : std_logic;
SIGNAL \hourdv|WideOr3~combout\ : std_logic;
SIGNAL \hourdv|WideOr2~0_combout\ : std_logic;
SIGNAL \hourdv|WideOr1~0_combout\ : std_logic;
SIGNAL \hourdv|WideOr0~combout\ : std_logic;
SIGNAL \hourc|Equal0~0_combout\ : std_logic;
SIGNAL \hourc|Equal0~1_combout\ : std_logic;
SIGNAL \hourc|WideOr1~0_combout\ : std_logic;
SIGNAL swing : std_logic_vector(9 DOWNTO 0);
SIGNAL cnt_hex5 : std_logic_vector(3 DOWNTO 0);
SIGNAL cnt_rst : std_logic_vector(9 DOWNTO 0);
SIGNAL \hex0|led_hex\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \hex1|led_hex\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \hex2|led_hex\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Set_sec|cnt_hex1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL cnt_hex4 : std_logic_vector(3 DOWNTO 0);
SIGNAL \Min|led_hex\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \hourdv|led_hex\ : std_logic_vector(6 DOWNTO 0);
SIGNAL cnt_hex3 : std_logic_vector(3 DOWNTO 0);
SIGNAL \hourc|led_hex\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Set_sec|cnt_hex0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL cnt_hex2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_cnt_hex5[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex5[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex4[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex4[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex4[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex4[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex3[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex3[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex3[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex3[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex2[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex2[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_hex2[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_rst[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cnt_rst[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_key3~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_key2~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_key1~input_o\ : std_logic;
SIGNAL \ALT_INV_key0~input_o\ : std_logic;
SIGNAL \hex2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \hex0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \hex1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL ALT_INV_swing : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \Set_sec|ALT_INV_cnt_hex0[3]~1_combout\ : std_logic;
SIGNAL ALT_INV_cnt_hex5 : std_logic_vector(1 DOWNTO 1);
SIGNAL ALT_INV_cnt_hex4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_cnt_hex3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_cnt_hex2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \Set_sec|ALT_INV_cnt_hex1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~q\ : std_logic;
SIGNAL \Set_sec|ALT_INV_cnt_hex0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hourc|ALT_INV_led_hex\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \hourdv|ALT_INV_led_hex\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \Min|ALT_INV_led_hex\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \hex2|ALT_INV_led_hex\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \hex1|ALT_INV_led_hex\ : std_logic_vector(6 DOWNTO 6);
SIGNAL \hex0|ALT_INV_led_hex\ : std_logic_vector(6 DOWNTO 6);
SIGNAL ALT_INV_cnt_rst : std_logic_vector(9 DOWNTO 0);

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
\ALT_INV_cnt_hex5[1]~DUPLICATE_q\ <= NOT \cnt_hex5[1]~DUPLICATE_q\;
\ALT_INV_cnt_hex5[0]~DUPLICATE_q\ <= NOT \cnt_hex5[0]~DUPLICATE_q\;
\ALT_INV_cnt_hex4[3]~DUPLICATE_q\ <= NOT \cnt_hex4[3]~DUPLICATE_q\;
\ALT_INV_cnt_hex4[0]~DUPLICATE_q\ <= NOT \cnt_hex4[0]~DUPLICATE_q\;
\ALT_INV_cnt_hex4[2]~DUPLICATE_q\ <= NOT \cnt_hex4[2]~DUPLICATE_q\;
\ALT_INV_cnt_hex4[1]~DUPLICATE_q\ <= NOT \cnt_hex4[1]~DUPLICATE_q\;
\ALT_INV_cnt_hex3[1]~DUPLICATE_q\ <= NOT \cnt_hex3[1]~DUPLICATE_q\;
\ALT_INV_cnt_hex3[0]~DUPLICATE_q\ <= NOT \cnt_hex3[0]~DUPLICATE_q\;
\ALT_INV_cnt_hex3[3]~DUPLICATE_q\ <= NOT \cnt_hex3[3]~DUPLICATE_q\;
\ALT_INV_cnt_hex3[2]~DUPLICATE_q\ <= NOT \cnt_hex3[2]~DUPLICATE_q\;
\ALT_INV_cnt_hex2[1]~DUPLICATE_q\ <= NOT \cnt_hex2[1]~DUPLICATE_q\;
\ALT_INV_cnt_hex2[0]~DUPLICATE_q\ <= NOT \cnt_hex2[0]~DUPLICATE_q\;
\ALT_INV_cnt_hex2[3]~DUPLICATE_q\ <= NOT \cnt_hex2[3]~DUPLICATE_q\;
\ALT_INV_cnt_hex2[2]~DUPLICATE_q\ <= NOT \cnt_hex2[2]~DUPLICATE_q\;
\ALT_INV_cnt_rst[0]~DUPLICATE_q\ <= NOT \cnt_rst[0]~DUPLICATE_q\;
\ALT_INV_cnt_rst[3]~DUPLICATE_q\ <= NOT \cnt_rst[3]~DUPLICATE_q\;
\ALT_INV_key3~inputCLKENA0_outclk\ <= NOT \key3~inputCLKENA0_outclk\;
\ALT_INV_key2~inputCLKENA0_outclk\ <= NOT \key2~inputCLKENA0_outclk\;
\ALT_INV_key1~input_o\ <= NOT \key1~input_o\;
\ALT_INV_key0~input_o\ <= NOT \key0~input_o\;
\hex2|ALT_INV_Equal0~0_combout\ <= NOT \hex2|Equal0~0_combout\;
\hex0|ALT_INV_Equal0~0_combout\ <= NOT \hex0|Equal0~0_combout\;
\hex1|ALT_INV_Equal0~0_combout\ <= NOT \hex1|Equal0~0_combout\;
\ALT_INV_Equal5~1_combout\ <= NOT \Equal5~1_combout\;
ALT_INV_swing(9) <= NOT swing(9);
ALT_INV_swing(8) <= NOT swing(8);
ALT_INV_swing(7) <= NOT swing(7);
ALT_INV_swing(6) <= NOT swing(6);
\ALT_INV_Equal5~0_combout\ <= NOT \Equal5~0_combout\;
ALT_INV_swing(4) <= NOT swing(4);
ALT_INV_swing(3) <= NOT swing(3);
ALT_INV_swing(2) <= NOT swing(2);
ALT_INV_swing(1) <= NOT swing(1);
ALT_INV_swing(0) <= NOT swing(0);
\ALT_INV_Equal4~1_combout\ <= NOT \Equal4~1_combout\;
\ALT_INV_Equal4~0_combout\ <= NOT \Equal4~0_combout\;
ALT_INV_swing(5) <= NOT swing(5);
\Set_sec|ALT_INV_cnt_hex0[3]~1_combout\ <= NOT \Set_sec|cnt_hex0[3]~1_combout\;
ALT_INV_cnt_hex5(1) <= NOT cnt_hex5(1);
ALT_INV_cnt_hex4(3) <= NOT cnt_hex4(3);
ALT_INV_cnt_hex4(0) <= NOT cnt_hex4(0);
ALT_INV_cnt_hex4(2) <= NOT cnt_hex4(2);
ALT_INV_cnt_hex4(1) <= NOT cnt_hex4(1);
ALT_INV_cnt_hex3(1) <= NOT cnt_hex3(1);
ALT_INV_cnt_hex3(0) <= NOT cnt_hex3(0);
ALT_INV_cnt_hex3(3) <= NOT cnt_hex3(3);
ALT_INV_cnt_hex3(2) <= NOT cnt_hex3(2);
ALT_INV_cnt_hex2(1) <= NOT cnt_hex2(1);
ALT_INV_cnt_hex2(0) <= NOT cnt_hex2(0);
ALT_INV_cnt_hex2(3) <= NOT cnt_hex2(3);
ALT_INV_cnt_hex2(2) <= NOT cnt_hex2(2);
\Set_sec|ALT_INV_cnt_hex1\(2) <= NOT \Set_sec|cnt_hex1\(2);
\Set_sec|ALT_INV_cnt_hex1\(3) <= NOT \Set_sec|cnt_hex1\(3);
\Set_sec|ALT_INV_cnt_hex1\(1) <= NOT \Set_sec|cnt_hex1\(1);
\Set_sec|ALT_INV_cnt_hex1\(0) <= NOT \Set_sec|cnt_hex1\(0);
\ALT_INV_rst~q\ <= NOT \rst~q\;
\Set_sec|ALT_INV_cnt_hex0\(0) <= NOT \Set_sec|cnt_hex0\(0);
\Set_sec|ALT_INV_cnt_hex0\(1) <= NOT \Set_sec|cnt_hex0\(1);
\Set_sec|ALT_INV_cnt_hex0\(2) <= NOT \Set_sec|cnt_hex0\(2);
\Set_sec|ALT_INV_cnt_hex0\(3) <= NOT \Set_sec|cnt_hex0\(3);
\hourc|ALT_INV_led_hex\(6) <= NOT \hourc|led_hex\(6);
\hourdv|ALT_INV_led_hex\(6) <= NOT \hourdv|led_hex\(6);
\Min|ALT_INV_led_hex\(6) <= NOT \Min|led_hex\(6);
\hex2|ALT_INV_led_hex\(6) <= NOT \hex2|led_hex\(6);
\hex1|ALT_INV_led_hex\(6) <= NOT \hex1|led_hex\(6);
\hex0|ALT_INV_led_hex\(6) <= NOT \hex0|led_hex\(6);
ALT_INV_cnt_rst(9) <= NOT cnt_rst(9);
ALT_INV_cnt_rst(8) <= NOT cnt_rst(8);
ALT_INV_cnt_rst(7) <= NOT cnt_rst(7);
ALT_INV_cnt_rst(6) <= NOT cnt_rst(6);
ALT_INV_cnt_rst(5) <= NOT cnt_rst(5);
ALT_INV_cnt_rst(0) <= NOT cnt_rst(0);
ALT_INV_cnt_rst(1) <= NOT cnt_rst(1);
ALT_INV_cnt_rst(2) <= NOT cnt_rst(2);
ALT_INV_cnt_rst(3) <= NOT cnt_rst(3);
ALT_INV_cnt_rst(4) <= NOT cnt_rst(4);

-- Location: IOOBUF_X89_Y8_N39
\led_hex0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0|led_hex\(0),
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
	i => \hex0|led_hex\(1),
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
	i => \hex0|led_hex\(2),
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
	i => \hex0|led_hex\(3),
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
	i => \hex0|led_hex\(4),
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
	i => \hex0|led_hex\(5),
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
	i => \hex0|ALT_INV_led_hex\(6),
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
	i => \hex1|led_hex\(0),
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
	i => \hex1|led_hex\(1),
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
	i => \hex1|led_hex\(2),
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
	i => \hex1|led_hex\(3),
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
	i => \hex1|led_hex\(4),
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
	i => \hex1|led_hex\(5),
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
	i => \hex1|ALT_INV_led_hex\(6),
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
	i => \hex2|led_hex\(0),
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
	i => \hex2|led_hex\(1),
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
	i => \hex2|led_hex\(2),
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
	i => \hex2|led_hex\(3),
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
	i => \hex2|led_hex\(4),
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
	i => \hex2|led_hex\(5),
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
	i => \hex2|ALT_INV_led_hex\(6),
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
	i => \Min|led_hex\(0),
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
	i => \Min|led_hex\(1),
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
	i => \Min|led_hex\(2),
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
	i => \Min|led_hex\(3),
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
	i => \Min|led_hex\(4),
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
	i => \Min|led_hex\(5),
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
	i => \Min|ALT_INV_led_hex\(6),
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
	i => \hourdv|led_hex\(0),
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
	i => \hourdv|led_hex\(1),
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
	i => \hourdv|led_hex\(2),
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
	i => \hourdv|led_hex\(3),
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
	i => \hourdv|led_hex\(4),
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
	i => \hourdv|led_hex\(5),
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
	i => \hourdv|ALT_INV_led_hex\(6),
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
	i => \hourc|led_hex\(0),
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
	i => GND,
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
	i => \hourc|led_hex\(2),
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
	i => \hourc|led_hex\(3),
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
	i => \hourc|led_hex\(4),
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
	i => \hourc|led_hex\(5),
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
	i => \hourc|ALT_INV_led_hex\(6),
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

-- Location: LABCELL_X88_Y14_N0
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( swing(1) ) + ( swing(0) ) + ( !VCC ))
-- \Add4~6\ = CARRY(( swing(1) ) + ( swing(0) ) + ( !VCC ))

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
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: FF_X87_Y14_N8
\cnt_rst[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~5_sumout\,
	asdata => \cnt_rst[3]~DUPLICATE_q\,
	sload => \Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(3));

-- Location: MLABCELL_X87_Y14_N48
\Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ( cnt_rst(2) & ( cnt_rst(5) & ( (cnt_rst(0) & (!cnt_rst(3) & (cnt_rst(1) & !cnt_rst(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_rst(0),
	datab => ALT_INV_cnt_rst(3),
	datac => ALT_INV_cnt_rst(1),
	datad => ALT_INV_cnt_rst(4),
	datae => ALT_INV_cnt_rst(2),
	dataf => ALT_INV_cnt_rst(5),
	combout => \Equal4~0_combout\);

-- Location: MLABCELL_X87_Y14_N36
\Equal4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = ( \Equal4~1_combout\ & ( \Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Equal4~1_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \Equal4~2_combout\);

-- Location: FF_X87_Y14_N58
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
	sload => \Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(0));

-- Location: MLABCELL_X87_Y14_N57
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

-- Location: FF_X87_Y14_N59
\cnt_rst[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \cnt_rst[0]~_wirecell_combout\,
	asdata => VCC,
	sload => \Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_rst[0]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y14_N0
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( \cnt_rst[0]~DUPLICATE_q\ ) + ( cnt_rst(1) ) + ( !VCC ))
-- \Add5~14\ = CARRY(( \cnt_rst[0]~DUPLICATE_q\ ) + ( cnt_rst(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(1),
	datad => \ALT_INV_cnt_rst[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: FF_X87_Y14_N2
\cnt_rst[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~13_sumout\,
	asdata => cnt_rst(1),
	sload => \Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(1));

-- Location: MLABCELL_X87_Y14_N3
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( cnt_rst(2) ) + ( GND ) + ( \Add5~14\ ))
-- \Add5~10\ = CARRY(( cnt_rst(2) ) + ( GND ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_rst(2),
	cin => \Add5~14\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: FF_X87_Y14_N5
\cnt_rst[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~9_sumout\,
	asdata => cnt_rst(2),
	sload => \Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(2));

-- Location: MLABCELL_X87_Y14_N6
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( \cnt_rst[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~10\ ))
-- \Add5~6\ = CARRY(( \cnt_rst[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_cnt_rst[3]~DUPLICATE_q\,
	cin => \Add5~10\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: FF_X87_Y14_N7
\cnt_rst[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~5_sumout\,
	asdata => \cnt_rst[3]~DUPLICATE_q\,
	sload => \Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_rst[3]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y14_N9
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( cnt_rst(4) ) + ( GND ) + ( \Add5~6\ ))
-- \Add5~2\ = CARRY(( cnt_rst(4) ) + ( GND ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(4),
	cin => \Add5~6\,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: FF_X87_Y14_N11
\cnt_rst[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~1_sumout\,
	asdata => cnt_rst(4),
	sload => \Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(4));

-- Location: MLABCELL_X87_Y14_N12
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( cnt_rst(5) ) + ( GND ) + ( \Add5~2\ ))
-- \Add5~18\ = CARRY(( cnt_rst(5) ) + ( GND ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt_rst(5),
	cin => \Add5~2\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: FF_X87_Y14_N14
\cnt_rst[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~17_sumout\,
	asdata => cnt_rst(5),
	sload => \Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(5));

-- Location: MLABCELL_X87_Y14_N15
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( cnt_rst(6) ) + ( GND ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( cnt_rst(6) ) + ( GND ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(6),
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: FF_X87_Y14_N17
\cnt_rst[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~21_sumout\,
	asdata => cnt_rst(6),
	sload => \Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(6));

-- Location: MLABCELL_X87_Y14_N18
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( cnt_rst(7) ) + ( GND ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( cnt_rst(7) ) + ( GND ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(7),
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: FF_X87_Y14_N20
\cnt_rst[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~25_sumout\,
	asdata => cnt_rst(7),
	sload => \Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(7));

-- Location: MLABCELL_X87_Y14_N21
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( cnt_rst(8) ) + ( GND ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( cnt_rst(8) ) + ( GND ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_rst(8),
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: FF_X87_Y14_N23
\cnt_rst[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~29_sumout\,
	asdata => cnt_rst(8),
	sload => \Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(8));

-- Location: MLABCELL_X87_Y14_N24
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( cnt_rst(9) ) + ( GND ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(9),
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\);

-- Location: FF_X87_Y14_N26
\cnt_rst[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add5~33_sumout\,
	asdata => cnt_rst(9),
	sload => \Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(9));

-- Location: MLABCELL_X87_Y14_N45
\Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = ( cnt_rst(8) & ( cnt_rst(7) & ( (cnt_rst(6) & cnt_rst(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(6),
	datad => ALT_INV_cnt_rst(9),
	datae => ALT_INV_cnt_rst(8),
	dataf => ALT_INV_cnt_rst(7),
	combout => \Equal4~1_combout\);

-- Location: LABCELL_X88_Y14_N30
\swing[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \swing[0]~0_combout\ = ( \Equal5~0_combout\ & ( (\Equal4~1_combout\ & (\Equal4~0_combout\ & ((!swing(5)) # (!\Equal5~1_combout\)))) ) ) # ( !\Equal5~0_combout\ & ( (\Equal4~1_combout\ & \Equal4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101000000000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~1_combout\,
	datab => ALT_INV_swing(5),
	datac => \ALT_INV_Equal5~1_combout\,
	datad => \ALT_INV_Equal4~0_combout\,
	dataf => \ALT_INV_Equal5~0_combout\,
	combout => \swing[0]~0_combout\);

-- Location: FF_X88_Y14_N2
\swing[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~5_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(1));

-- Location: MLABCELL_X87_Y14_N30
\Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = ( swing(2) & ( !swing(3) & ( (!swing(4) & (!swing(1) & !swing(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_swing(4),
	datac => ALT_INV_swing(1),
	datad => ALT_INV_swing(0),
	datae => ALT_INV_swing(2),
	dataf => ALT_INV_swing(3),
	combout => \Equal5~0_combout\);

-- Location: LABCELL_X88_Y14_N48
\swing[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \swing[0]~1_combout\ = ( swing(0) & ( swing(5) & ( (!\Equal4~1_combout\) # ((!\Equal4~0_combout\) # ((\Equal5~0_combout\ & \Equal5~1_combout\))) ) ) ) # ( !swing(0) & ( swing(5) & ( (\Equal4~1_combout\ & (\Equal4~0_combout\ & ((!\Equal5~0_combout\) # 
-- (!\Equal5~1_combout\)))) ) ) ) # ( swing(0) & ( !swing(5) & ( (!\Equal4~1_combout\) # (!\Equal4~0_combout\) ) ) ) # ( !swing(0) & ( !swing(5) & ( (\Equal4~1_combout\ & \Equal4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111000000000000000011101111111111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal5~0_combout\,
	datab => \ALT_INV_Equal5~1_combout\,
	datac => \ALT_INV_Equal4~1_combout\,
	datad => \ALT_INV_Equal4~0_combout\,
	datae => ALT_INV_swing(0),
	dataf => ALT_INV_swing(5),
	combout => \swing[0]~1_combout\);

-- Location: FF_X88_Y14_N50
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

-- Location: LABCELL_X88_Y14_N3
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( swing(2) ) + ( GND ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( swing(2) ) + ( GND ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_swing(2),
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: FF_X88_Y14_N5
\swing[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~9_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(2));

-- Location: LABCELL_X88_Y14_N6
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( swing(3) ) + ( GND ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( swing(3) ) + ( GND ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_swing(3),
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: FF_X88_Y14_N7
\swing[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~13_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(3));

-- Location: LABCELL_X88_Y14_N9
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( swing(4) ) + ( GND ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( swing(4) ) + ( GND ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_swing(4),
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: FF_X88_Y14_N11
\swing[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~17_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(4));

-- Location: LABCELL_X88_Y14_N12
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( swing(5) ) + ( GND ) + ( \Add4~18\ ))
-- \Add4~2\ = CARRY(( swing(5) ) + ( GND ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_swing(5),
	cin => \Add4~18\,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: FF_X88_Y14_N13
\swing[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~1_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(5));

-- Location: LABCELL_X88_Y14_N15
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( swing(6) ) + ( GND ) + ( \Add4~2\ ))
-- \Add4~22\ = CARRY(( swing(6) ) + ( GND ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_swing(6),
	cin => \Add4~2\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: FF_X88_Y14_N17
\swing[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~21_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(6));

-- Location: LABCELL_X88_Y14_N18
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( swing(7) ) + ( GND ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( swing(7) ) + ( GND ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_swing(7),
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: FF_X88_Y14_N20
\swing[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~25_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(7));

-- Location: LABCELL_X88_Y14_N21
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( swing(8) ) + ( GND ) + ( \Add4~26\ ))
-- \Add4~30\ = CARRY(( swing(8) ) + ( GND ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_swing(8),
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: FF_X88_Y14_N23
\swing[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~29_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(8));

-- Location: LABCELL_X88_Y14_N24
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( swing(9) ) + ( GND ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_swing(9),
	cin => \Add4~30\,
	sumout => \Add4~33_sumout\);

-- Location: FF_X88_Y14_N25
\swing[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~33_sumout\,
	ena => \swing[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => swing(9));

-- Location: LABCELL_X88_Y14_N36
\Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = ( swing(6) & ( (!swing(9) & (!swing(7) & !swing(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_swing(9),
	datac => ALT_INV_swing(7),
	datad => ALT_INV_swing(8),
	dataf => ALT_INV_swing(6),
	combout => \Equal5~1_combout\);

-- Location: LABCELL_X88_Y15_N0
\rst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rst~0_combout\ = ( \rst~q\ & ( \Equal5~0_combout\ & ( (!\Equal5~1_combout\) # ((!swing(5)) # ((!\Equal4~1_combout\) # (!\Equal4~0_combout\))) ) ) ) # ( !\rst~q\ & ( \Equal5~0_combout\ & ( (\Equal4~1_combout\ & (\Equal4~0_combout\ & ((!\Equal5~1_combout\) 
-- # (!swing(5))))) ) ) ) # ( \rst~q\ & ( !\Equal5~0_combout\ ) ) # ( !\rst~q\ & ( !\Equal5~0_combout\ & ( (\Equal4~1_combout\ & \Equal4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal5~1_combout\,
	datab => ALT_INV_swing(5),
	datac => \ALT_INV_Equal4~1_combout\,
	datad => \ALT_INV_Equal4~0_combout\,
	datae => \ALT_INV_rst~q\,
	dataf => \ALT_INV_Equal5~0_combout\,
	combout => \rst~0_combout\);

-- Location: FF_X88_Y15_N2
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

-- Location: MLABCELL_X87_Y16_N24
\Set_sec|cnt_hex0[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Set_sec|cnt_hex0[0]~4_combout\ = !\Set_sec|cnt_hex0\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Set_sec|ALT_INV_cnt_hex0\(0),
	combout => \Set_sec|cnt_hex0[0]~4_combout\);

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

-- Location: MLABCELL_X87_Y16_N27
\Set_sec|cnt_hex0[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Set_sec|cnt_hex0[3]~1_combout\ = ( !\rst~q\ & ( (\key0~input_o\ & !\key1~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0~input_o\,
	datac => \ALT_INV_key1~input_o\,
	dataf => \ALT_INV_rst~q\,
	combout => \Set_sec|cnt_hex0[3]~1_combout\);

-- Location: FF_X87_Y16_N26
\Set_sec|cnt_hex0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Set_sec|cnt_hex0[0]~4_combout\,
	ena => \Set_sec|cnt_hex0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Set_sec|cnt_hex0\(0));

-- Location: MLABCELL_X87_Y16_N36
\Set_sec|cnt_hex0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Set_sec|cnt_hex0~0_combout\ = ( \Set_sec|cnt_hex0\(1) & ( !\Set_sec|cnt_hex0\(3) $ (((!\Set_sec|cnt_hex0\(2)) # (!\Set_sec|cnt_hex0\(0)))) ) ) # ( !\Set_sec|cnt_hex0\(1) & ( (\Set_sec|cnt_hex0\(3) & ((!\Set_sec|cnt_hex0\(0)) # (\Set_sec|cnt_hex0\(2)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Set_sec|ALT_INV_cnt_hex0\(2),
	datac => \Set_sec|ALT_INV_cnt_hex0\(0),
	datad => \Set_sec|ALT_INV_cnt_hex0\(3),
	dataf => \Set_sec|ALT_INV_cnt_hex0\(1),
	combout => \Set_sec|cnt_hex0~0_combout\);

-- Location: FF_X87_Y16_N38
\Set_sec|cnt_hex0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Set_sec|cnt_hex0~0_combout\,
	ena => \Set_sec|cnt_hex0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Set_sec|cnt_hex0\(3));

-- Location: MLABCELL_X87_Y16_N39
\Set_sec|cnt_hex0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Set_sec|cnt_hex0~3_combout\ = ( \Set_sec|cnt_hex0\(3) & ( (!\Set_sec|cnt_hex0\(0) & ((\Set_sec|cnt_hex0\(1)))) # (\Set_sec|cnt_hex0\(0) & (\Set_sec|cnt_hex0\(2) & !\Set_sec|cnt_hex0\(1))) ) ) # ( !\Set_sec|cnt_hex0\(3) & ( !\Set_sec|cnt_hex0\(0) $ 
-- (!\Set_sec|cnt_hex0\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000010001110011000001000111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Set_sec|ALT_INV_cnt_hex0\(2),
	datab => \Set_sec|ALT_INV_cnt_hex0\(0),
	datad => \Set_sec|ALT_INV_cnt_hex0\(1),
	dataf => \Set_sec|ALT_INV_cnt_hex0\(3),
	combout => \Set_sec|cnt_hex0~3_combout\);

-- Location: FF_X87_Y16_N41
\Set_sec|cnt_hex0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Set_sec|cnt_hex0~3_combout\,
	ena => \Set_sec|cnt_hex0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Set_sec|cnt_hex0\(1));

-- Location: MLABCELL_X87_Y16_N54
\Set_sec|cnt_hex0[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Set_sec|cnt_hex0[2]~2_combout\ = ( \Set_sec|cnt_hex0\(2) & ( \Set_sec|cnt_hex0\(1) & ( (((!\Set_sec|cnt_hex0\(0)) # (!\key0~input_o\)) # (\key1~input_o\)) # (\rst~q\) ) ) ) # ( !\Set_sec|cnt_hex0\(2) & ( \Set_sec|cnt_hex0\(1) & ( (!\rst~q\ & 
-- (!\key1~input_o\ & (\Set_sec|cnt_hex0\(0) & \key0~input_o\))) ) ) ) # ( \Set_sec|cnt_hex0\(2) & ( !\Set_sec|cnt_hex0\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000010001111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~q\,
	datab => \ALT_INV_key1~input_o\,
	datac => \Set_sec|ALT_INV_cnt_hex0\(0),
	datad => \ALT_INV_key0~input_o\,
	datae => \Set_sec|ALT_INV_cnt_hex0\(2),
	dataf => \Set_sec|ALT_INV_cnt_hex0\(1),
	combout => \Set_sec|cnt_hex0[2]~2_combout\);

-- Location: FF_X87_Y16_N56
\Set_sec|cnt_hex0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Set_sec|cnt_hex0[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Set_sec|cnt_hex0\(2));

-- Location: LABCELL_X88_Y16_N0
\hex0|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|WideOr5~combout\ = ( \Set_sec|cnt_hex0\(1) & ( \Set_sec|cnt_hex0\(3) ) ) # ( !\Set_sec|cnt_hex0\(1) & ( !\Set_sec|cnt_hex0\(2) $ (((!\Set_sec|cnt_hex0\(0)) # (\Set_sec|cnt_hex0\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000110011001111000011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Set_sec|ALT_INV_cnt_hex0\(2),
	datac => \Set_sec|ALT_INV_cnt_hex0\(0),
	datad => \Set_sec|ALT_INV_cnt_hex0\(3),
	dataf => \Set_sec|ALT_INV_cnt_hex0\(1),
	combout => \hex0|WideOr5~combout\);

-- Location: FF_X88_Y16_N1
\hex0|led_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex0|WideOr5~combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex0|led_hex\(0));

-- Location: LABCELL_X88_Y16_N9
\hex0|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|WideOr4~0_combout\ = ( \Set_sec|cnt_hex0\(1) & ( ((!\Set_sec|cnt_hex0\(0) & \Set_sec|cnt_hex0\(2))) # (\Set_sec|cnt_hex0\(3)) ) ) # ( !\Set_sec|cnt_hex0\(1) & ( (\Set_sec|cnt_hex0\(2) & ((\Set_sec|cnt_hex0\(3)) # (\Set_sec|cnt_hex0\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001010111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Set_sec|ALT_INV_cnt_hex0\(0),
	datac => \Set_sec|ALT_INV_cnt_hex0\(2),
	datad => \Set_sec|ALT_INV_cnt_hex0\(3),
	dataf => \Set_sec|ALT_INV_cnt_hex0\(1),
	combout => \hex0|WideOr4~0_combout\);

-- Location: FF_X88_Y16_N10
\hex0|led_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex0|WideOr4~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex0|led_hex\(1));

-- Location: LABCELL_X88_Y16_N15
\hex0|led_hex~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|led_hex~0_combout\ = ( \Set_sec|cnt_hex0\(1) & ( ((!\Set_sec|cnt_hex0\(0) & !\Set_sec|cnt_hex0\(2))) # (\Set_sec|cnt_hex0\(3)) ) ) # ( !\Set_sec|cnt_hex0\(1) & ( (\Set_sec|cnt_hex0\(2) & \Set_sec|cnt_hex0\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111110100000111111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Set_sec|ALT_INV_cnt_hex0\(0),
	datac => \Set_sec|ALT_INV_cnt_hex0\(2),
	datad => \Set_sec|ALT_INV_cnt_hex0\(3),
	dataf => \Set_sec|ALT_INV_cnt_hex0\(1),
	combout => \hex0|led_hex~0_combout\);

-- Location: FF_X88_Y16_N16
\hex0|led_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex0|led_hex~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex0|led_hex\(2));

-- Location: LABCELL_X88_Y16_N57
\hex0|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|WideOr3~0_combout\ = ( \Set_sec|cnt_hex0\(1) & ( ((\Set_sec|cnt_hex0\(2) & \Set_sec|cnt_hex0\(0))) # (\Set_sec|cnt_hex0\(3)) ) ) # ( !\Set_sec|cnt_hex0\(1) & ( !\Set_sec|cnt_hex0\(2) $ (((!\Set_sec|cnt_hex0\(0)) # (\Set_sec|cnt_hex0\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000011000011111100001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Set_sec|ALT_INV_cnt_hex0\(3),
	datac => \Set_sec|ALT_INV_cnt_hex0\(2),
	datad => \Set_sec|ALT_INV_cnt_hex0\(0),
	dataf => \Set_sec|ALT_INV_cnt_hex0\(1),
	combout => \hex0|WideOr3~0_combout\);

-- Location: FF_X88_Y16_N58
\hex0|led_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex0|WideOr3~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex0|led_hex\(3));

-- Location: LABCELL_X88_Y16_N6
\hex0|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|WideOr2~0_combout\ = ( \Set_sec|cnt_hex0\(1) & ( (\Set_sec|cnt_hex0\(3)) # (\Set_sec|cnt_hex0\(0)) ) ) # ( !\Set_sec|cnt_hex0\(1) & ( (\Set_sec|cnt_hex0\(2)) # (\Set_sec|cnt_hex0\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Set_sec|ALT_INV_cnt_hex0\(0),
	datab => \Set_sec|ALT_INV_cnt_hex0\(2),
	datad => \Set_sec|ALT_INV_cnt_hex0\(3),
	dataf => \Set_sec|ALT_INV_cnt_hex0\(1),
	combout => \hex0|WideOr2~0_combout\);

-- Location: FF_X88_Y16_N7
\hex0|led_hex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex0|WideOr2~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex0|led_hex\(4));

-- Location: LABCELL_X88_Y16_N24
\hex0|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|WideOr1~0_combout\ = ( \Set_sec|cnt_hex0\(1) & ( ((!\Set_sec|cnt_hex0\(2)) # (\Set_sec|cnt_hex0\(3))) # (\Set_sec|cnt_hex0\(0)) ) ) # ( !\Set_sec|cnt_hex0\(1) & ( (!\Set_sec|cnt_hex0\(2) & (\Set_sec|cnt_hex0\(0) & !\Set_sec|cnt_hex0\(3))) # 
-- (\Set_sec|cnt_hex0\(2) & ((\Set_sec|cnt_hex0\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000110011010001000011001111011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Set_sec|ALT_INV_cnt_hex0\(0),
	datab => \Set_sec|ALT_INV_cnt_hex0\(2),
	datad => \Set_sec|ALT_INV_cnt_hex0\(3),
	dataf => \Set_sec|ALT_INV_cnt_hex0\(1),
	combout => \hex0|WideOr1~0_combout\);

-- Location: FF_X88_Y16_N25
\hex0|led_hex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex0|WideOr1~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex0|led_hex\(5));

-- Location: LABCELL_X88_Y16_N27
\hex0|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|WideOr0~combout\ = ( \Set_sec|cnt_hex0\(1) & ( (!\Set_sec|cnt_hex0\(3) & ((!\Set_sec|cnt_hex0\(0)) # (!\Set_sec|cnt_hex0\(2)))) ) ) # ( !\Set_sec|cnt_hex0\(1) & ( !\Set_sec|cnt_hex0\(2) $ (!\Set_sec|cnt_hex0\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Set_sec|ALT_INV_cnt_hex0\(0),
	datac => \Set_sec|ALT_INV_cnt_hex0\(2),
	datad => \Set_sec|ALT_INV_cnt_hex0\(3),
	dataf => \Set_sec|ALT_INV_cnt_hex0\(1),
	combout => \hex0|WideOr0~combout\);

-- Location: FF_X88_Y16_N28
\hex0|led_hex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex0|WideOr0~combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex0|led_hex\(6));

-- Location: MLABCELL_X87_Y16_N33
\hex0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|Equal0~0_combout\ = ( \Set_sec|cnt_hex0\(3) & ( \Set_sec|cnt_hex0\(0) & ( (!\Set_sec|cnt_hex0\(1) & !\Set_sec|cnt_hex0\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Set_sec|ALT_INV_cnt_hex0\(1),
	datad => \Set_sec|ALT_INV_cnt_hex0\(2),
	datae => \Set_sec|ALT_INV_cnt_hex0\(3),
	dataf => \Set_sec|ALT_INV_cnt_hex0\(0),
	combout => \hex0|Equal0~0_combout\);

-- Location: LABCELL_X88_Y16_N51
\hex1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1|Equal0~0_combout\ = ( \Set_sec|cnt_hex1\(1) & ( (\Set_sec|cnt_hex1\(2) & (!\Set_sec|cnt_hex1\(0) & !\Set_sec|cnt_hex1\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Set_sec|ALT_INV_cnt_hex1\(2),
	datac => \Set_sec|ALT_INV_cnt_hex1\(0),
	datad => \Set_sec|ALT_INV_cnt_hex1\(3),
	dataf => \Set_sec|ALT_INV_cnt_hex1\(1),
	combout => \hex1|Equal0~0_combout\);

-- Location: MLABCELL_X87_Y16_N45
\Set_sec|cnt_hex1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Set_sec|cnt_hex1[0]~0_combout\ = ( \Set_sec|cnt_hex1\(0) & ( \hex1|Equal0~0_combout\ & ( (!\key0~input_o\) # ((\key1~input_o\) # (\rst~q\)) ) ) ) # ( \Set_sec|cnt_hex1\(0) & ( !\hex1|Equal0~0_combout\ & ( (!\key0~input_o\) # ((!\hex0|Equal0~0_combout\) # 
-- ((\key1~input_o\) # (\rst~q\))) ) ) ) # ( !\Set_sec|cnt_hex1\(0) & ( !\hex1|Equal0~0_combout\ & ( (\key0~input_o\ & (\hex0|Equal0~0_combout\ & (!\rst~q\ & !\key1~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000111011111111111100000000000000001010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0~input_o\,
	datab => \hex0|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_rst~q\,
	datad => \ALT_INV_key1~input_o\,
	datae => \Set_sec|ALT_INV_cnt_hex1\(0),
	dataf => \hex1|ALT_INV_Equal0~0_combout\,
	combout => \Set_sec|cnt_hex1[0]~0_combout\);

-- Location: FF_X87_Y16_N47
\Set_sec|cnt_hex1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Set_sec|cnt_hex1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Set_sec|cnt_hex1\(0));

-- Location: LABCELL_X88_Y16_N39
\Set_sec|cnt_hex1[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Set_sec|cnt_hex1[1]~1_combout\ = ( \Set_sec|cnt_hex1\(1) & ( \hex1|Equal0~0_combout\ & ( !\Set_sec|cnt_hex0[3]~1_combout\ ) ) ) # ( \Set_sec|cnt_hex1\(1) & ( !\hex1|Equal0~0_combout\ & ( (!\Set_sec|cnt_hex1\(0)) # ((!\hex0|Equal0~0_combout\) # 
-- (!\Set_sec|cnt_hex0[3]~1_combout\)) ) ) ) # ( !\Set_sec|cnt_hex1\(1) & ( !\hex1|Equal0~0_combout\ & ( (\Set_sec|cnt_hex1\(0) & (\hex0|Equal0~0_combout\ & \Set_sec|cnt_hex0[3]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111111111110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Set_sec|ALT_INV_cnt_hex1\(0),
	datac => \hex0|ALT_INV_Equal0~0_combout\,
	datad => \Set_sec|ALT_INV_cnt_hex0[3]~1_combout\,
	datae => \Set_sec|ALT_INV_cnt_hex1\(1),
	dataf => \hex1|ALT_INV_Equal0~0_combout\,
	combout => \Set_sec|cnt_hex1[1]~1_combout\);

-- Location: FF_X88_Y16_N41
\Set_sec|cnt_hex1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Set_sec|cnt_hex1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Set_sec|cnt_hex1\(1));

-- Location: MLABCELL_X87_Y16_N48
\Set_sec|cnt_hex1[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Set_sec|cnt_hex1[3]~2_combout\ = ( \Set_sec|cnt_hex1\(3) & ( \Set_sec|cnt_hex1\(2) & ( (!\hex0|Equal0~0_combout\) # ((!\Set_sec|cnt_hex0[3]~1_combout\) # ((!\Set_sec|cnt_hex1\(1)) # (!\Set_sec|cnt_hex1\(0)))) ) ) ) # ( !\Set_sec|cnt_hex1\(3) & ( 
-- \Set_sec|cnt_hex1\(2) & ( (\hex0|Equal0~0_combout\ & (\Set_sec|cnt_hex0[3]~1_combout\ & (\Set_sec|cnt_hex1\(1) & \Set_sec|cnt_hex1\(0)))) ) ) ) # ( \Set_sec|cnt_hex1\(3) & ( !\Set_sec|cnt_hex1\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \hex0|ALT_INV_Equal0~0_combout\,
	datab => \Set_sec|ALT_INV_cnt_hex0[3]~1_combout\,
	datac => \Set_sec|ALT_INV_cnt_hex1\(1),
	datad => \Set_sec|ALT_INV_cnt_hex1\(0),
	datae => \Set_sec|ALT_INV_cnt_hex1\(3),
	dataf => \Set_sec|ALT_INV_cnt_hex1\(2),
	combout => \Set_sec|cnt_hex1[3]~2_combout\);

-- Location: FF_X87_Y16_N50
\Set_sec|cnt_hex1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Set_sec|cnt_hex1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Set_sec|cnt_hex1\(3));

-- Location: LABCELL_X88_Y16_N18
\Set_sec|cnt_hex1[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Set_sec|cnt_hex1[2]~3_combout\ = ( \Set_sec|cnt_hex1\(2) & ( \Set_sec|cnt_hex1\(1) & ( (!\Set_sec|cnt_hex0[3]~1_combout\) # ((!\Set_sec|cnt_hex1\(0) & (\Set_sec|cnt_hex1\(3))) # (\Set_sec|cnt_hex1\(0) & ((!\hex0|Equal0~0_combout\)))) ) ) ) # ( 
-- !\Set_sec|cnt_hex1\(2) & ( \Set_sec|cnt_hex1\(1) & ( (\hex0|Equal0~0_combout\ & (\Set_sec|cnt_hex1\(0) & \Set_sec|cnt_hex0[3]~1_combout\)) ) ) ) # ( \Set_sec|cnt_hex1\(2) & ( !\Set_sec|cnt_hex1\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000111111111101011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Set_sec|ALT_INV_cnt_hex1\(3),
	datab => \hex0|ALT_INV_Equal0~0_combout\,
	datac => \Set_sec|ALT_INV_cnt_hex1\(0),
	datad => \Set_sec|ALT_INV_cnt_hex0[3]~1_combout\,
	datae => \Set_sec|ALT_INV_cnt_hex1\(2),
	dataf => \Set_sec|ALT_INV_cnt_hex1\(1),
	combout => \Set_sec|cnt_hex1[2]~3_combout\);

-- Location: FF_X88_Y16_N20
\Set_sec|cnt_hex1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Set_sec|cnt_hex1[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Set_sec|cnt_hex1\(2));

-- Location: LABCELL_X88_Y16_N3
\hex1|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1|WideOr5~combout\ = ( \Set_sec|cnt_hex1\(1) & ( \Set_sec|cnt_hex1\(3) ) ) # ( !\Set_sec|cnt_hex1\(1) & ( !\Set_sec|cnt_hex1\(2) $ (((!\Set_sec|cnt_hex1\(0)) # (\Set_sec|cnt_hex1\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001010101010110100101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Set_sec|ALT_INV_cnt_hex1\(2),
	datac => \Set_sec|ALT_INV_cnt_hex1\(0),
	datad => \Set_sec|ALT_INV_cnt_hex1\(3),
	dataf => \Set_sec|ALT_INV_cnt_hex1\(1),
	combout => \hex1|WideOr5~combout\);

-- Location: FF_X88_Y16_N4
\hex1|led_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex1|WideOr5~combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex1|led_hex\(0));

-- Location: LABCELL_X88_Y16_N42
\hex1|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1|WideOr4~combout\ = ( \Set_sec|cnt_hex1\(1) & ( ((!\Set_sec|cnt_hex1\(0) & \Set_sec|cnt_hex1\(2))) # (\Set_sec|cnt_hex1\(3)) ) ) # ( !\Set_sec|cnt_hex1\(1) & ( (\Set_sec|cnt_hex1\(2) & ((\Set_sec|cnt_hex1\(3)) # (\Set_sec|cnt_hex1\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Set_sec|ALT_INV_cnt_hex1\(0),
	datac => \Set_sec|ALT_INV_cnt_hex1\(2),
	datad => \Set_sec|ALT_INV_cnt_hex1\(3),
	dataf => \Set_sec|ALT_INV_cnt_hex1\(1),
	combout => \hex1|WideOr4~combout\);

-- Location: FF_X88_Y16_N44
\hex1|led_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex1|WideOr4~combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex1|led_hex\(1));

-- Location: LABCELL_X88_Y16_N45
\hex1|led_hex~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1|led_hex~0_combout\ = ( \Set_sec|cnt_hex1\(1) & ( ((!\Set_sec|cnt_hex1\(2) & !\Set_sec|cnt_hex1\(0))) # (\Set_sec|cnt_hex1\(3)) ) ) # ( !\Set_sec|cnt_hex1\(1) & ( (\Set_sec|cnt_hex1\(2) & \Set_sec|cnt_hex1\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110001000111111111000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Set_sec|ALT_INV_cnt_hex1\(2),
	datab => \Set_sec|ALT_INV_cnt_hex1\(0),
	datad => \Set_sec|ALT_INV_cnt_hex1\(3),
	dataf => \Set_sec|ALT_INV_cnt_hex1\(1),
	combout => \hex1|led_hex~0_combout\);

-- Location: FF_X88_Y16_N46
\hex1|led_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex1|led_hex~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex1|led_hex\(2));

-- Location: LABCELL_X88_Y16_N48
\hex1|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1|WideOr3~0_combout\ = ( \Set_sec|cnt_hex1\(1) & ( ((\Set_sec|cnt_hex1\(2) & \Set_sec|cnt_hex1\(0))) # (\Set_sec|cnt_hex1\(3)) ) ) # ( !\Set_sec|cnt_hex1\(1) & ( !\Set_sec|cnt_hex1\(2) $ (((!\Set_sec|cnt_hex1\(0)) # (\Set_sec|cnt_hex1\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101011001010110010100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Set_sec|ALT_INV_cnt_hex1\(2),
	datab => \Set_sec|ALT_INV_cnt_hex1\(0),
	datac => \Set_sec|ALT_INV_cnt_hex1\(3),
	dataf => \Set_sec|ALT_INV_cnt_hex1\(1),
	combout => \hex1|WideOr3~0_combout\);

-- Location: FF_X88_Y16_N49
\hex1|led_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex1|WideOr3~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex1|led_hex\(3));

-- Location: LABCELL_X88_Y16_N54
\hex1|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1|WideOr2~0_combout\ = ( \Set_sec|cnt_hex1\(1) & ( (\Set_sec|cnt_hex1\(0)) # (\Set_sec|cnt_hex1\(3)) ) ) # ( !\Set_sec|cnt_hex1\(1) & ( (\Set_sec|cnt_hex1\(0)) # (\Set_sec|cnt_hex1\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Set_sec|ALT_INV_cnt_hex1\(3),
	datac => \Set_sec|ALT_INV_cnt_hex1\(2),
	datad => \Set_sec|ALT_INV_cnt_hex1\(0),
	dataf => \Set_sec|ALT_INV_cnt_hex1\(1),
	combout => \hex1|WideOr2~0_combout\);

-- Location: FF_X88_Y16_N56
\hex1|led_hex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex1|WideOr2~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex1|led_hex\(4));

-- Location: LABCELL_X88_Y16_N33
\hex1|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1|WideOr1~0_combout\ = ( \Set_sec|cnt_hex1\(2) & ( ((\Set_sec|cnt_hex1\(0) & \Set_sec|cnt_hex1\(1))) # (\Set_sec|cnt_hex1\(3)) ) ) # ( !\Set_sec|cnt_hex1\(2) & ( ((!\Set_sec|cnt_hex1\(3) & \Set_sec|cnt_hex1\(0))) # (\Set_sec|cnt_hex1\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Set_sec|ALT_INV_cnt_hex1\(3),
	datab => \Set_sec|ALT_INV_cnt_hex1\(0),
	datac => \Set_sec|ALT_INV_cnt_hex1\(1),
	dataf => \Set_sec|ALT_INV_cnt_hex1\(2),
	combout => \hex1|WideOr1~0_combout\);

-- Location: FF_X88_Y16_N35
\hex1|led_hex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex1|WideOr1~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex1|led_hex\(5));

-- Location: LABCELL_X88_Y16_N12
\hex1|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1|WideOr0~combout\ = ( \Set_sec|cnt_hex1\(1) & ( (!\Set_sec|cnt_hex1\(3) & ((!\Set_sec|cnt_hex1\(0)) # (!\Set_sec|cnt_hex1\(2)))) ) ) # ( !\Set_sec|cnt_hex1\(1) & ( !\Set_sec|cnt_hex1\(2) $ (!\Set_sec|cnt_hex1\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Set_sec|ALT_INV_cnt_hex1\(0),
	datac => \Set_sec|ALT_INV_cnt_hex1\(2),
	datad => \Set_sec|ALT_INV_cnt_hex1\(3),
	dataf => \Set_sec|ALT_INV_cnt_hex1\(1),
	combout => \hex1|WideOr0~combout\);

-- Location: FF_X88_Y16_N14
\hex1|led_hex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex1|WideOr0~combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex1|led_hex\(6));

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

-- Location: CLKCTRL_G7
\key2~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \key2~input_o\,
	outclk => \key2~inputCLKENA0_outclk\);

-- Location: FF_X88_Y15_N22
\cnt_hex2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key2~inputCLKENA0_outclk\,
	d => \cnt_hex2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex2(0));

-- Location: LABCELL_X88_Y15_N21
\cnt_hex2[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex2[0]~3_combout\ = !cnt_hex2(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_hex2(0),
	combout => \cnt_hex2[0]~3_combout\);

-- Location: FF_X88_Y15_N23
\cnt_hex2[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key2~inputCLKENA0_outclk\,
	d => \cnt_hex2[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex2[0]~DUPLICATE_q\);

-- Location: FF_X88_Y15_N52
\cnt_hex2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key2~inputCLKENA0_outclk\,
	d => \cnt_hex2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex2(3));

-- Location: FF_X88_Y14_N34
\cnt_hex2[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key2~inputCLKENA0_outclk\,
	d => \cnt_hex2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex2[2]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y15_N51
\cnt_hex2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex2~1_combout\ = ( \cnt_hex2[2]~DUPLICATE_q\ & ( !cnt_hex2(3) $ (((!\cnt_hex2[0]~DUPLICATE_q\) # (!cnt_hex2(1)))) ) ) # ( !\cnt_hex2[2]~DUPLICATE_q\ & ( (cnt_hex2(3) & ((!\cnt_hex2[0]~DUPLICATE_q\) # (cnt_hex2(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex2(1),
	datad => ALT_INV_cnt_hex2(3),
	dataf => \ALT_INV_cnt_hex2[2]~DUPLICATE_q\,
	combout => \cnt_hex2~1_combout\);

-- Location: FF_X88_Y15_N53
\cnt_hex2[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key2~inputCLKENA0_outclk\,
	d => \cnt_hex2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex2[3]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y15_N48
\cnt_hex2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex2~2_combout\ = ( \cnt_hex2[2]~DUPLICATE_q\ & ( !\cnt_hex2[0]~DUPLICATE_q\ $ (!cnt_hex2(1)) ) ) # ( !\cnt_hex2[2]~DUPLICATE_q\ & ( (!\cnt_hex2[0]~DUPLICATE_q\ & ((cnt_hex2(1)))) # (\cnt_hex2[0]~DUPLICATE_q\ & (!\cnt_hex2[3]~DUPLICATE_q\ & 
-- !cnt_hex2(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010101010010100001010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex2[3]~DUPLICATE_q\,
	datad => ALT_INV_cnt_hex2(1),
	dataf => \ALT_INV_cnt_hex2[2]~DUPLICATE_q\,
	combout => \cnt_hex2~2_combout\);

-- Location: FF_X88_Y15_N49
\cnt_hex2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key2~inputCLKENA0_outclk\,
	d => \cnt_hex2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex2(1));

-- Location: LABCELL_X88_Y14_N33
\cnt_hex2[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex2[2]~0_combout\ = ( cnt_hex2(0) & ( !cnt_hex2(1) $ (!cnt_hex2(2)) ) ) # ( !cnt_hex2(0) & ( cnt_hex2(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_hex2(1),
	datad => ALT_INV_cnt_hex2(2),
	dataf => ALT_INV_cnt_hex2(0),
	combout => \cnt_hex2[2]~0_combout\);

-- Location: FF_X88_Y14_N35
\cnt_hex2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key2~inputCLKENA0_outclk\,
	d => \cnt_hex2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex2(2));

-- Location: FF_X88_Y15_N50
\cnt_hex2[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key2~inputCLKENA0_outclk\,
	d => \cnt_hex2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex2[1]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y14_N54
\hex2|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr5~combout\ = ( \cnt_hex2[1]~DUPLICATE_q\ & ( cnt_hex2(3) ) ) # ( !\cnt_hex2[1]~DUPLICATE_q\ & ( !cnt_hex2(2) $ (((!\cnt_hex2[0]~DUPLICATE_q\) # (cnt_hex2(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001010101010110100101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex2(2),
	datac => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	datad => ALT_INV_cnt_hex2(3),
	dataf => \ALT_INV_cnt_hex2[1]~DUPLICATE_q\,
	combout => \hex2|WideOr5~combout\);

-- Location: FF_X88_Y14_N55
\hex2|led_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex2|WideOr5~combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex2|led_hex\(0));

-- Location: LABCELL_X88_Y15_N39
\hex2|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr4~0_combout\ = ( \cnt_hex2[2]~DUPLICATE_q\ & ( (!\cnt_hex2[1]~DUPLICATE_q\ $ (!\cnt_hex2[0]~DUPLICATE_q\)) # (cnt_hex2(3)) ) ) # ( !\cnt_hex2[2]~DUPLICATE_q\ & ( (\cnt_hex2[1]~DUPLICATE_q\ & cnt_hex2(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex2[1]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex2(3),
	datad => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex2[2]~DUPLICATE_q\,
	combout => \hex2|WideOr4~0_combout\);

-- Location: FF_X88_Y15_N40
\hex2|led_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex2|WideOr4~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex2|led_hex\(1));

-- Location: LABCELL_X88_Y15_N45
\hex2|led_hex~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|led_hex~0_combout\ = ( \cnt_hex2[2]~DUPLICATE_q\ & ( cnt_hex2(3) ) ) # ( !\cnt_hex2[2]~DUPLICATE_q\ & ( (\cnt_hex2[1]~DUPLICATE_q\ & ((!\cnt_hex2[0]~DUPLICATE_q\) # (cnt_hex2(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000101010101010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex2[1]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex2(3),
	datad => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex2[2]~DUPLICATE_q\,
	combout => \hex2|led_hex~0_combout\);

-- Location: FF_X88_Y15_N46
\hex2|led_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex2|led_hex~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex2|led_hex\(2));

-- Location: LABCELL_X88_Y15_N24
\hex2|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr3~0_combout\ = ( \cnt_hex2[2]~DUPLICATE_q\ & ( (!cnt_hex2(1) $ (\cnt_hex2[0]~DUPLICATE_q\)) # (cnt_hex2(3)) ) ) # ( !\cnt_hex2[2]~DUPLICATE_q\ & ( (!cnt_hex2(1) & (\cnt_hex2[0]~DUPLICATE_q\ & !cnt_hex2(3))) # (cnt_hex2(1) & ((cnt_hex2(3)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110011000011000011001111000011111111111100001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt_hex2(1),
	datac => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	datad => ALT_INV_cnt_hex2(3),
	dataf => \ALT_INV_cnt_hex2[2]~DUPLICATE_q\,
	combout => \hex2|WideOr3~0_combout\);

-- Location: FF_X88_Y15_N25
\hex2|led_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex2|WideOr3~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex2|led_hex\(3));

-- Location: LABCELL_X88_Y14_N42
\hex2|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr2~0_combout\ = ( \cnt_hex2[0]~DUPLICATE_q\ & ( \cnt_hex2[1]~DUPLICATE_q\ ) ) # ( !\cnt_hex2[0]~DUPLICATE_q\ & ( \cnt_hex2[1]~DUPLICATE_q\ & ( cnt_hex2(3) ) ) ) # ( \cnt_hex2[0]~DUPLICATE_q\ & ( !\cnt_hex2[1]~DUPLICATE_q\ ) ) # ( 
-- !\cnt_hex2[0]~DUPLICATE_q\ & ( !\cnt_hex2[1]~DUPLICATE_q\ & ( cnt_hex2(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_hex2(2),
	datad => ALT_INV_cnt_hex2(3),
	datae => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex2[1]~DUPLICATE_q\,
	combout => \hex2|WideOr2~0_combout\);

-- Location: FF_X88_Y14_N43
\hex2|led_hex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex2|WideOr2~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex2|led_hex\(4));

-- Location: LABCELL_X88_Y14_N57
\hex2|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr1~0_combout\ = ( cnt_hex2(3) & ( (cnt_hex2(1)) # (cnt_hex2(2)) ) ) # ( !cnt_hex2(3) & ( (!cnt_hex2(2) & ((\cnt_hex2[0]~DUPLICATE_q\) # (cnt_hex2(1)))) # (cnt_hex2(2) & (cnt_hex2(1) & \cnt_hex2[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000010101010111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex2(2),
	datac => ALT_INV_cnt_hex2(1),
	datad => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex2(3),
	combout => \hex2|WideOr1~0_combout\);

-- Location: FF_X88_Y14_N58
\hex2|led_hex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex2|WideOr1~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex2|led_hex\(5));

-- Location: LABCELL_X88_Y14_N39
\hex2|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|WideOr0~combout\ = ( \cnt_hex2[1]~DUPLICATE_q\ & ( (!cnt_hex2(3) & ((!cnt_hex2(2)) # (!cnt_hex2(0)))) ) ) # ( !\cnt_hex2[1]~DUPLICATE_q\ & ( !cnt_hex2(2) $ (!cnt_hex2(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex2(2),
	datac => ALT_INV_cnt_hex2(0),
	datad => ALT_INV_cnt_hex2(3),
	dataf => \ALT_INV_cnt_hex2[1]~DUPLICATE_q\,
	combout => \hex2|WideOr0~combout\);

-- Location: FF_X88_Y14_N40
\hex2|led_hex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hex2|WideOr0~combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex2|led_hex\(6));

-- Location: FF_X88_Y15_N55
\cnt_hex3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key2~inputCLKENA0_outclk\,
	d => \cnt_hex3[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex3(1));

-- Location: FF_X88_Y15_N31
\cnt_hex3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key2~inputCLKENA0_outclk\,
	d => \cnt_hex3[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex3(2));

-- Location: LABCELL_X88_Y15_N18
\hex2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|Equal0~0_combout\ = ( !\cnt_hex2[2]~DUPLICATE_q\ & ( (!\cnt_hex2[1]~DUPLICATE_q\ & (\cnt_hex2[3]~DUPLICATE_q\ & \cnt_hex2[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex2[1]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex2[3]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex2[0]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex2[2]~DUPLICATE_q\,
	combout => \hex2|Equal0~0_combout\);

-- Location: LABCELL_X88_Y15_N30
\cnt_hex3[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex3[2]~0_combout\ = ( \hex2|Equal0~0_combout\ & ( (!cnt_hex3(1) & (((cnt_hex3(2))))) # (cnt_hex3(1) & ((!cnt_hex3(0) & (cnt_hex3(3) & cnt_hex3(2))) # (cnt_hex3(0) & ((!cnt_hex3(2)))))) ) ) # ( !\hex2|Equal0~0_combout\ & ( (cnt_hex3(2) & 
-- (((!cnt_hex3(1)) # (cnt_hex3(0))) # (cnt_hex3(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111000000001101111100000011110111000000001111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex3(3),
	datab => ALT_INV_cnt_hex3(1),
	datac => ALT_INV_cnt_hex3(0),
	datad => ALT_INV_cnt_hex3(2),
	dataf => \hex2|ALT_INV_Equal0~0_combout\,
	combout => \cnt_hex3[2]~0_combout\);

-- Location: FF_X88_Y15_N32
\cnt_hex3[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key2~inputCLKENA0_outclk\,
	d => \cnt_hex3[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex3[2]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y15_N57
\cnt_hex3[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex3[3]~1_combout\ = ( \hex2|Equal0~0_combout\ & ( !cnt_hex3(3) $ (((!cnt_hex3(0)) # ((!\cnt_hex3[2]~DUPLICATE_q\) # (!cnt_hex3(1))))) ) ) # ( !\hex2|Equal0~0_combout\ & ( cnt_hex3(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex3(0),
	datab => \ALT_INV_cnt_hex3[2]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex3(1),
	datad => ALT_INV_cnt_hex3(3),
	dataf => \hex2|ALT_INV_Equal0~0_combout\,
	combout => \cnt_hex3[3]~1_combout\);

-- Location: FF_X88_Y15_N58
\cnt_hex3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key2~inputCLKENA0_outclk\,
	d => \cnt_hex3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex3(3));

-- Location: LABCELL_X88_Y15_N33
\cnt_hex3[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex3[0]~2_combout\ = ( \hex2|Equal0~0_combout\ & ( (!cnt_hex3(0) & (((!cnt_hex3(1)) # (!\cnt_hex3[2]~DUPLICATE_q\)) # (cnt_hex3(3)))) ) ) # ( !\hex2|Equal0~0_combout\ & ( cnt_hex3(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111101000000001111110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex3(3),
	datab => ALT_INV_cnt_hex3(1),
	datac => \ALT_INV_cnt_hex3[2]~DUPLICATE_q\,
	datad => ALT_INV_cnt_hex3(0),
	dataf => \hex2|ALT_INV_Equal0~0_combout\,
	combout => \cnt_hex3[0]~2_combout\);

-- Location: FF_X88_Y15_N34
\cnt_hex3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key2~inputCLKENA0_outclk\,
	d => \cnt_hex3[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex3(0));

-- Location: LABCELL_X88_Y15_N54
\cnt_hex3[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex3[1]~3_combout\ = ( \hex2|Equal0~0_combout\ & ( (!cnt_hex3(0) & (cnt_hex3(1) & ((!\cnt_hex3[2]~DUPLICATE_q\) # (cnt_hex3(3))))) # (cnt_hex3(0) & (((!cnt_hex3(1))))) ) ) # ( !\hex2|Equal0~0_combout\ & ( (cnt_hex3(1) & (((!\cnt_hex3[2]~DUPLICATE_q\) 
-- # (cnt_hex3(3))) # (cnt_hex3(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111000000001101111101010101100010100101010110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex3(0),
	datab => \ALT_INV_cnt_hex3[2]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex3(3),
	datad => ALT_INV_cnt_hex3(1),
	dataf => \hex2|ALT_INV_Equal0~0_combout\,
	combout => \cnt_hex3[1]~3_combout\);

-- Location: FF_X88_Y15_N56
\cnt_hex3[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key2~inputCLKENA0_outclk\,
	d => \cnt_hex3[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex3[1]~DUPLICATE_q\);

-- Location: FF_X88_Y15_N35
\cnt_hex3[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key2~inputCLKENA0_outclk\,
	d => \cnt_hex3[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex3[0]~DUPLICATE_q\);

-- Location: FF_X88_Y15_N59
\cnt_hex3[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key2~inputCLKENA0_outclk\,
	d => \cnt_hex3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex3[3]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y15_N6
\Min|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Min|WideOr5~combout\ = ( cnt_hex3(2) & ( ((!\cnt_hex3[1]~DUPLICATE_q\ & !\cnt_hex3[0]~DUPLICATE_q\)) # (\cnt_hex3[3]~DUPLICATE_q\) ) ) # ( !cnt_hex3(2) & ( (!\cnt_hex3[1]~DUPLICATE_q\ & (\cnt_hex3[0]~DUPLICATE_q\ & !\cnt_hex3[3]~DUPLICATE_q\)) # 
-- (\cnt_hex3[1]~DUPLICATE_q\ & ((\cnt_hex3[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010101000010100101010110100000111111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex3[1]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex3[0]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex3[3]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex3(2),
	combout => \Min|WideOr5~combout\);

-- Location: FF_X88_Y15_N8
\Min|led_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Min|WideOr5~combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Min|led_hex\(0));

-- Location: LABCELL_X88_Y15_N9
\Min|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Min|WideOr4~combout\ = ( cnt_hex3(0) & ( (!\cnt_hex3[1]~DUPLICATE_q\ & (\cnt_hex3[2]~DUPLICATE_q\)) # (\cnt_hex3[1]~DUPLICATE_q\ & ((\cnt_hex3[3]~DUPLICATE_q\))) ) ) # ( !cnt_hex3(0) & ( (!\cnt_hex3[1]~DUPLICATE_q\ & (\cnt_hex3[2]~DUPLICATE_q\ & 
-- \cnt_hex3[3]~DUPLICATE_q\)) # (\cnt_hex3[1]~DUPLICATE_q\ & ((\cnt_hex3[3]~DUPLICATE_q\) # (\cnt_hex3[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex3[1]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex3[2]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex3[3]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex3(0),
	combout => \Min|WideOr4~combout\);

-- Location: FF_X88_Y15_N10
\Min|led_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Min|WideOr4~combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Min|led_hex\(1));

-- Location: LABCELL_X88_Y15_N42
\Min|led_hex~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Min|led_hex~0_combout\ = ( cnt_hex3(2) & ( \cnt_hex3[3]~DUPLICATE_q\ ) ) # ( !cnt_hex3(2) & ( (cnt_hex3(1) & ((!\cnt_hex3[0]~DUPLICATE_q\) # (\cnt_hex3[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex3[3]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex3[0]~DUPLICATE_q\,
	datad => ALT_INV_cnt_hex3(1),
	dataf => ALT_INV_cnt_hex3(2),
	combout => \Min|led_hex~0_combout\);

-- Location: FF_X88_Y15_N44
\Min|led_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Min|led_hex~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Min|led_hex\(2));

-- Location: LABCELL_X88_Y15_N15
\Min|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Min|WideOr3~0_combout\ = ( cnt_hex3(0) & ( (!\cnt_hex3[1]~DUPLICATE_q\ & (!\cnt_hex3[2]~DUPLICATE_q\ $ (\cnt_hex3[3]~DUPLICATE_q\))) # (\cnt_hex3[1]~DUPLICATE_q\ & ((\cnt_hex3[3]~DUPLICATE_q\) # (\cnt_hex3[2]~DUPLICATE_q\))) ) ) # ( !cnt_hex3(0) & ( 
-- (!\cnt_hex3[1]~DUPLICATE_q\ & (\cnt_hex3[2]~DUPLICATE_q\)) # (\cnt_hex3[1]~DUPLICATE_q\ & ((\cnt_hex3[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111110100101010111111010010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex3[1]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex3[2]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex3[3]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex3(0),
	combout => \Min|WideOr3~0_combout\);

-- Location: FF_X88_Y15_N17
\Min|led_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Min|WideOr3~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Min|led_hex\(3));

-- Location: LABCELL_X88_Y15_N12
\Min|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Min|WideOr2~0_combout\ = ( cnt_hex3(2) & ( ((!cnt_hex3(1)) # (\cnt_hex3[0]~DUPLICATE_q\)) # (\cnt_hex3[3]~DUPLICATE_q\) ) ) # ( !cnt_hex3(2) & ( ((\cnt_hex3[3]~DUPLICATE_q\ & cnt_hex3(1))) # (\cnt_hex3[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111111111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex3[3]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex3[0]~DUPLICATE_q\,
	datad => ALT_INV_cnt_hex3(1),
	dataf => ALT_INV_cnt_hex3(2),
	combout => \Min|WideOr2~0_combout\);

-- Location: FF_X88_Y15_N13
\Min|led_hex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Min|WideOr2~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Min|led_hex\(4));

-- Location: LABCELL_X88_Y15_N36
\Min|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Min|WideOr1~0_combout\ = ( \cnt_hex3[3]~DUPLICATE_q\ & ( (cnt_hex3(1)) # (\cnt_hex3[2]~DUPLICATE_q\) ) ) # ( !\cnt_hex3[3]~DUPLICATE_q\ & ( (!\cnt_hex3[2]~DUPLICATE_q\ & ((cnt_hex3(1)) # (\cnt_hex3[0]~DUPLICATE_q\))) # (\cnt_hex3[2]~DUPLICATE_q\ & 
-- (\cnt_hex3[0]~DUPLICATE_q\ & cnt_hex3(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111000011001100111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex3[2]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex3[0]~DUPLICATE_q\,
	datad => ALT_INV_cnt_hex3(1),
	dataf => \ALT_INV_cnt_hex3[3]~DUPLICATE_q\,
	combout => \Min|WideOr1~0_combout\);

-- Location: FF_X88_Y15_N37
\Min|led_hex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Min|WideOr1~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Min|led_hex\(5));

-- Location: LABCELL_X88_Y15_N27
\Min|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Min|WideOr0~combout\ = ( cnt_hex3(0) & ( (!\cnt_hex3[1]~DUPLICATE_q\ & (!\cnt_hex3[2]~DUPLICATE_q\ $ (!\cnt_hex3[3]~DUPLICATE_q\))) # (\cnt_hex3[1]~DUPLICATE_q\ & (!\cnt_hex3[2]~DUPLICATE_q\ & !\cnt_hex3[3]~DUPLICATE_q\)) ) ) # ( !cnt_hex3(0) & ( 
-- !\cnt_hex3[3]~DUPLICATE_q\ $ (((!\cnt_hex3[1]~DUPLICATE_q\ & !\cnt_hex3[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000001011010101000000101101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex3[1]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex3[2]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex3[3]~DUPLICATE_q\,
	dataf => ALT_INV_cnt_hex3(0),
	combout => \Min|WideOr0~combout\);

-- Location: FF_X88_Y15_N28
\Min|led_hex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Min|WideOr0~combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Min|led_hex\(6));

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

-- Location: CLKCTRL_G5
\key3~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \key3~input_o\,
	outclk => \key3~inputCLKENA0_outclk\);

-- Location: FF_X87_Y15_N46
\cnt_hex5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key3~inputCLKENA0_outclk\,
	asdata => \cnt_hex5[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex5(1));

-- Location: FF_X87_Y15_N52
\cnt_hex4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key3~inputCLKENA0_outclk\,
	d => \cnt_hex4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex4(1));

-- Location: MLABCELL_X87_Y15_N48
\cnt_hex4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex4~1_combout\ = ( cnt_hex4(1) & ( !cnt_hex4(0) $ (!cnt_hex4(2)) ) ) # ( !cnt_hex4(1) & ( (cnt_hex4(2) & (((!cnt_hex5(1)) # (cnt_hex4(0))) # (cnt_hex4(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011111000000001101111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex4(3),
	datab => ALT_INV_cnt_hex5(1),
	datac => ALT_INV_cnt_hex4(0),
	datad => ALT_INV_cnt_hex4(2),
	dataf => ALT_INV_cnt_hex4(1),
	combout => \cnt_hex4~1_combout\);

-- Location: FF_X87_Y15_N49
\cnt_hex4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key3~inputCLKENA0_outclk\,
	d => \cnt_hex4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex4(2));

-- Location: MLABCELL_X87_Y15_N54
\cnt_hex4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex4~2_combout\ = ( cnt_hex4(1) & ( !cnt_hex4(0) ) ) # ( !cnt_hex4(1) & ( (!cnt_hex4(0) & ((!\cnt_hex5[1]~DUPLICATE_q\) # ((!cnt_hex4(2)) # (cnt_hex4(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111100000000111011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex5[1]~DUPLICATE_q\,
	datab => ALT_INV_cnt_hex4(2),
	datac => ALT_INV_cnt_hex4(3),
	datad => ALT_INV_cnt_hex4(0),
	dataf => ALT_INV_cnt_hex4(1),
	combout => \cnt_hex4~2_combout\);

-- Location: FF_X87_Y15_N56
\cnt_hex4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key3~inputCLKENA0_outclk\,
	d => \cnt_hex4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex4(0));

-- Location: FF_X87_Y15_N59
\cnt_hex4[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key3~inputCLKENA0_outclk\,
	d => \cnt_hex4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex4[3]~DUPLICATE_q\);

-- Location: FF_X87_Y15_N50
\cnt_hex4[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key3~inputCLKENA0_outclk\,
	d => \cnt_hex4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex4[2]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y15_N36
\cnt_hex5[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex5[0]~0_combout\ = ( \cnt_hex5[1]~DUPLICATE_q\ & ( \cnt_hex4[2]~DUPLICATE_q\ & ( (!cnt_hex4(0) & (!\cnt_hex4[3]~DUPLICATE_q\ & (!\cnt_hex4[1]~DUPLICATE_q\ & !\cnt_hex5[0]~DUPLICATE_q\))) ) ) ) # ( !\cnt_hex5[1]~DUPLICATE_q\ & ( 
-- \cnt_hex4[2]~DUPLICATE_q\ & ( \cnt_hex5[0]~DUPLICATE_q\ ) ) ) # ( !\cnt_hex5[1]~DUPLICATE_q\ & ( !\cnt_hex4[2]~DUPLICATE_q\ & ( !\cnt_hex5[0]~DUPLICATE_q\ $ (((!cnt_hex4(0)) # ((!\cnt_hex4[3]~DUPLICATE_q\) # (\cnt_hex4[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011101111000000000000000000000000111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex4(0),
	datab => \ALT_INV_cnt_hex4[3]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex4[1]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex5[0]~DUPLICATE_q\,
	datae => \ALT_INV_cnt_hex5[1]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex4[2]~DUPLICATE_q\,
	combout => \cnt_hex5[0]~0_combout\);

-- Location: FF_X87_Y15_N41
\cnt_hex5[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key3~inputCLKENA0_outclk\,
	asdata => \cnt_hex5[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex5[0]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y15_N0
\cnt_hex5[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex5[1]~1_combout\ = ( \cnt_hex5[1]~DUPLICATE_q\ & ( \cnt_hex4[2]~DUPLICATE_q\ & ( !\cnt_hex5[0]~DUPLICATE_q\ ) ) ) # ( \cnt_hex5[1]~DUPLICATE_q\ & ( !\cnt_hex4[2]~DUPLICATE_q\ & ( !\cnt_hex5[0]~DUPLICATE_q\ ) ) ) # ( !\cnt_hex5[1]~DUPLICATE_q\ & ( 
-- !\cnt_hex4[2]~DUPLICATE_q\ & ( (cnt_hex4(0) & (\cnt_hex4[3]~DUPLICATE_q\ & (!\cnt_hex4[1]~DUPLICATE_q\ & \cnt_hex5[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex4(0),
	datab => \ALT_INV_cnt_hex4[3]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex4[1]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex5[0]~DUPLICATE_q\,
	datae => \ALT_INV_cnt_hex5[1]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex4[2]~DUPLICATE_q\,
	combout => \cnt_hex5[1]~1_combout\);

-- Location: FF_X87_Y15_N47
\cnt_hex5[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key3~inputCLKENA0_outclk\,
	asdata => \cnt_hex5[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex5[1]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y15_N57
\cnt_hex4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex4~3_combout\ = ( cnt_hex4(0) & ( (!cnt_hex4(2) & (cnt_hex4(3) & ((cnt_hex4(1)) # (\cnt_hex5[1]~DUPLICATE_q\)))) # (cnt_hex4(2) & ((!cnt_hex4(1) $ (!cnt_hex4(3))))) ) ) # ( !cnt_hex4(0) & ( cnt_hex4(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011011111000000001101111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex5[1]~DUPLICATE_q\,
	datab => ALT_INV_cnt_hex4(2),
	datac => ALT_INV_cnt_hex4(1),
	datad => ALT_INV_cnt_hex4(3),
	dataf => ALT_INV_cnt_hex4(0),
	combout => \cnt_hex4~3_combout\);

-- Location: FF_X87_Y15_N58
\cnt_hex4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key3~inputCLKENA0_outclk\,
	d => \cnt_hex4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex4(3));

-- Location: MLABCELL_X87_Y15_N51
\cnt_hex4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_hex4~0_combout\ = ( cnt_hex4(2) & ( !cnt_hex4(0) $ (!cnt_hex4(1)) ) ) # ( !cnt_hex4(2) & ( (!cnt_hex4(0) & (((cnt_hex4(1))))) # (cnt_hex4(0) & (!cnt_hex4(1) & ((!cnt_hex4(3)) # (cnt_hex5(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101111110000000010111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_hex4(3),
	datab => ALT_INV_cnt_hex5(1),
	datac => ALT_INV_cnt_hex4(0),
	datad => ALT_INV_cnt_hex4(1),
	dataf => ALT_INV_cnt_hex4(2),
	combout => \cnt_hex4~0_combout\);

-- Location: FF_X87_Y15_N53
\cnt_hex4[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key3~inputCLKENA0_outclk\,
	d => \cnt_hex4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex4[1]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y15_N24
\hourdv|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hourdv|WideOr3~0_combout\ = (!\cnt_hex4[1]~DUPLICATE_q\ & (!cnt_hex4(2) $ (((!cnt_hex4(0)) # (cnt_hex4(3)))))) # (\cnt_hex4[1]~DUPLICATE_q\ & (((cnt_hex4(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011110000111001001111000011100100111100001110010011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex4[1]~DUPLICATE_q\,
	datab => ALT_INV_cnt_hex4(2),
	datac => ALT_INV_cnt_hex4(3),
	datad => ALT_INV_cnt_hex4(0),
	combout => \hourdv|WideOr3~0_combout\);

-- Location: FF_X87_Y15_N26
\hourdv|led_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hourdv|WideOr3~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hourdv|led_hex\(0));

-- Location: FF_X87_Y15_N55
\cnt_hex4[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key3~inputCLKENA0_outclk\,
	d => \cnt_hex4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_hex4[0]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y15_N27
\hourdv|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hourdv|WideOr4~0_combout\ = ( \cnt_hex4[3]~DUPLICATE_q\ & ( (cnt_hex4(2)) # (\cnt_hex4[1]~DUPLICATE_q\) ) ) # ( !\cnt_hex4[3]~DUPLICATE_q\ & ( (cnt_hex4(2) & (!\cnt_hex4[1]~DUPLICATE_q\ $ (!\cnt_hex4[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex4[1]~DUPLICATE_q\,
	datab => ALT_INV_cnt_hex4(2),
	datac => \ALT_INV_cnt_hex4[0]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex4[3]~DUPLICATE_q\,
	combout => \hourdv|WideOr4~0_combout\);

-- Location: FF_X87_Y15_N28
\hourdv|led_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hourdv|WideOr4~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hourdv|led_hex\(1));

-- Location: MLABCELL_X87_Y15_N9
\hourdv|led_hex~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hourdv|led_hex~0_combout\ = ( \cnt_hex4[3]~DUPLICATE_q\ & ( (\cnt_hex4[1]~DUPLICATE_q\) # (\cnt_hex4[2]~DUPLICATE_q\) ) ) # ( !\cnt_hex4[3]~DUPLICATE_q\ & ( (!\cnt_hex4[2]~DUPLICATE_q\ & (!\cnt_hex4[0]~DUPLICATE_q\ & \cnt_hex4[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex4[2]~DUPLICATE_q\,
	datac => \ALT_INV_cnt_hex4[0]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex4[1]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex4[3]~DUPLICATE_q\,
	combout => \hourdv|led_hex~0_combout\);

-- Location: FF_X87_Y15_N10
\hourdv|led_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hourdv|led_hex~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hourdv|led_hex\(2));

-- Location: MLABCELL_X87_Y15_N6
\hourdv|WideOr3\ : cyclonev_lcell_comb
-- Equation(s):
-- \hourdv|WideOr3~combout\ = (!\cnt_hex4[1]~DUPLICATE_q\ & (!\cnt_hex4[2]~DUPLICATE_q\ $ (((!\cnt_hex4[0]~DUPLICATE_q\) # (cnt_hex4(3)))))) # (\cnt_hex4[1]~DUPLICATE_q\ & (((\cnt_hex4[2]~DUPLICATE_q\ & \cnt_hex4[0]~DUPLICATE_q\)) # (cnt_hex4(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010100011111011001010001111101100101000111110110010100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex4[2]~DUPLICATE_q\,
	datab => \ALT_INV_cnt_hex4[0]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex4(3),
	datad => \ALT_INV_cnt_hex4[1]~DUPLICATE_q\,
	combout => \hourdv|WideOr3~combout\);

-- Location: FF_X87_Y15_N8
\hourdv|led_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hourdv|WideOr3~combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hourdv|led_hex\(3));

-- Location: MLABCELL_X87_Y15_N21
\hourdv|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hourdv|WideOr2~0_combout\ = ((!\cnt_hex4[1]~DUPLICATE_q\ & ((cnt_hex4(2)))) # (\cnt_hex4[1]~DUPLICATE_q\ & (\cnt_hex4[3]~DUPLICATE_q\))) # (cnt_hex4(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101111111111000110111111111100011011111111110001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex4[1]~DUPLICATE_q\,
	datab => \ALT_INV_cnt_hex4[3]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex4(2),
	datad => ALT_INV_cnt_hex4(0),
	combout => \hourdv|WideOr2~0_combout\);

-- Location: FF_X87_Y15_N22
\hourdv|led_hex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hourdv|WideOr2~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hourdv|led_hex\(4));

-- Location: MLABCELL_X87_Y15_N18
\hourdv|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hourdv|WideOr1~0_combout\ = (!cnt_hex4(0) & ((!\cnt_hex4[2]~DUPLICATE_q\ & (\cnt_hex4[1]~DUPLICATE_q\)) # (\cnt_hex4[2]~DUPLICATE_q\ & ((\cnt_hex4[3]~DUPLICATE_q\))))) # (cnt_hex4(0) & ((!\cnt_hex4[3]~DUPLICATE_q\ $ (\cnt_hex4[2]~DUPLICATE_q\)) # 
-- (\cnt_hex4[1]~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110100110111010111010011011101011101001101110101110100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex4[1]~DUPLICATE_q\,
	datab => \ALT_INV_cnt_hex4[3]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex4(0),
	datad => \ALT_INV_cnt_hex4[2]~DUPLICATE_q\,
	combout => \hourdv|WideOr1~0_combout\);

-- Location: FF_X87_Y15_N20
\hourdv|led_hex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hourdv|WideOr1~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hourdv|led_hex\(5));

-- Location: MLABCELL_X87_Y15_N30
\hourdv|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hourdv|WideOr0~combout\ = ( \cnt_hex4[3]~DUPLICATE_q\ & ( (!\cnt_hex4[1]~DUPLICATE_q\ & !\cnt_hex4[2]~DUPLICATE_q\) ) ) # ( !\cnt_hex4[3]~DUPLICATE_q\ & ( (!\cnt_hex4[1]~DUPLICATE_q\ & ((\cnt_hex4[2]~DUPLICATE_q\))) # (\cnt_hex4[1]~DUPLICATE_q\ & 
-- ((!cnt_hex4(0)) # (!\cnt_hex4[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111010010101011111101010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cnt_hex4[1]~DUPLICATE_q\,
	datac => ALT_INV_cnt_hex4(0),
	datad => \ALT_INV_cnt_hex4[2]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex4[3]~DUPLICATE_q\,
	combout => \hourdv|WideOr0~combout\);

-- Location: FF_X87_Y15_N31
\hourdv|led_hex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hourdv|WideOr0~combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hourdv|led_hex\(6));

-- Location: MLABCELL_X87_Y15_N42
\hourc|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hourc|Equal0~0_combout\ = ( !\cnt_hex5[1]~DUPLICATE_q\ & ( \cnt_hex5[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_cnt_hex5[1]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex5[0]~DUPLICATE_q\,
	combout => \hourc|Equal0~0_combout\);

-- Location: FF_X87_Y15_N13
\hourc|led_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \hourc|Equal0~0_combout\,
	clrn => \ALT_INV_rst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hourc|led_hex\(0));

-- Location: MLABCELL_X87_Y15_N15
\hourc|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hourc|Equal0~1_combout\ = (!\cnt_hex5[0]~DUPLICATE_q\ & \cnt_hex5[1]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt_hex5[0]~DUPLICATE_q\,
	datad => \ALT_INV_cnt_hex5[1]~DUPLICATE_q\,
	combout => \hourc|Equal0~1_combout\);

-- Location: FF_X87_Y15_N16
\hourc|led_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hourc|Equal0~1_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hourc|led_hex\(2));

-- Location: FF_X87_Y15_N5
\hourc|led_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \hourc|Equal0~0_combout\,
	clrn => \ALT_INV_rst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hourc|led_hex\(3));

-- Location: FF_X87_Y15_N40
\cnt_hex5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_key3~inputCLKENA0_outclk\,
	asdata => \cnt_hex5[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_hex5(0));

-- Location: FF_X88_Y14_N46
\hourc|led_hex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cnt_hex5(0),
	clrn => \ALT_INV_rst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hourc|led_hex\(4));

-- Location: MLABCELL_X87_Y15_N33
\hourc|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hourc|WideOr1~0_combout\ = ( \cnt_hex5[0]~DUPLICATE_q\ ) # ( !\cnt_hex5[0]~DUPLICATE_q\ & ( \cnt_hex5[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cnt_hex5[1]~DUPLICATE_q\,
	dataf => \ALT_INV_cnt_hex5[0]~DUPLICATE_q\,
	combout => \hourc|WideOr1~0_combout\);

-- Location: FF_X87_Y15_N34
\hourc|led_hex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \hourc|WideOr1~0_combout\,
	clrn => \ALT_INV_rst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hourc|led_hex\(5));

-- Location: FF_X88_Y16_N31
\hourc|led_hex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => cnt_hex5(1),
	clrn => \ALT_INV_rst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hourc|led_hex\(6));

-- Location: LABCELL_X22_Y26_N0
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


