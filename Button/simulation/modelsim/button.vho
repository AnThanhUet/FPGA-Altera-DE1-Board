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

-- DATE "04/02/2021 05:33:01"

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

ENTITY 	button IS
    PORT (
	clk : IN std_logic;
	sw1 : IN std_logic;
	led_0 : OUT std_logic_vector(6 DOWNTO 0);
	sang : OUT std_logic_vector(3 DOWNTO 0)
	);
END button;

-- Design Ports Information
-- led_0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sang[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sang[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sang[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sang[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF button IS
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
SIGNAL ww_sw1 : std_logic;
SIGNAL ww_led_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sang : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \temp[0]~0_combout\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \cnt_rst[0]~_wirecell_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \cnt_rst[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \dem[0]~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \dem[0]~1_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \rst~0_combout\ : std_logic;
SIGNAL \rst~q\ : std_logic;
SIGNAL \sw1~input_o\ : std_logic;
SIGNAL \led_vaule[2]~0_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~22_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~5_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~2\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~19_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~30_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~13_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~21_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[42]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[42]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[41]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~14_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~34\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[66]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[55]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[55]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~29_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~33_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~18_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~38\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~34\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[66]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[65]~23_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[64]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[64]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~33_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~37_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_8~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~42\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~38\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~34\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~30\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_10~26_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_10~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_10~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[77]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[77]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[76]~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[76]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[75]~31_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[74]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~33_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[74]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[73]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~37_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[72]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~41_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[72]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[71]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[70]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_9~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_10~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_10~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_10~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_10~46_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_10~42_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_10~38_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_10~34_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_10~30_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_10~22_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_10~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[91]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_10~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[92]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_10~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[93]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_10~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[90]~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \led_0[0]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \led_0[1]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \led_0[2]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \led_0[3]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \led_0[4]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \led_0[5]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \led_0[6]~reg0_q\ : std_logic;
SIGNAL \sang~0_combout\ : std_logic;
SIGNAL temp : std_logic_vector(9 DOWNTO 0);
SIGNAL dem : std_logic_vector(9 DOWNTO 0);
SIGNAL led_vaule : std_logic_vector(3 DOWNTO 0);
SIGNAL cnt_rst : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_cnt_rst[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sw1~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[72]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~47_combout\ : std_logic;
SIGNAL ALT_INV_temp : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[72]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[73]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[74]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[63]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[41]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[74]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[75]~31_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[64]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~29_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[64]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[76]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[65]~23_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~21_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~19_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[76]~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[77]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[66]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~13_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[66]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[77]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[71]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[70]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL ALT_INV_dem : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_led_vaule : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~q\ : std_logic;
SIGNAL \ALT_INV_led_0[6]~reg0_q\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_9~41_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_9~37_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_10~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ : std_logic;
SIGNAL ALT_INV_cnt_rst : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_sw1 <= sw1;
led_0 <= ww_led_0;
sang <= ww_sang;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_cnt_rst[4]~DUPLICATE_q\ <= NOT \cnt_rst[4]~DUPLICATE_q\;
\ALT_INV_sw1~input_o\ <= NOT \sw1~input_o\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[72]~49_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[72]~49_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~48_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[61]~48_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~47_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[50]~47_combout\;
ALT_INV_temp(4) <= NOT temp(4);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[72]~46_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[72]~46_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[73]~45_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[73]~45_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~44_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[62]~44_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~43_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~42_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[40]~42_combout\;
ALT_INV_temp(5) <= NOT temp(5);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~41_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[62]~41_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[74]~40_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[74]~40_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[63]~39_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[63]~39_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~38_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[52]~38_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[41]~37_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[41]~37_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~36_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[30]~36_combout\;
ALT_INV_temp(6) <= NOT temp(6);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~35_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[52]~35_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[74]~34_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[74]~34_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~33_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[31]~33_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~32_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[31]~32_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[75]~31_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[75]~31_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[64]~30_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[64]~30_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~29_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[53]~29_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~28_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[42]~28_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~27_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[31]~27_combout\;
ALT_INV_temp(7) <= NOT temp(7);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~26_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[42]~26_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[64]~25_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[64]~25_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[76]~24_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[76]~24_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[65]~23_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[65]~23_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~22_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~21_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[43]~21_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~20_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[32]~20_combout\;
ALT_INV_temp(8) <= NOT temp(8);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~19_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[32]~19_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~18_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[54]~18_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[76]~17_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[76]~17_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[77]~16_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[77]~16_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[66]~15_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[66]~15_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~14_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[55]~14_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~13_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[44]~13_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~12_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[33]~12_combout\;
ALT_INV_temp(9) <= NOT temp(9);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~11_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[33]~11_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~10_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[44]~10_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~9_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[55]~9_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[66]~8_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[66]~8_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[77]~7_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[77]~7_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[71]~5_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[71]~5_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~4_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[60]~4_combout\;
ALT_INV_temp(3) <= NOT temp(3);
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[70]~2_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[70]~2_combout\;
ALT_INV_temp(2) <= NOT temp(2);
ALT_INV_temp(1) <= NOT temp(1);
ALT_INV_temp(0) <= NOT temp(0);
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
ALT_INV_dem(9) <= NOT dem(9);
ALT_INV_dem(8) <= NOT dem(8);
ALT_INV_dem(7) <= NOT dem(7);
ALT_INV_dem(6) <= NOT dem(6);
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
ALT_INV_dem(4) <= NOT dem(4);
ALT_INV_dem(3) <= NOT dem(3);
ALT_INV_dem(2) <= NOT dem(2);
ALT_INV_dem(1) <= NOT dem(1);
ALT_INV_dem(0) <= NOT dem(0);
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_dem(5) <= NOT dem(5);
ALT_INV_led_vaule(3) <= NOT led_vaule(3);
ALT_INV_led_vaule(2) <= NOT led_vaule(2);
ALT_INV_led_vaule(1) <= NOT led_vaule(1);
ALT_INV_led_vaule(0) <= NOT led_vaule(0);
\ALT_INV_rst~q\ <= NOT \rst~q\;
\ALT_INV_led_0[6]~reg0_q\ <= NOT \led_0[6]~reg0_q\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~25_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~33_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~37_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_9~41_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_9~41_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~21_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~21_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~29_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~33_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_9~37_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_9~37_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~25_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~29_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_9~33_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~21_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~25_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_9~29_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~21_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_9~25_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_5~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_6~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_9~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_10~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_9~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_7~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_10~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_9~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_8~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_10~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_9~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_9~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_10~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_10~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_10~1_sumout\;
ALT_INV_cnt_rst(9) <= NOT cnt_rst(9);
ALT_INV_cnt_rst(8) <= NOT cnt_rst(8);
ALT_INV_cnt_rst(7) <= NOT cnt_rst(7);
ALT_INV_cnt_rst(6) <= NOT cnt_rst(6);
ALT_INV_cnt_rst(5) <= NOT cnt_rst(5);
ALT_INV_cnt_rst(4) <= NOT cnt_rst(4);
ALT_INV_cnt_rst(3) <= NOT cnt_rst(3);
ALT_INV_cnt_rst(2) <= NOT cnt_rst(2);
ALT_INV_cnt_rst(0) <= NOT cnt_rst(0);
ALT_INV_cnt_rst(1) <= NOT cnt_rst(1);

-- Location: IOOBUF_X89_Y8_N39
\led_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led_0[0]~reg0_q\,
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
	i => \led_0[1]~reg0_q\,
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
	i => \led_0[2]~reg0_q\,
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
	i => \led_0[3]~reg0_q\,
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
	i => \led_0[4]~reg0_q\,
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
	i => \led_0[5]~reg0_q\,
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
	i => \ALT_INV_led_0[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_led_0(6));

-- Location: IOOBUF_X52_Y0_N2
\sang[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sang~0_combout\,
	devoe => ww_devoe,
	o => ww_sang(0));

-- Location: IOOBUF_X52_Y0_N19
\sang[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sang(1));

-- Location: IOOBUF_X60_Y0_N2
\sang[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sang(2));

-- Location: IOOBUF_X80_Y0_N2
\sang[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sang(3));

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

-- Location: MLABCELL_X87_Y8_N39
\temp[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp[0]~0_combout\ = ( !temp(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_temp(0),
	combout => \temp[0]~0_combout\);

-- Location: LABCELL_X88_Y9_N30
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( dem(1) ) + ( dem(0) ) + ( !VCC ))
-- \Add1~6\ = CARRY(( dem(1) ) + ( dem(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_dem(0),
	datad => ALT_INV_dem(1),
	cin => GND,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: MLABCELL_X84_Y9_N3
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

-- Location: LABCELL_X85_Y9_N0
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( cnt_rst(1) ) + ( cnt_rst(0) ) + ( !VCC ))
-- \Add2~2\ = CARRY(( cnt_rst(1) ) + ( cnt_rst(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt_rst(0),
	datad => ALT_INV_cnt_rst(1),
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X85_Y9_N3
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( cnt_rst(2) ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( cnt_rst(2) ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt_rst(2),
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X85_Y9_N5
\cnt_rst[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	asdata => cnt_rst(2),
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(2));

-- Location: LABCELL_X85_Y9_N6
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( cnt_rst(3) ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( cnt_rst(3) ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt_rst(3),
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X85_Y9_N8
\cnt_rst[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	asdata => cnt_rst(3),
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(3));

-- Location: LABCELL_X85_Y9_N9
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( \cnt_rst[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( \cnt_rst[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cnt_rst[4]~DUPLICATE_q\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X85_Y9_N11
\cnt_rst[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	asdata => \cnt_rst[4]~DUPLICATE_q\,
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_rst[4]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y9_N12
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( cnt_rst(5) ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( cnt_rst(5) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt_rst(5),
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X85_Y9_N14
\cnt_rst[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	asdata => cnt_rst(5),
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(5));

-- Location: LABCELL_X85_Y9_N15
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( cnt_rst(6) ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( cnt_rst(6) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(6),
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X85_Y9_N17
\cnt_rst[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	asdata => cnt_rst(6),
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(6));

-- Location: LABCELL_X85_Y9_N18
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( cnt_rst(7) ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( cnt_rst(7) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(7),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X85_Y9_N20
\cnt_rst[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	asdata => cnt_rst(7),
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(7));

-- Location: LABCELL_X85_Y9_N21
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( cnt_rst(8) ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( cnt_rst(8) ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(8),
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X85_Y9_N22
\cnt_rst[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	asdata => cnt_rst(8),
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(8));

-- Location: LABCELL_X85_Y9_N24
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( cnt_rst(9) ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_cnt_rst(9),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\);

-- Location: FF_X85_Y9_N26
\cnt_rst[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	asdata => cnt_rst(9),
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(9));

-- Location: LABCELL_X85_Y9_N39
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( cnt_rst(9) & ( (cnt_rst(7) & (cnt_rst(8) & cnt_rst(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_rst(7),
	datab => ALT_INV_cnt_rst(8),
	datac => ALT_INV_cnt_rst(6),
	dataf => ALT_INV_cnt_rst(9),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X85_Y9_N45
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \Equal0~1_combout\ & ( \Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X84_Y9_N4
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

-- Location: FF_X85_Y9_N2
\cnt_rst[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	asdata => cnt_rst(1),
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(1));

-- Location: FF_X85_Y9_N10
\cnt_rst[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	asdata => \cnt_rst[4]~DUPLICATE_q\,
	sload => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_rst(4));

-- Location: LABCELL_X85_Y9_N57
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( cnt_rst(2) & ( !cnt_rst(3) & ( (cnt_rst(1) & (cnt_rst(5) & (cnt_rst(0) & !cnt_rst(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt_rst(1),
	datab => ALT_INV_cnt_rst(5),
	datac => ALT_INV_cnt_rst(0),
	datad => ALT_INV_cnt_rst(4),
	datae => ALT_INV_cnt_rst(2),
	dataf => ALT_INV_cnt_rst(3),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X87_Y9_N30
\dem[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dem[0]~0_combout\ = ( \Equal1~0_combout\ & ( \Equal0~1_combout\ & ( (\Equal0~0_combout\ & ((!\Equal1~1_combout\) # (!dem(5)))) ) ) ) # ( !\Equal1~0_combout\ & ( \Equal0~1_combout\ & ( \Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => ALT_INV_dem(5),
	datac => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \dem[0]~0_combout\);

-- Location: FF_X88_Y9_N32
\dem[1]\ : dffeas
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
	q => dem(1));

-- Location: LABCELL_X88_Y9_N15
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !dem(3) & ( !dem(0) & ( (dem(2) & (!dem(1) & !dem(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dem(2),
	datab => ALT_INV_dem(1),
	datac => ALT_INV_dem(4),
	datae => ALT_INV_dem(3),
	dataf => ALT_INV_dem(0),
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X87_Y9_N54
\dem[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dem[0]~1_combout\ = ( dem(0) & ( \Equal0~1_combout\ & ( (!\Equal0~0_combout\) # ((\Equal1~1_combout\ & (dem(5) & \Equal1~0_combout\))) ) ) ) # ( !dem(0) & ( \Equal0~1_combout\ & ( (\Equal0~0_combout\ & ((!\Equal1~1_combout\) # ((!dem(5)) # 
-- (!\Equal1~0_combout\)))) ) ) ) # ( dem(0) & ( !\Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111101111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => ALT_INV_dem(5),
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => ALT_INV_dem(0),
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \dem[0]~1_combout\);

-- Location: FF_X87_Y9_N55
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

-- Location: LABCELL_X88_Y9_N33
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( dem(2) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( dem(2) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(2),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X88_Y9_N35
\dem[2]\ : dffeas
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
	q => dem(2));

-- Location: LABCELL_X88_Y9_N36
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( dem(3) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( dem(3) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(3),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X88_Y9_N38
\dem[3]\ : dffeas
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
	q => dem(3));

-- Location: LABCELL_X88_Y9_N39
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( dem(4) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( dem(4) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(4),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X88_Y9_N41
\dem[4]\ : dffeas
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
	q => dem(4));

-- Location: LABCELL_X88_Y9_N42
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( dem(5) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~2\ = CARRY(( dem(5) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(5),
	cin => \Add1~18\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X88_Y9_N44
\dem[5]\ : dffeas
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
	q => dem(5));

-- Location: LABCELL_X88_Y9_N45
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( dem(6) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~22\ = CARRY(( dem(6) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(6),
	cin => \Add1~2\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X88_Y9_N46
\dem[6]\ : dffeas
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
	q => dem(6));

-- Location: LABCELL_X88_Y9_N48
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( dem(7) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( dem(7) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(7),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X88_Y9_N50
\dem[7]\ : dffeas
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
	q => dem(7));

-- Location: LABCELL_X88_Y9_N51
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( dem(8) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( dem(8) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(8),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X88_Y9_N53
\dem[8]\ : dffeas
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
	q => dem(8));

-- Location: LABCELL_X88_Y9_N54
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( dem(9) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dem(9),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\);

-- Location: FF_X88_Y9_N56
\dem[9]\ : dffeas
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
	q => dem(9));

-- Location: MLABCELL_X87_Y9_N48
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !dem(9) & ( dem(6) & ( (!dem(7) & !dem(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_dem(7),
	datac => ALT_INV_dem(8),
	datae => ALT_INV_dem(9),
	dataf => ALT_INV_dem(6),
	combout => \Equal1~1_combout\);

-- Location: MLABCELL_X87_Y9_N6
\rst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rst~0_combout\ = ( \rst~q\ & ( \Equal0~1_combout\ & ( (!\Equal1~1_combout\) # ((!dem(5)) # ((!\Equal1~0_combout\) # (!\Equal0~0_combout\))) ) ) ) # ( !\rst~q\ & ( \Equal0~1_combout\ & ( (\Equal0~0_combout\ & ((!\Equal1~1_combout\) # ((!dem(5)) # 
-- (!\Equal1~0_combout\)))) ) ) ) # ( \rst~q\ & ( !\Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => ALT_INV_dem(5),
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_rst~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \rst~0_combout\);

-- Location: FF_X87_Y9_N8
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

-- Location: MLABCELL_X87_Y7_N39
\led_vaule[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led_vaule[2]~0_combout\ = ( !\rst~q\ & ( !\sw1~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_rst~q\,
	dataf => \ALT_INV_sw1~input_o\,
	combout => \led_vaule[2]~0_combout\);

-- Location: FF_X87_Y8_N41
\temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \temp[0]~0_combout\,
	ena => \led_vaule[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(0));

-- Location: LABCELL_X85_Y8_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( temp(1) ) + ( temp(0) ) + ( !VCC ))
-- \Add0~2\ = CARRY(( temp(1) ) + ( temp(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(0),
	datad => ALT_INV_temp(1),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X85_Y8_N2
\temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	ena => \led_vaule[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(1));

-- Location: LABCELL_X83_Y7_N6
\Mod0|auto_generated|divider|divider|op_9~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_9~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_9~22_cout\);

-- Location: LABCELL_X83_Y7_N9
\Mod0|auto_generated|divider|divider|op_9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_9~5_sumout\ = SUM(( temp(1) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_9~22_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_9~6\ = CARRY(( temp(1) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_9~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(1),
	cin => \Mod0|auto_generated|divider|divider|op_9~22_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_9~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_9~6\);

-- Location: LABCELL_X85_Y8_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( temp(2) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( temp(2) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_temp(2),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X85_Y8_N5
\temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	ena => \led_vaule[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(2));

-- Location: LABCELL_X85_Y8_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( temp(3) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( temp(3) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_temp(3),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X85_Y8_N8
\temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	ena => \led_vaule[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(3));

-- Location: LABCELL_X85_Y8_N9
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( temp(4) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~34\ = CARRY(( temp(4) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(4),
	cin => \Add0~10\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X85_Y8_N23
\temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~33_sumout\,
	sload => VCC,
	ena => \led_vaule[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(4));

-- Location: LABCELL_X85_Y8_N12
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( temp(5) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( temp(5) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_temp(5),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X84_Y8_N26
\temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~29_sumout\,
	sload => VCC,
	ena => \led_vaule[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(5));

-- Location: LABCELL_X85_Y8_N15
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( temp(6) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( temp(6) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(6),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X85_Y8_N59
\temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~25_sumout\,
	sload => VCC,
	ena => \led_vaule[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(6));

-- Location: LABCELL_X85_Y8_N18
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( temp(7) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( temp(7) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_temp(7),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X85_Y8_N56
\temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~21_sumout\,
	sload => VCC,
	ena => \led_vaule[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(7));

-- Location: LABCELL_X85_Y8_N21
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( temp(8) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( temp(8) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(8),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X85_Y8_N50
\temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~17_sumout\,
	sload => VCC,
	ena => \led_vaule[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(8));

-- Location: LABCELL_X85_Y8_N24
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( temp(9) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(9),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\);

-- Location: FF_X85_Y8_N53
\temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~13_sumout\,
	sload => VCC,
	ena => \led_vaule[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(9));

-- Location: LABCELL_X85_Y8_N30
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ = SUM(( temp(6) ) + ( !VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ = CARRY(( temp(6) ) + ( !VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_temp(6),
	cin => GND,
	sharein => GND,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\);

-- Location: LABCELL_X85_Y8_N33
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ = SUM(( temp(7) ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ = CARRY(( temp(7) ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_temp(7),
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\);

-- Location: LABCELL_X85_Y8_N36
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ = SUM(( !temp(8) ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ = CARRY(( !temp(8) ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ = SHARE(temp(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(8),
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\);

-- Location: LABCELL_X85_Y8_N39
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1_sumout\ = SUM(( temp(9) ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~2\ = CARRY(( temp(9) ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(9),
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~2\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\);

-- Location: LABCELL_X85_Y8_N42
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ = SUM(( VCC ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~2\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\);

-- Location: LABCELL_X85_Y8_N57
\Mod0|auto_generated|divider|divider|StageOut[33]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~11_combout\ = ( !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~11_combout\);

-- Location: LABCELL_X85_Y8_N51
\Mod0|auto_generated|divider|divider|StageOut[33]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~12_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ( temp(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_temp(9),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~12_combout\);

-- Location: LABCELL_X85_Y8_N48
\Mod0|auto_generated|divider|divider|StageOut[31]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~32_combout\ = ( !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~32_combout\);

-- Location: LABCELL_X85_Y8_N54
\Mod0|auto_generated|divider|divider|StageOut[31]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~33_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ( temp(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_temp(7),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~33_combout\);

-- Location: MLABCELL_X84_Y8_N0
\Mod0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: MLABCELL_X84_Y8_N3
\Mod0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( temp(5) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_5~22\ = CARRY(( temp(5) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(5),
	cin => \Mod0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~22\);

-- Location: MLABCELL_X84_Y8_N6
\Mod0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ((temp(6)))) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~22\ ))
-- \Mod0|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ((temp(6)))) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	datac => ALT_INV_temp(6),
	cin => \Mod0|auto_generated|divider|divider|op_5~22\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~18\);

-- Location: MLABCELL_X84_Y8_N9
\Mod0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[31]~33_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[31]~32_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~18\ ))
-- \Mod0|auto_generated|divider|divider|op_5~14\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[31]~33_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[31]~32_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~32_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~33_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_5~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~14\);

-- Location: MLABCELL_X84_Y8_N12
\Mod0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & (temp(8))) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~14\ ))
-- \Mod0|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & (temp(8))) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	datac => ALT_INV_temp(8),
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_5~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~10\);

-- Location: MLABCELL_X84_Y8_N15
\Mod0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( (\Mod0|auto_generated|divider|divider|StageOut[33]~12_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[33]~11_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~10\ ))
-- \Mod0|auto_generated|divider|divider|op_5~6\ = CARRY(( (\Mod0|auto_generated|divider|divider|StageOut[33]~12_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[33]~11_combout\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~11_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~12_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_5~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_5~6\);

-- Location: MLABCELL_X84_Y8_N18
\Mod0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_5~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: MLABCELL_X84_Y8_N30
\Mod0|auto_generated|divider|divider|StageOut[44]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~10_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~5_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~10_combout\);

-- Location: MLABCELL_X82_Y8_N9
\Mod0|auto_generated|divider|divider|StageOut[32]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~19_combout\ = ( !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~19_combout\);

-- Location: MLABCELL_X84_Y8_N24
\Mod0|auto_generated|divider|divider|StageOut[32]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~20_combout\ = ( temp(8) & ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	dataf => ALT_INV_temp(8),
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~20_combout\);

-- Location: MLABCELL_X82_Y8_N54
\Mod0|auto_generated|divider|divider|StageOut[31]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~27_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ( temp(7) ) ) # ( !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\,
	datad => ALT_INV_temp(7),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~27_combout\);

-- Location: MLABCELL_X82_Y8_N30
\Mod0|auto_generated|divider|divider|StageOut[30]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~36_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ( temp(6) ) ) # ( !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~5_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	datad => ALT_INV_temp(6),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~36_combout\);

-- Location: MLABCELL_X84_Y8_N36
\Mod0|auto_generated|divider|divider|op_6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~30_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_6~30_cout\);

-- Location: MLABCELL_X84_Y8_N39
\Mod0|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( temp(4) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~30_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_6~26\ = CARRY(( temp(4) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_temp(4),
	cin => \Mod0|auto_generated|divider|divider|op_6~30_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~26\);

-- Location: MLABCELL_X84_Y8_N42
\Mod0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~21_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (temp(5))) ) + ( GND ) 
-- + ( \Mod0|auto_generated|divider|divider|op_6~26\ ))
-- \Mod0|auto_generated|divider|divider|op_6~22\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~21_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (temp(5))) ) + ( GND ) + ( 
-- \Mod0|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(5),
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~26\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~22\);

-- Location: MLABCELL_X84_Y8_N45
\Mod0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~17_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~36_combout\)) ) + ( \Mod0|auto_generated|divider|divider|op_6~22\ ))
-- \Mod0|auto_generated|divider|divider|op_6~18\ = CARRY(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~17_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~36_combout\)) ) + ( \Mod0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~36_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~22\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~18\);

-- Location: MLABCELL_X84_Y8_N48
\Mod0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~27_combout\)) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_6~18\ ))
-- \Mod0|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_5~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~27_combout\)) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~27_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~14\);

-- Location: MLABCELL_X84_Y8_N51
\Mod0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_5~9_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[32]~20_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[32]~19_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~14\ ))
-- \Mod0|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_5~9_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[32]~20_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[32]~19_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~19_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~20_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~10\);

-- Location: MLABCELL_X84_Y8_N54
\Mod0|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_5~5_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[33]~11_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[33]~12_combout\))) ) + ( \Mod0|auto_generated|divider|divider|op_6~10\ ))
-- \Mod0|auto_generated|divider|divider|op_6~6\ = CARRY(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_5~5_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[33]~11_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[33]~12_combout\))) ) + ( \Mod0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~11_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_6~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_6~6\);

-- Location: MLABCELL_X84_Y8_N57
\Mod0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_6~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: MLABCELL_X82_Y8_N15
\Mod0|auto_generated|divider|divider|StageOut[44]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~13_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[33]~11_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[33]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~11_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~13_combout\);

-- Location: MLABCELL_X84_Y8_N33
\Mod0|auto_generated|divider|divider|StageOut[43]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~21_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[32]~19_combout\ & ( (\Mod0|auto_generated|divider|divider|op_5~9_sumout\) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[32]~19_combout\ & ( (!\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_5~9_sumout\)) # (\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~20_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~19_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~21_combout\);

-- Location: MLABCELL_X82_Y8_N0
\Mod0|auto_generated|divider|divider|StageOut[42]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[42]~26_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~13_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[42]~26_combout\);

-- Location: MLABCELL_X82_Y8_N27
\Mod0|auto_generated|divider|divider|StageOut[42]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[42]~28_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[31]~27_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~27_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[42]~28_combout\);

-- Location: MLABCELL_X82_Y8_N33
\Mod0|auto_generated|divider|divider|StageOut[41]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[41]~37_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[30]~36_combout\ ) ) # ( !\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|op_5~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~36_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[41]~37_combout\);

-- Location: MLABCELL_X82_Y8_N3
\Mod0|auto_generated|divider|divider|StageOut[40]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~42_combout\ = ( \Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( temp(5) ) ) # ( !\Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_5~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(5),
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~42_combout\);

-- Location: LABCELL_X83_Y8_N0
\Mod0|auto_generated|divider|divider|op_7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~14_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_7~14_cout\);

-- Location: LABCELL_X83_Y8_N3
\Mod0|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( temp(3) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~14_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_7~6\ = CARRY(( temp(3) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(3),
	cin => \Mod0|auto_generated|divider|divider|op_7~14_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~6\);

-- Location: LABCELL_X83_Y8_N6
\Mod0|auto_generated|divider|divider|op_7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~33_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~25_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (temp(4))) ) + ( GND ) 
-- + ( \Mod0|auto_generated|divider|divider|op_7~6\ ))
-- \Mod0|auto_generated|divider|divider|op_7~34\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~25_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (temp(4))) ) + ( GND ) + ( 
-- \Mod0|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(4),
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~33_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~34\);

-- Location: LABCELL_X83_Y8_N9
\Mod0|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~21_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[40]~42_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~34\ ))
-- \Mod0|auto_generated|divider|divider|op_7~30\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~21_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[40]~42_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~42_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~34\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~30\);

-- Location: LABCELL_X83_Y8_N12
\Mod0|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~17_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[41]~37_combout\)) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_7~30\ ))
-- \Mod0|auto_generated|divider|divider|op_7~26\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~17_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[41]~37_combout\)) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[41]~37_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~30\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~26\);

-- Location: LABCELL_X83_Y8_N15
\Mod0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~13_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[42]~28_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[42]~26_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~26\ ))
-- \Mod0|auto_generated|divider|divider|op_7~22\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~13_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[42]~28_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[42]~26_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~26_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~28_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~26\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~22\);

-- Location: LABCELL_X83_Y8_N18
\Mod0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[43]~21_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~22\ ))
-- \Mod0|auto_generated|divider|divider|op_7~18\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_6~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[43]~21_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~21_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~22\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~18\);

-- Location: LABCELL_X83_Y8_N21
\Mod0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~5_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[44]~13_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[44]~10_combout\))) ) + ( \Mod0|auto_generated|divider|divider|op_7~18\ ))
-- \Mod0|auto_generated|divider|divider|op_7~10\ = CARRY(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_6~5_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[44]~13_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[44]~10_combout\))) ) + ( \Mod0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~13_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_7~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_7~10\);

-- Location: LABCELL_X83_Y8_N24
\Mod0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_7~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X83_Y7_N3
\Mod0|auto_generated|divider|divider|StageOut[66]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[66]~8_combout\ = ( \Mod0|auto_generated|divider|divider|op_7~9_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[66]~8_combout\);

-- Location: MLABCELL_X84_Y8_N27
\Mod0|auto_generated|divider|divider|StageOut[55]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[55]~9_combout\ = (!\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & \Mod0|auto_generated|divider|divider|op_6~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[55]~9_combout\);

-- Location: MLABCELL_X82_Y8_N42
\Mod0|auto_generated|divider|divider|StageOut[55]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[55]~14_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[44]~10_combout\ & ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[44]~10_combout\ 
-- & ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[44]~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~13_combout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~10_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[55]~14_combout\);

-- Location: MLABCELL_X82_Y8_N18
\Mod0|auto_generated|divider|divider|StageOut[54]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~18_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~9_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~18_combout\);

-- Location: MLABCELL_X82_Y8_N21
\Mod0|auto_generated|divider|divider|StageOut[54]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[43]~21_combout\ & ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~21_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\);

-- Location: MLABCELL_X82_Y8_N51
\Mod0|auto_generated|divider|divider|StageOut[53]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~29_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~13_sumout\ & ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[42]~28_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~26_combout\) ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_6~13_sumout\ & ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[42]~28_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~26_combout\) ) ) ) # ( \Mod0|auto_generated|divider|divider|op_6~13_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~26_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~28_combout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~29_combout\);

-- Location: MLABCELL_X82_Y8_N24
\Mod0|auto_generated|divider|divider|StageOut[52]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~35_combout\ = ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_6~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~35_combout\);

-- Location: MLABCELL_X82_Y8_N57
\Mod0|auto_generated|divider|divider|StageOut[52]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~38_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[41]~37_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[41]~37_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~38_combout\);

-- Location: MLABCELL_X82_Y8_N36
\Mod0|auto_generated|divider|divider|StageOut[51]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[40]~42_combout\ ) ) # ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|op_6~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~42_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\);

-- Location: MLABCELL_X82_Y8_N6
\Mod0|auto_generated|divider|divider|StageOut[50]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~47_combout\ = ( \Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( temp(4) ) ) # ( !\Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_6~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	datac => ALT_INV_temp(4),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~47_combout\);

-- Location: LABCELL_X83_Y8_N30
\Mod0|auto_generated|divider|divider|op_8~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_8~18_cout\);

-- Location: LABCELL_X83_Y8_N33
\Mod0|auto_generated|divider|divider|op_8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~5_sumout\ = SUM(( temp(2) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~18_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_8~6\ = CARRY(( temp(2) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(2),
	cin => \Mod0|auto_generated|divider|divider|op_8~18_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~6\);

-- Location: LABCELL_X83_Y8_N36
\Mod0|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (temp(3))) ) + ( GND ) + 
-- ( \Mod0|auto_generated|divider|divider|op_8~6\ ))
-- \Mod0|auto_generated|divider|divider|op_8~10\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (temp(3))) ) + ( GND ) + ( 
-- \Mod0|auto_generated|divider|divider|op_8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_temp(3),
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~10\);

-- Location: LABCELL_X83_Y8_N39
\Mod0|auto_generated|divider|divider|op_8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~37_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~33_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~47_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~10\ ))
-- \Mod0|auto_generated|divider|divider|op_8~38\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~33_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~47_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~47_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~37_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~38\);

-- Location: LABCELL_X83_Y8_N42
\Mod0|auto_generated|divider|divider|op_8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~33_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~29_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\)) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~38\ ))
-- \Mod0|auto_generated|divider|divider|op_8~34\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~29_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\)) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~43_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~38\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~33_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~34\);

