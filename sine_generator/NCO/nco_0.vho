--IP Functional Simulation Model
--VERSION_BEGIN 13.1 cbx_mgl 2013:10:23:18:06:54:SJ cbx_simgen 2013:10:23:18:05:48:SJ  VERSION_END


-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

 LIBRARY altera_mf;
 USE altera_mf.altera_mf_components.all;

 LIBRARY lpm;
 USE lpm.lpm_components.all;

 LIBRARY sgate;
 USE sgate.sgate_pack.all;

--synthesis_resources = altsyncram 3 lpm_add_sub 4 lpm_counter 1 lpm_mult 2 lut 185 mux21 104 oper_add 2 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  nco_0 IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 clken	:	IN  STD_LOGIC;
		 fsin_o	:	OUT  STD_LOGIC_VECTOR (13 DOWNTO 0);
		 out_valid	:	OUT  STD_LOGIC;
		 phi_inc_i	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 reset_n	:	IN  STD_LOGIC
	 ); 
 END nco_0;

 ARCHITECTURE RTL OF nco_0 IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL  wire_ni01i_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_ni01i_q_a	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_ni01l_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_ni01l_q_a	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_ni1OO_address_a	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_ni1OO_address_b	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
	 SIGNAL  wire_ni1OO_data_a	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_ni1OO_data_b	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_ni1OO_q_a	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_ni1OO_q_b	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL	 n100i11	:	STD_LOGIC := '0';
	 SIGNAL	 n100i12	:	STD_LOGIC := '0';
	 SIGNAL	 n100O10	:	STD_LOGIC := '0';
	 SIGNAL	 n100O9	:	STD_LOGIC := '0';
	 SIGNAL	 n101i17	:	STD_LOGIC := '0';
	 SIGNAL	 n101i18	:	STD_LOGIC := '0';
	 SIGNAL	 n101l15	:	STD_LOGIC := '0';
	 SIGNAL	 n101l16	:	STD_LOGIC := '0';
	 SIGNAL  wire_n101l16_w_lg_w_lg_q546w547w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n101l16_w_lg_q546w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 n101O13	:	STD_LOGIC := '0';
	 SIGNAL	 n101O14	:	STD_LOGIC := '0';
	 SIGNAL  wire_n101O14_w_lg_w_lg_q542w543w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n101O14_w_lg_q542w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 n10il7	:	STD_LOGIC := '0';
	 SIGNAL	 n10il8	:	STD_LOGIC := '0';
	 SIGNAL	 n10li5	:	STD_LOGIC := '0';
	 SIGNAL	 n10li6	:	STD_LOGIC := '0';
	 SIGNAL  wire_n10li6_w_lg_q56w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	 n10Oi3	:	STD_LOGIC := '0';
	 SIGNAL	 n10Oi4	:	STD_LOGIC := '0';
	 SIGNAL	 n10Ol1	:	STD_LOGIC := '0';
	 SIGNAL	 n10Ol2	:	STD_LOGIC := '0';
	 SIGNAL	n000O	:	STD_LOGIC := '0';
	 SIGNAL	n00l	:	STD_LOGIC := '0';
	 SIGNAL	n11i	:	STD_LOGIC := '0';
	 SIGNAL	n1i0i	:	STD_LOGIC := '0';
	 SIGNAL	n1i0l	:	STD_LOGIC := '0';
	 SIGNAL	n1i0O	:	STD_LOGIC := '0';
	 SIGNAL	n1i1O	:	STD_LOGIC := '0';
	 SIGNAL	n1iii	:	STD_LOGIC := '0';
	 SIGNAL	n1iil	:	STD_LOGIC := '0';
	 SIGNAL	n1iiO	:	STD_LOGIC := '0';
	 SIGNAL	n1ili	:	STD_LOGIC := '0';
	 SIGNAL	n1ill	:	STD_LOGIC := '0';
	 SIGNAL	n1ilO	:	STD_LOGIC := '0';
	 SIGNAL	n1iOi	:	STD_LOGIC := '0';
	 SIGNAL	n1iOl	:	STD_LOGIC := '0';
	 SIGNAL	n1iOO	:	STD_LOGIC := '0';
	 SIGNAL	n1l0i	:	STD_LOGIC := '0';
	 SIGNAL	n1l0l	:	STD_LOGIC := '0';
	 SIGNAL	n1l0O	:	STD_LOGIC := '0';
	 SIGNAL	n1l1i	:	STD_LOGIC := '0';
	 SIGNAL	n1l1l	:	STD_LOGIC := '0';
	 SIGNAL	n1l1O	:	STD_LOGIC := '0';
	 SIGNAL	n1lii	:	STD_LOGIC := '0';
	 SIGNAL	n1lil	:	STD_LOGIC := '0';
	 SIGNAL	n1liO	:	STD_LOGIC := '0';
	 SIGNAL	n1lli	:	STD_LOGIC := '0';
	 SIGNAL	n1lll	:	STD_LOGIC := '0';
	 SIGNAL	n1llO	:	STD_LOGIC := '0';
	 SIGNAL	n1lOi	:	STD_LOGIC := '0';
	 SIGNAL	n1lOl	:	STD_LOGIC := '0';
	 SIGNAL	n1lOO	:	STD_LOGIC := '0';
	 SIGNAL	n1O1i	:	STD_LOGIC := '0';
	 SIGNAL	n1O1l	:	STD_LOGIC := '0';
	 SIGNAL	n1O1O	:	STD_LOGIC := '0';
	 SIGNAL	ni00O	:	STD_LOGIC := '0';
	 SIGNAL	ni0ii	:	STD_LOGIC := '0';
	 SIGNAL	ni0il	:	STD_LOGIC := '0';
	 SIGNAL	ni0iO	:	STD_LOGIC := '0';
	 SIGNAL	ni0li	:	STD_LOGIC := '0';
	 SIGNAL	ni0ll	:	STD_LOGIC := '0';
	 SIGNAL	ni0lO	:	STD_LOGIC := '0';
	 SIGNAL	ni0Oi	:	STD_LOGIC := '0';
	 SIGNAL	ni0Ol	:	STD_LOGIC := '0';
	 SIGNAL	ni0OO	:	STD_LOGIC := '0';
	 SIGNAL	nii0i	:	STD_LOGIC := '0';
	 SIGNAL	nii0l	:	STD_LOGIC := '0';
	 SIGNAL	nii0O	:	STD_LOGIC := '0';
	 SIGNAL	nii1i	:	STD_LOGIC := '0';
	 SIGNAL	nii1l	:	STD_LOGIC := '0';
	 SIGNAL	nii1O	:	STD_LOGIC := '0';
	 SIGNAL	niiii	:	STD_LOGIC := '0';
	 SIGNAL	niiil	:	STD_LOGIC := '0';
	 SIGNAL	niiiO	:	STD_LOGIC := '0';
	 SIGNAL	niili	:	STD_LOGIC := '0';
	 SIGNAL	niill	:	STD_LOGIC := '0';
	 SIGNAL	niilO	:	STD_LOGIC := '0';
	 SIGNAL	niiOi	:	STD_LOGIC := '0';
	 SIGNAL	niiOl	:	STD_LOGIC := '0';
	 SIGNAL	niiOO	:	STD_LOGIC := '0';
	 SIGNAL	nil0i	:	STD_LOGIC := '0';
	 SIGNAL	nil0l	:	STD_LOGIC := '0';
	 SIGNAL	nil0O	:	STD_LOGIC := '0';
	 SIGNAL	nil1i	:	STD_LOGIC := '0';
	 SIGNAL	nil1l	:	STD_LOGIC := '0';
	 SIGNAL	nil1O	:	STD_LOGIC := '0';
	 SIGNAL	nilii	:	STD_LOGIC := '0';
	 SIGNAL	nilil	:	STD_LOGIC := '0';
	 SIGNAL	niliO	:	STD_LOGIC := '0';
	 SIGNAL	nilli	:	STD_LOGIC := '0';
	 SIGNAL	nilll	:	STD_LOGIC := '0';
	 SIGNAL	nillO	:	STD_LOGIC := '0';
	 SIGNAL	nilOi	:	STD_LOGIC := '0';
	 SIGNAL	nilOl	:	STD_LOGIC := '0';
	 SIGNAL	nilOO	:	STD_LOGIC := '0';
	 SIGNAL	niO0i	:	STD_LOGIC := '0';
	 SIGNAL	niO0l	:	STD_LOGIC := '0';
	 SIGNAL	niO0O	:	STD_LOGIC := '0';
	 SIGNAL	niO1i	:	STD_LOGIC := '0';
	 SIGNAL	niO1l	:	STD_LOGIC := '0';
	 SIGNAL	niO1O	:	STD_LOGIC := '0';
	 SIGNAL	niOii	:	STD_LOGIC := '0';
	 SIGNAL	niOil	:	STD_LOGIC := '0';
	 SIGNAL	niOiO	:	STD_LOGIC := '0';
	 SIGNAL	niOli	:	STD_LOGIC := '0';
	 SIGNAL	niOll	:	STD_LOGIC := '0';
	 SIGNAL	niOlO	:	STD_LOGIC := '0';
	 SIGNAL	niOOi	:	STD_LOGIC := '0';
	 SIGNAL	niOOl	:	STD_LOGIC := '0';
	 SIGNAL	niOOO	:	STD_LOGIC := '0';
	 SIGNAL	nl11i	:	STD_LOGIC := '0';
	 SIGNAL	nl11l	:	STD_LOGIC := '0';
	 SIGNAL	nlO0i	:	STD_LOGIC := '0';
	 SIGNAL	nlO0l	:	STD_LOGIC := '0';
	 SIGNAL	nlO0O	:	STD_LOGIC := '0';
	 SIGNAL	nlO1i	:	STD_LOGIC := '0';
	 SIGNAL	nlOii	:	STD_LOGIC := '0';
	 SIGNAL	nlOil	:	STD_LOGIC := '0';
	 SIGNAL	nlOiO	:	STD_LOGIC := '0';
	 SIGNAL	nlOli	:	STD_LOGIC := '0';
	 SIGNAL	nlOll	:	STD_LOGIC := '0';
	 SIGNAL	nlOlO	:	STD_LOGIC := '0';
	 SIGNAL	nlOOi	:	STD_LOGIC := '0';
	 SIGNAL	nlOOl	:	STD_LOGIC := '0';
	 SIGNAL	nlOOO	:	STD_LOGIC := '0';
	 SIGNAL  wire_n00i_w_lg_n11i113w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	n00ll	:	STD_LOGIC := '0';
	 SIGNAL	n00Oi	:	STD_LOGIC := '0';
	 SIGNAL	n00Ol	:	STD_LOGIC := '0';
	 SIGNAL	n00OO	:	STD_LOGIC := '0';
	 SIGNAL	n0i0l	:	STD_LOGIC := '0';
	 SIGNAL	n0i1l	:	STD_LOGIC := '0';
	 SIGNAL	n0i1O	:	STD_LOGIC := '0';
	 SIGNAL	n0iii	:	STD_LOGIC := '0';
	 SIGNAL	n0iil	:	STD_LOGIC := '0';
	 SIGNAL	n0ilO	:	STD_LOGIC := '0';
	 SIGNAL	wire_n0ill_PRN	:	STD_LOGIC;
	 SIGNAL	n0li	:	STD_LOGIC := '0';
	 SIGNAL	wire_n0iO_CLRN	:	STD_LOGIC;
	 SIGNAL	wire_n0iO_PRN	:	STD_LOGIC;
	 SIGNAL	wire_n0iO_ENA	:	STD_LOGIC;
	 SIGNAL	n00ii	:	STD_LOGIC := '0';
	 SIGNAL	n00il	:	STD_LOGIC := '0';
	 SIGNAL	n00iO	:	STD_LOGIC := '0';
	 SIGNAL	n00li	:	STD_LOGIC := '0';
	 SIGNAL	n00lO	:	STD_LOGIC := '0';
	 SIGNAL	n0i0i	:	STD_LOGIC := '0';
	 SIGNAL	n0i0O	:	STD_LOGIC := '0';
	 SIGNAL	n0i1i	:	STD_LOGIC := '0';
	 SIGNAL	n0iiO	:	STD_LOGIC := '0';
	 SIGNAL	n0ili	:	STD_LOGIC := '0';
	 SIGNAL	n0l0i	:	STD_LOGIC := '0';
	 SIGNAL	n0l0l	:	STD_LOGIC := '0';
	 SIGNAL	n0l0O	:	STD_LOGIC := '0';
	 SIGNAL	n0l1l	:	STD_LOGIC := '0';
	 SIGNAL	n0lii	:	STD_LOGIC := '0';
	 SIGNAL	n0lil	:	STD_LOGIC := '0';
	 SIGNAL	n0liO	:	STD_LOGIC := '0';
	 SIGNAL	n0lli	:	STD_LOGIC := '0';
	 SIGNAL	n0lll	:	STD_LOGIC := '0';
	 SIGNAL	n0llO	:	STD_LOGIC := '0';
	 SIGNAL	n0lOi	:	STD_LOGIC := '0';
	 SIGNAL	n0lOl	:	STD_LOGIC := '0';
	 SIGNAL	n0lOO	:	STD_LOGIC := '0';
	 SIGNAL	n0O0i	:	STD_LOGIC := '0';
	 SIGNAL	n0O0l	:	STD_LOGIC := '0';
	 SIGNAL	n0O0O	:	STD_LOGIC := '0';
	 SIGNAL	n0O1i	:	STD_LOGIC := '0';
	 SIGNAL	n0O1l	:	STD_LOGIC := '0';
	 SIGNAL	n0O1O	:	STD_LOGIC := '0';
	 SIGNAL	n0Oii	:	STD_LOGIC := '0';
	 SIGNAL	n0Oil	:	STD_LOGIC := '0';
	 SIGNAL	n0OiO	:	STD_LOGIC := '0';
	 SIGNAL	n0Oli	:	STD_LOGIC := '0';
	 SIGNAL	n0Oll	:	STD_LOGIC := '0';
	 SIGNAL	n0OlO	:	STD_LOGIC := '0';
	 SIGNAL	n0OOi	:	STD_LOGIC := '0';
	 SIGNAL	n0OOl	:	STD_LOGIC := '0';
	 SIGNAL	n0OOO	:	STD_LOGIC := '0';
	 SIGNAL	n11O	:	STD_LOGIC := '0';
	 SIGNAL	ni10i	:	STD_LOGIC := '0';
	 SIGNAL	ni10l	:	STD_LOGIC := '0';
	 SIGNAL	ni10O	:	STD_LOGIC := '0';
	 SIGNAL	ni11i	:	STD_LOGIC := '0';
	 SIGNAL	ni11l	:	STD_LOGIC := '0';
	 SIGNAL	ni11O	:	STD_LOGIC := '0';
	 SIGNAL	ni1ii	:	STD_LOGIC := '0';
	 SIGNAL	ni1il	:	STD_LOGIC := '0';
	 SIGNAL	ni1iO	:	STD_LOGIC := '0';
	 SIGNAL	ni1li	:	STD_LOGIC := '0';
	 SIGNAL	ni1ll	:	STD_LOGIC := '0';
	 SIGNAL	ni1lO	:	STD_LOGIC := '0';
	 SIGNAL	ni1Oi	:	STD_LOGIC := '0';
	 SIGNAL	wire_n11l_CLRN	:	STD_LOGIC;
	 SIGNAL  wire_n0l1O_aclr	:	STD_LOGIC;
	 SIGNAL  wire_n0l1O_dataa	:	STD_LOGIC_VECTOR (20 DOWNTO 0);
	 SIGNAL  wire_n0l1O_datab	:	STD_LOGIC_VECTOR (20 DOWNTO 0);
	 SIGNAL  wire_n0l1O_result	:	STD_LOGIC_VECTOR (20 DOWNTO 0);
	 SIGNAL  wire_n1i1l_aclr	:	STD_LOGIC;
	 SIGNAL  wire_n1i1l_dataa	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_n1i1l_datab	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_n1i1l_result	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	 SIGNAL  wire_vcc	:	STD_LOGIC;
	 SIGNAL  wire_ni00l_dataa	:	STD_LOGIC_VECTOR (28 DOWNTO 0);
	 SIGNAL  wire_ni00l_datab	:	STD_LOGIC_VECTOR (28 DOWNTO 0);
	 SIGNAL  wire_ni00l_result	:	STD_LOGIC_VECTOR (28 DOWNTO 0);
	 SIGNAL  wire_nlO1l_aclr	:	STD_LOGIC;
	 SIGNAL  wire_nlO1l_cin	:	STD_LOGIC;
	 SIGNAL  wire_n11l_w_lg_n11O114w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nlO1l_dataa	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_nlO1l_datab	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_nlO1l_result	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_n00O_w_lg_w_lg_w_lg_w_lg_w_q_range46w48w51w54w57w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n00O_w_lg_w_lg_w_lg_w_q_range46w48w51w54w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n00O_w_lg_w_lg_w_q_range46w48w51w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n00O_w_lg_w_q_range46w48w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n00O_w_lg_w_q_range49w50w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n00O_w_lg_w_q_range52w53w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n00O_aclr	:	STD_LOGIC;
	 SIGNAL  wire_n00O_q	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 SIGNAL  wire_n00O_w_q_range49w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n00O_w_q_range52w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n00O_w_q_range46w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n00O_w_q_range47w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni00i_dataa	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_ni00i_datab	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_ni00i_result	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL  wire_ni01O_dataa	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_ni01O_datab	:	STD_LOGIC_VECTOR (13 DOWNTO 0);
	 SIGNAL  wire_ni01O_result	:	STD_LOGIC_VECTOR (27 DOWNTO 0);
	 SIGNAL	wire_n000i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n000l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n001i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n001l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n001O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n010i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n010l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n010O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n011i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n011l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n011O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n01OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n10O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1O0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1O0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1O0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1Oii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1Oil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1OiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1Oli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1Oll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1OlO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1OOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1OOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_n1OOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl00i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl00l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl00O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl01O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl0OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl10i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl10l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl10O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl11O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1ii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1il_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1iO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1li_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1ll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1lO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1Oi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1Ol_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nl1OO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nli1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliiO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlili_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlill_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlilO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nliOO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll0O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1i_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1l_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nll1O_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllii_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllil_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlliO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllli_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllll_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nlllO_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOi_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOl_dataout	:	STD_LOGIC;
	 SIGNAL	wire_nllOO_dataout	:	STD_LOGIC;
	 SIGNAL  wire_n0iOi_a	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_n0iOi_b	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_n0iOi_o	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_ni1Ol_a	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_ni1Ol_b	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_ni1Ol_o	:	STD_LOGIC_VECTOR (8 DOWNTO 0);
	 SIGNAL  wire_w_lg_clken58w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_n10ii77w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_reset_n62w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  n10ii :	STD_LOGIC;
	 SIGNAL  n10OO :	STD_LOGIC;
 BEGIN

	wire_gnd <= '0';
	wire_vcc <= '1';
	wire_w_lg_clken58w(0) <= clken AND wire_n00O_w_lg_w_lg_w_lg_w_lg_w_q_range46w48w51w54w57w(0);
	wire_w_lg_n10ii77w(0) <= NOT n10ii;
	wire_w_lg_reset_n62w(0) <= NOT reset_n;
	fsin_o <= ( wire_nlO1l_result(13 DOWNTO 0));
	n10ii <= ((((((((((((((((NOT wire_ni00l_result(13)) AND (NOT wire_ni00l_result(14))) AND (NOT wire_ni00l_result(15))) AND (NOT wire_ni00l_result(16))) AND (NOT wire_ni00l_result(17))) AND (NOT wire_ni00l_result(18))) AND (NOT wire_ni00l_result(19))) AND (NOT wire_ni00l_result(20))) AND (NOT wire_ni00l_result(21))) AND (NOT wire_ni00l_result(22))) AND (NOT wire_ni00l_result(23))) AND (NOT wire_ni00l_result(24))) AND (NOT wire_ni00l_result(25))) AND (NOT wire_ni00l_result(26))) AND (NOT wire_ni00l_result(27))) AND (n100i12 XOR n100i11));
	n10OO <= '1';
	out_valid <= n0li;
	wire_ni01i_address_a <= ( n0Oll & n0Oli & n0OiO & n0Oil & n0Oii & n0O0O & n0O0l & ni1Oi);
	ni01i :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ECC_PIPELINE_STAGE_ENABLED => "FALSE",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "nco_0_sin_f.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "Cyclone V",
		NUMWORDS_A => 256,
		NUMWORDS_B => 1,
		OPERATION_MODE => "ROM",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "CLOCK0",
		OUTDATA_REG_B => "UNREGISTERED",
		RAM_BLOCK_TYPE => "AUTO",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "DONT_CARE",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 14,
		WIDTH_B => 1,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTH_ECCSTATUS => 3,
		WIDTHAD_A => 8,
		WIDTHAD_B => 1,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_ni01i_address_a,
		clock0 => clk,
		clocken0 => clken,
		q_a => wire_ni01i_q_a
	  );
	wire_ni01l_address_a <= ( n0Oll & n0Oli & n0OiO & n0Oil & n0Oii & n0O0O & n0O0l & ni1Oi);
	ni01l :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK1",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ECC_PIPELINE_STAGE_ENABLED => "FALSE",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK1",
		INIT_FILE => "nco_0_cos_f.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "Cyclone V",
		NUMWORDS_A => 256,
		NUMWORDS_B => 1,
		OPERATION_MODE => "ROM",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "CLOCK0",
		OUTDATA_REG_B => "UNREGISTERED",
		RAM_BLOCK_TYPE => "AUTO",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "DONT_CARE",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 14,
		WIDTH_B => 1,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTH_ECCSTATUS => 3,
		WIDTHAD_A => 8,
		WIDTHAD_B => 1,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK1",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_ni01l_address_a,
		clock0 => clk,
		clocken0 => clken,
		q_a => wire_ni01l_q_a
	  );
	wire_ni1OO_address_a <= ( ni1lO & ni1ll & ni1li & ni1iO & ni1il & ni1ii & ni10O & ni10l);
	wire_ni1OO_address_b <= ( ni10i & ni11O & ni11l & ni11i & n0OOO & n0OOl & n0OOi & n0OlO);
	wire_ni1OO_data_a <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	wire_ni1OO_data_b <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	ni1OO :  altsyncram
	  GENERIC MAP (
		ADDRESS_ACLR_A => "NONE",
		ADDRESS_ACLR_B => "NONE",
		ADDRESS_REG_B => "CLOCK0",
		BYTE_SIZE => 8,
		BYTEENA_ACLR_A => "NONE",
		BYTEENA_ACLR_B => "NONE",
		BYTEENA_REG_B => "CLOCK1",
		CLOCK_ENABLE_CORE_A => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_CORE_B => "USE_INPUT_CLKEN",
		CLOCK_ENABLE_INPUT_A => "NORMAL",
		CLOCK_ENABLE_INPUT_B => "NORMAL",
		CLOCK_ENABLE_OUTPUT_A => "NORMAL",
		CLOCK_ENABLE_OUTPUT_B => "NORMAL",
		ECC_PIPELINE_STAGE_ENABLED => "FALSE",
		ENABLE_ECC => "FALSE",
		INDATA_ACLR_A => "NONE",
		INDATA_ACLR_B => "NONE",
		INDATA_REG_B => "CLOCK0",
		INIT_FILE => "nco_0_sin_c.hex",
		INIT_FILE_LAYOUT => "PORT_A",
		INTENDED_DEVICE_FAMILY => "Cyclone V",
		NUMWORDS_A => 256,
		NUMWORDS_B => 256,
		OPERATION_MODE => "BIDIR_DUAL_PORT",
		OUTDATA_ACLR_A => "NONE",
		OUTDATA_ACLR_B => "NONE",
		OUTDATA_REG_A => "CLOCK0",
		OUTDATA_REG_B => "CLOCK0",
		RAM_BLOCK_TYPE => "AUTO",
		RDCONTROL_ACLR_B => "NONE",
		RDCONTROL_REG_B => "CLOCK1",
		READ_DURING_WRITE_MODE_MIXED_PORTS => "DONT_CARE",
		READ_DURING_WRITE_MODE_PORT_A => "NEW_DATA_NO_NBE_READ",
		READ_DURING_WRITE_MODE_PORT_B => "NEW_DATA_NO_NBE_READ",
		WIDTH_A => 14,
		WIDTH_B => 14,
		WIDTH_BYTEENA_A => 1,
		WIDTH_BYTEENA_B => 1,
		WIDTH_ECCSTATUS => 3,
		WIDTHAD_A => 8,
		WIDTHAD_B => 8,
		WRCONTROL_ACLR_A => "NONE",
		WRCONTROL_ACLR_B => "NONE",
		WRCONTROL_WRADDRESS_REG_B => "CLOCK0",
		lpm_hint => "WIDTH_BYTEENA=1"
	  )
	  PORT MAP ( 
		address_a => wire_ni1OO_address_a,
		address_b => wire_ni1OO_address_b,
		clock0 => clk,
		clocken0 => clken,
		data_a => wire_ni1OO_data_a,
		data_b => wire_ni1OO_data_b,
		q_a => wire_ni1OO_q_a,
		q_b => wire_ni1OO_q_b,
		wren_a => wire_gnd,
		wren_b => wire_gnd
	  );
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n100i11 <= n100i12;
		END IF;
		if (now = 0 ns) then
			n100i11 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n100i12 <= n100i11;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n100O10 <= n100O9;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n100O9 <= n100O10;
		END IF;
		if (now = 0 ns) then
			n100O9 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n101i17 <= n101i18;
		END IF;
		if (now = 0 ns) then
			n101i17 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n101i18 <= n101i17;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n101l15 <= n101l16;
		END IF;
		if (now = 0 ns) then
			n101l15 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n101l16 <= n101l15;
		END IF;
	END PROCESS;
	wire_n101l16_w_lg_w_lg_q546w547w(0) <= wire_n101l16_w_lg_q546w(0) AND n0O1O;
	wire_n101l16_w_lg_q546w(0) <= n101l16 XOR n101l15;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n101O13 <= n101O14;
		END IF;
		if (now = 0 ns) then
			n101O13 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n101O14 <= n101O13;
		END IF;
	END PROCESS;
	wire_n101O14_w_lg_w_lg_q542w543w(0) <= wire_n101O14_w_lg_q542w(0) AND n0O1i;
	wire_n101O14_w_lg_q542w(0) <= n101O14 XOR n101O13;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n10il7 <= n10il8;
		END IF;
		if (now = 0 ns) then
			n10il7 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n10il8 <= n10il7;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n10li5 <= n10li6;
		END IF;
		if (now = 0 ns) then
			n10li5 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n10li6 <= n10li5;
		END IF;
	END PROCESS;
	wire_n10li6_w_lg_q56w(0) <= n10li6 XOR n10li5;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n10Oi3 <= n10Oi4;
		END IF;
		if (now = 0 ns) then
			n10Oi3 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n10Oi4 <= n10Oi3;
		END IF;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n10Ol1 <= n10Ol2;
		END IF;
		if (now = 0 ns) then
			n10Ol1 <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN n10Ol2 <= n10Ol1;
		END IF;
	END PROCESS;
	PROCESS (clk, reset_n)
	BEGIN
		IF (reset_n = '0') THEN
				n000O <= '0';
				n00l <= '0';
				n11i <= '0';
				n1i0i <= '0';
				n1i0l <= '0';
				n1i0O <= '0';
				n1i1O <= '0';
				n1iii <= '0';
				n1iil <= '0';
				n1iiO <= '0';
				n1ili <= '0';
				n1ill <= '0';
				n1ilO <= '0';
				n1iOi <= '0';
				n1iOl <= '0';
				n1iOO <= '0';
				n1l0i <= '0';
				n1l0l <= '0';
				n1l0O <= '0';
				n1l1i <= '0';
				n1l1l <= '0';
				n1l1O <= '0';
				n1lii <= '0';
				n1lil <= '0';
				n1liO <= '0';
				n1lli <= '0';
				n1lll <= '0';
				n1llO <= '0';
				n1lOi <= '0';
				n1lOl <= '0';
				n1lOO <= '0';
				n1O1i <= '0';
				n1O1l <= '0';
				n1O1O <= '0';
				ni00O <= '0';
				ni0ii <= '0';
				ni0il <= '0';
				ni0iO <= '0';
				ni0li <= '0';
				ni0ll <= '0';
				ni0lO <= '0';
				ni0Oi <= '0';
				ni0Ol <= '0';
				ni0OO <= '0';
				nii0i <= '0';
				nii0l <= '0';
				nii0O <= '0';
				nii1i <= '0';
				nii1l <= '0';
				nii1O <= '0';
				niiii <= '0';
				niiil <= '0';
				niiiO <= '0';
				niili <= '0';
				niill <= '0';
				niilO <= '0';
				niiOi <= '0';
				niiOl <= '0';
				niiOO <= '0';
				nil0i <= '0';
				nil0l <= '0';
				nil0O <= '0';
				nil1i <= '0';
				nil1l <= '0';
				nil1O <= '0';
				nilii <= '0';
				nilil <= '0';
				niliO <= '0';
				nilli <= '0';
				nilll <= '0';
				nillO <= '0';
				nilOi <= '0';
				nilOl <= '0';
				nilOO <= '0';
				niO0i <= '0';
				niO0l <= '0';
				niO0O <= '0';
				niO1i <= '0';
				niO1l <= '0';
				niO1O <= '0';
				niOii <= '0';
				niOil <= '0';
				niOiO <= '0';
				niOli <= '0';
				niOll <= '0';
				niOlO <= '0';
				niOOi <= '0';
				niOOl <= '0';
				niOOO <= '0';
				nl11i <= '0';
				nl11l <= '0';
				nlO0i <= '0';
				nlO0l <= '0';
				nlO0O <= '0';
				nlO1i <= '0';
				nlOii <= '0';
				nlOil <= '0';
				nlOiO <= '0';
				nlOli <= '0';
				nlOll <= '0';
				nlOlO <= '0';
				nlOOi <= '0';
				nlOOl <= '0';
				nlOOO <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				n000O <= wire_n1O0i_dataout;
				n00l <= wire_n10i_dataout;
				n11i <= wire_n01l_dataout;
				n1i0i <= wire_n1O0O_dataout;
				n1i0l <= wire_n1Oii_dataout;
				n1i0O <= wire_n1Oil_dataout;
				n1i1O <= wire_n1O0l_dataout;
				n1iii <= wire_n1OiO_dataout;
				n1iil <= wire_n1Oli_dataout;
				n1iiO <= wire_n1Oll_dataout;
				n1ili <= wire_n1OlO_dataout;
				n1ill <= wire_n1OOi_dataout;
				n1ilO <= wire_n1OOl_dataout;
				n1iOi <= wire_n1OOO_dataout;
				n1iOl <= wire_n011i_dataout;
				n1iOO <= wire_n011l_dataout;
				n1l0i <= wire_n010O_dataout;
				n1l0l <= wire_n01ii_dataout;
				n1l0O <= wire_n01il_dataout;
				n1l1i <= wire_n011O_dataout;
				n1l1l <= wire_n010i_dataout;
				n1l1O <= wire_n010l_dataout;
				n1lii <= wire_n01iO_dataout;
				n1lil <= wire_n01li_dataout;
				n1liO <= wire_n01ll_dataout;
				n1lli <= wire_n01lO_dataout;
				n1lll <= wire_n01Oi_dataout;
				n1llO <= wire_n01Ol_dataout;
				n1lOi <= wire_n01OO_dataout;
				n1lOl <= wire_n001i_dataout;
				n1lOO <= wire_n001l_dataout;
				n1O1i <= wire_n001O_dataout;
				n1O1l <= wire_n000i_dataout;
				n1O1O <= wire_n000l_dataout;
				ni00O <= wire_nl10i_dataout;
				ni0ii <= wire_nl10l_dataout;
				ni0il <= wire_nl10O_dataout;
				ni0iO <= wire_nl1ii_dataout;
				ni0li <= wire_nl1il_dataout;
				ni0ll <= wire_nl1iO_dataout;
				ni0lO <= wire_nl1li_dataout;
				ni0Oi <= wire_nl1ll_dataout;
				ni0Ol <= wire_nl1lO_dataout;
				ni0OO <= wire_nl1Oi_dataout;
				nii0i <= wire_nl01l_dataout;
				nii0l <= wire_nl01O_dataout;
				nii0O <= wire_nl00i_dataout;
				nii1i <= wire_nl1Ol_dataout;
				nii1l <= wire_nl1OO_dataout;
				nii1O <= wire_nl01i_dataout;
				niiii <= wire_nl00l_dataout;
				niiil <= wire_nl00O_dataout;
				niiiO <= wire_nl0ii_dataout;
				niili <= wire_nl0il_dataout;
				niill <= wire_nl0iO_dataout;
				niilO <= wire_nl0li_dataout;
				niiOi <= wire_nl0ll_dataout;
				niiOl <= wire_nl0lO_dataout;
				niiOO <= wire_nl0Oi_dataout;
				nil0i <= wire_nli1l_dataout;
				nil0l <= wire_nli1O_dataout;
				nil0O <= wire_nli0i_dataout;
				nil1i <= wire_nl0Ol_dataout;
				nil1l <= wire_nl0OO_dataout;
				nil1O <= wire_nli1i_dataout;
				nilii <= wire_nli0l_dataout;
				nilil <= wire_nli0O_dataout;
				niliO <= wire_nliii_dataout;
				nilli <= wire_nliil_dataout;
				nilll <= wire_nliiO_dataout;
				nillO <= wire_nlili_dataout;
				nilOi <= wire_nlill_dataout;
				nilOl <= wire_nlilO_dataout;
				nilOO <= wire_nliOi_dataout;
				niO0i <= wire_nll1l_dataout;
				niO0l <= wire_nll1O_dataout;
				niO0O <= wire_nll0i_dataout;
				niO1i <= wire_nliOl_dataout;
				niO1l <= wire_nliOO_dataout;
				niO1O <= wire_nll1i_dataout;
				niOii <= wire_nll0l_dataout;
				niOil <= wire_nll0O_dataout;
				niOiO <= wire_nllii_dataout;
				niOli <= wire_nllil_dataout;
				niOll <= wire_nlliO_dataout;
				niOlO <= wire_nllli_dataout;
				niOOi <= wire_nllll_dataout;
				niOOl <= wire_nlllO_dataout;
				niOOO <= wire_nllOi_dataout;
				nl11i <= wire_nllOl_dataout;
				nl11l <= wire_nllOO_dataout;
				nlO0i <= wire_n10l_dataout;
				nlO0l <= wire_n10O_dataout;
				nlO0O <= wire_n1ii_dataout;
				nlO1i <= wire_nl11O_dataout;
				nlOii <= wire_n1il_dataout;
				nlOil <= wire_n1iO_dataout;
				nlOiO <= wire_n1li_dataout;
				nlOli <= wire_n1ll_dataout;
				nlOll <= wire_n1lO_dataout;
				nlOlO <= wire_n1Oi_dataout;
				nlOOi <= wire_n1Ol_dataout;
				nlOOl <= wire_n1OO_dataout;
				nlOOO <= wire_n01i_dataout;
		END IF;
	END PROCESS;
	wire_n00i_w_lg_n11i113w(0) <= NOT n11i;
	PROCESS (clk, wire_n0ill_PRN)
	BEGIN
		IF (wire_n0ill_PRN = '0') THEN
				n00ll <= '1';
				n00Oi <= '1';
				n00Ol <= '1';
				n00OO <= '1';
				n0i0l <= '1';
				n0i1l <= '1';
				n0i1O <= '1';
				n0iii <= '1';
				n0iil <= '1';
				n0ilO <= '1';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (clken = '1') THEN
				n00ll <= ((n0ilO XOR n0ili) XOR (n0iil XOR n00Ol));
				n00Oi <= n00lO;
				n00Ol <= n00Oi;
				n00OO <= n00Ol;
				n0i0l <= n0i0i;
				n0i1l <= n0i1i;
				n0i1O <= n0i1l;
				n0iii <= n0i0O;
				n0iil <= n0iii;
				n0ilO <= n0ili;
			END IF;
		END IF;
		if (now = 0 ns) then
			n00ll <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			n00Oi <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			n00Ol <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			n00OO <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			n0i0l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			n0i1l <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			n0i1O <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			n0iii <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			n0iil <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			n0ilO <= '1' after 1 ps;
		end if;
	END PROCESS;
	wire_n0ill_PRN <= ((n101i18 XOR n101i17) AND reset_n);
	PROCESS (clk, wire_n0iO_PRN, wire_n0iO_CLRN)
	BEGIN
		IF (wire_n0iO_PRN = '0') THEN
				n0li <= '1';
		ELSIF (wire_n0iO_CLRN = '0') THEN
				n0li <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (wire_n0iO_ENA = '1') THEN
				n0li <= n10OO;
			END IF;
		END IF;
		if (now = 0 ns) then
			n0li <= '1' after 1 ps;
		end if;
	END PROCESS;
	wire_n0iO_CLRN <= ((n10Ol2 XOR n10Ol1) AND reset_n);
	wire_n0iO_ENA <= (wire_w_lg_clken58w(0) AND (n10il8 XOR n10il7));
	wire_n0iO_PRN <= (n10Oi4 XOR n10Oi3);
	PROCESS (clk, wire_n11l_CLRN)
	BEGIN
		IF (wire_n11l_CLRN = '0') THEN
				n00ii <= '0';
				n00il <= '0';
				n00iO <= '0';
				n00li <= '0';
				n00lO <= '0';
				n0i0i <= '0';
				n0i0O <= '0';
				n0i1i <= '0';
				n0iiO <= '0';
				n0ili <= '0';
				n0l0i <= '0';
				n0l0l <= '0';
				n0l0O <= '0';
				n0l1l <= '0';
				n0lii <= '0';
				n0lil <= '0';
				n0liO <= '0';
				n0lli <= '0';
				n0lll <= '0';
				n0llO <= '0';
				n0lOi <= '0';
				n0lOl <= '0';
				n0lOO <= '0';
				n0O0i <= '0';
				n0O0l <= '0';
				n0O0O <= '0';
				n0O1i <= '0';
				n0O1l <= '0';
				n0O1O <= '0';
				n0Oii <= '0';
				n0Oil <= '0';
				n0OiO <= '0';
				n0Oli <= '0';
				n0Oll <= '0';
				n0OlO <= '0';
				n0OOi <= '0';
				n0OOl <= '0';
				n0OOO <= '0';
				n11O <= '0';
				ni10i <= '0';
				ni10l <= '0';
				ni10O <= '0';
				ni11i <= '0';
				ni11l <= '0';
				ni11O <= '0';
				ni1ii <= '0';
				ni1il <= '0';
				ni1iO <= '0';
				ni1li <= '0';
				ni1ll <= '0';
				ni1lO <= '0';
				ni1Oi <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (clken = '1') THEN
				n00ii <= wire_n0iOi_o(1);
				n00il <= wire_n0iOi_o(2);
				n00iO <= wire_n0iOi_o(3);
				n00li <= wire_n0iOi_o(4);
				n00lO <= n00ll;
				n0i0i <= n0i1O;
				n0i0O <= n0i0l;
				n0i1i <= n00OO;
				n0iiO <= n0iil;
				n0ili <= n0iiO;
				n0l0i <= wire_n0l1O_result(5);
				n0l0l <= wire_n0l1O_result(6);
				n0l0O <= wire_n0l1O_result(7);
				n0l1l <= wire_n0iOi_o(0);
				n0lii <= wire_n0l1O_result(8);
				n0lil <= wire_n0l1O_result(9);
				n0liO <= wire_n0l1O_result(10);
				n0lli <= wire_n0l1O_result(11);
				n0lll <= wire_n0l1O_result(12);
				n0llO <= wire_n0l1O_result(13);
				n0lOi <= wire_n0l1O_result(14);
				n0lOl <= wire_n0l1O_result(15);
				n0lOO <= wire_n0l1O_result(16);
				n0O0i <= wire_n0l1O_result(20);
				n0O0l <= n0l0l;
				n0O0O <= n0l0O;
				n0O1i <= wire_n0l1O_result(17);
				n0O1l <= wire_n0l1O_result(18);
				n0O1O <= wire_n0l1O_result(19);
				n0Oii <= n0lii;
				n0Oil <= n0lil;
				n0OiO <= n0liO;
				n0Oli <= n0lli;
				n0Oll <= n0lll;
				n0OlO <= wire_ni1Ol_o(0);
				n0OOi <= wire_ni1Ol_o(1);
				n0OOl <= wire_ni1Ol_o(2);
				n0OOO <= wire_ni1Ol_o(3);
				n11O <= wire_w_lg_n10ii77w(0);
				ni10i <= wire_ni1Ol_o(7);
				ni10l <= n0llO;
				ni10O <= n0lOi;
				ni11i <= wire_ni1Ol_o(4);
				ni11l <= wire_ni1Ol_o(5);
				ni11O <= wire_ni1Ol_o(6);
				ni1ii <= n0lOl;
				ni1il <= n0lOO;
				ni1iO <= n0O1i;
				ni1li <= n0O1l;
				ni1ll <= n0O1O;
				ni1lO <= n0O0i;
				ni1Oi <= n0l0i;
			END IF;
		END IF;
	END PROCESS;
	wire_n11l_CLRN <= ((n100O10 XOR n100O9) AND reset_n);
	wire_n0l1O_aclr <= wire_w_lg_reset_n62w(0);
	wire_n0l1O_dataa <= ( wire_n1i1l_result(31 DOWNTO 11));
	wire_n0l1O_datab <= ( n00li & n00li & n00li & n00li & n00li & n00li & n00li & n00li & n00li & n00li & n00li & n00li & n00li & n00li & n00li & n00li & n00li & n00iO & n00il & n00ii & n0l1l);
	n0l1O :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "ADD",
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 21
	  )
	  PORT MAP ( 
		aclr => wire_n0l1O_aclr,
		clken => clken,
		clock => clk,
		dataa => wire_n0l1O_dataa,
		datab => wire_n0l1O_datab,
		result => wire_n0l1O_result
	  );
	wire_n1i1l_aclr <= wire_w_lg_reset_n62w(0);
	wire_n1i1l_dataa <= ( n1O1O & n1O1l & n1O1i & n1lOO & n1lOl & n1lOi & n1llO & n1lll & n1lli & n1liO & n1lil & n1lii & n1l0O & n1l0l & n1l0i & n1l1O & n1l1l & n1l1i & n1iOO & n1iOl & n1iOi & n1ilO & n1ill & n1ili & n1iiO & n1iil & n1iii & n1i0O & n1i0l & n1i0i & n1i1O & n000O);
	wire_n1i1l_datab <= ( wire_n1i1l_result(31 DOWNTO 0));
	n1i1l :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "ADD",
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "UNSIGNED",
		LPM_WIDTH => 32
	  )
	  PORT MAP ( 
		aclr => wire_n1i1l_aclr,
		clken => clken,
		clock => clk,
		dataa => wire_n1i1l_dataa,
		datab => wire_n1i1l_datab,
		result => wire_n1i1l_result
	  );
	wire_ni00l_dataa <= ( nl11l & nl11i & niOOO & niOOl & niOOi & niOlO & niOll & niOli & niOiO & niOil & niOii & niO0O & niO0l & niO0i & niO1O & niO1l & niO1i & nilOO & nilOl & nilOi & nillO & nilll & nilli & niliO & nilil & nilii & nil0O & nil0l & nil0i);
	wire_ni00l_datab <= ( nil1O & nil1l & nil1i & niiOO & niiOl & niiOi & niilO & niill & niili & niiiO & niiil & niiii & nii0O & nii0l & nii0i & nii1O & nii1l & nii1i & ni0OO & ni0Ol & ni0Oi & ni0lO & ni0ll & ni0li & ni0iO & ni0il & ni0ii & ni00O & nlO1i);
	ni00l :  lpm_add_sub
	  GENERIC MAP (
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 29
	  )
	  PORT MAP ( 
		add_sub => wire_vcc,
		clken => clken,
		clock => clk,
		dataa => wire_ni00l_dataa,
		datab => wire_ni00l_datab,
		result => wire_ni00l_result
	  );
	wire_nlO1l_aclr <= wire_w_lg_reset_n62w(0);
	wire_nlO1l_cin <= wire_n11l_w_lg_n11O114w(0);
	wire_n11l_w_lg_n11O114w(0) <= n11O AND wire_n00i_w_lg_n11i113w(0);
	wire_nlO1l_dataa <= ( n11i & nlOOO & nlOOl & nlOOi & nlOlO & nlOll & nlOli & nlOiO & nlOil & nlOii & nlO0O & nlO0l & nlO0i & n00l);
	wire_nlO1l_datab <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0");
	nlO1l :  lpm_add_sub
	  GENERIC MAP (
		LPM_DIRECTION => "ADD",
		LPM_PIPELINE => 1,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTH => 14
	  )
	  PORT MAP ( 
		aclr => wire_nlO1l_aclr,
		cin => wire_nlO1l_cin,
		clken => clken,
		clock => clk,
		dataa => wire_nlO1l_dataa,
		datab => wire_nlO1l_datab,
		result => wire_nlO1l_result
	  );
	wire_n00O_w_lg_w_lg_w_lg_w_lg_w_q_range46w48w51w54w57w(0) <= wire_n00O_w_lg_w_lg_w_lg_w_q_range46w48w51w54w(0) AND wire_n10li6_w_lg_q56w(0);
	wire_n00O_w_lg_w_lg_w_lg_w_q_range46w48w51w54w(0) <= wire_n00O_w_lg_w_lg_w_q_range46w48w51w(0) AND wire_n00O_w_lg_w_q_range52w53w(0);
	wire_n00O_w_lg_w_lg_w_q_range46w48w51w(0) <= wire_n00O_w_lg_w_q_range46w48w(0) AND wire_n00O_w_lg_w_q_range49w50w(0);
	wire_n00O_w_lg_w_q_range46w48w(0) <= wire_n00O_w_q_range46w(0) AND wire_n00O_w_q_range47w(0);
	wire_n00O_w_lg_w_q_range49w50w(0) <= NOT wire_n00O_w_q_range49w(0);
	wire_n00O_w_lg_w_q_range52w53w(0) <= NOT wire_n00O_w_q_range52w(0);
	wire_n00O_aclr <= wire_w_lg_reset_n62w(0);
	wire_n00O_w_q_range49w(0) <= wire_n00O_q(0);
	wire_n00O_w_q_range52w(0) <= wire_n00O_q(1);
	wire_n00O_w_q_range46w(0) <= wire_n00O_q(2);
	wire_n00O_w_q_range47w(0) <= wire_n00O_q(3);
	n00O :  lpm_counter
	  GENERIC MAP (
		LPM_DIRECTION => "UP",
		LPM_MODULUS => 0,
		LPM_PORT_UPDOWN => "PORT_CONNECTIVITY",
		LPM_WIDTH => 4
	  )
	  PORT MAP ( 
		aclr => wire_n00O_aclr,
		clk_en => clken,
		clock => clk,
		q => wire_n00O_q
	  );
	wire_ni00i_dataa <= ( wire_ni01i_q_a(13 DOWNTO 0));
	wire_ni00i_datab <= ( wire_ni1OO_q_b(13 DOWNTO 0));
	ni00i :  lpm_mult
	  GENERIC MAP (
		LPM_PIPELINE => 3,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTHA => 14,
		LPM_WIDTHB => 14,
		LPM_WIDTHP => 28,
		LPM_WIDTHS => 28,
		lpm_hint => "INPUT_A_FIXED_VALUE=Bx, INPUT_B_FIXED_VALUE=Bx"
	  )
	  PORT MAP ( 
		clken => clken,
		clock => clk,
		dataa => wire_ni00i_dataa,
		datab => wire_ni00i_datab,
		result => wire_ni00i_result
	  );
	wire_ni01O_dataa <= ( wire_ni1OO_q_a(13 DOWNTO 0));
	wire_ni01O_datab <= ( wire_ni01l_q_a(13 DOWNTO 0));
	ni01O :  lpm_mult
	  GENERIC MAP (
		LPM_PIPELINE => 3,
		LPM_REPRESENTATION => "SIGNED",
		LPM_WIDTHA => 14,
		LPM_WIDTHB => 14,
		LPM_WIDTHP => 28,
		LPM_WIDTHS => 28,
		lpm_hint => "INPUT_A_FIXED_VALUE=Bx, INPUT_B_FIXED_VALUE=Bx"
	  )
	  PORT MAP ( 
		clken => clken,
		clock => clk,
		dataa => wire_ni01O_dataa,
		datab => wire_ni01O_datab,
		result => wire_ni01O_result
	  );
	wire_n000i_dataout <= phi_inc_i(30) WHEN clken = '1'  ELSE n1O1l;
	wire_n000l_dataout <= phi_inc_i(31) WHEN clken = '1'  ELSE n1O1O;
	wire_n001i_dataout <= phi_inc_i(27) WHEN clken = '1'  ELSE n1lOl;
	wire_n001l_dataout <= phi_inc_i(28) WHEN clken = '1'  ELSE n1lOO;
	wire_n001O_dataout <= phi_inc_i(29) WHEN clken = '1'  ELSE n1O1i;
	wire_n010i_dataout <= phi_inc_i(15) WHEN clken = '1'  ELSE n1l1l;
	wire_n010l_dataout <= phi_inc_i(16) WHEN clken = '1'  ELSE n1l1O;
	wire_n010O_dataout <= phi_inc_i(17) WHEN clken = '1'  ELSE n1l0i;
	wire_n011i_dataout <= phi_inc_i(12) WHEN clken = '1'  ELSE n1iOl;
	wire_n011l_dataout <= phi_inc_i(13) WHEN clken = '1'  ELSE n1iOO;
	wire_n011O_dataout <= phi_inc_i(14) WHEN clken = '1'  ELSE n1l1i;
	wire_n01i_dataout <= wire_ni00l_result(25) WHEN clken = '1'  ELSE nlOOO;
	wire_n01ii_dataout <= phi_inc_i(18) WHEN clken = '1'  ELSE n1l0l;
	wire_n01il_dataout <= phi_inc_i(19) WHEN clken = '1'  ELSE n1l0O;
	wire_n01iO_dataout <= phi_inc_i(20) WHEN clken = '1'  ELSE n1lii;
	wire_n01l_dataout <= wire_ni00l_result(26) WHEN clken = '1'  ELSE n11i;
	wire_n01li_dataout <= phi_inc_i(21) WHEN clken = '1'  ELSE n1lil;
	wire_n01ll_dataout <= phi_inc_i(22) WHEN clken = '1'  ELSE n1liO;
	wire_n01lO_dataout <= phi_inc_i(23) WHEN clken = '1'  ELSE n1lli;
	wire_n01Oi_dataout <= phi_inc_i(24) WHEN clken = '1'  ELSE n1lll;
	wire_n01Ol_dataout <= phi_inc_i(25) WHEN clken = '1'  ELSE n1llO;
	wire_n01OO_dataout <= phi_inc_i(26) WHEN clken = '1'  ELSE n1lOi;
	wire_n10i_dataout <= wire_ni00l_result(13) WHEN clken = '1'  ELSE n00l;
	wire_n10l_dataout <= wire_ni00l_result(14) WHEN clken = '1'  ELSE nlO0i;
	wire_n10O_dataout <= wire_ni00l_result(15) WHEN clken = '1'  ELSE nlO0l;
	wire_n1ii_dataout <= wire_ni00l_result(16) WHEN clken = '1'  ELSE nlO0O;
	wire_n1il_dataout <= wire_ni00l_result(17) WHEN clken = '1'  ELSE nlOii;
	wire_n1iO_dataout <= wire_ni00l_result(18) WHEN clken = '1'  ELSE nlOil;
	wire_n1li_dataout <= wire_ni00l_result(19) WHEN clken = '1'  ELSE nlOiO;
	wire_n1ll_dataout <= wire_ni00l_result(20) WHEN clken = '1'  ELSE nlOli;
	wire_n1lO_dataout <= wire_ni00l_result(21) WHEN clken = '1'  ELSE nlOll;
	wire_n1O0i_dataout <= phi_inc_i(0) WHEN clken = '1'  ELSE n000O;
	wire_n1O0l_dataout <= phi_inc_i(1) WHEN clken = '1'  ELSE n1i1O;
	wire_n1O0O_dataout <= phi_inc_i(2) WHEN clken = '1'  ELSE n1i0i;
	wire_n1Oi_dataout <= wire_ni00l_result(22) WHEN clken = '1'  ELSE nlOlO;
	wire_n1Oii_dataout <= phi_inc_i(3) WHEN clken = '1'  ELSE n1i0l;
	wire_n1Oil_dataout <= phi_inc_i(4) WHEN clken = '1'  ELSE n1i0O;
	wire_n1OiO_dataout <= phi_inc_i(5) WHEN clken = '1'  ELSE n1iii;
	wire_n1Ol_dataout <= wire_ni00l_result(23) WHEN clken = '1'  ELSE nlOOi;
	wire_n1Oli_dataout <= phi_inc_i(6) WHEN clken = '1'  ELSE n1iil;
	wire_n1Oll_dataout <= phi_inc_i(7) WHEN clken = '1'  ELSE n1iiO;
	wire_n1OlO_dataout <= phi_inc_i(8) WHEN clken = '1'  ELSE n1ili;
	wire_n1OO_dataout <= wire_ni00l_result(24) WHEN clken = '1'  ELSE nlOOl;
	wire_n1OOi_dataout <= phi_inc_i(9) WHEN clken = '1'  ELSE n1ill;
	wire_n1OOl_dataout <= phi_inc_i(10) WHEN clken = '1'  ELSE n1ilO;
	wire_n1OOO_dataout <= phi_inc_i(11) WHEN clken = '1'  ELSE n1iOi;
	wire_nl00i_dataout <= wire_ni00i_result(16) WHEN clken = '1'  ELSE nii0O;
	wire_nl00l_dataout <= wire_ni00i_result(17) WHEN clken = '1'  ELSE niiii;
	wire_nl00O_dataout <= wire_ni00i_result(18) WHEN clken = '1'  ELSE niiil;
	wire_nl01i_dataout <= wire_ni00i_result(13) WHEN clken = '1'  ELSE nii1O;
	wire_nl01l_dataout <= wire_ni00i_result(14) WHEN clken = '1'  ELSE nii0i;
	wire_nl01O_dataout <= wire_ni00i_result(15) WHEN clken = '1'  ELSE nii0l;
	wire_nl0ii_dataout <= wire_ni00i_result(19) WHEN clken = '1'  ELSE niiiO;
	wire_nl0il_dataout <= wire_ni00i_result(20) WHEN clken = '1'  ELSE niili;
	wire_nl0iO_dataout <= wire_ni00i_result(21) WHEN clken = '1'  ELSE niill;
	wire_nl0li_dataout <= wire_ni00i_result(22) WHEN clken = '1'  ELSE niilO;
	wire_nl0ll_dataout <= wire_ni00i_result(23) WHEN clken = '1'  ELSE niiOi;
	wire_nl0lO_dataout <= wire_ni00i_result(24) WHEN clken = '1'  ELSE niiOl;
	wire_nl0Oi_dataout <= wire_ni00i_result(25) WHEN clken = '1'  ELSE niiOO;
	wire_nl0Ol_dataout <= wire_ni00i_result(26) WHEN clken = '1'  ELSE nil1i;
	wire_nl0OO_dataout <= wire_ni00i_result(27) WHEN clken = '1'  ELSE nil1l;
	wire_nl10i_dataout <= wire_ni00i_result(1) WHEN clken = '1'  ELSE ni00O;
	wire_nl10l_dataout <= wire_ni00i_result(2) WHEN clken = '1'  ELSE ni0ii;
	wire_nl10O_dataout <= wire_ni00i_result(3) WHEN clken = '1'  ELSE ni0il;
	wire_nl11O_dataout <= wire_ni00i_result(0) WHEN clken = '1'  ELSE nlO1i;
	wire_nl1ii_dataout <= wire_ni00i_result(4) WHEN clken = '1'  ELSE ni0iO;
	wire_nl1il_dataout <= wire_ni00i_result(5) WHEN clken = '1'  ELSE ni0li;
	wire_nl1iO_dataout <= wire_ni00i_result(6) WHEN clken = '1'  ELSE ni0ll;
	wire_nl1li_dataout <= wire_ni00i_result(7) WHEN clken = '1'  ELSE ni0lO;
	wire_nl1ll_dataout <= wire_ni00i_result(8) WHEN clken = '1'  ELSE ni0Oi;
	wire_nl1lO_dataout <= wire_ni00i_result(9) WHEN clken = '1'  ELSE ni0Ol;
	wire_nl1Oi_dataout <= wire_ni00i_result(10) WHEN clken = '1'  ELSE ni0OO;
	wire_nl1Ol_dataout <= wire_ni00i_result(11) WHEN clken = '1'  ELSE nii1i;
	wire_nl1OO_dataout <= wire_ni00i_result(12) WHEN clken = '1'  ELSE nii1l;
	wire_nli0i_dataout <= wire_ni01O_result(2) WHEN clken = '1'  ELSE nil0O;
	wire_nli0l_dataout <= wire_ni01O_result(3) WHEN clken = '1'  ELSE nilii;
	wire_nli0O_dataout <= wire_ni01O_result(4) WHEN clken = '1'  ELSE nilil;
	wire_nli1i_dataout <= nil1O AND NOT(clken);
	wire_nli1l_dataout <= wire_ni01O_result(0) WHEN clken = '1'  ELSE nil0i;
	wire_nli1O_dataout <= wire_ni01O_result(1) WHEN clken = '1'  ELSE nil0l;
	wire_nliii_dataout <= wire_ni01O_result(5) WHEN clken = '1'  ELSE niliO;
	wire_nliil_dataout <= wire_ni01O_result(6) WHEN clken = '1'  ELSE nilli;
	wire_nliiO_dataout <= wire_ni01O_result(7) WHEN clken = '1'  ELSE nilll;
	wire_nlili_dataout <= wire_ni01O_result(8) WHEN clken = '1'  ELSE nillO;
	wire_nlill_dataout <= wire_ni01O_result(9) WHEN clken = '1'  ELSE nilOi;
	wire_nlilO_dataout <= wire_ni01O_result(10) WHEN clken = '1'  ELSE nilOl;
	wire_nliOi_dataout <= wire_ni01O_result(11) WHEN clken = '1'  ELSE nilOO;
	wire_nliOl_dataout <= wire_ni01O_result(12) WHEN clken = '1'  ELSE niO1i;
	wire_nliOO_dataout <= wire_ni01O_result(13) WHEN clken = '1'  ELSE niO1l;
	wire_nll0i_dataout <= wire_ni01O_result(17) WHEN clken = '1'  ELSE niO0O;
	wire_nll0l_dataout <= wire_ni01O_result(18) WHEN clken = '1'  ELSE niOii;
	wire_nll0O_dataout <= wire_ni01O_result(19) WHEN clken = '1'  ELSE niOil;
	wire_nll1i_dataout <= wire_ni01O_result(14) WHEN clken = '1'  ELSE niO1O;
	wire_nll1l_dataout <= wire_ni01O_result(15) WHEN clken = '1'  ELSE niO0i;
	wire_nll1O_dataout <= wire_ni01O_result(16) WHEN clken = '1'  ELSE niO0l;
	wire_nllii_dataout <= wire_ni01O_result(20) WHEN clken = '1'  ELSE niOiO;
	wire_nllil_dataout <= wire_ni01O_result(21) WHEN clken = '1'  ELSE niOli;
	wire_nlliO_dataout <= wire_ni01O_result(22) WHEN clken = '1'  ELSE niOll;
	wire_nllli_dataout <= wire_ni01O_result(23) WHEN clken = '1'  ELSE niOlO;
	wire_nllll_dataout <= wire_ni01O_result(24) WHEN clken = '1'  ELSE niOOi;
	wire_nlllO_dataout <= wire_ni01O_result(25) WHEN clken = '1'  ELSE niOOl;
	wire_nllOi_dataout <= wire_ni01O_result(26) WHEN clken = '1'  ELSE niOOO;
	wire_nllOl_dataout <= wire_ni01O_result(27) WHEN clken = '1'  ELSE nl11i;
	wire_nllOO_dataout <= nl11l AND NOT(clken);
	wire_n0iOi_a <= ( n0ilO & n0ili & n0iiO & n0iil & n0iii);
	wire_n0iOi_b <= ( "0" & "0" & "0" & "0" & n0ilO);
	n0iOi :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 5,
		width_b => 5,
		width_o => 5
	  )
	  PORT MAP ( 
		a => wire_n0iOi_a,
		b => wire_n0iOi_b,
		cin => wire_gnd,
		o => wire_n0iOi_o
	  );
	wire_ni1Ol_a <= ( "0" & n0O0i & wire_n101l16_w_lg_w_lg_q546w547w & n0O1l & wire_n101O14_w_lg_w_lg_q542w543w & n0lOO & n0lOl & n0lOi & n0llO);
	wire_ni1Ol_b <= ( "0" & "0" & "1" & "0" & "0" & "0" & "0" & "0" & "0");
	ni1Ol :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 9,
		width_b => 9,
		width_o => 9
	  )
	  PORT MAP ( 
		a => wire_ni1Ol_a,
		b => wire_ni1Ol_b,
		cin => wire_gnd,
		o => wire_ni1Ol_o
	  );

 END RTL; --nco_0
--synopsys translate_on
--VALID FILE
