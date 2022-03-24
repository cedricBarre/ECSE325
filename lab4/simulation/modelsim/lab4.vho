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

-- DATE "03/24/2022 16:00:32"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g40_mod_exp_revised IS
    PORT (
	d : IN std_logic_vector(13 DOWNTO 0);
	c : IN std_logic_vector(9 DOWNTO 0);
	start : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	s : BUFFER std_logic_vector(15 DOWNTO 0);
	ready : BUFFER std_logic
	);
END g40_mod_exp_revised;

-- Design Ports Information
-- c[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[1]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[2]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[3]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[7]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[8]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[9]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[8]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[9]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[10]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[11]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[12]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[13]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[14]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[15]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ready	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[13]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[7]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[6]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[5]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[10]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[12]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[11]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[8]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[9]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g40_mod_exp_revised IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_c : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_s : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ready : std_logic;
SIGNAL \c[0]~input_o\ : std_logic;
SIGNAL \c[1]~input_o\ : std_logic;
SIGNAL \c[2]~input_o\ : std_logic;
SIGNAL \c[3]~input_o\ : std_logic;
SIGNAL \c[4]~input_o\ : std_logic;
SIGNAL \c[5]~input_o\ : std_logic;
SIGNAL \c[6]~input_o\ : std_logic;
SIGNAL \c[7]~input_o\ : std_logic;
SIGNAL \c[8]~input_o\ : std_logic;
SIGNAL \c[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \state.finished_state~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \state.reset_state~6_combout\ : std_logic;
SIGNAL \state.reset_state~1_combout\ : std_logic;
SIGNAL \state.reset_state~_emulatedfeeder_combout\ : std_logic;
SIGNAL \state.reset_state~0_combout\ : std_logic;
SIGNAL \d[13]~input_o\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \state.calculating_state~1_combout\ : std_logic;
SIGNAL \d[10]~input_o\ : std_logic;
SIGNAL \d[8]~input_o\ : std_logic;
SIGNAL \d[12]~input_o\ : std_logic;
SIGNAL \d[11]~input_o\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \d[9]~input_o\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \d[5]~input_o\ : std_logic;
SIGNAL \d[4]~input_o\ : std_logic;
SIGNAL \d[7]~input_o\ : std_logic;
SIGNAL \d[6]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan0~15_combout\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~17_combout\ : std_logic;
SIGNAL \state.calculating_state~3_combout\ : std_logic;
SIGNAL \state.calculating_state~0_combout\ : std_logic;
SIGNAL \state.calculating_state~_emulated_q\ : std_logic;
SIGNAL \state.calculating_state~2_combout\ : std_logic;
SIGNAL \counter[13]~0_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \state.reset_state~5_combout\ : std_logic;
SIGNAL \state.reset_state~_emulated_q\ : std_logic;
SIGNAL \state.reset_state~2_combout\ : std_logic;
SIGNAL \state.finished_state~0_combout\ : std_logic;
SIGNAL \state.finished_state~q\ : std_logic;
SIGNAL \s[0]$latch~combout\ : std_logic;
SIGNAL \ready$latch~combout\ : std_logic;
SIGNAL counter : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_d[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_d[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_state.reset_state~1_combout\ : std_logic;
SIGNAL \ALT_INV_state.calculating_state~1_combout\ : std_logic;
SIGNAL \ALT_INV_ready$latch~combout\ : std_logic;
SIGNAL \ALT_INV_s[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_state.reset_state~6_combout\ : std_logic;
SIGNAL \ALT_INV_state.reset_state~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.calculating_state~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~17_combout\ : std_logic;
SIGNAL \ALT_INV_state.reset_state~2_combout\ : std_logic;
SIGNAL \ALT_INV_state.reset_state~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_state.calculating_state~2_combout\ : std_logic;
SIGNAL \ALT_INV_state.calculating_state~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.finished_state~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.finished_state~q\ : std_logic;
SIGNAL ALT_INV_counter : std_logic_vector(13 DOWNTO 0);

BEGIN

ww_d <= d;
ww_c <= c;
ww_start <= start;
ww_clk <= clk;
ww_reset <= reset;
s <= ww_s;
ready <= ww_ready;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_d[9]~input_o\ <= NOT \d[9]~input_o\;
\ALT_INV_d[8]~input_o\ <= NOT \d[8]~input_o\;
\ALT_INV_d[11]~input_o\ <= NOT \d[11]~input_o\;
\ALT_INV_d[12]~input_o\ <= NOT \d[12]~input_o\;
\ALT_INV_d[10]~input_o\ <= NOT \d[10]~input_o\;
\ALT_INV_d[2]~input_o\ <= NOT \d[2]~input_o\;
\ALT_INV_d[3]~input_o\ <= NOT \d[3]~input_o\;
\ALT_INV_d[0]~input_o\ <= NOT \d[0]~input_o\;
\ALT_INV_d[1]~input_o\ <= NOT \d[1]~input_o\;
\ALT_INV_d[4]~input_o\ <= NOT \d[4]~input_o\;
\ALT_INV_d[5]~input_o\ <= NOT \d[5]~input_o\;
\ALT_INV_d[6]~input_o\ <= NOT \d[6]~input_o\;
\ALT_INV_d[7]~input_o\ <= NOT \d[7]~input_o\;
\ALT_INV_d[13]~input_o\ <= NOT \d[13]~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_state.reset_state~1_combout\ <= NOT \state.reset_state~1_combout\;
\ALT_INV_state.calculating_state~1_combout\ <= NOT \state.calculating_state~1_combout\;
\ALT_INV_ready$latch~combout\ <= NOT \ready$latch~combout\;
\ALT_INV_s[0]$latch~combout\ <= NOT \s[0]$latch~combout\;
\ALT_INV_state.reset_state~6_combout\ <= NOT \state.reset_state~6_combout\;
\ALT_INV_state.reset_state~0_combout\ <= NOT \state.reset_state~0_combout\;
\ALT_INV_state.calculating_state~0_combout\ <= NOT \state.calculating_state~0_combout\;
\ALT_INV_LessThan0~17_combout\ <= NOT \LessThan0~17_combout\;
\ALT_INV_state.reset_state~2_combout\ <= NOT \state.reset_state~2_combout\;
\ALT_INV_state.reset_state~_emulated_q\ <= NOT \state.reset_state~_emulated_q\;
\ALT_INV_state.calculating_state~2_combout\ <= NOT \state.calculating_state~2_combout\;
\ALT_INV_state.calculating_state~_emulated_q\ <= NOT \state.calculating_state~_emulated_q\;
\ALT_INV_LessThan0~16_combout\ <= NOT \LessThan0~16_combout\;
\ALT_INV_LessThan0~15_combout\ <= NOT \LessThan0~15_combout\;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;
\ALT_INV_LessThan0~13_combout\ <= NOT \LessThan0~13_combout\;
\ALT_INV_LessThan0~12_combout\ <= NOT \LessThan0~12_combout\;
\ALT_INV_LessThan0~11_combout\ <= NOT \LessThan0~11_combout\;
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_state.finished_state~0_combout\ <= NOT \state.finished_state~0_combout\;
\ALT_INV_state.finished_state~q\ <= NOT \state.finished_state~q\;
ALT_INV_counter(9) <= NOT counter(9);
ALT_INV_counter(8) <= NOT counter(8);
ALT_INV_counter(11) <= NOT counter(11);
ALT_INV_counter(12) <= NOT counter(12);
ALT_INV_counter(10) <= NOT counter(10);
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(3) <= NOT counter(3);
ALT_INV_counter(0) <= NOT counter(0);
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(4) <= NOT counter(4);
ALT_INV_counter(5) <= NOT counter(5);
ALT_INV_counter(6) <= NOT counter(6);
ALT_INV_counter(7) <= NOT counter(7);
ALT_INV_counter(13) <= NOT counter(13);

-- Location: IOOBUF_X50_Y0_N76
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X89_Y16_N22
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X76_Y0_N19
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X38_Y81_N53
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOOBUF_X60_Y0_N19
\s[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(4));

-- Location: IOOBUF_X12_Y0_N19
\s[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(5));

-- Location: IOOBUF_X89_Y25_N39
\s[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(6));

-- Location: IOOBUF_X14_Y0_N53
\s[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(7));

-- Location: IOOBUF_X12_Y0_N36
\s[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(8));

-- Location: IOOBUF_X89_Y15_N5
\s[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(9));

-- Location: IOOBUF_X18_Y81_N59
\s[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(10));

-- Location: IOOBUF_X18_Y0_N93
\s[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(11));

-- Location: IOOBUF_X10_Y0_N59
\s[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(12));

-- Location: IOOBUF_X4_Y81_N19
\s[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(13));

-- Location: IOOBUF_X89_Y11_N96
\s[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(14));

-- Location: IOOBUF_X74_Y0_N93
\s[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(15));

-- Location: IOOBUF_X50_Y0_N42
\ready~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ready$latch~combout\,
	devoe => ww_devoe,
	o => ww_ready);

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
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

-- Location: LABCELL_X53_Y31_N54
\state.finished_state~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.finished_state~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \state.finished_state~feeder_combout\);

-- Location: IOIBUF_X54_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LABCELL_X51_Y31_N39
\state.reset_state~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.reset_state~6_combout\ = ( \state.reset_state~2_combout\ & ( (!\reset~input_o\ & \start~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_state.reset_state~2_combout\,
	combout => \state.reset_state~6_combout\);

-- Location: LABCELL_X53_Y31_N39
\state.reset_state~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.reset_state~1_combout\ = ( !\state.reset_state~6_combout\ & ( \state.reset_state~1_combout\ ) ) # ( !\state.reset_state~6_combout\ & ( !\state.reset_state~1_combout\ & ( \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_state.reset_state~6_combout\,
	dataf => \ALT_INV_state.reset_state~1_combout\,
	combout => \state.reset_state~1_combout\);

-- Location: LABCELL_X53_Y31_N12
\state.reset_state~_emulatedfeeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.reset_state~_emulatedfeeder_combout\ = ( \state.reset_state~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.reset_state~1_combout\,
	combout => \state.reset_state~_emulatedfeeder_combout\);

-- Location: LABCELL_X53_Y31_N21
\state.reset_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.reset_state~0_combout\ = ( \state.reset_state~6_combout\ ) # ( !\state.reset_state~6_combout\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_state.reset_state~6_combout\,
	combout => \state.reset_state~0_combout\);

-- Location: IOIBUF_X56_Y0_N52
\d[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(13),
	o => \d[13]~input_o\);

-- Location: MLABCELL_X52_Y31_N0
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~26\ = CARRY(( counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(0),
	cin => GND,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X53_Y31_N42
\state.calculating_state~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.calculating_state~1_combout\ = ( \state.reset_state~6_combout\ & ( \state.calculating_state~1_combout\ & ( !\reset~input_o\ ) ) ) # ( !\state.reset_state~6_combout\ & ( \state.calculating_state~1_combout\ & ( !\reset~input_o\ ) ) ) # ( 
-- \state.reset_state~6_combout\ & ( !\state.calculating_state~1_combout\ & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_state.reset_state~6_combout\,
	dataf => \ALT_INV_state.calculating_state~1_combout\,
	combout => \state.calculating_state~1_combout\);

-- Location: IOIBUF_X54_Y0_N18
\d[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(10),
	o => \d[10]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\d[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(8),
	o => \d[8]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\d[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(12),
	o => \d[12]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\d[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(11),
	o => \d[11]~input_o\);

-- Location: MLABCELL_X52_Y31_N42
\LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ( counter(12) & ( counter(11) & ( (\d[12]~input_o\ & (\d[11]~input_o\ & (!\d[13]~input_o\ $ (counter(13))))) ) ) ) # ( !counter(12) & ( counter(11) & ( (!\d[12]~input_o\ & (\d[11]~input_o\ & (!\d[13]~input_o\ $ (counter(13))))) ) 
-- ) ) # ( counter(12) & ( !counter(11) & ( (\d[12]~input_o\ & (!\d[11]~input_o\ & (!\d[13]~input_o\ $ (counter(13))))) ) ) ) # ( !counter(12) & ( !counter(11) & ( (!\d[12]~input_o\ & (!\d[11]~input_o\ & (!\d[13]~input_o\ $ (counter(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[12]~input_o\,
	datab => \ALT_INV_d[13]~input_o\,
	datac => \ALT_INV_d[11]~input_o\,
	datad => ALT_INV_counter(13),
	datae => ALT_INV_counter(12),
	dataf => ALT_INV_counter(11),
	combout => \LessThan0~10_combout\);

-- Location: IOIBUF_X54_Y0_N35
\d[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(9),
	o => \d[9]~input_o\);

-- Location: LABCELL_X51_Y31_N9
\LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = ( counter(9) & ( !\d[9]~input_o\ ) ) # ( !counter(9) & ( \d[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[9]~input_o\,
	dataf => ALT_INV_counter(9),
	combout => \LessThan0~11_combout\);

-- Location: LABCELL_X51_Y31_N24
\LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = ( \LessThan0~10_combout\ & ( !\LessThan0~11_combout\ & ( (\d[8]~input_o\ & (!counter(8) & (!counter(10) $ (\d[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(10),
	datab => \ALT_INV_d[10]~input_o\,
	datac => \ALT_INV_d[8]~input_o\,
	datad => ALT_INV_counter(8),
	datae => \ALT_INV_LessThan0~10_combout\,
	dataf => \ALT_INV_LessThan0~11_combout\,
	combout => \LessThan0~13_combout\);

-- Location: MLABCELL_X52_Y31_N48
\LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = ( \LessThan0~10_combout\ & ( !\LessThan0~11_combout\ & ( (!counter(8) & (!\d[8]~input_o\ & (!\d[10]~input_o\ $ (counter(10))))) # (counter(8) & (\d[8]~input_o\ & (!\d[10]~input_o\ $ (counter(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100001000010000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(8),
	datab => \ALT_INV_d[10]~input_o\,
	datac => \ALT_INV_d[8]~input_o\,
	datad => ALT_INV_counter(10),
	datae => \ALT_INV_LessThan0~10_combout\,
	dataf => \ALT_INV_LessThan0~11_combout\,
	combout => \LessThan0~12_combout\);

-- Location: IOIBUF_X50_Y0_N92
\d[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(5),
	o => \d[5]~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\d[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(4),
	o => \d[4]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\d[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(7),
	o => \d[7]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\d[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(6),
	o => \d[6]~input_o\);

-- Location: LABCELL_X51_Y31_N3
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( counter(7) & ( (\d[7]~input_o\ & (!counter(6) $ (\d[6]~input_o\))) ) ) # ( !counter(7) & ( (!\d[7]~input_o\ & (!counter(6) $ (\d[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_d[7]~input_o\,
	datac => ALT_INV_counter(6),
	datad => \ALT_INV_d[6]~input_o\,
	dataf => ALT_INV_counter(7),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X51_Y31_N18
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( counter(6) & ( (\d[7]~input_o\ & !counter(7)) ) ) # ( !counter(6) & ( (!\d[7]~input_o\ & (\d[6]~input_o\ & !counter(7))) # (\d[7]~input_o\ & ((!counter(7)) # (\d[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_d[7]~input_o\,
	datac => \ALT_INV_d[6]~input_o\,
	datad => ALT_INV_counter(7),
	dataf => ALT_INV_counter(6),
	combout => \LessThan0~8_combout\);

-- Location: LABCELL_X51_Y31_N48
\LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( \LessThan0~1_combout\ & ( !\LessThan0~8_combout\ & ( (!\d[5]~input_o\ & (((!\d[4]~input_o\) # (counter(5))) # (counter(4)))) # (\d[5]~input_o\ & (counter(5) & ((!\d[4]~input_o\) # (counter(4))))) ) ) ) # ( !\LessThan0~1_combout\ 
-- & ( !\LessThan0~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101000101111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[5]~input_o\,
	datab => ALT_INV_counter(4),
	datac => \ALT_INV_d[4]~input_o\,
	datad => ALT_INV_counter(5),
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LABCELL_X53_Y31_N48
\LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = ( !counter(11) & ( counter(12) & ( (\d[11]~input_o\ & (\d[12]~input_o\ & (!\d[13]~input_o\ $ (counter(13))))) ) ) ) # ( counter(11) & ( !counter(12) & ( (\d[12]~input_o\ & (!\d[13]~input_o\ $ (counter(13)))) ) ) ) # ( !counter(11) 
-- & ( !counter(12) & ( (!\d[11]~input_o\ & (\d[12]~input_o\ & (!\d[13]~input_o\ $ (counter(13))))) # (\d[11]~input_o\ & (!\d[13]~input_o\ $ (((counter(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000010011000011000000001100000100000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[11]~input_o\,
	datab => \ALT_INV_d[13]~input_o\,
	datac => \ALT_INV_d[12]~input_o\,
	datad => ALT_INV_counter(13),
	datae => ALT_INV_counter(11),
	dataf => ALT_INV_counter(12),
	combout => \LessThan0~14_combout\);

-- Location: LABCELL_X53_Y31_N30
\LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~15_combout\ = ( \LessThan0~10_combout\ & ( !\LessThan0~14_combout\ & ( (!\d[10]~input_o\ & ((!\d[9]~input_o\) # ((counter(10)) # (counter(9))))) # (\d[10]~input_o\ & (counter(10) & ((!\d[9]~input_o\) # (counter(9))))) ) ) ) # ( 
-- !\LessThan0~10_combout\ & ( !\LessThan0~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101100001111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d[9]~input_o\,
	datab => ALT_INV_counter(9),
	datac => \ALT_INV_d[10]~input_o\,
	datad => ALT_INV_counter(10),
	datae => \ALT_INV_LessThan0~10_combout\,
	dataf => \ALT_INV_LessThan0~14_combout\,
	combout => \LessThan0~15_combout\);

-- Location: IOIBUF_X52_Y0_N35
\d[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\d[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: LABCELL_X51_Y31_N21
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \d[3]~input_o\ & ( (counter(3) & (!\d[2]~input_o\ $ (counter(2)))) ) ) # ( !\d[3]~input_o\ & ( (!counter(3) & (!\d[2]~input_o\ $ (counter(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(3),
	datac => \ALT_INV_d[2]~input_o\,
	datad => ALT_INV_counter(2),
	dataf => \ALT_INV_d[3]~input_o\,
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X51_Y31_N6
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( counter(4) & ( !\d[4]~input_o\ ) ) # ( !counter(4) & ( \d[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_d[4]~input_o\,
	dataf => ALT_INV_counter(4),
	combout => \LessThan0~3_combout\);

-- Location: IOIBUF_X52_Y0_N1
\d[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\d[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: LABCELL_X51_Y31_N15
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( \d[1]~input_o\ & ( (!counter(1)) # ((!counter(0) & \d[0]~input_o\)) ) ) # ( !\d[1]~input_o\ & ( (!counter(0) & (\d[0]~input_o\ & !counter(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000011111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(0),
	datac => \ALT_INV_d[0]~input_o\,
	datad => ALT_INV_counter(1),
	dataf => \ALT_INV_d[1]~input_o\,
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X51_Y31_N54
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( counter(5) & ( !\d[5]~input_o\ ) ) # ( !counter(5) & ( \d[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_d[5]~input_o\,
	dataf => ALT_INV_counter(5),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X51_Y31_N12
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \d[3]~input_o\ & ( (!counter(3)) # ((\d[2]~input_o\ & !counter(2))) ) ) # ( !\d[3]~input_o\ & ( (\d[2]~input_o\ & (!counter(3) & !counter(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011110011111100001111001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_d[2]~input_o\,
	datac => ALT_INV_counter(3),
	datad => ALT_INV_counter(2),
	dataf => \ALT_INV_d[3]~input_o\,
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X51_Y31_N42
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( !\LessThan0~2_combout\ & ( \LessThan0~6_combout\ & ( (!\LessThan0~3_combout\ & \LessThan0~1_combout\) ) ) ) # ( !\LessThan0~2_combout\ & ( !\LessThan0~6_combout\ & ( (\LessThan0~5_combout\ & (!\LessThan0~3_combout\ & 
-- (\LessThan0~1_combout\ & \LessThan0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~5_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_LessThan0~4_combout\,
	datae => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LABCELL_X51_Y31_N36
\LessThan0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~17_combout\ = ( \LessThan0~7_combout\ & ( (!\LessThan0~13_combout\ & (!\LessThan0~12_combout\ & \LessThan0~15_combout\)) ) ) # ( !\LessThan0~7_combout\ & ( (!\LessThan0~13_combout\ & (\LessThan0~15_combout\ & ((!\LessThan0~12_combout\) # 
-- (\LessThan0~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001010000000001000101000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~13_combout\,
	datab => \ALT_INV_LessThan0~12_combout\,
	datac => \ALT_INV_LessThan0~9_combout\,
	datad => \ALT_INV_LessThan0~15_combout\,
	dataf => \ALT_INV_LessThan0~7_combout\,
	combout => \LessThan0~17_combout\);

-- Location: LABCELL_X51_Y31_N30
\state.calculating_state~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.calculating_state~3_combout\ = ( \state.calculating_state~2_combout\ & ( !\state.calculating_state~1_combout\ $ (((!\LessThan0~0_combout\ & \LessThan0~17_combout\))) ) ) # ( !\state.calculating_state~2_combout\ & ( 
-- \state.calculating_state~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000001111001111000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_state.calculating_state~1_combout\,
	datad => \ALT_INV_LessThan0~17_combout\,
	dataf => \ALT_INV_state.calculating_state~2_combout\,
	combout => \state.calculating_state~3_combout\);

-- Location: LABCELL_X51_Y31_N0
\state.calculating_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.calculating_state~0_combout\ = ( \state.reset_state~6_combout\ ) # ( !\state.reset_state~6_combout\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_state.reset_state~6_combout\,
	combout => \state.calculating_state~0_combout\);

-- Location: FF_X51_Y31_N32
\state.calculating_state~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.calculating_state~3_combout\,
	clrn => \ALT_INV_state.calculating_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.calculating_state~_emulated_q\);

-- Location: LABCELL_X51_Y31_N57
\state.calculating_state~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.calculating_state~2_combout\ = ( \state.calculating_state~_emulated_q\ & ( (!\reset~input_o\ & ((!\state.calculating_state~1_combout\) # (\state.reset_state~6_combout\))) ) ) # ( !\state.calculating_state~_emulated_q\ & ( (!\reset~input_o\ & 
-- ((\state.reset_state~6_combout\) # (\state.calculating_state~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.calculating_state~1_combout\,
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_state.reset_state~6_combout\,
	dataf => \ALT_INV_state.calculating_state~_emulated_q\,
	combout => \state.calculating_state~2_combout\);

-- Location: LABCELL_X51_Y31_N33
\counter[13]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[13]~0_combout\ = ( \state.calculating_state~2_combout\ & ( (!\state.reset_state~2_combout\) # (!\start~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.reset_state~2_combout\,
	datad => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_state.calculating_state~2_combout\,
	combout => \counter[13]~0_combout\);

-- Location: FF_X51_Y31_N2
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \LessThan0~16_combout\,
	sload => VCC,
	ena => \counter[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: MLABCELL_X52_Y31_N3
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( counter(1) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( counter(1) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(1),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X52_Y31_N5
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \LessThan0~16_combout\,
	ena => \counter[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: MLABCELL_X52_Y31_N6
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( counter(2) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~34\ = CARRY(( counter(2) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(2),
	cin => \Add0~22\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X52_Y31_N8
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \LessThan0~16_combout\,
	ena => \counter[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: MLABCELL_X52_Y31_N9
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( counter(3) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( counter(3) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(3),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X52_Y31_N11
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \LessThan0~16_combout\,
	ena => \counter[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: MLABCELL_X52_Y31_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( counter(4) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~18\ = CARRY(( counter(4) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(4),
	cin => \Add0~30\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X52_Y31_N14
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \LessThan0~16_combout\,
	ena => \counter[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: MLABCELL_X52_Y31_N15
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( counter(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( counter(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(5),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X52_Y31_N17
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \LessThan0~16_combout\,
	ena => \counter[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: MLABCELL_X52_Y31_N18
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( counter(6) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( counter(6) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(6),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X52_Y31_N20
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \LessThan0~16_combout\,
	ena => \counter[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: MLABCELL_X52_Y31_N21
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( counter(7) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( counter(7) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(7),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X52_Y31_N23
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \LessThan0~16_combout\,
	ena => \counter[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: MLABCELL_X52_Y31_N24
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( counter(8) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~50\ = CARRY(( counter(8) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(8),
	cin => \Add0~6\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X52_Y31_N26
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \LessThan0~16_combout\,
	ena => \counter[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: MLABCELL_X52_Y31_N27
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( counter(9) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( counter(9) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(9),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X52_Y31_N29
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \LessThan0~16_combout\,
	ena => \counter[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: MLABCELL_X52_Y31_N30
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( counter(10) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~38\ = CARRY(( counter(10) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(10),
	cin => \Add0~54\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X52_Y31_N32
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \LessThan0~16_combout\,
	ena => \counter[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: MLABCELL_X52_Y31_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( counter(11) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~46\ = CARRY(( counter(11) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(11),
	cin => \Add0~38\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X52_Y31_N35
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \LessThan0~16_combout\,
	ena => \counter[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: MLABCELL_X52_Y31_N36
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( counter(12) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( counter(12) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(12),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X52_Y31_N38
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \LessThan0~16_combout\,
	ena => \counter[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: MLABCELL_X52_Y31_N39
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( counter(13) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(13),
	cin => \Add0~42\,
	sumout => \Add0~1_sumout\);

-- Location: FF_X52_Y31_N41
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \LessThan0~16_combout\,
	ena => \counter[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LABCELL_X53_Y31_N9
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !counter(13) & ( \d[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_d[13]~input_o\,
	dataf => ALT_INV_counter(13),
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X52_Y31_N54
\LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = ( \LessThan0~7_combout\ & ( \LessThan0~15_combout\ & ( (!\LessThan0~0_combout\ & (!\LessThan0~13_combout\ & !\LessThan0~12_combout\)) ) ) ) # ( !\LessThan0~7_combout\ & ( \LessThan0~15_combout\ & ( (!\LessThan0~0_combout\ & 
-- (!\LessThan0~13_combout\ & ((!\LessThan0~12_combout\) # (\LessThan0~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100010001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_LessThan0~13_combout\,
	datac => \ALT_INV_LessThan0~12_combout\,
	datad => \ALT_INV_LessThan0~9_combout\,
	datae => \ALT_INV_LessThan0~7_combout\,
	dataf => \ALT_INV_LessThan0~15_combout\,
	combout => \LessThan0~16_combout\);

-- Location: LABCELL_X53_Y31_N57
\state.reset_state~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.reset_state~5_combout\ = ( \state.calculating_state~2_combout\ & ( \LessThan0~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~16_combout\,
	dataf => \ALT_INV_state.calculating_state~2_combout\,
	combout => \state.reset_state~5_combout\);

-- Location: FF_X53_Y31_N14
\state.reset_state~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.reset_state~_emulatedfeeder_combout\,
	clrn => \ALT_INV_state.reset_state~0_combout\,
	ena => \state.reset_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.reset_state~_emulated_q\);

-- Location: LABCELL_X53_Y31_N24
\state.reset_state~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.reset_state~2_combout\ = ( !\state.reset_state~6_combout\ & ( \state.reset_state~_emulated_q\ & ( (!\state.reset_state~1_combout\) # (\reset~input_o\) ) ) ) # ( !\state.reset_state~6_combout\ & ( !\state.reset_state~_emulated_q\ & ( 
-- (\state.reset_state~1_combout\) # (\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111000000000000000011111111001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_state.reset_state~1_combout\,
	datae => \ALT_INV_state.reset_state~6_combout\,
	dataf => \ALT_INV_state.reset_state~_emulated_q\,
	combout => \state.reset_state~2_combout\);

-- Location: LABCELL_X53_Y31_N6
\state.finished_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.finished_state~0_combout\ = ( \state.reset_state~2_combout\ & ( (\start~input_o\) # (\reset~input_o\) ) ) # ( !\state.reset_state~2_combout\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_state.reset_state~2_combout\,
	combout => \state.finished_state~0_combout\);

-- Location: FF_X53_Y31_N56
\state.finished_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.finished_state~feeder_combout\,
	clrn => \ALT_INV_state.finished_state~0_combout\,
	ena => \state.reset_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.finished_state~q\);

-- Location: LABCELL_X50_Y31_N12
\s[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \s[0]$latch~combout\ = ( \state.calculating_state~2_combout\ & ( \s[0]$latch~combout\ ) ) # ( !\state.calculating_state~2_combout\ & ( \s[0]$latch~combout\ & ( !\state.finished_state~q\ ) ) ) # ( !\state.calculating_state~2_combout\ & ( 
-- !\s[0]$latch~combout\ & ( !\state.finished_state~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.finished_state~q\,
	datae => \ALT_INV_state.calculating_state~2_combout\,
	dataf => \ALT_INV_s[0]$latch~combout\,
	combout => \s[0]$latch~combout\);

-- Location: LABCELL_X50_Y31_N33
\ready$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ready$latch~combout\ = ( \state.calculating_state~2_combout\ & ( \ready$latch~combout\ ) ) # ( !\state.calculating_state~2_combout\ & ( \ready$latch~combout\ & ( \state.finished_state~q\ ) ) ) # ( !\state.calculating_state~2_combout\ & ( 
-- !\ready$latch~combout\ & ( \state.finished_state~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.finished_state~q\,
	datae => \ALT_INV_state.calculating_state~2_combout\,
	dataf => \ALT_INV_ready$latch~combout\,
	combout => \ready$latch~combout\);

-- Location: IOIBUF_X6_Y81_N35
\c[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(0),
	o => \c[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N52
\c[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(1),
	o => \c[1]~input_o\);

-- Location: IOIBUF_X78_Y0_N35
\c[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(2),
	o => \c[2]~input_o\);

-- Location: IOIBUF_X88_Y0_N36
\c[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(3),
	o => \c[3]~input_o\);

-- Location: IOIBUF_X22_Y81_N18
\c[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(4),
	o => \c[4]~input_o\);

-- Location: IOIBUF_X74_Y0_N41
\c[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(5),
	o => \c[5]~input_o\);

-- Location: IOIBUF_X40_Y81_N18
\c[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(6),
	o => \c[6]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\c[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(7),
	o => \c[7]~input_o\);

-- Location: IOIBUF_X89_Y13_N38
\c[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(8),
	o => \c[8]~input_o\);

-- Location: IOIBUF_X8_Y81_N52
\c[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(9),
	o => \c[9]~input_o\);

-- Location: LABCELL_X11_Y1_N0
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