-- Location: LABCELL_X83_Y8_N45
\Mod0|auto_generated|divider|divider|op_8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~29_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_7~25_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[52]~38_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[52]~35_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~34\ ))
-- \Mod0|auto_generated|divider|divider|op_8~30\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_7~25_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[52]~38_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[52]~35_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~35_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~38_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~34\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~29_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~30\);

-- Location: LABCELL_X83_Y8_N48
\Mod0|auto_generated|divider|divider|op_8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~25_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~21_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[53]~29_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~30\ ))
-- \Mod0|auto_generated|divider|divider|op_8~26\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~21_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[53]~29_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~29_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~30\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~25_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~26\);

-- Location: LABCELL_X83_Y8_N51
\Mod0|auto_generated|divider|divider|op_8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~21_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_7~17_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[54]~18_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~26\ ))
-- \Mod0|auto_generated|divider|divider|op_8~22\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_7~17_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[54]~18_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~22_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~26\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~22\);

-- Location: LABCELL_X83_Y8_N54
\Mod0|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_7~9_sumout\)) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[55]~14_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[55]~9_combout\)))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~22\ ))
-- \Mod0|auto_generated|divider|divider|op_8~14\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_7~9_sumout\)) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[55]~14_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[55]~9_combout\)))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~14_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_8~22\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_8~14\);

-- Location: LABCELL_X83_Y8_N57
\Mod0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_8~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X83_Y7_N54
\Mod0|auto_generated|divider|divider|StageOut[66]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[66]~15_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[55]~9_combout\ & ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ ) ) # ( !\Mod0|auto_generated|divider|divider|StageOut[55]~9_combout\ & 
-- ( (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & \Mod0|auto_generated|divider|divider|StageOut[55]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~14_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~9_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[66]~15_combout\);

-- Location: LABCELL_X83_Y7_N42
\Mod0|auto_generated|divider|divider|StageOut[65]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[65]~23_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[54]~18_combout\ & ( (\Mod0|auto_generated|divider|divider|op_7~17_sumout\) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[54]~18_combout\ & ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~17_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[54]~22_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[65]~23_combout\);

-- Location: LABCELL_X83_Y7_N48
\Mod0|auto_generated|divider|divider|StageOut[64]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[64]~25_combout\ = ( \Mod0|auto_generated|divider|divider|op_7~21_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[64]~25_combout\);

-- Location: MLABCELL_X82_Y8_N12
\Mod0|auto_generated|divider|divider|StageOut[64]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[64]~30_combout\ = ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[53]~29_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~29_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[64]~30_combout\);

-- Location: LABCELL_X83_Y7_N57
\Mod0|auto_generated|divider|divider|StageOut[63]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~39_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[52]~38_combout\ & ( (\Mod0|auto_generated|divider|divider|op_7~25_sumout\) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[52]~38_combout\ & ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_7~25_sumout\))) # (\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[52]~35_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~35_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~38_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~39_combout\);

-- Location: LABCELL_X83_Y7_N45
\Mod0|auto_generated|divider|divider|StageOut[62]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~41_combout\ = ( \Mod0|auto_generated|divider|divider|op_7~29_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~41_combout\);

-- Location: MLABCELL_X82_Y8_N39
\Mod0|auto_generated|divider|divider|StageOut[62]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~44_combout\ = ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~43_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~44_combout\);

-- Location: LABCELL_X83_Y7_N0
\Mod0|auto_generated|divider|divider|StageOut[61]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~48_combout\ = ( \Mod0|auto_generated|divider|divider|op_7~33_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_7~1_sumout\) # (\Mod0|auto_generated|divider|divider|StageOut[50]~47_combout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|op_7~33_sumout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[50]~47_combout\ & \Mod0|auto_generated|divider|divider|op_7~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~47_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~48_combout\);

-- Location: MLABCELL_X82_Y7_N51
\Mod0|auto_generated|divider|divider|StageOut[60]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~4_combout\ = ( temp(3) & ( \Mod0|auto_generated|divider|divider|op_7~1_sumout\ ) ) # ( temp(3) & ( !\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|op_7~5_sumout\ ) ) ) # ( !temp(3) & ( !\Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_7~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	datae => ALT_INV_temp(3),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~4_combout\);

-- Location: LABCELL_X83_Y7_N12
\Mod0|auto_generated|divider|divider|op_9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_9~9_sumout\ = SUM(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_8~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (temp(2))) ) + 
-- ( \Mod0|auto_generated|divider|divider|op_9~6\ ))
-- \Mod0|auto_generated|divider|divider|op_9~10\ = CARRY(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_8~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (temp(2))) ) + ( 
-- \Mod0|auto_generated|divider|divider|op_9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => ALT_INV_temp(2),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_9~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_9~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_9~10\);

-- Location: LABCELL_X83_Y7_N15
\Mod0|auto_generated|divider|divider|op_9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_9~13_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_8~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[60]~4_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_9~10\ ))
-- \Mod0|auto_generated|divider|divider|op_9~14\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_8~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[60]~4_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_9~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_9~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_9~14\);

-- Location: LABCELL_X83_Y7_N18
\Mod0|auto_generated|divider|divider|op_9~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_9~41_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_8~37_sumout\))) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[61]~48_combout\)) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_9~14\ ))
-- \Mod0|auto_generated|divider|divider|op_9~42\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_8~37_sumout\))) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[61]~48_combout\)) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~48_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_9~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_9~41_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_9~42\);

-- Location: LABCELL_X83_Y7_N21
\Mod0|auto_generated|divider|divider|op_9~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_9~37_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_8~33_sumout\)) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[62]~44_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[62]~41_combout\)))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_9~42\ ))
-- \Mod0|auto_generated|divider|divider|op_9~38\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_8~33_sumout\)) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[62]~44_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[62]~41_combout\)))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_9~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~41_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~44_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_9~42\,
	sumout => \Mod0|auto_generated|divider|divider|op_9~37_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_9~38\);

-- Location: LABCELL_X83_Y7_N24
\Mod0|auto_generated|divider|divider|op_9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_9~33_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_8~29_sumout\))) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~39_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_9~38\ ))
-- \Mod0|auto_generated|divider|divider|op_9~34\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_8~29_sumout\))) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~39_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_9~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[63]~39_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_9~38\,
	sumout => \Mod0|auto_generated|divider|divider|op_9~33_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_9~34\);

-- Location: LABCELL_X83_Y7_N27
\Mod0|auto_generated|divider|divider|op_9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_9~29_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_8~25_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[64]~30_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[64]~25_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_9~34\ ))
-- \Mod0|auto_generated|divider|divider|op_9~30\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_8~25_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[64]~30_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[64]~25_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_9~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[64]~25_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[64]~30_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_9~34\,
	sumout => \Mod0|auto_generated|divider|divider|op_9~29_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_9~30\);

-- Location: LABCELL_X83_Y7_N30
\Mod0|auto_generated|divider|divider|op_9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_9~25_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_8~21_sumout\))) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[65]~23_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_9~30\ ))
-- \Mod0|auto_generated|divider|divider|op_9~26\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_8~21_sumout\))) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[65]~23_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[65]~23_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_9~30\,
	sumout => \Mod0|auto_generated|divider|divider|op_9~25_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_9~26\);

-- Location: LABCELL_X83_Y7_N33
\Mod0|auto_generated|divider|divider|op_9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_9~17_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_8~13_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[66]~15_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[66]~8_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_9~26\ ))
-- \Mod0|auto_generated|divider|divider|op_9~18\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_8~13_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[66]~15_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[66]~8_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[66]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[66]~15_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_9~26\,
	sumout => \Mod0|auto_generated|divider|divider|op_9~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_9~18\);

-- Location: LABCELL_X83_Y7_N36
\Mod0|auto_generated|divider|divider|op_9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_9~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_9~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_9~1_sumout\);

-- Location: MLABCELL_X84_Y7_N6
\Mod0|auto_generated|divider|divider|op_10~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_10~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_10~26_cout\);

-- Location: MLABCELL_X84_Y7_N9
\Mod0|auto_generated|divider|divider|op_10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_10~5_sumout\ = SUM(( temp(0) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_10~26_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_10~6\ = CARRY(( temp(0) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_10~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(0),
	cin => \Mod0|auto_generated|divider|divider|op_10~26_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_10~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_10~6\);

-- Location: MLABCELL_X84_Y7_N12
\Mod0|auto_generated|divider|divider|op_10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_10~9_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_9~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (temp(1))) ) + ( GND ) + 
-- ( \Mod0|auto_generated|divider|divider|op_10~6\ ))
-- \Mod0|auto_generated|divider|divider|op_10~10\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_9~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (temp(1))) ) + ( GND ) + ( 
-- \Mod0|auto_generated|divider|divider|op_10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_temp(1),
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_10~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_10~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_10~10\);

-- Location: MLABCELL_X84_Y7_N57
\Mod0|auto_generated|divider|divider|StageOut[77]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[77]~7_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~13_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[77]~7_combout\);

-- Location: LABCELL_X83_Y7_N51
\Mod0|auto_generated|divider|divider|StageOut[77]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[77]~16_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (\Mod0|auto_generated|divider|divider|StageOut[66]~15_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[66]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[66]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[66]~15_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[77]~16_combout\);

-- Location: MLABCELL_X84_Y7_N42
\Mod0|auto_generated|divider|divider|StageOut[76]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[76]~17_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~21_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[76]~17_combout\);

-- Location: LABCELL_X85_Y7_N0
\Mod0|auto_generated|divider|divider|StageOut[76]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[76]~24_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[65]~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[65]~23_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[76]~24_combout\);

-- Location: MLABCELL_X84_Y7_N3
\Mod0|auto_generated|divider|divider|StageOut[75]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[75]~31_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~25_sumout\ & ( ((!\Mod0|auto_generated|divider|divider|op_8~1_sumout\) # (\Mod0|auto_generated|divider|divider|StageOut[64]~30_combout\)) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[64]~25_combout\) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~25_sumout\ & ( (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[64]~30_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[64]~25_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111111111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[64]~25_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[64]~30_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[75]~31_combout\);

-- Location: LABCELL_X85_Y7_N57
\Mod0|auto_generated|divider|divider|StageOut[74]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[74]~34_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~29_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[74]~34_combout\);

-- Location: MLABCELL_X82_Y7_N33
\Mod0|auto_generated|divider|divider|StageOut[74]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[74]~40_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[63]~39_combout\ & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[63]~39_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[74]~40_combout\);

-- Location: MLABCELL_X84_Y7_N45
\Mod0|auto_generated|divider|divider|StageOut[73]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[73]~45_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~33_sumout\ & ( ((!\Mod0|auto_generated|divider|divider|op_8~1_sumout\) # (\Mod0|auto_generated|divider|divider|StageOut[62]~44_combout\)) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[62]~41_combout\) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~33_sumout\ & ( (\Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[62]~44_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[62]~41_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111111111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~41_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~44_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[73]~45_combout\);

-- Location: LABCELL_X85_Y7_N51
\Mod0|auto_generated|divider|divider|StageOut[72]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[72]~46_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~37_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[72]~46_combout\);

-- Location: LABCELL_X85_Y7_N42
\Mod0|auto_generated|divider|divider|StageOut[72]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[72]~49_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[61]~48_combout\ & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~48_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[72]~49_combout\);

-- Location: LABCELL_X85_Y7_N18
\Mod0|auto_generated|divider|divider|StageOut[71]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[71]~5_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~9_sumout\ & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[60]~4_combout\ ) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|op_8~9_sumout\ & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Mod0|auto_generated|divider|divider|StageOut[60]~4_combout\ ) ) ) # ( \Mod0|auto_generated|divider|divider|op_8~9_sumout\ & ( 
-- !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~4_combout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[71]~5_combout\);

-- Location: LABCELL_X85_Y7_N15
\Mod0|auto_generated|divider|divider|StageOut[70]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[70]~2_combout\ = ( \Mod0|auto_generated|divider|divider|op_8~5_sumout\ & ( \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( temp(2) ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_8~5_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( temp(2) ) ) ) # ( \Mod0|auto_generated|divider|divider|op_8~5_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(2),
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[70]~2_combout\);

-- Location: MLABCELL_X84_Y7_N15
\Mod0|auto_generated|divider|divider|op_10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_10~13_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_9~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[70]~2_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_10~10\ ))
-- \Mod0|auto_generated|divider|divider|op_10~14\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_9~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[70]~2_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[70]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_10~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_10~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_10~14\);

-- Location: MLABCELL_X84_Y7_N18
\Mod0|auto_generated|divider|divider|op_10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_10~17_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_9~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[71]~5_combout\)) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_10~14\ ))
-- \Mod0|auto_generated|divider|divider|op_10~18\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_9~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[71]~5_combout\)) ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[71]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_10~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_10~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_10~18\);

-- Location: MLABCELL_X84_Y7_N21
\Mod0|auto_generated|divider|divider|op_10~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_10~46_cout\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_9~41_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[72]~49_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[72]~46_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[72]~46_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~41_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[72]~49_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_10~18\,
	cout => \Mod0|auto_generated|divider|divider|op_10~46_cout\);

-- Location: MLABCELL_X84_Y7_N24
\Mod0|auto_generated|divider|divider|op_10~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_10~42_cout\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_9~37_sumout\))) # (\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[73]~45_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_10~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[73]~45_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~37_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_10~46_cout\,
	cout => \Mod0|auto_generated|divider|divider|op_10~42_cout\);

-- Location: MLABCELL_X84_Y7_N27
\Mod0|auto_generated|divider|divider|op_10~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_10~38_cout\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_9~33_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[74]~40_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[74]~34_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_10~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[74]~34_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[74]~40_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_10~42_cout\,
	cout => \Mod0|auto_generated|divider|divider|op_10~38_cout\);

-- Location: MLABCELL_X84_Y7_N30
\Mod0|auto_generated|divider|divider|op_10~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_10~34_cout\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_9~29_sumout\))) # (\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[75]~31_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_10~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[75]~31_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_10~38_cout\,
	cout => \Mod0|auto_generated|divider|divider|op_10~34_cout\);

-- Location: MLABCELL_X84_Y7_N33
\Mod0|auto_generated|divider|divider|op_10~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_10~30_cout\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_9~25_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[76]~24_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[76]~17_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_10~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[76]~17_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[76]~24_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_10~34_cout\,
	cout => \Mod0|auto_generated|divider|divider|op_10~30_cout\);

-- Location: MLABCELL_X84_Y7_N36
\Mod0|auto_generated|divider|divider|op_10~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_10~22_cout\ = CARRY(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_9~17_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[77]~16_combout\)) # (\Mod0|auto_generated|divider|divider|StageOut[77]~7_combout\))) ) + ( \Mod0|auto_generated|divider|divider|op_10~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010101100000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[77]~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[77]~16_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_10~30_cout\,
	cout => \Mod0|auto_generated|divider|divider|op_10~22_cout\);

-- Location: MLABCELL_X84_Y7_N39
\Mod0|auto_generated|divider|divider|op_10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_10~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_10~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_10~22_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_10~1_sumout\);

-- Location: MLABCELL_X84_Y7_N54
\Mod0|auto_generated|divider|divider|StageOut[91]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[91]~1_combout\ = ( \Mod0|auto_generated|divider|divider|op_10~1_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_9~5_sumout\)) # 
-- (\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((temp(1)))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_10~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_10~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datad => ALT_INV_temp(1),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[91]~1_combout\);

-- Location: FF_X84_Y7_N56
\led_vaule[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[91]~1_combout\,
	ena => \led_vaule[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_vaule(1));

-- Location: MLABCELL_X84_Y7_N51
\Mod0|auto_generated|divider|divider|StageOut[92]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[92]~3_combout\ = ( \Mod0|auto_generated|divider|divider|op_10~13_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_10~1_sumout\) # ((!\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|op_9~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (\Mod0|auto_generated|divider|divider|StageOut[70]~2_combout\))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_10~13_sumout\ & ( 
-- (\Mod0|auto_generated|divider|divider|op_10~1_sumout\ & ((!\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_9~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[70]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[70]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[92]~3_combout\);

-- Location: FF_X84_Y7_N53
\led_vaule[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[92]~3_combout\,
	ena => \led_vaule[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_vaule(2));

-- Location: MLABCELL_X84_Y7_N48
\Mod0|auto_generated|divider|divider|StageOut[93]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[93]~6_combout\ = ( \Mod0|auto_generated|divider|divider|op_10~17_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_10~1_sumout\) # ((!\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|op_9~13_sumout\)) # (\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Mod0|auto_generated|divider|divider|StageOut[71]~5_combout\)))) ) ) # ( !\Mod0|auto_generated|divider|divider|op_10~17_sumout\ & ( 
-- (\Mod0|auto_generated|divider|divider|op_10~1_sumout\ & ((!\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_9~13_sumout\)) # (\Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[71]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[71]~5_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[93]~6_combout\);

-- Location: FF_X84_Y7_N50
\led_vaule[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[93]~6_combout\,
	ena => \led_vaule[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_vaule(3));

-- Location: MLABCELL_X84_Y7_N0
\Mod0|auto_generated|divider|divider|StageOut[90]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[90]~0_combout\ = ( \Mod0|auto_generated|divider|divider|op_10~1_sumout\ & ( temp(0) ) ) # ( !\Mod0|auto_generated|divider|divider|op_10~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_10~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_10~5_sumout\,
	datac => ALT_INV_temp(0),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[90]~0_combout\);

-- Location: FF_X84_Y7_N2
\led_vaule[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[90]~0_combout\,
	ena => \led_vaule[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_vaule(0));

-- Location: MLABCELL_X87_Y9_N12
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( led_vaule(0) & ( !led_vaule(3) $ (((led_vaule(2)) # (led_vaule(1)))) ) ) # ( !led_vaule(0) & ( (!led_vaule(1) & (led_vaule(2))) # (led_vaule(1) & ((led_vaule(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111110100000010111111010000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_led_vaule(1),
	datac => ALT_INV_led_vaule(2),
	datad => ALT_INV_led_vaule(3),
	dataf => ALT_INV_led_vaule(0),
	combout => \Mux6~0_combout\);

-- Location: FF_X87_Y9_N13
\led_0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux6~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \ALT_INV_sw1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_0[0]~reg0_q\);

-- Location: MLABCELL_X87_Y9_N15
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!led_vaule(3) & (led_vaule(2) & (!led_vaule(1) $ (!led_vaule(0))))) # (led_vaule(3) & (((led_vaule(2))) # (led_vaule(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101101111000001010110111100000101011011110000010101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_led_vaule(1),
	datab => ALT_INV_led_vaule(0),
	datac => ALT_INV_led_vaule(3),
	datad => ALT_INV_led_vaule(2),
	combout => \Mux5~0_combout\);

-- Location: FF_X87_Y9_N16
\led_0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux5~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \ALT_INV_sw1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_0[1]~reg0_q\);

-- Location: MLABCELL_X87_Y9_N42
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( led_vaule(0) & ( (led_vaule(3) & ((led_vaule(2)) # (led_vaule(1)))) ) ) # ( !led_vaule(0) & ( (!led_vaule(2) & (led_vaule(1))) # (led_vaule(2) & ((led_vaule(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_led_vaule(1),
	datab => ALT_INV_led_vaule(3),
	datac => ALT_INV_led_vaule(2),
	dataf => ALT_INV_led_vaule(0),
	combout => \Mux4~0_combout\);

-- Location: FF_X87_Y9_N43
\led_0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux4~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \ALT_INV_sw1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_0[2]~reg0_q\);

-- Location: MLABCELL_X87_Y9_N36
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( led_vaule(0) & ( (!led_vaule(1) & (!led_vaule(3) $ (led_vaule(2)))) # (led_vaule(1) & ((led_vaule(2)) # (led_vaule(3)))) ) ) # ( !led_vaule(0) & ( (!led_vaule(1) & ((led_vaule(2)))) # (led_vaule(1) & (led_vaule(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101110010111100101111001011110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_led_vaule(1),
	datab => ALT_INV_led_vaule(3),
	datac => ALT_INV_led_vaule(2),
	dataf => ALT_INV_led_vaule(0),
	combout => \Mux3~0_combout\);

-- Location: FF_X87_Y9_N37
\led_0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \ALT_INV_sw1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_0[3]~reg0_q\);

-- Location: MLABCELL_X87_Y9_N39
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ((!led_vaule(1) & ((led_vaule(2)))) # (led_vaule(1) & (led_vaule(3)))) # (led_vaule(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111110111111000111111011111100011111101111110001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_led_vaule(1),
	datab => ALT_INV_led_vaule(3),
	datac => ALT_INV_led_vaule(0),
	datad => ALT_INV_led_vaule(2),
	combout => \Mux2~0_combout\);

-- Location: FF_X87_Y9_N40
\led_0[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \ALT_INV_sw1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_0[4]~reg0_q\);

-- Location: MLABCELL_X87_Y9_N45
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!led_vaule(0) & ((!led_vaule(2) & (led_vaule(1))) # (led_vaule(2) & ((led_vaule(3)))))) # (led_vaule(0) & ((!led_vaule(3) $ (led_vaule(2))) # (led_vaule(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110100110111010111010011011101011101001101110101110100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_led_vaule(1),
	datab => ALT_INV_led_vaule(3),
	datac => ALT_INV_led_vaule(0),
	datad => ALT_INV_led_vaule(2),
	combout => \Mux1~0_combout\);

-- Location: FF_X87_Y9_N46
\led_0[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \ALT_INV_sw1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_0[5]~reg0_q\);

-- Location: MLABCELL_X87_Y9_N27
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( led_vaule(1) & ( led_vaule(0) & ( (!led_vaule(2) & !led_vaule(3)) ) ) ) # ( !led_vaule(1) & ( led_vaule(0) & ( !led_vaule(2) $ (!led_vaule(3)) ) ) ) # ( led_vaule(1) & ( !led_vaule(0) & ( !led_vaule(3) ) ) ) # ( !led_vaule(1) & ( 
-- !led_vaule(0) & ( !led_vaule(2) $ (!led_vaule(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010111100001111000001011010010110101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_led_vaule(2),
	datac => ALT_INV_led_vaule(3),
	datae => ALT_INV_led_vaule(1),
	dataf => ALT_INV_led_vaule(0),
	combout => \Mux0~0_combout\);

-- Location: FF_X87_Y9_N28
\led_0[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	clrn => \ALT_INV_rst~q\,
	ena => \ALT_INV_sw1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_0[6]~reg0_q\);

-- Location: LABCELL_X57_Y7_N24
\sang~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sang~0_combout\ = ( !\rst~q\ & ( \sw1~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_rst~q\,
	dataf => \ALT_INV_sw1~input_o\,
	combout => \sang~0_combout\);

-- Location: LABCELL_X19_Y25_N3
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


